-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bl8gyleulxi04k0qamdr-mysql.services.clever-cloud.com:3306
-- Generation Time: Feb 07, 2023 at 08:53 PM
-- Server version: 8.0.22-13
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bl8gyleulxi04k0qamdr`
--

-- --------------------------------------------------------

--
-- Table structure for table `Order`
--

CREATE TABLE `Order` (
  `id` int UNSIGNED NOT NULL,
  `customer_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_total` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Order`
--

INSERT INTO `Order` (`id`, `customer_first_name`, `customer_last_name`, `customer_address`, `customer_postcode`, `customer_city`, `customer_email`, `customer_phone`, `order_total`) VALUES
(2, 'YooSwaggie', 'Boyyie', 'stridsvägen', '20000', 'kristianstad', 'test11@gmail.com', '0760009706', 20),
(3, 'YooSwaggie', 'Boyyie', 'stridsvägen', '20000', 'kristianstad', 'test11@gmail.com', '0760009706', 40),
(4, 'Simon', 'Bengtsson', 'Hillerödsvägen 6C', '21747', 'Malmö', 'simonbengan8@gmail.com', '+46766119874', 9),
(5, 'YooSwaggie', 'Boyyie', 'stridsvägen', '20000', 'kristianstad', 'test11@gmail.com', '0760009706', 40),
(6, 'YooSwaggie', 'Boyyie', 'stridsvägen', '20000', 'kristianstad', 'test11@gmail.com', '0760009706', 40),
(7, 'YooSwaggie', 'Boyyie', 'stridsvägen', '1002', 'kristianstad', 'test11@gmail.com', '0760009706', 20),
(8, 'YooSwaggie', 'Boyyie', 'stridsvägen', '1002', 'kristianstad', 'test11@gmail.com', '0760009706', 20),
(9, 'YooSwaggie', '', 'stridsvägen', '1002', 'kristianstad', 'test11@gmail.com', '0760009706', 20),
(10, '', '', 'stridsvägen', '1002', 'kristianstad', 'test11@gmail.com', '0760009706', 20),
(11, '', '', '', '1002', 'kristianstad', 'test11@gmail.com', '0760009706', 20),
(12, '', '', '', '1002', 'kristianstad', 'test11@gmail.com', '0760009706', 20),
(13, 'YooSwaggie', 'Boyyie', 'stridsvägen', '1002', 'kristianstad', 'test11@gmail.com', NULL, 20),
(14, 'YooSwaggie', 'Boyyie', 'stridsvägen', '1002', 'kristianstad', 'test11@gmail.com', '0760009706', 20),
(15, 'YooSwaggie', 'Boyyie', 'stridsvägen', '1002', 'kristianstad', 'test11@gmail.com', NULL, 20),
(16, 'YooSwaggie', 'Boyyie', 'stridsvägen', '1002', 'kristianstad', 'test11@gmail.com', '0760009706', 20);

-- --------------------------------------------------------

--
-- Table structure for table `OrderItems`
--

CREATE TABLE `OrderItems` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `qty` int UNSIGNED NOT NULL,
  `item_price` int UNSIGNED NOT NULL,
  `item_total` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `OrderItems`
--

