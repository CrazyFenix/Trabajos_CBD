-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2022 a las 06:45:42
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela_dam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `clave` varchar(4) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `horas_semana` tinyint(4) NOT NULL,
  `horas_totales` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`clave`, `nombre`, `horas_semana`, `horas_totales`) VALUES
('AWEB', 'Aplicaciones WEB', 6, 127),
('CBD', 'Construye BD', 6, 127);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `nombre` varchar(20) NOT NULL,
  `turno` varchar(15) NOT NULL,
  `lider_academia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`nombre`, `turno`, `lider_academia`) VALUES
('Contabilidad', 'Mixto', ''),
('Eléctricidad', 'Matutino', ''),
('Logística', 'Vespertino', ''),
('Mecánica', 'Matutino', ''),
('Programación', 'Mixto', 'Ricardo Méndez Rojas'),
('Recursos Humanos', 'Mixto', ''),
('Soporte y Mantenimie', 'Mixto', 'Silvestre Palafox Morales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `num_control` varchar(14) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) DEFAULT NULL,
  `edad` tinyint(4) NOT NULL,
  `domicilio` text NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `grupo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`num_control`, `nombre`, `apellidos`, `edad`, `domicilio`, `telefono`, `grupo`) VALUES
('20311050750490', 'Gilberto Fabian', 'Correa Gonzalez', 17, 'T U #2B', '4181116532', '5PV'),
('20311050750511', 'Luis Rey', 'Mújica Zacarias', 17, 'San Rafel #67', '4181081072', '5PV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_asignatura`
--

CREATE TABLE `estudiante_asignatura` (
  `num_control` varchar(14) NOT NULL,
  `asignatura` varchar(4) NOT NULL,
  `fecha` date NOT NULL,
  `semestre` tinyint(4) NOT NULL,
  `calificacion` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante_asignatura`
--

INSERT INTO `estudiante_asignatura` (`num_control`, `asignatura`, `fecha`, `semestre`, `calificacion`) VALUES
('20311050750490', 'AWEB', '2022-09-06', 5, 10),
('20311050750511', 'AWEB', '2022-09-06', 5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `nombre` varchar(4) NOT NULL,
  `turno` varchar(10) NOT NULL,
  `representante` varchar(50) DEFAULT NULL,
  `tutor` varchar(50) DEFAULT NULL,
  `carrera` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`nombre`, `turno`, `representante`, `tutor`, `carrera`) VALUES
('1AM', 'Matutino', '', '', 'Recursos Humanos'),
('1AV', 'Vespertino', '', '', 'Recursos Humanos'),
('1AV2', 'Vespertino', '', '', 'Recursos Humanos'),
('1CM', 'Matutino', '', '', 'Contabilidad'),
('1CV', 'Vespertino', '', '', 'Contabilidad'),
('1E', 'Matutino', '', '', 'Eléctricidad'),
('1LM', 'Matutino', '', '', 'Logística'),
('1LV', 'Vespertino', '', '', 'Logística'),
('1M', 'Matutino', '', '', 'Mecánica'),
('1PM', 'Matutino', '', '', 'Programación'),
('1PV', 'Vespertino', '', '', 'Programación'),
('1SM', 'Matutino', '', '', 'Soporte y Mantenimie'),
('1SV', 'Vespertino', '', '', 'Soporte y Mantenimie'),
('3AM', 'Matutino', '', '', 'Recursos Humanos'),
('3AV', 'Vespertino', '', '', 'Recursos Humanos'),
('3AV2', 'Vespertino', '', '', 'Recursos Humanos'),
('3CM', 'Matutino', '', '', 'Contabilidad'),
('3CV', 'Vespertino', '', '', 'Contabilidad'),
('3E', 'Matutino', '', '', 'Eléctricidad'),
('3LM', 'Matutino', '', '', 'Logística'),
('3LV', 'Vespertino', '', '', 'Logística'),
('3M', 'Matutino', '', '', 'Mecánica'),
('3PM', 'Matutino', '', '', 'Programación'),
('3PV', 'Vespertino', '', '', 'Programación'),
('3SM', 'Matutino', '', '', 'Soporte y Mantenimie'),
('3SV', 'Vespertino', '', '', 'Soporte y Mantenimie'),
('5AM', 'Matutino', '', '1', 'Recursos Humanos'),
('5AV', 'Vespertino', '', '1', 'Recursos Humanos'),
('5AV2', 'Vespertino', '', '1', 'Recursos Humanos'),
('5CM', 'Matutino', '', '1', 'Contabilidad'),
('5CV', 'Vespertino', '', '1', 'Contabilidad'),
('5E', 'Matutino', '', '1', 'Eléctricidad'),
('5LM', 'Matutino', '', '1', 'Logística'),
('5LV', 'Vespertino', '', '1', 'Logística'),
('5M', 'Matutino', '', '1', 'Mecánica'),
('5PM', 'Matutino', '', '1', 'Programación'),
('5PV', 'Vespertino', 'Dulce Alejandra Nuñez Soria', '1', 'Programación'),
('5SM', 'Matutino', '', '1', 'Soporte y Mantenimie'),
('5SV', 'Vespertino', '', '1', 'Soporte y Mantenimie');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`num_control`),
  ADD KEY `index_grupo` (`grupo`);

--
-- Indices de la tabla `estudiante_asignatura`
--
ALTER TABLE `estudiante_asignatura`
  ADD PRIMARY KEY (`num_control`,`asignatura`),
  ADD KEY `asignatura` (`asignatura`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`nombre`),
  ADD KEY `indice_carrera` (`carrera`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `grupo` FOREIGN KEY (`grupo`) REFERENCES `grupo` (`nombre`);

--
-- Filtros para la tabla `estudiante_asignatura`
--
ALTER TABLE `estudiante_asignatura`
  ADD CONSTRAINT `asignatura` FOREIGN KEY (`asignatura`) REFERENCES `asignatura` (`clave`),
  ADD CONSTRAINT `num_control` FOREIGN KEY (`num_control`) REFERENCES `estudiante` (`num_control`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `carrera` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
