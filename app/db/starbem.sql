-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 18-Set-2020 às 19:24
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starbem`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentable_id` bigint(20) UNSIGNED NOT NULL,
  `parentable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `doctor_schedule`
--

DROP TABLE IF EXISTS `doctor_schedule`;
CREATE TABLE IF NOT EXISTS `doctor_schedule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `day` varchar(50) DEFAULT NULL,
  `time` text,
  `updated_at` datetime DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `doctor_schedule`
--

INSERT INTO `doctor_schedule` (`id`, `uuid`, `created_at`, `created_id`, `user_id`, `day`, `time`, `updated_at`, `updated_id`, `status`) VALUES
(1, NULL, '2020-09-18 00:00:00', 1, 3, 'Segunda-Feira', '[{\"start_time\": \"08:00\", \"end_time\": \"09:00\"}, {\"start_time\": \"12:00\", \"end_time\": \"14:00\"}, {\"start_time\": \"18:00\", \"end_time\": \"20:00\"}]', NULL, NULL, 1),
(2, NULL, '2020-09-18 00:00:00', 1, 3, 'Terça-Feira', '[{\"start_time\": \"08:00\", \"end_time\": \"09:00\"}, {\"start_time\": \"12:00\", \"end_time\": \"14:00\"}]', NULL, NULL, 1),
(3, NULL, '2020-09-18 00:00:00', 1, 3, 'Quarta-Feira', '[{\"start_time\": \"08:00\", \"end_time\": \"09:00\"}]', NULL, NULL, 1),
(4, NULL, '2020-09-18 00:00:00', 1, 3, 'Quinta-Feira', '[{\"start_time\": \"12:00\", \"end_time\": \"14:00\"}, {\"start_time\": \"18:00\", \"end_time\": \"20:00\"}]', NULL, NULL, 1),
(5, NULL, '2020-09-18 00:00:00', 1, 3, 'Sexta-Feira', '[{\"start_time\": \"12:00\", \"end_time\": \"14:00\"}, {\"start_time\": \"18:00\", \"end_time\": \"20:00\"}]', NULL, NULL, 1),
(6, NULL, '2020-09-18 00:00:00', 1, 3, 'Sábado', '[{\"start_time\": \"08:00\", \"end_time\": \"09:00\"}]', NULL, NULL, 1),
(7, NULL, '2020-09-18 00:00:00', 1, 3, 'Domingo', '[{\"start_time\": \"08:00\", \"end_time\": \"09:00\"}, {\"start_time\": \"12:00\", \"end_time\": \"14:30\"}]', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `health_problems`
--

DROP TABLE IF EXISTS `health_problems`;
CREATE TABLE IF NOT EXISTS `health_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `updated_at` datetime DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `health_problems`
--

INSERT INTO `health_problems` (`id`, `uuid`, `created_at`, `created_id`, `title`, `description`, `updated_at`, `updated_id`, `status`) VALUES
(1, NULL, '2020-09-17 00:00:00', 1, 'Pressão Alta', NULL, NULL, NULL, 1),
(2, NULL, '2020-09-17 00:00:00', 1, 'Pressão Alta', NULL, NULL, NULL, 1),
(3, NULL, '2020-09-17 00:00:00', 1, 'Colesterol ALto', NULL, NULL, NULL, 1),
(4, NULL, '2020-09-17 00:00:00', 1, 'Diabetes', NULL, NULL, NULL, 1),
(5, NULL, '2020-09-17 00:00:00', 1, 'Doença Cardiaca', NULL, NULL, NULL, 1),
(6, NULL, '2020-09-17 00:00:00', 1, 'Doença no Pulmão', NULL, NULL, NULL, 1),
(7, NULL, '2020-09-17 00:00:00', 1, 'Doença no estômago ou intestino', NULL, NULL, NULL, 1),
(8, NULL, '2020-09-17 00:00:00', 1, 'Doença no Rim', NULL, NULL, NULL, 1),
(9, NULL, '2020-09-17 00:00:00', 1, 'Doença no FIgado', NULL, NULL, NULL, 1),
(10, NULL, '2020-09-17 00:00:00', 1, 'Cancêr Ativo', NULL, NULL, NULL, 1),
(11, NULL, '2020-09-17 00:00:00', 1, 'Doenças nas articulações (juntas)', NULL, NULL, NULL, 1),
(12, NULL, '2020-09-17 00:00:00', 1, 'Doença Celebral ou Neurológica', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medical_record`
--

DROP TABLE IF EXISTS `medical_record`;
CREATE TABLE IF NOT EXISTS `medical_record` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `user_id_holder` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `profile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cellphone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_registration` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0=aguardando; 1=aprovado; 2=reprovado',
  PRIMARY KEY (`id`),
  KEY `medical_record_user_id_foreign` (`user_id`),
  KEY `medical_record_user_id_holder_foreign` (`user_id_holder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uui` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) UNSIGNED DEFAULT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_id` int(11) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `amount` decimal(10,2) DEFAULT NULL,
  `term` text COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `uuid`, `created_at`, `created_id`, `title`, `description`, `amount`, `term`, `updated_at`, `updated_id`, `status`) VALUES
(1, '', '2020-09-17 03:00:00', NULL, 'Plano Basico', 'Plano Basico', '19.99', 'term term term', NULL, NULL, 1),
(2, '', '2020-09-17 03:00:00', NULL, 'Plano 2', 'Plano 2', '29.99', 'term term term', NULL, NULL, 1),
(3, '', '2020-09-17 03:00:00', NULL, 'Plano 3', 'Plano 3', '30.99', 'term term term', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uui` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role`
--

INSERT INTO `role` (`id`, `uui`, `created_at`, `created_id`, `name`, `details`, `updated_at`, `updated_id`, `status`) VALUES
(1, NULL, '2020-09-17 03:00:00', 1, 'Administrador', NULL, NULL, NULL, NULL),
(2, NULL, '2020-09-17 03:00:00', 1, 'Medico', NULL, NULL, NULL, NULL),
(3, NULL, '2020-09-17 03:00:00', 1, 'Titutal', NULL, NULL, NULL, NULL),
(4, NULL, '2020-09-17 03:00:00', 1, 'Dependente', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL COMMENT '1=admin, 2=medico, 3-titular, 4 =dependente',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tutorials`
--

DROP TABLE IF EXISTS `tutorials`;
CREATE TABLE IF NOT EXISTS `tutorials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tutorials`
--

INSERT INTO `tutorials` (`id`, `title`, `description`, `published`, `createdAt`, `updatedAt`) VALUES
(1, 'title 1', 'description 1', 0, '2020-09-17 00:00:00', '2020-09-17 00:00:00'),
(2, 'title 2', 'description 2', 0, '2020-09-17 00:00:00', '2020-09-17 00:00:00'),
(3, 'title 3', 'description 4', 0, '2020-09-17 00:00:00', '2020-09-17 00:00:00'),
(4, 'title 4', 'description 4', 0, '2020-09-17 00:00:00', '2020-09-17 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_id` int(5) DEFAULT NULL,
  `companie_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci,
  `online_date` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `img` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_id` int(5) DEFAULT NULL,
  `first_login` int(11) DEFAULT NULL,
  `change_password` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `uuid`, `created_at`, `created_id`, `companie_id`, `name`, `document`, `email`, `email_verified_at`, `api_token`, `online_date`, `password`, `remember_token`, `validation_token`, `type`, `img`, `updated_at`, `updated_id`, `first_login`, `change_password`, `status`) VALUES
(1, '', '2020-09-17 03:00:00', 1, 0, 'Admistrador', NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(2, '', '2020-09-17 03:00:00', 1, 0, 'Titular', NULL, 'titular@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 1),
(3, '', '2020-09-17 03:00:00', 1, 0, 'Medico', NULL, 'medico@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 1),
(4, '', '2020-09-17 03:00:00', 1, 0, 'Dependente', NULL, 'dependente@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_products`
--

DROP TABLE IF EXISTS `users_products`;
CREATE TABLE IF NOT EXISTS `users_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `products_id` int(2) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users_products`
--

INSERT INTO `users_products` (`id`, `uuid`, `created_at`, `created_id`, `user_id`, `products_id`, `updated_at`, `updated_id`, `status`) VALUES
(1, NULL, '2020-09-17 00:00:00', 1, 2, 1, NULL, NULL, 1);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `medical_record`
--
ALTER TABLE `medical_record`
  ADD CONSTRAINT `medical_record_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `medical_record_user_id_holder_foreign` FOREIGN KEY (`user_id_holder`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Limitadores para a tabela `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
