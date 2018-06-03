-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2018 a las 14:14:42
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_base_development`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-05-02 11:06:58', '2018-05-02 11:06:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `identificacion` varchar(50) DEFAULT NULL,
  `idtipoidentificacion` int(11) DEFAULT NULL,
  `razonSocial` varchar(200) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefonos` varchar(255) DEFAULT NULL,
  `idtipocliente` int(11) DEFAULT NULL,
  `idcategoriacliente` int(11) DEFAULT NULL,
  `idestado` int(11) DEFAULT NULL,
  `idgenero` int(11) DEFAULT NULL,
  `eliminado` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `apellidos`, `identificacion`, `idtipoidentificacion`, `razonSocial`, `correo`, `direccion`, `telefonos`, `idtipocliente`, `idcategoriacliente`, `idestado`, `idgenero`, `eliminado`, `created_at`, `updated_at`) VALUES
(1, 'Pedro ', 'Paramo', '7235250', 31, '', 'pparamo@yahoo.com', 'Cra 54 #64-97', '3858152', 33, 37, 29, 40, 0, '2018-05-15 18:06:08', '2018-05-15 18:06:08'),
(2, 'Maria ', 'Torres', '32734345', 31, '', 'mtorres@gmail.com', 'Cra  19C #47B-53', '3345678', 33, 37, 29, 41, 0, '2018-05-29 00:45:38', '2018-05-29 00:45:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detfacturas`
--

CREATE TABLE `detfacturas` (
  `id` bigint(20) NOT NULL,
  `cant` int(11) DEFAULT NULL,
  `precio` decimal(6,2) DEFAULT NULL,
  `iva` decimal(4,2) DEFAULT NULL,
  `idestadodetfactura` int(11) DEFAULT NULL,
  `factura_id` bigint(20) DEFAULT NULL,
  `producto_id` bigint(20) DEFAULT NULL,
  `eliminado` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) NOT NULL,
  `identificacion` varchar(50) DEFAULT NULL,
  `idtipoidentificacion` int(11) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `telefonos` varchar(255) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `idgenero` int(11) DEFAULT NULL,
  `idcargo` int(11) DEFAULT NULL,
  `idarea` int(11) DEFAULT NULL,
  `idestadoemp` int(11) DEFAULT NULL,
  `eliminado` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `identificacion`, `idtipoidentificacion`, `nombres`, `apellidos`, `telefonos`, `correo`, `direccion`, `idgenero`, `idcargo`, `idarea`, `idestadoemp`, `eliminado`, `created_at`, `updated_at`) VALUES
