-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-12-2022 a las 07:41:42
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `curriculum`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `idexperiencia` int(5) NOT NULL,
  `lugar` varchar(50) NOT NULL,
  `tiempoInicio` date NOT NULL,
  `tiempoFinal` date NOT NULL,
  `puesto` varchar(30) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`idexperiencia`, `lugar`, `tiempoInicio`, `tiempoFinal`, `puesto`, `descripcion`) VALUES
(1, 'Pyro Skate shop', '2017-06-04', '2022-12-04', 'Empleado de Mostrador', 'Ventas de menudeo de artículos deportivos, manejo de redes sociales, diseño de promoción y publicidad'),
(2, 'Barbari Pizzeria', '2019-06-04', '2019-11-04', 'Empleado General', 'Atención al cliente, atención en caja y ayudante de cocinero'),
(4, 'Telvista', '2021-04-04', '2022-01-04', 'Agente de Contact Center', 'Atención al cliente en ingles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

CREATE TABLE `info` (
  `idinfo` int(5) NOT NULL,
  `ciudad` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `edad` int(5) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `freelance` varchar(10) NOT NULL,
  `gradoEstudios` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `info`
--

INSERT INTO `info` (`idinfo`, `ciudad`, `edad`, `fechaNacimiento`, `freelance`, `gradoEstudios`, `telefono`) VALUES
(1, 'Mexicali', 21, '2001-12-01', 'Disponible', 'Estudiante de licenciatura, Técnico en programació', '6862272656');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `iduser` int(5) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `passwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`iduser`, `mail`, `passwd`) VALUES
(1, 'ebeltran8@uabc.edu.mx', '12345');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`idexperiencia`);

--
-- Indices de la tabla `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`idinfo`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `idexperiencia` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
