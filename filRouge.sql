-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2020 at 05:35 PM
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
-- Table structure for table `concerts`
--

CREATE TABLE `concerts` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieux` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordonne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `concerts`
--

INSERT INTO `concerts` (`id`, `nom`, `date`, `lieux`, `coordonne`, `url`, `longitude`, `latitude`, `value`) VALUES
(1, 'Au fil des Voix', 'du 20 janvier au 7 février 2020', 'Au fil des Voix', '48.886857, 2.356526', './Assets/Icone/concert_marker.svg', 2.356526, 48.886857, 0),
(2, 'Les Nuits de l’Alligator', 'du 5 au 16 février 2020', 'La maroquinerie', '48.868525, 2.391985', './Assets/Icone/concert_marker.svg', 2.391985, 48.868525, 0),
(3, 'Les Inrocks Festival', 'du 5 au 7 mars 2020', 'La Gaîté Lyrique', '48.866555, 2.353395', './Assets/Icone/concert_marker.svg', 2.353395, 48.866555, 0),
(4, 'Villette Sonique', 'du jeudi 21 au dimanche 24 mai 2020', 'La Villette', '48.893957, 2.389525', './Assets/Icone/concert_marker.svg', 2.389525, 48.893957, 0),
(5, 'Sur Les Pointes', 'du 29 au 31 mai 2020', 'Kilowatt', '48.787481, 2.415459', './Assets/Icone/concert_marker.svg', 2.415459, 48.787481, 0),
(6, 'Le Slam Dunk', 'samedi 30 mai 2020', 'La Cigale et La Boule Noire', '48.882295, 2.340166', './Assets/Icone/concert_marker.svg', 2.340166, 48.882295, 0),
(7, 'This is My Fest', 'du vendredi 29 au dimanche 31 mai 2020', 'Gibus', '48.868299, 2.366411', './Assets/Icone/concert_marker.svg', 2.366411, 48.868299, 0),
(8, 'We Love Green', 'samedi 6 et dimanche 7 juin 2020', 'Bois de Vincennes', '48.827714, 2.433269', './Assets/Icone/concert_marker.svg', 2.433269, 48.827714, 0),
(9, 'Solidays', 'du vendredi 19 au dimanche 21 juin 2020', 'Hippodrome de ParisLongchamp', '48.857624, 2.233786', './Assets/Icone/concert_marker.svg', 2.233786, 48.857624, 0),
(10, 'Lollapalooza', 'samedi 18 et dimanche 19 juillet 2020', 'Hippodrome de ParisLongchamp', '48.857624, 2.233786', './Assets/Icone/concert_marker.svg', 2.233786, 48.857624, 0);

-- --------------------------------------------------------

--
-- Table structure for table `epreuves`
--

CREATE TABLE `epreuves` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordonne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacite` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `epreuves`
--

