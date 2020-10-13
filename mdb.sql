-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Paź 2020, 13:56
-- Wersja serwera: 10.1.26-MariaDB
-- Wersja PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mdb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expense_category_assigned_to_user_id` int(11) UNSIGNED NOT NULL,
  `payment_method_assigned_to_user_id` int(11) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `date_of_expense` date NOT NULL,
  `expense_comment` varchar(100) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `expenses`
--

INSERT INTO `expenses` (`id`, `user_id`, `expense_category_assigned_to_user_id`, `payment_method_assigned_to_user_id`, `amount`, `date_of_expense`, `expense_comment`) VALUES
(1, 4, 4, 0, '500.00', '2020-04-05', ''),
(2, 4, 1, 0, '111.00', '2020-04-01', '111'),
(3, 4, 1, 1, '111.00', '2020-04-01', '111'),
(7, 5, 70, 3, '2133.00', '2020-04-10', 'znowu 70 ???!!!'),
(8, 5, 67, 3, '1234.00', '2020-04-15', 'no i co kurdeee'),
(9, 5, 70, 1, '55.00', '2020-04-19', ''),
(10, 5, 68, 1, '56.00', '2020-04-20', ''),
(11, 5, 78, 2, '567.00', '2020-04-23', ''),
(12, 5, 71, 1, '6560.00', '2020-04-23', ''),
(13, 5, 78, 3, '786.00', '2020-05-11', 'jesteś na bogato'),
(14, 7, 102, 2, '100.00', '2020-05-12', 'masazer twarzy'),
(15, 7, 100, 2, '1100.00', '2020-05-12', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `expenses_category_assigned_to_users`
--

CREATE TABLE `expenses_category_assigned_to_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `expenses_category_assigned_to_users`
--

