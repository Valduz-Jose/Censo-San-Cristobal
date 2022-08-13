-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2022 a las 04:30:01
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
  `centro` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sintomas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otroSintomas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `infos`
--

INSERT INTO `infos` (`id`, `virus`, `centro`, `sintomas`, `otroSintomas`, `created_at`, `updated_at`) VALUES
(1, 'covid', 'In similique ut et est eum perspiciatis.', 'dolores musculares', NULL, '2022-08-13 06:17:32', '2022-08-13 06:17:32'),
(2, 'variante', 'Et hic voluptas possimus non iure assumenda ipsa repellendus.', 'erupciones en la piel', NULL, '2022-08-13 06:17:32', '2022-08-13 06:17:32'),
(3, 'covid', 'Molestias fugit dolores recusandae sit.', 'tos', NULL, '2022-08-13 06:17:33', '2022-08-13 06:17:33'),
(4, 'viruela', 'Quia aperiam velit rerum incidunt fugiat ut et.', 'dolor de cabeza', NULL, '2022-08-13 06:17:33', '2022-08-13 06:17:33'),
(5, 'variante', 'Officiis assumenda omnis temporibus aut natus cumque enim.', 'dolor de cabeza', NULL, '2022-08-13 06:17:33', '2022-08-13 06:17:33'),
(6, 'nodiagnosticado', 'Excepturi voluptas consequuntur cum dignissimos aut.', 'erupciones en la piel', NULL, '2022-08-13 06:17:33', '2022-08-13 06:17:33'),
(7, 'nodiagnosticado', 'Ipsam omnis modi ut in ex enim corporis.', 'vomito', NULL, '2022-08-13 06:17:34', '2022-08-13 06:17:34'),
(8, 'variante', 'Sed dolorem doloremque iste eveniet quae placeat sed.', 'tos', NULL, '2022-08-13 06:17:34', '2022-08-13 06:17:34'),
(9, 'variante', 'Facilis voluptatum facere ea et eum et deserunt.', 'otroSintoma', NULL, '2022-08-13 06:17:34', '2022-08-13 06:17:34'),
(10, 'variante', 'Vero aperiam ullam officiis dignissimos est aut.', 'dolores musculares', NULL, '2022-08-13 06:17:34', '2022-08-13 06:17:34'),
(11, 'nodiagnosticado', 'Sint dignissimos temporibus nobis delectus voluptates dolorum perspiciatis.', 'tos', NULL, '2022-08-13 06:17:34', '2022-08-13 06:17:34'),
(12, 'variante', 'Illo error rerum atque qui provident excepturi eum.', 'tos', NULL, '2022-08-13 06:17:34', '2022-08-13 06:17:34'),
(13, 'covid', 'Sit exercitationem culpa harum ut.', 'erupciones en la piel', NULL, '2022-08-13 06:17:34', '2022-08-13 06:17:34'),
(14, 'nodiagnosticado', 'Sint cupiditate alias et.', 'dolores musculares', NULL, '2022-08-13 06:17:34', '2022-08-13 06:17:34'),
(15, 'variante', 'Aut corrupti ut qui voluptas quos.', 'otroSintoma', NULL, '2022-08-13 06:17:34', '2022-08-13 06:17:34'),
(16, 'variante', 'Et libero dolorem earum pariatur modi excepturi.', 'erupciones en la piel', NULL, '2022-08-13 06:17:35', '2022-08-13 06:17:35'),
(17, 'viruela', 'Autem ut aliquam eaque et a consequatur.', 'dolor de cabeza', NULL, '2022-08-13 06:17:35', '2022-08-13 06:17:35'),
(18, 'viruela', 'Excepturi est rem est quam ut.', 'tos', NULL, '2022-08-13 06:17:35', '2022-08-13 06:17:35'),
(19, 'covid', 'Nemo consectetur et voluptates delectus non.', 'otroSintoma', NULL, '2022-08-13 06:17:35', '2022-08-13 06:17:35'),
(20, 'covid', 'Commodi quo officiis exercitationem est autem eius.', 'fiebre', NULL, '2022-08-13 06:17:35', '2022-08-13 06:17:35'),
(21, 'variante', 'Dolorem delectus aut sed iusto aut sint.', 'otroSintoma', NULL, '2022-08-13 06:17:35', '2022-08-13 06:17:35'),
(22, 'nodiagnosticado', 'Modi eum temporibus deserunt earum nobis fugiat nostrum quisquam.', 'vomito', NULL, '2022-08-13 06:17:35', '2022-08-13 06:17:35'),
(23, 'viruela', 'Dolorem quaerat omnis qui minima ea non.', 'erupciones en la piel', NULL, '2022-08-13 06:17:35', '2022-08-13 06:17:35'),
(24, 'variante', 'Et architecto neque eum blanditiis sit.', 'erupciones en la piel', NULL, '2022-08-13 06:17:35', '2022-08-13 06:17:35'),
(25, 'covid', 'Suscipit magnam ab dolores rem quae.', 'dolores musculares', NULL, '2022-08-13 06:17:36', '2022-08-13 06:17:36'),
(26, 'nodiagnosticado', 'Repudiandae ut aut quia placeat aut et voluptas.', 'dolor de cabeza', NULL, '2022-08-13 06:17:36', '2022-08-13 06:17:36'),
(27, 'nodiagnosticado', 'Eaque vitae quo sit amet.', 'vomito', NULL, '2022-08-13 06:17:36', '2022-08-13 06:17:36'),
(28, 'viruela', 'Dicta quidem quidem fugiat blanditiis non autem numquam totam.', 'dolor de cabeza', NULL, '2022-08-13 06:17:36', '2022-08-13 06:17:36'),
(29, 'covid', 'Repellendus voluptatem ut optio delectus quibusdam fugiat repudiandae.', 'fiebre', NULL, '2022-08-13 06:17:36', '2022-08-13 06:17:36'),
(30, 'covid', 'Fugiat repellat labore culpa aut.', 'vomito', NULL, '2022-08-13 06:17:36', '2022-08-13 06:17:36'),
(31, 'covid', 'Beatae et corporis non officia sit.', 'vomito', NULL, '2022-08-13 06:17:37', '2022-08-13 06:17:37'),
(32, 'nodiagnosticado', 'Nihil quaerat pariatur et aut sed odit.', 'tos', NULL, '2022-08-13 06:17:37', '2022-08-13 06:17:37'),
(33, 'nodiagnosticado', 'Sint provident sint et harum dicta ut.', 'dolor de cabeza', NULL, '2022-08-13 06:17:37', '2022-08-13 06:17:37'),
(34, 'nodiagnosticado', 'Ut numquam temporibus non vero.', 'fiebre', NULL, '2022-08-13 06:17:37', '2022-08-13 06:17:37'),
(35, 'viruela', 'Ab voluptatem voluptas eum blanditiis.', 'vomito', NULL, '2022-08-13 06:17:37', '2022-08-13 06:17:37'),
(36, 'covid', 'Modi molestiae mollitia quia quae.', 'dolor de cabeza', NULL, '2022-08-13 06:17:37', '2022-08-13 06:17:37'),
(37, 'covid', 'Et animi ab nobis eum repellendus minima.', 'fiebre', NULL, '2022-08-13 06:17:37', '2022-08-13 06:17:37'),
(38, 'covid', 'Accusamus aspernatur est blanditiis non.', 'fiebre', NULL, '2022-08-13 06:17:37', '2022-08-13 06:17:37'),
(39, 'variante', 'Incidunt ut consequatur eum qui.', 'fiebre', NULL, '2022-08-13 06:17:37', '2022-08-13 06:17:37'),
(40, 'nodiagnosticado', 'Veritatis ut sed ut suscipit sed perspiciatis porro expedita.', 'dolor de cabeza', NULL, '2022-08-13 06:17:38', '2022-08-13 06:17:38'),
(41, 'viruela', 'Voluptatum tempore ullam deserunt amet sequi.', 'fiebre', NULL, '2022-08-13 06:17:38', '2022-08-13 06:17:38'),
(42, 'covid', 'Laborum quibusdam deserunt officia quidem aliquam quia sed asperiores.', 'vomito', NULL, '2022-08-13 06:17:38', '2022-08-13 06:17:38'),
(43, 'viruela', 'Beatae iste quia ut autem nisi et error.', 'vomito', NULL, '2022-08-13 06:17:38', '2022-08-13 06:17:38'),
(44, 'viruela', 'Eos praesentium voluptatem necessitatibus alias.', 'vomito', NULL, '2022-08-13 06:17:38', '2022-08-13 06:17:38'),
(45, 'viruela', 'Eum commodi ut nihil veritatis perferendis sint.', 'dolores musculares', NULL, '2022-08-13 06:17:38', '2022-08-13 06:17:38'),
(46, 'nodiagnosticado', 'Et officiis molestiae quisquam omnis enim labore.', 'fiebre', NULL, '2022-08-13 06:17:38', '2022-08-13 06:17:38'),
(47, 'variante', 'Sunt cum quam eaque saepe velit magni delectus.', 'otroSintoma', NULL, '2022-08-13 06:17:38', '2022-08-13 06:17:38'),
(48, 'nodiagnosticado', 'Similique molestiae consequatur et voluptas quia.', 'dolores musculares', NULL, '2022-08-13 06:17:38', '2022-08-13 06:17:38'),
(49, 'viruela', 'Commodi eos porro aliquid et corrupti quia est.', 'vomito', NULL, '2022-08-13 06:17:38', '2022-08-13 06:17:38'),
(50, 'variante', 'Minima doloribus esse aliquam.', 'fiebre', NULL, '2022-08-13 06:17:38', '2022-08-13 06:17:38'),
(26841447, 'viruela del mono', NULL, 'fiebre, ', NULL, '2022-08-13 06:20:14', '2022-08-13 06:20:14');

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
(1, 'Dr. Alexis Wintheiser', 'Reprehenderit numquam mollitia commodi laborum necessitatibus architecto sed ex. Dolore rem et enim. Vero aut omnis illo nostrum eveniet. Ut exercitationem beatae et.', '2022-08-13 06:17:39', '2022-08-13 06:17:39'),
(2, 'Tessie Mayert', 'Repudiandae sed consequatur vero et tempore consequatur. Qui nisi esse numquam nulla id cumque. Voluptatum commodi reiciendis dignissimos fugiat est dolor praesentium.', '2022-08-13 06:17:39', '2022-08-13 06:17:39'),
(3, 'Waino Stark', 'Autem sunt aut quidem vero et expedita voluptatem. Eaque et consequatur quia reprehenderit aperiam. Architecto sit accusamus eligendi minus qui adipisci tenetur temporibus.', '2022-08-13 06:17:39', '2022-08-13 06:17:39'),
(4, 'Milo Breitenberg', 'Explicabo eos consectetur atque sint et dolore inventore quia. Voluptatibus ad consequuntur laudantium. Cupiditate nihil autem doloribus reprehenderit. Et animi consectetur officiis quia qui est.', '2022-08-13 06:17:39', '2022-08-13 06:17:39'),
(5, 'Prof. Annalise Kub IV', 'Veniam officia minus a aut possimus corrupti. Sed eius consequatur qui sunt vitae animi nam. Accusamus dolorem qui quo quaerat et.', '2022-08-13 06:17:39', '2022-08-13 06:17:39'),
(6, 'Miss Eulah Parker', 'Ad doloribus aut sequi sunt eos. Ullam alias quis aut in quis.', '2022-08-13 06:17:39', '2022-08-13 06:17:39'),
(7, 'Bernadette Berge', 'Eum eos quibusdam et enim velit. Voluptates qui quasi iusto ut ut amet. Assumenda tenetur est consequatur sint qui vel deleniti. Adipisci rerum aut unde minima dolorem. Atque deserunt qui recusandae maxime aliquam.', '2022-08-13 06:17:39', '2022-08-13 06:17:39'),
(8, 'Misty Lakin DDS', 'Laboriosam in sit ipsam in eaque atque occaecati. Commodi non culpa consequatur quas quibusdam. Voluptatem tenetur perspiciatis id ut sit accusantium ipsam. Earum iure aut est. Repellat necessitatibus sunt officiis dolorem.', '2022-08-13 06:17:40', '2022-08-13 06:17:40'),
(9, 'Blanca Baumbach', 'Cumque est exercitationem et dolorem voluptatem mollitia soluta. Dolores quos aut quia repudiandae voluptatibus. Excepturi eaque ea quibusdam qui. Et autem qui provident.', '2022-08-13 06:17:40', '2022-08-13 06:17:40'),
(10, 'Yolanda Schaden', 'Eos illum autem aut. Corporis ea dolores dolore commodi. Autem nesciunt ex quo dolore perferendis voluptatem doloribus.', '2022-08-13 06:17:40', '2022-08-13 06:17:40'),
(11, 'Pedro Reichel III', 'In iste at fuga nostrum. Id assumenda molestiae laudantium quis reiciendis voluptas.', '2022-08-13 06:17:40', '2022-08-13 06:17:40'),
(12, 'Miss Krista Beier DDS', 'Totam illum et consequuntur et odio neque. Veritatis et possimus modi aut explicabo autem enim. Expedita provident quidem ad mollitia.', '2022-08-13 06:17:40', '2022-08-13 06:17:40'),
(13, 'Macey Lowe', 'Cum sapiente eligendi id odit sit expedita. Ullam omnis ullam in est. In facilis sit aut illo nisi. Perferendis rerum omnis aliquid praesentium.', '2022-08-13 06:17:40', '2022-08-13 06:17:40'),
(14, 'Americo Larson', 'Rerum molestias sapiente reprehenderit consequuntur sequi placeat. Ipsam voluptate beatae cum inventore. Dolorum rerum quia a adipisci et dignissimos recusandae.', '2022-08-13 06:17:40', '2022-08-13 06:17:40'),
(15, 'Mr. Alphonso Konopelski', 'Itaque itaque accusantium deleniti quidem commodi. Non eligendi libero qui ipsam animi molestias ut. Error commodi ex assumenda et et. Tempore aperiam vel eum sit distinctio asperiores laborum.', '2022-08-13 06:17:40', '2022-08-13 06:17:40'),
(16, 'Omari Collier DDS', 'Ut officiis hic ut veritatis. Ex autem cumque sed dolorem id necessitatibus inventore. Eaque illum blanditiis eius quisquam. Consectetur nemo rerum modi sapiente earum vel magni.', '2022-08-13 06:17:40', '2022-08-13 06:17:40'),
(17, 'Delores Morissette III', 'Quas et at expedita sit voluptatem expedita. Rerum autem ipsa et. Sed aut cupiditate et.', '2022-08-13 06:17:41', '2022-08-13 06:17:41'),
(18, 'Claire Zieme', 'Repudiandae dicta voluptates beatae. Veniam quo incidunt qui eum autem laboriosam. Voluptatem magni laboriosam maiores corrupti aut eveniet.', '2022-08-13 06:17:41', '2022-08-13 06:17:41'),
(19, 'Winnifred Schaden', 'Cum sint reiciendis excepturi maxime culpa quis. Aperiam maiores placeat dolore fugiat. Eius ab eos qui qui tempora molestias. Voluptatibus est autem recusandae accusantium maxime.', '2022-08-13 06:17:41', '2022-08-13 06:17:41'),
(20, 'Brant Kilback', 'Et dolorum consequatur quo voluptatibus non quaerat sapiente perspiciatis. Et possimus amet reiciendis aut. Perferendis qui omnis possimus voluptatum necessitatibus. Aliquid quia dicta ut sequi iusto illo.', '2022-08-13 06:17:41', '2022-08-13 06:17:41'),
(21, 'Parker Swift', 'Iure numquam nisi aut quae ut. Aut corrupti eum voluptatum non. Sit veniam sit occaecati quod dolor architecto veniam. Sed qui quod recusandae ab fugit architecto.', '2022-08-13 06:17:41', '2022-08-13 06:17:41'),
(22, 'Caleigh Medhurst', 'Consequatur minima nihil fugiat qui quis voluptatum. Dolor expedita rerum libero tenetur. Fuga eligendi corrupti fugit consequatur. Ut quis rerum et. Rerum doloribus nihil et delectus consequatur.', '2022-08-13 06:17:41', '2022-08-13 06:17:41'),
(23, 'Winifred Brekke', 'Eaque perspiciatis voluptatem dolores sunt eligendi. Officiis illum nulla debitis sint. Dolores facilis rem consequatur aperiam voluptas dolorem sit.', '2022-08-13 06:17:41', '2022-08-13 06:17:41'),
(24, 'Libbie Ondricka II', 'Tempora fugiat esse sit rem voluptatem minus et. Molestiae sequi sequi id veniam officia sit.', '2022-08-13 06:17:41', '2022-08-13 06:17:41'),
(25, 'Bertram Senger', 'Et quia dolores voluptatibus tenetur omnis. Quas inventore vel omnis id voluptatem quo autem. Dolorem nobis dolores nulla alias facilis nihil.', '2022-08-13 06:17:41', '2022-08-13 06:17:41'),
(26, 'Nathanael Kemmer', 'Deleniti aliquid id dignissimos sapiente et praesentium in praesentium. Nihil rem illum cumque quisquam libero facere. Repellendus dolor reiciendis quasi corrupti deserunt.', '2022-08-13 06:17:41', '2022-08-13 06:17:41'),
(27, 'Prof. Patsy Kreiger Jr.', 'Non est voluptatem alias velit omnis occaecati totam. Quae placeat ex odio aspernatur iste. Nesciunt non est impedit ut dolore nihil. Quis asperiores quod rerum eius quam corporis porro. Qui inventore nostrum ea.', '2022-08-13 06:17:42', '2022-08-13 06:17:42'),
(28, 'Mustafa Stroman', 'Nesciunt voluptatum corrupti et omnis et. Iusto qui impedit sit qui aut error quia.', '2022-08-13 06:17:42', '2022-08-13 06:17:42'),
(29, 'Dr. Ross Walker III', 'Iste a laborum maxime. Veritatis dolorem animi voluptas nemo similique dolorem. Consequatur temporibus earum ipsa vel repudiandae velit eveniet voluptatibus. Laudantium a minus est unde aut.', '2022-08-13 06:17:42', '2022-08-13 06:17:42'),
(30, 'Dakota Bins', 'Adipisci vero et quos fugit qui dolor facere. Qui vero aperiam est sapiente cumque facilis enim. Ut optio quae necessitatibus temporibus inventore explicabo. Nulla quia omnis voluptatem distinctio quidem temporibus. Omnis sed quia eos veritatis.', '2022-08-13 06:17:43', '2022-08-13 06:17:43'),
(31, 'Josefina Witting PhD', 'Praesentium quis et ex. Animi aut ut dolorem voluptatem libero tempora. Suscipit velit quo et quia repellendus. Quo nulla vel hic.', '2022-08-13 06:17:43', '2022-08-13 06:17:43'),
(32, 'Hellen Considine', 'Repudiandae nostrum unde officia enim quidem minima. Rerum inventore modi officiis aut qui enim voluptate. Recusandae asperiores quis tempore aut. Fugiat ut provident suscipit consectetur rerum sapiente deleniti.', '2022-08-13 06:17:43', '2022-08-13 06:17:43'),
(33, 'Mr. Adolfo Hauck', 'Aperiam culpa perferendis id rem facere molestiae animi nihil. Necessitatibus tempora et dignissimos numquam explicabo.', '2022-08-13 06:17:43', '2022-08-13 06:17:43'),
(34, 'Weldon Barton', 'Ducimus a labore et eos aspernatur quia molestiae. Minima quis et et velit est molestias eum eaque. Temporibus nisi voluptates ut facilis aliquid corporis aliquam. Quaerat ea provident id.', '2022-08-13 06:17:43', '2022-08-13 06:17:43'),
(35, 'Deven Hartmann', 'Incidunt nihil dolor illo. Tenetur ut cum debitis aut consectetur ut deserunt. Tempore explicabo illum totam explicabo totam expedita. Eius ea amet eum fugit.', '2022-08-13 06:17:43', '2022-08-13 06:17:43'),
(36, 'Dorian Harvey', 'Dicta blanditiis voluptas officia impedit. Officiis hic eveniet voluptatem qui ipsum qui accusantium dolores. Saepe sed perferendis non quae et.', '2022-08-13 06:17:43', '2022-08-13 06:17:43'),
(37, 'Pat Mohr', 'Pariatur vero porro nihil beatae et rerum. Voluptas voluptas aspernatur qui qui rem sit eaque.', '2022-08-13 06:17:43', '2022-08-13 06:17:43'),
(38, 'Jordan Shanahan MD', 'Debitis veniam ratione minus alias sequi. Quas eius doloribus dolorum ut adipisci perferendis eum. Magni maxime consequuntur laudantium dignissimos.', '2022-08-13 06:17:43', '2022-08-13 06:17:43'),
(39, 'Prof. Andres Gleichner', 'Aut alias ut quia. Accusantium modi ut aliquid tenetur facere magni sit. Sed fugiat quis placeat aut.', '2022-08-13 06:17:43', '2022-08-13 06:17:43'),
(40, 'Prof. Vinnie Wolf II', 'Cum et non expedita qui omnis. Sunt hic dolore qui non. Occaecati eum quas est voluptas eius. Voluptatem odit quia magni porro perferendis facere.', '2022-08-13 06:17:43', '2022-08-13 06:17:43'),
(41, 'Yoshiko Stoltenberg', 'Voluptatem tenetur iste nihil fuga asperiores dolores qui. Quisquam aut aliquam id est. Dolor fugiat tempora sed quas est aut architecto.', '2022-08-13 06:17:44', '2022-08-13 06:17:44'),
(42, 'Emelie Pollich', 'Qui voluptatem incidunt labore fugit deserunt omnis. Et itaque repudiandae suscipit. Aut corrupti expedita placeat aut nihil saepe rerum autem. Harum hic eveniet velit ut.', '2022-08-13 06:17:44', '2022-08-13 06:17:44'),
(43, 'Lessie Abernathy', 'Molestiae rerum ut necessitatibus praesentium. Reprehenderit est ut non ad quis vel ad. Fuga qui consequatur porro rem quis deleniti labore mollitia. Hic quidem voluptas earum reprehenderit ad illum tempora. Dignissimos qui fugiat perferendis provident inventore dolore.', '2022-08-13 06:17:44', '2022-08-13 06:17:44'),
(44, 'Ruthie Sauer', 'Nihil ut vel numquam. Nihil quia consequatur aspernatur nesciunt nemo.', '2022-08-13 06:17:44', '2022-08-13 06:17:44'),
(45, 'Prof. Emiliano Feest', 'Sed id aperiam veniam et non vel voluptatem rerum. Deleniti neque qui dolor non ut. Excepturi temporibus qui libero fuga quod velit omnis. Perferendis est vel quos laudantium necessitatibus.', '2022-08-13 06:17:44', '2022-08-13 06:17:44'),
(46, 'Andreanne Hoppe', 'Illo labore fugit deleniti id est. Dolor vero necessitatibus omnis. Officia odio aut quia non autem. Molestiae tempora eum tenetur. Aut illo vel est ut rerum dolores vel.', '2022-08-13 06:17:44', '2022-08-13 06:17:44'),
(47, 'Dr. Roma Hudson', 'Est exercitationem a corporis sit. Voluptates velit facilis perferendis impedit distinctio. Et qui eum neque dolor cupiditate.', '2022-08-13 06:17:44', '2022-08-13 06:17:44'),
(48, 'Magdalena Langworth', 'Beatae praesentium quo quam nobis. Dolor eum fugit et aut est. Sint minima laborum ut quasi quod voluptatem adipisci.', '2022-08-13 06:17:44', '2022-08-13 06:17:44'),
(49, 'Mrs. Tyra Flatley', 'Perspiciatis quisquam beatae quia et expedita. Officiis dolorem eligendi optio sunt provident labore.', '2022-08-13 06:17:45', '2022-08-13 06:17:45'),
(50, 'Dolores Witting', 'Neque neque culpa ipsa eos enim quaerat modi. Id ut omnis tempora quibusdam laboriosam. Facere molestiae et expedita tempore aliquid est consequatur. Nulla facere sed odio vel dignissimos temporibus.', '2022-08-13 06:17:45', '2022-08-13 06:17:45');

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
(1, 'pblick@example.com', '$2y$10$Izs3EOIwlryAbAcFuMN8suJWx.SSUuT45F.JVDS1oSa8jm5CBKlWi', 'jennifer towne', '29578673', 'Alessia Fadel', 'voluptas', 'molestiae', 'Consequatur quis consequatur deserunt. Deserunt sit aut tempora officiis vero.', '45168016', '45508433', NULL, NULL, NULL, '2022-08-13 06:17:27', '2022-08-13 06:17:27'),
(2, 'kassandra60@example.net', '$2y$10$YEQCMREaWLCnQd3qT1FDweMGxVEPbPcwOFvXvm1FOsyEJApbkSwYO', 'randi bednar', '95312727', 'Alicia Gleichner I', 'non', 'suscipit', 'Iure ad est nemo ab numquam. Aut eum unde quo alias numquam. Quos optio sunt neque.', '44403784', '93263475', '7777', NULL, NULL, '2022-08-13 06:17:27', '2022-08-13 06:17:27'),
(3, 'daryl.bahringer@example.org', '$2y$10$FZn0k8Jy7O8T76EnFNbAhOSwD5NHiEKVXRX4sdlu.d37PPoHLrmUi', 'wendell jacobi', '28420813', 'Micaela Kozey II', 'ut', 'nesciunt', 'Quaerat impedit voluptas dolores pariatur et. Sed illum inventore a ad quo dolores ut sed.', '46159054', '47230137', NULL, NULL, NULL, '2022-08-13 06:17:27', '2022-08-13 06:17:27'),
(4, 'durward.doyle@example.net', '$2y$10$yNPO1lJLBVBW9aLDHL73SOCIWpfrD.BTQt8JAyhaBhU1dEeaXPiFW', 'mrs. ines murray dds', '11896084', 'Alexandra Romaguera', 'et', 'aut', 'Quidem reprehenderit a ullam minus veniam harum et enim. Sed nesciunt dolores sit aperiam.', '71578684', '74362486', NULL, NULL, NULL, '2022-08-13 06:17:27', '2022-08-13 06:17:27'),
(5, 'thompson.ludie@example.com', '$2y$10$N3QirsglrM7Vi06xJ8HwX.ebjEHoPfnuWKK1oHiUAcMZKI8nsMV1i', 'matilde harris', '63209469', 'Oscar Stanton', 'exercitationem', 'est', 'Qui similique ut quia ut ea. Ut maxime quidem quasi amet. Suscipit corporis non accusantium et.', '49947032', '40904057', NULL, NULL, NULL, '2022-08-13 06:17:27', '2022-08-13 06:17:27'),
(6, 'bethel.hyatt@example.net', '$2y$10$5kc.ckogLMC6OrncXzc13Oc86CookQyMk1Cz0zunY0lxCRk6PkLfa', 'cecilia ebert v', '94280783', 'Laurie Nader', 'molestiae', 'ut', 'Iste dolor pariatur nisi non enim commodi. Harum ducimus dicta aperiam veritatis quia.', '25720274', '83934041', NULL, NULL, NULL, '2022-08-13 06:17:27', '2022-08-13 06:17:27'),
(7, 'connelly.dallin@example.com', '$2y$10$7qKPyRX/Z.QVAolKH9XqCeYRDJOGA5cPhATADMNEAtrNDLruLViF.', 'meagan davis', '19088750', 'Mr. Trever Bernier MD', 'aspernatur', 'culpa', 'Architecto et est sit voluptatem. Et laborum voluptatem soluta. Quasi natus et fugit consectetur.', '76411507', '29012394', '7777', NULL, NULL, '2022-08-13 06:17:28', '2022-08-13 06:17:28'),
(8, 'nelle.ledner@example.org', '$2y$10$YUrmoTu15VNlYh4kt92WuuxHGKKotR5qh1fclUBL4CFI928A6PiOu', 'ms. teresa turner', '91427411', 'Princess Cassin', 'hic', 'sint', 'Delectus nostrum sed nihil error quia. Aperiam rerum accusantium provident et vel nihil voluptate.', '38945319', '19278470', NULL, NULL, NULL, '2022-08-13 06:17:28', '2022-08-13 06:17:28'),
(9, 'nickolas06@example.com', '$2y$10$xNJDoHpujbvsPdxrGg6Vz.GUoTenedejUi0dA.pPI5NJY22SczrXC', 'carrie graham dds', '21219490', 'Mrs. Rubye Pollich Sr.', 'ut', 'nesciunt', 'Aliquid aut sequi aut fuga magni. Expedita nihil molestiae optio sit similique commodi.', '24062648', '57797630', NULL, NULL, NULL, '2022-08-13 06:17:28', '2022-08-13 06:17:28'),
(10, 'wallace.berge@example.net', '$2y$10$wHiDiE.fXfPvBUFIMZtNOu5zRGYgJRs4DzKCmVK7cnCDhKL17CBjS', 'garfield christiansen', '33097865', 'Mr. Wilford Brakus I', 'commodi', 'facilis', 'Et molestiae aut ut alias. Et repellat optio est. Repellendus est qui dolore odio soluta itaque.', '95905214', '92018822', NULL, NULL, NULL, '2022-08-13 06:17:28', '2022-08-13 06:17:28'),
(11, 'kayli33@example.org', '$2y$10$Kd6xCUILInPVGEtgltYqcOol2WJbeGvtNC3PY6S25e.1/SFAWo0Nq', 'wilma schultz', '88093873', 'Maribel Borer', 'fuga', 'quo', 'Ut magnam nisi sit ea temporibus. Iste quibusdam aliquid quo alias eos qui doloribus commodi.', '83539611', '36993703', '7777', NULL, NULL, '2022-08-13 06:17:28', '2022-08-13 06:17:28'),
(12, 'floyd95@example.net', '$2y$10$S7K4yhfj5JNZWnhuB6UaYuzRRzS7Emgik35Cla3DBm90h3CtO3W6y', 'prof. delpha hodkiewicz', '69606855', 'Prof. Kaycee Harvey', 'culpa', 'sed', 'Esse cumque rem atque aut enim numquam. Et facilis libero nam vitae ratione earum.', '38835867', '55581807', '7777', NULL, NULL, '2022-08-13 06:17:28', '2022-08-13 06:17:28'),
(13, 'boehm.lysanne@example.com', '$2y$10$EjGpZjyszgcJIfGlVf5/SOZzsQ6yEBbD82tJ8gSKi42o8ymwaHzEC', 'prof. ronny rempel iv', '89643408', 'Prof. Emerson Mertz', 'ut', 'rerum', 'Et ut quisquam enim minima ducimus et at. Et neque qui esse.', '84615459', '29947302', NULL, NULL, NULL, '2022-08-13 06:17:28', '2022-08-13 06:17:28'),
(14, 'vern.davis@example.org', '$2y$10$bLzVGVi58lYI6a1CnYxDOOS.kcEcxE4tzCbOm/b/Yv1hP3YC1McFe', 'amira quitzon', '77797620', 'Tierra Brekke', 'consequuntur', 'dolor', 'Et eos velit sit atque. Doloribus modi quo ut dolore reiciendis minus ea.', '86725244', '39215396', '7777', NULL, NULL, '2022-08-13 06:17:28', '2022-08-13 06:17:28'),
(15, 'stokes.cynthia@example.net', '$2y$10$5WUKUITefG7QZsmRPX4kPOq7yNWeOb7qPTlrWzrUdJQnA0k62t.cq', 'bertram greenfelder', '90188440', 'Dr. Ova Thompson I', 'earum', 'et', 'Nisi quo omnis explicabo reprehenderit sed. Ex excepturi voluptas sint. Illo qui aperiam beatae.', '43646037', '43265229', '7777', NULL, NULL, '2022-08-13 06:17:29', '2022-08-13 06:17:29'),
(16, 'dietrich.lacey@example.com', '$2y$10$KjnP29hPh6IP./0bz20bIeke/QA5T8acOeL4bPsOMSQ77MFHkGXPi', 'prof. addison lockman', '44239913', 'Ulises Pouros', 'incidunt', 'et', 'Et et ex qui. Asperiores perspiciatis ad dolorem nihil. Sint perspiciatis voluptate facere dolorum.', '25922937', '87505135', '7777', NULL, NULL, '2022-08-13 06:17:29', '2022-08-13 06:17:29'),
(17, 'runolfsson.aric@example.net', '$2y$10$VfQ.FcSt4S5vOc.0WCPIpus3SQl.hknHEac9SHvoOT5eLYNLBGHbi', 'mr. ryann willms', '23054753', 'Bella Kiehn', 'amet', 'ut', 'Maxime nesciunt atque in dolor quo nobis. Qui vero fugit qui eum earum non.', '34104881', '26997181', '7777', NULL, NULL, '2022-08-13 06:17:29', '2022-08-13 06:17:29'),
(18, 'polly86@example.net', '$2y$10$8U17VLqsYDod46ps0MpMH.R480dVfFe93w4K6EjqVB6uxAzdcQ8e2', 'carolanne schuster v', '37462642', 'Meredith Mante IV', 'sunt', 'ea', 'Alias voluptatem corrupti eum quisquam sed. Ut qui magnam voluptatem. Rerum nisi voluptate id ea.', '49145937', '38271252', NULL, NULL, NULL, '2022-08-13 06:17:29', '2022-08-13 06:17:29'),
(19, 'hane.margie@example.com', '$2y$10$.OlmEphM3pU2yUQbl4rV6OlMkONOwq0FSeDJcXQJZEKaCHoH6cHZG', 'prof. guy corwin', '38176130', 'Velda Breitenberg', 'et', 'similique', 'Fugiat velit magnam repellat ut. Sunt consequatur id odit inventore.', '60129312', '69963956', NULL, NULL, NULL, '2022-08-13 06:17:29', '2022-08-13 06:17:29'),
(20, 'sammie.graham@example.net', '$2y$10$Q4Z7C6VlzueOcGHhOX0ipuB.P6GrdjEP1j6bhzYkmjLxhgHmV42Vi', 'woodrow shields', '53774283', 'Odie Klein', 'omnis', 'debitis', 'Sapiente et consequatur porro itaque. Magni corrupti molestiae cupiditate sit error.', '26511112', '40132674', NULL, NULL, NULL, '2022-08-13 06:17:29', '2022-08-13 06:17:29'),
(21, 'hcormier@example.com', '$2y$10$R27MDhzDV7qgpImGwvh.Q.uyiAuc.OS0PuXCXy0TCxNXf2ZbNGLC6', 'gregoria keebler', '58909838', 'Guiseppe McClure', 'magnam', 'enim', 'Et dolores vel cupiditate ut beatae. Quisquam beatae dicta voluptas quia. Odit et eos fuga laborum.', '63537688', '51084128', NULL, NULL, NULL, '2022-08-13 06:17:29', '2022-08-13 06:17:29'),
(22, 'schaden.aimee@example.net', '$2y$10$tj3JnB3UpSRL0Ot2hD239.tA7WL6chRw0pD.aYNCSStdKNr2E6JDO', 'freida greenfelder', '91577091', 'Daphnee Moen', 'alias', 'omnis', 'Eligendi ad rerum pariatur. Et et rem voluptas quam. Labore dolores ipsum ex animi voluptates.', '38983214', '61574279', '7777', NULL, NULL, '2022-08-13 06:17:29', '2022-08-13 06:17:29'),
(23, 'monique.mills@example.org', '$2y$10$Q2lXIt.H.4SeOU83Dpx9p.KuacFkwThWavVfPjHopZqnY/LnpGZ66', 'johnathan schuster', '51597499', 'Ms. Vena Bartoletti II', 'quos', 'veritatis', 'Ab a mollitia qui eum illum nihil inventore eum. Sed ipsa ut sint.', '38685282', '78928432', '7777', NULL, NULL, '2022-08-13 06:17:29', '2022-08-13 06:17:29'),
(24, 'kevin.zemlak@example.com', '$2y$10$RN3G5iItt3rKz.JxBk9obO4V9lwTsR8PL0Y/pGJHJNReyHNlZYqSG', 'nova pouros', '33839403', 'Dr. Edd Jakubowski DDS', 'omnis', 'itaque', 'Tempore incidunt et a voluptas architecto ullam. Sint debitis sequi quidem molestias.', '84666419', '73128528', '7777', NULL, NULL, '2022-08-13 06:17:30', '2022-08-13 06:17:30'),
(25, 'mrogahn@example.com', '$2y$10$eIqrQUZ1Ik6sw4s3fR15I.fljwDNhU7noRc0BJgY4vC2k/jchlq5S', 'jacklyn senger', '7603449', 'Dr. Tyrel McCullough', 'nisi', 'possimus', 'Nobis quia cum repudiandae dolores. Eum et doloremque possimus voluptatem ut velit.', '52852900', '18559662', NULL, NULL, NULL, '2022-08-13 06:17:30', '2022-08-13 06:17:30'),
(26, 'clittle@example.net', '$2y$10$JJLqJ9jBmaDrFlS.Iq3J2enweWmkLg62d1lSx/pEDRXYPSowYdxsq', 'jeffry mckenzie jr.', '88877070', 'Ms. Corine Reynolds', 'voluptatem', 'eveniet', 'Dolorum ratione reprehenderit facere ea. Eos beatae doloremque voluptatem ipsum est velit.', '13637911', '51608446', '7777', NULL, NULL, '2022-08-13 06:17:30', '2022-08-13 06:17:30'),
(27, 'douglas.evert@example.org', '$2y$10$mCPVh2d.jj90tqCHUW2DIuH2D1LWOfJaeB36wmcwbibpSQWSoYPDG', 'murphy beahan', '22107705', 'Dennis Glover', 'temporibus', 'qui', 'Quae consequatur quia at quis qui provident. Labore nesciunt et saepe vitae tenetur et.', '78049789', '15468360', '7777', NULL, NULL, '2022-08-13 06:17:30', '2022-08-13 06:17:30'),
(28, 'justus.bailey@example.com', '$2y$10$40/pH.bfcFm7S/SDSnN11.7RVoM2acuSP8bnfDllySECFaADgBHHK', 'dayne dare iv', '83588900', 'Winston Kuhn', 'maiores', 'recusandae', 'Aliquid beatae tempore molestiae unde. Laborum est ex omnis praesentium sunt. Et et enim in et.', '58357921', '99345760', '7777', NULL, NULL, '2022-08-13 06:17:30', '2022-08-13 06:17:30'),
(29, 'xwuckert@example.com', '$2y$10$Q1yqNrvrKeAsIEfvLRF0uOjlqFzEi.IV/e86..V1tNoY1leb6ITC6', 'ms. kiara russel sr.', '31332452', 'Heather Kris', 'eveniet', 'est', 'Corporis doloribus provident odio et. Sed aut culpa dolorem saepe aut dolores.', '11813425', '82916349', '7777', NULL, NULL, '2022-08-13 06:17:30', '2022-08-13 06:17:30'),
(30, 'terence13@example.net', '$2y$10$EhEltyecShbhm/UGprf.ZOFUNuBqZga82ZKK4fYux6nLZsnIIKwd6', 'wyatt streich', '45989210', 'Newton Dicki MD', 'ducimus', 'amet', 'Suscipit qui enim labore. Veniam et ut eius incidunt. Omnis sint eaque consequatur voluptatem quis.', '40822322', '70156425', NULL, NULL, NULL, '2022-08-13 06:17:30', '2022-08-13 06:17:30'),
(31, 'kamren91@example.net', '$2y$10$HTTVi2LAOvxN1vO4fRpYku0Dg4eC0J5cGSqlBy7biC8CVl6iXVyd6', 'mrs. era hauck', '99059958', 'Joseph Schiller', 'asperiores', 'debitis', 'Voluptates distinctio ut illo. Reiciendis et similique aut necessitatibus. Hic nam sunt sunt.', '90054259', '76222048', NULL, NULL, NULL, '2022-08-13 06:17:30', '2022-08-13 06:17:30'),
(32, 'onie50@example.com', '$2y$10$ZT26Q6tCPEQmX7d6iaDjkuSm1X2Ci8CNX418yGZmWFTgxtZTqzuqO', 'mireya schoen', '17948172', 'Filiberto Ryan', 'quas', 'beatae', 'Est ut voluptate adipisci. Consectetur adipisci accusantium nemo beatae eaque dolorum.', '60753643', '13502546', NULL, NULL, NULL, '2022-08-13 06:17:30', '2022-08-13 06:17:30'),
(33, 'cstracke@example.com', '$2y$10$SG/QB.0AdVJSjGESw..V1eEZxspood9X25cGI1UDe.lZ2G4yyPP0e', 'laurel bosco', '84560397', 'Prof. Moshe Brakus', 'maiores', 'id', 'Laudantium consequuntur sit sit. Odit dolores voluptatem qui quia natus doloremque.', '30124332', '27193494', '7777', NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(34, 'jett48@example.net', '$2y$10$wzjdN5BAaz6PtLTQYAgZn.x888YtFDYheTZHYEY/mAwxVJ/U6lUiu', 'miss karen d\'amore', '82858869', 'Dr. Jordyn Gutmann IV', 'enim', 'dicta', 'Quia sint aliquid omnis dolorem dolores maxime. Architecto qui sint non in et.', '66884355', '37553459', '7777', NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(35, 'johnathan89@example.com', '$2y$10$CMbGq7dU6INNK1wt9KJOqOjpn8BiybE4BCGj12FDHQHcGeOxw4wE2', 'asha leuschke i', '55336065', 'Brooke Jones', 'voluptas', 'non', 'Adipisci distinctio eos aut ut officia veniam. Sit sit id mollitia in veniam quisquam.', '78464750', '50644127', NULL, NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(36, 'fokuneva@example.org', '$2y$10$k2ef69irlIblKA20k4Ht2eZYCjW4/jDm4vFtbQTFZMt8govYk539W', 'dr. amir renner', '12067393', 'Miss Angela Mills Sr.', 'blanditiis', 'molestias', 'Nulla consectetur nobis nesciunt delectus. Cumque repudiandae in eligendi sit.', '24419938', '91914331', '7777', NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(37, 'hhegmann@example.com', '$2y$10$LH38J158UM7RapsqYfEoPu67XTDWpkGsWJKp1TGuUIosG55imNAdS', 'thora kovacek', '19691558', 'Grant Morar', 'ullam', 'nam', 'Eum est totam doloribus provident beatae accusantium. Soluta soluta consectetur ad.', '61237054', '34206630', '7777', NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(38, 'johns.brooke@example.net', '$2y$10$SNF8CG6/V1TT4ZBBtjM1yeivbPK.6Y/kCtwdkEt8S5iZqlTHOBeny', 'clemmie steuber', '77047204', 'Prof. Leopoldo Kiehn PhD', 'qui', 'atque', 'Et nihil aut sunt cupiditate. Qui dolor consequatur consequatur aliquam.', '48608925', '61212084', '7777', NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(39, 'nicola.hackett@example.net', '$2y$10$Qc0egyRwO/32rv1XesZMQulbgGrEAS8I1Bk5lz6fkzHHSd2fLVWfm', 'ms. rosalind hammes i', '42329691', 'Raegan McCullough IV', 'nemo', 'placeat', 'Ipsum expedita vel quia quibusdam quis ut pariatur. Et nulla modi officia molestiae pariatur non.', '65011081', '15673132', NULL, NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(40, 'renner.jane@example.org', '$2y$10$1gdP7uVtvqIlHU8W4whr6OxZxKRVEs9Y.XSsiaaT6ff0jC/mxZnSK', 'kameron jacobson', '81368733', 'Alyson Zieme', 'impedit', 'et', 'Quia id eos esse sint maxime quia. Sequi consectetur omnis nisi error. Ut aut ipsum ut accusantium.', '99944826', '97792656', '7777', NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(41, 'wyman.cassidy@example.net', '$2y$10$ZQpFYvjCTn3G0GhA9oh54.aHX3ViGVwm3jz13v3WNu3nNAVrtfTjG', 'miss adela halvorson', '57504599', 'Branson Kessler', 'praesentium', 'sint', 'Illum vitae non error quam excepturi ipsa. Velit doloribus rerum et. Enim laborum et non.', '56281503', '73936401', '7777', NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(42, 'ncasper@example.org', '$2y$10$cRArk8hSIpuBLO03HFqHGuKsKQ9k0y9ksiK5kSjfAmJinDJklW5ne', 'miss matilda conroy iii', '67041139', 'Genesis Champlin V', 'omnis', 'quam', 'Eos qui qui autem laboriosam. Laboriosam sunt ipsum sed cum porro ipsa ducimus veniam.', '90805946', '61792742', NULL, NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(43, 'madilyn00@example.org', '$2y$10$97cf6i43Y.Wh1xzgYt0dFeSpx5vzjrtXsPtXABaovR8TBXtmBUYHS', 'prof. pablo prohaska dvm', '34897913', 'Alford Hill', 'facilis', 'quis', 'Vero ducimus alias porro quas. Atque error repellat omnis voluptatem culpa harum animi velit.', '87876399', '17011494', '7777', NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(44, 'morar.palma@example.net', '$2y$10$7kE4TMPIphyLfDfAc9WNMu2M8JV4HoEP36r.mSIIitvMeQ5QDQBKi', 'miss maria hintz ii', '59804755', 'Thaddeus Waters DVM', 'exercitationem', 'quod', 'Sint libero quia ipsum cumque eius. Ea aut ut unde.', '57458460', '39453180', NULL, NULL, NULL, '2022-08-13 06:17:31', '2022-08-13 06:17:31'),
(45, 'fcronin@example.net', '$2y$10$S5l5ZnkQCRbSsGyns6d1deKGTgLXfKqcwdC9y7tNafGhyqV1jhAd6', 'mrs. bulah abshire dds', '54850709', 'Landen Kovacek', 'autem', 'voluptas', 'Ut quod labore aut ut. Quis sunt saepe dolorem assumenda.', '24297773', '42436901', NULL, NULL, NULL, '2022-08-13 06:17:32', '2022-08-13 06:17:32'),
(46, 'scarlett.homenick@example.org', '$2y$10$FeIgXwshd2ymXgWrccEdV.4NOVZU75eXo.zKzjbu31/LokRvyZrkW', 'shanelle monahan', '25102008', 'Dannie Wiegand', 'quibusdam', 'sequi', 'Voluptas voluptate et ab laborum modi sed corporis. Qui a voluptatem perferendis enim voluptas eos.', '51092641', '84925835', NULL, NULL, NULL, '2022-08-13 06:17:32', '2022-08-13 06:17:32'),
(47, 'zupton@example.org', '$2y$10$zzvvU6KW/6WmZV6/P/Pghu3wa9rDzFnGxkg68Zr6O617NeLjy79Wy', 'prof. delores macejkovic md', '41554525', 'Ms. Candace Ratke DVM', 'illo', 'sunt', 'Dolores distinctio voluptatem et natus quia voluptas. Occaecati dolor mollitia eaque deleniti enim.', '36050759', '65131766', '7777', NULL, NULL, '2022-08-13 06:17:32', '2022-08-13 06:17:32'),
(48, 'rodrigo.strosin@example.net', '$2y$10$26rphpclGHuTQGVCLozVaOlav1Dpuy2phYqjYC4EfmBmcYinArocO', 'prof. devante willms', '63460579', 'Melany Hudson', 'aliquam', 'dolorem', 'Vero nesciunt minima quod voluptatum quo et. Nihil molestias sunt ducimus totam impedit enim.', '32464271', '73699224', NULL, NULL, NULL, '2022-08-13 06:17:32', '2022-08-13 06:17:32'),
(49, 'dena.renner@example.org', '$2y$10$Tw4iZw.1FoIiL3ge83F4fuEY0uTqfZL24AYL6/aHhvLfLfychafRK', 'prof. zane roberts v', '71364881', 'Courtney Bode', 'quis', 'quo', 'Laboriosam adipisci cumque nostrum magni. Omnis dolore qui commodi velit earum ducimus possimus.', '19016985', '61348325', NULL, NULL, NULL, '2022-08-13 06:17:32', '2022-08-13 06:17:32'),
(50, 'koelpin.peyton@example.org', '$2y$10$.vjbcX2bA08BhLwEnT5plOLxLeH9BkLabU8ZFMpQj3nck00ekIuVG', 'charlie satterfield ii', '32249144', 'Zechariah Mann', 'voluptatem', 'consequatur', 'Facere ut corporis eius. Sit molestiae quos quia aliquam odit iure accusantium.', '85703167', '24516149', NULL, NULL, NULL, '2022-08-13 06:17:32', '2022-08-13 06:17:32'),
(51, 'user@gmail.com', '$2y$10$qZ3xh7T.jXdxyIDC3vuiN.4cFlUJHOYwhIGfN5EefXksZ21koyqoq', 'jose', '26841447', 'valduz', 'junin', 'rubio', 'las marias', '02767627616', '04147519346', NULL, NULL, NULL, '2022-08-13 06:19:37', '2022-08-13 06:19:37');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26841448;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
