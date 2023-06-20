-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2023 at 12:03 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `transport`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `marque` varchar(22) NOT NULL,
  `modele` varchar(22) NOT NULL,
  `annee` int(8) NOT NULL,
  `nbreCylindre` int(11) NOT NULL,
  `typeTransmission` enum('Automatic','Number') NOT NULL,
  `typeEssence` enum('Gasoline','Diesel') NOT NULL,
  `plaqueImma` varchar(22) NOT NULL,
  `compagnie` varchar(22) NOT NULL,
  `fournisseur` varchar(22) NOT NULL,
  `prrixAchat` double NOT NULL,
  `dureeDeGarantie` int(11) NOT NULL,
  `sits` int(11) NOT NULL,
  `statut` enum('REPARATION','AVAILABLE') NOT NULL DEFAULT 'AVAILABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `marque`, `modele`, `annee`, `nbreCylindre`, `typeTransmission`, `typeEssence`, `plaqueImma`, `compagnie`, `fournisseur`, `prrixAchat`, `dureeDeGarantie`, `sits`, `statut`) VALUES
(1006, 'Toyota', 'RAV4', 2021, 7, 'Automatic', 'Diesel', 'TP901234', 'BlueSky', 'Hinoto S.A', 345000, 8, 46, 'AVAILABLE'),
(1007, 'Lexus', 'TRAVEL', 2022, 9, 'Number', 'Diesel', 'TP860912', 'SansSouci', 'Auto-plaza', 89650, 8, 32, 'AVAILABLE'),
(1008, 'Isuzu', 'SAHARA', 2020, 6, 'Number', 'Gasoline', 'TP9802345', 'Transporteur', 'InivAuto', 678234, 4, 26, 'AVAILABLE'),
(1009, 'Jeep', 'WRANGLER', 2021, 7, 'Automatic', 'Gasoline', 'DD092345', 'SNCRF', 'Safari motors', 90453, 8, 19, 'AVAILABLE'),
(1010, 'Montero', 'UNLIMITED', 2019, 6, 'Number', 'Diesel', 'TP179823', 'Remito', 'Ameca-rotors', 38967, 6, 28, 'AVAILABLE');

-- --------------------------------------------------------

--
-- Table structure for table `chauffeur`
--