INSERT INTO `epreuves` (`id`, `nom`, `zone`, `coordonne`, `capacite`, `sport`, `longitude`, `latitude`) VALUES
(2, 'STADE DE FRANCE', 'Saint-Denis', '48.922728, 2.362597', '80.000', 'Athlétisme', 2.362597, 48.922728),
(3, 'CHAMP DE MARS', 'Paris', '48.856212, 2.298652', '12.000', 'Beach volley', 2.298652, 48.856212),
(4, 'CHAMPS-ELYSÉES', 'Paris', '48.870021, 2.307187', '25.000', 'Cyclisme sur route', 2.307187, 48.870021),
(5, 'TOUR EIFFEL', 'Paris', '48.858342, 2.294331', '13.000', 'Triathlon, Natation en eau libre', 2.294331, 48.858342),
(6, 'GRAND PALAIS', 'Paris', '48.866151, 2.310352', '7.000', 'Escrime, Taekwondo', 2.310352, 48.866151),
(7, 'ESPLANADES DES INVALIDES', 'Paris', '48.853821, 2.312310', '6.000', 'Tir à l\'arc', 2.31231, 48.853821),
(8, 'PARC DES EXPOSITIONS DE LA PORTE DE VERSAILLES', 'Paris', '48.831924, 2.287044', '18.000', 'Handball, Tennis de table', 2.287044, 48.831924),
(9, 'PARC DES PRINCES', 'Paris', '48.841782, 2.253188', '45.000', 'Football', 2.253188, 48.841782),
(10, 'STADE JEAN BOUIN', 'Paris', '48.843285, 2.252861', '20.000', 'Rugby à VII', 2.252861, 48.843285),
(11, 'ROLAND-GARROS', 'Paris', '48.845892, 2.253459', '15.000', 'Tennis', 2.253459, 48.845892),
(12, 'BERCY - ACCOR HOTELS ARENA', 'Paris', '48.838587, 2.378284', '15.000', 'Basket, Judo', 2.378284, 48.838587),
(13, 'STADE YVES-DU-MANOIR', 'Colombes', '48.929220, 2.247385', '10.000', 'Hockey sur gazon', 2.247385, 48.92922),
(14, 'ZENITH', 'Paris', '48.894119, 2.393658', '6.000', 'Haltérophilie', 2.393658, 48.894119),
(15, 'BASE NAUTIQUE', 'Vaires-sur-Marne', '48.864492, 2.634140', '12.000', 'Canoë-kayak, Aviron', 2.63414, 48.864492),
(16, 'CHATEAU DE VERSAILLES', 'Versailles', '48.804779, 2.120699', '28.000', 'Equitation', 2.120699, 48.804779),
(17, 'VELODROME NATIONAL', 'Saint-Quentin-en-Yvelines', '48.804779, 2.120699', '5.000', 'Cyclisme sur piste, pentahlon moderne, BMX', 2.120699, 48.804779),
(18, 'ARENA 92', 'Nanterre', '48.895194, 2.229339', '23.500', 'Gymnastique, trampoline, GRS', 2.229339, 48.895194),
(19, 'COLLINE D\'ELANCOURT', 'Elancourt', '48.788095, 1.968742', '22.000', 'VTT', 1.968742, 48.788095),
(20, 'GOLF NATIONAL', 'Saint-Quentin-en-Yvelines', '48.750450, 2.078284', '35.000', 'Golf', 2.078284, 48.75045),
(21, 'CENTRE AQUATIQUE', 'Aubervilliers', '48.895224, 2.384705', '15.000', 'Natation', 2.384705, 48.895224),
(22, 'ARENA II BERCY', 'Paris', '48.836673, 2.378970', '7.000', 'Lutte, basket', 2.37897, 48.836673),
(23, 'SALONS DES EXPOSITIONS', 'Le Bourget', '48.943924, 2.430166', '7.000', 'Volley, Badminton, Tir', 2.430166, 48.943924),
(24, 'ESPLANADE DES INVALIDES', 'Paris', '48.855566, 2.312611', '8.000', 'Volley, Badminton, Tir', 2.312611, 48.855566);

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
-- Table structure for table `marche`
--

