-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 14-09-2023 a las 15:15:44
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `test_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_name`, `password`, `name`) VALUES
('wichoop', '12345', 'luis');

--
-- Indices de la tabla `users`
--
ALTER TABLE `users` MODIFY `id` INT AUTO_INCREMENT;
COMMIT;

-- Otorgar permisos de inserción al usuario 'wichoop' para la tabla 'users' en 'test_db'
GRANT INSERT ON `test_db`.`users` TO 'wichoop'@'localhost';
