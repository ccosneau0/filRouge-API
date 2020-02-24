-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 24, 2020 at 11:29 AM
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
-- Table structure for table `cinemas`
--

CREATE TABLE `cinemas` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrondissement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordonne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cinemas`
--

INSERT INTO `cinemas` (`id`, `nom`, `rue`, `arrondissement`, `coordonne`) VALUES
(1, 'Louxor', '170, boulevard Magenta', '10e', '48.883500, 2.349858'),
(2, 'Le Grand Action', '5, rue des Ecoles', '5e', '48.847512, 2.352113'),
(3, 'Le Grand Rex', '1, boulevard poissonnière', '2e', '48.870545, 2.347496'),
(4, 'La Villette', 'Parc de la Villette', '19e', '48.893684, 2.389199'),
(5, 'La Géode', '26, avenue Corentin Cariou', '19e', '48.894920, 2.385288'),
(6, 'Le Studio 28', '10, rue Tholozé', '18e', '48.886137, 2.335374'),
(7, 'Germain Paradisio', '25, rue de Buci', '6e', '48.853610, 2.336664'),
(8, 'Le Forum des images', '2, rue du cinéma', '1er', '48.862478, 2.344831'),
(9, 'Le Club de l’étoile', '14, rue Troyon', '17e', '48.876140, 2.295435');

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
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `concerts`
--

INSERT INTO `concerts` (`id`, `nom`, `date`, `lieux`, `coordonne`, `url`) VALUES
(1, 'Au fil des Voix', 'du 20 janvier au 7 février 2020', 'Au fil des Voix', '48.886857, 2.356526', './Assets/Icone/concert_marker.svg'),
(2, 'Les Nuits de l’Alligator', 'du 5 au 16 février 2020', 'La maroquinerie', '48.868525, 2.391985', './Assets/Icone/concert_marker.svg'),
(3, 'Les Inrocks Festival', 'du 5 au 7 mars 2020', 'La Gaîté Lyrique', '48.866555, 2.353395', './Assets/Icone/concert_marker.svg'),
(4, 'Villette Sonique', 'du jeudi 21 au dimanche 24 mai 2020', 'La Villette', '48.893957, 2.389525', './Assets/Icone/concert_marker.svg'),
(5, 'Sur Les Pointes', 'du 29 au 31 mai 2020', 'Kilowatt', '48.787481, 2.415459', './Assets/Icone/concert_marker.svg'),
(6, 'Le Slam Dunk', 'samedi 30 mai 2020', 'La Cigale et La Boule Noire', '48.882295, 2.340166', './Assets/Icone/concert_marker.svg'),
(7, 'This is My Fest', 'du vendredi 29 au dimanche 31 mai 2020', 'Gibus', '48.868299, 2.366411', './Assets/Icone/concert_marker.svg'),
(8, 'We Love Green', 'samedi 6 et dimanche 7 juin 2020', 'Bois de Vincennes', '48.827714, 2.433269', './Assets/Icone/concert_marker.svg'),
(9, 'Solidays', 'du vendredi 19 au dimanche 21 juin 2020', 'Hippodrome de ParisLongchamp', '48.857624, 2.233786', './Assets/Icone/concert_marker.svg'),
(10, 'Lollapalooza', 'samedi 18 et dimanche 19 juillet 2020', 'Hippodrome de ParisLongchamp', '48.857624, 2.233786', './Assets/Icone/concert_marker.svg');

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
  `sport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `epreuves`
--

