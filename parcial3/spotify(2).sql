-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2024 a las 03:50:26
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id`, `nombre`, `descripcion`) VALUES
(1, 'BTS', 'Artista verificado. 27,343,721 oyentes mensuales.'),
(2, 'Natanael Cano', 'Artista verificado. 27,674,705 oyentes mensuales.'),
(3, 'Fuerza Regida', 'Artista verificado. 29,428,130 oyentes mensuales.'),
(4, 'Bad Bunny', 'Artista verificado. 67,549,088 oyentes mensuales.'),
(5, 'Cro-Magnon', '106,492 oyentes mensuales.'),
(6, 'Cuco', 'Artista verificado. 5,246,769 oyentes mensuales.\r\n'),
(7, 'TV Girl', 'Artista verificado. 21,373,463 oyentes mensuales.'),
(8, 'Lana Del Rey', 'Artista verificado. 55,165,299 oyentes mensuales.'),
(9, 'Azealia Banks', 'Artista verificado. 3,276,896 oyentes mensuales.'),
(10, 'Gorillaz', 'Artista verificado. 24,111,770 oyentes mensuales.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Madonna', 5, '03:07:00', '2024-03-08', 1, 'Bolsa Madonna Birkin Verde'),
(2, 'Ya Te Olvide', 5, '03:36:00', '2024-05-15', 1, 'Ya Te Olvide Natanael Cano Dibujo'),
(3, 'Diran De Mi', 5, '02:41:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(4, 'Mas Altas Que Bajadas', 5, '03:13:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(5, 'La Lokerona', 5, '03:14:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(6, 'Un Convoy', 5, '02:38:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(7, 'Pancake', 5, '03:02:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(8, 'Viejo Lobo', 5, '02:50:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(9, 'AFS', 5, '04:02:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(10, 'Eres', 5, '02:52:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(11, 'Mi Bello Angel', 5, '03:08:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(12, 'En Corto', 5, '03:02:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(13, 'AMG', 5, '02:54:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(14, 'Como Es Arriba Es Abajo', 5, '02:45:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(15, 'Pacas De Billetes', 5, '03:08:00', '2023-06-30', 1, 'Nata Montana Álbum'),
(16, 'Euphoria', 1, '00:03:48', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(17, 'Trivia 起: Just Dance', 1, '00:03:45', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(18, 'Serendipity', 1, '00:04:36', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(19, 'DNA', 1, '00:03:43', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(20, 'Dimple', 1, '00:03:16', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(21, 'Trivia 承: Love', 1, '00:03:46', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(22, 'Her', 1, '00:03:49', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(23, 'Singularity', 1, '00:03:17', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(24, 'FAKE LOVE', 1, '00:04:02', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(25, 'The Truth Untold', 1, '00:04:02', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(26, 'Trivia 轉: Seesa', 1, '00:04:06', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(27, 'Tear', 1, '00:04:44', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(28, 'Epiphany', 1, '00:04:00', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(29, 'I\'m Fine', 1, '00:04:00', '2018-08-24', 1, 'Álbum de Love Yourself 結 \'Answer\''),
(30, 'IDOL', 1, '00:03:43', '0000-00-00', 1, 'Love Yourself 結 \'Answer\''),
(31, 'TÚ NAME', 5, '00:02:32', '2024-02-09', 1, 'Casa en llamas rojo'),
(32, 'Que Onda', 5, '00:03:11', '2023-08-30', 1, '3 hombres posando'),
(33, 'SABOR FRESA', 5, '00:02:36', '2023-10-20', 1, 'Muñeco disparando'),
(34, 'HARLEY QUINN', 5, '00:02:23', '2023-10-20', 1, 'Muñeco disparando'),
(35, 'UNA CERVEZA', 5, '00:04:39', '2023-10-20', 1, 'Muñeco disparando'),
(36, 'CRAZYZ', 5, '00:03:24', '2023-10-20', 1, 'Muñeco disparando'),
(37, 'Ch y la pizza', 5, '00:02:16', '2022-12-30', 1, 'PA QUE HABLEN.'),
(38, 'TQM', 5, '00:02:37', '2023-10-20', 1, 'Muñeco disparando'),
(39, 'Brillorosa', 5, '00:02:49', '2024-02-09', 1, 'Casa en llamas rojo'),
(40, 'Enculado', 5, '00:02:27', '2024-02-09', 1, 'Casa en llamas rojo'),
(41, 'EXCESOS', 5, '00:03:07', '2023-10-20', 1, 'Muñeco disparando'),
(42, 'Mi Terre CLN', 5, '00:02:52', '2022-12-30', 1, 'PA QUE HABLEN.'),
(43, 'Igualito a Mi Apá', 5, '00:02:46', '2022-12-30', 1, 'PA QUE HABLEN.'),
(44, 'Bienvenida', 5, '00:00:34', '2023-10-20', 1, 'Muñeco disparando'),
(45, 'TU KISS', 5, '00:02:52', '2023-10-20', 1, 'Muñeco disparando'),
(46, 'Moscow Mule', 6, '00:04:05', '2022-05-06', 1, 'Corazón de la playa'),
(47, 'Después de la Playa', 6, '00:03:50', '2022-05-06', 1, 'Corazón de la playa'),
(48, 'Me Porto Bonito', 6, '00:02:58', '2022-05-06', 1, 'Corazón de la playa'),
(49, 'Tití Me Preguntó', 6, '00:04:03', '2022-05-06', 1, 'Corazón de la playa'),
(50, 'Un Ratito', 6, '00:02:56', '2022-05-06', 1, 'Corazón de la playa'),
(51, 'Yo No Soy Celoso', 6, '00:03:50', '2022-05-06', 1, 'Corazón de la playa'),
(52, 'Tarot', 6, '00:03:37', '2022-05-06', 1, 'Corazón de la playa'),
(53, 'Neverita', 6, '00:02:53', '2022-05-06', 1, 'Corazón de la playa'),
(54, 'La Corriente', 6, '00:03:18', '2022-05-06', 1, 'Corazón de la playa'),
(55, 'Efecto', 6, '00:03:33', '2022-05-06', 1, 'Corazón de la playa'),
(56, 'Party', 6, '00:03:47', '2022-05-06', 1, 'Corazón de la playa'),
(57, 'Aguacero', 6, '00:03:30', '2022-05-06', 1, 'Corazón de la playa'),
(58, 'Enséñame a bailar', 6, '00:02:56', '2022-05-06', 1, 'Corazón de la playa'),
(59, 'Ojitos Lindos', 6, '00:04:18', '2022-05-06', 1, 'Corazón de la playa'),
(60, 'Dos Mil 16', 6, '00:03:28', '2022-05-06', 1, 'Corazón de la playa'),
(61, 'Pantyhouse', 4, '00:02:57', '2014-06-05', 1, 'Negro y rojo'),
(62, 'Birds Dont Sing', 4, '00:03:29', '2014-06-05', 1, 'Negro y rojo'),
(63, 'Louise', 4, '00:03:14', '2014-06-05', 1, 'Negro y rojo'),
(64, 'Hate Yourself', 4, '00:03:33', '2014-06-05', 1, 'Negro y rojo'),
(65, 'The Getaway', 4, '00:03:44', '2014-06-05', 1, 'Negro y rojo'),
(66, 'Talk to Strangers', 4, '00:02:57', '2014-06-05', 1, 'Negro y rojo'),
(67, 'The Blonde', 4, '00:03:47', '2014-06-05', 1, 'Negro y rojo'),
(68, 'Daughter of a Cop', 4, '00:02:33', '2014-06-05', 1, 'Negro y rojo'),
(69, 'Lovers Rock', 4, '00:03:33', '2014-06-05', 0, 'Negro y rojo'),
(70, 'Her and Her Friend', 4, '00:03:29', '2014-06-05', 1, 'Negro y rojo'),
(71, 'Come When You Call', 4, '00:03:38', '2014-06-05', 1, 'Negro y rojo'),
(72, 'Anjela', 4, '00:03:44', '2014-06-05', 1, 'Negro y rojo'),
(73, 'Talking What\'s Not Yours', 4, '00:03:25', '2016-02-25', 1, 'Azul y rosa'),
(74, 'Song About Me', 4, '00:04:03', '2016-02-25', 1, 'Azul y rosa'),
(75, 'Cigarettes out the Window', 4, '00:03:18', '2016-02-25', 1, 'Azul y rosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'K-Pop'),
(2, 'Jazz'),
(3, 'Funk'),
(4, 'Rock'),
(5, 'Corridos'),
(6, 'Blues'),
(7, 'Lofi'),
(8, 'Clasica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`id`, `descripcion`, `precio`) VALUES
(1, 'Individual', 129),
(2, 'Estudiantes', 69),
(3, 'Duo', 169),
(4, 'Familiar', 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nomre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Axel', 'axel@gmail.com', 4),
(2, 'Jeyli', 'jeylijo@gmail.com', 4),
(3, 'Larissa', 'larissabf07@gmail.com', 2),
(4, 'Jaime ', 'jaimemendonzahernandez@gmail.com', 1),
(5, 'Julio', 'julio@gmail.com', 4),
(6, 'Cesar', 'cesar@gmail.com', 4),
(7, 'Juan', 'juan@gmail.com', 3),
(8, 'Alejandra', 'alejandra@gmail.com', 4),
(9, 'Luis', 'luis@gmail.com', 1),
(10, 'Fernando', 'fernando@gmail.com', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`),
  ADD KEY `descripcion` (`descripcion`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`,`cancion_id`),
  ADD KEY `artista_id_2` (`artista_id`,`cancion_id`),
  ADD KEY `artista_id_3` (`artista_id`,`cancion_id`),
  ADD KEY `artista_id_4` (`artista_id`,`cancion_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`,`cancion_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`,`cancion_id`,`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

--
-- Filtros para la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `favoritas_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritas_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
