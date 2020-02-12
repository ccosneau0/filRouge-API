-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 12, 2020 at 02:42 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filRouge`
--

-- --------------------------------------------------------

--
-- Table structure for table `bibliotheque`
--

CREATE TABLE `bibliotheque` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `rue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal` int(11) NOT NULL,
  `coordonne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bibliotheque`
--

INSERT INTO `bibliotheque` (`id`, `nom`, `numero`, `rue`, `code_postal`, `coordonne`) VALUES
(1, 'Bibliothèque Robert Sabatier', 29, 'rue Hermel', 75018, '48.891616, 2.344508'),
(2, 'Bibliothèque Fessart', 6, 'rue Fessart', 75018, '48.891616, 2.344508'),
(3, 'Bibliothèque Place Des Fêtes', 18, 'rue Jansen', 75019, '48.879364, 2.397625'),
(5, 'Bibliothèque Vandamme', 80, 'avenue du Maine', 75014, '48.838572, 2.322042'),
(6, 'Bibliothèque Glacière Marina Tsvetaïeva', 132, 'rue de la Glacière', 75013, '48.827071, 2.341995'),
(7, 'Bibliothèque Lancry', 11, 'rue de Lancry', 75010, '48.869389, 2.360243'),
(8, 'Bibliothèque Marguerite Audoux', 10, 'rue Portefoin', 75003, '48.863707, 2.359964'),
(9, 'Bibliothèque Courcelles', 17, 'avenue Beaucour', 75008, '48.877701, 2.303011'),
(10, 'Bibliothèque Gutenberg', 8, 'rue de la Montagne d\'Aulas', 75015, '48.840209, 2.278682');

-- --------------------------------------------------------

--
-- Table structure for table `horaires`
--

CREATE TABLE `horaires` (
  `id` int(11) NOT NULL,
  `lundi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mardi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercredi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jeudi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendredi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `samedi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimanche` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `horaires`
--

INSERT INTO `horaires` (`id`, `lundi`, `mardi`, `mercredi`, `jeudi`, `vendredi`, `samedi`, `dimanche`, `name`) VALUES
(1, 'fermé', '12:00 13:30 - 19:30 21:15', '12:00 13:30 - 19:30 21:15', '12:00 13:30 - 19:30 21:15', '12:00 13:30 - 19:30 21:15', '12:00 13:30 - 19:30 21:15', 'fermé', 'Qui plume la lune'),
(2, 'fermé', '12:00 14:30 - 18:30 22:00', '12:00 14:30 - 18:30 22:00', '12:00 14:30 - 18:30 22:00', '12:00 14:30 - 18:30 22:00', '12:00 14:30 - 18:30 22:00', 'fermé', 'Les passagers de Beyrouth'),
(4, 'Fermé', 'Fermé', '14:00 17:00', '16:00 19:00', 'Fermé', '10:00 12:30', 'Fermé', 'Bibliothèque Robert Sabatier'),
(5, 'Fermé', '13:00 19:00', '10:30 13:00 - 14:00 18:00', '13:00 19:00', '13:00 19:00', '10:30 13:00 - 14:00 18:00', 'Fermé', 'Bibliothèque Fessart'),
(6, 'Fermé', '13:00 19:00', '11:00 19:00', '13:00 19:00', '13:00 19:00', '11:00 19:00', 'Fermé', 'Bibliothèque Place Des Fêtes'),
(7, 'Fermé', '10:00 19:00', '10:00 19:00', '13:00 19:00', '13:00 19:00', '10:00 19:00', 'Fermé', 'Bibliothèque Vandamme'),
(8, 'Fermé', '10:00 19:15', '10:00 19:00', '13:00 19:00', '13:00 19:00', '10:00 18:00', 'Fermé', 'Bibliothèque Glacière Marina Tsvetaïeva'),
(9, 'Fermé', '13:00 19:00', '10:00 18:00', '13:00 19:00', '13:00 19:00', '10:00 18:00', 'Fermé', 'Bibliothèque Lancry'),
(10, 'Fermé', '13:00 19:00', '13:00 19:00', '10:00 19:00', '13:00 19:00', '10:00 18:00', 'Fermé', 'Bibliothèque Marguerite Audoux'),
(12, 'Fermé', '14:00 18:00', '14:00 18:00', '14:00 18:00', '14:00 18:00', '14:00 18:00', 'Fermé', 'Bibliothèque Courcelles'),
(13, 'Fermé', '10:00 12:30 - 13:30 17:30', '10:00 12:30 - 13:30 17:30', '13:30 17:30', '10:00 12:30 - 13:30 17:30', '10:00 12:30 - 13:30 18:00', 'Fermé', 'Bibliothèque Gutenberg');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200117130340', '2020-01-17 13:04:17'),
('20200204210222', '2020-02-04 21:02:44'),
('20200210094707', '2020-02-10 09:47:19'),
('20200211095206', '2020-02-11 09:52:27'),
('20200211095529', '2020-02-11 09:55:41'),
('20200211103050', '2020-02-11 10:30:56'),
('20200211105530', '2020-02-11 10:55:37'),
('20200212100406', '2020-02-12 10:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbr_street` int(11) NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `nbr_street`, `street`, `postal_code`, `phone`, `coordinate`) VALUES
(1, 'Qui plume la lune', 50, 'Rue Amelot', 75011, '01 48 07 45 48', '48.859070, 2.368410'),
(2, 'Les passagers de Beyrouth', 18, 'Passage de la Bonne Graine', 75011, '01 71 72 99 06', '48.852290, 2.377190');

-- --------------------------------------------------------

--
-- Table structure for table `tweet`
--

CREATE TABLE `tweet` (
  `id` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweet`
--

INSERT INTO `tweet` (`id`, `message`) VALUES
(1, 'Ricardo le plus bo');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bibliotheque`
--
ALTER TABLE `bibliotheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horaires`
--
ALTER TABLE `horaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweet`
--
ALTER TABLE `tweet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D6491041E39B` (`tweet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bibliotheque`
--
ALTER TABLE `bibliotheque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `horaires`
--
ALTER TABLE `horaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tweet`
--
ALTER TABLE `tweet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6491041E39B` FOREIGN KEY (`tweet_id`) REFERENCES `tweet` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
