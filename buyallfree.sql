-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 31 jan. 2021 à 22:05
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `buyallfree`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lecon`
--

CREATE TABLE `lecon` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sommaire_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `reads` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_09_24_124321_create_lecon_table', 1),
(8, '2020_09_24_124321_create_sommaire_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('604c3773e74923ed1ae63f68fecb23332336faf8ad9acaebbf1bad7fe007250b12563e33d2edeb96', 1, 1, 'Personal Access Token', '[]', 0, '2021-01-31 12:52:44', '2021-01-31 12:52:44', '2022-01-31 12:52:44');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'FGfP0vBkAQqMiJkB6qGTSQLl6FvHnehw7o8vOuwa', 'http://localhost', 1, 0, 0, '2021-01-31 12:52:36', '2021-01-31 12:52:36'),
(2, NULL, 'Laravel Password Grant Client', '7yzLQnSbEKaUCiGAuUW4t3O3VXIv6cLFYoU8Ry1R', 'http://localhost', 0, 1, 0, '2021-01-31 12:52:36', '2021-01-31 12:52:36');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-31 12:52:36', '2021-01-31 12:52:36');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `parameters`
--

CREATE TABLE `parameters` (
  `id` int(11) NOT NULL,
  `minAmount` int(11) NOT NULL,
  `maxAmount` int(11) NOT NULL,
  `percent` varchar(255) NOT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deletedAt` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deletedAt` timestamp(6) NULL DEFAULT NULL,
  `createdById` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `code`, `createdAt`, `updatedAt`, `deletedAt`, `createdById`) VALUES
(1, 'Sportek A23', 39000, 1245, '2021-01-24 13:51:18.249563', '2021-01-24 13:51:18.249563', NULL, 1),
(2, 'Sportek P12', 39000, 78456, '2021-01-24 13:58:58.148412', '2021-01-24 13:58:58.148412', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `purchaseDetails` text NOT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deletedAt` timestamp(6) NULL DEFAULT NULL,
  `clientId` int(11) DEFAULT NULL,
  `createdById` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `purchase`
--