INSERT INTO `OrderItems` (`id`, `product_id`, `qty`, `item_price`, `item_total`, `order_id`) VALUES
(2, 3, 10, 2, 20, 2),
(3, 2, 10, 2, 20, 3),
(4, 3, 10, 2, 20, 3),
(5, 2, 1, 1, 2, 4),
(6, 1, 10, 2, 20, 5),
(7, 3, 10, 2, 20, 5),
(8, 1, 10, 2, 20, 6),
(9, 3, 10, 2, 20, 6),
(10, 3, 10, 2, 20, 7),
(11, 3, 10, 2, 20, 8),
(12, 3, 10, 2, 20, 9),
(13, 3, 10, 2, 20, 10),
(14, 3, 10, 2, 20, 11),
(15, 3, 10, 2, 20, 12),
(16, 3, 10, 2, 20, 13),
(17, 3, 10, 2, 20, 14),
(18, 3, 10, 2, 20, 15),
(19, 3, 10, 2, 20, 16),
(20, 4, 10, 2, 20, 16);

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `images` json NOT NULL,
  `stock_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'instock',
  `stock_quantity` int UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`id`, `name`, `description`, `price`, `images`, `stock_status`, `stock_quantity`) VALUES
(1, 'Gott & Blandat Giants', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 12, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 5),
(2, 'Banana Bubs', '<p>Banan/gräddkola</p>\n<p>Innehållsförteckning: Glukos-fruktossirap, socker, majsstärkelse, vatten, surhetsreglerande medel (äppelsyra, natriumcitrat), potatisprotein, aromämnen, färgämnen: (E150d, E100), kokosolja, ytbehandlingsmedel (karnaubavax).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 8, '{\"large\": \"/storage/products/156622.png\", \"thumbnail\": \"/storage/products/thumbnails/156622-300x300.png\"}', 'instock', 8),
(3, 'Banana Splits', '<p>Fyllig vitchoklad med smak av kola krispig banan.</p>\n<p>Innehållsförteckning: Socker, kakaosmör, torkad banan, HELMJÖLKSPULVER, mjölksocker(LAKTOS), SKUMMJÖLKSPULVER, emulgeringsmedel E322 (SOJALECITIN), naturliga aromer, ytbehandlingsmedel (E414, E904).</p>\n<p>Kan innehålla spår av MANDEL, NÖTTER och VETE.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 8, '{\"large\": \"/storage/products/3827741.png\", \"thumbnail\": \"/storage/products/thumbnails/3827741-300x300.png\"}', 'instock', 6),
(4, 'Ananas', '<p>Ananas</p>\n<p>Innehållsförteckning: Glukosirap, socker, majsstärkelse, gelatin, syror: citronsyra, aromämnen, vegetabiliska oljor (kokosnöt, palmkärna), glansmedel: bivax, carnaubavax, färger: E100, E133.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 9, '{\"large\": \"/storage/products/2147890-1.png\", \"thumbnail\": \"/storage/products/thumbnails/2147890-1-300x300.png\"}', 'outofstock', NULL),
(5, 'Center', '<p>Mjölkchokladpralin med toffeefyllning</p>\n<p>Innehållsförteckning: Socker, glukossirap, kakaosmör, vegetabiliska fetter (palm, shea), HELMJÖLKSPULVER, kakaomassa, SKUMMJÖLKSPULVER, VASSLEPULVER (MJÖLK), salt, aromer (bl.a. vanillin), emulgeringsmedel (SOJALECITIN).</p>\n<p>Kan innehålla NÖTTER.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 8, '{\"large\": \"/storage/products/200423.png\", \"thumbnail\": \"/storage/products/thumbnails/200423-300x300.png\"}', 'instock', 13),
(6, 'Chokladpopcorn', '<p>Innehållsförteckning: Socker, kakaosmör, kakaomassa, MJÖLKSOCKER (LAKTOS), HELMJÖLKSPULVER, majs, VASSLEPULVER (av MJÖLK), kokos- och raps fett, mjölkfett, sirap, emulgeringsmedel (E322), SOJALECITIN, kokosolja, ytbehandlingsmedel, E414 (gummi arabikum).</p>\n<p>Kan innehålla MANDEL, HASSELNÖT, CASHEWNÖT och VETE.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 10, '{\"large\": \"/storage/products/3697328.png\", \"thumbnail\": \"/storage/products/thumbnails/3697328-300x300.png\"}', 'instock', 6),
(7, 'Daim', '<p>Chokladdoppad krokant</p>\n<p>Innehållsförteckning: Socker, palmolja, kakaosmör, kakaomassa, vasslepulver (MJÖLK), SKUMMJÖLKSPULVER, MANDEL(2.9%), SMÖRFETT, vassleprodukt (MJÖLK), sockrad kondenserad SKUMMJÖLK, salt, emulgeringsmedel (SOJALECITIN), aromer.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 6, '{\"large\": \"/storage/products/144085.png\", \"thumbnail\": \"/storage/products/thumbnails/144085-300x300.png\"}', 'instock', 2),
(8, 'Fazermint', '<p>Chokladkonfekt med mintfyllning</p>\n<p>Innehållsförteckning: Socker, kakaomassa, glukossirap, kakaosmör, MJÖLKFETT, emulgeringsmedel (lecitin, bl.a. SOJA), aromer, enzym (invertas).</p>\n<p>Kan innehålla MJÖLK, NÖTTER, MANDLAR och VETE.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 6, '{\"large\": \"/storage/products/200408.png\", \"thumbnail\": \"/storage/products/thumbnails/200408-300x300.png\"}', 'instock', 8),
(9, 'Ferrari', '<p>Vingummi med hallonsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, modifierad majsstärkelse, gelatin, aromämne, surhetsreglerande medel (citronsyra), färgämne (karmin), vegetabilisk olja (kokos, raps), ytbehandlingsmedel (karnaubavax).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 10, '{\"large\": \"/storage/products/200361.png\", \"thumbnail\": \"/storage/products/thumbnails/200361-300x300.png\"}', 'instock', 5),
(10, 'Guldbamsar', '<p>Vingummi med fruktsmaker</p>\n<p>Innehållsförteckning: Glukossirap, socker, gelatin, druvsocker, fruktjuice från koncentrat: äpple, jordgubbar, hallon, apelsin, citron, ananas, syra: citronsyra, frukt- och plantkoncentrat: safflor, spirulina, äpple, fläderbär, apelsin, svarta vinbär, kiwi, citron, aronia, mango, passionsfrukt, vindruva, arom, extrakt av fläderbär, palmolja: ytbehandlingsmedel: bivax vitt och gult, karnaubavax.</p>\n<p>Kan innehålla VETE.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 10, '{\"large\": \"/storage/products/173457.png\", \"thumbnail\": \"/storage/products/thumbnails/173457-300x300.png\"}', 'instock', 9),
(11, 'Kinder Maxi', '<p>MJÖLKCHOKLAD MED EN MJÖLKFYLLNING</p>\n<p>Innehållsförteckning: MJÖLKCHOKLAD 39% (socker, HELMJÖLKSPULVER, kakaosmör, kakaomassa, emulgeringsmedel: lecitiner (SOJA), vanillin), socker, SKUMMJÖLKSPULVER, palmolja, SMÖRKONCENTRAT, emulgeringsmedel: lecitiner (SOJA), vanillin.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 7, '{\"large\": \"/storage/products/2102365.png\", \"thumbnail\": \"/storage/products/thumbnails/2102365-300x300.png\"}', 'outofstock', NULL),
(12, 'Gott & Blandat Giants qq', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 12, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 5),
(13, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 12, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', NULL),
(14, 'Krises godis', '<p>Ananas</p>\n<p>Innehållsförteckning: Glukosirap, socker, majsstärkelse, gelatin, syror: citronsyra, aromämnen, vegetabiliska oljor (kokosnöt, palmkärna), glansmedel: bivax, carnaubavax, färger: E100, E133.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 9, '{\"large\": \"/storage/products/2147890-1.png\", \"thumbnail\": \"/storage/products/thumbnails/2147890-1-300x300.png\"}', 'instock', 1337),
(15, 'Krises godis', '<p>Ananas</p>\n<p>Innehållsförteckning: Glukosirap, socker, majsstärkelse, gelatin, syror: citronsyra, aromämnen, vegetabiliska oljor (kokosnöt, palmkärna), glansmedel: bivax, carnaubavax, färger: E100, E133.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 1337, '{\"large\": \"/storage/products/2147890-1.png\", \"thumbnail\": \"/storage/products/thumbnails/2147890-1-300x300.png\"}', 'instock', 1337),
(16, 'Krises godis', '<p>Ananas</p>\n<p>Innehållsförteckning: Glukosirap, socker, majsstärkelse, gelatin, syror: citronsyra, aromämnen, vegetabiliska oljor (kokosnöt, palmkärna), glansmedel: bivax, carnaubavax, färger: E100, E133.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 1337, '{\"large\": \"/storage/products/2147890-1.png\", \"thumbnail\": \"/storage/products/thumbnails/2147890-1-300x300.png\"}', 'instock', 1337),
(17, 'Krises godis', '<p>Ananas</p>\n<p>Innehållsförteckning: Glukosirap, socker, majsstärkelse, gelatin, syror: citronsyra, aromämnen, vegetabiliska oljor (kokosnöt, palmkärna), glansmedel: bivax, carnaubavax, färger: E100, E133.</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 1337, '{\"large\": \"/storage/products/2147890-1.png\", \"thumbnail\": \"/storage/products/thumbnails/2147890-1-300x300.png\"}', 'instock', 1337),
(18, 'Krises godis', 'Jätte gott, mmmmmm... väldigt gott. wow...', 1337, '{\"large\": \"hejsan.png\", \"thumbnail\": \"bingbong.png\"}', 'instock', 1337),
(19, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 1, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 0),
(20, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 1, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 0),
(21, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 1, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 0),
(22, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 4, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 0),
(23, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 4, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 0),
(24, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 4, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 0),
(25, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 4, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', NULL),
(26, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 4, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 213),
(27, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 4, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 0),
(28, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 4, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 0),
(29, 'Gott & Blandat Giants QQQQQQ', '<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n', 4, '{\"large\": \"/storage/products/1997509.png\", \"thumbnail\": \"/storage/products/thumbnails/1997509-300x300.png\"}', 'instock', 21);

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `applied_steps_count`) VALUES
('e7fc68d3-5037-4703-91ee-6f35965c59b3', 'c327bad222e4eda1808c966d93a4f7619e8ae0b164ec7ef9a038d4876be98773', '2023-02-06 21:42:51.242', '20230206210829_product_order_ordersitems', NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Order`
--
ALTER TABLE `Order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `OrderItems`
--
ALTER TABLE `OrderItems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OrderItems_product_id_fkey` (`product_id`),
  ADD KEY `OrderItems_order_id_fkey` (`order_id`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Order`
--
ALTER TABLE `Order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `OrderItems`
--
ALTER TABLE `OrderItems`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `OrderItems`
--
ALTER TABLE `OrderItems`
  ADD CONSTRAINT `OrderItems_order_id_fkey` FOREIGN KEY (`order_id`) REFERENCES `Order` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `OrderItems_product_id_fkey` FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
