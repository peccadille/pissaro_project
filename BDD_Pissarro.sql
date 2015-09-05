-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: mysql1.alwaysdata.com
-- Generation Time: Sep 05, 2015 at 03:02 AM
-- Server version: 5.1.66-0+squeeze1
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pecccadille_pissarro`
--

-- --------------------------------------------------------

--
-- Table structure for table `artwork`
--

CREATE TABLE IF NOT EXISTS `artwork` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` text NOT NULL,
  `title` text NOT NULL,
  `date` date NOT NULL,
  `medium` text NOT NULL,
  `collection` text NOT NULL,
  `cat_rais` text NOT NULL,
  `photo` text NOT NULL,
  `text` text NOT NULL,
  `weather` text NOT NULL,
  `time` text NOT NULL,
  `stay_id` int(11) NOT NULL,
  `pov_id` int(11) NOT NULL,
  `azimut` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='table pour les oeuvres' AUTO_INCREMENT=146 ;

--
-- Dumping data for table `artwork`
--

INSERT INTO `artwork` (`id`, `artist`, `title`, `date`, `medium`, `collection`, `cat_rais`, `photo`, `text`, `weather`, `time`, `stay_id`, `pov_id`, `azimut`, `place_id`) VALUES
(79, 'Pissarro', 'Environs de Rouen', '1883-01-01', 'huile sur toile', 'collection particulière', '722', '', '', 'weather00', 'time00', 2, 0, 0, 0),
(80, 'Pissarro', 'Environs de Rouen', '1883-01-01', 'huile sur toile', 'collection particulière', '723', '', '', 'weather00', 'time00', 2, 0, 0, 0),
(81, 'Pissarro', 'Place Lafayette, Rouen', '1883-01-01', 'huile sur toile', 'Londres, Courtauld Institute Gallerie', '724', 'http://pecccadille.alwaysdata.net/Test_Pissarro/724_1883.jpg', '', 'weather01', 'time02', 2, 5, 0, 0),
(82, 'Pissarro', 'Cours-la-Reine, Rouen, après-midi de soleil', '1883-01-01', 'huile sur toile', 'collection particulière', '725', 'http://pecccadille.alwaysdata.net/Test_Pissarro/725_1883.jpg', '', 'weather01', 'time02', 2, 6, 0, 0),
(83, 'Pissarro', 'Cours-la-Reine, Rouen, soleil couchant', '1883-01-01', 'huile sur toile', 'collection particulière', '726', '', '', 'weather02', 'time03', 2, 6, 0, 0),
(84, 'Pissarro', 'Quai de Paris et pont Corneille à Rouen, soleil', '1883-01-01', 'huile sur toile', 'Phiadelphia Museum of Art', '727', 'http://pecccadille.alwaysdata.net/Test_Pissarro/727_1883.jpg', '', 'weather01', 'time00', 2, 1, 0, 0),
(85, 'Pissarro', 'Le Pont Corneille et les péniches', '1883-01-01', 'huile sur toile', 'The Colombus Museum of Art', '728', 'http://pecccadille.alwaysdata.net/Test_Pissarro/728_1883.jpg', '', 'weather01', 'time00', 2, 1, 0, 0),
(86, 'Pissarro', 'L''île Lacroix et le pont Corneille à Rouen, temps gris', '1883-01-01', 'huile sur toile', 'collection particulière', '729', 'http://pecccadille.alwaysdata.net/Test_Pissarro/729_1883.jpg', '', 'weather04', 'time00', 2, 1, 0, 0),
(87, 'Pissarro', 'Vue de l''île Lacroix et du Pont Corneille, temps gris lumineux', '1883-01-01', 'huile sur toile', 'The Worcester Art Museum', '730', 'http://pecccadille.alwaysdata.net/Test_Pissarro/730_1883.jpg', '', 'weather04', 'time00', 2, 1, 0, 0),
(88, 'Pissarro', 'Place de la république à rouen, avec tramway', '1883-01-01', 'huile sur toile', 'Amsterdam, Noortman Master Painting', '731', 'http://pecccadille.alwaysdata.net/Test_Pissarro/731_1883.jpg', '', 'weather00', 'time00', 2, 2, 0, 0),
(89, 'Pissarro', 'Place de la République, à Rouen, pluie', '1883-01-01', 'huile sur toile', 'collection particulière', '732', '', '', 'weather05', 'time00', 2, 2, 0, 0),
(90, 'Pissarro', 'La Seine à Rouen', '1883-01-01', 'huile sur toile', 'collection particulière', '733', 'http://pecccadille.alwaysdata.net/Test_Pissarro/733_1883.jpg', '', 'weather01', 'time00', 2, 0, 0, 0),
(91, 'Pissarro', 'Bateau à vapeur, Rouen', '1883-01-01', 'huile sur toile', 'collection particulière', '734', '', '', 'weather00', 'time00', 2, 0, 0, 0),
(92, 'Pissarro', 'La côte Sainte-Catherine à Rouen', '1883-01-01', 'huile sur toile', 'collection particulière', '735', 'http://pecccadille.alwaysdata.net/Test_Pissarro/735_1883.jpg', '', 'weather01', 'time00', 2, 1, 0, 0),
(93, 'Pissarro', 'La cathédrale Notre-Dame, Rouen', '1883-01-01', 'huile sur toile', 'collection particulière', '736', '', '', 'weather00', 'time00', 2, 0, 0, 0),
(94, 'Pissarro', 'La Seine à Rouen, l''île Lacroix, effet de brouillard', '0000-00-00', 'huile sur toile', 'Phiadelphia Museum of Art', '855', '', '', 'weather03', 'time00', 2, 0, 0, 0),
(95, 'Pissarro', 'Les toits du vieux Rouen, temps gris, la cathédrale', '1896-01-01', 'huile sur toile', 'The Toledo Museum of Art', '1114', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1114_1896.jpg', '', 'weather04', 'time00', 1, 0, 0, 0),
(96, 'Pissarro', 'Les toits du vieux Rouen, soleil', '1896-01-01', 'huile sur toile', 'collection particulière', '1115', '', '', 'weather01', 'time00', 1, 0, 0, 0),
(97, 'Pissarro', 'Le pont Boieldieu à Rouen, temps mouillé', '1896-01-01', 'huile sur toile', 'Toronto, Art Gallery of Ontario', '1116', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1116_1896.jpg', '', 'weather05', 'midi?', 1, 4, 0, 0),
(98, 'Pissarro', 'Le pont Boieldieu à Rouen, soleil couchant', '1896-01-01', 'huile sur toile', 'Birmingham, Museum and Art Gallery', '1117', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1117_1896.jpg', '', 'weather02', 'time03', 1, 4, 0, 0),
(99, 'Pissarro', 'Le Pont Boieldieu à Rouen, soleil couchant, fumées', '1896-01-01', 'huile sur toile', 'Rouen, Musée des Beaux-Arts, dépôt du musée d''Orsay', '1118', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1118_1896.jpg', '', 'weather02', 'time03', 1, 4, 0, 0),
(100, 'Pissarro', 'Le pont Boieldieu à Rouen, brouillard', '1896-01-01', 'huile sur toile', 'Localisation inconnue', '1119', '', '', 'weather03', 'time00', 1, 4, 0, 0),
(101, 'Pissarro', 'Crue de la Seine, pont Boieldieu, Rouen', '1896-01-01', 'huile sur toile', 'collection particulière', '1120', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1120_1896.jpg', '', 'weather00', 'time00', 1, 4, 0, 0),
(102, 'Pissarro', 'La Seine à Rouen, pont Boieldieu, esquisse', '1896-01-01', 'huile sur toile', 'collection particulière', '1121', '', '', 'weather00', 'time00', 1, 4, 0, 0),
(103, 'Pissarro', 'La Seine à Rouen, Saint-Sever', '1896-01-01', 'huile sur toile', 'Musée d''Orsay ', '1122', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1122_1896.jpg', '', 'weather00', 'time00', 1, 3, 0, 0),
(104, 'Pissarro', 'La Seine à Rouen, Saint-Sever, fumées', '1896-01-01', 'huile sur toile', 'New-York, The Metropolitan Museum of Art', '1123', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1123_1896.jpg', '', 'weather04', 'time00', 1, 3, 0, 0),
(105, 'Pissarro', 'Le pont Corneille, Rouen par temps gris', '1896-01-01', 'huile sur toile', 'Ottawa, National Gallery of Canada', '1124', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1124_1896.jpg', '', 'weather04', 'time00', 1, 4, 0, 0),
(106, 'Pissarro', 'Le pont Corneille à Rouen, effet du matin', '1896-01-01', 'huile sur toile', 'collection particulière', '1125', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1125_1896.jpg', '', 'weather01', 'time01', 1, 4, 0, 0),
(107, 'Pissarro', 'Le Pont Corneille et faubourg Saint-Sever, à Rouen, temps couvert', '1896-01-01', 'huile sur toile', 'collection particulière', '1126', '', '', 'weather04', 'time00', 1, 4, 0, 0),
(108, 'Pissarro', 'Le pont Corneille à Rouen, brume du matin', '1896-01-01', 'huile sur toile', 'galerie didier Imbert, Paris', '1127', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1127_1896.jpg', '', 'weather03', 'time01', 1, 4, 0, 0),
(109, 'Pissarro', 'Le pont Corneille à Rouen, effet de brouillard', '1896-01-01', 'huile sur toile', 'Localisation inconnue', '1128', '', '', 'weather03', 'time00', 1, 4, 0, 0),
(110, 'Pissarro', 'Les ponts Boieldieu et Corneille à Rouen, soleil', '1896-01-01', 'huile sur toile', 'collection particulière', '1138', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1138_1896.jpg', '', 'weather01', 'time02', 4, 3, 0, 0),
(111, 'Pissarro', 'Le pont Boieldieu et Corneille, Rouen, effet de pluie', '1896-01-01', 'huile sur toile', 'Karlsruhe, Staatliche Kunsthalle', '1139', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1139_1896.jpg', '', 'weather05', 'time00', 4, 3, 0, 0),
(112, 'Pissarro', 'Le pont Boieldieu, Rouen, matin, temps mouillé', '1896-01-01', 'huile sur toile', 'New-York, The Metropolitan Museum of Art', '1140', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1140_1896.jpg', '', 'weather05', 'time01', 4, 3, 0, 0),
(113, 'Pissarro', 'Le Pont Boieldieu et le quartier Saint Sever, Rouen', '1896-01-01', 'huile sur toile', 'Pittsburgh, Carnegie museum of Art', '1141', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1141_1896.jpg', '', 'weather01', 'time02', 4, 3, 0, 0),
(114, 'Pissarro', 'Le pont Boieldieu à Rouen, effet de brume', '1896-01-01', 'huile sur toile', 'collection particulière', '1142', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1142_1896.jpg', '', 'weather03', 'time00', 4, 3, 0, 0),
(115, 'Pissarro', 'La Gare d''Orléans, Saint-Severs, Rouen, effet de brume,', '1896-01-01', 'huile sur toile', 'Raleigh, North Carolina Museum of Art', '1143', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1143_1896.jpg', '', 'weather03', 'time00', 4, 3, 0, 0),
(116, 'Pissarro', 'La gare d''Orléans, Saint-Sever, Rouen', '1896-01-01', 'huile sur toile', 'collection particulière', '1144', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1144_1896.jpg', '', 'weather01', 'matin ? ', 4, 3, 0, 0),
(117, 'Pissarro', 'Les Docks, Saint-Sever, Rouen', '1896-01-01', 'huile sur toile', 'collection particulière', '1145', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1145_1896.jpg', '', 'weather01', 'matin ? ', 4, 3, 0, 0),
(118, 'Pissarro', 'Quai de la Bourse à Rouen, soleil couchant', '1896-01-01', 'huile sur toile', 'collection particulière', '1146', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1146_1896.jpg', '', 'weather02', 'time03', 4, 3, 0, 0),
(119, 'Pissarro', 'Vue sur le quai Cavalier-de-La-Salle, Rouen', '1896-01-01', 'huile sur toile', 'collection particulière', '1147', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1147_1896.jpg', '', 'weather01', 'matin ? ', 4, 3, 0, 0),
(120, 'Pissarro', 'Déchargement de bois, quai de la Bourse à Rouen, soleil couchant', '1896-01-01', 'huile sur toile', 'collection particulière', '1148', '', '', 'weather02', 'time03', 4, 3, 0, 0),
(121, 'Pissarro', 'Quai de la Bourse, Rouen, soleil voilé', '1896-01-01', 'huile sur toile', 'Glasgow, The Hunterian Art Gallery', '1149', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1149_1896.jpg', '', 'weather01', 'time00', 4, 3, 0, 0),
(122, 'Pissarro', 'Quai de la Bourse, Rouen, fin de journée', '1896-01-01', 'huile sur toile', 'collection particulière', '1150', '', '', 'weather00', 'time03', 4, 3, 0, 0),
(123, 'Pissarro', 'Déchargement de tonneaux, quai de la Bourse, Rouen, Temps mouillé', '1896-01-01', 'huile sur toile', 'collection particulière', '1151', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1151_1896.jpg', '', 'weather05', 'time00', 4, 3, 0, 0),
(124, 'Pissarro', 'Déchargement de tonneaux, quai de la Bourse, Rouen, effet de pluie', '1896-01-01', 'huile sur toile', 'collection particulière', '1152', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1152_1896.jpg', '', 'weather05', 'time00', 4, 3, 0, 0),
(125, 'Pissarro', 'Le Cours-la-Reine, la cathédrale Notre-Dame, Rouen', '1898-01-01', 'huile sur toile', 'collection particulière', '1218', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1218_1898.jpg', '', 'weather01', 'time00', 5, 6, 0, 0),
(126, 'Pissarro', 'Le cours de la Reine à Rouen, matin, soleil', '1898-01-01', 'huile sur toile', 'collection particulière', '1219', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1219_1898.jpg', '', 'weather01', 'time01', 5, 6, 0, 0),
(127, 'Pissarro', 'Le Cours-la-Reine, à Rouen, temps gris', '1898-01-01', 'huile sur toile', 'collection particulière', '1220', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1220_1898.jpg', '', 'weather04', 'time00', 5, 6, 0, 0),
(128, 'Pissarro', 'Rue de l''Epicerie Rouen, effet de Soleil', '1898-01-01', 'huile sur toile', 'Metropolitan Museum of Art, New Yorjk', '1221', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1221_1898.jpg', '', 'weather01', 'time01', 5, 7, 0, 0),
(129, 'Pissarro', 'La Rue de l''Epicerie à Rouen, matin, temps mouillé', '1898-01-01', 'huile sur toile', 'Yamagata Yamagato Museum', '1222', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1222_1898.jpg', '', 'weather05', 'time01', 5, 7, 0, 0),
(130, 'Pissarro', 'La rue de l''Epicerie à Rouen, fin d''après midi', '1898-01-01', 'huile sur toile', 'Amsterdam, Van Gogh Museum', '1223', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1223_1898.jpg', '', 'weather01', 'time03', 5, 7, 0, 0),
(131, 'Pissarro', 'Les ponts Boieldieu et Corneille à Rouen', '1898-01-01', 'huile sur toile', 'Collection particulière', '1224', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1224_1898.jpg', '', 'weather01', 'time01', 5, 3, 0, 0),
(132, 'Pissarro', 'Le Pont Boieldieu, Rouen, effet de brouillard', '1898-01-01', 'huile sur toile', 'collection particulière', '1225', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1225_1898.jpg', '', 'weather03', 'time00', 5, 3, 0, 0),
(133, 'Pissarro', 'Le Pont Boieldieu et la gare d''Orléans, Rouen, matin, cinq heures', '1898-01-01', 'huile sur toile', 'collection particulière', '1226', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1226_1898.jpg', '', 'weather01', 'time01', 5, 3, 0, 0),
(134, 'Pissarro', 'Le pont Boieldieu et la gare d''Orléans, Rouen, soleil', '1898-01-01', 'huile sur toile', 'collection particulière', '1227', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1227_1898.jpg', '', 'weather01', 'time02', 5, 3, 0, 0),
(135, 'Pissarro', 'Le Pont Boieldieu et la gare d''Orléans, Rouen, matin, soleil', '1898-01-01', 'huile sur toile', 'Honolulu Academy of Arts', '1228', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1228_1898.jpg', '', 'weather01', 'time01', 5, 3, 0, 0),
(136, 'Pissarro', 'Vue sur la gare d''Orléans, saint Sever, Rouen ', '1898-01-01', 'huile sur toile', 'collection particulière', '1229', '', '', 'weather00', 'time00', 5, 3, 0, 0),
(137, 'Pissarro', 'Quai de la bourse, Rouen, après-midi', '1898-01-01', 'huile sur toile', 'Berne, Kunstmuseum', '1230', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1230_1898.jpg', '', 'weather02', 'time02', 5, 3, 0, 0),
(138, 'Pissarro', 'Les docks, Saint-Sever, Rouen, fumées', '1898-01-01', 'huile sur toile', 'collection particulière', '1231', '', '', 'weather00', 'time00', 5, 3, 0, 0),
(139, 'Pissarro', 'Déchargement de bois, quai de la Bourse, Rouen, temps lumineux', '1898-01-01', 'huile sur toile', 'Williamstown, Sterling and Francine Clark Art Institute', '1232', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1232_1898.jpg', '', 'weather01', 'time00', 5, 3, 0, 0),
(140, 'Pissarro', 'Quai de la Bourse, déchargeur de bois', '1898-01-01', 'huile sur toile', 'Montréal, musée des Beaux-Arts', '1233', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1233_1898.jpg', '', 'weather01', 'time00', 5, 3, 0, 0),
(141, 'Pissarro', 'Quai de la Bourse, Rouen, pluie', '1898-01-01', 'huile sur toile', 'Dépôt au musée d''art de Genève', '1234', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1234_1898.jpg', '', 'weather05', 'time00', 5, 3, 0, 0),
(142, 'Pissarro', 'Quai de la Bourse, Rouen, soleil couchant', '1898-01-01', 'huile sur toile', 'collection linda Gale Sampson', '1235', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1235_1898.jpg', '', 'weather02', 'time03', 5, 3, 0, 0),
(143, 'Pissarro', 'Quai de la Bourse, Rouen, soleil couchant', '1898-01-01', 'huile sur toile', 'National Museum of Wales Cardiff', '1236', '', '', 'weather02', 'time03', 5, 3, 0, 0),
(144, 'Pissarro', 'Déchargement de bois, quai de la Bourse, coucher du soleil', '1898-01-01', 'huile sur toile', 'collection particulière', '1237', 'http://pecccadille.alwaysdata.net/Test_Pissarro/1237_1898.jpg', '', 'weather02', 'time03', 5, 3, 0, 0),
(145, 'Pissarro', 'Seine à Rouen', '0000-00-00', 'huile sur toile', 'collection particulière', '1383', '', '', 'weather00', 'time00', 5, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `photo` text NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `artwork_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pov`
--

CREATE TABLE IF NOT EXISTS `pov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `photo` text NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pov`
--

INSERT INTO `pov` (`id`, `title`, `text`, `photo`, `lat`, `lng`) VALUES
(1, 'Berge de Seine, vers le Pré au loup', 'Text déjà rédigé', 'photo d''époque à ajouter', 49.4347, 1.10335),
(2, 'Hotel du dauphin et d''espagne', 'Texte écrit à ajouter', 'Trouver une photo', 49.4374, 1.09651),
(3, 'Hôtel d''Angleterre ', 'Ajouter texte sur l''hôtel', 'trouver photo', 49.4386, 1.09049),
(4, 'Hôtel de Paris ', 'texte à écrire', 'photo à trouver', 49.4379, 1.09324),
(5, 'Place Lafayette', '', '', 49.4348, 1.09323),
(6, 'Cours-la-Reine', '', '', 49.4297, 1.10101),
(7, 'Halle aux toiles', '', '', 49.438, 1.09517);

-- --------------------------------------------------------

--
-- Table structure for table `stay`
--

CREATE TABLE IF NOT EXISTS `stay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` text NOT NULL,
  `year` text NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `stay`
--

INSERT INTO `stay` (`id`, `key`, `year`, `title`, `text`) VALUES
(1, 'stay02', '1896', 'Second séjour : janvier - mars 1896', 'Texte écrit à ajouter'),
(2, 'stay01', '1883', 'Premier séjour : 1883', 'A l''automne 1883, Pissarro effectue sur premier séjour rouennais. Pourquoi Rouen ? Probablement le peintre Claude Monet, dont le frère possède des usines à Rouen, lui a conseillé la ville. Il y peindra lui-même beaucoup. La présence d''une bourgeoisie florissante, potentielle clientèle, attire alors les artistes dans la capitale normande : à la suite de Pissarro, Gauguin y séjournera à son tour. \r\nA Rouen, Pissarro, toujours à court d''argent, trouve des conditions d''hébergement facilitées. Le pâtissier parisien Eugène Mürer, homme d''affaire et collectionneur d''art moderne, possède un hôtel place de la République et propose au peintre une location à prix d''ami. \r\n\r\nPissarro arrive à Rouen au début du mois d''octobre. Il y restera jusqu''au 28 novembre et peindra une quinzaine de tableaux, dont près de la moitié seront achetés par son marchand, Durand Ruel. \r\n\r\nCe premier séjour, comme les suivants est documentés par les nombreuses lettres que Pissarro adresse à ses proches, et notamment à Lucien, son fils ainé. \r\n\r\nDès le 11 octobre, il est au travail. Il a installé son chevalet en plein air, en retrait de la foule grouillante des quais. Dans une lettre (perdue), Pissarro racontait à Gauguin l''attroupement qui s''était formé quand il avait voulu s''installer pour peindre en ville. C''est donc sur la berge en aval du pont Corneille, en contre-bas du pré au Loup et de l''église Saint Paul qu''il se place : l''environnement est plus calme et propice à son activité. \r\n\r\nA cet emplacement, il réalise six près de six tableaux, la plupart regardant vers la ville, et un regardant vers la colline Sainte Cathérine. Durant ce même séjour, il s''aventure sur la rive gauche et peint la place Lafayette et le Cours-La-Reine.\r\n\r\n Mais le temps ne lui est pas toujours favorable : à Rouen, la météo est changeante et Pissarro "bûche beaucoup, du moins autant que le temps [lui] permet". Devant composer avec les caprices du ciel, Pissarro mène de front ses différents tableaux et se déplace selon les heures du jour. Le 19 octobre, il a déjà "9 toiles en train" \r\n\r\n"Citation de la lettre du 19 octobre 1883" \r\n\r\nPissarro aime également se promener dans la vieille ville médiévale. Il y réalise un certain nombre de croquis, qui lui inspireront, dans les années qui suivent un ensemble d''eau-fortes, gravées de mémoire. \r\n\r\nLes tableaux de 1883 se distinguent de ceux réalisés durant les séjours de 1896 et 1898 par leur caractère plus champêtre. Pissarro se montre encore timide face au sujet urbain. Treize ans plus tard, c''est bien l''agitation du port industriel qui l''attirera dans la capitale normande, tandis que sa maladie des yeux lui interdira de peindre en plein air : tous ses tableaux ou presque seront réalisés depuis la fenêtre de sa chambre d''hôtel'),
(4, 'stay03', '1896', 'Troisième séjour : septembre-novembre 1896', 'texte écrit à ajouter'),
(5, 'stay04', '1898', 'Quatrième et ultime séjour : 1898', 'Texte à finir');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
