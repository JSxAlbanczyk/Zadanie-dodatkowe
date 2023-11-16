-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 16, 2023 at 05:39 PM
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
-- Database: `erpdatabase`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `adres` varchar(50) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `imie`, `nazwisko`, `adres`, `e_mail`) VALUES
(1, 'Jakub', 'Szczepaniak', '14-lutego', 'JakubSZCZ@gmail.com'),
(2, 'Magda', 'Nowak', 'walki młodych', 'MagdaN@gmail.com'),
(3, 'Andrzej', 'Nowaczkiewicz', 'węglowa', 'AndrzejNow@gmail.com'),
(4, 'Piotr', 'Nowakowski', 'łowiecka', 'PiotrNowakowski@gmail.com'),
(5, 'Katarzyna', 'Piotrowska', 'lotnicza', 'KasiaP@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `stanowisko` varchar(50) DEFAULT NULL,
  `wynagrodzenie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `imie`, `nazwisko`, `stanowisko`, `wynagrodzenie`) VALUES
(1, 'Marcin', 'Trąbalski', 'CEO', '25000zł'),
(2, 'Dominik', 'Halster', 'głowny administrator sieci', '15000zł'),
(3, 'Andrzej', 'Gołota', 'junior administrator sieci', '7500zł'),
(4, 'Paweł', 'Sikor', 'programista', '12500zł'),
(5, 'Marcelina', 'Sauć', 'junior programista', '12500zł');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employee_actions`
--

CREATE TABLE `employee_actions` (
  `id_akcji` int(11) NOT NULL,
  `id_pracownika` int(11) NOT NULL,
  `typ_akcji` varchar(50) DEFAULT NULL,
  `id_produktu` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_actions`
--

INSERT INTO `employee_actions` (`id_akcji`, `id_pracownika`, `typ_akcji`, `id_produktu`, `id_klienta`) VALUES
(1, 2, 'baza danych', 1, 1),
(2, 5, 'strona internetowa', 3, 2),
(3, 4, 'hosting', 2, 3),
(4, 3, 'baza danych', 1, 4),
(5, 4, 'strona internetowa', 3, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `data_zamowienia` datetime DEFAULT NULL,
  `klient` varchar(50) DEFAULT NULL,
  `produkt` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `data_zamowienia`, `klient`, `produkt`) VALUES
(1, '2020-01-05 00:00:00', 'Jakub Szczepaniak', 'baza danych'),
(2, '2021-05-01 00:00:00', 'Magda Nowak', 'strona internetowa'),
(3, '2022-06-08 00:00:00', 'Andrzej Nowaczkiewicz', 'hosting'),
(4, '2023-10-12 00:00:00', 'Piotr Nowakowski', 'baza danych'),
(5, '2022-03-09 00:00:00', 'Katarzyna Piotrowska', 'stona internetowa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `opis` varchar(50) DEFAULT NULL,
  `cena` varchar(50) DEFAULT NULL,
  `dostepnosc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nazwa`, `opis`, `cena`, `dostepnosc`) VALUES
(1, 'baza danych', 'stworzenie bazy danych', '4500zł', 'dostępne'),
(2, 'hosting', 'udostępnienie hostingu', '500zł', 'niedostępne'),
(3, 'strona internetowa', 'stworzenie strony internetowej', '2500zł', 'dostępne');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `employee_actions`
--
ALTER TABLE `employee_actions`
  ADD PRIMARY KEY (`id_akcji`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_actions`
--
ALTER TABLE `employee_actions`
  MODIFY `id_akcji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
