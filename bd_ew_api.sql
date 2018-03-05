-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-03-2018 a las 00:28:44
-- Versión del servidor: 5.5.34
-- Versión de PHP: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_ew_api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_banners`
--

CREATE TABLE `db_banners` (
  `id_ban` int(11) NOT NULL,
  `image_ban` varchar(400) NOT NULL,
  `text1_ban` varchar(400) NOT NULL,
  `text2_ban` varchar(400) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL DEFAULT '999'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `db_banners`
--

INSERT INTO `db_banners` (`id_ban`, `image_ban`, `text1_ban`, `text2_ban`, `state`, `pos`) VALUES
(1, 'slider8.png', 'LAVADO DE MUEBLES Y TAPICERIA', 'Servicios de calidad para su máxima comodidad.', 1, 1),
(2, 'slider6.png', 'LAVADO DE COLCHONES', 'Con tratamiento anti-ácaros.', 1, 2),
(3, 'slider5.png', 'LAVADO DE ALFOMBRAS Y TAPIZONES', 'Servicios de calidad para su máxima comodidad.', 1, 3),
(4, 'slider7.png', 'LAVADO DE CORTINAS, ROLLER, ESTORES Y PERSIANAS', 'Servicios de calidad para su máxima comodidad.', 1, 4),
(5, 'slider9.png', 'MANTENIMIENTO Y RECUPERACION DE PISOS', 'Servicios de calidad para su máxima comodidad.', 1, 5),
(6, 'slider4.png', 'LIMPIEZA DE VENTANAS Y VIDRIOS', 'Servicios de calidad para su máxima comodidad.', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_gallery`
--

