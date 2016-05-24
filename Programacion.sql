-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 24, 2016 at 03:14 AM
-- Server version: 5.7.12-0ubuntu1
-- PHP Version: 7.0.4-7ubuntu2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Programacion`
--

-- --------------------------------------------------------

--
-- Table structure for table `Registros`
--

CREATE TABLE `Registros` (
  `FK_USUARIO` int(4) NOT NULL,
  `FK_SERIE` int(4) NOT NULL,
  `VISTO` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `Registros`
--

INSERT INTO `Registros` (`FK_USUARIO`, `FK_SERIE`, `VISTO`) VALUES
(45, 10, 0),
(45, 19, 1),
(45, 21, 0),
(333, 2, 0),
(333, 19, 1),
(333, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Series`
--

CREATE TABLE `Series` (
  `ID_SERIE` int(4) NOT NULL,
  `TITULO` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `AUTOR` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `ANO_ESTRENO` int(4) NOT NULL,
  `NO_CAPITULOS` int(11) NOT NULL,
  `VALORACION` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Listado de series';

--
-- Dumping data for table `Series`
--

INSERT INTO `Series` (`ID_SERIE`, `TITULO`, `AUTOR`, `ANO_ESTRENO`, `NO_CAPITULOS`, `VALORACION`) VALUES
(1, 'Juego de Tronos', 'David Benioff / D. B. Weiss', 2011, 12, 9.7),
(2, 'Como conocí a vuestra madre', 'Carter Bays / Craig Thomas', 2005, 64, 6.3),
(5, 'CSI: Miami', 'Anthony E. Zuiker / Carol Mendelsohn / Ann Donahue', 2002, 33, 4.3),
(10, 'Modern Family', 'Christopher Lloyd  / Steven Levitan', 2009, 131, 8.9),
(19, 'Mom', 'Chuck Lorre / Eddie Gorodetsky', 2013, 49, NULL),
(21, 'Allí abajo', 'Aitor Gabilondo / César Benítez / Óscar Terol', 2015, 21, 6.8),
(32, 'Big Bang Theory', 'Chuck Lorre / Bill Prady', 2007, 135, 8.7);

-- --------------------------------------------------------

--
-- Table structure for table `Usuarios`
--

CREATE TABLE `Usuarios` (
  `ID_USUARIO` int(4) NOT NULL,
  `USUARIO` varchar(12) COLLATE utf8_spanish2_ci NOT NULL,
  `CONTRASEÑA` varchar(8) COLLATE utf8_spanish2_ci NOT NULL,
  `APELLIDOS` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBRE` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `ACCESO` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Control de accesos de usuarios';

--
-- Dumping data for table `Usuarios`
--

INSERT INTO `Usuarios` (`ID_USUARIO`, `USUARIO`, `CONTRASEÑA`, `APELLIDOS`, `NOMBRE`, `ACCESO`) VALUES
(2, 'daniel', '54321', NULL, 'Daniel', 0),
(45, 'david', '12345', NULL, 'David', 1),
(333, 'desire', 'desire', 'Cheshire', 'Desire', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Registros`
--
ALTER TABLE `Registros`
  ADD PRIMARY KEY (`FK_USUARIO`,`FK_SERIE`),
  ADD KEY `indiceSerie` (`FK_SERIE`);

--
-- Indexes for table `Series`
--
ALTER TABLE `Series`
  ADD PRIMARY KEY (`ID_SERIE`);

--
-- Indexes for table `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`ID_USUARIO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Registros`
--
ALTER TABLE `Registros`
  ADD CONSTRAINT `foraneaSerie` FOREIGN KEY (`FK_SERIE`) REFERENCES `Series` (`ID_SERIE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foraneaUsuario` FOREIGN KEY (`FK_USUARIO`) REFERENCES `Usuarios` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
