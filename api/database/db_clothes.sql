-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2023 a las 00:57:24
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_clothes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id_client`, `email`, `password`, `name`, `apellido`, `username`) VALUES
(1, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clothes`
--

CREATE TABLE `clothes` (
  `id_product` int(11) NOT NULL,
  `price` float NOT NULL,
  `waistUpClothe` varchar(45) DEFAULT NULL,
  `waistDownClothe` varchar(45) DEFAULT NULL,
  `waistShoes` varchar(45) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clothes`
--

INSERT INTO `clothes` (`id_product`, `price`, `waistUpClothe`, `waistDownClothe`, `waistShoes`, `image`) VALUES
(1, 25, '[value-3]', '[value-4]', '[value-5]', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.digitalsport.com.ar%2Ffiles%2Fproducts%2F613b753769044-501907-500x500.jpg&imgrefurl=https%3A%2F%2Fwww.digitalsport.com.ar%2Ffluid%2Fprod%2Fpack-x-3-remeras-tripack-lisas-fidji-501907%2F&tbnid=GVR_qZtl-3EH6M&vet=12ahUKEwjBtIu8jrn9AhWiR7gEHRwiAVsQMygFegUIARDwAQ..i&docid=ly5n8thWTMdlTM&w=500&h=500&q=remeras&ved=2ahUKEwjBtIu8jrn9AhWiR7gEHRwiAVsQMygFegUIARDwAQ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shopping`
--

CREATE TABLE `shopping` (
  `id_shop` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `product` varchar(40) NOT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `id_client` (`id_client`);

--
-- Indices de la tabla `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id_product`),
  ADD UNIQUE KEY `product` (`id_product`),
  ADD KEY `id_product` (`id_product`);

--
-- Indices de la tabla `shopping`
--
ALTER TABLE `shopping`
  ADD PRIMARY KEY (`id_shop`),
  ADD KEY `id_client` (`id_client`,`id_product`),
  ADD KEY `id_product` (`id_product`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `shopping`
--
ALTER TABLE `shopping`
  ADD CONSTRAINT `shopping_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `clothes` (`id_product`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