INSERT INTO `expenses_category_assigned_to_users` (`id`, `user_id`, `name`) VALUES
(1, 1, 'Transport'),
(2, 1, 'Books'),
(3, 1, 'Food'),
(4, 1, 'Apartments'),
(5, 1, 'Telecommunication'),
(6, 1, 'Health'),
(7, 1, 'Clothes'),
(8, 1, 'Hygiene'),
(9, 1, 'Kids'),
(10, 1, 'Recreation'),
(11, 1, 'Trip'),
(12, 1, 'Savings'),
(13, 1, 'For Retirement'),
(14, 1, 'Debt Repayment'),
(15, 1, 'Gift'),
(16, 1, 'Another'),
(17, 2, 'Transport'),
(18, 2, 'Books'),
(19, 2, 'Food'),
(20, 2, 'Apartments'),
(21, 2, 'Telecommunication'),
(22, 2, 'Health'),
(23, 2, 'Clothes'),
(24, 2, 'Hygiene'),
(25, 2, 'Kids'),
(26, 2, 'Recreation'),
(27, 2, 'Trip'),
(28, 2, 'Savings'),
(29, 2, 'For Retirement'),
(30, 2, 'Debt Repayment'),
(31, 2, 'Gift'),
(32, 2, 'Another'),
(33, 3, 'Transport'),
(34, 3, 'Books'),
(35, 3, 'Food'),
(36, 3, 'Apartments'),
(37, 3, 'Telecommunication'),
(38, 3, 'Health'),
(39, 3, 'Clothes'),
(40, 3, 'Hygiene'),
(41, 3, 'Kids'),
(42, 3, 'Recreation'),
(43, 3, 'Trip'),
(44, 3, 'Savings'),
(45, 3, 'For Retirement'),
(46, 3, 'Debt Repayment'),
(47, 3, 'Gift'),
(48, 3, 'Another'),
(49, 4, 'Transport'),
(50, 4, 'Books'),
(51, 4, 'Food'),
(52, 4, 'Apartments'),
(53, 4, 'Telecommunication'),
(54, 4, 'Health'),
(55, 4, 'Clothes'),
(56, 4, 'Hygiene'),
(57, 4, 'Kids'),
(58, 4, 'Recreation'),
(59, 4, 'Trip'),
(60, 4, 'Savings'),
(61, 4, 'For Retirement'),
(62, 4, 'Debt Repayment'),
(63, 4, 'Gift'),
(64, 4, 'Another'),
(65, 5, 'Transport'),
(66, 5, 'Books'),
(67, 5, 'Food'),
(68, 5, 'Apartments'),
(69, 5, 'Telecommunication'),
(70, 5, 'Health'),
(71, 5, 'Clothes'),
(72, 5, 'Hygiene'),
(73, 5, 'Kids'),
(74, 5, 'Recreation'),
(75, 5, 'Trip'),
(76, 5, 'Savings'),
(77, 5, 'For Retirement'),
(78, 5, 'Debt Repayment'),
(79, 5, 'Gift'),
(80, 5, 'Another'),
(81, 6, 'Transport'),
(82, 6, 'Books'),
(83, 6, 'Food'),
(84, 6, 'Apartments'),
(85, 6, 'Telecommunication'),
(86, 6, 'Health'),
(87, 6, 'Clothes'),
(88, 6, 'Hygiene'),
(89, 6, 'Kids'),
(90, 6, 'Recreation'),
(91, 6, 'Trip'),
(92, 6, 'Savings'),
(93, 6, 'For Retirement'),
(94, 6, 'Debt Repayment'),
(95, 6, 'Gift'),
(96, 6, 'Another'),
(97, 7, 'Transport'),
(98, 7, 'Ksi??ki'),
(99, 7, 'Jedzenie'),
(100, 7, 'Mieszkanie'),
(101, 7, 'Telekomunikacja'),
(102, 7, 'Zdrowie'),
(103, 7, 'Ubrania'),
(104, 7, 'Higiena'),
(105, 7, 'Dzieci'),
(106, 7, 'Rekreacja'),
(107, 7, 'Wycieczki'),
(108, 7, 'Oszcz?dno?ci'),
(109, 7, 'Emerytura'),
(110, 7, 'Sp?ata d?ugu'),
(111, 7, 'Prezenty'),
(112, 7, 'Inne'),
(113, 8, 'Transport'),
(114, 8, 'Ksi??ki'),
(115, 8, 'Jedzenie'),
(116, 8, 'Mieszkanie'),
(117, 8, 'Telekomunikacja'),
(118, 8, 'Zdrowie'),
(119, 8, 'Ubrania'),
(120, 8, 'Higiena'),
(121, 8, 'Dzieci'),
(122, 8, 'Rekreacja'),
(123, 8, 'Wycieczki'),
(124, 8, 'Oszcz?dno?ci'),
(125, 8, 'Emerytura'),
(126, 8, 'Sp?ata d?ugu'),
(127, 8, 'Prezenty'),
(128, 8, 'Inne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `expenses_category_default`
--

CREATE TABLE `expenses_category_default` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `expenses_category_default`
--

INSERT INTO `expenses_category_default` (`id`, `name`) VALUES
(1, 'Transport'),
(2, 'Książki'),
(3, 'Jedzenie'),
(4, 'Mieszkanie'),
(5, 'Telekomunikacja'),
(6, 'Zdrowie'),
(7, 'Ubrania'),
(8, 'Higiena'),
(9, 'Dzieci'),
(10, 'Rekreacja'),
(11, 'Wycieczki'),
(12, 'Oszczędności'),
(13, 'Emerytura'),
(14, 'Spłata długu'),
(15, 'Prezenty'),
(16, 'Inne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `incomes`
--

CREATE TABLE `incomes` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `income_category_assigned_to_user_id` int(11) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `date_of_income` date NOT NULL,
  `income_comment` varchar(100) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `incomes`
--

INSERT INTO `incomes` (`id`, `user_id`, `income_category_assigned_to_user_id`, `amount`, `date_of_income`, `income_comment`) VALUES
(1, 3, 1, '555.00', '2020-04-01', 'bcc'),
(2, 3, 3, '442.00', '2020-02-06', 'zegarek na gÅ‚owÄ™'),
(3, 3, 4, '999999.99', '2020-02-13', 'sprzedaÅ‚em szwagra za groch'),
(4, 3, 2, '4.20', '2020-04-04', 'jajÄ™cznyÅ¼kÄ…Ä…'),
(5, 3, 1, '11.00', '2020-04-01', 'Ä™Å¼Ä‡Ä…'),
(6, 3, 2, '9090.00', '2020-03-30', 'łabędzie'),
(7, 4, 1, '0.00', '0000-00-00', 'Ä…Ä™Ä‡'),
(8, 4, 3, '200.00', '2020-04-02', 'bąbęłkąm'),
(9, 4, 3, '200.00', '2020-04-02', 'bąbęłkąm'),
(10, 4, 3, '200.00', '2020-04-02', 'bąbęłkąm'),
(11, 4, 1, '0.00', '2020-04-02', ''),
(12, 4, 1, '0.00', '2020-04-02', ''),
(13, 4, 1, '0.00', '2020-04-02', ''),
(14, 4, 1, '0.00', '2020-04-02', ''),
(15, 4, 1, '0.00', '2020-04-02', ''),
(16, 4, 1, '0.00', '2020-04-02', ''),
(17, 4, 1, '55.00', '2020-04-02', ''),
(18, 4, 3, '78.00', '2020-04-01', 'bębelećkijówżką'),
(19, 4, 3, '3232.00', '2020-04-01', 'jajka na bekonie'),
(23, 5, 19, '323.00', '2020-04-15', 'nowe'),
(24, 5, 17, '100.05', '2020-04-15', 'wyplateczka'),
(25, 5, 18, '25.00', '2020-04-09', ''),
(26, 5, 19, '560.00', '2020-04-20', 'jeeea'),
(27, 5, 20, '23.00', '2020-04-20', ''),
(28, 5, 19, '3000.00', '2020-04-23', 'goood jooob'),
(29, 5, 18, '5000.00', '2020-04-20', ''),
(30, 5, 17, '35.00', '2020-04-23', 'niezle'),
(31, 5, 17, '450.00', '2020-04-21', 'znowu spoczko'),
(32, 5, 18, '210.00', '2020-05-11', 'próbeczka'),
(33, 7, 25, '4200.00', '2020-05-12', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `incomes_category_assigned_to_users`
--

CREATE TABLE `incomes_category_assigned_to_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `incomes_category_assigned_to_users`
--

INSERT INTO `incomes_category_assigned_to_users` (`id`, `user_id`, `name`) VALUES
(1, 1, 'Salary'),
(2, 1, 'Interest'),
(3, 1, 'Allegro'),
(4, 1, 'Another'),
(5, 2, 'Salary'),
(6, 2, 'Interest'),
(7, 2, 'Allegro'),
(8, 2, 'Another'),
(9, 3, 'Salary'),
(10, 3, 'Interest'),
(11, 3, 'Allegro'),
(12, 3, 'Another'),
(13, 4, 'Salary'),
(14, 4, 'Interest'),
(15, 4, 'Allegro'),
(16, 4, 'Another'),
(17, 5, 'Salary'),
(18, 5, 'Interest'),
(19, 5, 'Allegro'),
(20, 5, 'Another'),
(21, 6, 'Salary'),
(22, 6, 'Interest'),
(23, 6, 'Allegro'),
(24, 6, 'Another'),
(25, 7, 'Wyp?ata'),
(26, 7, 'Odsetki'),
(27, 7, 'Allegro'),
(28, 7, 'Inne'),
(29, 8, 'Wyp?ata'),
(30, 8, 'Odsetki'),
(31, 8, 'Allegro'),
(32, 8, 'Inne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `incomes_category_default`
--

CREATE TABLE `incomes_category_default` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `incomes_category_default`
--

INSERT INTO `incomes_category_default` (`id`, `name`) VALUES
(1, 'Wypłata'),
(2, 'Odsetki'),
(3, 'Allegro'),
(4, 'Inne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `payment_methods_assigned_to_users`
--

CREATE TABLE `payment_methods_assigned_to_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `payment_methods_assigned_to_users`
--

INSERT INTO `payment_methods_assigned_to_users` (`id`, `user_id`, `name`) VALUES
(1, 1, 'Cash'),
(2, 1, 'Debit Card'),
(3, 1, 'Credit Card'),
(4, 2, 'Cash'),
(5, 2, 'Debit Card'),
(6, 2, 'Credit Card'),
(7, 3, 'Cash'),
(8, 3, 'Debit Card'),
(9, 3, 'Credit Card'),
(10, 4, 'Cash'),
(11, 4, 'Debit Card'),
(12, 4, 'Credit Card'),
(13, 5, 'Cash'),
(14, 5, 'Debit Card'),
(15, 5, 'Credit Card'),
(16, 6, 'Cash'),
(17, 6, 'Debit Card'),
(18, 6, 'Credit Card'),
(19, 7, 'Gotówka'),
(20, 7, 'Karta Debetowa'),
(21, 7, 'Karta Kredytowa'),
(22, 8, 'Gotówka'),
(23, 8, 'Karta Debetowa'),
(24, 8, 'Karta Kredytowa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `payment_methods_default`
--

CREATE TABLE `payment_methods_default` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `payment_methods_default`
--

INSERT INTO `payment_methods_default` (`id`, `name`) VALUES
(1, 'Gotówka'),
(2, 'Karta Debetowa'),
(3, 'Karta Kredytowa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `remembered_logins`
--

CREATE TABLE `remembered_logins` (
  `token_hash` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `remembered_logins`
--

INSERT INTO `remembered_logins` (`token_hash`, `user_id`, `expires_at`) VALUES
('695c9d4f6b6f89ecd8abe2a9e61af84c0dfab276426f1d406531a8df10984e37', 13, '2020-08-21 18:10:42'),
('e1e5b71c3efce3bae786c8796400fda13d3fb87f108b4d2ea398c46d833f35ae', 13, '2020-09-03 22:14:26'),
('f7966b4b4fd8553f90830a60f3f3a958de2628e0e5b3dab80f824114aaff8f8d', 13, '2020-08-01 18:37:22');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `password_reset_hash` varchar(64) COLLATE utf8_polish_ci DEFAULT NULL,
  `password_reset_expires_at` datetime DEFAULT NULL,
  `activation_hash` varchar(64) COLLATE utf8_polish_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `password_reset_hash`, `password_reset_expires_at`, `activation_hash`, `is_active`) VALUES
(6, 'Wojti', 'wojti@on.pl', '$2y$10$YQ4cvpgHpm9YmjDeDZqZxOH6JVFeVt5UMcczmn93AbZ7lnbgortbG', NULL, NULL, NULL, 0),
(7, 'Matka', 'm@m.pl', '$2y$10$iia1Ndnb1fhA5Th4jrC62uEUGh9hHwBMI/sbvK8WYzgzeyCWQ7bj6', NULL, NULL, NULL, 0),
(8, 'Mat', 'ma@m.pl', '$2y$10$Zcyv6FTCTa79nrnvSKCzyOnx2ACT/HY8d2x6zWMgMKw2Gk1jEEEju', NULL, NULL, NULL, 0),
(9, 'Mattt', 'matt@m.pl', '$2y$10$YqGVR48Z8yqK46QV38VVEO4Wm1Q3FBkZCgqAGk6r2MfsODpoQ.o2S', NULL, NULL, NULL, 0),
(10, 'jaa', 'qw@rty.pl', '$2y$10$hrNkhZi811By.h/oDWG6uugvMUUbq/GGWftFqouYOwpSD3ria.y42', NULL, NULL, NULL, 0),
(11, 'www', 'wojtiiiii@on.pl', '$2y$10$m6T1sq/sPkWCmWXYrDa1X.suFJ9S0cUpeIG.pF6CHqaKY8OCVo6lK', NULL, NULL, NULL, 0),
(12, 'Alphabet Servicez', 'adam@gmail.com', '$2y$10$LZ68faSxxBgJI.Kn2zNNZ.IKu3UUFktsibm6LUGKPHQCqOwQ1Fl3a', NULL, NULL, NULL, 0),
(13, 'Wojciech', 'uchyki@interia.pl', '$2y$10$05bR0rjGgdAMgDFUbta2HePks/uz3Ii1joN87Z6oPoBowGGrrVn2e', 'dd152699e374b4fe45b6d4c51a242e846aa1a426d2cd7bfa3b2ff9b0aa6674e0', '2020-07-22 19:02:45', NULL, 0),
(14, 'jestezwyciezca', 'jeste@zwyciezca.pl', '$2y$10$T7RG0bNyln/1ngQ7WsG53u6hO.Cgz/ZPcYMId.7qxeyOYc55Y/nMi', NULL, NULL, NULL, 0),
(15, 'wojtinka', 'wojtink@op.pl', '$2y$10$Dh5vM6B7o7yCvgkUiC.uB.yMLbf/Khj6CkMespwd6n/ic8EolL.ne', NULL, NULL, 'f9f061771c8893257059db60131c1339ca55fd66cbe821e738311602ef763906', 0),
(16, 'wojtaszczyk', 'wojt@szczyk.pl', '$2y$10$19PTon0TBafsBCEaY0qL9uo.dZamqozDQZ4fUosAp2iG2z9Japee.', NULL, NULL, '1a71bf3441637f2510d0e8ff02a62b016812ac66e561ad621ec0dd53328068b0', 0),
(17, 'ropucha', 'r@p.pl', '$2y$10$3VJ6bJIB/Hn6ko4pPmginue/SvD2ZdwZhMBxhsOVg4GQxAl9xgkBW', NULL, NULL, NULL, 0),
(18, 'Wojciech', 'wojciech.luczak.88@interia.pl', '$2y$10$utDKm39Ewrgsav8iPv6Pe.fakSMxI1ZpqkvidrcfQLw1FSrOzNMrS', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users_backup`
--

CREATE TABLE `users_backup` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users_backup`
--

INSERT INTO `users_backup` (`id`, `username`, `password`, `email`) VALUES
(3, 'wojticzek', '$2y$10$k4dcsGUTYRemQly9uURnYeHv8/s/lKhDnwRtYqo4NPce.tLPAsjFu', 'wojt@sek.pl'),
(5, 'Jacek', '$2y$10$SAW19XL4j5U3r5Vetqj22etrwxW3gpr6tJg2C0cGvTM8CUQrVzewy', 'j@cek.pl'),
(6, 'kasia', '$2y$10$.e7wh6wlU5Fbltrm659.0eNk994U.oUfD687tjPucDCUXlxwntF6e', 'kat@rzyna.pl'),
(7, 'Aleksandra', '$2y$10$ev0fJxDPIamr/v/nzx4lcueGRsM20pWjnsQbab3CYOrItBk3KybMW', 'dyrlagaa@gmail.com'),
(8, 'wojtas', '$2y$10$s9.X4plzd8mTlPyuAkJIL.t/WaZE.L9tZUbrcOJQSNF0LtnI9BTAi', 'wojciech.luczak.88@interia.pl');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses_category_assigned_to_users`
--
ALTER TABLE `expenses_category_assigned_to_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses_category_default`
--
ALTER TABLE `expenses_category_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes_category_assigned_to_users`
--
ALTER TABLE `incomes_category_assigned_to_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes_category_default`
--
ALTER TABLE `incomes_category_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods_assigned_to_users`
--
ALTER TABLE `payment_methods_assigned_to_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods_default`
--
ALTER TABLE `payment_methods_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remembered_logins`
--
ALTER TABLE `remembered_logins`
  ADD PRIMARY KEY (`token_hash`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_hash` (`password_reset_hash`),
  ADD UNIQUE KEY `activation_hash` (`activation_hash`);

--
-- Indexes for table `users_backup`
--
ALTER TABLE `users_backup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT dla tabeli `expenses_category_assigned_to_users`
--
ALTER TABLE `expenses_category_assigned_to_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT dla tabeli `expenses_category_default`
--
ALTER TABLE `expenses_category_default`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT dla tabeli `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT dla tabeli `incomes_category_assigned_to_users`
--
ALTER TABLE `incomes_category_assigned_to_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT dla tabeli `incomes_category_default`
--
ALTER TABLE `incomes_category_default`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `payment_methods_assigned_to_users`
--
ALTER TABLE `payment_methods_assigned_to_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT dla tabeli `payment_methods_default`
--
ALTER TABLE `payment_methods_default`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT dla tabeli `users_backup`
--
ALTER TABLE `users_backup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