INSERT INTO `epreuves` (`id`, `nom`, `zone`, `coordonne`, `capacite`, `sport`) VALUES
(2, 'STADE DE FRANCE', 'Saint-Denis', '48.922728, 2.362597', '80.000', 'Athlétisme'),
(3, 'CHAMP DE MARS', 'Paris', '48.856212, 2.298652', '12.000', 'Beach volley'),
(4, 'CHAMPS-ELYSÉES', 'Paris', '48.870021, 2.307187', '25.000', 'Cyclisme sur route'),
(5, 'TOUR EIFFEL', 'Paris', '48.858342, 2.294331', '13.000', 'Triathlon, Natation en eau libre'),
(6, 'GRAND PALAIS', 'Paris', '48.866151, 2.310352', '7.000', 'Escrime, Taekwondo'),
(7, 'ESPLANADES DES INVALIDES', 'Paris', '48.853821, 2.312310', '6.000', 'Tir à l\'arc'),
(8, 'PARC DES EXPOSITIONS DE LA PORTE DE VERSAILLES', 'Paris', '48.831924, 2.287044', '18.000', 'Handball, Tennis de table'),
(9, 'PARC DES PRINCES', 'Paris', '48.841782, 2.253188', '45.000', 'Football'),
(10, 'STADE JEAN BOUIN', 'Paris', '48.843285, 2.252861', '20.000', 'Rugby à VII'),
(11, 'ROLAND-GARROS', 'Paris', '48.845892, 2.253459', '15.000', 'Tennis'),
(12, 'BERCY - ACCOR HOTELS ARENA', 'Paris', '48.838587, 2.378284', '15.000', 'Basket, Judo'),
(13, 'STADE YVES-DU-MANOIR', 'Colombes', '48.929220, 2.247385', '10.000', 'Hockey sur gazon'),
(14, 'ZENITH', 'Paris', '48.894119, 2.393658', '6.000', 'Haltérophilie'),
(15, 'BASE NAUTIQUE', 'Vaires-sur-Marne', '48.864492, 2.634140', '12.000', 'Canoë-kayak, Aviron'),
(16, 'CHATEAU DE VERSAILLES', 'Versailles', '48.804779, 2.120699', '28.000', 'Equitation'),
(17, 'VELODROME NATIONAL', 'Saint-Quentin-en-Yvelines', '48.804779, 2.120699', '5.000', 'Cyclisme sur piste, pentahlon moderne, BMX'),
(18, 'ARENA 92', 'Nanterre', '48.895194, 2.229339', '23.500', 'Gymnastique, trampoline, GRS'),
(19, 'COLLINE D\'ELANCOURT', 'Elancourt', '48.788095, 1.968742', '22.000', 'VTT'),
(20, 'GOLF NATIONAL', 'Saint-Quentin-en-Yvelines', '48.750450, 2.078284', '35.000', 'Golf'),
(21, 'CENTRE AQUATIQUE', 'Aubervilliers', '48.895224, 2.384705', '15.000', 'Natation'),
(22, 'ARENA II BERCY', 'Paris', '48.836673, 2.378970', '7.000', 'Lutte, basket'),
(23, 'SALONS DES EXPOSITIONS', 'Le Bourget', '48.943924, 2.430166', '7.000', 'Volley, Badminton, Tir'),
(24, 'ESPLANADE DES INVALIDES', 'Paris', '48.855566, 2.312611', '8.000', 'Volley, Badminton, Tir');

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
('20200212100406', '2020-02-12 10:04:16'),
('20200220185507', '2020-02-20 18:55:25'),
('20200220190446', '2020-02-20 19:04:50'),
('20200222160857', '2020-02-22 16:09:07'),
('20200222181443', '2020-02-22 18:14:48'),
('20200222185335', '2020-02-22 18:53:39'),
('20200222193116', '2020-02-22 19:31:24'),
('20200223131845', '2020-02-23 13:18:57'),
('20200224092355', '2020-02-24 09:24:02');

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
  `tarif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monuments`
--

