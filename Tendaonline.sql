-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-03-2021 a las 11:05:54
-- Versión del servidor: 8.0.23
-- Versión de PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Tendaonline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `art_id` int NOT NULL,
  `art_nombre` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `art_descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `art_precio` decimal(10,2) NOT NULL,
  `art_img` varchar(200) NOT NULL,
  `art_destacados` tinyint(1) NOT NULL,
  `art_sec_id` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`art_id`, `art_nombre`, `art_descripcion`, `art_precio`, `art_img`, `art_destacados`, `art_sec_id`) VALUES
(1, 'Camiseta roja PUMA', NULL, '34.99', '../images/buy-1.jpg', 1, 3),
(2, 'Zapatos deportivos HRX', NULL, '40.00', '../images/buy-2.jpg', 1, 1),
(3, 'Pantalones grises deportivos', NULL, '25.00', '../images/buy-3.jpg', 1, 0),
(4, 'Polo azul marino Puma', NULL, '65.00', '../images/product-4.jpg', 1, 3),
(5, 'Zapatos deportivos Altos', NULL, '25.00', '../images/product-5.jpg', 0, 1),
(6, 'Camiseta PUMA Negra', NULL, '25.00', '../images/product-6.jpg', 0, 3),
(7, 'Calcetines HRX', NULL, '15.00', '../images/product-7.jpg', 0, 1),
(8, 'Reloj Fossil Negro', NULL, '250.00', '../images/product-8.jpg', 0, 4),
(9, 'Reloj Roadster', NULL, '100.00', '../images/product-9.jpg', 0, 4),
(10, 'Zapatos Negros HRX', NULL, '55.00', '../images/product-10.jpg', 0, 1),
(11, 'Zapatos grises', NULL, '20.00', '../images/product-11.jpg', 0, 1),
(12, 'Pantalon Nike', NULL, '70.00', '../images/product-12.jpg', 0, 0),
(13, 'Camiseta del Diego ', NULL, '45.00', '../images/product-14.jpeg', 0, 3),
(14, 'Camiseta Seleccion Peruana', NULL, '55.00', '../images/product-13.jpeg', 0, 3),
(15, 'Camiseta del Betis', NULL, '60.00', '../images/product-15.jpeg', 0, 3),
(16, 'Sudadera Fila', NULL, '70.00', '../images/product-16.jpeg', 0, 2),
(17, 'Pantalon negro Adidas', NULL, '35.00', '../images/product-17.jpeg', 0, 0),
(18, 'Pantalon gris Siksilk', NULL, '60.00', '../images/product-18.jpeg', 0, 0),
(19, 'Samsung Galaxy Watch Active', NULL, '250.00', '../images/product-19.jpeg', 0, 4),
(20, 'Xiaomi Mi Band 5', NULL, '25.00', '../images/product-20.jpeg', 0, 4),
(21, 'Sudadera Ellese', NULL, '70.00', '../images/product-21.jpeg', 0, 2),
(22, 'Sudadera John Smith', NULL, '65.00', '../images/product-22.jpeg', 0, 2),
(23, 'Sudadera NorthFace', NULL, '75.00', '../images/product-23.jpeg', 0, 2),
(24, 'Sudadera Kaotico', NULL, '55.00', '../images/product-24.jpeg', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `sec_id` tinyint NOT NULL,
  `sec_nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sec_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`sec_id`, `sec_nombre`, `sec_img`) VALUES
(0, 'Pantalones', '../images/category-1.jpg'),
(1, 'Zapatos', '../images/category-2.jpg'),
(2, 'Sudaderas', '../images/category-3.jpg'),
(3, 'Camisetas', '../images/category-4.jpg'),
(4, 'Relojes', '../images/category-5.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`art_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`sec_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
