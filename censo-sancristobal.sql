-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2022 a las 03:04:16
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `censo-sancristobal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infos`
--

CREATE TABLE `infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `virus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `centro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sintomas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `otroSintomas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `infos`
--

INSERT INTO `infos` (`id`, `virus`, `centro`, `sintomas`, `otroSintomas`, `created_at`, `updated_at`) VALUES
(1, 'variante', 'Enim repudiandae veritatis natus ut modi dolorum tenetur.', 'vomito', NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(2, 'variante', 'Eveniet molestias voluptas quis necessitatibus consequuntur blanditiis.', 'dolor de cabeza', NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(3, 'viruela', 'Aut beatae architecto quae mollitia.', 'otroSintoma', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(4, 'viruela', 'Ipsam non dolor sed quaerat ut.', 'otroSintoma', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(5, 'covid', 'Deserunt blanditiis voluptate provident quaerat.', 'dolores musculares', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(6, 'variante', 'Quae et sapiente accusantium numquam.', 'dolores musculares', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(7, 'viruela', 'Corrupti aspernatur provident id molestiae.', 'fiebre', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(8, 'nodiagnosticado', 'Harum rerum architecto reprehenderit commodi molestias.', 'tos', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(9, 'variante', 'Repellendus veritatis ut libero aut sit nihil quia omnis.', 'tos', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(10, 'nodiagnosticado', 'Quasi autem aperiam laborum laboriosam ab quidem ut autem.', 'dolor de cabeza', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(11, 'covid', 'Est sit excepturi at.', 'tos', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(12, 'covid', 'Fugiat iste voluptate doloremque nisi.', 'otroSintoma', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(13, 'variante', 'Aspernatur reiciendis voluptatem animi voluptatem.', 'erupciones en la piel', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(14, 'variante', 'Accusamus ea dolores maxime.', 'vomito', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(15, 'nodiagnosticado', 'Consequuntur odio impedit rerum itaque nam.', 'erupciones en la piel', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(16, 'viruela', 'Rerum accusamus delectus optio pariatur asperiores quaerat repellat doloribus.', 'dolores musculares', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(17, 'covid', 'Est ad quis accusantium provident blanditiis facilis.', 'erupciones en la piel', NULL, '2022-08-13 04:33:02', '2022-08-13 04:33:02'),
(18, 'nodiagnosticado', 'Assumenda corporis corporis consectetur at velit dolores.', 'vomito', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(19, 'variante', 'Quos suscipit dolor quibusdam nihil voluptas.', 'tos', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(20, 'nodiagnosticado', 'Voluptas non odit modi doloribus excepturi vel.', 'dolor de cabeza', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(21, 'viruela', 'Dolor dolor consequatur quia et itaque ea a.', 'dolores musculares', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(22, 'variante', 'Accusamus atque voluptatem quae.', 'otroSintoma', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(23, 'variante', 'Modi eos neque dicta nihil aut.', 'erupciones en la piel', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(24, 'covid', 'Sed praesentium ducimus nihil ut sunt porro.', 'erupciones en la piel', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(25, 'covid', 'Vero eius nobis velit expedita.', 'dolor de cabeza', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(26, 'nodiagnosticado', 'Repudiandae sit consequuntur necessitatibus eos ipsam ullam quidem.', 'dolores musculares', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(27, 'covid', 'Eligendi laudantium eius molestiae ea.', 'otroSintoma', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(28, 'covid', 'Quo dolore impedit et maiores fugiat ut exercitationem.', 'tos', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(29, 'nodiagnosticado', 'Asperiores dolor maxime soluta placeat porro.', 'otroSintoma', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(30, 'viruela', 'Itaque nisi vel repellendus nisi consequatur.', 'dolor de cabeza', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(31, 'nodiagnosticado', 'Repellat labore voluptatem cumque similique voluptas.', 'erupciones en la piel', NULL, '2022-08-13 04:33:03', '2022-08-13 04:33:03'),
(32, 'viruela', 'Minus voluptas omnis quia earum voluptas.', 'dolor de cabeza', NULL, '2022-08-13 04:33:04', '2022-08-13 04:33:04'),
(33, 'nodiagnosticado', 'Ut neque aspernatur repellendus expedita et aut.', 'fiebre', NULL, '2022-08-13 04:33:04', '2022-08-13 04:33:04'),
(34, 'viruela', 'Quia libero ut non tempore magnam.', 'erupciones en la piel', NULL, '2022-08-13 04:33:04', '2022-08-13 04:33:04'),
(35, 'covid', 'Qui asperiores laudantium qui eligendi.', 'fiebre', NULL, '2022-08-13 04:33:04', '2022-08-13 04:33:04'),
(36, 'viruela', 'Laudantium accusamus eaque sed voluptas amet et.', 'otroSintoma', NULL, '2022-08-13 04:33:04', '2022-08-13 04:33:04'),
(37, 'covid', 'Dolores sit quia molestias itaque quae nostrum.', 'fiebre', NULL, '2022-08-13 04:33:04', '2022-08-13 04:33:04'),
(38, 'viruela', 'Blanditiis enim nemo ratione vel et quaerat recusandae omnis.', 'otroSintoma', NULL, '2022-08-13 04:33:04', '2022-08-13 04:33:04'),
(39, 'covid', 'Doloremque molestias possimus doloremque ab voluptas qui.', 'erupciones en la piel', NULL, '2022-08-13 04:33:04', '2022-08-13 04:33:04'),
(40, 'variante', 'Hic iste error necessitatibus amet qui dolores.', 'otroSintoma', NULL, '2022-08-13 04:33:04', '2022-08-13 04:33:04'),
(41, 'nodiagnosticado', 'Distinctio eos aperiam harum qui.', 'vomito', NULL, '2022-08-13 04:33:05', '2022-08-13 04:33:05'),
(42, 'covid', 'Non dolorem voluptatibus consequatur esse rerum ea.', 'erupciones en la piel', NULL, '2022-08-13 04:33:05', '2022-08-13 04:33:05'),
(43, 'nodiagnosticado', 'Et enim et vitae.', 'dolores musculares', NULL, '2022-08-13 04:33:05', '2022-08-13 04:33:05'),
(44, 'viruela', 'Fugit quam tenetur sint itaque asperiores.', 'tos', NULL, '2022-08-13 04:33:05', '2022-08-13 04:33:05'),
(45, 'covid', 'Temporibus quo consequatur natus.', 'erupciones en la piel', NULL, '2022-08-13 04:33:05', '2022-08-13 04:33:05'),
(46, 'covid', 'Qui et repellat consequatur culpa.', 'tos', NULL, '2022-08-13 04:33:05', '2022-08-13 04:33:05'),
(47, 'viruela', 'Recusandae incidunt ut voluptas harum rerum laborum dolorem.', 'tos', NULL, '2022-08-13 04:33:05', '2022-08-13 04:33:05'),
(48, 'nodiagnosticado', 'Error molestiae dolor ut odit aut.', 'dolores musculares', NULL, '2022-08-13 04:33:05', '2022-08-13 04:33:05'),
(49, 'nodiagnosticado', 'Consequuntur nesciunt nemo dolor officiis voluptas.', 'vomito', NULL, '2022-08-13 04:33:05', '2022-08-13 04:33:05'),
(50, 'viruela', 'Temporibus excepturi sed iure expedita tempore vel culpa.', 'erupciones en la piel', NULL, '2022-08-13 04:33:05', '2022-08-13 04:33:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_08_180644_create_infos_table', 1),
(6, '2022_08_08_181232_create_noticias_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Simeon Spinka', 'Commodi voluptatem fugiat labore. Eaque rem quia consequatur non. Assumenda sapiente voluptatem mollitia minus enim accusamus.', '2022-08-13 04:33:05', '2022-08-13 04:33:05'),
(2, 'Dr. Rodger Murphy', 'Officia recusandae enim modi ab magni aut sunt. Quam quia delectus dignissimos. Hic voluptatem est error.', '2022-08-13 04:33:06', '2022-08-13 04:33:06'),
(3, 'Madge Schinner', 'Maxime non consequatur qui molestiae debitis voluptatem. Inventore et deserunt voluptates quo maiores.', '2022-08-13 04:33:06', '2022-08-13 04:33:06'),
(4, 'Miss Kristin Hermann', 'Voluptas cupiditate dolorum illum aspernatur at qui asperiores. Et eveniet corporis suscipit veniam ea. Excepturi at ea consectetur error id illo error. Debitis occaecati placeat velit et similique quaerat.', '2022-08-13 04:33:06', '2022-08-13 04:33:06'),
(5, 'Dr. Erik Hirthe', 'Quisquam voluptatem id facilis. Voluptate eveniet soluta illum id magnam et nesciunt omnis.', '2022-08-13 04:33:06', '2022-08-13 04:33:06'),
(6, 'Dr. Eleazar Brekke IV', 'Error porro totam et repellat optio ut. Sed repellat occaecati architecto rerum qui explicabo. Fuga consequatur odit voluptas inventore qui et harum autem. Nobis est sint at. Doloremque quibusdam nam incidunt doloremque quos eaque sint earum.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(7, 'Dr. Vergie Harris', 'Natus aut et rerum. Sit ut expedita sed hic. Impedit numquam distinctio quae aut unde sunt.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(8, 'Spencer Rohan', 'Aut nam officiis quia libero unde officia beatae. Iusto rerum sint quidem saepe.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(9, 'Prof. Kyler Swift', 'Alias voluptas aut vitae ad officia impedit laudantium dicta. Nisi dolorem et nostrum deserunt omnis. Qui illum libero est quibusdam a ad. Neque dolorem delectus dolores dolorem quia.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(10, 'Lorna Rolfson Jr.', 'Nostrum quis tempore ipsa voluptas in earum. Quia qui hic ad voluptas ullam quia. Sit ut iure saepe numquam voluptatibus aut atque. Et totam occaecati illum perferendis commodi.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(11, 'Emie Quigley', 'Non quae asperiores qui corporis sint. Error aut occaecati sunt error. Nulla atque ipsa velit sit aut ut consequatur non. Maxime itaque nemo et sapiente iusto ullam.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(12, 'Mr. Austen Schowalter', 'Provident vel quidem rem. Quibusdam repellendus cumque nobis voluptatem ea. Aliquam nam ratione quam temporibus eligendi. Dolorem minima accusantium ea sequi quidem aliquid vitae. Voluptas non nostrum eaque nostrum.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(13, 'Erika Wehner', 'Non fugiat aspernatur sunt aut excepturi sit. Et debitis inventore laboriosam. Repudiandae unde iure saepe totam vero. Tenetur consectetur perspiciatis fuga omnis amet.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(14, 'Prof. Lupe Jacobson DDS', 'Quaerat quam sed laboriosam repellendus. Corporis eligendi tempore nesciunt facere. Iusto mollitia rerum sed et tenetur repellat voluptatibus qui.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(15, 'Ardith Mohr', 'Voluptatum id nulla ab ut qui. Ea assumenda mollitia sequi. Explicabo consequatur ut perferendis est ipsum.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(16, 'Edythe Fadel', 'Et molestias sit ea sunt. Atque id ut quis maiores nobis dolore dolore sit. Et est est voluptas magni minima.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(17, 'Kristy Reinger', 'Modi voluptas consequatur rerum et. Dicta illum adipisci quidem ipsa eos. Animi deserunt at quas illo consequatur officia unde porro. Cupiditate velit natus provident. Eos corrupti dolor repellat enim aut.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(18, 'Spencer Hartmann Sr.', 'Autem sint fugit voluptate autem eum. Ad fugiat quod harum minus quam nisi dignissimos. Ut velit quibusdam dicta qui.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(19, 'Holly Schaefer III', 'Nam ut consectetur molestiae temporibus qui quia. Ipsum voluptas nulla repudiandae quibusdam ut nisi magni. Numquam sapiente iure enim alias.', '2022-08-13 04:33:07', '2022-08-13 04:33:07'),
(20, 'Dr. Shania Shields III', 'Ducimus minima fuga architecto deleniti fugit quod sit officia. Aperiam sequi dolorem est in ab repellendus ut. Quibusdam aut eum consectetur voluptas.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(21, 'Alva Schroeder', 'Et dignissimos fugiat voluptatum praesentium ut voluptate. In maiores laudantium fuga. Nihil quae consequatur eveniet repudiandae sit illum.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(22, 'Teresa Bode', 'Ipsam qui iure alias molestiae quas et expedita. Debitis dolores rerum ut cumque.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(23, 'Giuseppe Koelpin', 'Porro voluptatibus vitae deserunt ducimus. Eos eos enim dicta consequatur hic.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(24, 'Ethelyn Volkman', 'Nesciunt est odio quo saepe molestiae animi. Aspernatur reprehenderit facilis est enim. Sequi voluptas possimus quis voluptates quibusdam aliquam.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(25, 'Jamar Crona', 'Ut consectetur excepturi est et et dolores excepturi magnam. Dolore ea nam nihil voluptate eveniet et distinctio. Rem neque quaerat qui provident adipisci placeat. Ut voluptates magni mollitia dolores quia. Ut nihil maxime voluptate ipsa.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(26, 'Prof. Declan Luettgen II', 'Optio veniam dolorem cumque quam. Sed recusandae et dicta dolores aut quia. Et at qui omnis sint facere consequatur.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(27, 'Antwan Rempel', 'Corporis ut illum quas amet explicabo non. Est veritatis dolore eius aut eum debitis ea. Voluptatum repellat exercitationem consequuntur recusandae. Dolorum a et non aut voluptate natus voluptatibus.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(28, 'Annabelle Stamm IV', 'Odit voluptatibus eligendi laudantium quia eius nesciunt sit. Ab reprehenderit eligendi temporibus assumenda sequi laborum illo. Omnis adipisci quis aperiam facere.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(29, 'Brionna McKenzie', 'Ut aspernatur sequi molestias in. Voluptatem et placeat facilis quos consequatur. Explicabo vero architecto praesentium omnis sit. Omnis et laudantium pariatur consequatur non a earum dignissimos.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(30, 'Mr. Ernie Wiza IV', 'Ducimus recusandae qui dolorem et. Voluptatem id eum et ab quibusdam et. Non voluptas et quia magnam maxime.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(31, 'Dr. Nicolette Schinner IV', 'Nihil delectus ullam consectetur rerum illum voluptatem dolor. Quod quidem accusamus ad. Repellat rem consequatur voluptatem sint doloribus quo id. Molestias ut et minima fugit harum vel.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(32, 'Sigmund Leuschke', 'Rem tenetur dolores suscipit ratione non dolorum. Dolorem consequatur ratione autem. Doloribus aut ea cumque omnis. Possimus sit sed dolores eligendi dolores fugiat.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(33, 'Prof. Novella Prosacco DVM', 'Ut libero error sit occaecati rerum. Libero deleniti aut animi maxime. Temporibus veritatis sed accusantium odio laborum officia. Aut rem dolorem aut commodi.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(34, 'Leatha Hansen', 'Eius velit veniam suscipit molestiae quam. Debitis id quis asperiores quasi. Consectetur accusantium atque sit ducimus perferendis.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(35, 'Gerry Shanahan DVM', 'Enim nam omnis quia minima quas et doloremque. Non molestias magni magnam id repellendus. Et porro ipsa quia et id. Rerum possimus quia velit omnis consectetur repellat ea.', '2022-08-13 04:33:08', '2022-08-13 04:33:08'),
(36, 'Chyna Purdy', 'Sunt rerum voluptas unde praesentium voluptas laborum sit. Odio repellat nihil fugit quo. Sed deserunt doloremque expedita et accusantium.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(37, 'Gabriel Rippin PhD', 'Veritatis molestias et enim officia et quia. Impedit corporis deleniti magnam assumenda ad quaerat ab vel. Molestiae asperiores autem voluptas. Porro consequatur cumque quia veniam itaque laborum.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(38, 'Nedra Yost', 'Unde qui ut ut minus. Est quia ea tempore ratione qui.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(39, 'Rowan Rowe IV', 'Animi ipsam consectetur aperiam neque et. Nostrum ut saepe ea dolores porro mollitia natus beatae. Velit labore tenetur culpa.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(40, 'Mikayla Mante', 'Sunt consequatur autem fugiat iusto. Quas temporibus quia impedit ut tempore. Dignissimos numquam eos atque nihil hic et error. Vel sunt distinctio modi doloribus vero. Occaecati quidem voluptas earum maiores quis aut.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(41, 'Vita McCullough I', 'Tempore corrupti consectetur et quasi ducimus temporibus. Maiores necessitatibus voluptatum mollitia adipisci commodi iure.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(42, 'Dr. Felicity Tremblay DDS', 'Id et nobis blanditiis voluptatum. Quis natus est nesciunt quia optio exercitationem. Dolorum assumenda magnam et quos a aspernatur.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(43, 'Yvette Brown', 'Animi ut eum culpa iusto quisquam omnis explicabo. Qui impedit eos sequi. Quia ut beatae et quasi quis consequatur quo.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(44, 'Domenick Waelchi', 'Odit non ipsum et modi nobis. Est magni praesentium eius ipsa ipsam. Quia nobis quas voluptas nihil debitis quia. Nobis et alias nulla omnis rem maiores ipsam.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(45, 'Vallie West', 'Reprehenderit reprehenderit qui sint tempore reiciendis. Ut hic ut fugit voluptas sit perferendis. Harum eius impedit repellendus aliquid qui porro. Beatae et sequi numquam sint.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(46, 'Danyka Cruickshank', 'Quia illum ex labore praesentium sequi. Autem et ea sit tenetur qui eum. Quod quos vel sit quia illum. Odit consectetur temporibus nesciunt aperiam.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(47, 'Kelley Blanda', 'Aut ut hic voluptatem molestiae repellendus. Qui beatae quia doloribus magni. Ratione et velit non unde voluptatum ab in.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(48, 'Elsa Baumbach', 'Quisquam voluptates eaque explicabo reiciendis. Nihil alias aliquid fuga. Accusamus sequi illum voluptatem consequatur. Ut alias odio labore laborum sint.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(49, 'Dr. Fletcher Jakubowski V', 'Cumque iure dolorum et quos at ut dicta. Molestiae dolore rerum soluta laborum debitis deleniti sit. Alias voluptatem hic quasi cumque voluptas ut quo. Voluptas vel aspernatur in hic eius ex culpa. Facere numquam quos ut qui eaque ut dolores.', '2022-08-13 04:33:09', '2022-08-13 04:33:09'),
(50, 'Fleta Hoeger', 'Rerum placeat nam atque. Voluptatem voluptates quibusdam impedit velit consequuntur. Beatae aut eos nostrum repellat. Et odit ut magnam.', '2022-08-13 04:33:10', '2022-08-13 04:33:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localidad` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tlf` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tlm` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credencial` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `cedula`, `apellido`, `municipio`, `localidad`, `direccion`, `tlf`, `tlm`, `credencial`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kunde.megane@example.com', '$2y$10$idaiunIT10.atUr3DDPaNO566EAZhkYjfFbOCeIYMQ4NArtB2KnrC', 'david mueller', '28743689', 'Price Cruickshank', 'consequatur', 'rerum', 'At iusto consequatur maiores qui ducimus sed necessitatibus. Deserunt et eum soluta quos magnam id.', '30861882', '50464133', NULL, NULL, NULL, '2022-08-13 04:32:57', '2022-08-13 04:32:57'),
(2, 'lschaefer@example.org', '$2y$10$UnKX4Gofm8ZjFCBIcstWT.wC91160dEP17wX3G/uZZEyIJNtOmlhK', 'lafayette morar', '29965668', 'Jimmie Bayer', 'molestiae', 'voluptatem', 'Eius est maxime id qui voluptatem aspernatur. Qui perferendis et reprehenderit at sit eos.', '65588009', '21772473', NULL, NULL, NULL, '2022-08-13 04:32:58', '2022-08-13 04:32:58'),
(3, 'frieda.stehr@example.org', '$2y$10$MVDQaY6lOX2iNRt4Kky8L.dD2a2kh4wEYlosZEP3deeRfB1SISPwa', 'dr. jordyn blanda', '66067321', 'Janessa Robel', 'doloribus', 'distinctio', 'Quo et consequuntur est. Vitae itaque quaerat laborum consequatur voluptates rem dolorem omnis.', '52283807', '56477047', NULL, NULL, NULL, '2022-08-13 04:32:58', '2022-08-13 04:32:58'),
(4, 'evans.kautzer@example.com', '$2y$10$/tRLjwwGbaoO2fDPUBf1re9qVxLvT8NXKuXLfVdGHcn699m1wi3Sq', 'georgiana gleason', '5624372', 'Shania Aufderhar', 'qui', 'esse', 'Velit numquam sed tenetur. Dolores itaque aut incidunt reiciendis ut.', '27307569', '86370446', '7777', NULL, NULL, '2022-08-13 04:32:58', '2022-08-13 04:32:58'),
(5, 'tito.labadie@example.org', '$2y$10$0y4g5UEP16eQpVH3V/xS9elY/sSwpKEJzd0VKZHnbj4RtpnCHjNPe', 'prof. coby ritchie v', '91123628', 'Liam Effertz', 'exercitationem', 'ab', 'Nobis sint voluptas adipisci itaque. Eius voluptatem et voluptas incidunt. Mollitia sed sit eum.', '58379353', '55455162', '7777', NULL, NULL, '2022-08-13 04:32:58', '2022-08-13 04:32:58'),
(6, 'smith.dillon@example.org', '$2y$10$D17rZhaM1q/Lx2j6WlwjP.ClCXT/bXf1fOqBFc3fL5vMN0mCftm4.', 'delphine haley jr.', '90865122', 'Jamison Mertz', 'quas', 'ipsum', 'Et harum corporis numquam fuga reprehenderit. Harum sed at delectus error sunt iste.', '11512100', '45011891', NULL, NULL, NULL, '2022-08-13 04:32:58', '2022-08-13 04:32:58'),
(7, 'kenya92@example.com', '$2y$10$G6HvCiNHTXdy/1iLTc8ULel4qyK6tuIkqj0ZLP0W9A/RthtG/VPLW', 'miss meredith stark', '94247317', 'Ms. Litzy Langworth', 'minima', 'quisquam', 'Qui hic et sed qui neque. A harum est ea sit. Possimus quibusdam quia et rerum corrupti.', '77827517', '11857005', '7777', NULL, NULL, '2022-08-13 04:32:58', '2022-08-13 04:32:58'),
(8, 'devonte.gusikowski@example.net', '$2y$10$1Btj9vElu/IauUQ2c5t0fOiEPrBkYc2jt5AhCmcviXaxS.klV5wPe', 'marianna carter', '54585212', 'Jakayla Feil', 'quo', 'minus', 'Repudiandae maxime aperiam culpa reiciendis quia. Veritatis quos vel enim molestias quis.', '35848660', '12717822', NULL, NULL, NULL, '2022-08-13 04:32:58', '2022-08-13 04:32:58'),
(9, 'quinten03@example.org', '$2y$10$Infpi/IMCsqpTnApmz1GKOc1dSqzDlXdXMnPsTt9aeJuG/Uojqxqi', 'delphia hermiston', '81282798', 'Orval Erdman', 'doloribus', 'perspiciatis', 'Voluptas quasi quo ut mollitia ut minima. Aliquam sapiente quisquam quia voluptate.', '98073496', '82930315', NULL, NULL, NULL, '2022-08-13 04:32:58', '2022-08-13 04:32:58'),
(10, 'qhammes@example.com', '$2y$10$G3po0CUYLmfwBj0ZDAwi..tDB5xWoMx1EfEhLZ5eRRwME76iD3VJ6', 'dr. ryan mraz', '76858301', 'Lois Quitzon', 'quia', 'voluptas', 'Officiis commodi aliquam accusamus alias vero. Voluptatem debitis qui quae.', '75977028', '91944927', '7777', NULL, NULL, '2022-08-13 04:32:58', '2022-08-13 04:32:58'),
(11, 'katrine.towne@example.net', '$2y$10$kiuK2.Cu/JLaXVOB7tV/x.z5a0/Y8kguXNyB2lgXCi9e3Vo.kuXu.', 'prof. kaci huels', '93482641', 'Kody Effertz', 'dolorem', 'totam', 'Necessitatibus dolor nam tempora mollitia est placeat. Eveniet doloribus fuga quae deleniti.', '56084044', '15587721', NULL, NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(12, 'serenity89@example.net', '$2y$10$cf3a4G90BNJf.WOFzUIAE.mBPhX8/krXzl961LBr46NcCaEvKlplC', 'jocelyn rau', '65353955', 'Prof. Haven Littel Jr.', 'esse', 'sit', 'Doloremque et id fuga ut ullam. Illum ad enim voluptatibus doloribus hic est deleniti.', '57964995', '78129973', '7777', NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(13, 'orlo.sporer@example.org', '$2y$10$4yVEhxjqbWUS08LFZO2Ezey3aQCGc0PoIRPYCsYf/N/ok4uLowZFa', 'miss alysson raynor md', '6790937', 'Kaylin Pfeffer III', 'veniam', 'et', 'Facilis adipisci adipisci non libero. Et tempora alias dolores. Optio rem nesciunt dolores.', '41705490', '60463647', '7777', NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(14, 'pearlie53@example.net', '$2y$10$JT0WZfbC1jKTr.lVgL6V9eouRbNTUGq4a7bLOLVW3Dka9Fni0hqru', 'halle mohr jr.', '7978325', 'Ottis Halvorson', 'rerum', 'quia', 'Nulla sit facilis ut modi quod autem. Et eveniet fuga iste provident quod sit iusto.', '44958503', '92635347', NULL, NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(15, 'parker.rippin@example.net', '$2y$10$IYXLxmPruE9mRhIEYjyY.uK95sRuOTD6rGypwAumVF.bmA3gtsNIG', 'natasha abernathy', '77831068', 'Prof. Adolfo Paucek', 'vitae', 'reprehenderit', 'Rerum perferendis est maxime excepturi. Unde nihil culpa qui.', '98380334', '84072063', '7777', NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(16, 'angelica93@example.com', '$2y$10$gVYTn619L8jd5pu8ROa6juUDao82B6uCRACObzvnLNzXcxOydVWx.', 'mr. wade volkman dvm', '62770537', 'Mrs. Marina Schmeler II', 'harum', 'vitae', 'Rerum molestiae et neque porro minus quia hic hic. Vitae iste dignissimos repudiandae commodi.', '23673084', '91838728', NULL, NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(17, 'effertz.alysha@example.com', '$2y$10$nGoRCjbFpixnE2ehF6Gqm.EL.5jJqdyY5FNHMAkKOCqwpVbA5vgyq', 'miss adeline weber iv', '94484991', 'Brennan Kozey V', 'a', 'cupiditate', 'Dicta sit veniam dolore similique omnis suscipit et. Sit ipsam ut sit.', '98441063', '94867890', NULL, NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(18, 'devonte77@example.com', '$2y$10$myZlp3Fw1EjVfdUTuXGkNuqU2VgKok.BjVXDz.vtgc9xlxBjeKYx6', 'tobin botsford', '14121767', 'Kolby Cummerata', 'hic', 'sapiente', 'Eum eos eum fugiat dicta et ut sit. Architecto rerum et enim. Eos sed omnis illum sunt.', '55592580', '96085619', NULL, NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(19, 'genesis21@example.com', '$2y$10$a5vw3/wLiYBzIzQ7WMYXzu2YE/lKdkQa4KadjbpIiny2sWCVELvzO', 'prof. lavinia stark', '87987681', 'Mr. Forest Hauck', 'sit', 'voluptas', 'Perspiciatis sit laborum nesciunt vel repudiandae tempore. Quo quo ex facere esse.', '34400693', '24417797', '7777', NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(20, 'reba.sanford@example.org', '$2y$10$PNJqgZ1NKpFucXi8eY76NeurAYSZW3KjpUaXCEcmVYonenZDf11ae', 'dr. icie roob', '67208868', 'Mr. Monserrate Bruen IV', 'itaque', 'quas', 'Nihil quidem molestiae ipsa. Aut beatae voluptatibus laboriosam enim quia molestias vitae.', '74945767', '93869575', '7777', NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(21, 'ehamill@example.org', '$2y$10$Ad7s1Or9XrTCXhaYVrAkyeHdfkpe0TYwigwP7MeAopQAHsfOoELOO', 'marjorie rosenbaum', '56020927', 'Dr. Nathaniel Cremin', 'et', 'repellendus', 'Aliquam atque deserunt quam soluta id quas labore. Voluptatem consectetur velit quibusdam.', '36708510', '20070261', '7777', NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(22, 'rodriguez.emma@example.net', '$2y$10$LHzID.aQkgd5PvfrJKHk4uvLL5rvWyt53Br4QhiKoV6K2Ak7aaB1C', 'prof. oral flatley md', '64200311', 'Dr. Eulah Schamberger', 'officia', 'amet', 'Et iste blanditiis laborum. Et quis eos similique qui. Ut nemo exercitationem sint sit.', '69927033', '56730163', NULL, NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(23, 'krystel.ortiz@example.net', '$2y$10$oKVlZFoBAY86WWnoJdvyAOczlOMiP6MAadJ0LJQcqNGkpZcZlS1Wu', 'levi mosciski', '81278473', 'River Jast V', 'distinctio', 'est', 'Ut et animi ea corrupti sequi praesentium. Qui quas aliquid earum voluptatum minima corporis.', '29042532', '17177381', '7777', NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(24, 'allie66@example.com', '$2y$10$pq2jgydlE1iZSw1RU0umLet2z/IGEW7n.Pf123J2sB7iqgk2gnvjK', 'loyce lowe dds', '43386830', 'Earl Mertz', 'cum', 'cum', 'Deserunt vel ea quia sequi nam. Ea vero architecto dignissimos consectetur. Et et totam in.', '76442258', '34558075', '7777', NULL, NULL, '2022-08-13 04:32:59', '2022-08-13 04:32:59'),
(25, 'mervin.ullrich@example.net', '$2y$10$PI0bASFWxqI1C.yf83voO.OrZOdLxnwxWRAGIDqYUgK.zotYg263e', 'dr. rupert kautzer md', '58125587', 'Mrs. Blanche Haag Jr.', 'aut', 'molestiae', 'Adipisci est vero qui qui et. Ut aut excepturi aut et illo vel blanditiis.', '69511598', '60918056', '7777', NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(26, 'tania32@example.org', '$2y$10$i/Uv.4uThFWKdxS18lBD3OkWU9E8chQN4.8A9kiHKddDrDjBj9a8e', 'lisette satterfield', '26293433', 'Janis Nicolas', 'perspiciatis', 'ut', 'Voluptatem debitis alias velit facere debitis. Omnis veritatis enim rem fuga impedit eos.', '49935840', '18960810', '7777', NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(27, 'rodrick25@example.net', '$2y$10$WKrZV3YUfHg8qjhq9zkrsOdqGMnyDa7ME577/rHVqa61Sv4i6xS3a', 'martin schowalter dds', '33967077', 'Ernesto Lowe', 'qui', 'praesentium', 'Ea dolorem blanditiis illum velit error. Eos in id nam. Magni et error aut eos.', '23061281', '88739357', NULL, NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(28, 'zachariah.stracke@example.net', '$2y$10$K.7Z07gcbcOm9htLFWfa5ew63nnsvHvJ5O5B/GACFVpnFuuJSaEUG', 'prof. turner nikolaus', '91846058', 'Kameron Ernser III', 'illum', 'facilis', 'Vel culpa consequatur eum omnis. Ullam eum libero quia eum at unde. Est maxime nostrum blanditiis.', '22590255', '13456282', '7777', NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(29, 'cristian04@example.org', '$2y$10$nwIY7YckyvCq2hKyOurLGuz0qJKZ.HkZ4I8mYXNTPoQ3F8T6fjHF6', 'patsy nolan v', '94810723', 'Fernando Yost', 'eos', 'exercitationem', 'Id est culpa quo voluptatibus. Non minus vero quisquam ratione. Ut est ipsam suscipit voluptas.', '13209534', '31598312', NULL, NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(30, 'eden.bogan@example.net', '$2y$10$9LUfj98FclGmFuJ9Fz08b.hXsQ.Juy28oJx66PnWv1QO6n.G/aW7i', 'prof. eli wyman', '50803822', 'Luz Keebler Sr.', 'eius', 'est', 'Minus maxime distinctio autem ipsum et. Est occaecati perferendis atque animi et libero.', '65035306', '84684905', '7777', NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(31, 'frobel@example.com', '$2y$10$78iTNhX8Ki8TtLxyQOBTw.7UdjzKEyrzLzz337eroi0KhIpgj0PBi', 'kavon kessler', '21824239', 'Prof. Santino Klein', 'consequatur', 'aspernatur', 'Magni dolore velit itaque praesentium. Dolorem non dolores perferendis consequatur quas itaque.', '76656603', '66423855', NULL, NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(32, 'nestor.zboncak@example.org', '$2y$10$VGobPAF9y5Ys3LQ6i6yAVOx2B5AXjzokHTgyEq4bHRLtIU8u44pXq', 'lula larson', '24303519', 'Dr. Elmore Quigley', 'facilis', 'voluptatem', 'Ratione optio totam est. Eligendi autem est officia nobis. Natus quisquam doloremque ad ad officia.', '16290485', '31387266', NULL, NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(33, 'abshire.terence@example.org', '$2y$10$tAeL1SQ9ETSMA.uv44Qoce5hrgDMoKOyAa90PwoWTgqsrhUsXww46', 'prof. harley fay', '30799353', 'Branson Bahringer', 'quod', 'ullam', 'Provident incidunt qui nulla enim et facere. Officiis doloribus fugiat enim eos id.', '54721082', '94651419', '7777', NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(34, 'mack00@example.org', '$2y$10$Vdgmc7elGak2lhsyMTLTs.ljaLNuzwF51MWURO1OWaXkTyXl54scS', 'ambrose cronin', '36653784', 'Freeman Rath DDS', 'cupiditate', 'sit', 'Quia delectus molestiae sequi facere quos. Nostrum error quo maxime quidem totam.', '93455568', '33162359', NULL, NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(35, 'hbarrows@example.com', '$2y$10$rrqN1dE0S7uQ6J8fnzNXUuK8OJ/e068djECv5AYu3U5iaKRkGAYI2', 'audrey huel', '29938828', 'Daryl Emmerich', 'enim', 'voluptate', 'Aut omnis rerum unde harum in dicta. Exercitationem neque assumenda est molestias modi.', '92111519', '43724663', '7777', NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(36, 'haley.solon@example.org', '$2y$10$hmJ30uF53MoE/W1LVUHt7uJWX8eoyLFul48MVRs8bGPKs0iCqeBje', 'miss monique satterfield ii', '93725400', 'Ms. Estell Marquardt', 'animi', 'dignissimos', 'Nam dolores libero iusto hic et. Molestiae assumenda beatae voluptatem quia.', '85654483', '14936683', '7777', NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(37, 'harvey.enrique@example.net', '$2y$10$0tSQKY9XQzUoSVX8wa/Sf./QkK5AFw13dYnyfnQfH3I9zpdVDXxWS', 'jackie veum', '96753477', 'Dr. Andrew Hand Sr.', 'pariatur', 'fugiat', 'Libero autem nemo eos nesciunt consectetur nihil. Saepe expedita ut repellendus qui laboriosam.', '38379140', '29400664', NULL, NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(38, 'allie.osinski@example.com', '$2y$10$A2aOlT8mB/OIInUW1iG.COCF0kw3SoUOiFe7rolMfAGBNp6uwdTty', 'cynthia stamm', '6572801', 'Ms. Mercedes Borer DVM', 'illum', 'quisquam', 'Modi beatae sint ad. Quod sapiente fuga ut iste rerum quos doloremque adipisci.', '91302802', '73953481', '7777', NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(39, 'fritsch.annetta@example.net', '$2y$10$lZABNNGT4qE/Cr3T9T9I/OybD2JSY5M5ECsKCoZtoKJHgl1TX.reu', 'leopold windler', '4144108', 'Viviane Schmidt DVM', 'molestiae', 'autem', 'Reiciendis et adipisci libero est rem. Eum est inventore sit architecto molestiae qui ipsa.', '35091936', '62138400', NULL, NULL, NULL, '2022-08-13 04:33:00', '2022-08-13 04:33:00'),
(40, 'bill.kunde@example.net', '$2y$10$8h01CbwdxAiWdXKS9gIh4.pm45JCDMG.UyDoy/PiOKXWq/WO.qNLC', 'lurline mante', '67422175', 'Shania Breitenberg', 'animi', 'reprehenderit', 'Doloribus ut id asperiores tenetur totam. Et qui quia et modi. Voluptate qui numquam minus ducimus.', '99151201', '66380194', '7777', NULL, NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(41, 'fcrooks@example.com', '$2y$10$SpiyI/wyOSykUOInmx4HBuTf0nor7pPdNl4up5SQTrwTh1ISh4XTK', 'miss annabell altenwerth', '21851259', 'Gretchen Walsh', 'commodi', 'cumque', 'Voluptate quo aliquid id optio commodi vitae. Animi commodi soluta natus enim.', '98302615', '60142496', NULL, NULL, NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(42, 'cassin.wilson@example.net', '$2y$10$zOXSzbGA5VPUkCo6xjEj1OkewpSsz5yuE/0DBJX2.ZwnWKEJllFmu', 'mr. brandt beahan', '91176159', 'Mike Upton', 'autem', 'molestias', 'Possimus vel occaecati fugiat incidunt sunt ipsam. Ut hic eum deserunt nesciunt hic maiores.', '37779436', '32865042', NULL, NULL, NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(43, 'heather83@example.net', '$2y$10$Iz.CZhkSZ4/Mq1zevGwVt.EKNfM3PnSlnB4zPa7TuSFfvZdFUOyPm', 'ana carter', '16598862', 'Donnell Miller PhD', 'est', 'enim', 'Quis neque tenetur praesentium ut inventore. Molestias minima reiciendis aliquid et qui.', '32394518', '14086394', '7777', NULL, NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(44, 'cortney98@example.org', '$2y$10$n8Rgn.yDoawU.THRjPGrlOONZk/B11FioD1rLilEC81IdW3rxFMAe', 'mandy considine', '49948361', 'Ariane Gibson', 'neque', 'qui', 'Minus nulla et sit error pariatur. Sed atque et perspiciatis. Dolor et sed sed sunt omnis.', '68391486', '50550625', '7777', NULL, NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(45, 'nicholas.wiza@example.com', '$2y$10$Eudhq0lmBvM4yvaiEexhquHbyoFzQDxVA39JeAEWdKcmShZwgo/qu', 'daryl pacocha', '42065185', 'Llewellyn Rice', 'occaecati', 'voluptas', 'Ut voluptas et at ut est. Magnam similique sit facere.', '19881333', '16190694', NULL, NULL, NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(46, 'neha93@example.net', '$2y$10$60aSSKCuqIRemo3YF/OWOO9ecZnI1SDRDjbNN0IGCvLSRC6lj8ahq', 'marion keebler', '52926479', 'Miss Darby Schumm', 'aut', 'sunt', 'Suscipit voluptatem qui est. Quam non rerum inventore et.', '23554460', '51569224', '7777', NULL, NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(47, 'hruecker@example.com', '$2y$10$cq2V6wI78RbiTO9BNGEjyedWj2AlLP43b5pzVo0t0lGymuSSVqW3G', 'malcolm thompson', '9513094', 'Bessie Blanda', 'dolore', 'voluptates', 'Rem quasi unde dolores pariatur. Rerum sit voluptate molestias et distinctio similique.', '62215646', '96145636', NULL, NULL, NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(48, 'astrid.jaskolski@example.org', '$2y$10$8z50LXwOhwiR7vFbPr7aheRQNr.wxOSBtO23qKOvgZc8KQdfOxm3O', 'coty langworth', '84192217', 'Doug Glover', 'aperiam', 'et', 'Ea totam sunt voluptates illo. Sed dolor cum est autem perferendis velit. Aliquam aut non id qui.', '61795972', '99347877', NULL, NULL, NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(49, 'eulah.senger@example.com', '$2y$10$8Q.JEq8RbbXj8HJsTKk1y.n.gY/IqeMc6Doq84SDGYPzWzdK4Kuli', 'dina hettinger', '64399087', 'Mr. Jerrod Halvorson Jr.', 'quo', 'et', 'Vitae est et voluptatibus et cum aperiam. Et ea repellendus modi dolorem sit.', '24945484', '38726066', NULL, NULL, NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(50, 'adams.arthur@example.net', '$2y$10$Iddg05k0VwWcr8rzzCCljO84nZtH8K6SFO7MitbKAh0JGyxdpPezm', 'ms. rhoda rowe sr.', '48806628', 'Harrison Kovacek', 'est', 'enim', 'Reprehenderit molestias sed et. Sint est sunt soluta quasi nostrum.', '80473640', '85354791', NULL, NULL, NULL, '2022-08-13 04:33:01', '2022-08-13 04:33:01'),
(51, 'alejandrovz2011@hotmail.com', '$2y$10$hGCpjcemNO7Sw9USA8Xb5OafLRaRcodG3aZfKyA1DxihmrhscCE9u', 'josé alejandro', '26841447', 'junin', 'junin', 'rubio', 'las marias', '04147519346', NULL, '7777', NULL, NULL, '2022-08-13 04:48:27', '2022-08-13 04:48:27'),
(52, 'user2@gmail.com', '$2y$10$psf8hHaMLwubYRiRnVHESeOT7paENgSknywQg2UWEWR4mxyYnuMNK', 'josé', '26841448', 'junin', 'junin', 'rubio', 'las marias', '04147519346', '04147519346', NULL, NULL, NULL, '2022-08-13 05:00:58', '2022-08-13 05:00:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_password_unique` (`password`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