(1, '72135240', 31, 'Hernan ', 'Pajaro ', '300345678', 'hpajaro@yahoo.com', 'Cra 54 #64-97', 40, 47, 52, 50, 0, '2018-05-28 14:07:07', '2018-05-28 14:07:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` bigint(20) NOT NULL,
  `numfact` varchar(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `direntrega` varchar(200) DEFAULT NULL,
  `idestadofactura` int(11) DEFAULT NULL,
  `idtipofactura` int(11) DEFAULT NULL,
  `cliente_id` bigint(20) DEFAULT NULL,
  `empleado_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `options`
--

CREATE TABLE `options` (
  `id` bigint(20) NOT NULL,
  `idpadre` int(11) DEFAULT NULL,
  `opcion` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `estadoopcion` varchar(1) DEFAULT 'A',
  `orden` varchar(5) DEFAULT NULL,
  `eshoja` tinyint(1) DEFAULT NULL,
  `controller` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `options`
--

INSERT INTO `options` (`id`, `idpadre`, `opcion`, `url`, `estadoopcion`, `orden`, `eshoja`, `controller`, `eliminado`) VALUES
(1, NULL, 'Tareas Basicas ', NULL, 'A', '01', 0, NULL, 0),
(2, NULL, 'Configuracion', NULL, 'A', '02', 0, NULL, 0),
(3, 1, 'Clientes', NULL, 'A', '01', 1, 'cliente', 0),
(4, 1, 'Productos (Listar)', '', 'A', '02', 1, 'listarProductos', 0),
(5, 1, 'Facturas', NULL, 'A', '03', 1, 'factura', 0),
(6, 1, 'Empleados', '', 'A', '05', 1, 'empleados', 0),
(7, 2, 'Parametros', NULL, 'A', '01', 1, 'parametros', 0),
(8, NULL, 'Admin', '', 'A', '09', 1, 'admin', 0),
(9, NULL, 'Productos (Editar)', '', 'A', '10', 1, 'productos', 0),
(10, NULL, 'Productos(mostrar carrito)', '', 'A', '11', 1, 'mostrarCarrito', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE `parametros` (
  `id` bigint(20) NOT NULL,
  `atributo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `estadoparametro` varchar(1) DEFAULT 'A',
  `eliminado` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`id`, `atributo`, `descripcion`, `estadoparametro`, `eliminado`, `created_at`, `updated_at`) VALUES
(1, 'idTipoProducto', 'Tipo de Producto', 'A', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'IdCategoriaProducto', 'Categoria de Producto', 'A', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'idEstadoProducto', 'Estado Peoducto', 'A', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'idTipoIdentificacion', 'Tipo Identificacion', 'A', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'idtipocliente', 'Tipo de Cliente', 'A', 0, '0000-00-00 00:00:00', '2018-05-15 17:48:54'),
(6, 'IdEstadoCliente', 'Estado de Cliente', 'A', 0, '0000-00-00 00:00:00', '2018-05-15 17:49:31'),
(7, 'idEstadoFactura', 'Estado de la Factura', 'A', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'IdEstadoUsuario', 'Estado de Usuario', 'A', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'idRol', 'ROl del Usuario', 'A', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'idtipoentidad', 'Tipo de entidad ', 'A', 0, '2018-05-15 03:25:32', '2018-05-15 03:25:32'),
(11, 'idgenero', 'Genero ', 'A', 0, '2018-05-15 17:47:36', '2018-05-15 17:47:36'),
(12, 'idCatefgoriaCliente', 'Categoría Cliente', 'A', 0, '2018-05-15 17:55:11', '2018-05-15 17:55:11'),
(13, 'idoperacion', 'Operaciones', 'A', 0, '2018-05-16 04:36:53', '2018-05-16 04:36:53'),
(14, 'idcargo', 'Cargo del EMpleado', 'A', 0, '2018-05-26 13:09:20', '2018-05-26 13:09:20'),
(15, 'idestadoemp', 'Estado Empleado', 'A', 0, '2018-05-28 12:41:46', '2018-05-28 12:41:46'),
(16, 'idarea', 'Area del Empleado', 'A', 0, '2018-05-28 14:05:35', '2018-05-28 14:05:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `precio` decimal(15,2) DEFAULT NULL,
  `idtipoproducto` int(11) DEFAULT NULL,
  `idcategoriaproducto` int(11) DEFAULT NULL,
  `idestadoproducto` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT '0',
  `imagen` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `ref`, `precio`, `idtipoproducto`, `idcategoriaproducto`, `idestadoproducto`, `stock`, `imagen`, `eliminado`, `created_at`, `updated_at`) VALUES
(1, 'Board P5', 'AMD Especial', '123BD', '350000.00', 5, 6, 21, 10, 'board.jpg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Diadema Hight Sound', 'Wireless ', '33333', '67000.00', 8, 23, 21, 15, 'diademas.jpg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Monitor 19 Pulg', 'LCD', 'RV55K', '380000.00', 8, 14, 21, 12, 'monitor.jpg', 0, '2018-05-25 00:41:44', '2018-05-25 01:30:24'),
(4, 'Mouse Microsoft', 'Wireless', 'M2345', '45000.00', 8, 19, 21, 25, 'mouse.jpg', 0, '2018-05-25 02:12:02', '2018-05-25 02:15:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_option_operations`
--

CREATE TABLE `role_option_operations` (
  `id` bigint(20) NOT NULL,
  `idrol` int(11) DEFAULT NULL,
  `idoperacion` int(11) DEFAULT NULL,
  `estadorolop` varchar(1) DEFAULT 'A',
  `eliminado` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `options_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `role_option_operations`
--

INSERT INTO `role_option_operations` (`id`, `idrol`, `idoperacion`, `estadorolop`, `eliminado`, `created_at`, `updated_at`, `options_id`) VALUES
(1, 26, 42, 'A', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7),
(2, 26, 43, 'A', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7),
(3, 26, 42, 'A', 0, '2018-05-29 20:07:31', '2018-05-30 00:21:16', 4),
(4, 26, 43, 'A', 0, '2018-05-29 22:31:34', '2018-05-30 09:25:46', 4),
(5, 26, 44, 'A', 0, '2018-05-29 22:32:29', '2018-05-30 09:20:59', 9),
(6, 26, 46, 'A', 0, '2018-05-29 22:33:25', '2018-05-29 22:33:25', 4),
(7, 26, 42, 'A', 0, '2018-05-30 03:58:57', '2018-05-30 03:58:57', 8),
(8, 26, 42, 'A', 0, '2018-05-30 04:19:15', '2018-05-30 04:19:15', 9),
(9, 26, 46, 'A', 0, '2018-05-30 09:20:15', '2018-05-30 09:26:01', 9),
(10, 26, 42, 'A', 0, '2018-05-30 09:34:10', '2018-05-30 09:34:10', 10),
(11, 28, 42, 'A', 0, '2018-05-30 09:36:30', '2018-05-30 09:36:30', 10),
(12, 26, 42, 'A', 0, '2018-05-30 09:55:55', '2018-05-30 09:55:55', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20180502110313'),
('20180508013254'),
('20180508013352'),
('20180508013550'),
('20180508013808'),
('20180508013841'),
('20180508023446'),
('20180508023717'),
('20180508031950'),
('20180508034458'),
('20180514134314'),
('20180515014041'),
('20180516050022'),
('20180516132409');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `identidad` int(11) DEFAULT NULL,
  `idtipoentidad` int(11) DEFAULT NULL,
  `idestadousuario` int(11) DEFAULT NULL,
  `idrol` int(11) DEFAULT NULL,
  `eliminado` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`, `identidad`, `idtipoentidad`, `idestadousuario`, `idrol`, `eliminado`, `created_at`, `updated_at`) VALUES
(1, 'hpajaro', '81dc9bdb52d04dc20036dbd8313ed055', 1, 36, 24, 26, 0, '2018-05-15 18:36:15', '2018-05-28 15:22:17'),
(2, 'pparamo', '827ccb0eea8a706c4c34a16891f84e7b', 1, 35, 24, 28, 0, '0000-00-00 00:00:00', '2018-05-29 01:58:00'),
(3, 'mtorres', '81dc9bdb52d04dc20036dbd8313ed055', 2, 35, 24, 28, 0, '2018-05-29 01:22:06', '2018-05-29 01:22:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valorparametros`
--

CREATE TABLE `valorparametros` (
  `id` bigint(20) NOT NULL,
  `valor` varchar(300) DEFAULT NULL,
  `estadovalorparametro` varchar(1) DEFAULT 'A',
  `orden` varchar(4) DEFAULT NULL,
  `eliminado` tinyint(1) DEFAULT '0',
  `parametro_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `idpadre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `valorparametros`
--

INSERT INTO `valorparametros` (`id`, `valor`, `estadovalorparametro`, `orden`, `eliminado`, `parametro_id`, `created_at`, `updated_at`, `idpadre`) VALUES
(5, 'Hardware Computo', 'A', '01', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(6, 'Software de Sistemas', 'A', '02', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(7, 'Hardware Redes', 'A', '03', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 'Hardware Perifericos', 'A', '04', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, 'Software Ofimatica', 'A', '05', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 'Software verticales', 'A', '07', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(11, 'Portatiles', 'A', '01', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5),
(12, 'Servidores', 'A', '03', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5),
(13, 'PC de Escritorio', 'A', '03', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5),
(14, 'Monitores', 'A', '01', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8),
(15, 'Discos Duros', 'A', '02', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8),
(16, 'Procesadores', 'A', '03', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8),
(17, 'Memorias RAM', 'A', '05', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8),
(18, 'Fuentes de Poder', 'A', '06', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8),
(19, 'Mouses', 'A', '07', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8),
(20, 'Mother Boards', 'A', '06', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8),
(21, 'Activo', 'A', '01', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(22, 'Inactivo', 'A', '03', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(23, 'Multimedia ', 'A', '09', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(24, 'Activo', 'A', '01', 0, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(25, 'Inactivo', 'A', '02', 0, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(26, 'Administrador', 'A', '01', 0, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(27, 'Operador', 'A', '02', 0, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(28, 'Cliente', 'A', '03', 0, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(29, 'Activa', 'A', '01', 0, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(30, 'Inactiva', 'A', '02', 0, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(31, 'Cedula', 'A', '01', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(32, 'Tarjeta Identidad', 'A', '02', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(33, 'Persona', 'A', '01', 0, 5, '0000-00-00 00:00:00', '2018-05-15 17:53:58', NULL),
(34, 'Empresa', 'A', '02', 0, 5, '0000-00-00 00:00:00', '2018-05-15 17:53:40', NULL),
(35, 'Cliente', 'A', '01', 0, 10, '2018-05-15 11:19:26', '2018-05-15 11:43:43', NULL),
(36, 'Empleado', 'A', '02', 0, 10, '2018-05-15 11:56:38', '2018-05-28 12:24:33', NULL),
(37, 'Bronce', 'A', '01', 0, 12, '2018-05-15 18:01:06', '2018-05-15 18:01:06', NULL),
(38, 'Plata', 'A', '02', 0, 12, '2018-05-15 18:01:27', '2018-05-15 18:01:27', NULL),
(39, 'Oro', 'A', '03', 0, 12, '2018-05-15 18:01:44', '2018-05-15 18:01:44', NULL),
(40, 'Masculino', 'A', '01', 0, 11, '2018-05-15 18:05:07', '2018-05-15 18:05:07', NULL),
(41, 'Femenino', 'A', '02', 0, 11, '2018-05-15 18:05:28', '2018-05-16 03:14:35', NULL),
(42, 'Ver', 'A', '01', 0, 13, '2018-05-16 04:37:22', '2018-05-16 04:37:22', NULL),
(43, 'Crear', 'A', '02', 0, 13, '2018-05-16 04:38:36', '2018-05-16 04:38:36', NULL),
(44, 'Modificar', 'A', '03', 0, 13, '2018-05-16 04:39:02', '2018-05-16 04:39:02', NULL),
(45, 'Borrar', 'A', '05', 0, 13, '2018-05-16 04:39:23', '2018-05-16 04:39:23', NULL),
(46, 'Eliminar', 'A', '06', 0, 13, '2018-05-16 04:39:46', '2018-05-16 04:39:46', NULL),
(47, 'Administrador de Sistema', 'A', '01', 0, 14, '2018-05-26 13:09:53', '2018-05-27 23:14:51', NULL),
(48, 'Operador', 'A', '02', 0, 14, '2018-05-26 13:10:41', '2018-05-26 13:10:41', NULL),
(49, 'Analista de Mercadeo', 'A', '03', 0, 14, '2018-05-26 13:11:08', '2018-05-27 23:09:16', NULL),
(50, 'Activo', 'A', '01', 0, 15, '2018-05-28 12:42:06', '2018-05-28 12:42:06', NULL),
(51, 'Inactivo', 'A', '02', 0, 15, '2018-05-28 12:42:17', '2018-05-28 12:42:17', NULL),
(52, 'Sistemas', 'A', '02', 0, 16, '2018-05-28 14:05:49', '2018-05-28 14:05:49', NULL),
(53, 'Ventas', 'A', '01', 0, 16, '2018-05-28 14:05:59', '2018-05-28 14:05:59', NULL),
(54, 'Administrativa', 'A', '04', 0, 16, '2018-05-28 14:06:19', '2018-05-28 14:06:19', NULL),
(55, 'Mercadeo', 'A', '05', 0, 16, '2018-05-28 14:06:40', '2018-05-28 14:06:40', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detfacturas`
--
ALTER TABLE `detfacturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_detfacturas_on_factura_id` (`factura_id`),
  ADD KEY `index_detfacturas_on_producto_id` (`producto_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_facturas_on_cliente_id` (`cliente_id`),
  ADD KEY `index_facturas_on_empleado_id` (`empleado_id`);

--
-- Indices de la tabla `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parametros`
--
ALTER TABLE `parametros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_option_operations`
--
ALTER TABLE `role_option_operations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_role_option_operations_on_options_id` (`options_id`);

--
-- Indices de la tabla `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `valorparametros`
--
ALTER TABLE `valorparametros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_valorparametros_on_parametro_id` (`parametro_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detfacturas`
--
ALTER TABLE `detfacturas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `parametros`
--
ALTER TABLE `parametros`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `role_option_operations`
--
ALTER TABLE `role_option_operations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `valorparametros`
--
ALTER TABLE `valorparametros`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `fk_rails_0b58373536` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`),
  ADD CONSTRAINT `fk_rails_c1da424846` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `role_option_operations`
--
ALTER TABLE `role_option_operations`
  ADD CONSTRAINT `fk_rails_825ca42662` FOREIGN KEY (`options_id`) REFERENCES `options` (`id`);

--
-- Filtros para la tabla `valorparametros`
--
ALTER TABLE `valorparametros`
  ADD CONSTRAINT `fk_rails_fb085c9e66` FOREIGN KEY (`parametro_id`) REFERENCES `parametros` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
