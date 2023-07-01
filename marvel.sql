-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 01 juil. 2023 à 11:29
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `id` int(11) NOT NULL,
  `nom` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`id`, `nom`) VALUES
(1, 'Avengers'),
(2, 'Les 4 fantastiques');

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `nom` varchar(225) NOT NULL,
  `description` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `equipe_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom`, `description`, `photo`, `equipe_id`) VALUES
(1, 'Spiderman', 'Peter Parker, orphelin à l\'âge de six ans, est élevé par son oncle et sa tante, Benjamin et May Parker. Peter est mordu par une araignée radioactive à la suite d\'une expérience. Il va alors développer des super-pouvoirs, dont une force surhumaine, une grande agilité, et la capacité de \"coller\" aux parois.\r\n', 'https://upload.wikimedia.org/wikipedia/en/2/21/Web_of_Spider-Man_Vol_1_129-1.png', 'Avengers'),
(13, '', NULL, NULL, NULL),
(14, '', NULL, NULL, NULL),
(16, 'Spiderman', 'Peter Parker !', 'https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcTDaXXqVAgsvQXvzv-q_c8np9EJtzBQamO5xT3mIAwKYWtPCCEZJk6VdLzyNQ5VKJtv', NULL),
(17, 'Spiderman', 'Peter Parker, orphelin à l\'âge de six ans, est élevé par son oncle et sa tante, Benjamin et May Parker. Peter est mordu par une araignée radioactive à la suite d\'une expérience. Il va alors développer des super-pouvoirs, dont une force surhumaine, une grande agilité, et la capacité de \"coller\" aux parois.', 'https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcTDaXXqVAgsvQXvzv-q_c8np9EJtzBQamO5xT3mIAwKYWtPCCEZJk6VdLzyNQ5VKJtv', '1'),
(19, 'Hulk', 'Outre sa force extraordinaire, Hulk possède une résistance incroyable. Sa peau verte, renforcée par les rayons gamma et qui lui ont donné sa couleur, lui permet de résister à des chocs et des coups extrêmement violents.', 'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/large/800/The-Hulk.The-Incredible-Hulk.webp', '1'),
(20, 'Batman', 'Batman est un superhéros : c\'est un personnage des bandes dessinées américaines qui lutte pour le Bien et la justice. La vraie identité de Batman est Bruce Wayne, un riche héritier. Il habite à Gotham, et souhaite combattre la criminalité.', 'https://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQavfSfyOVYO54wkFq1cV0yguHfZSUiYwmiGvtdlDDav_wKZYsyy9NPBk952R2zXNSs', '1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
