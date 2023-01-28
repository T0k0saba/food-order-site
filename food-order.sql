-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Jan 28. 12:39
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `food-order`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(14, 'sten', 'sten', 'de03b43c7cbcd17c601df19642de9146'),
(15, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(13, 'Pizza', 'Food_Category_899.jpg', 'Yes', 'Yes'),
(14, 'Burgers', 'Food_Category_549.jpg', 'Yes', 'Yes'),
(15, 'Momo', 'Food_Category_543.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_food`
--

DROP TABLE IF EXISTS `tbl_food`;
CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(11, 'Food1', 'asdf', '10.00', 'Food-Name-4881.jpg', 14, 'Yes', 'Yes'),
(12, 'Food2', 'asd', '20.00', 'Food-Name-691.jpg', 15, 'Yes', 'Yes'),
(13, 'Food3', 'asdf', '20.00', 'Food-Name-6424.jpg', 13, 'Yes', 'Yes'),
(14, 'Food4', '123', '21.00', 'Food-Name-4632.jpg', 14, 'Yes', 'Yes'),
(15, 'Food5', 'asf', '34.00', 'Food-Name-3504.jpg', 14, 'Yes', 'Yes'),
(16, 'Food6', 'asdf', '24.00', 'Food-Name-3589.jpg', 13, 'Yes', 'Yes'),
(17, 'Food7', 'asdf', '21.00', 'Food-Name-4792.jpg', 15, 'No', 'Yes');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Food2', '20.00', 2, '40.00', '2023-01-28 10:48:11', 'Delivered', 'Talon Giles', '+1 (341) 376-5958', 'qakap@mailinator.com', 'Impedit aute qui di'),
(2, 'Food5', '34.00', 5, '170.00', '2023-01-28 10:52:46', 'Cancelled', 'Lee Fuller', '+1 (584) 275-3865', 'nerabegufi@mailinator.com', 'Ut alias mollit dele'),
(3, 'Food3', '20.00', 2, '40.00', '2023-01-28 10:53:50', 'On Delivery', 'Kiara Whitley', '+1 (836) 334-8366', 'fybi@mailinator.com', 'Dolor ipsam harum au'),
(4, 'Food6', '24.00', 2, '48.00', '2023-01-28 10:55:00', 'Ordered', 'Erica Crawford', '+1 (547) 277-3784', 'bicityci@mailinator.com', 'Expedita qui laborio');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT a táblához `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT a táblához `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