CREATE TABLE `marche` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrondissement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordonne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marche`
--

INSERT INTO `marche` (`id`, `nom`, `rue`, `arrondissement`, `coordonne`, `longitude`, `latitude`, `value`) VALUES
(1, 'Le Marché d’Aligre', '3 Place d’Aligre', '12e', '48.849362, 2.377895', 2.377895, 48.849362, 0),
(2, 'Le marché de Belleville', '63 Boulevard de Belleville', '11e', '48.870105, 2.378678', 2.378678, 48.870105, 0),
(3, 'Le marché des Batignolles', '64 rue des Batignolles', '17e', '48.886353, 2.318796', 2.318796, 48.886353, 0),
(4, 'Le Marché des Enfants Rouges', '39 Rue de Bretagne', '13e', '48.862916, 2.362178', 2.362178, 48.862916, 0),
(5, 'Le marché de Barbès', 'Boulevard de la chapelle', '18e', '48.884097, 2.357103', 2.357103, 48.884097, 0),
(6, 'Le marché Place des Fêtes', 'Place des Fêtes', '19e', '48.877160, 2.394047', 2.394047, 48.87716, 0),
(7, 'Le marché Saxe-Breteuil', 'Avenue de Saxe', '7e', '48.848078, 2.310077', 2.310077, 48.848078, 0),
(8, 'Le marché Monge', 'Place Monge', '5e', '48.842686, 2.352149', 2.352149, 48.842686, 0),
(9, 'Le marché Raspail', '116 Boulevard Raspail', '6e', '48.844563, 2.328631', 2.328631, 48.844563, 0),
(10, 'Le marché de La Porte St Martin', '31-33 Rue du Château d’Eau', '10e', '48.870951, 2.358522', 2.358522, 48.870951, 0);

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
('20200212100406', '2020-02-12 10:04:16'),
('20200220185507', '2020-02-20 18:55:25'),
('20200220190446', '2020-02-20 19:04:50'),
('20200222160857', '2020-02-22 16:09:07'),
('20200222181443', '2020-02-22 18:14:48'),
('20200222185335', '2020-02-22 18:53:39'),
('20200222193116', '2020-02-22 19:31:24'),
('20200223131845', '2020-02-23 13:18:57'),
('20200224092355', '2020-02-24 09:24:02'),
('20200225104104', '2020-02-25 10:41:13'),
('20200225134343', '2020-02-25 13:43:51'),
('20200225141034', '2020-02-25 14:10:39'),
('20200225142816', '2020-02-25 14:28:19'),
('20200225143010', '2020-02-25 14:30:17'),
('20200225143502', '2020-02-25 14:35:06'),
('20200225204611', '2020-02-25 20:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `monuments`
--

CREATE TABLE `monuments` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrondissement` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordonne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monuments`
--

INSERT INTO `monuments` (`id`, `nom`, `rue`, `arrondissement`, `coordonne`, `tarif`, `longitude`, `latitude`, `value`) VALUES
(1, 'L’Arc de Triomphe', 'Avenue Charles de Gaulle', '8e', '48.873650, 2.295113', 'Payant', 2.295113, 48.87365, 0),
(2, 'Tour Eiffel', '5 Avenue Anatole France', '7e', '48.858288, 2.294458', 'Payant', 2.294458, 48.858288, 0),
(3, 'Basilique du Sacré-Cœur', '35 Rue du Chevalier de la Barre', '18e', '48.886619, 2.343104', 'Payant', 2.343104, 48.886619, 0),
(4, 'Musée de l’armée/ Invalides', '129 Rue de Grenelle', '7e', '48.855708, 2.312508', 'Payant', 2.312508, 48.855708, 0),
(5, 'Cathédrale Notre-Dame de Paris', '6 place du Parvis Notre-Dame', '4e', '48.849366, 2.351227', 'Gratuit', 2.351227, 48.849366, 0),
(6, 'Centre Pompidou', 'Place Georges Pompidou', '4e', '48.860585, 2.352213', 'Payant', 2.352213, 48.860585, 0),
(7, 'Le Louvre', '99 rue de Rivoli', '1er', '48.860549, 2.337577', 'Payant', 2.337577, 48.860549, 0),
(8, 'Le musée d’Orsay', '1 Rue de la Légion d’Honneur ', '7e', '48.859925, 2.326532', 'Payant', 2.326532, 48.859925, 0),
(9, 'Le palais Garnier', '8 Rue Scribe', '9e', '48.871927, 2.331022', 'Payant', 2.331022, 48.871927, 0),
(10, 'La place Vendôme', '356 rue Saint-Honoré', '1er', '48.867423, 2.329393', 'Gratuit', 2.329393, 48.867423, 0),
(11, 'Le Panthéon', '28 place du Panthéon', '5e', '48.846214, 2.346227', 'Payant', 2.346227, 48.846214, 0),
(12, 'Le Grand Palais', 'Avenue Winston-Churchill', '8e', '48.865952, 2.312485', 'Payant', 2.312485, 48.865952, 0),
(13, 'Tour Saint-Jaques', 'Square de la Tour Saint-Jacques', '1er', '48.858019, 2.348918', 'Payant', 2.348918, 48.858019, 0),
(14, 'La Conciergerie', '2 boulevard du Palais', '1er', '48.855990, 2.345480', 'Payant', 2.34548, 48.85599, 0),
(15, 'La chapelle expiatoire', '29 rue Pasquier', '8e', '48.873759, 2.323002', 'Payant', 2.323002, 48.873759, 0),
(16, 'Le Jardin Alpin', '57 Rue Cuvier ', '5e', '48.843699, 2.358088', 'Gratuit', 2.358088, 48.843699, 0),
(17, 'Jardin Japonais du Panthéon Bouddhique', '19 Avenue d’Iéna', '16e', '48.866318, 2.294546', 'Gratuit', 2.294546, 48.866318, 0),
(18, 'Catacombes', '1 Avenue du Colonel Henri Rol-Tanguy', '14e', '48.833804, 2.332401', 'Payant', 2.332401, 48.833804, 0),
(19, 'Mur des je t’aime', 'Place des Abbesses', '18e', '48.884796, 2.338564', 'Gratuit', 2.338564, 48.884796, 0),
(20, 'Statue de la Liberté', 'L’Ile aux Cygnes', '15e', '48.846328, 2.332899', 'Gratuit', 2.332899, 48.846328, 0),
(21, 'Arènes de Lutèce', '49 Rue Monge', '5e', '48.844999, 2.353183', 'Gratuit', 2.353183, 48.844999, 0),
(22, 'Musée de la Sculpture en Plein Air', 'Quai Saint Bernard', '5e', '48.847556, 2.360516', 'Gratuit', 2.360516, 48.847556, 0);

-- --------------------------------------------------------

--
-- Table structure for table `musee`
--

CREATE TABLE `musee` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrondissement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordonne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `musee`
--

INSERT INTO `musee` (`id`, `nom`, `rue`, `arrondissement`, `coordonne`, `longitude`, `latitude`, `value`) VALUES
(1, 'Musée du Louvre', '99, rue de Rivoli', '1er', '48.860578, 2.337613', 2.337613, 48.860578, 0),
(2, 'Musée d’Orsay', '1, rue de la Légion d’Honneur', '7e', '48.859950, 2.326545', 2.326545, 48.85995, 0),
(3, 'Centre Georges Pompidou', 'Place Georges Pompidou', '4e', '48.860591, 2.352243', 2.352243, 48.860591, 0),
(4, 'Musée du Quai Branly', '37 quai Branly', '7e', '48.860880, 2.297901', 2.297901, 48.86088, 0),
(5, 'Le Grand Palais', '3, avenue du Général Eisenhower', '8e', '48.866040, 2.312478', 2.312478, 48.86604, 0),
(6, 'Le Petit Palais', 'Avenue Winston Churchill', '8e', '48.866040, 2.314593', 2.314593, 48.86604, 0),
(7, 'Palais de la Découverte', 'Avenue Franklin D. Roosevelt', '8e', '48.866186, 2.310805', 2.310805, 48.866186, 0),
(8, 'La Cité des Sciences et de l’Industrie', '30, avenue Corentin Cariou', '19e', '48.895576, 2.387908', 2.387908, 48.895576, 0),
(9, 'Le Muséum National d’Histoire Naturelle', '57, rue Cuvier', '5e', '48.843372, 2.363487', 2.363487, 48.843372, 0),
(10, 'Le Musée des Arts et des Métiers', '60, rue Réaumur', '3e', '48.866606, 2.355468', 2.355468, 48.866606, 0),
(11, 'Le Musée Picasso', '5, rue de Thorigny', '3e', '48.859846, 2.362344', 2.362344, 48.859846, 0),
(12, 'Le Musée de Montmartre', '12-14, rue Cortot', '18e', '48.887682, 2.340707', 2.340707, 48.887682, 0),
(13, 'Musée national des arts asiatiques', '6, place d’Iéna', '16e', '48.865044, 2.293776', 2.293776, 48.865044, 0),
(14, 'Le Musée de l’Orangerie', 'Jardin des Tuileries', '1er', '48.863760, 2.322758', 2.322758, 48.86376, 0),
(15, 'Le Musée d’Art Moderne', '11, Avenue du Président Wilson', '16e', '48.864331, 2.297821', 2.297821, 48.864331, 0),
(16, 'Le Musée du Moyen-Âge', '16, Place Paul Painlevé', '5e', '48.850465, 2.344086', 2.344086, 48.850465, 0),
(17, 'Le Musée des Arts Décoratifs', '107, rue de Rivoli', '1er', '48.863140, 2.333607', 2.333607, 48.86314, 0),
(18, 'Le Musée de l’Architecture et du Patrimoine', '1, Place du Trocadéro', '16e', '48.862651, 2.288668', 2.288668, 48.862651, 0),
(19, 'Le Musée Rodin', '77, Rue de Varenne', '7e', '48.855301, 2.315832', 2.315832, 48.855301, 0),
(21, 'La Fondation Louis Vuitton', '8, Avenue du Mahatma Gandhi', '16e', '48.876444, 2.263405', 2.263405, 48.876444, 0);

-- --------------------------------------------------------

--
-- Table structure for table `parcs`
--

CREATE TABLE `parcs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordonne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parcs`
--

INSERT INTO `parcs` (`id`, `nom`, `coordonne`, `longitude`, `latitude`, `value`) VALUES
(1, 'Parc des Buttes-Chaumont', '48.879877, 2.379950', 2.37995, 48.879877, 0),
(2, 'Jardin du Palais Royal', '48.864749, 2.337686', 2.337686, 48.864749, 0),
(3, 'Parc Monceau', '48.880050, 2.308955', 2.308955, 48.88005, 0),
(4, 'Jardin du musée Rodin', '48.855165, 2.316007', 2.316007, 48.855165, 0),
(5, 'Jardin des Plantes', '48.842368, 2.359585', 2.359585, 48.842368, 0),
(6, 'Jardin de l\'hôtel de Sens', '48.853778, 2.358096', 2.358096, 48.853778, 0),
(7, 'Parc de Belleville', '48.870389, 2.385179', 2.385179, 48.870389, 0),
(9, 'Parc Floral de Vincennes', '48.839886, 2.435894', 2.435894, 48.839886, 0),
(10, 'Le Jardin des Serres d\'Auteuil', '48.846247, 2.252649', 2.252649, 48.846247, 0),
(11, 'Jardin des Rosiers - Joseph-Migneret', '48.857579, 2.360084', 2.360084, 48.857579, 0),
(12, 'Parc Montsouris', '48.821250, 2.337475', 2.337475, 48.82125, 0),
(13, 'Jardin des Tuileries', '48.863378, 2.327366', 2.327366, 48.863378, 0),
(14, 'Arboretum de Paris', '48.822211, 2.458773', 2.458773, 48.822211, 0),
(15, 'Parc André Citroën', '48.840321, 2.276791', 2.276791, 48.840321, 0),
(16, 'Bois de Vincennes', '48.827290, 2.433054', 2.433054, 48.82729, 0),
(17, 'Parc de Bagatelle', '48.872276, 2.250274', 2.250274, 48.872276, 0),
(18, 'Jardin d\'acclimatation', '48.877890, 2.268178', 2.268178, 48.87789, 0),
(19, 'Parc de la Villette', '48.891591, 2.387256', 2.387256, 48.891591, 0),
(20, 'Place des Vosges', '48.856002, 2.365716', 2.365716, 48.856002, 0),
(21, 'Parc Clichy-Batignolles - Martin-Luther-King', '48.891167, 2.314851', 2.314851, 48.891167, 0),
(22, 'Jardin du Luxembourg', '48.844950, 2.336989', 2.336989, 48.84495, 0),
(23, 'Jardin du Panthéon bouddhique du musée Guimet', '48.867807, 2.294674', 2.294674, 48.867807, 0),
(24, 'Jardin de l\'hôtel de Sully', '48.854940, 2.364048', 2.364048, 48.85494, 0),
(25, 'Bois de Boulogne', '48.858940, 2.263117', 2.263117, 48.85894, 0),
(26, 'Domaine National de Saint-Cloud', '48.839973, 2.217462', 2.217462, 48.839973, 0),
(27, 'Parc de la Butte-du-Chapeau-Rouge', '48.882338, 2.399667', 2.399667, 48.882338, 0),
(29, 'Parc de Bercy', '48.836994, 2.381467', 2.381467, 48.836994, 0),
(30, 'La Coulée verte', '48.849446, 2.371489', 2.371489, 48.849446, 0),
(31, 'Parc Georges Brassens', '48.831457, 2.301183', 2.301183, 48.831457, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `epreuves`
--
ALTER TABLE `epreuves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horaires`
--
ALTER TABLE `horaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marche`
--
ALTER TABLE `marche`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `monuments`
--
ALTER TABLE `monuments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musee`
--
ALTER TABLE `musee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcs`
--
ALTER TABLE `parcs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concerts`
--
ALTER TABLE `concerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `epreuves`
--
ALTER TABLE `epreuves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `horaires`
--
ALTER TABLE `horaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `marche`
--
ALTER TABLE `marche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `monuments`
--
ALTER TABLE `monuments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `musee`
--
ALTER TABLE `musee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `parcs`
--
ALTER TABLE `parcs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
