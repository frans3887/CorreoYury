-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2020 at 12:47 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `correo_yury`
--

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `rut` varchar(15) COLLATE utf8_general_mysql500_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `apellidoPaterno` varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `apellidoMaterno` varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `tipoUsuario` int(11) NOT NULL,
  `username` varchar(15) COLLATE utf8_general_mysql500_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_general_mysql500_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`rut`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `tipoUsuario`, `username`, `password`, `estado`) VALUES
('1111111-1', 'Rebecca', 'Vasquez', 'Nunez', 1, 'rvasquez0', '123456', 0),
('2222222-2', 'Raúl', 'Mendoza', 'Martínez', 2, 'rmendoza0', '123456', 0);
('3333333-3', 'Pablo', 'Lopez', 'Saavedra', 3, 'plopez0', '123456', 0);
COMMIT;
-- --------------------------------------------------------

--
-- Table structure for table `trabajador`
--

CREATE TABLE `trabajador` (
  `id` int(11) NOT NULL,
  `rut` varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `apellidoPaterno` varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `apellidoMaterno` varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `sexo`varchar(15) COLLATE utf8_general_mysql500_ci NOT NULL,
  `direccion`varchar(30) COLLATE utf8_general_mysql500_ci NOT NULL,
  `telefono`int(11) NOT NULL
  `cargo`varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `fechaIngreso`varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `departamento`varchar(30) COLLATE utf8_general_mysql500_ci NOT NULL,
  `area`varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `contactoEmergencia`varchar(30) COLLATE utf8_general_mysql500_ci NOT NULL,
  `relacion`varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `telefonoEmergencia`int(11) NOT NULL
  `rutCarga`varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `nombreCarga`varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `apellidoPaternoCarga`varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `apellidoMaternoCarga`varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `parentezco`varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `sexoCarga`varchar(15) COLLATE utf8_general_mysql500_ci NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Dumping data for table `trabajador`
--

INSERT INTO `trabajador` (`id`, `rut`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `sexo`, `direccion`, `telefono`, `cargo`,`fechaIngreso`, `departamento`, `area`, `contactoEmergencia`,`relacion`, `telefonoEmergencia`, `rutCarga`,`nombreCarga`, `apellidoPaternoCarga`, `apellidoMaternoCarga`, `parentezco`, `sexo`) VALUES
(1, '2232252-2', 'Valentina', 'Rojas', 'Pizarro', 'Femenino', 'Patricio bulnes 110', '55434543','Repartidora', 'Encomiendas', 'Pedro Martinez', 'esposo','54567898', '20234234-1', 'Miguel', 'Martinez','Rojas', 'Hijo', masculino),
(2, '1131161-1', 'Juana', 'Perez', 'Perez', 'Femenino', 'Jose Miguel Carrera 200', '59765456','Asistente de encomiendas', 'Oficina central', 'Hilda Gomez', 'madre','2224545', '2534323-5', 'Francisco', 'Perez', 'Arevalo', 'Pizarro','Hijo',masculino);

-- --------------------------------------------------------
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
