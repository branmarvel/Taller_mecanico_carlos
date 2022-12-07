-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2022 a las 17:41:39
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `taller`
--
CREATE DATABASE IF NOT EXISTS `taller` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `taller`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add tbl generos', 7, 'add_tblgeneros'),
(26, 'Can change tbl generos', 7, 'change_tblgeneros'),
(27, 'Can delete tbl generos', 7, 'delete_tblgeneros'),
(28, 'Can view tbl generos', 7, 'view_tblgeneros'),
(29, 'Can add tbl nacionalidad', 8, 'add_tblnacionalidad'),
(30, 'Can change tbl nacionalidad', 8, 'change_tblnacionalidad'),
(31, 'Can delete tbl nacionalidad', 8, 'delete_tblnacionalidad'),
(32, 'Can view tbl nacionalidad', 8, 'view_tblnacionalidad'),
(33, 'Can add tbl personas', 9, 'add_tblpersonas'),
(34, 'Can change tbl personas', 9, 'change_tblpersonas'),
(35, 'Can delete tbl personas', 9, 'delete_tblpersonas'),
(36, 'Can view tbl personas', 9, 'view_tblpersonas'),
(37, 'Can add tbl roles', 10, 'add_tblroles'),
(38, 'Can change tbl roles', 10, 'change_tblroles'),
(39, 'Can delete tbl roles', 10, 'delete_tblroles'),
(40, 'Can view tbl roles', 10, 'view_tblroles'),
(41, 'Can add tbl tipo de identificacion', 11, 'add_tbltipodeidentificacion'),
(42, 'Can change tbl tipo de identificacion', 11, 'change_tbltipodeidentificacion'),
(43, 'Can delete tbl tipo de identificacion', 11, 'delete_tbltipodeidentificacion'),
(44, 'Can view tbl tipo de identificacion', 11, 'view_tbltipodeidentificacion'),
(45, 'Can add tbl tipo de personas', 12, 'add_tbltipodepersonas'),
(46, 'Can change tbl tipo de personas', 12, 'change_tbltipodepersonas'),
(47, 'Can delete tbl tipo de personas', 12, 'delete_tbltipodepersonas'),
(48, 'Can view tbl tipo de personas', 12, 'view_tbltipodepersonas'),
(49, 'Can add tbl usuario', 13, 'add_tblusuario'),
(50, 'Can change tbl usuario', 13, 'change_tblusuario'),
(51, 'Can delete tbl usuario', 13, 'delete_tblusuario'),
(52, 'Can view tbl usuario', 13, 'view_tblusuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'data', 'tblgeneros'),
(8, 'data', 'tblnacionalidad'),
(9, 'data', 'tblpersonas'),
(10, 'data', 'tblroles'),
(11, 'data', 'tbltipodeidentificacion'),
(12, 'data', 'tbltipodepersonas'),
(13, 'data', 'tblusuario'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-07 16:14:25.007873'),
(2, 'auth', '0001_initial', '2022-12-07 16:14:25.353819'),
(3, 'admin', '0001_initial', '2022-12-07 16:14:25.435379'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-07 16:14:25.444377'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-07 16:14:25.455373'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-07 16:14:25.517840'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-07 16:14:25.556834'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-07 16:14:25.573829'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-07 16:14:25.581826'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-07 16:14:25.624003'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-07 16:14:25.627002'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-07 16:14:25.636998'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-07 16:14:25.652912'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-07 16:14:25.671905'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-07 16:14:25.688185'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-07 16:14:25.697182'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-07 16:14:25.712179'),
(18, 'data', '0001_initial', '2022-12-07 16:14:25.722175'),
(19, 'data', '0002_alter_tblgeneros_options_and_more', '2022-12-07 16:14:25.732172'),
(20, 'sessions', '0001_initial', '2022-12-07 16:14:25.756164');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

DROP TABLE IF EXISTS `tbl_categoria`;
CREATE TABLE `tbl_categoria` (
  `idTBL_categoria` int(11) NOT NULL,
  `nombre` enum('herramientas','repuestos') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

DROP TABLE IF EXISTS `tbl_clientes`;
CREATE TABLE `tbl_clientes` (
  `idTBL_clientes` int(11) NOT NULL,
  `fecha_inicio_cliente` date NOT NULL,
  `nr_pedidos` varchar(45) NOT NULL,
  `TBL_personas_idTBL_personas` int(11) NOT NULL,
  `licencia_de_conducir` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_codigoarea`
--

DROP TABLE IF EXISTS `tbl_codigoarea`;
CREATE TABLE `tbl_codigoarea` (
  `idTBL_CodigoArea` int(11) NOT NULL,
  `codigo_de_area` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalles_del_pedido`
--

DROP TABLE IF EXISTS `tbl_detalles_del_pedido`;
CREATE TABLE `tbl_detalles_del_pedido` (
  `TBL_productos_idTBL_productos` int(11) NOT NULL,
  `TBL_pedidos_tbV_pedidos` int(11) NOT NULL,
  `precio_por_unidad` decimal(10,0) NOT NULL,
  `cantidad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_devolucion`
--

DROP TABLE IF EXISTS `tbl_devolucion`;
CREATE TABLE `tbl_devolucion` (
  `idTBL_devolucion` int(11) NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `precio_producto` double(20,2) NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `cambio_o_devolucion` enum('cambio','devolucion') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_devolucion_has_tbl_pedidos`
--

DROP TABLE IF EXISTS `tbl_devolucion_has_tbl_pedidos`;
CREATE TABLE `tbl_devolucion_has_tbl_pedidos` (
  `TBL_devolucion_idTBL_devolucion` int(11) NOT NULL,
  `TBL_pedidos_tbV_pedidos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_diagnostico`
--

DROP TABLE IF EXISTS `tbl_diagnostico`;
CREATE TABLE `tbl_diagnostico` (
  `idTBL_Diagnostico` int(11) NOT NULL,
  `TBL_vehiculo_idTBL_vehiculo` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_direccion`
--

DROP TABLE IF EXISTS `tbl_direccion`;
CREATE TABLE `tbl_direccion` (
  `TBL_personas_idTBL_personas` int(11) NOT NULL,
  `TBL_parroquias_idTBL_parroquias` int(11) NOT NULL,
  `TBL_parroquias_TBL_municipio_idTBL_municipio` int(11) NOT NULL,
  `TBL_parroquias_TBL_municipio_TBL_estado_idTBL_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado`
--

DROP TABLE IF EXISTS `tbl_estado`;
CREATE TABLE `tbl_estado` (
  `idTBL_estado` int(11) NOT NULL,
  `estado` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_factura`
--

DROP TABLE IF EXISTS `tbl_factura`;
CREATE TABLE `tbl_factura` (
  `idTBL_factura` int(11) NOT NULL,
  `costo_total` double(20,2) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `TBL_clientes_idTBL_clientes` int(11) NOT NULL,
  `TBL_clientes_TBL_personas_idTBL_personas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_fallos`
--

DROP TABLE IF EXISTS `tbl_fallos`;
CREATE TABLE `tbl_fallos` (
  `idTBL_Fallos` int(11) NOT NULL,
  `TBL_Diagnostico_idTBL_Diagnostico` int(11) NOT NULL,
  `TBL_tipos_de_fallos_idTBL_tipos_de_fallos` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_generos`
--

DROP TABLE IF EXISTS `tbl_generos`;
CREATE TABLE `tbl_generos` (
  `idTBL_generos` int(11) NOT NULL,
  `tipo_genero` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_generos`
--

INSERT INTO `tbl_generos` (`idTBL_generos`, `tipo_genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inventario`
--

DROP TABLE IF EXISTS `tbl_inventario`;
CREATE TABLE `tbl_inventario` (
  `idTBL_inventario` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `descripcion` text NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double(20,2) NOT NULL,
  `fecha` date NOT NULL,
  `precio_por_servicio` decimal(10,0) NOT NULL,
  `TBL_modelos_idTBL_modelos` int(11) NOT NULL,
  `TBL_categoria_idTBL_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_marca`
--

DROP TABLE IF EXISTS `tbl_marca`;
CREATE TABLE `tbl_marca` (
  `idTBL_marca` int(11) NOT NULL,
  `nombre_marca` int(11) NOT NULL,
  `modelo` varchar(250) NOT NULL,
  `TBL_vehiculo_idTBL_vehiculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_modelos`
--

DROP TABLE IF EXISTS `tbl_modelos`;
CREATE TABLE `tbl_modelos` (
  `idTBL_modelos` int(11) NOT NULL,
  `modelo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_municipio`
--

DROP TABLE IF EXISTS `tbl_municipio`;
CREATE TABLE `tbl_municipio` (
  `idTBL_municipio` int(11) NOT NULL,
  `municipio` varchar(200) NOT NULL,
  `TBL_estado_idTBL_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_nacionalidad`
--

DROP TABLE IF EXISTS `tbl_nacionalidad`;
CREATE TABLE `tbl_nacionalidad` (
  `idTBL_nacionalidad` int(11) NOT NULL,
  `nacionalidad` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_nacionalidad`
--

INSERT INTO `tbl_nacionalidad` (`idTBL_nacionalidad`, `nacionalidad`) VALUES
(1, 'Venezolano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_parroquias`
--

DROP TABLE IF EXISTS `tbl_parroquias`;
CREATE TABLE `tbl_parroquias` (
  `idTBL_parroquias` int(11) NOT NULL,
  `parroquia` varchar(200) NOT NULL,
  `TBL_municipio_idTBL_municipio` int(11) NOT NULL,
  `TBL_municipio_TBL_estado_idTBL_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedidos`
--

DROP TABLE IF EXISTS `tbl_pedidos`;
CREATE TABLE `tbl_pedidos` (
  `tbV_pedidos` int(11) NOT NULL,
  `fecha_orden` timestamp NOT NULL DEFAULT current_timestamp(),
  `TBL_proveedor_idTBL_proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_personas`
--

DROP TABLE IF EXISTS `tbl_personas`;
CREATE TABLE `tbl_personas` (
  `idTBL_personas` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT current_timestamp(),
  `fecha_actualizado` timestamp NULL DEFAULT NULL,
  `TBL_tipo_de_identificacion_idTBL_tipo_de_cedula` int(11) NOT NULL,
  `TBL_nacionalidad_idTBL_nacionalidad` int(11) NOT NULL,
  `TBL_tipo_de_personas_idTBL_tipo_de_personas` int(11) NOT NULL,
  `TBL_generos_idTBL_generos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_personas`
--

INSERT INTO `tbl_personas` (`idTBL_personas`, `nombre`, `apellido`, `cedula`, `fecha_creado`, `fecha_actualizado`, `TBL_tipo_de_identificacion_idTBL_tipo_de_cedula`, `TBL_nacionalidad_idTBL_nacionalidad`, `TBL_tipo_de_personas_idTBL_tipo_de_personas`, `TBL_generos_idTBL_generos`) VALUES
(3, 'Brandon', 'bello', '24884464', '2022-12-01 16:38:57', '2022-12-01 16:38:57', 1, 1, 1, 1),
(4, 'Cristopher', 'Matima', '29548793', '2022-12-01 16:39:07', '2022-12-01 16:39:07', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

DROP TABLE IF EXISTS `tbl_productos`;
CREATE TABLE `tbl_productos` (
  `idTBL_productos` int(11) NOT NULL,
  `nombre_producto` varchar(45) NOT NULL,
  `cantidad_por_unidad` varchar(45) NOT NULL,
  `TBL_inventario_idTBL_inventario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proveedor`
--

DROP TABLE IF EXISTS `tbl_proveedor`;
CREATE TABLE `tbl_proveedor` (
  `idTBL_proveedor` int(11) NOT NULL,
  `rif` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `TBL_personas_idTBL_personas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
CREATE TABLE `tbl_roles` (
  `idTBL_roles` int(11) NOT NULL,
  `tipo_de_rol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_servicios`
--

DROP TABLE IF EXISTS `tbl_servicios`;
CREATE TABLE `tbl_servicios` (
  `idTBL_Servicios` int(11) NOT NULL,
  `TBL_TipoDeServicio_idTBL_TipoDeServicio` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `TBL_usuario_idtbL_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_servicios_has_tbl_factura`
--

DROP TABLE IF EXISTS `tbl_servicios_has_tbl_factura`;
CREATE TABLE `tbl_servicios_has_tbl_factura` (
  `TBL_Servicios_idTBL_Servicios` int(11) NOT NULL,
  `TBL_factura_idTBL_factura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_servicios_has_tbl_producto`
--

DROP TABLE IF EXISTS `tbl_servicios_has_tbl_producto`;
CREATE TABLE `tbl_servicios_has_tbl_producto` (
  `TBL_Servicios_idTBL_Servicios` int(11) NOT NULL,
  `TBL_producto_idTBL_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_telefonos`
--

DROP TABLE IF EXISTS `tbl_telefonos`;
CREATE TABLE `tbl_telefonos` (
  `TBL_personas_idTBL_personas` int(11) NOT NULL,
  `TBL_CodigoArea_idTBL_CodigoArea` int(11) NOT NULL,
  `TBL_tipo_de_nro_telefonico_idTBL_tipo_de_nro_telefonico` int(11) NOT NULL,
  `numero_de_telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipodeservicio`
--

DROP TABLE IF EXISTS `tbl_tipodeservicio`;
CREATE TABLE `tbl_tipodeservicio` (
  `idTBL_TipoDeServicio` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_de_fallos`
--

DROP TABLE IF EXISTS `tbl_tipos_de_fallos`;
CREATE TABLE `tbl_tipos_de_fallos` (
  `idTBL_tipos_de_fallos` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_de_vehiculos`
--

DROP TABLE IF EXISTS `tbl_tipos_de_vehiculos`;
CREATE TABLE `tbl_tipos_de_vehiculos` (
  `idTBL_tipo_de_vehiculo` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_de_identificacion`
--

DROP TABLE IF EXISTS `tbl_tipo_de_identificacion`;
CREATE TABLE `tbl_tipo_de_identificacion` (
  `idTBL_tipo_de_cedula` int(11) NOT NULL,
  `tipo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_tipo_de_identificacion`
--

INSERT INTO `tbl_tipo_de_identificacion` (`idTBL_tipo_de_cedula`, `tipo`) VALUES
(1, 'V-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_de_nro_telefonico`
--

DROP TABLE IF EXISTS `tbl_tipo_de_nro_telefonico`;
CREATE TABLE `tbl_tipo_de_nro_telefonico` (
  `idTBL_tipo_de_nro_telefonico` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_de_personas`
--

DROP TABLE IF EXISTS `tbl_tipo_de_personas`;
CREATE TABLE `tbl_tipo_de_personas` (
  `idTBL_tipo_de_personas` int(11) NOT NULL,
  `tipo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_tipo_de_personas`
--

INSERT INTO `tbl_tipo_de_personas` (`idTBL_tipo_de_personas`, `tipo`) VALUES
(1, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
CREATE TABLE `tbl_usuario` (
  `idtbL_usuario` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `estado` enum('Active','Inactive') NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT current_timestamp(),
  `fecha_actualizado` timestamp NULL DEFAULT NULL,
  `TBL_personas_idTBL_personas` int(11) NOT NULL,
  `TBL_roles_idTBL_roles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_vehiculo`
--

DROP TABLE IF EXISTS `tbl_vehiculo`;
CREATE TABLE `tbl_vehiculo` (
  `idTBL_vehiculo` int(11) NOT NULL,
  `placa` varchar(45) NOT NULL,
  `TBL_clientes_idTBL_clientes` int(11) NOT NULL,
  `TBL_tipo_de_vehiculo_idTBL_tipo_de_vehiculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`idTBL_categoria`);

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`idTBL_clientes`,`TBL_personas_idTBL_personas`),
  ADD KEY `fk_TBL_cliente_TBL_personas1_idx` (`TBL_personas_idTBL_personas`);

--
-- Indices de la tabla `tbl_codigoarea`
--
ALTER TABLE `tbl_codigoarea`
  ADD PRIMARY KEY (`idTBL_CodigoArea`);

--
-- Indices de la tabla `tbl_detalles_del_pedido`
--
ALTER TABLE `tbl_detalles_del_pedido`
  ADD PRIMARY KEY (`TBL_productos_idTBL_productos`,`TBL_pedidos_tbV_pedidos`),
  ADD KEY `fk_TBL_productos_has_TBL_pedidos_TBL_productos1_idx` (`TBL_productos_idTBL_productos`),
  ADD KEY `fk_TBL_detalles_del_pedido_TBL_pedidos1_idx` (`TBL_pedidos_tbV_pedidos`);

--
-- Indices de la tabla `tbl_devolucion`
--
ALTER TABLE `tbl_devolucion`
  ADD PRIMARY KEY (`idTBL_devolucion`);

--
-- Indices de la tabla `tbl_devolucion_has_tbl_pedidos`
--
ALTER TABLE `tbl_devolucion_has_tbl_pedidos`
  ADD PRIMARY KEY (`TBL_devolucion_idTBL_devolucion`,`TBL_pedidos_tbV_pedidos`),
  ADD KEY `fk_TBL_devolucion_has_TBL_pedidos_TBL_devolucion1_idx` (`TBL_devolucion_idTBL_devolucion`),
  ADD KEY `fk_TBL_devolucion_has_TBL_pedidos_TBL_pedidos1_idx` (`TBL_pedidos_tbV_pedidos`);

--
-- Indices de la tabla `tbl_diagnostico`
--
ALTER TABLE `tbl_diagnostico`
  ADD PRIMARY KEY (`idTBL_Diagnostico`,`TBL_vehiculo_idTBL_vehiculo`),
  ADD KEY `fk_TBL_Diagnostico_TBL_vehiculo1_idx` (`TBL_vehiculo_idTBL_vehiculo`);

--
-- Indices de la tabla `tbl_direccion`
--
ALTER TABLE `tbl_direccion`
  ADD PRIMARY KEY (`TBL_personas_idTBL_personas`,`TBL_parroquias_idTBL_parroquias`,`TBL_parroquias_TBL_municipio_idTBL_municipio`,`TBL_parroquias_TBL_municipio_TBL_estado_idTBL_estado`),
  ADD KEY `fk_TBL_personas_has_TBL_municipio_TBL_personas1_idx` (`TBL_personas_idTBL_personas`),
  ADD KEY `fk_TBL_Direccion_TBL_parroquias1_idx` (`TBL_parroquias_idTBL_parroquias`,`TBL_parroquias_TBL_municipio_idTBL_municipio`,`TBL_parroquias_TBL_municipio_TBL_estado_idTBL_estado`);

--
-- Indices de la tabla `tbl_estado`
--
ALTER TABLE `tbl_estado`
  ADD PRIMARY KEY (`idTBL_estado`);

--
-- Indices de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  ADD PRIMARY KEY (`idTBL_factura`),
  ADD KEY `fk_TBL_factura_TBL_clientes1_idx` (`TBL_clientes_idTBL_clientes`,`TBL_clientes_TBL_personas_idTBL_personas`);

--
-- Indices de la tabla `tbl_fallos`
--
ALTER TABLE `tbl_fallos`
  ADD PRIMARY KEY (`idTBL_Fallos`,`TBL_Diagnostico_idTBL_Diagnostico`,`TBL_tipos_de_fallos_idTBL_tipos_de_fallos`),
  ADD KEY `fk_TBL_Fallos_TBL_Diagnostico1_idx` (`TBL_Diagnostico_idTBL_Diagnostico`),
  ADD KEY `fk_TBL_Fallos_TBL_tipos_de_fallos1_idx` (`TBL_tipos_de_fallos_idTBL_tipos_de_fallos`);

--
-- Indices de la tabla `tbl_generos`
--
ALTER TABLE `tbl_generos`
  ADD PRIMARY KEY (`idTBL_generos`);

--
-- Indices de la tabla `tbl_inventario`
--
ALTER TABLE `tbl_inventario`
  ADD PRIMARY KEY (`idTBL_inventario`),
  ADD KEY `fk_TBL_producto_TBL_modelos1_idx` (`TBL_modelos_idTBL_modelos`),
  ADD KEY `fk_TBL_producto_TBL_categoria1_idx` (`TBL_categoria_idTBL_categoria`);

--
-- Indices de la tabla `tbl_marca`
--
ALTER TABLE `tbl_marca`
  ADD PRIMARY KEY (`idTBL_marca`,`TBL_vehiculo_idTBL_vehiculo`),
  ADD KEY `fk_TBL_marca_TBL_vehiculo1_idx` (`TBL_vehiculo_idTBL_vehiculo`);

--
-- Indices de la tabla `tbl_modelos`
--
ALTER TABLE `tbl_modelos`
  ADD PRIMARY KEY (`idTBL_modelos`);

--
-- Indices de la tabla `tbl_municipio`
--
ALTER TABLE `tbl_municipio`
  ADD PRIMARY KEY (`idTBL_municipio`,`TBL_estado_idTBL_estado`),
  ADD KEY `fk_TBL_municipio_TBL_estado1_idx` (`TBL_estado_idTBL_estado`);

--
-- Indices de la tabla `tbl_nacionalidad`
--
ALTER TABLE `tbl_nacionalidad`
  ADD PRIMARY KEY (`idTBL_nacionalidad`);

--
-- Indices de la tabla `tbl_parroquias`
--
ALTER TABLE `tbl_parroquias`
  ADD PRIMARY KEY (`idTBL_parroquias`,`TBL_municipio_idTBL_municipio`,`TBL_municipio_TBL_estado_idTBL_estado`),
  ADD KEY `fk_TBL_parroquia_TBL_municipio1_idx` (`TBL_municipio_idTBL_municipio`,`TBL_municipio_TBL_estado_idTBL_estado`);

--
-- Indices de la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  ADD PRIMARY KEY (`tbV_pedidos`,`TBL_proveedor_idTBL_proveedor`),
  ADD KEY `fk_TBL_pedidos_TBL_proveedor1_idx` (`TBL_proveedor_idTBL_proveedor`);

--
-- Indices de la tabla `tbl_personas`
--
ALTER TABLE `tbl_personas`
  ADD PRIMARY KEY (`idTBL_personas`,`TBL_tipo_de_identificacion_idTBL_tipo_de_cedula`,`TBL_nacionalidad_idTBL_nacionalidad`,`TBL_tipo_de_personas_idTBL_tipo_de_personas`,`TBL_generos_idTBL_generos`),
  ADD KEY `fk_TBL_personas_TBL_tipo_de_identificacion1_idx` (`TBL_tipo_de_identificacion_idTBL_tipo_de_cedula`),
  ADD KEY `fk_TBL_personas_TBL_nacionalidad1_idx` (`TBL_nacionalidad_idTBL_nacionalidad`),
  ADD KEY `fk_TBL_personas_TBL_tipo_de_personas1_idx` (`TBL_tipo_de_personas_idTBL_tipo_de_personas`),
  ADD KEY `fk_TBL_personas_TBL_generos1_idx` (`TBL_generos_idTBL_generos`);

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`idTBL_productos`,`TBL_inventario_idTBL_inventario`),
  ADD KEY `fk_TBL_productos_TBL_inventario1_idx` (`TBL_inventario_idTBL_inventario`);

--
-- Indices de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
  ADD PRIMARY KEY (`idTBL_proveedor`,`TBL_personas_idTBL_personas`),
  ADD KEY `fk_TBL_proveedor_TBL_personas1_idx` (`TBL_personas_idTBL_personas`);

--
-- Indices de la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`idTBL_roles`);

--
-- Indices de la tabla `tbl_servicios`
--
ALTER TABLE `tbl_servicios`
  ADD PRIMARY KEY (`idTBL_Servicios`,`TBL_TipoDeServicio_idTBL_TipoDeServicio`,`TBL_usuario_idtbL_usuario`),
  ADD KEY `fk_TBL_Servicios_TBL_TipoDeServicio1_idx` (`TBL_TipoDeServicio_idTBL_TipoDeServicio`),
  ADD KEY `fk_TBL_Servicios_TBL_usuario1_idx` (`TBL_usuario_idtbL_usuario`);

--
-- Indices de la tabla `tbl_servicios_has_tbl_factura`
--
ALTER TABLE `tbl_servicios_has_tbl_factura`
  ADD PRIMARY KEY (`TBL_Servicios_idTBL_Servicios`,`TBL_factura_idTBL_factura`),
  ADD KEY `fk_TBL_Servicios_has_TBL_factura_TBL_factura1_idx` (`TBL_factura_idTBL_factura`),
  ADD KEY `fk_TBL_Servicios_has_TBL_factura_TBL_Servicios1_idx` (`TBL_Servicios_idTBL_Servicios`);

--
-- Indices de la tabla `tbl_servicios_has_tbl_producto`
--
ALTER TABLE `tbl_servicios_has_tbl_producto`
  ADD PRIMARY KEY (`TBL_Servicios_idTBL_Servicios`,`TBL_producto_idTBL_producto`),
  ADD KEY `fk_TBL_Servicios_has_TBL_producto_TBL_producto1_idx` (`TBL_producto_idTBL_producto`),
  ADD KEY `fk_TBL_Servicios_has_TBL_producto_TBL_Servicios1_idx` (`TBL_Servicios_idTBL_Servicios`);

--
-- Indices de la tabla `tbl_telefonos`
--
ALTER TABLE `tbl_telefonos`
  ADD PRIMARY KEY (`TBL_personas_idTBL_personas`,`TBL_CodigoArea_idTBL_CodigoArea`),
  ADD KEY `fk_TBL_CodigoArea_has_TBL_personas_TBL_personas1_idx` (`TBL_personas_idTBL_personas`),
  ADD KEY `fk_TBL_CodigoArea_has_TBL_personas_TBL_CodigoArea1_idx` (`TBL_CodigoArea_idTBL_CodigoArea`),
  ADD KEY `fk_TBL_Telefonos_TBL_tipo_de_nro_telefonico1_idx` (`TBL_tipo_de_nro_telefonico_idTBL_tipo_de_nro_telefonico`);

--
-- Indices de la tabla `tbl_tipodeservicio`
--
ALTER TABLE `tbl_tipodeservicio`
  ADD PRIMARY KEY (`idTBL_TipoDeServicio`);

--
-- Indices de la tabla `tbl_tipos_de_fallos`
--
ALTER TABLE `tbl_tipos_de_fallos`
  ADD PRIMARY KEY (`idTBL_tipos_de_fallos`);

--
-- Indices de la tabla `tbl_tipos_de_vehiculos`
--
ALTER TABLE `tbl_tipos_de_vehiculos`
  ADD PRIMARY KEY (`idTBL_tipo_de_vehiculo`);

--
-- Indices de la tabla `tbl_tipo_de_identificacion`
--
ALTER TABLE `tbl_tipo_de_identificacion`
  ADD PRIMARY KEY (`idTBL_tipo_de_cedula`);

--
-- Indices de la tabla `tbl_tipo_de_nro_telefonico`
--
ALTER TABLE `tbl_tipo_de_nro_telefonico`
  ADD PRIMARY KEY (`idTBL_tipo_de_nro_telefonico`);

--
-- Indices de la tabla `tbl_tipo_de_personas`
--
ALTER TABLE `tbl_tipo_de_personas`
  ADD PRIMARY KEY (`idTBL_tipo_de_personas`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`idtbL_usuario`,`TBL_personas_idTBL_personas`,`TBL_roles_idTBL_roles`),
  ADD KEY `fk_TBL_usuario_TBL_personas1_idx` (`TBL_personas_idTBL_personas`),
  ADD KEY `fk_TBL_usuario_TBL_roles1_idx` (`TBL_roles_idTBL_roles`);

--
-- Indices de la tabla `tbl_vehiculo`
--
ALTER TABLE `tbl_vehiculo`
  ADD PRIMARY KEY (`idTBL_vehiculo`,`TBL_tipo_de_vehiculo_idTBL_tipo_de_vehiculo`),
  ADD KEY `fk_TBL_vehiculo_TBL_clientes1_idx` (`TBL_clientes_idTBL_clientes`),
  ADD KEY `fk_TBL_vehiculo_TBL_tipo_de_vehiculo1_idx` (`TBL_tipo_de_vehiculo_idTBL_tipo_de_vehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `idTBL_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `idTBL_clientes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_codigoarea`
--
ALTER TABLE `tbl_codigoarea`
  MODIFY `idTBL_CodigoArea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_devolucion`
--
ALTER TABLE `tbl_devolucion`
  MODIFY `idTBL_devolucion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_devolucion_has_tbl_pedidos`
--
ALTER TABLE `tbl_devolucion_has_tbl_pedidos`
  MODIFY `TBL_devolucion_idTBL_devolucion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_diagnostico`
--
ALTER TABLE `tbl_diagnostico`
  MODIFY `idTBL_Diagnostico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_direccion`
--
ALTER TABLE `tbl_direccion`
  MODIFY `TBL_personas_idTBL_personas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_estado`
--
ALTER TABLE `tbl_estado`
  MODIFY `idTBL_estado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  MODIFY `idTBL_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_fallos`
--
ALTER TABLE `tbl_fallos`
  MODIFY `idTBL_Fallos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_inventario`
--
ALTER TABLE `tbl_inventario`
  MODIFY `idTBL_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_marca`
--
ALTER TABLE `tbl_marca`
  MODIFY `idTBL_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_modelos`
--
ALTER TABLE `tbl_modelos`
  MODIFY `idTBL_modelos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_municipio`
--
ALTER TABLE `tbl_municipio`
  MODIFY `idTBL_municipio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_nacionalidad`
--
ALTER TABLE `tbl_nacionalidad`
  MODIFY `idTBL_nacionalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_parroquias`
--
ALTER TABLE `tbl_parroquias`
  MODIFY `idTBL_parroquias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  MODIFY `tbV_pedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_personas`
--
ALTER TABLE `tbl_personas`
  MODIFY `idTBL_personas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `idTBL_productos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
  MODIFY `idTBL_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `idTBL_roles` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_servicios`
--
ALTER TABLE `tbl_servicios`
  MODIFY `idTBL_Servicios` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_servicios_has_tbl_producto`
--
ALTER TABLE `tbl_servicios_has_tbl_producto`
  MODIFY `TBL_Servicios_idTBL_Servicios` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_telefonos`
--
ALTER TABLE `tbl_telefonos`
  MODIFY `TBL_personas_idTBL_personas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tipodeservicio`
--
ALTER TABLE `tbl_tipodeservicio`
  MODIFY `idTBL_TipoDeServicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tipos_de_fallos`
--
ALTER TABLE `tbl_tipos_de_fallos`
  MODIFY `idTBL_tipos_de_fallos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tipos_de_vehiculos`
--
ALTER TABLE `tbl_tipos_de_vehiculos`
  MODIFY `idTBL_tipo_de_vehiculo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_de_identificacion`
--
ALTER TABLE `tbl_tipo_de_identificacion`
  MODIFY `idTBL_tipo_de_cedula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_de_nro_telefonico`
--
ALTER TABLE `tbl_tipo_de_nro_telefonico`
  MODIFY `idTBL_tipo_de_nro_telefonico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_de_personas`
--
ALTER TABLE `tbl_tipo_de_personas`
  MODIFY `idTBL_tipo_de_personas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `idtbL_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_vehiculo`
--
ALTER TABLE `tbl_vehiculo`
  MODIFY `idTBL_vehiculo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD CONSTRAINT `fk_TBL_cliente_TBL_personas1` FOREIGN KEY (`TBL_personas_idTBL_personas`) REFERENCES `tbl_personas` (`idTBL_personas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_detalles_del_pedido`
--
ALTER TABLE `tbl_detalles_del_pedido`
  ADD CONSTRAINT `fk_TBL_detalles_del_pedido_TBL_pedidos1` FOREIGN KEY (`TBL_pedidos_tbV_pedidos`) REFERENCES `tbl_pedidos` (`tbV_pedidos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_productos_has_TBL_pedidos_TBL_productos1` FOREIGN KEY (`TBL_productos_idTBL_productos`) REFERENCES `tbl_productos` (`idTBL_productos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_devolucion_has_tbl_pedidos`
--
ALTER TABLE `tbl_devolucion_has_tbl_pedidos`
  ADD CONSTRAINT `fk_TBL_devolucion_has_TBL_pedidos_TBL_devolucion1` FOREIGN KEY (`TBL_devolucion_idTBL_devolucion`) REFERENCES `tbl_devolucion` (`idTBL_devolucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_devolucion_has_TBL_pedidos_TBL_pedidos1` FOREIGN KEY (`TBL_pedidos_tbV_pedidos`) REFERENCES `tbl_pedidos` (`tbV_pedidos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_diagnostico`
--
ALTER TABLE `tbl_diagnostico`
  ADD CONSTRAINT `fk_TBL_Diagnostico_TBL_vehiculo1` FOREIGN KEY (`TBL_vehiculo_idTBL_vehiculo`) REFERENCES `tbl_vehiculo` (`idTBL_vehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_direccion`
--
ALTER TABLE `tbl_direccion`
  ADD CONSTRAINT `fk_TBL_Direccion_TBL_parroquias1` FOREIGN KEY (`TBL_parroquias_idTBL_parroquias`,`TBL_parroquias_TBL_municipio_idTBL_municipio`,`TBL_parroquias_TBL_municipio_TBL_estado_idTBL_estado`) REFERENCES `tbl_parroquias` (`idTBL_parroquias`, `TBL_municipio_idTBL_municipio`, `TBL_municipio_TBL_estado_idTBL_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_personas_has_TBL_municipio_TBL_personas1` FOREIGN KEY (`TBL_personas_idTBL_personas`) REFERENCES `tbl_personas` (`idTBL_personas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_factura`
--
ALTER TABLE `tbl_factura`
  ADD CONSTRAINT `fk_TBL_factura_TBL_clientes1` FOREIGN KEY (`TBL_clientes_idTBL_clientes`,`TBL_clientes_TBL_personas_idTBL_personas`) REFERENCES `tbl_clientes` (`idTBL_clientes`, `TBL_personas_idTBL_personas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_fallos`
--
ALTER TABLE `tbl_fallos`
  ADD CONSTRAINT `fk_TBL_Fallos_TBL_Diagnostico1` FOREIGN KEY (`TBL_Diagnostico_idTBL_Diagnostico`) REFERENCES `tbl_diagnostico` (`idTBL_Diagnostico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_Fallos_TBL_tipos_de_fallos1` FOREIGN KEY (`TBL_tipos_de_fallos_idTBL_tipos_de_fallos`) REFERENCES `tbl_tipos_de_fallos` (`idTBL_tipos_de_fallos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_inventario`
--
ALTER TABLE `tbl_inventario`
  ADD CONSTRAINT `fk_TBL_producto_TBL_categoria1` FOREIGN KEY (`TBL_categoria_idTBL_categoria`) REFERENCES `tbl_categoria` (`idTBL_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_producto_TBL_modelos1` FOREIGN KEY (`TBL_modelos_idTBL_modelos`) REFERENCES `tbl_modelos` (`idTBL_modelos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_marca`
--
ALTER TABLE `tbl_marca`
  ADD CONSTRAINT `fk_TBL_marca_TBL_vehiculo1` FOREIGN KEY (`TBL_vehiculo_idTBL_vehiculo`) REFERENCES `tbl_vehiculo` (`idTBL_vehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_municipio`
--
ALTER TABLE `tbl_municipio`
  ADD CONSTRAINT `fk_TBL_municipio_TBL_estado1` FOREIGN KEY (`TBL_estado_idTBL_estado`) REFERENCES `tbl_estado` (`idTBL_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_parroquias`
--
ALTER TABLE `tbl_parroquias`
  ADD CONSTRAINT `fk_TBL_parroquia_TBL_municipio1` FOREIGN KEY (`TBL_municipio_idTBL_municipio`,`TBL_municipio_TBL_estado_idTBL_estado`) REFERENCES `tbl_municipio` (`idTBL_municipio`, `TBL_estado_idTBL_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  ADD CONSTRAINT `fk_TBL_pedidos_TBL_proveedor1` FOREIGN KEY (`TBL_proveedor_idTBL_proveedor`) REFERENCES `tbl_proveedor` (`idTBL_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_personas`
--
ALTER TABLE `tbl_personas`
  ADD CONSTRAINT `fk_TBL_personas_TBL_generos1` FOREIGN KEY (`TBL_generos_idTBL_generos`) REFERENCES `tbl_generos` (`idTBL_generos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_personas_TBL_nacionalidad1` FOREIGN KEY (`TBL_nacionalidad_idTBL_nacionalidad`) REFERENCES `tbl_nacionalidad` (`idTBL_nacionalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_personas_TBL_tipo_de_identificacion1` FOREIGN KEY (`TBL_tipo_de_identificacion_idTBL_tipo_de_cedula`) REFERENCES `tbl_tipo_de_identificacion` (`idTBL_tipo_de_cedula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_personas_TBL_tipo_de_personas1` FOREIGN KEY (`TBL_tipo_de_personas_idTBL_tipo_de_personas`) REFERENCES `tbl_tipo_de_personas` (`idTBL_tipo_de_personas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD CONSTRAINT `fk_TBL_productos_TBL_inventario1` FOREIGN KEY (`TBL_inventario_idTBL_inventario`) REFERENCES `tbl_inventario` (`idTBL_inventario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
  ADD CONSTRAINT `fk_TBL_proveedor_TBL_personas1` FOREIGN KEY (`TBL_personas_idTBL_personas`) REFERENCES `tbl_personas` (`idTBL_personas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_servicios`
--
ALTER TABLE `tbl_servicios`
  ADD CONSTRAINT `fk_TBL_Servicios_TBL_TipoDeServicio1` FOREIGN KEY (`TBL_TipoDeServicio_idTBL_TipoDeServicio`) REFERENCES `tbl_tipodeservicio` (`idTBL_TipoDeServicio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_Servicios_TBL_usuario1` FOREIGN KEY (`TBL_usuario_idtbL_usuario`) REFERENCES `tbl_usuario` (`idtbL_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_servicios_has_tbl_factura`
--
ALTER TABLE `tbl_servicios_has_tbl_factura`
  ADD CONSTRAINT `fk_TBL_Servicios_has_TBL_factura_TBL_Servicios1` FOREIGN KEY (`TBL_Servicios_idTBL_Servicios`) REFERENCES `tbl_servicios` (`idTBL_Servicios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_Servicios_has_TBL_factura_TBL_factura1` FOREIGN KEY (`TBL_factura_idTBL_factura`) REFERENCES `tbl_factura` (`idTBL_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_servicios_has_tbl_producto`
--
ALTER TABLE `tbl_servicios_has_tbl_producto`
  ADD CONSTRAINT `fk_TBL_Servicios_has_TBL_producto_TBL_Servicios1` FOREIGN KEY (`TBL_Servicios_idTBL_Servicios`) REFERENCES `tbl_servicios` (`idTBL_Servicios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_Servicios_has_TBL_producto_TBL_producto1` FOREIGN KEY (`TBL_producto_idTBL_producto`) REFERENCES `tbl_inventario` (`idTBL_inventario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_telefonos`
--
ALTER TABLE `tbl_telefonos`
  ADD CONSTRAINT `fk_TBL_CodigoArea_has_TBL_personas_TBL_CodigoArea1` FOREIGN KEY (`TBL_CodigoArea_idTBL_CodigoArea`) REFERENCES `tbl_codigoarea` (`idTBL_CodigoArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_CodigoArea_has_TBL_personas_TBL_personas1` FOREIGN KEY (`TBL_personas_idTBL_personas`) REFERENCES `tbl_personas` (`idTBL_personas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_Telefonos_TBL_tipo_de_nro_telefonico1` FOREIGN KEY (`TBL_tipo_de_nro_telefonico_idTBL_tipo_de_nro_telefonico`) REFERENCES `tbl_tipo_de_nro_telefonico` (`idTBL_tipo_de_nro_telefonico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD CONSTRAINT `fk_TBL_usuario_TBL_personas1` FOREIGN KEY (`TBL_personas_idTBL_personas`) REFERENCES `tbl_personas` (`idTBL_personas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_usuario_TBL_roles1` FOREIGN KEY (`TBL_roles_idTBL_roles`) REFERENCES `tbl_roles` (`idTBL_roles`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_vehiculo`
--
ALTER TABLE `tbl_vehiculo`
  ADD CONSTRAINT `fk_TBL_vehiculo_TBL_clientes1` FOREIGN KEY (`TBL_clientes_idTBL_clientes`) REFERENCES `tbl_clientes` (`idTBL_clientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_vehiculo_TBL_tipo_de_vehiculo1` FOREIGN KEY (`TBL_tipo_de_vehiculo_idTBL_tipo_de_vehiculo`) REFERENCES `tbl_tipos_de_vehiculos` (`idTBL_tipo_de_vehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;
