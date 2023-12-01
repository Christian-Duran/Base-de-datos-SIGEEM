-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:8000
-- Tiempo de generación: 30-11-2023 a las 18:32:07
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sigeem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID` int(11) NOT NULL,
  `Empresa` varchar(20) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Razon` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID`, `Empresa`, `Nombre`, `Telefono`, `Direccion`, `Razon`, `Email`, `Fecha`) VALUES
(11, 'MultiConstrucciones', 'Ernesto Jose', '6691123456', 'Cerro equisde ', 'La razon de Ernesto', 'ernesto@multi.com', '2023-09-23 16:31:09'),
(16, 'Construcciones Juan', 'Juan', '6691123456', 'La direccion de juan', 'La razon de juan', 'email@hotmail.com', '2023-11-03 08:33:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `razonsocial` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `empresa`, `telefono`, `direccion`, `razonsocial`, `Email`) VALUES
(1, 'Materiales etres', '6671897890', 'Cerro la piedrita', 'La razon1234', 'enrique@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id`, `id_pro`, `cantidad`, `precio`, `id_venta`) VALUES
(1, 1, 2, 14.00, 13),
(2, 1, 2, 14.00, 14),
(3, 1, 2, 14.00, 15),
(4, 1, 2, 14.00, 16),
(5, 1, 2, 14.00, 17),
(6, 1, 1, 14.00, 18),
(7, 1, 1, 14.00, 19),
(8, 1, 1, 14.00, 20),
(9, 1, 2, 14.00, 21),
(10, 1, 10, 14.00, 22),
(11, 1, 20, 14.00, 23),
(12, 1, 10, 14.00, 24),
(13, 1, 100, 16.00, 25),
(14, 1, 5, 16.00, 26),
(15, 9, 1, 5.00, 27),
(16, 1, 10, 18.00, 28),
(17, 7, 20, 3.50, 28),
(18, 1, 10, 18.00, 29),
(19, 10, 10, 1600.00, 29),
(20, 1, 10, 18.00, 30),
(21, 10, 10, 1600.00, 30),
(22, 1, 10, 18.00, 31),
(23, 10, 2, 1600.00, 31),
(24, 1, 11, 18.00, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `preciocompra` decimal(10,2) NOT NULL,
  `precioventa` decimal(10,2) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `stock` int(11) DEFAULT NULL,
  `unidad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `preciocompra`, `precioventa`, `proveedor`, `fecha`, `stock`, `unidad`) VALUES
(1, 'Block 15x20x40', 'Block', 16.00, 18.00, 'Empresa', '2023-09-28 15:30:46', 1, 'Pieza'),
(7, 'Ladrillo', 'Ladrillo de barro 10x5x10', 25.00, 3.50, 'Empresa', '2023-11-03 08:28:02', 1000, 'Pieza'),
(10, 'Concreto', 'Concreto MR 40 Resistencia 1000', 1000.00, 1600.00, 'Empresa', '2023-11-27 10:05:43', -22, 'M3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(10) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Domicilio` varchar(100) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `RazonSocial` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `empresa`, `Nombre`, `Domicilio`, `Telefono`, `RazonSocial`, `Email`, `Fecha`) VALUES
(10, 'Empresa', 'Miguel', 'la tula', '12345', 'larazon', 'email@.com', '2023-09-25 18:40:59'),
(11, 'Concretos', 'Jose Miguel', 'Cerro de jose', '6691123456', 'LaRazonDeJose', 'nuevoemail@mail.com', '2023-09-26 15:04:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Pass` varchar(50) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Email`, `Nombre`, `Pass`, `rol`) VALUES
(1, 'leem@hotmail.com', 'luis', '123', ''),
(3, 'prueba@hotmai.com', 'JoseMiguel', '12345', 'Asistente'),
(4, 'polola@hotmail.com', 'Polola', '12345', 'Administrador	');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `vendedor` varchar(100) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `cliente`, `vendedor`, `fecha`, `estado`, `total`) VALUES
(25, 'Juan', 'EEE', '23/11/2023', 'Presupuesto', 1600.00),
(29, 'Juan', 'EEE', '27/11/2023', 'Presupuesto', 16180.00),
(30, 'Juan', 'EEE', '27/11/2023', 'Presupuesto', 16180.00),
(31, 'Juan', 'EEE', '27/11/2023', 'Presupuesto', 3380.00),
(32, 'Ernesto Jose', 'luis', '29/11/2023', 'Presupuesto', 198.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