INSERT INTO `monuments` (`id`, `nom`, `rue`, `arrondissement`, `coordonne`, `tarif`) VALUES
(1, 'L’Arc de Triomphe', 'Avenue Charles de Gaulle', '8e', '48.873650, 2.295113', 'Payant'),
(2, 'Tour Eiffel', '5 Avenue Anatole France', '7e', '48.858288, 2.294458', 'Payant'),
(3, 'Basilique du Sacré-Cœur', '35 Rue du Chevalier de la Barre', '18e', '48.886619, 2.343104', 'Payant'),
(4, 'Musée de l’armée/ Invalides', '129 Rue de Grenelle', '7e', '48.855708, 2.312508', 'Payant'),
(5, 'Cathédrale Notre-Dame de Paris', '6 place du Parvis Notre-Dame', '4e', '48.849366, 2.351227', 'Gratuit'),
(6, 'Centre Pompidou', 'Place Georges Pompidou', '4e', '48.860585, 2.352213', 'Payant'),
(7, 'Le Louvre', '99 rue de Rivoli', '1er', '48.860549, 2.337577', 'Payant'),
(8, 'Le musée d’Orsay', '1 Rue de la Légion d’Honneur ', '7e', '48.859925, 2.326532', 'Payant'),
(9, 'Le palais Garnier', '8 Rue Scribe', '9e', '48.871927, 2.331022', 'Payant'),
(10, 'La place Vendôme', '356 rue Saint-Honoré', '1er', '48.867423, 2.329393', 'Gratuit'),
(11, 'Le Panthéon', '28 place du Panthéon', '5e', '48.846214, 2.346227', 'Payant'),
(12, 'Le Grand Palais', 'Avenue Winston-Churchill', '8e', '48.865952, 2.312485', 'Payant'),
(13, 'Tour Saint-Jaques', 'Square de la Tour Saint-Jacques', '1er', '48.858019, 2.348918', 'Payant'),
(14, 'La Conciergerie', '2 boulevard du Palais', '1er', '48.855990, 2.345480', 'Payant'),
(15, 'La chapelle expiatoire', '29 rue Pasquier', '8e', '48.873759, 2.323002', 'Payant'),
(16, 'Le Jardin Alpin', '57 Rue Cuvier ', '5e', '48.843699, 2.358088', 'Gratuit'),
(17, 'Jardin Japonais du Panthéon Bouddhique', '19 Avenue d’Iéna', '16e', '48.866318, 2.294546', 'Gratuit'),
(18, 'Catacombes', '1 Avenue du Colonel Henri Rol-Tanguy', '14e', '48.833804, 2.332401', 'Payant'),
(19, 'Mur des je t’aime', 'Place des Abbesses', '18e', '48.884796, 2.338564', 'Gratuit'),
(20, 'Statue de la Liberté', 'L’Ile aux Cygnes', '15e', '48.846328, 2.332899', 'Gratuit'),
(21, 'Arènes de Lutèce', '49 Rue Monge', '5e', '48.844999, 2.353183', 'Gratuit'),
(22, 'Musée de la Sculpture en Plein Air', 'Quai Saint Bernard', '5e', '48.847556, 2.360516', 'Gratuit');

-- --------------------------------------------------------

--
-- Table structure for table `musee`
--

CREATE TABLE `musee` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrondissement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordonne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `musee`
--

INSERT INTO `musee` (`id`, `nom`, `rue`, `arrondissement`, `coordonne`) VALUES
(1, 'Musée du Louvre', '99, rue de Rivoli', '1er', '48.860578, 2.337613'),
(2, 'Musée d’Orsay', '1, rue de la Légion d’Honneur', '7e', '48.859950, 2.326545'),
(3, 'Centre Georges Pompidou', 'Place Georges Pompidou', '4e', '48.860591, 2.352243'),
(4, 'Musée du Quai Branly', '37 quai Branly', '7e', '48.860880, 2.297901'),
(5, 'Le Grand Palais', '3, avenue du Général Eisenhower', '8e', '48.866040, 2.312478'),
(6, 'Le Petit Palais', 'Avenue Winston Churchill', '8e', '48.866040, 2.314593'),
(7, 'Palais de la Découverte', 'Avenue Franklin D. Roosevelt', '8e', '48.866186, 2.310805'),
(8, 'La Cité des Sciences et de l’Industrie', '30, avenue Corentin Cariou', '19e', '48.895576, 2.387908'),
(9, 'Le Muséum National d’Histoire Naturelle', '57, rue Cuvier', '5e', '48.843372, 2.363487'),
(10, 'Le Musée des Arts et des Métiers', '60, rue Réaumur', '3e', '48.866606, 2.355468'),
(11, 'Le Musée Picasso', '5, rue de Thorigny', '3e', '48.859846, 2.362344'),
(12, 'Le Musée de Montmartre', '12-14, rue Cortot', '18e', '48.887682, 2.340707'),
(13, 'Musée national des arts asiatiques', '6, place d’Iéna', '16e', '48.865044, 2.293776'),
(14, 'Le Musée de l’Orangerie', 'Jardin des Tuileries', '1er', '48.863760, 2.322758'),
(15, 'Le Musée d’Art Moderne', '11, Avenue du Président Wilson', '16e', '48.864331, 2.297821'),
(16, 'Le Musée du Moyen-Âge', '16, Place Paul Painlevé', '5e', '48.850465, 2.344086'),
(17, 'Le Musée des Arts Décoratifs', '107, rue de Rivoli', '1er', '48.863140, 2.333607'),
(18, 'Le Musée de l’Architecture et du Patrimoine', '1, Place du Trocadéro', '16e', '48.862651, 2.288668'),
(19, 'Le Musée Rodin', '77, Rue de Varenne', '7e', '48.855301, 2.315832'),
(21, 'La Fondation Louis Vuitton', '8, Avenue du Mahatma Gandhi', '16e', '48.876444, 2.263405');