INSERT INTO `purchase` (`id`, `amount`, `purchaseDetails`, `createdAt`, `updatedAt`, `deletedAt`, `clientId`, `createdById`) VALUES
(1, 39000, 'Sportek maron quantite 1', '2021-01-23 04:30:25.397234', '2021-01-23 04:30:25.397234', NULL, 5, 1),
(2, 39000, 'Sportek maron quantite 1', '2021-01-23 04:31:59.352620', '2021-01-23 04:31:59.352620', NULL, 5, 1),
(3, 39000, 'Sportek maron quantite 1', '2021-01-23 04:33:48.872498', '2021-01-23 04:33:48.872498', NULL, 5, 1),
(4, 39000, 'Sportek maron quantite 1', '2021-01-23 04:35:08.337795', '2021-01-23 04:35:08.337795', NULL, 4, 1),
(5, 78000, '[{\"id\":1,\"name\":\"Sportek A23\",\"price\":39000,\"code\":1245,\"createdAt\":\"2021-01-24T13:51:18.249Z\",\"updatedAt\":\"2021-01-24T13:51:18.249Z\",\"deletedAt\":null,\"quantite\":\"1\"},{\"id\":2,\"name\":\"Sportek P12\",\"price\":39000,\"code\":78456,\"createdAt\":\"2021-01-24T13:58:58.148Z\",\"updatedAt\":\"2021-01-24T13:58:58.148Z\",\"deletedAt\":null,\"quantite\":\"1\"}]', '2021-01-24 15:32:40.187097', '2021-01-24 15:32:40.187097', NULL, 6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `solde` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `imageUrl` varchar(255) DEFAULT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deletedAt` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shop`
--

INSERT INTO `shop` (`id`, `name`, `location`, `phone`, `lat`, `long`, `solde`, `state`, `imageUrl`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Jambour Services', 'Parcelles Assainies', '3382000012', '17.125554895', '14.258988877', 0, 0, NULL, '2021-01-23 01:41:09.315186', '2021-01-23 01:41:09.315186', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sommaire`
--

CREATE TABLE `sommaire` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `type` enum('fr','ar','en','wl') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL,
  `solde` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `first_parent_id` int(11) DEFAULT NULL,
  `second_parent_id` int(11) DEFAULT NULL,
  `third_parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `uid`, `account_type`, `solde`, `password`, `active`, `created_at`, `updated_at`, `deleted_at`, `first_parent_id`, `second_parent_id`, `third_parent_id`) VALUES
(1, 'Aliou', 'Thiema', 'athiema@buyall4free.sn', '770000000', '100000000', 1, 0, '$2b$10$DqqJE4jj7KVUMu26yGZZoOGZHxgMEZhQ9wl/KAtX310es2aae.8RW', 1, '2021-01-23 04:25:29.471958', '2021-01-23 04:25:29.471958', NULL, NULL, NULL, NULL),
(2, 'Ibrahima', 'Sene', 'ibrasene@buyall4free.sn', '770000001', '100000001', 2, 1950, '$2b$10$uaiHzZSuVI7mbQxFnLzJvOe4R2WW86dhAIfTXKHv4.hrPdxS5uS/e', 0, '2021-01-23 04:26:17.484000', '2021-01-23 04:26:17.484000', NULL, NULL, NULL, NULL),
(3, 'Bachird', 'Diop', 'bassdiop@buyall4free.sn', '770000002', '100000002', 2, 4680, '$2b$10$B.ALTOwLN51/ksdtDrtJe.1rcqo62cPIVAJ0u/pPx.2u9pIINp5J.', 0, '2021-01-23 04:27:05.590000', '2021-01-23 04:27:05.590000', NULL, 2, NULL, NULL),
(4, 'Sadia', 'Sagna', 'sagnas@buyall4free.sn', '770000003', '100000003', 2, 4290, '$2b$10$/kcCvg/lqCsneNwVwGauqOSrrHfVmfPvF.itljAHo1qQ62gx7K5lq', 0, '2021-01-23 04:28:08.209000', '2021-01-23 04:28:08.209000', NULL, 3, 2, NULL),
(5, 'Mouhamed', 'Diack', 'mdiack@buyall4free.sn', '770000004', '100000004', 2, 3900, '$2b$10$PIILtVr0gXUzLn3x3j.ykuyyTWzJuOYC5hB7BkTULPXYq1eMF94IS', 0, '2021-01-23 04:28:57.370000', '2021-01-23 04:28:57.370000', NULL, 4, 3, 2),
(6, 'Mamadou ALiou', 'Diallo', 'mamadia@gmail.com', '760000002', '995766', 2, 0, '$2b$10$NmwrX4iIP2ndLPkpyM5ISe2PH1fOO4el96ITLRGTFnilMLBl98SVa', 0, '2021-01-24 13:24:19.559775', '2021-01-24 13:24:19.559775', NULL, 5, 4, 3),
(8, 'Aminata', 'Fall', 'amfall@buyall4free.sn', '770000005', '100000006', 2, 0, '$2y$10$2yYWrrRTy7/KepibnB/g0uScCRuWAP4qUulp9sgiYwROd/KiS4oQ2', 1, '2021-01-31 00:58:53.000000', '2021-01-31 00:58:53.000000', NULL, 5, 4, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lecon`
--
ALTER TABLE `lecon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_806302f2d4da2a0c27eedbf34fe` (`createdById`);

--
-- Index pour la table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_73c8437825e1d3d8bae07550584` (`clientId`),
  ADD KEY `FK_c91c01cbbd303cee7a269b24fd1` (`createdById`);

--
-- Index pour la table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sommaire`
--
ALTER TABLE `sommaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_e12875dfb3b1d92d7d7c5377e2` (`email`),
  ADD UNIQUE KEY `IDX_8e1f623798118e629b46a9e629` (`phone`),
  ADD UNIQUE KEY `IDX_df955cae05f17b2bcf5045cc02` (`uid`),
  ADD KEY `FK_739d758ed756fd4a7ded1db9a3a` (`first_parent_id`),
  ADD KEY `FK_14dd6af670fb48156112cd368dd` (`second_parent_id`),
  ADD KEY `FK_8b3524dda9019bab9022211da6c` (`third_parent_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lecon`
--
ALTER TABLE `lecon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `parameters`
--
ALTER TABLE `parameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sommaire`
--
ALTER TABLE `sommaire`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_806302f2d4da2a0c27eedbf34fe` FOREIGN KEY (`createdById`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `FK_73c8437825e1d3d8bae07550584` FOREIGN KEY (`clientId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_c91c01cbbd303cee7a269b24fd1` FOREIGN KEY (`createdById`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_14dd6af670fb48156112cd368dd` FOREIGN KEY (`second_parent_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_739d758ed756fd4a7ded1db9a3a` FOREIGN KEY (`first_parent_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_8b3524dda9019bab9022211da6c` FOREIGN KEY (`third_parent_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
