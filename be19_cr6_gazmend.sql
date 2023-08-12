-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 12:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be19_cr6_gazmend`
--
CREATE DATABASE IF NOT EXISTS `be19_cr6_gazmend` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be19_cr6_gazmend`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230811094021', '2023-08-11 11:40:33', 71);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `description` longtext NOT NULL,
  `picture` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonecontact` decimal(20,0) NOT NULL,
  `address` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `description`, `picture`, `capacity`, `email`, `phonecontact`, `address`, `url`, `type`) VALUES
(9, 'Coldplay', '2024-08-21 20:00:00', 'What are the musical characteristics of Coldplay?\r\nColdplay further diversified their sound over their next five studio albums, the most recent being Music of the Spheres (2021). Each album presented a unique theme and added new musical styles to the band\'s original repertoire, including electronica, ambient, pop, R&B, classical and progressive rock.', 'https://media.stubhubstatic.com/stubhub-catalog/d_defaultLogo.jpg/q_auto:low,f_auto,c_fill,g_auto,w_1440,h_960/performer/622/f5909aeb85b2da3233b6153cc864ab99', '80000', 'wienerkonzert2024@mail.at', 1002003, 'Wien StatdHalle', 'https://www.viagogo.at/Konzert-Tickets/Alternative-und-Indie/Coldplay-Karten?AffiliateID=49&adposition=&PCID=PSATGOOKONCOLDP5C46DA39C9&AdID=666263722774&MetroRegionID=&psc=%2c&ps=cy-7512%7cmr-0&ps_p=0&ps_c=926373764&ps_ag=150152467183&ps_tg=kwd-2163017440', 'Music'),
(10, 'Anatevka', '2023-09-02 12:30:00', 'New York, 1916: When the poet Scholem Alejchem is laid to rest, hundreds of thousands line the streets to pay their last respects to the author.\r\n\r\nNew York, 1964: Almost 50 years after Alejchem\'s death, the musical The Fiddler on the Roof by Jerry Bock, Joseph Stein and Sheldon Harnick, based on his stories, celebrates its premiere and immediately becomes a worldwide success.', 'https://events.wien.info/media/full/Volksoper_Au%C3%9Fenansicht.jpg', '200', 'tickets@volksoper.at', 431514443670, 'Währinger Straße 78 1090 Wien', 'https://events.wien.info/en/15dt/anatevka/', 'Music'),
(11, 'Vienna 1900. Birth of Modernism', '2023-08-13 12:37:00', 'Public guided tours\r\n\r\nThe Leopold Museum is a unique treasury of Viennese Modernism and the Wiener Werkstätte. The new permanent exhibition “Vienna 1900. Birth of Modernism” offers insights into the enormous abundance and diversity of the artistic and intellectual achievements of this epoch. Art lovers will be enthralled by the 1,300 exhibits arranged over three floors.\r\nApart from the world’s largest and most significant Egon Schiele collection, masterpieces by Gustav Klimt, the graphics, sculptures, and photographs, there are also exhibits in glass, ceramic, metal, textiles, and leather. Jewelry and furniture are also on display, as are entire apartment furnishings. An exhibition for everyone wishing to experience Viennese Modernism in Vienna.', 'https://events.wien.info/media/full/Wien1900.jpg', 'Open all day', 'info@leopoldmuseum.at', 431525700, 'Museumsplatz 1 1070 Wien', 'https://events.wien.info/en/16kr/vienna-1900-birth-of-modernism/', 'Theater'),
(12, 'Film Festival at Vienna’s Rathausplatz', '2023-09-01 20:00:00', 'For 65 days, City Hall Square is once again a pulsating open-air meeting point: The Film Festival at Rathausplatz presents musical highlights of opera, classical, pop, and rock as well as culinary delights from July 1. That\'s summer in Vienna. Free admission!', 'https://wien.info/resource/image/290814/3x2/310/206/5b3a0db71ea77001470191f083ab17d9/C2C31FC881A598736B55E54BFD5A3AF4/40766-musik-film-festival-rathausplatz.webp', '500', 'fimfestival@rathaus.at', 999999, 'Rathausplatz 1010 Vienna', 'https://www.wien.info/en/music-stage-shows/music-film-festival-353152', 'Film'),
(13, 'Foothills Food Festival', '2023-08-19 12:00:00', 'Join us for the rebirth of the Foothills Food Festival!\r\n\r\nThis year we will feature music from Toby McAllister & The Sierra Sounds, food trucks, a beer garden featuring local craft breweries and more!\r\n\r\nStage sponsored by:\r\n\r\nWOXO, WIGY & Lakeside Norway\r\n\r\nBeer Garden featuring:\r\n\r\nNorway Brewing Co.\r\n\r\nLost Valley Brewing\r\n\r\nFluvial Brewing\r\n\r\nSide By Each Brewing\r\n\r\nSaco River Brewing\r\n\r\nAnd\r\n\r\nFreedoms Edge Cider\r\n\r\n6﻿ 8oz pours included with ticket price with the option to buy more\r\n\r\nDesignated driver tickets available at the door for $10. This will not include any drinks (18+)', 'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F547648459%2F146173676011%2F1%2Foriginal.20230703-174748?w=512&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C38%2C1728%2C864&s=42e4c6864ace27e80d96ee6a72732ef7', '200', 'festivalfood.@food.at', 99999, 'Norway Brewing Company 237 Main Street Norway, ME 04268 United States', 'https://www.eventbrite.at/e/foothills-food-festival-tickets-670921904477?aff=ebdssbdestsearch&keep_tld=1', 'Food'),
(14, 'SK RAPID WIEN', '2023-08-13 15:00:00', 'FOOTBAL MATCH', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj_HVvyp7Fgt6lkUX6y8NmN60-qI1tWx4pvw&usqp=CAU', '15000', 'rapid.rapid.wien', 99999, 'Rapid 1140 wien', 'https://www.google.com/search?q=rapid+spiele+august+2023&sca_esv=556275851&rlz=1C1CSMH_deAT1063AT1063&sxsrf=AB5stBj-jrGIPTGsXCzcOaeWv2PeCzngUA%3A1691837303547&ei=d2PXZMv5IKmJxc8Pnb67oAk&ved=0ahUKEwiLkfuL-daAAxWpRPEDHR3fDpQQ4dUDCA8&uact=5&oq=rapid+spiele+a', 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
