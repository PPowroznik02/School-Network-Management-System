-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lip 31, 2024 at 03:29 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siecszkol`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kandydaci`
--

CREATE TABLE `kandydaci` (
  `IdKandydata` int(11) NOT NULL,
  `Stanowisko` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Imie` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Nazwisko` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DataUrodzenia` date NOT NULL,
  `Pesel` char(11) NOT NULL,
  `NrTelefonu` char(12) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Miejscowosc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Ulica` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NrBudynku` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NrLokalu` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kandydaci`
--

INSERT INTO `kandydaci` (`IdKandydata`, `Stanowisko`, `Imie`, `Nazwisko`, `DataUrodzenia`, `Pesel`, `NrTelefonu`, `Email`, `Miejscowosc`, `Ulica`, `NrBudynku`, `NrLokalu`) VALUES
(1, 'lekarz', 'Maciej', 'Nowicki', '2000-04-12', '12345678901', '+48938682692', 'kubus@onet.pl', 'Wadowice', 'Koscielna', '12', NULL),
(2, 'Nauczyciel', 'Mateusz', 'Żak', '1989-07-30', '78901123456', '+48785628892', 'mati@onet.pl', 'Tarnów', 'Słoneczna', '20', NULL),
(3, 'Sekretarka', 'Jagoda', 'Sak', '1999-02-05', '14232757916', '+48978363829', 'jagoda@onet.pl', 'Węgrzce Wielkie', 'Długa', '78', '12'),
(4, 'lekarz', 'Jakub', 'Nowicki', '2000-04-12', '12345678901', '+48938682692', 'kubus@onet.pl', 'Wadowice', 'Koscielna', '12', NULL),
(1705355950, 'Nauczyciel', 'dalia', 'elder', '2024-01-01', '12345678901', '902902902', 'sdfs@sdf.com', 'Muszyna', 'Sloneczna', '12', '10'),
(1705356349, 'sdfsf', 'sdf', 'esdf', '2024-01-02', '12345678901', '245356456', 'asadas@zdad.com', 'safsdf', 'dsdf', '213', '2'),
(1705356591, 'Nauczyciel', 's', 'sdfs', '2024-01-04', 'aaabbbcccdd', 'dsada', 'dzfs@zdf', 'dsad', 'asdasd', 'asdas', 'sdasd'),
(1705356721, 'Doktor', 'Maciej', 'Dwornik', '1979-01-11', 'ooopppoookk', '900900900', 'dwornik@agh.pl', 'Kraków', 'Wałowa', '100', '10'),
(1705356911, 'sdasd', 'guci', 'bucio', '2024-01-02', 'aaabbbcccdd', '900900900', 'dsfsdf', 'sdfsdf', 'sdfs', '13', '123'),
(1705357705, 'wlascieciel', 'sf', 'sdf', '2024-01-09', '12345678901', '123456789', 'sdfsf', 'sdfsdfvewfs', '242', '234', '324'),
(1705358249, 'SFESF', 'dgFSD', 'FSF', '2024-02-22', '12345678901', '245356456', 'SF', 'SF', '234', '324', '2423'),
(1705358284, 'DSF', 'SF', 'WRW', '2024-01-09', '12345678901', '245356456', 'ADA', 'SDFCA', 'ASDA', '123', '213'),
(1713119236, 'Dyrektor', 'Jan', 'Maj', '2024-04-01', '09384584954', '098894839', 'janMaj@poczta.com', 'Majowice', 'Majowa', '10', '12'),
(1713119482, 'Nauczyciel', 'Alina', 'Kalina', '2024-03-25', '23423423434', '323234234', 'klaina@mail.com', 'sdsad', 'dasd', '23', '2'),
(1713119584, 'Dyrektor', 'Jan', 'Kapusta', '2024-04-02', '78978978978', '987789789', 'sdsad', 'sfasjnkkn', 'sdnask', '32', '2'),
(1713119739, 'Woźny', 'Karol', 'Jankowski', '2024-04-09', '78978978998', '987789789', 'njisnd', 'sdnfjksdf', 'jnsdfj', '83', '33'),
(1713119812, 'Sekretarka', 'Alina', 'Cebula', '2024-04-02', '89778978989', '78978978', 'sdf', 'sdsdf', 'sdfsd', '32', '32');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `IdPracownika` int(11) NOT NULL,
  `IdSzkoly` int(11) NOT NULL,
  `Stanowisko` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Imie` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Nazwisko` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DataUrodzenia` date NOT NULL,
  `Pesel` char(11) NOT NULL,
  `NrTelefonu` char(12) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `HasloHash` varchar(255) NOT NULL,
  `Miejscowosc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Ulica` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NrBudynku` varchar(5) DEFAULT NULL,
  `NrLokalu` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`IdPracownika`, `IdSzkoly`, `Stanowisko`, `Imie`, `Nazwisko`, `DataUrodzenia`, `Pesel`, `NrTelefonu`, `Email`, `Login`, `HasloHash`, `Miejscowosc`, `Ulica`, `NrBudynku`, `NrLokalu`) VALUES
(0, 1, 'wlasciciel', 'Katarzyna', 'Major', '1955-12-12', '55893309887', '700800900', 'k.major@siecszkol.pl', 'kMajor', '$2y$10$00j1LgXlk/eigJ2A8v8xOOWqovZLh5i0X47ensVqiYooWlqrHRqG.', 'Kraków', 'Krakowska', '45', '5'),
(1, 1, 'dyrektor', 'Joanna', 'Kozłowska', '1989-02-20', '89554327856', '607605900', 'j.kozlowska@siecszkol.pl', 'jKozlowska', '$2y$10$QzyHhhkLgSrayQlqf5DbMe7zx2W3L/66TMK7OiJKSq8WZoJMtCXSS', 'Ojców', 'Jarzębinowa', '24', NULL),
(2, 1, 'pracownik', 'Andrzej', 'Kołakawski', '1979-08-20', '79653389787', '600800987', 'a.kolakaski@siecszkol.pl', 'aKolakawski', '$2y$10$BoR8P3yIqeq6a9iEmGb82uRzB8QBk6W0NE7aIKKqV9m4gIz5Jyu0W', 'Miechów', 'Wrocławska', '34', '1'),
(3, 1, 'pracownikSekretariatu', 'Marek', 'Nowak', '1979-08-29', '79836645349', '500467800', 'm.nowak@siecszkol.pl', 'mNowak', '$2y$10$g0nAUMa9yqkebCFZI2mqgudaTasD/z01g2bY5pvKlHX3AWeBHLLVi', 'Wieliczka', 'Solna', '6', NULL),
(4, 1, 'pracownikDzialuZakupow', 'Marta', 'Jarzębinowska', '1979-11-30', '79453312198', '450456789', 'm.Jarzebinowska@siecszkol.pl', 'mJarzebinowska', '$2y$10$DzwpdLY.j1tXF0xFPD5Wt.gnTLGzPC1v7vfWtL9w/CWXYDvgBqJ4K', 'Kraków', 'Długa', '45', '5'),
(5, 1, 'specjalistaDsDostaw', 'Tadeusz', 'Moskiewski', '1999-03-20', '99874632367', '980799676', 't.moskiewski@siecszkol.pl', 'tMoskiewski', '$2y$10$fsraZAKZYiz1c2XNRIt7JOvTr0KcOSCoMRBu2DnbNCtIT8N64L5ui', 'Skotniki', 'Mała', '34', NULL),
(6, 1, 'ksiegowa', 'Paweł', 'Miecz', '1977-10-13', '77894573908', '788012675', 'p.miecz@siecszkol.pl', 'pMiecz', '$2y$10$k.MzISZ66m2x9M4wADKXYubwnQSAc2WXKaAXKVsttjUEaowxxaE2q', 'Kraków', 'Podlaska', '67', '8'),
(7, 2, 'dyrektor', 'Hanna', 'Jemioła', '1979-05-20', '79653789201', '700989346', 'h.jemiola@siecszkol.pl', 'hJemiola', '$2y$10$G40sZM158njHkNaglIG33.Xc07Yf9ZOfGeVIlvGtu5UHQdT7ApIfm', 'Miechów', 'Jana', '3', NULL),
(8, 2, 'pracownikSekretariatu', 'Jan', 'Kaszka', '1969-08-14', '69873398271', '789300543', 'j.kaszka@siecszkol.pl', 'jKaszka', '$2y$10$TPSY4Obzuki/7TOZYUD3GOFy8ktwCtE22USBb1zruSdlyvSJzzFmO', 'Kraków', 'Średniej', '14', '9'),
(9, 3, 'pracownikDzialuZakupow', 'Jędrzej', 'Cieslawski', '1975-12-20', '75364892673', '801190076', 'j.cieslawski@siecszkol.pl', 'jCieslawski', '$2y$10$NwdOzu6IZb63/4Pp9RWI0.ow9I5Ls5PMPPT1MgIHow2vO5v6IhFi2', 'Wieliczka', 'Solna', '2', NULL),
(10, 3, 'pracownikSekretariatu', 'Piotr', 'Tuliński', '1958-12-03', '58876773679', '690876690', 'p.tulinski@siecszkol.pl', 'pTulinski', '$2y$10$VuogvRRJWtVLvzlwYePdjunQcaUDDsiCNYj2d1xenxMc5/SoxKwxu', 'Kraków', 'Wtorkowa', '14', '8'),
(11, 4, 'pracownik', 'Julia', 'Mieszko', '1958-02-11', '58789937844', '800900456', 'j.mieszko@siecszkol.pl', 'jMieszko', '$2y$10$RB3OouZ3SZ9UqUMrssuFPesSH8unXRDb.f.LBU/fiw4aII9tnqKGC', 'Wieliczka', 'Długa', '23', '1'),
(12, 4, 'specjalistaDsDostaw', 'Maria', 'Gaber', '1979-11-30', '67898659877', '700988676', 'm.gaber@siecszkol.pl', 'mGaber', '$2y$10$GLmpRt7Zu1nibyOcB9E7VuLBeMt0U.RFcYHQI9nP.h03nmDckvXSq', 'Skotniki', 'Miła', '12', NULL),
(13, 5, 'dyrektor', 'Marek', 'Kocioł', '1955-09-02', '67896768933', '980799333', 'm.kociol@siecszkol.pl', 'mKociol', '$2y$10$Fa4xmz0ynsN8AGoo48GmA.Xtpf.8Ra7ur9WFbCO1X1c5AmEUs7HOG', 'Kraków', 'Wielicka', '73', '5'),
(14, 5, 'pracownik', 'Zofia', 'Lewandowska', '1989-12-05', '67898664899', '600900876', 'z.Lewandowska@siecszkol.pl', 'zLewandowska', '$2y$10$YIOXLCuzii194qGqvgyQVetup0/.jvhWlCfhZQ2EKIpBzHhxQeVv2', 'Kraków', 'Jodłowa', '34', NULL),
(15, 6, 'ksiegowa', 'Paulina', 'Kowalska', '1999-08-22', '67854367689', '788900566', 'p.kowalska@siecszkol.pl', 'pKowalska', '$2y$10$pWwpfSU.weRqlORcZWH1pumJ9I5/zQcAYW4Cjgv/5vs6oFFD9Sy4O', 'Ojców', 'Kasztanowa', '29', NULL),
(16, 7, 'ksiegowa', 'Kacper', 'Konieczny', '1992-03-30', '67897709897', '789002345', 'k.konieczny@siecszkol.pl', 'kKonieczny', '$2y$10$1h7bk0eDuD0XCvVUGs6QNeBZxvUkvhA2WlqJMbRZcFZKVcb94FtXe', 'Skotniki', 'Jabłonowa', '67', NULL),
(17, 8, 'pracownikDzialuZakupow', 'Tadeusz', 'Mrożek', '1977-07-01', '67545589967', '981129676', 't.mrozek@siecszkol.pl', 'tMrozek', '$2y$10$X8MKTmHvotP82B4qbFeAZuKxBTFC3RD7J8ufc7eAXngla0cYLY/Yi', 'Kraków', 'Czwartkowa', '20', '1'),
(18, 9, 'pracownik', 'Janina', 'Kołłątaj', '1973-09-14', '67899876589', '678778933', 'j.kollataj@siecszkol.pl', 'jKollataj', '$2y$10$awfx9e3IHWG10lOoIHGRKund2Xha6uNDRYm2MMwpR3mbjUc5PqUsi', 'Kraków', 'Kolanko', '6', '55'),
(19, 10, 'specjalistaDsDostaw', 'Marcin', 'Mazowiecki', '1999-01-26', '67865445677', '677899123', 'm.mazowiecki@siecszkol.pl', 'mMazowiecki', '$2y$10$7RKgaUcok6x6SYWN8YQQi.Mxs.PzAFDo1dhE0dv9a1ear.QQfHERC', 'Wieliczka', 'Mieszczańska', '8', '2'),
(1704839914, 1, 'sasS', 'Imie', 'Nazwisko', '2000-01-10', '23499028492', '902132938', 'ppos@onet.pl', 'qwe', '$2y$10$avQdGZsg87F6elZ3y1jEfew5QXdTRU.IlCjELMRJB2DpEuo1BbMV6', 'ksadasd', 'dsda', '1', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `IdProduktu` int(11) NOT NULL,
  `IdZamowienia` int(11) NOT NULL,
  `Nazwa` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Ilosc` int(11) NOT NULL,
  `CenaNetto` decimal(10,2) NOT NULL,
  `CenaBrutto` decimal(10,2) NOT NULL,
  `VAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produkty`
--

INSERT INTO `produkty` (`IdProduktu`, `IdZamowienia`, `Nazwa`, `Ilosc`, `CenaNetto`, `CenaBrutto`, `VAT`) VALUES
(1, 1, 'Papier', 10, 15.00, 18.15, 21),
(2, 2, 'Kreda', 100, 5.00, 6.05, 21),
(3, 3, 'woda', 100, 10.00, 12.10, 21),
(4, 4, 'Książki', 100, 32.00, 38.72, 21),
(5, 4, 'Kreda', 1000, 2.50, 3.02, 21),
(6, 4, 'Papier', 100, 40.00, 48.40, 21),
(7, 4, 'Dywan', 10, 240.00, 290.40, 21),
(8, 4, 'Żarówka', 100, 9.00, 10.89, 21),
(9, 1704659474, 'kalafior', 15, 7.00, 8.47, 21),
(10, 1704659526, 'pomidor', 100, 2.50, 3.02, 21),
(11, 1704659526, 'żarówka', 10, 8.00, 9.68, 21),
(1704659834, 1704659834, 'dsf', 234, 3434.00, 4532.88, 32),
(1704659865, 1704659865, 'test1', 110, 213.00, 285.42, 34),
(1704661932, 1704661932, 'dbjn', 77, 8879.00, 789076.73, 8787),
(1704661947, 1704661947, 'njk', 6778, 7876.00, 13861.76, 76),
(1704661949, 1704661947, 'jnk', 67, 76.00, 126.92, 67),
(1704663070, 1704663070, 'czas', 100, 231.00, 284.13, 23),
(1704663071, 1704663070, 'czas2', 23, 324.00, 1373.76, 324),
(1704664099, 1704664099, 'sdsa', 324, 34.00, 144.16, 324),
(1704664100, 1704664099, 'sdf', 324, 324.00, 498.96, 54),
(1704669640, 1704669640, 'klmn', 896, 89.00, 168.21, 89),
(1704670841, 1704670841, 'ijo', 89, 897.00, 1677.39, 87),
(1704670842, 1704670841, 'juioj', 78, 78.00, 145.86, 87),
(1704670843, 1704670841, 'ihnjk', 789, 987.00, 9840.39, 897),
(1704670844, 1704670841, 'bjhls', 8776, 87.00, 843.03, 869),
(1713120183, 1713120183, 'Papier', 100, 20.00, 24.60, 23),
(1713120184, 1713120183, 'Kreda', 20, 3.00, 3.69, 23),
(1713120185, 1713120183, 'Żarówka', 50, 8.00, 9.84, 23),
(2147483647, 2147483647, 'dfsd', 324, 4214.00, 13231.96, 214);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rozmowy`
--

CREATE TABLE `rozmowy` (
  `IdRozmowy` int(11) NOT NULL,
  `IdSali` varchar(6) NOT NULL,
  `IdKandydata` int(11) NOT NULL,
  `GodzinaRozpoczecia` time NOT NULL,
  `GodzinaZakonczenia` time NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rozmowy`
--

INSERT INTO `rozmowy` (`IdRozmowy`, `IdSali`, `IdKandydata`, `GodzinaRozpoczecia`, `GodzinaZakonczenia`, `Data`) VALUES
(6, '10', 4, '20:22:00', '22:00:00', '0000-00-00'),
(7, '1', 1, '10:00:00', '12:00:00', '2024-01-14'),
(9, '2', 3, '10:00:00', '12:00:00', '2024-01-15'),
(10, '8', 3, '13:00:00', '17:10:00', '2024-01-10'),
(11, '8', 3, '13:00:00', '17:10:00', '2024-01-10'),
(12, '8', 3, '13:00:00', '17:10:00', '2024-01-10'),
(13, '8', 3, '13:00:00', '17:10:00', '2024-01-10'),
(1705355950, '1', 1705355950, '10:00:00', '12:00:00', '2024-01-17'),
(1705356349, '1', 1705356349, '10:00:00', '12:00:00', '2024-01-16'),
(1705356591, '1', 1705356591, '10:00:00', '12:00:00', '2024-01-18'),
(1705356721, '4', 1705356721, '10:00:00', '12:00:00', '2024-01-16'),
(1705356911, '6', 1705356911, '18:00:00', '19:00:00', '2024-01-19'),
(1705357705, '1', 1705357705, '10:00:00', '12:00:00', '2024-01-17'),
(1705358249, '10', 1705358249, '12:00:00', '15:00:00', '2024-01-10'),
(1705358284, '1', 1705358284, '20:00:00', '10:00:00', '2024-01-16'),
(1713119236, '2', 1713119236, '09:00:00', '11:00:00', '2024-04-14'),
(1713119482, '2', 1713119482, '10:00:00', '12:00:00', '2024-04-13'),
(1713119584, '2', 1713119584, '14:00:00', '15:00:00', '2024-04-13'),
(1713119739, '2', 1713119739, '09:00:00', '09:30:00', '2024-04-12'),
(1713119812, '3', 1713119812, '09:00:00', '10:00:00', '2024-04-11');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sale`
--

CREATE TABLE `sale` (
  `IdSali` varchar(6) NOT NULL,
  `IdSzkoly` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`IdSali`, `IdSzkoly`) VALUES
('1', 1),
('10', 1),
('2', 1),
('3', 1),
('4', 1),
('5', 1),
('6', 1),
('7', 1),
('11', 2),
('8', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szkola`
--

CREATE TABLE `szkola` (
  `IdSzkoly` int(11) NOT NULL,
  `Nazwa` varchar(50) NOT NULL,
  `Miejscowosc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Ulica` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NrBudynku` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `szkola`
--

INSERT INTO `szkola` (`IdSzkoly`, `Nazwa`, `Miejscowosc`, `Ulica`, `NrBudynku`) VALUES
(1, '123 Szkoła Podstawowa im. Jana Matejki', 'Kraków', 'Wrocławska', '12'),
(2, '56 Szkoła Podstawowa im. Marii Skłodowskiej-Curie', 'Kraków', 'Olszynowa', '89'),
(3, '14 Szkoła Podstawowa im. Ludwiki Wawrzyńskiej', 'Kraków', 'Różana', '14'),
(4, '79 Szkoła Podstawowa im. Magdaleny Będzisławskiej ', 'Kraków', 'Karmelicka', '12'),
(5, '158 Szkoła Podstawowa im. Jacka Malczewskiego', 'Kraków', 'Agatowa', '19'),
(6, '135 Szkoła Podstawowa im. Wilhelminy Iwanowskiej', 'Kraków', 'Retoryka', '18'),
(7, '80 Szkoła Podstawowa im. Olgi Boznańskiej', 'Kraków', 'Wrocławska', '97'),
(8, '144 Szkoła Podstawowa im. Ignacego Paderewskiego', 'Kraków', 'Kopernika', '11'),
(9, '19 Szkoła Podstawowa im. Jana Czochralskiego', 'Kraków', 'Topolowa', '1'),
(10, '162 Szkoła Podstawowa im. Hanny Hirszfeldowej', 'Kraków', 'Estery', '17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `IdZamowienia` int(11) NOT NULL,
  `IdSzkoly` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Stan` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Komentarz` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Dostarczony` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`IdZamowienia`, `IdSzkoly`, `Data`, `Stan`, `Komentarz`, `Dostarczony`) VALUES
(1, 1, '2023-12-21', 'W trakcie realizacji', NULL, 0),
(2, 2, '2023-12-21', 'W trakcie realizacji', NULL, 0),
(3, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(4, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(1704659474, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(1704659526, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(1704659697, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(1704659834, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(1704659865, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(1704661709, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(1704661932, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(1704661947, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(1704663070, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(1704664099, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0),
(1704669640, 1, '2024-01-08', 'W trakcie realizacji', NULL, 0),
(1704670841, 1, '2024-01-08', 'W trakcie realizacji', NULL, 0),
(1713120183, 1, '2024-04-14', 'W trakcie realizacji', NULL, 0),
(2147483647, 1, '2024-01-07', 'W trakcie realizacji', NULL, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zgloszenia`
--

CREATE TABLE `zgloszenia` (
  `IdZgloszenia` int(11) NOT NULL,
  `IdSzkoly` int(11) NOT NULL,
  `Nazwa` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Data` date NOT NULL,
  `Zweryfikowano` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zgloszenia`
--

INSERT INTO `zgloszenia` (`IdZgloszenia`, `IdSzkoly`, `Nazwa`, `Data`, `Zweryfikowano`) VALUES
(1704658870, 1, 'puzzle', '2024-01-07', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kandydaci`
--
ALTER TABLE `kandydaci`
  ADD PRIMARY KEY (`IdKandydata`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`IdPracownika`),
  ADD KEY `Szkola_Pracownicy` (`IdSzkoly`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`IdProduktu`),
  ADD KEY `Produkty_Zamowienia` (`IdZamowienia`);

--
-- Indeksy dla tabeli `rozmowy`
--
ALTER TABLE `rozmowy`
  ADD PRIMARY KEY (`IdRozmowy`),
  ADD KEY `Rozmowy_Kandydaci` (`IdKandydata`),
  ADD KEY `Rozmowy_Sale` (`IdSali`);

--
-- Indeksy dla tabeli `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`IdSali`),
  ADD KEY `Sale_Szkola` (`IdSzkoly`);

--
-- Indeksy dla tabeli `szkola`
--
ALTER TABLE `szkola`
  ADD PRIMARY KEY (`IdSzkoly`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`IdZamowienia`),
  ADD KEY `Zamowienia_Szkola` (`IdSzkoly`);

--
-- Indeksy dla tabeli `zgloszenia`
--
ALTER TABLE `zgloszenia`
  ADD PRIMARY KEY (`IdZgloszenia`),
  ADD KEY `Zgloszenia_Szkola` (`IdSzkoly`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD CONSTRAINT `Szkola_Pracownicy` FOREIGN KEY (`IdSzkoly`) REFERENCES `szkola` (`IdSzkoly`);

--
-- Constraints for table `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `Produkty_Zamowienia` FOREIGN KEY (`IdZamowienia`) REFERENCES `zamowienia` (`IdZamowienia`);

--
-- Constraints for table `rozmowy`
--
ALTER TABLE `rozmowy`
  ADD CONSTRAINT `Rozmowy_Kandydaci` FOREIGN KEY (`IdKandydata`) REFERENCES `kandydaci` (`IdKandydata`),
  ADD CONSTRAINT `Rozmowy_Sale` FOREIGN KEY (`IdSali`) REFERENCES `sale` (`IdSali`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `Sale_Szkola` FOREIGN KEY (`IdSzkoly`) REFERENCES `szkola` (`IdSzkoly`);

--
-- Constraints for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `Zamowienia_Szkola` FOREIGN KEY (`IdSzkoly`) REFERENCES `szkola` (`IdSzkoly`);

--
-- Constraints for table `zgloszenia`
--
ALTER TABLE `zgloszenia`
  ADD CONSTRAINT `Zgloszenia_Szkola` FOREIGN KEY (`IdSzkoly`) REFERENCES `szkola` (`IdSzkoly`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