-- --------------------------------------------------------

--
-- Table structure for table `parcs`
--

CREATE TABLE `parcs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordonne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parcs`
--

INSERT INTO `parcs` (`id`, `nom`, `coordonne`) VALUES
(1, 'Parc des Buttes-Chaumont', '48.879877, 2.379950'),
(2, 'Jardin du Palais Royal', '48.864749, 2.337686'),
(3, 'Parc Monceau', '48.880050, 2.308955'),
(4, 'Jardin du musée Rodin', '48.855165, 2.316007'),
(5, 'Jardin des Plantes', '48.842368, 2.359585'),
(6, 'Jardin de l\'hôtel de Sens', '48.853778, 2.358096'),
(7, 'Parc de Belleville', '48.870389, 2.385179'),
(9, 'Parc Floral de Vincennes', '48.839886, 2.435894'),
(10, 'Le Jardin des Serres d\'Auteuil', '48.846247, 2.252649'),
(11, 'Jardin des Rosiers - Joseph-Migneret', '48.857579, 2.360084'),
(12, 'Parc Montsouris', '48.821250, 2.337475'),
(13, 'Jardin des Tuileries', '48.863378, 2.327366'),
(14, 'Arboretum de Paris', '48.822211, 2.458773'),
(15, 'Parc André Citroën', '48.840321, 2.276791'),
(16, 'Bois de Vincennes', '48.827290, 2.433054'),
(17, 'Parc de Bagatelle', '48.872276, 2.250274'),
(18, 'Jardin d\'acclimatation', '48.877890, 2.268178'),
(19, 'Parc de la Villette', '48.891591, 2.387256'),
(20, 'Place des Vosges', '48.856002, 2.365716'),
(21, 'Parc Clichy-Batignolles - Martin-Luther-King', '48.891167, 2.314851'),
(22, 'Jardin du Luxembourg', '48.844950, 2.336989'),
(23, 'Jardin du Panthéon bouddhique du musée Guimet', '48.867807, 2.294674'),
(24, 'Jardin de l\'hôtel de Sully', '48.854940, 2.364048'),
(25, 'Bois de Boulogne', '48.858940, 2.263117'),
(26, 'Domaine National de Saint-Cloud', '48.839973, 2.217462'),
(27, 'Parc de la Butte-du-Chapeau-Rouge', '48.882338, 2.399667'),
(29, 'Parc de Bercy', '48.836994, 2.381467'),
(30, 'La Coulée verte', '48.849446, 2.371489'),
(31, 'Parc Georges Brassens', '48.831457, 2.301183');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bibliotheque`
--
ALTER TABLE `bibliotheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cinemas`
--
ALTER TABLE `cinemas`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bibliotheque`
--
ALTER TABLE `bibliotheque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cinemas`
--
ALTER TABLE `cinemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
