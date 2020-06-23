-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 23 juin 2020 à 19:57
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector_id` bigint(20) UNSIGNED NOT NULL,
  `localisation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `name`, `sector_id`, `localisation`, `created_at`, `updated_at`) VALUES
(1, 'company Name 1', 1, 'Marrakech', '2020-06-23 14:39:30', '2020-06-23 14:39:30'),
(2, 'company Name 2', 1, 'Marrakech', '2020-06-23 14:39:30', '2020-06-23 14:39:30'),
(3, 'company Name 3', 3, 'Marrakech', '2020-06-23 14:39:30', '2020-06-23 14:39:30');

-- --------------------------------------------------------

--
-- Structure de la table `education_levels`
--

CREATE TABLE `education_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `education_levels`
--

INSERT INTO `education_levels` (`id`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Pas important', '2020-06-23 14:39:30', '2020-06-23 14:39:30'),
(2, 'Niveau Bac', '2020-06-23 14:39:30', '2020-06-23 14:39:30'),
(3, 'Bac plus 2', '2020-06-23 14:39:30', '2020-06-23 14:39:30'),
(4, 'Bac plus 3', '2020-06-23 14:39:30', '2020-06-23 14:39:30'),
(5, 'Bac plus 4', '2020-06-23 14:39:30', '2020-06-23 14:39:30'),
(6, 'Bac plus 5', '2020-06-23 14:39:30', '2020-06-23 14:39:30');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_22_080618_create_sectors_table', 1),
(5, '2020_06_22_080728_create_education_levels_table', 1),
(6, '2020_06_22_081022_create_companies_table', 1),
(7, '2020_06_22_081025_create_offers_table', 1),
(8, '2020_06_22_095606_create_user_applications_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector_id` bigint(20) UNSIGNED NOT NULL,
  `education_level_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `localisation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_in` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `offers`
--

INSERT INTO `offers` (`id`, `ref`, `title`, `sector_id`, `education_level_id`, `company_id`, `localisation`, `expires_in`, `created_at`, `updated_at`) VALUES
(4, 'refAnnonce01', 'Annonce titre 1', 1, 3, 1, 'Marrakech', '2020-06-24 14:41:19', '2020-06-23 14:41:19', '2020-06-23 14:41:19'),
(5, 'refAnnonce02', 'Annonce titre 2', 2, 2, 1, 'Marrakech', '2020-06-24 14:41:19', '2020-06-23 14:41:19', '2020-06-23 14:41:19'),
(6, 'refAnnonce03', 'Annonce titre 3', 3, 3, 1, 'Marrakech', '2020-06-23 14:41:19', '2020-06-23 14:41:19', '2020-06-23 14:41:19');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sectors`
--

CREATE TABLE `sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sector` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sectors`
--

INSERT INTO `sectors` (`id`, `sector`, `created_at`, `updated_at`) VALUES
(1, 'Multimedia et informatique', '2020-06-23 14:39:30', '2020-06-23 14:39:30'),
(2, 'economie et finnance', '2020-06-23 14:39:30', '2020-06-23 14:39:30'),
(3, 'Achats', '2020-06-23 14:39:30', '2020-06-23 14:39:30'),
(4, 'Banque et finance', '2020-06-23 14:39:30', '2020-06-23 14:39:30'),
(5, 'Construction Btp', '2020-06-23 14:39:30', '2020-06-23 14:39:30');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `cv`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john', 'doe', 'john@mail.com', '$2y$10$sKQlsG/GEdNVGkZxpWHpleQXArkRNIbT0e5QwkJyiPiHNtOKQWfJC', NULL, NULL, '2020-06-23 14:39:29', '2020-06-23 14:39:29');

-- --------------------------------------------------------

--
-- Structure de la table `user_applications`
--

CREATE TABLE `user_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `offer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_applications`
--

INSERT INTO `user_applications` (`id`, `user_id`, `offer_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_sector_id_foreign` (`sector_id`);

--
-- Index pour la table `education_levels`
--
ALTER TABLE `education_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `education_levels_level_unique` (`level`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offers_ref_unique` (`ref`),
  ADD KEY `offers_sector_id_foreign` (`sector_id`),
  ADD KEY `offers_education_level_id_foreign` (`education_level_id`),
  ADD KEY `offers_company_id_foreign` (`company_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sectors_sector_unique` (`sector`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `user_applications`
--
ALTER TABLE `user_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_applications_user_id_foreign` (`user_id`),
  ADD KEY `user_applications_offer_id_foreign` (`offer_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `education_levels`
--
ALTER TABLE `education_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user_applications`
--
ALTER TABLE `user_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`);

--
-- Contraintes pour la table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `offers_education_level_id_foreign` FOREIGN KEY (`education_level_id`) REFERENCES `education_levels` (`id`),
  ADD CONSTRAINT `offers_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`);

--
-- Contraintes pour la table `user_applications`
--
ALTER TABLE `user_applications`
  ADD CONSTRAINT `user_applications_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