CREATE TABLE `db_gallery` (
  `id_gal` int(11) NOT NULL,
  `id_tipo_gal` int(11) NOT NULL COMMENT '1 = imagen, 2 = video',
  `tit_gal` varchar(400) NOT NULL,
  `des_gal` varchar(400) NOT NULL,
  `lnk_vid_gal` varchar(400) NOT NULL,
  `img_gal` varchar(400) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `db_gallery`
--

INSERT INTO `db_gallery` (`id_gal`, `id_tipo_gal`, `tit_gal`, `des_gal`, `lnk_vid_gal`, `img_gal`, `state`) VALUES
(1, 2, 'test imagen', 'test imagen test imagen test imagen', 'https://youtu.be/2-Uuf-eyve0', '', 1),
(2, 1, 'test imagen 2', 'test imagen test imagen test imagen', '', 'angular_logo.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_services`
--

CREATE TABLE `db_services` (
  `id_ser` int(11) NOT NULL,
  `desc_ser` varchar(400) COLLATE utf8_spanish_ci NOT NULL,
  `descexp_ser` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `precio_ser` decimal(10,2) NOT NULL,
  `image_ser` varchar(400) COLLATE utf8_spanish_ci NOT NULL,
  `tags_ser` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `db_services`
--

INSERT INTO `db_services` (`id_ser`, `desc_ser`, `descexp_ser`, `precio_ser`, `image_ser`, `tags_ser`, `state`) VALUES
(1, 'Limpieza a vapor de cocinas, hornos y campanas extractoras.', '<h4>Limpieza profesional a vapor de artefactos en su cocina</h4><p>Prestamos servicios profesionales de lavado de cocinas y derivados, eliminando grasa de manera perfecta con mínima cantidad de agua, sin necesidad de utilizar químicos peligrosos.</p> <p>Podemos lavar:</p><ul><li>Cocinas, estufas y campanas extractoras.</li><li>Hornos, asadores y freidores.</li><li>Planchones de acero inoxidable.</li><li>Carros de comidas rápidas de hot dog, pizzas, hamburguesas, broaster, etc.</li><li>Famas de carne y pollo.</li><li>Cuartos fríos, refrigeradoras, neveras, congeladores y maquinaria procesadora de alimentos.</li></ul>', 999.99, 'fly1.png', 'novedad', 1),
(2, 'Abrillantado y encerado de pisos de madera.', '<h4>Encerado de Pisos</h4><p>Utilizamos ceras importadas de alto tránsito, garantizamos el producto y la aplicación. Además retiramos excesos de ceras sobre parquet, madera y cualquier otra superficie.</p>', 999.99, 'fly2.png', 'novedad', 1),
(5, 'Mantenimiento y recuperación de pisos', '<h4>Recuperación y mantenimiento de Pisos</h4>  <p>Realizamos lavado, desmanchado, despercudido, sellado, pulido, decapado de ceras, recuperación del brillo en pisos, (vitrificado, abrillantado, cristalizado) sobre : mármol, terrazo, granito, losetas antiguas y modernas, baldosas, cemento pulido con o sin ocre, porcelanato, vinílico, etc.</p>', 999.99, 'fly3.png', 'promocion, novedad', 1),
(6, 'Limpieza de ventanas y vidrios.', '<h4>Limpieza de Ventanas y Vidrios</h4><p>Utilizamos tecnología de astas en fibra de carbono que pueden alcanzar los 20 metros de altura para limpiar superficies como el vidrio, pilares aluminio, mármol y cualquier otro material no poroso. El sistema también le permite superar los obstáculos, tales como cornisas, mobiliario urbano o dimensiones diferentes lo que simplifica las actividades de limpieza en el cumplimiento de los requisitos de seguridad, costos y accesibilidad.</p>', 999.99, 'fly4.png', 'novedad', 1),
(7, '¿Alfombras o tapizones sucios? nosotros tenemos la solución.', '<h4>Lavado de alfombras y tapizones</h4>  <p>Este servicio tiene como objetivo crear un ambiente saludable para las habitaciones ya sean oficinas o de uso personal. Este tratamiento garantiza la eliminación de moho, hongos, ácaros y alérgenos que pueden causar enfermedades y alergias. Restaura el aspecto de las alfombras además de combatir malos olores y ambientes insalubres para los usuarios, aplicando técnicas avanzadas, maquinarias y productos de tecnología especializada, logrando sanitizar y mantener los ambientes saludables.</p>', 999.99, 'fly5.png', 'novedad', 1),
(8, 'Aunque no los veas, los ácaros están ahí.', '<h4>Desinfección y Limpieza de colchones y almohadas a Vapor</h4>  <p>Nuestro servicio profesional de Desinfección y Limpieza de colchones y almohadas a Vapor sin usar productos químicos garantizan la eliminación del 99.9% de gérmenes. </p> <p>Con efecto de esterilizado utilizamos maquinaria especializada. Extrayendo ácaros, excrementos de ácaros, huevecillos de ácaros, escamas de piel muerta, micro-polvo, alérgenos, pelos, restos de semen, restos de saliva, restos de orina y esporas de hongos. </p> <p>Incluso se matan virus cómo bacilo de colón y salmonella.</p> <p>Resultados inmediatos y evidentes.</p> <p>Servicio óptimo para personas con alergias o rinitis.</p>', 999.99, 'fly6.png', 'promocion', 1),
(9, 'Renueva tu hogar con cortinas, roller, persianas y estores.', '', 999.99, 'fly7.png', 'promocion', 1),
(10, 'Lavado de: cortinas, rollers, estores y persianas.', '<h4>Lavado de cortinas, roller, estores y persianas</h4>  <p>Contamos con una amplia experiencia en el mantenimiento y lavado de cortinas, rollers, estores y persianas. Nuestro equipo altamente capacitado y el uso de maquinaria moderna le garantizan una limpieza profunda y resultados óptimos.</p>', 999.99, 'fly8.png', 'promocion', 1),
(11, '¿Muebles manchados? nosotros tenemos la solución.', '<h4>Lavado de muebles y tapicería</h4>  <p>Este servicio tiene como objetivo hacer relucir sus muebles recuperando el aspecto perdido, eliminaremos las manchas difíciles de origen animal, vegetal o mineral adheridas a la tela. Además este tratamiento hará que se encuentre rodeado por un ambiente más saludable, eliminando ácaros y alérgenos que puedan incomodar al usuario.</p>  <p>Para este tratamiento restaurador aplicaremos técnicas avanzadas, maquinarias y productos de tecnología especializada, recuperando el aspecto perdido por el uso normal y a la vez logrando repeler ácaros y demás alérgenos hasta por 6 meses.</p>', 999.99, 'fly9.png', 'promocion, novedad', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_testimonials`
--

CREATE TABLE `db_testimonials` (
  `id_tes` int(11) NOT NULL,
  `name_tes` varchar(400) NOT NULL,
  `desc_tes` varchar(400) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL DEFAULT '99'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `db_testimonials`
--

INSERT INTO `db_testimonials` (`id_tes`, `name_tes`, `desc_tes`, `state`, `pos`) VALUES
(1, 'Vanessa Cogorno', 'Todos los servicios ofrecidos son de primera. Colchones, sillas, sofás, cortinas, rollers y otros son lavados con cuidado y con productos de calidad.', 1, 1),
(2, 'Karina Viviana Cogorno', 'Excelente servicio, mis muebles quedaron como nuevos , el personal muy profesional y honesto.', 1, 2),
(3, 'Trick Sallaz', 'Excelente servicio, muy profesional, resultados increíbles!. Y lo mejor de todo, a domicilio, y con delivery. Gracias por todo Giuliano!!!', 1, 3),
(4, 'Vanessa Cogorno', 'Todos los servicios ofrecidos son de primera. Colchones, sillas, sofás, cortinas, rollers y otros son lavados con cuidado y con productos de calidad.', 1, 4),
(5, 'Karina Viviana Cogorno', 'Excelente servicio, mis muebles quedaron como nuevos , el personal muy profesional y honesto.', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_user`
--

CREATE TABLE `db_user` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(400) COLLATE utf8_spanish_ci NOT NULL,
  `email_user` varchar(400) COLLATE utf8_spanish_ci NOT NULL,
  `pass_user` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `pass_user_sha1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `db_user`
--

INSERT INTO `db_user` (`id_user`, `name_user`, `email_user`, `pass_user`, `pass_user_sha1`) VALUES
(1, 'admin', 'admin@gys.pe', '7c4a8d09ca3762af61e59520943dc26494f8941b', 123456);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `db_banners`
--
ALTER TABLE `db_banners`
  ADD PRIMARY KEY (`id_ban`);

--
-- Indices de la tabla `db_gallery`
--
ALTER TABLE `db_gallery`
  ADD PRIMARY KEY (`id_gal`);

--
-- Indices de la tabla `db_services`
--
ALTER TABLE `db_services`
  ADD PRIMARY KEY (`id_ser`);

--
-- Indices de la tabla `db_testimonials`
--
ALTER TABLE `db_testimonials`
  ADD PRIMARY KEY (`id_tes`);

--
-- Indices de la tabla `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `db_banners`
--
ALTER TABLE `db_banners`
  MODIFY `id_ban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `db_gallery`
--
ALTER TABLE `db_gallery`
  MODIFY `id_gal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `db_services`
--
ALTER TABLE `db_services`
  MODIFY `id_ser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `db_testimonials`
--
ALTER TABLE `db_testimonials`
  MODIFY `id_tes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