CREATE TABLE `chauffeur` (
  `id` int(11) NOT NULL,
  `nom` varchar(22) NOT NULL,
  `prenom` varchar(22) NOT NULL,
  `sexe` enum('Masculin','Feminin') NOT NULL,
  `adresse` varchar(22) NOT NULL,
  `telephone` varchar(22) NOT NULL,
  `numeroLicence` varchar(22) NOT NULL,
  `nif` varchar(22) NOT NULL,
  `cin` varchar(22) NOT NULL,
  `salaireParVoyage` double NOT NULL,
  `dateEmbauche` varchar(200) NOT NULL,
  `trajetAffecte` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chauffeur`
--

INSERT INTO `chauffeur` (`id`, `nom`, `prenom`, `sexe`, `adresse`, `telephone`, `numeroLicence`, `nif`, `cin`, `salaireParVoyage`, `dateEmbauche`, `trajetAffecte`) VALUES
(23, 'Pierre', 'Jaures', 'Masculin', '23_bienac_23', '50949491835', '123454321', '123454321234121212', '', 73.5, '2018/12/04', 'Limonade-Dubout'),
(24, 'Anezier', 'Wilguens', 'Masculin', '23_bienac_23', '50949491835', '123454321', '123454321234121212', '', 12.5, '2018/12/04', 'Limonade-Dubout'),
(25, 'Joseph', 'Michel-Ange', 'Masculin', '23_bienac_23', '50949491835', '123454321', '123454321234121212', '', 42.5, '2018/12/04', 'Limonade-Dubout'),
(26, 'Jean', 'Gaules', 'Masculin', '23_bienac_23', '50949491835', '123454321', '123454321234121212', '', 12.5, '2018/12/04', 'Limonade-Dubout'),
(27, 'Pierre', 'Monhel', 'Masculin', '23_bienac_23', '50949491835', '123454321', '123454321234121212', '', 32.5, '2018/12/04', 'Limonade-Dubout'),
(28, 'Fanes', 'Fito', 'Masculin', '23_bienac_23', '50949491835', '123454321', '123454321234121212', '', 12.5, '2018/12/04', 'Limonade-Dubout'),
(29, 'Pierre', 'Evena', 'Feminin', '23_bienac_23', '50949491835', '123454321', '123454321234121212', '', 72.5, '2018/12/04', 'Limonade-Dubout'),
(30, 'Pierre', 'Monhel', 'Masculin', '23_bienac_23', '50949491835', '123454321', '123454321234121212', '', 12.5, '2018/12/04', 'Limonade-Dubout'),
(31, 'Pierre', 'Florita', 'Feminin', '23_bienac_23', '50949491835', '123454321', '123454321234121212', '', 62.5, '2018/12/04', 'Limonade-Dubout'),
(32, 'Destin', 'Monine', 'Feminin', '23_bienac_23', '50949491835', '123454321', '123454321234121212', '', 12.5, '2018/12/04', 'Limonade-Dubout');

-- --------------------------------------------------------

--
-- Table structure for table `colis`
--

CREATE TABLE `colis` (
  `id` int(11) NOT NULL,
  `expediteur` varchar(40) NOT NULL,
  `destinateur` varchar(40) NOT NULL,
  `teldestinateur` varchar(15) NOT NULL,
  `adressedestinateur` varchar(40) NOT NULL,
  `montantpaye` double NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `colis`
--

INSERT INTO `colis` (`id`, `expediteur`, `destinateur`, `teldestinateur`, `adressedestinateur`, `montantpaye`, `description`) VALUES
(1, 'Vial Lenz', 'Gregoire Marley', '12334556666', '1701 Panamerican st67 ave12', 610, 'Box with coffee creamer');

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `Id` int(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `boarding` enum('With reservation','Without reservation') NOT NULL,
  `sit` int(50) NOT NULL,
  `travelId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `passengers`
--
DELIMITER $$
CREATE TRIGGER `allocation_trigger` BEFORE INSERT ON `passengers` FOR EACH ROW BEGIN
DECLARE max_val INT(11);
SELECT MAX(sit) INTO max_val FROM passengers WHERE travelId = NEW.travelId;
IF max_val IS NULL THEN
SET max_val = 100;
END IF;
SET NEW.sit= max_val +1;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `nonclient` varchar(22) NOT NULL,
  `prenomclient` varchar(22) NOT NULL,
  `description` varchar(100) NOT NULL,
  `boardingpass` enum('check','uncheck') NOT NULL DEFAULT 'uncheck',
  `travelId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `nonclient`, `prenomclient`, `description`, `boardingpass`, `travelId`) VALUES
(1, 'Mac-Athur', 'Wensley', '', 'uncheck', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trajet`
--

CREATE TABLE `trajet` (
  `id` int(11) NOT NULL,
  `pointdepart` varchar(22) NOT NULL,
  `pointarrive` varchar(22) NOT NULL,
  `heuredepart` varchar(10) NOT NULL,
  `heurearrive` varchar(18) NOT NULL,
  `prixtrajet` double NOT NULL,
  `descriptiontrajet` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trajet`
--

INSERT INTO `trajet` (`id`, `pointdepart`, `pointarrive`, `heuredepart`, `heurearrive`, `prixtrajet`, `descriptiontrajet`) VALUES
(23, 'Cap-Haitien', 'Limbe', '08:00', '11:00', 350, 'Road extremely muddy'),
(24, 'Saint-Raphael', 'Limbe', '12:00', '14:00', 600, 'Safe road'),
(26, 'Cayes', 'Jacmel', '13:52', '18:52', 800, 'Funny landscape view'),
(27, 'Belle-Anse', 'Bourcan-Belier', '08:45', '11:54', 178, 'Road extremely dangerous'),
(28, 'Cap-Haitien', 'Milot', '08:59', '09:54', 50, 'This road is safe and extremely shorts');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `voyage`
--

CREATE TABLE `voyage` (
  `id` int(11) NOT NULL,
  `trajetchoisi` varchar(40) NOT NULL,
  `heurevoyage` varchar(18) NOT NULL,
  `datevoyage` varchar(18) NOT NULL,
  `bus` varchar(50) NOT NULL,
  `passengers` varchar(250) DEFAULT '',
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voyage`
--

INSERT INTO `voyage` (`id`, `trajetchoisi`, `heurevoyage`, `datevoyage`, `bus`, `passengers`, `description`) VALUES
(1, 'Cap-Haitien - Milot/08:59', '08:59', '8/3/2024', '1009', '', 'no description');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chauffeur`
--
ALTER TABLE `chauffeur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colis`
--
ALTER TABLE `colis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trajet`
--
ALTER TABLE `trajet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT for table `chauffeur`
--
ALTER TABLE `chauffeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `colis`
--
ALTER TABLE `colis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trajet`
--
ALTER TABLE `trajet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
