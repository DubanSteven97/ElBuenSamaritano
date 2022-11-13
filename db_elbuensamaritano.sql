-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2022 a las 06:03:17
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elbuensamaritano`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Ortesis', 'Son todos aquellos aparatos externos que sirven como ayuda, apoyo y que se utilizan en el campo de la ortopedia.', 'img_75a1b12fc2afe87a4bad02cd663d5293.jpg', '2022-11-03 20:26:06', 'ortesis', 1),
(2, 'Ayudas a la movilidad', 'Aquí encontrará una variedad de artículos para la ayuda a la movilidad.', 'img_2284102fefc16da209ac8d72d94866b4.jpg', '2022-11-03 20:29:44', 'ayudas-a-la-movilidad', 1),
(3, 'Paciente encamado', 'Aquí encontrará todo lo necesario para el paciente encamado. El paciente encamado requiere una atención especial porque depende de la calidad y el cuidado que tengamos del paciente dependerá en parte su calidad de vida.', 'img_9f3ee50b541b3528671c286c63206b65.jpg', '2022-11-03 20:30:43', 'paciente-encamado', 1),
(4, 'Ayudas al baño', 'En cualquier momento todo el mundo puede necesitar ayudas para el baño, pero sobre todo la gente mayor que por el desgaste de los años ven reducidas sus capacidades de valerse por sí solos.', 'img_9276749a42a4803d1df76729fb7ba61c.jpg', '2022-11-03 20:31:21', 'ayudas-al-bano', 2),
(5, 'Ayudas domésticas', 'Diariamente muchas personas tienen dificultades para llevar a cabo acciones como abrocharse los botones, calzarse los zapatos o sujetar una cuchara para comer, nosotros queremos que esto no sea un problema y ofrecer todas las ayudas domésticas posibles para satisfacer las necesidades de nuestros clientes.', 'img_9276749a42a4803d1df76729fb7ba61c.jpg', '2022-11-03 20:33:21', 'ayudas-domesticas', 2),
(6, 'Cuidado y patología del pie', 'Los pies como otras partes de nuestro cuerpo pueden sufrir con los años patologías como artritis o artrosis, deformaciones como es el dedo en garra o el juanete, también durezas o inflamaciones que pueden hacer de nuestro día a día insoportable. Nosotros tenemos la solución por medios de expertos y la calidad de nuestros productos.', 'img_425fd923c05c9488bf8be9c9b70b7e7c.jpg', '2022-11-03 20:34:14', 'cuidado-y-patologia-del-pie', 1),
(7, 'Terapia de compresión', 'Cada proceso de curación necesita diferentes productos para conseguir el mejor resultado de curación. Las heridas crónicas como la úlcera venosa, el pie diabético y la úlcera por presión requieren un abordaje integral, desde el tratamiento de la causa hasta el tratamiento local con apósitos. Otras terapias pueden ser el tapping en deportistas.', 'img_e1c40a919b744c20d5a040b86a5ff08a.jpg', '2022-11-03 20:34:47', 'terapia-de-compresion', 1),
(8, 'Aparatos de rehabilitación', 'Nuestros aparatos de rehabilitación van dirigidos a todas aquellas personas que quieren fortalecer su musculatura o que tienen una reducción de movilidad tanto si es por una patología o por el desgaste de las articulaciones.', 'img_6ebe1c80c61c1b5edf4e251dfc258f11.jpg', '2022-11-03 20:35:18', 'aparatos-de-rehabilitacion', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idempresa` bigint(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `correo_empresa` varchar(100) NOT NULL,
  `correo_pedidos` varchar(100) NOT NULL,
  `nombre_remitente` varchar(100) NOT NULL,
  `correo_remitente` varchar(100) NOT NULL,
  `nombre_empresa` varchar(100) NOT NULL,
  `nombre_aplicacion` varchar(100) NOT NULL,
  `sitio_web` varchar(200) NOT NULL,
  `simbolo_moneda` varchar(10) NOT NULL,
  `moneda` varchar(10) NOT NULL,
  `divisa` varchar(10) NOT NULL,
  `separador_decimales` varchar(10) NOT NULL,
  `separador_miles_millones` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idempresa`, `direccion`, `telefono`, `correo_empresa`, `correo_pedidos`, `nombre_remitente`, `correo_remitente`, `nombre_empresa`, `nombre_aplicacion`, `sitio_web`, `simbolo_moneda`, `moneda`, `divisa`, `separador_decimales`, `separador_miles_millones`, `status`) VALUES
(1, 'Calle Siempre Viva 123, Cali, Colombia', '2001246', 'Empresa@elbuensamaritano.com', 'Empresa@elbuensamaritano.com', 'El Buen Samaritano', 'Info@elbuensamaritano.com', 'EL BUEN SAMARITANO', 'EL BUEN SAMARITANO', 'Www.elbuensamaritano.com', '$', 'COP', 'USD', ',', '.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(25, 1, 'pro_4df633499525380aae061b5d36c0aa2b.jpg'),
(27, 1, 'pro_d085be53f36f3c2235a387b6fa9d9a7a.jpg'),
(28, 2, 'pro_820a37fb4253bdf84e63ad5e243417a7.jpg'),
(29, 2, 'pro_204b2e8f232a68d161a2028fb565aa69.jpg'),
(30, 2, 'pro_287dda575c4232efe3c4fcb06507f2d9.jpg'),
(31, 2, 'pro_ce09f8a586d2c7b112e8d92402d7269b.jpg'),
(32, 3, 'pro_fe26a33b5d17c869eecd7071876eae64.jpg'),
(33, 3, 'pro_900d6458befae55cde96d70991916cef.jpg'),
(34, 3, 'pro_fe55485ba893eae3c88be69238a4792e.jpg'),
(36, 4, 'pro_2284102fefc16da209ac8d72d94866b4.jpg'),
(37, 4, 'pro_e1c40a919b744c20d5a040b86a5ff08a.jpg'),
(38, 4, 'pro_6948e5afdd104f28cca859ce20ed819a.jpg'),
(42, 5, 'pro_089ffe38ce210d3972ed39896ebf382b.jpg'),
(47, 1, 'pro_9276749a42a4803d1df76729fb7ba61c.jpg'),
(49, 5, 'pro_d95b50e3bbd86647520231e55037c12c.jpg'),
(50, 5, 'pro_6ab673bcbf07e7a8eb3c676c94ab4430.jpg'),
(51, 5, 'pro_16c5ca25b9ba272a8c63cc4c5744e961.jpg'),
(52, 6, 'pro_01c4d69188fe663019358b9209a6bc0d.jpg'),
(53, 6, 'pro_5f1161a8641e5f9eded80dc2810dbdd3.jpg'),
(54, 6, 'pro_c63bf4d2a80fb7287974c54c6ed45f8a.jpg'),
(55, 7, 'pro_b95b3b87cd53b6eb80778c09a5c4fe89.jpg'),
(56, 7, 'pro_744197ca806aa13f68d23d99353610e5.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Darhboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Categorias', 'Categorías productos', 1),
(7, 'Roles', 'Roles', 1),
(8, 'Configuracion', 'Configuracion', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(254, 9, 1, 1, 0, 0, 0),
(255, 9, 2, 0, 0, 0, 0),
(256, 9, 3, 0, 0, 0, 0),
(257, 9, 4, 0, 0, 0, 0),
(258, 9, 5, 0, 0, 0, 0),
(259, 9, 6, 0, 0, 0, 0),
(260, 9, 7, 1, 0, 0, 0),
(338, 8, 1, 0, 0, 0, 0),
(339, 8, 2, 0, 0, 0, 0),
(340, 8, 3, 0, 0, 0, 0),
(341, 8, 4, 1, 0, 0, 0),
(342, 8, 5, 1, 1, 0, 0),
(343, 8, 6, 0, 0, 0, 0),
(344, 8, 7, 0, 0, 0, 0),
(485, 12, 1, 0, 0, 0, 0),
(486, 12, 2, 0, 0, 0, 0),
(487, 12, 3, 1, 1, 1, 1),
(488, 12, 4, 0, 0, 0, 0),
(489, 12, 5, 0, 0, 0, 0),
(490, 12, 6, 0, 0, 0, 0),
(491, 12, 7, 0, 0, 0, 0),
(524, 1, 1, 1, 1, 1, 1),
(525, 1, 2, 1, 1, 1, 1),
(526, 1, 3, 1, 1, 1, 1),
(527, 1, 4, 1, 1, 1, 1),
(528, 1, 5, 1, 1, 1, 1),
(529, 1, 6, 1, 1, 1, 1),
(530, 1, 7, 1, 1, 1, 1),
(531, 1, 8, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombres` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombrefiscal` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `direccionfiscal` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '123456789', 'Administrador', 'Del Sistema', 123456789, 'admin@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 1, '2022-10-26 02:32:13', 1),
(2, '1023025848', 'Duban Steven', 'Estupiñan Parra', 3125, 'prueba@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1023025848', 'Duban Steven Estupiñan Parra', 'Carrera 8 # 89 C 69 Sur', '', 12, '2022-11-01 11:16:10', 1),
(17, '1023025846', 'Derly', 'Vargas Parra', 2001246, 'derly@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1023025846', 'Derly Vargas', 'Carrera 8 # 89 C 69 Sur', '', 8, '2022-11-07 13:31:05', 1),
(18, '1023025834', 'Derly', 'Vargas Parra', 2001246, 'pepe@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1023025834', 'Tomas Estupiñan', 'Carrera 8 # 89 C 69 Sur', '', 8, '2022-11-07 14:17:45', 0),
(19, '1023025975', 'Derly Vargas', 'Estupiñan', 2001246, '123@1233333333.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1023025975', 'Tomas Estupiñan', 'Carrera C Sur', '', 8, '2022-11-07 14:37:43', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` bigint(20) NOT NULL,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` bigint(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 1, '5432345432', 'Rodillera', '<p><span style=\"color: #666666; font-family: \'Proxima Nova\', -apple-system, \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; font-size: 20px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Rodillera Deportiva Unisex Rodillera Baloncesto Basketball Ciclismo Voleibol, alivio del dolor, recuperaci&oacute;n de Lesiones</span></p>', 15000, 20, '', '2022-11-03 20:39:58', 'rodillera', 1),
(2, 1, '345676543', 'Muñequera', '<p><span style=\"color: #4d5156; font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Las&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: #5f6368; font-family: arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">mu&ntilde;equeras</em><span style=\"color: #4d5156; font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;deportivas pueden ser de diferentes formas, tama&ntilde;os, fabricadas en diferentes materiales (algod&oacute;n, neopreno con velcro) y para diversos usos.</span></p>', 10000, 15, '', '2022-11-03 20:43:40', 'munequera', 1),
(3, 1, '3456765', 'Espaldilla', '<p><span style=\"color: #4d5156; font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Los&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: #5f6368; font-family: arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">correctores</em><span style=\"color: #4d5156; font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;de postura que buscas a incre&iacute;bles precios y de una alta calidad.</span></p>', 20000, 5, '', '2022-11-03 20:45:49', 'espaldilla', 1),
(4, 2, '54567', 'Bastón', '<p>Bastones Ortopedicos</p>', 18000, 50, '', '2022-11-03 20:48:39', 'baston', 1),
(5, 2, '876543', 'Silla de Ruedas', '<p>Elemento &uacute;til para personas con discapacidad.</p>', 150000, 12, '', '2022-11-03 20:52:10', 'silla-de-ruedas', 1),
(6, 6, '13245687654', 'Plantillas', '<p><span style=\"color: #4d5156; font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Las&nbsp;</span><em style=\"font-weight: bold; font-style: normal; color: #5f6368; font-family: arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">plantillas ortop&eacute;dicas</em><span style=\"color: #4d5156; font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;son usadas en pacientes con fascitis plantar, pie diab&eacute;tico, metatarsalgias y pie plano.</span></p>', 8000, 100, '', '2022-11-03 20:57:12', 'plantillas', 1),
(7, 7, '1243345', 'Venda Elástica', '<p style=\"text-align: justify;\"><span style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Los vendajes son los refuerzos o contenciones realizados con un material indicado&nbsp;</span><strong style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">para</strong><span style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;ello, con el fin&nbsp;</span><strong style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">de</strong><span style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;envolver una extremidad u otras partes del cuerpo humano lesionadas. En Primeros Auxilios se usan especialmente en caso&nbsp;</span><strong style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">de</strong><span style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;heridas, hemorragias, fracturas, esguinces y luxaciones.</span></p>', 5000, 150, '', '2022-11-03 20:59:27', 'venda-elastica', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Administrador del sistema', 1),
(2, 'Vendedor', 'Vendedor', 1),
(3, 'Ejemplo 1 inac', 'Ejemplo 1', 0),
(4, 'Servicio al cliente', 'Servicio al cliente', 1),
(5, 'Ejemplo 2', 'Ejemplo w', 0),
(6, 'Bodega', 'Bodega', 1),
(7, 'Coordinador', 'Coordinador', 1),
(8, 'Cliente', 'Cliente', 1),
(9, 'Supervisor', 'Supervisor', 1),
(10, 'Administrador de contenido', 'Adminsitrador de contenido (CMS)', 0),
(11, 'Prueba Rol Actualizado', 'Prueba descripción del rol Actualizado', 0),
(12, 'Prueba Rol', 'Prueba descripción del rol', 1),
(13, 'Prueba', 'Descripción', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`),
  ADD UNIQUE KEY `titulo` (`titulo`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `moduloid` (`moduloid`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD UNIQUE KEY `identificacion` (`identificacion`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idempresa` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `FK_IMG_PRO` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `FK_PMS_MOD_01` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PMS_ROL_01` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `FK_PER_ROL_01` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_PRO_CAT` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
