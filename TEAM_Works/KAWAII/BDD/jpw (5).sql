-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 27 fév. 2019 à 14:11
-- Version du serveur :  8.0.13
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `jpw`
--

-- --------------------------------------------------------

--
-- Structure de la table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `postCode` int(5) NOT NULL,
  `city` varchar(75) NOT NULL,
  `country` varchar(70) NOT NULL,
  `complement` varchar(140) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `addresses`
--

INSERT INTO `addresses` (`id`, `street`, `postCode`, `city`, `country`, `complement`) VALUES
(1, '20, route de vivelle', 74330, 'la balme sillingy', 'France', NULL),
(2, '32, avenue de cran', 74000, 'annecy', 'france', NULL),
(3, '12, rue de morette', 74000, 'annecy', 'france', NULL),
(4, '3, route des ecoles', 74410, 'saint-jorioz', 'France', 'résidence du lac, Bat A'),
(5, '185, rue de la poutre de bamako', 69690, 'verge', 'france', 'la route est longue et dure'),
(6, '23, route du bout', 99000, 'boutdsouffle', 'celuila', ''),
(7, 'street', 99000, 'city', 'country', 'complement'),
(8, 'street', 99000, 'city', 'country', 'complement'),
(9, 'street', 99000, 'city', 'country', 'complement'),
(10, 'street', 99000, 'city', 'country', 'complement'),
(11, 'street1', 88000, 'City', 'Country', 'Complement'),
(12, '10, rue du bout du monde', 99000, 'city-ville', 'Lahaut', ''),
(13, '10, rue du bout du monde', 99000, 'city-ville', 'Lahaut', ''),
(14, '23, route du bout', 99000, 'boudsouffle', 'poudlard', ''),
(15, '23, route du bout', 99000, 'boudsouffle', 'poudlard', ''),
(16, 'rue etienne lantier', 75000, 'Paris', 'France', 'DANS TON CUL');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'vetements'),
(2, 'accessoires'),
(3, 'goodies'),
(4, 'KAWAI');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `firstName` varchar(70) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `gender` varchar(1) NOT NULL DEFAULT 'H' COMMENT 'H|F',
  `pwd` varchar(255) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `pseudo` varchar(70) DEFAULT NULL,
  `shipping_address` int(11) NOT NULL,
  `invoice_address` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `name`, `firstName`, `mail`, `birth`, `gender`, `pwd`, `phone`, `pseudo`, `shipping_address`, `invoice_address`) VALUES
(1, 'vandekerckhove', 'vincent', 'vozoul@gmail.com', NULL, 'H', NULL, 642891964, NULL, 1, 1),
(2, 'beaudet', 'noémie', NULL, NULL, 'F', NULL, NULL, NULL, 2, 2),
(3, 'ceriaci', 'cedric', NULL, NULL, 'H', NULL, NULL, NULL, 3, 3),
(4, 'fourne', 'jean', NULL, NULL, 'H', NULL, NULL, NULL, 5, 5),
(5, 'debuire', 'alexis', NULL, NULL, 'H', NULL, NULL, NULL, 4, 4),
(6, 'name', 'firstName', 'mail@mail.com', NULL, 'H', NULL, NULL, NULL, 10, 10),
(7, 'Name', 'FirstName', 'Mail', NULL, 'H', NULL, NULL, NULL, 11, 11),
(8, 'nemars', '', 'aze@aze.fr', NULL, 'H', NULL, NULL, NULL, 12, 12),
(9, 'nemars', '', 'aze@aze.fr', NULL, 'H', NULL, NULL, NULL, 13, 13),
(10, 'x;jhdflkjmf', '', 'aze@aze.fr', NULL, 'H', NULL, NULL, NULL, 14, 14),
(11, 'x;jhdflkjmf', 'gggg', 'aze@aze.fr', NULL, 'H', NULL, NULL, NULL, 15, 15),
(12, 'poutou', 'philippe', 'philippe.poutou@pcf.fr', NULL, 'H', NULL, NULL, NULL, 15, 16);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `date`, `user_id`) VALUES
(1, '2019-02-07 05:24:39', 4),
(2, '2019-02-04 13:12:18', 3);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `description` text,
  `price` float NOT NULL,
  `product_promo` int(11) DEFAULT NULL,
  `weigth` float DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `product_promo`, `weigth`, `picture`, `stock`) VALUES
(1, 'Porte monnaie bourse Silicone MONSTRE', 'Superbe porte monnaie MONSTRE', 3.1, NULL, NULL, 'porte-monnaie-kawaii-monstre.jpg', 55),
(2, 'T- SHIRT HOMME KAKI ONE PIECE \" SKULL \"', 'Superbe t- shirt kaki ONE PIECE ( SKULL ).\r\n\r\nUn petit air de tendance pour ce grand classique revisité.', 19.99, NULL, NULL, 't-shirt-homme-kaki-one-piece-skull-.jpg', 80);

-- --------------------------------------------------------

--
-- Structure de la table `prod_assoc_cat`
--

DROP TABLE IF EXISTS `prod_assoc_cat`;
CREATE TABLE `prod_assoc_cat` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `prod_assoc_cat`
--

INSERT INTO `prod_assoc_cat` (`product_id`, `category_id`) VALUES
(1, 4),
(1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `prod_ordered`
--

DROP TABLE IF EXISTS `prod_ordered`;
CREATE TABLE `prod_ordered` (
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty_ordered` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `prod_ordered`
--

INSERT INTO `prod_ordered` (`product_id`, `order_id`, `qty_ordered`) VALUES
(1, 1, 4),
(1, 2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `promos`
--

DROP TABLE IF EXISTS `promos`;
CREATE TABLE `promos` (
  `id` int(11) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `promos`
--

INSERT INTO `promos` (`id`, `start`, `end`, `type`, `value`) VALUES
(1, '2019-02-07', '2019-02-09', NULL, 10);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ship_user` (`shipping_address`),
  ADD KEY `fk_invoice_user` (`invoice_address`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_promo` (`product_promo`);

--
-- Index pour la table `prod_assoc_cat`
--
ALTER TABLE `prod_assoc_cat`
  ADD KEY `fk_product` (`product_id`),
  ADD KEY `fk_category` (`category_id`);

--
-- Index pour la table `prod_ordered`
--
ALTER TABLE `prod_ordered`
  ADD KEY `fk_product_ordered` (`product_id`),
  ADD KEY `fk_order` (`order_id`);

--
-- Index pour la table `promos`
--
ALTER TABLE `promos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `promos`
--
ALTER TABLE `promos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `fk_invoice_user` FOREIGN KEY (`invoice_address`) REFERENCES `addresses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_ship_user` FOREIGN KEY (`shipping_address`) REFERENCES `addresses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_promo` FOREIGN KEY (`product_promo`) REFERENCES `promos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `prod_assoc_cat`
--
ALTER TABLE `prod_assoc_cat`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `prod_ordered`
--
ALTER TABLE `prod_ordered`
  ADD CONSTRAINT `fk_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_product_ordered` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
