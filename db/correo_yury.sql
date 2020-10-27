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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
