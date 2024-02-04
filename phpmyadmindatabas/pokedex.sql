-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Värd: localhost:3306
-- Tid vid skapande: 04 feb 2024 kl 15:45
-- Serverversion: 5.7.24
-- PHP-version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `pokedex`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `pokemon`
--

CREATE TABLE `pokemon` (
  `name` varchar(150) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `pokemon`
--

INSERT INTO `pokemon` (`name`, `id`) VALUES
('gimmighoul', 34),
('butterfree', 37),
('bulbasaur', 40),
('ivysaur', 41),
('bulbasaur', 58),
('bellsprout', 64),
('weepinbell', 65);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
