-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Paź 2022, 07:48
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
-- Baza danych: `quiz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `answers` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `answers`
--

INSERT INTO `answers` (`id`, `answers`) VALUES
(1, 'Tak'),
(2, 'To chyba oczywiste'),
(3, 'Mega dobry'),
(4, 'Słabiutki'),
(5, 'No oczywiście że tak'),
(6, 'Nie raczej nie'),
(7, 'Mam nadzieje'),
(8, 'Oby nie'),
(9, 'Oczywiście że tak trzeba śmigać bolidem'),
(10, 'mega słaba maszyna '),
(11, 'Bluza'),
(12, 'Golf'),
(13, 'Polo'),
(14, 'Opel'),
(15, 'Z biedrony'),
(16, 'Z kulany'),
(17, 'Z mrówolwa'),
(18, 'Taco'),
(19, 'Carti'),
(20, 'Bedopies'),
(21, '1'),
(22, '3'),
(23, '5'),
(24, 'Jakieś 7 razy'),
(25, 'z 16'),
(26, 'Nie rozwali'),
(27, 'Mega słaba '),
(28, 'Mega dobra'),
(29, 'nwm'),
(30, 'Eclipse '),
(31, 'Silvia s15'),
(32, 'Opel Astra H GTC mega maszyna'),
(33, 'Lambo'),
(34, 'BMW'),
(35, 'Orianna'),
(36, 'Pyke'),
(37, 'Samira'),
(38, 'Sylas'),
(39, 'Mikołaj'),
(40, 'deck z golemem '),
(41, '3.0 miner (mega czad)'),
(42, 'log bait czy coś nwm nie znam się'),
(43, 'lavaloon czy jak to się tam nazywa'),
(44, 'carbon'),
(45, 'nowy (premiera 2 grudnia)'),
(46, 'rivals'),
(47, 'nfs z 2015'),
(48, 'oczywiście że tak'),
(49, 'są najlepsze'),
(50, 'są mega słabe'),
(51, 'nikt nie lubi lego');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `questions`
--

INSERT INTO `questions` (`id`, `question`) VALUES
(1, 'Czy tomek będzie na lekcji?'),
(2, 'Nowy nfs będzie...'),
(3, 'Katarina top1 postać'),
(4, 'Czy będą lekcje zdalne?'),
(5, 'Opel Astra H GTC to mega maszyna'),
(6, 'Polo czy Golf?'),
(7, 'Najlepszy armor w grounded'),
(8, 'Najlepszy raper'),
(9, 'Ile osób mieszka w Mielżynie?'),
(10, 'Ile razy Tomek jeszcze rozwali BMW?'),
(11, 'Nowa postać w lolu będzie'),
(12, 'Moje ulubione auta '),
(13, 'Moje ulubione postaci w lolu'),
(14, 'Najlepsze decki w clash royale'),
(15, 'Najlepsze nfs'),
(16, 'Czy klocki lego to mega czad ?');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions_has_answers`
--

CREATE TABLE `questions_has_answers` (
  `questions_id` int(11) NOT NULL,
  `answers_id` int(11) NOT NULL,
  `correct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `questions_has_answers`
--

INSERT INTO `questions_has_answers` (`questions_id`, `answers_id`, `correct`) VALUES
(1, 1, 0),
(1, 2, 1),
(2, 3, 1),
(2, 4, 0),
(3, 5, 1),
(3, 6, 0),
(4, 7, 1),
(4, 8, 0),
(5, 9, 1),
(5, 10, 0),
(6, 11, 0),
(6, 12, 0),
(6, 13, 0),
(6, 14, 1),
(7, 15, 0),
(7, 16, 1),
(7, 17, 0),
(8, 18, 0),
(8, 19, 1),
(8, 20, 0),
(9, 21, 1),
(9, 22, 0),
(9, 23, 0),
(10, 24, 0),
(10, 25, 0),
(10, 26, 1),
(11, 27, 0),
(11, 28, 0),
(11, 29, 1),
(12, 30, 1),
(12, 31, 1),
(12, 32, 1),
(12, 33, 0),
(12, 34, 0),
(13, 35, 0),
(13, 36, 1),
(13, 37, 1),
(13, 38, 1),
(13, 39, 0),
(14, 40, 0),
(14, 41, 1),
(14, 42, 1),
(14, 43, 0),
(15, 44, 1),
(15, 45, 1),
(15, 46, 0),
(15, 47, 0),
(16, 48, 1),
(16, 49, 1),
(16, 50, 0),
(16, 51, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users_has_answers`
--

CREATE TABLE `users_has_answers` (
  `users_id` int(11) NOT NULL,
  `answers_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `questions_has_answers`
--
ALTER TABLE `questions_has_answers`
  ADD PRIMARY KEY (`questions_id`,`answers_id`),
  ADD KEY `fk_questions_has_answers_answers1_idx` (`answers_id`),
  ADD KEY `fk_questions_has_answers_questions_idx` (`questions_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users_has_answers`
--
ALTER TABLE `users_has_answers`
  ADD PRIMARY KEY (`users_id`,`answers_id`),
  ADD KEY `fk_users_has_answers_answers1_idx` (`answers_id`),
  ADD KEY `fk_users_has_answers_users1_idx` (`users_id`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `questions_has_answers`
--
ALTER TABLE `questions_has_answers`
  ADD CONSTRAINT `fk_questions_has_answers_answers1` FOREIGN KEY (`answers_id`) REFERENCES `answers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_questions_has_answers_questions` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `users_has_answers`
--
ALTER TABLE `users_has_answers`
  ADD CONSTRAINT `fk_users_has_answers_answers1` FOREIGN KEY (`answers_id`) REFERENCES `answers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_has_answers_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
