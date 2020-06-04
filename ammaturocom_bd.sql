-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 12-11-2019 a las 23:31:08
-- Versión del servidor: 10.3.18-MariaDB-cll-lve
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ammaturocom_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destacado` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id`, `imagen`, `titulo`, `descripcion`, `destacado`, `orden`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, NULL, '{\"es\":\"Estaremos en EXPO LOGISTI-K 2018 en La Rural Predio Ferial - Buenos Aires - Argentina\",\"en\":\"We will be at EXPO LOGISTI-K 2018 in La Rural Predio Ferial - Buenos Aires - Argentina\"}', '{\"es\":\"<p>Es el encuentro bienal del profesional de la log&iacute;stica y la cadena de abastecimiento. Un evento pensado para dar soluciones al conjunto de acciones que realiza un empresario desde que inicia la compra de insumos y materia prima hasta la entrega del producto terminado al cliente, incluyendo el transporte, producci&oacute;n, embalaje, almacenamiento, movimiento, codificaci&oacute;n y distribuci&oacute;n de sus productos. Empresas productoras de bienes y proveedoras de servicios, todas soluciones para el profesional de la log&iacute;stica: movimiento y elevaci&oacute;n, automatizaci&oacute;n; embalaje; almacenajes y carga; log&iacute;stica IT, infraestructura y construcci&oacute;n; veh&iacute;culos comerciales; management y servicios.<\\/p>\",\"en\":\"<p>It is the biennial meeting of the logistics professional and the supply chain. An event designed to provide solutions to the set of actions carried out by an entrepreneur from the beginning of the purchase of raw materials and supplies until the delivery of the finished product to the customer, including transportation, production, packaging, storage, movement, coding and distribution of their products. products.<br \\/>\\r\\nCompanies producing goods and service providers, all solutions for the logistics professional: movement and elevation, automation; packaging; storage and loading; IT logistics, infrastructure and construction; Commercial Vehicles; management and services.<\\/p>\"}', NULL, 'aa', 2, '2019-06-25 14:21:11', '2019-06-25 14:23:17'),
(2, NULL, '{\"es\":\"Sistema de Transporte Power & Free para nueva Planta de Radiaci\\u00f3n - Cliente IONICS\",\"en\":\"Power & Free Transportation System for a new Radiation Plant - IONICS Client\"}', '{\"es\":\"<p>das<\\/p>\",\"en\":\"<p>gjghj<\\/p>\"}', NULL, 'ab', 3, '2019-06-25 14:24:47', '2019-06-25 14:24:47'),
(3, NULL, '{\"es\":\"Los esperamos en TECNOFIDTA: la mayor exposici\\u00f3n de Tecnolog\\u00eda en Alimentos\",\"en\":\"We are waiting for you at TECNOFIDTA: the largest exhibition of Food Technology\"}', '{\"es\":null,\"en\":null}', NULL, 'ac', 3, '2019-06-25 14:25:41', '2019-06-25 14:25:41'),
(4, NULL, '{\"es\":\"Sistema Autom\\u00e1tico de Transporte de Pallets - YPF Planta DOLE - Ensenada - Pcia. de Bs. As.\",\"en\":\"Automatic Pallets Transport System - YPF DOLE Plant - Ensenada - Province of Bs. As.\"}', '{\"es\":null,\"en\":null}', NULL, 'ad', 1, '2019-06-25 14:26:21', '2019-06-25 14:26:21'),
(7, NULL, '{\"es\":\"PALETIZADO FINAL DE LINEA - Planta Sinteplast\",\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 'ag', 3, '2019-11-01 18:48:56', '2019-11-01 18:57:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_imagenes`
--

CREATE TABLE `blog_imagenes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_blog` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `blog_imagenes`
--

INSERT INTO `blog_imagenes` (`id`, `imagen`, `orden`, `id_blog`, `created_at`, `updated_at`) VALUES
(2, 'imagenes/blog/sGYha6tXMOiGdtScgdxQIUA7kkblqk1Byt0PK5ug.jpeg', 'aa', 1, '2019-06-25 14:23:17', '2019-06-25 14:23:17'),
(6, 'imagenes/blog/mPiJfruZSYowAoGYUVANf9awj3WLjT45tplhX18e.jpeg', 'aa', 2, '2019-06-28 17:44:38', '2019-06-28 17:44:38'),
(7, 'imagenes/blog/Fwzsw52lEQBf1RvyStYyYM3UGRqHCOCTkegzOz5k.jpeg', 'aa', 3, '2019-06-28 17:46:11', '2019-06-28 17:46:11'),
(8, 'imagenes/blog/c3sv0zF2eNyhcnfcVHRTaGagHn09X2wIxIpp7Z5s.jpeg', 'aa', 4, '2019-06-28 17:46:56', '2019-06-28 17:46:56'),
(13, 'imagenes/blog/FEMC0sGnT09hdWOimT5d3mOboG1GFvpKcDiEsLlM.png', 'ag', 7, '2019-11-01 18:57:27', '2019-11-01 18:57:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `orden`, `created_at`, `updated_at`) VALUES
(1, '{\"es\":\"Actualidad\",\"en\":\"News\"}', 'aa', '2019-06-24 23:11:48', '2019-06-24 23:13:44'),
(2, '{\"es\":\"Eventos\",\"en\":\"Events\"}', 'ab', '2019-06-24 23:12:49', '2019-06-24 23:12:49'),
(3, '{\"es\":\"Productos\",\"en\":\"products\"}', 'ac', '2019-06-24 23:13:06', '2019-06-24 23:13:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `direccion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terminos` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mapa` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `direccion`, `telefono`, `email`, `terminos`, `mapa`, `created_at`, `updated_at`) VALUES
(1, '{\"calle\":\"Parque Industrial Tecnol\\u00f3gico  Quilmes Camino Gral. Manuel Belgrano\",\"altura\":\"10,500\",\"localidad\":\"Bernal Oeste -\",\"provincia\":\"Prov. de Buenos Aires\",\"pais\":\"Argentina\"}', '[{\"tipo\":\"tel\",\"seccion\":\"ambos\",\"num\":\"4270-2828  y Rotativas\"},{\"tipo\":\"wsp\",\"seccion\":\"header\",\"num\":\"11 7035-1111\"}]', '[{\"seccion\":\"principal\",\"email\":\"info@ammaturo.com.ar\"},{\"seccion\":\"Post-ventas\",\"email\":\"ventas@ammaturo.com.ar\"}]', '{\"es\":\"<p>Bienvenido al sitio de internet www.ammaturo.com.ar. Los t&eacute;rminos y condiciones, que se describen a continuaci&oacute;n (en adelante los &quot;T&eacute;rminos y Condiciones&quot;) tienen por objeto regular el uso que del mismo realicen las personas que ingresen al Sitio. Por &quot;Usuario&quot; del Sitio se entiende tanto a quienes se registren en el mismo como a los que tan s&oacute;lo visiten el mismo, (en adelante el &quot;Usuario&quot;). Al registrarse y\\/o navegar en el Sitio, el Usuario presta su consentimiento al presente.<\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\nLos T&eacute;rminos y Condiciones as&iacute; como la Pol&iacute;tica de Privacidad y\\/o informaciones sobre el Sitio se considerar&aacute;n de aplicaci&oacute;n para todo Usuario del Sitio desde el primer momento en que acceda al mismo. Los presentes t&eacute;rminos y condiciones tienen car&aacute;cter obligatorio y vinculante. Se aplican a todas las compras y actividades realizadas en el Sitio. Si el Usuario no acepta en forma total los presentes T&eacute;rminos y Condiciones y la Pol&iacute;tica de Privacidad, le rogamos que no avance en el acceso y visita de nuestro Sitio. En caso de avanzar en la visita a nuestro Sitio, se entender&aacute; que el Usuario acept&oacute; sin reservas los presentes T&eacute;rminos y Condiciones y la Pol&iacute;tica de Privacidad, aceptando recibir mails peri&oacute;dicos con la informaci&oacute;n que el Sitio determine. Los T&eacute;rminos y Condiciones y la Pol&iacute;tica de Privacidad podr&aacute;n ser modificados en todo o en parte en cualquier momento y a exclusivo criterio de AMMATURO S.A.; dichos cambios e implementaciones tendr&aacute;n vigencia a partir del momento mismo en que sean publicados o insertados en el Sitio o desde que sean notificados al Usuario por cualquier medio, lo que ocurra primero. Por lo expuesto, le sugerimos que los visite peri&oacute;dicamente. Las violaciones a los T&eacute;rminos y Condiciones generar&aacute;n el derecho en favor del titular del Sitio a suspender o terminar la prestaci&oacute;n del servicio al Usuario que las haya realizado, por acci&oacute;n u omisi&oacute;n. El Sitio se preocupa por la protecci&oacute;n de datos de car&aacute;cter personal de los Usuarios, de acuerdo a los lineamientos expuestos en nuestra Pol&iacute;tica de Privacidad.&nbsp;<\\/p>\",\"en\":\"<p>Welcome to the website www.ammaturo.com.ar. The terms and conditions, which are described below (hereinafter the &quot;Terms and Conditions&quot;) are intended to regulate the use of the same made by persons who enter the Site. By &quot;User&quot; of the Site is understood both those who register in it and those who only visit it, (hereinafter the &quot;User&quot;). By registering and \\/ or browsing the Site, the User consents to the present.<\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\nThe Terms and Conditions as well as the Privacy Policy and \\/ or information on the Site will be considered applicable to all Users of the Site from the first moment they access it. These terms and conditions are mandatory and binding. They apply to all purchases and activities performed on the Site. If the User does not fully accept these Terms and Conditions and the Privacy Policy, we ask you not to progress in accessing and visiting our Site. In case of progress in the visit to our Site, it will be understood that the User accepted without reservation the present Terms and Conditions and the Privacy Policy, accepting to receive periodic mails with the information that the Site determines. The Terms and Conditions and the Privacy Policy may be modified in whole or in part at any time and at the sole discretion of AMMATURO S.A .; said changes and implementations shall be effective as of the moment they are published or inserted in the Site or as soon as they are notified to the User by any means, whichever occurs first. Therefore, we suggest you visit them periodically. Violations of the Terms and Conditions will generate the right in favor of the owner of the Site to suspend or terminate the provision of the service to the User who made them, by action or omission. The Site is concerned with the protection of personal data of Users, according to the guidelines set out in our Privacy Policy.<\\/p>\"}', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3278.9227360687523!2d-58.33727328476699!3d-34.732341880426326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95a32d77d460ecb7%3A0xb9b456c8bf477eb1!2sAmmaturo+S.A.!5e0!3m2!1ses-419!2sar!4v1561375264895!5m2!1ses-419!2sar\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, '2019-07-22 17:12:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `antiguedad` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trayectoria` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clientes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `titulo`, `texto`, `video`, `antiguedad`, `trayectoria`, `clientes`, `orden`, `created_at`, `updated_at`) VALUES
(1, '{\"es\":\"M\\u00e1s de 70 a\\u00f1os de trayectoria\",\"en\":\"More than 70 years of experience\"}', '{\"es\":\"<p><strong>Ammaturo S.A.<\\/strong> es una empresa Argentina, con proyecci&oacute;n internacional, dedicada al dise&ntilde;o, fabricaci&oacute;n e instalaci&oacute;n de Bienes de Capital, m&aacute;s precisamente Equipos, M&aacute;quinas y Transportadores de Materiales para todo tipo de Industria.<br \\/>\\r\\nDe extensa trayectoria, <span style=\\\"color:#31923f\\\">comienza su actividad hace m&aacute;s de 70 a&ntilde;os<\\/span>, creciendo ininterrumpidamente, en lo T&eacute;cnico, Comercial, Financiero, Instalaciones, y en Recursos Humanos, pilares fundamentales de su continuo desarrollo industrial.<br \\/>\\r\\nDesarrollando, re inventando, construyendo, armando, y testeando nuevos Equipos, Sistemas y Maquinas Industriales de acuerdo a las necesidades de nuestros variados Clientes, en los m&aacute;s diversos Rubros, hemos ganado la debida experiencia para posibilitar en el presente ofrecer todo nuestro Potencial T&eacute;cnico Comercial.<br \\/>\\r\\n<span style=\\\"color:#31923f\\\">Integrando el dise&ntilde;o, la fabricaci&oacute;n integral, la instalaci&oacute;n y puesta en marcha y el servicio post-venta sin depender de terceros.<\\/span> Brindamos respuestas r&aacute;pidas y econ&oacute;micas a los requerimientos de nuestros Clientes.<\\/p>\",\"en\":\"<p><strong>Ammaturo S.A.<\\/strong> is an Argentine company, with international projection, dedicated to the design, manufacture and installation of Capital Goods, more precisely Equipment, Machines and Material Transporters for all types of Industry.<br \\/>\\r\\nOf extensive trajectory, <span style=\\\"color:#31923f\\\">it begins its activity for more than 70 years<\\/span>, growing without interruption, in the Technical, Commercial, Financial, Installations, and in Human Resources, fundamental pillars of its continuous industrial development.<br \\/>\\r\\nDeveloping, re inventing, building, assembling, and testing new Equipment, Systems and Industrial Machines according to the needs of our various Clients, in the most diverse areas, we have gained the due experience to enable in the present to offer all our Commercial Technical Potential .<br \\/>\\r\\n<span style=\\\"color:#31923f\\\">Integrating design, integral manufacturing, installation and commissioning and after-sales service without relying on third parties.<\\/span> We provide fast and economic answers to the requirements of our Clients.<\\/p>\"}', '{\"es\":\"sjGGZFBdRD0\",\"en\":\"sjGGZFBdRD0\"}', '{\"es\":\"<p><strong>25 a&ntilde;os&nbsp;<\\/strong><br \\/>\\r\\nen rob&oacute;tica<\\/p>\",\"en\":\"<p><strong>25 years<\\/strong><br \\/>\\r\\nin robotics<\\/p>\"}', '{\"es\":\"<p><strong>70 a&ntilde;os&nbsp;<\\/strong><br \\/>\\r\\nde trayectoria<\\/p>\",\"en\":\"<p><strong>70 years<\\/strong><br \\/>\\r\\nof trajectory<\\/p>\"}', '{\"es\":\"<p><strong>150 Clientes<\\/strong><br \\/>\\r\\nvisite nuestro cat&aacute;logo<\\/p>\",\"en\":\"<p><strong>150 Customers<\\/strong><br \\/>\\r\\nvisit our catalog<\\/p>\"}', NULL, NULL, '2019-08-13 20:27:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enlaces`
--

CREATE TABLE `enlaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `enlaces`
--

INSERT INTO `enlaces` (`id`, `imagen`, `logo`, `titulo`, `descripcion`, `url`, `created_at`, `updated_at`) VALUES
(1, 'imagenes/enlace/re5mhnRVj7YAyOIs2mTbzjUKQSSDwrWZnXx0Dtla.jpeg', 'imagenes/enlace/BvqG9RkxJxPgzkWZdlbLs4AvIH3XA0hNGp76VhkN.jpeg', '{\"es\":\"Divisi\\u00f3n ROLMEC. Soluciones globales en transportadores.\",\"en\":\"ROLMEC Division. Soluciones globales en transportadores.\"}', '{\"es\":\"<p><strong>Fue creada y desarrollada con el fin de poder asistir a todos nuestros equipos y sistemas en la post-venta durante las 24 hs los 365 del a&ntilde;o, facilitando la provision de todos los componentes de los mismos, <\\/strong><strong>contando con los mejores precios del mercado y personal tecnico altamente capacitado.&nbsp; consulte por servicio de equipos fabricados por terceros.<\\/strong><\\/p>\",\"en\":\"<p>We offer a Post Sale integral service, with 24 hours&nbsp;Emergency Assistance, 365 days a year, facilitating the provision of all the components, counting with the best market prices and highly trained technical staff. Consult for&nbsp;equipments manufactured by third parties.<\\/p>\"}', 'http://osolelaravel.com/rolmec/', NULL, '2019-07-25 00:45:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias`
--

CREATE TABLE `familias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_superior` bigint(20) UNSIGNED DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `familias`
--

INSERT INTO `familias` (`id`, `imagen`, `nombre`, `id_superior`, `active`, `orden`, `created_at`, `updated_at`) VALUES
(1, NULL, '{\"es\":\"Transportadores de Bultos\",\"en\":\"Package Conveyors\"}', NULL, 1, 'aa', '2019-06-24 18:01:04', '2019-07-19 15:55:40'),
(2, NULL, '{\"es\":\"Transportadores a Granel\",\"en\":\"Bulk conveyors\"}', NULL, 1, 'ab', '2019-06-24 18:07:05', '2019-06-28 17:54:47'),
(3, NULL, '{\"es\":\"Transportadores Especiales\",\"en\":\"Special conveyors\"}', NULL, 1, 'ac', '2019-06-24 18:07:32', '2019-06-24 18:07:32'),
(4, NULL, '{\"es\":\"Automatizaci\\u00f3n y Rob\\u00f3tica\",\"en\":\"Automation and robotics\"}', NULL, 1, 'ad', '2019-06-24 18:07:57', '2019-06-28 17:54:49'),
(5, NULL, '{\"es\":\"Sistemas Aplicados de Almacenaje\",\"en\":\"Applied storage systems\"}', NULL, 1, 'ae', '2019-06-24 18:08:21', '2019-06-28 17:54:54'),
(6, NULL, '{\"es\":\"M\\u00e1quinas y Equipos\",\"en\":\"Machines and Equipment\"}', NULL, 1, 'af', '2019-06-24 18:08:45', '2019-06-28 20:12:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iconos`
--

CREATE TABLE `iconos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `iconos`
--

INSERT INTO `iconos` (`id`, `imagen`, `titulo`, `texto`, `seccion`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'imagenes/icono/BA0lLR0LtrcGQLQIWufoVXpyRe6xOEmrr36BkS9a.png', '{\"es\":\"Dise\\u00f1o y desarrollo integral\",\"en\":\"Integral design and development\"}', '{\"es\":\"<p>En Ammaturo S.A. dise&ntilde;amos y construimos integralmente una extensa L&iacute;nea de Equipos y M&aacute;quinas Industriales en nuestros Talleres, visite nuestro cat&aacute;logo para m&aacute;s informaci&oacute;n.<\\/p>\",\"en\":\"<p>In Ammaturo S.A. We design and build an extensive Line of Industrial Equipment and Machines in our workshops, visit our catalog for more information<\\/p>\"}', 'home', 'aa', '2019-06-24 15:48:57', '2019-07-08 18:19:07'),
(2, 'imagenes/icono/aAg0zhSPqu43kbeuwlWgpyjaS50x49WYJtHS6sNk.png', '{\"es\":\"Soluciones Llave en mano\",\"en\":\"Turnkey Solutions\"}', '{\"es\":\"<p>Nuestro equipo de ingenieros y t&eacute;cnicos est&aacute;n capacitados para comprender las necesidades de nuestros clientes, y&nbsp;ofrecer la&nbsp;soluci&oacute;n t&eacute;cnica y econ&oacute;micamente m&aacute;s beneficiosa<\\/p>\",\"en\":\"<p>Our team of engineers and technicians are trained to understand the needs of our customers, and&nbsp;offer the most technically and economically beneficial solution<\\/p>\"}', 'home', 'ab', '2019-06-24 15:55:30', '2019-07-08 18:13:06'),
(3, 'imagenes/icono/QeNx3jmnVtlfFKRVx6pLzbqlYded0TM4dGCf5vAQ.png', '{\"es\":\"Trayectoria y proyecci\\u00f3n internacional\",\"en\":\"International trajectory and projection\"}', '{\"es\":\"<p>Una empresa Argentina de extensa trayectoria y con proyecci&oacute;n internacional, dedicada al dise&ntilde;o, fabricaci&oacute;n e instalaci&oacute;n de Equipos, M&aacute;quinas y Transportadores<\\/p>\",\"en\":\"<p>An Argentine company with extensive experience and international projection, dedicated to the design, manufacture and installation of Equipment, Machines and Conveyors<\\/p>\"}', 'home', 'ac', '2019-06-24 15:56:08', '2019-07-08 18:13:14'),
(4, 'imagenes/icono/45Jon3n39Fy6Otjd7lmFevxQUrReLACcJV0ZcDbc.png', '{\"es\":\"Atenci\\u00f3n personalizada\",\"en\":\"Personal attention\"}', 'null', 'postventa', 'aa', '2019-06-25 15:29:12', '2019-06-25 15:34:21'),
(5, 'imagenes/icono/bPltg4R8hzwDDdDa3VCmkoimQLRv5cOrBnZM1E97.png', '{\"es\":\"Respuesta Inmediata\",\"en\":\"Immediate response\"}', 'null', 'postventa', 'ac', '2019-06-25 15:33:33', '2019-06-25 15:33:33'),
(6, 'imagenes/icono/NjJYNOjn3Dj07Yz2YOFLRiCyB8k3em5M2RW3nixB.png', '{\"es\":\"Asistencia 24 hs.\",\"en\":\"24 hour assistance\"}', 'null', 'postventa', 'ac', '2019-06-25 15:34:13', '2019-06-25 15:34:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingenieria`
--

CREATE TABLE `ingenieria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ingenieria`
--

INSERT INTO `ingenieria` (`id`, `imagen`, `titulo`, `subtitulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'imagenes/ingenieria/7Ss295RxmdHeRzSr7cIwziuno40f8j0Lp1SXYhS7.png', '{\"es\":\"Dise\\u00f1o y Fabricaci\\u00f3n a medida\",\"en\":\"Custom design and manufacturing\"}', '{\"es\":\"Obras llave en mano\",\"en\":\"Turnkey works\"}', '{\"es\":\"<p>Nuestras oficinas t&eacute;cnicas, trabajan con herramientas indispensables, como el dise&ntilde;o y dibujo por computadora, y elementos de alto desarrollo tecnol&oacute;gico, permiti&eacute;ndonos el desarrollo de m&aacute;quinas espec&iacute;ficas, proyectos completos, y obras llave en mano de &uacute;ltima generaci&oacute;n.&nbsp;<\\/p>\",\"en\":\"<p>Our technical offices work with indispensable tools, such as design and drawing by computer, and elements of high technological development, allowing us the development of specific machines, complete projects, and turn-key works of last generation.<\\/p>\"}', 'aa', '2019-06-25 14:56:41', '2019-06-25 15:03:14'),
(2, 'imagenes/ingenieria/9WW4AxX17z6XPuFH1ulfZr5eyORaf4igwIiPp9oh.png', '{\"es\":\"Desarrollo de tecnolog\\u00eda\",\"en\":\"Technology development\"}', '{\"es\":\"Departamento de automaci\\u00f3n\",\"en\":\"Automation department\"}', '{\"es\":\"<p>Nuestro departamento de automaci&oacute;n estudia estas situaciones presente en industrias de las m&aacute;s diversas ramas, almacenes o log&iacute;sticas, disponiendo de todas las herramientas necesarias para encontrar la mejor respuesta a cada uno de estos desaf&iacute;os.&nbsp;<\\/p>\",\"en\":\"<p>Our automation department studies these situations present in industries of the most diverse branches, warehouses or logistics, having all the necessary tools to find the best answer to each one of these challenges.<\\/p>\"}', 'ab', '2019-06-25 14:57:39', '2019-06-28 18:21:20'),
(3, 'imagenes/ingenieria/6psQIXFF2kIc3nnzEfmZ33XCr7j15cNLNUjIiqI5.png', '{\"es\":\"Asesoramiento personalizado\",\"en\":\"Personalized advice\"}', '{\"es\":\"Grandes, medianas y peque\\u00f1as empresas\",\"en\":\"Large, medium and small businesses\"}', '{\"es\":\"<p>Nuestro equipo de ingenieros y t&eacute;cnicos de probada experiencia, est&aacute;n capacitados para comprender las necesidades de nuestros clientes, y as&iacute; poder ofrecer las soluci&oacute;n t&eacute;cnica y econ&oacute;micamente m&aacute;s beneficiosa.<\\/p>\",\"en\":\"<p>Our team of experienced engineers and technicians are trained to understand the needs of our customers, and thus be able to offer the most technically and economically beneficial solution.<\\/p>\"}', 'ac', '2019-06-25 14:58:30', '2019-06-25 14:58:30'),
(4, 'imagenes/ingenieria/s8qBTDJ0pQMosi1wZzEjBqJ903bhDDO2GQXrOlBY.png', '{\"es\":\"Mejoras continuas\",\"en\":\"Continuous improvements\"}', '{\"es\":\"Una prioridad de Ammaturo S.A.\",\"en\":\"A priority of Ammaturo S.A.\"}', '{\"es\":\"<p>Con niveles de producci&oacute;n cada vez m&aacute;s importantes, la industria en general necesita recurrir a mejoras continuas de su nivel productivo. Mejoras que se traducen en aumento de productividad, menor siniestralidad, mejores condiciones de trabajo, menores costos.<\\/p>\",\"en\":\"<p>With levels of production increasingly important, the industry in general needs to resort to continuous improvements in its production level. Improvements that result in increased productivity, lower accident rates, better working conditions, lower costs.<\\/p>\"}', 'ad', '2019-06-25 14:59:14', '2019-06-25 14:59:14'),
(5, 'imagenes/ingenieria/DceEPEbjO8h5HY1oFV1ASAEAtW8Mg6G6Odibo001.png', '{\"es\":\"Instalaci\\u00f3n y Puesta en Marcha\",\"en\":\"Installation and commissioning\"}', '{\"es\":\"De nuestras m\\u00e1quinas y repuestos\",\"en\":\"Of our machines and spare parts\"}', '{\"es\":\"<p>En Ammaturo S.A. contamos con un equipo de trabajo &nbsp;de profesionales altamente capacitados, dispuestos a brindar el mejor servicio de instalaci&oacute;n y puesta en marcha de nuestro cat&aacute;logo de m&aacute;quinas y equipos.<\\/p>\",\"en\":\"<p>In Ammaturo S.A. we have a work team of highly trained professionals, willing to provide the best service of installation and commissioning of our catalog of machines and equipment.<\\/p>\"}', 'ae', '2019-06-25 14:59:57', '2019-06-25 14:59:57'),
(6, 'imagenes/ingenieria/eqmzu0jTRbywNOuNTGNfk6Iqdq0a9iTbT38dM3lf.png', '{\"es\":\"Post-Venta y Garant\\u00eda\",\"en\":\"Post-Sale and Warranty\"}', '{\"es\":\"Comprometidos con la calidad\",\"en\":\"Committed to quality\"}', '{\"es\":\"<p>Desarrollando, re inventando, construyendo, armando, y testeando nuevos Equipos, Sistemas y M&aacute;quinas Industriales de acuerdo a las necesidades de nuestros variados Clientes, en los mas diversos Rubros.<\\/p>\",\"en\":\"<p>Developing, re inventing, building, assembling, and testing new Equipment, Systems and Industrial Machines according to the needs of our varied Clients, in the most diverse areas.<\\/p>\"}', 'af', '2019-06-25 15:00:34', '2019-06-25 15:00:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea_items`
--

CREATE TABLE `linea_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `linea_items`
--

INSERT INTO `linea_items` (`id`, `item`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, '1945', '{\"es\":\"<p>Comienza sus actividades <strong>&uml;Talleres Metal&uacute;rgicos MOS<\\/strong>&uml;, en la ciudad de Avellaneda (Pcia. de Bs. As.), dedicada a la construcci&oacute;n e instalaci&oacute;n de equipos y maquinas industriales, siendo&nbsp; socios el Sr. Luis Ammaturo, dicha empresa sentara las bases para lo que&nbsp; seria<strong> Ammaturo S.A.<\\/strong><\\/p>\",\"en\":\"<p><span style=\\\"background-color:#ffffff; color:#333333; font-family:sans-serif,Arial,Verdana,&quot;Trebuchet MS&quot;; font-size:13px\\\">Comienza sus actividades <\\/span><strong>&uml;Talleres Metal&uacute;rgicos MOS<\\/strong><span style=\\\"background-color:#ffffff; color:#333333; font-family:sans-serif,Arial,Verdana,&quot;Trebuchet MS&quot;; font-size:13px\\\">&uml;, en la ciudad de Avellaneda (Pcia. de Bs. As.), dedicada a la construcci&oacute;n e instalaci&oacute;n de equipos y maquinas industriales, siendo&nbsp; socios el Sr. Luis Ammaturo, dicha empresa sentara las bases para lo que&nbsp; seria<\\/span><strong> Ammaturo S.A.<\\/strong><\\/p>\"}', 'aa', '2019-06-24 17:18:28', '2019-07-24 23:31:03'),
(2, '1950', '{\"es\":\"<p><span style=\\\"background-color:null\\\">Al adquirir el 100 % del capital accionario el sr. Ammaturo, dicha firma pasa a denominarse <\\/span><strong><span style=\\\"background-color:null\\\">&uml;Talleres Metal&uacute;rgicos l. Ammaturo s.h.<\\/span><\\/strong><span style=\\\"background-color:null\\\">&uml;, realiza importantes proyectos en distintas partes del pa&iacute;s y el exterior.<\\/span><\\/p>\",\"en\":\"<p><span style=\\\"background-color:#ffffff; color:#333333; font-family:sans-serif,Arial,Verdana,&quot;Trebuchet MS&quot;; font-size:13px\\\">Al adquirir el 100 % del capital accionario el sr. Ammaturo, dicha firma pasa a denominarse <\\/span><strong>&uml;Talleres Metal&uacute;rgicos l. Ammaturo s.h.<\\/strong><span style=\\\"background-color:#ffffff; color:#333333; font-family:sans-serif,Arial,Verdana,&quot;Trebuchet MS&quot;; font-size:13px\\\">&uml;, realiza importantes proyectos en distintas partes del pa&iacute;s y el exterior.<\\/span><\\/p>\"}', 'ab', '2019-06-24 17:20:37', '2019-07-24 23:09:26'),
(3, '1980', '{\"es\":\"<p>Se conforma la actual sociedad &uml;<strong>Ammaturo S.A.&uml;<\\/strong>, incorpor&aacute;ndose la oficina de ingenier&iacute;a y dise&ntilde;o, mud&aacute;ndose a la nueva planta industrial de Sarand&iacute;, Pcia de Bs As.<\\/p>\",\"en\":\"<p><span style=\\\"background-color:#ffffff; color:#333333; font-family:sans-serif,Arial,Verdana,&quot;Trebuchet MS&quot;; font-size:13px\\\">Se conforma la actual sociedad &uml;<\\/span><strong>Ammaturo S.A.&uml;<\\/strong><span style=\\\"background-color:#ffffff; color:#333333; font-family:sans-serif,Arial,Verdana,&quot;Trebuchet MS&quot;; font-size:13px\\\">, incorpor&aacute;ndose la oficina de ingenier&iacute;a y dise&ntilde;o, mud&aacute;ndose a la nueva planta industrial de Sarand&iacute;, Pcia de Bs. As.<\\/span><\\/p>\"}', 'ac', '2019-06-24 17:21:01', '2019-07-24 23:33:12'),
(4, '1990', '{\"es\":\"<p>&nbsp;Profundiza su desarrollo realizando importantes proyectos en rubros diversos, como aceitero, minero, Cerealero, frigor&iacute;fico, alimenticio, etc.., producto de dicha expansi&oacute;n, la firma adquiere su nueva planta fabril en Wilde, Pcia de Bs As.<\\/p>\",\"en\":\"<p><span style=\\\"background-color:#ffffff; color:#333333; font-family:sans-serif,Arial,Verdana,&quot;Trebuchet MS&quot;; font-size:13px\\\">&nbsp;Profundiza su desarrollo realizando importantes proyectos en rubros diversos, como aceitero, minero, Cerealero, frigor&iacute;fico, alimenticio, etc.., producto de dicha expansi&oacute;n, la firma adquiere su nueva planta fabril en Wilde, Pcia de Bs As.<\\/span><\\/p>\"}', 'ad', '2019-06-24 17:21:23', '2019-07-24 23:41:51'),
(5, '2000', '{\"es\":\"<p><span style=\\\"font-size:14px\\\"><span style=\\\"font-family:sans-serif,Arial,Verdana,&quot;Trebuchet MS&quot;\\\">Adquiere su nueva y actual planta principal en el <strong>Parque Industrial Tecnol&oacute;gico Quilmes<\\/strong>, Bernal. Pcia. de Bs. As.<\\/span><\\/span><\\/p>\",\"en\":\"<p><span style=\\\"font-size:14px\\\"><span style=\\\"background-color:#ffffff; color:#333333; font-family:sans-serif,Arial,Verdana,&quot;Trebuchet MS&quot;\\\">Adquiere su nueva y actual planta principal en el <strong>Parque Industrial<\\/strong> <strong>Tecnol&oacute;gico Quilmes<\\/strong>, Bernal. Pcia. de Bs. As.<\\/span><\\/span><\\/p>\"}', 'ae', '2019-06-24 17:21:44', '2019-07-24 23:43:15'),
(6, '2001', '{\"es\":\"<p>Se conforma nuestra division <strong>ROLMEC<\\/strong>. post-venta y repuesto de equipos industriales.<\\/p>\",\"en\":\"<p><span style=\\\"background-color:#ffffff; color:#333333; font-family:sans-serif,Arial,Verdana,&quot;Trebuchet MS&quot;; font-size:13px\\\">Se conforma nuestra division <strong>ROLMEC<\\/strong>. post-venta y repuesto de equipos industriales.<\\/span><\\/p>\"}', 'af', '2019-06-24 17:22:03', '2019-07-24 23:23:19'),
(7, '2010', '{\"es\":\"<p>Desarrolla el Departo&nbsp; de Automatizacion.&nbsp; En la decada del 90&acute; ya habiamos instalado el&nbsp; primer robot&nbsp;<\\/p>\",\"en\":\"<p><span style=\\\"background-color:#ffffff; color:#333333; font-family:sans-serif,Arial,Verdana,&quot;Trebuchet MS&quot;; font-size:13px\\\">Desarrolla el Departo&nbsp; de Automatizacion.&nbsp; En la decada del 90&acute; ya habiamos instalado el primer robot&nbsp;<\\/span><\\/p>\"}', 'ag', '2019-07-24 23:25:39', '2019-07-24 23:41:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `imagen`, `seccion`, `created_at`, `updated_at`) VALUES
(1, 'imagenes/logo/jP5xNckyHy8wJRkWVA2M9TPLyYBRlqYidD2A6Cgi.png', 'header', NULL, '2019-06-28 19:58:25'),
(2, 'imagenes/logo/mAYXhSwkH9w014lWLSO8DfAx07D9kPs9HkL8XvmO.png', 'footer', NULL, '2019-10-02 15:47:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `keyword`, `descripcion`, `seccion`, `created_at`, `updated_at`) VALUES
(1, 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'home', NULL, '2019-06-25 17:26:57'),
(2, 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'empresa', NULL, '2019-06-25 17:27:03'),
(3, 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'producto', NULL, '2019-06-25 17:27:09'),
(4, 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'novedades', NULL, '2019-06-25 17:27:14'),
(5, 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'presupuesto', NULL, '2019-06-25 17:27:20'),
(6, 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'ingenieria', NULL, '2019-06-25 17:27:25'),
(7, 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'postventa', NULL, '2019-06-25 17:27:30'),
(8, 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'robotica, ammaturo.s.a, atomatizacion, transportadoras, conveyor', 'contacto', NULL, '2019-06-25 17:27:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_03_123418_create_logos_table', 1),
(4, '2019_05_03_123429_create_sliders_table', 1),
(5, '2019_05_03_123440_create_metadatos_table', 1),
(6, '2019_05_03_123621_create_redes_table', 1),
(7, '2019_05_03_123629_create_datos_table', 1),
(8, '2019_05_13_115118_create_categorias_table', 1),
(9, '2019_05_13_115119_create_blogs_table', 1),
(10, '2019_06_21_132544_create_enlaces_table', 1),
(11, '2019_06_21_132555_create_iconos_table', 1),
(12, '2019_06_21_132605_create_familias_table', 1),
(13, '2019_06_21_132622_create_traducciones_table', 1),
(14, '2019_06_21_132641_create_empresa_table', 1),
(15, '2019_06_21_135326_create_ingenieria_table', 1),
(16, '2019_06_21_135458_create_productos_table', 1),
(17, '2019_06_21_135510_create_producto_imagenes_table', 1),
(18, '2019_06_21_141636_create_producto_relacionados_table', 1),
(19, '2019_06_21_141649_create_portadas_table', 1),
(20, '2019_06_21_141727_create_blog_imagenes_table', 1),
(21, '2019_06_21_142036_create_linea_items_table', 1),
(22, '2019_06_24_112316_create_postventas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portadas`
--

CREATE TABLE `portadas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `portadas`
--

INSERT INTO `portadas` (`id`, `imagen`, `titulo`, `seccion`, `created_at`, `updated_at`) VALUES
(1, 'imagenes/enlace/qk8bkNP89KwOKFW8Q0fufD7Ns91I6M5qj4Bktpt6.jpeg', NULL, 'producto', NULL, '2019-06-26 21:15:26'),
(2, 'imagenes/enlace/bZTTNm1eE6ahxZ1nmwSGmgR9OEa6uk7GUEBlkqUW.jpeg', NULL, 'ingenieria', NULL, '2019-06-26 23:14:14'),
(3, 'imagenes/enlace/xlPUynrRdlqjX7461E0MZvGqyD4PIOc2BeFn62bC.jpeg', NULL, 'blog', NULL, '2019-06-26 23:13:14'),
(4, 'imagenes/enlace/srQHPcIDwfun1mLQHtTl79x9lHgscSHBILrpn5nk.jpeg', NULL, 'postventa', NULL, '2019-06-26 23:14:48'),
(5, 'imagenes/enlace/to0OPcfSX5D3YN8ZuVJQUxRj0CzOCu2KMEDAn9Ua.jpeg', NULL, 'presupuesto', NULL, '2019-06-26 23:14:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postventas`
--

CREATE TABLE `postventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `postventas`
--

INSERT INTO `postventas` (`id`, `titulo`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, '{\"es\":\"ATENCI\\u00d3N AL CLIENTE\",\"en\":\"CUSTOMER SUPPORT\"}', '{\"es\":\"<p><span style=\\\"color:#319240\\\">Brindamos propuestas que generen valor y la mejor relaci&oacute;n costo-beneficio.<\\/span><br \\/>\\r\\nNos avala una trayectoria de experiencia adquirida con el contacto en empresas de primera l&iacute;nea, durante quince a&ntilde;os. Es lo que se denomina fidelizar a los clientes, es decir, crear con ellos una relaci&oacute;n que se base en la confianza y la excelencia en el servicio. Nuestro equipo de profesionales est&aacute; disponible para brindar una atenci&oacute;n personalizada, una gesti&oacute;n t&eacute;cnica eficaz, una comunicaci&oacute;n fluida y personal.<\\/p>\",\"en\":\"<p><span style=\\\"color:#319240\\\">We offer proposals that generate value and the best cost-benefit ratio.<\\/span><br \\/>\\r\\nWe are endorsed by a track record of experience acquired with contact in frontline companies, for fifteen years. This is what is called customer loyalty, that is, to create with them a relationship based on trust and excellence in service. Our team of professionals is available to provide personalized attention, effective technical management, and fluent and personal communication.<\\/p>\"}', NULL, '2019-06-28 17:39:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caracteristicas` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plano` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destacado` int(11) DEFAULT NULL,
  `id_superior` bigint(20) UNSIGNED DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `archivo`, `caracteristicas`, `video`, `plano`, `destacado`, `id_superior`, `orden`, `created_at`, `updated_at`) VALUES
(1, '{\"es\":\"Transportadores a Cadena Plana\",\"en\":\"Conveyors to Flat Chain\"}', '{\"es\":\"<p>Cuando es necesario transportar bultos con superficie inferior plana, los transportadores a cadena son muy utilizados, ya que posibilitan transportar, elevar y acumular envases, cajas, tambores, pallets, latas, bandejas, etc., permitiendo diversas opciones y configuraciones, ya que varias de estos equipos permiten curvas y elevaciones.<\\/p>\",\"en\":\"<p>When it is necessary to move&nbsp;packages with flat bottom surface, chain conveyors are widely used, since they make it possible to transport, elevate and accumulate containers, boxes, drums, pallets, cans, trays, etc., allowing various options and configurations, since several of these equipment allow curves and elevations.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Disponen de una <span style=\\\"color:#31923f\\\">estructura en chapa plegada donde se ubican las gu&iacute;as en metal o pl&aacute;stico de bajo coeficiente de fricci&oacute;n<\\/span> (UHMW), por donde se desliza la cadena articulada plana, existiendo diversos modelos seg&uacute;n necesidades de utilizaci&oacute;n, como por ejemplo: cadena tipo table top, cadena bi-planar, cadena de rodillos, cadenas plana con ruedas de acumulaci&oacute;n, cadena de aletas con grip. etc.<br \\/>\\r\\n<span style=\\\"color:#31923f\\\">Las posibilidades de estos equipos y sus configuraciones son m&uacute;ltiples<\\/span>, desde l&iacute;neas de embasamiento, con mesas de acumulaci&oacute;n y alineaci&oacute;n, hasta l&iacute;neas pesadas para transporte de pallets pesados, &aacute;nodos, etc.<br \\/>\\r\\nEstos equipos pueden fabricarse en distintas alternativas de material, con bastidores en acero al carbono, acero al carbono galvanizado, aluminio, acero inoxidable y cadenas de transporte en acero, acero inoxidable y polipropileno.<\\/p>\",\"en\":\"<p>They have a <span style=\\\"color:#31923f\\\">folded sheet metal structure where the guides are placed in metal or plastic with low coefficient of friction<\\/span> (UHMW), where the flat articulated chain slides, there are different models according to needs of use, such as: chain type table top , bi-planar chain, roller chain, flat chains with accumulation wheels, fin chain with grip. etc.<br \\/>\\r\\n<span style=\\\"color:#31923f\\\">The possibilities of these equipment and their configurations are multiple<\\/span>, from on-boarding lines, with accumulation and alignment tables, to heavy lines for transporting heavy pallets, anodes, etc.<br \\/>\\r\\nThese equipment can be manufactured in different material alternatives, with frames in carbon steel, galvanized carbon steel, aluminum, stainless steel and transport chains in steel, stainless steel and polypropylene.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 1, 1, 'ad', '2019-06-24 21:34:08', '2019-07-26 00:21:44'),
(2, '{\"es\":\"Transportadores de Banda\",\"en\":\"Belt conveyors\"}', '{\"es\":\"<p>Utilizadas ampliamente para el transporte de todo tipo de bultos, las cintas transportadoras son m&aacute;quinas de transportes eficientes, r&aacute;pidas, econ&oacute;micas, de f&aacute;cil operaci&oacute;n y mantenimiento, posibilitando adem&aacute;s una ampl&iacute;sima gama de combinaciones.<\\/p>\",\"en\":\"<p>Widely used for the transport of all types of packages, belt conveyor are efficient, fast, economic, easy&nbsp;maintenance and operation,&nbsp;allowing&nbsp;a wide range of combinations.<\\/p>\"}', '{\"es\":\"archivos\\/producto\\/sClvieo31rMv9Q21aJ6DURRsFNhleX53rHp9AR0f.xlsx\",\"en\":\"archivos\\/producto\\/yxIYBrbIsqQYaa8XaYNnHWoVhS171LDbrqYGPuKJ.bin\"}', '{\"es\":\"<p>Las cintas transportadoras permiten transportar en horizontal y en vertical (seg&uacute;n la pendiente), la mayor&iacute;a de los bultos presentes en la industria, log&iacute;stica, despachos de correo, terminales aeroportuarias, etc.<br \\/>\\r\\nEn todos los casos la banda transportadora es traccionada por un tambor motriz, ubicado en un cabezal de punta o intermedio, y corre sobre una cama de rodillos dispuestos rectos, o en su defecto sobre cama de deslizamiento.<br \\/>\\r\\nEstos equipos de transporte pueden disponer centradores de carga, alineadores, tensores de banda por tornillo, barandas, cabezales retractiles, etc., de acuerdo a las caracter&iacute;sticas de utilizaci&oacute;n.<br \\/>\\r\\nLas cintas transportadoras pueden ser fijas o m&oacute;viles, en este caso se le adicionan un sistema de desplazamiento y fijaci&oacute;n, y generalmente disponen de sistema de elevaci&oacute;n, permitiendo adecuarlas a diferentes configuraciones.<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en&nbsp;acero al carbono, o acero inoxidable, en este &uacute;ltimo caso pueden solicitarse de construcci&oacute;n sanitaria.<\\/p>\",\"en\":\"<p>The conveyor belts allow to transport, horizontally and vertically (depending on the slope), most of the packages present in the industry, logistics, mail offices, airport terminals, etc.<br \\/>\\r\\nIn all cases the conveyor belt is driven by a driving drum, located in a tip or intermediate head, and runs on a bed of rollers arranged straight, or failing on a sliding bed.<br \\/>\\r\\nThese transport equipment can have load centering devices, aligners, screw band tensioners, railings, retractable heads, etc., according to the characteristics of use.<br \\/>\\r\\nThe conveyor belts can be fixed or mobile, in this case a displacement and fixing system is added, and they generally have a lifting system, allowing them to be adapted to different configurations.<br \\/>\\r\\nDepending on the requirements, they can be manufactured with&nbsp;carbon steel or stainless steel, in the latter case it&nbsp;can be requested with sanitary design.<\\/p>\"}', '{\"es\":null,\"en\":null}', 'imagenes/producto/plano/xxVGnk7nVJvfxRAXerq342CupehDfMJekf6ylRTp.jpeg', 1, 1, 'aa', '2019-06-24 22:35:11', '2019-08-05 20:41:15'),
(3, '{\"es\":\"Transportadores a Cadena Over Head\",\"en\":\"Chain conveyors Over Head\"}', '{\"es\":\"<p>El transportador a&eacute;reo m&aacute;s difundido, es el com&uacute;nmente denominado &ldquo;over head&rdquo;, que como su nombre en ingl&eacute;s lo indica es un equipo de transporte que funciona sobre cabeza,&nbsp;generalmente se encuentra colgado desde el edificio o estructuras independientes.&nbsp;<\\/p>\",\"en\":\"<p>Most difunded over head conveyor system, generally it&#39;s find supported by the building or some independent structures.<\\/p>\"}', '{\"es\":\"archivos\\/producto\\/sClvieo31rMv9Q21aJ6DURRsFNhleX53rHp9AR0f.xlsx\",\"en\":\"archivos\\/producto\\/yxIYBrbIsqQYaa8XaYNnHWoVhS171LDbrqYGPuKJ.bin\"}', '{\"es\":\"<p>Una cadena de acero laminado o forjado, del tipo bi-planar, circula guiada por un perfil laminado o estructural a trav&eacute;s de un circuito cerrado, permitiendo colgar mediante soportes adecuados elementos de las m&aacute;s diferentes formas.<br \\/>\\r\\nLa cadena es traccionada a trav&eacute;s de una corona dentada o sistema caterpillar, seg&uacute;n necesidad, permitiendo trabajar en forma confiable y segura.<br \\/>\\r\\nSiendo generalmente la velocidad de transporte baja, permite una carga y descarga sencilla de los elementos transportados.<br \\/>\\r\\nLos equipos de transporte &uml;over head&uml;, son utilizados en diversos tipos de industrias, tanto en l&iacute;neas de ensamblaje, sectores de estacionamiento temporario, tratamiento de superficies, etc.<\\/p>\",\"en\":null}', '{\"es\":null,\"en\":null}', 'imagenes/producto/plano/TBbGxDpthzhK4iIcoeb79JXf39sP6Bg9bLXUshQK.jpeg', 0, 1, 'aaa', '2019-06-24 22:40:18', '2019-07-26 00:19:47'),
(4, '{\"es\":\"Transportadores a Cadena Power & Free\",\"en\":\"Chain conveyors Power & Free\"}', '{\"es\":\"<p>Los transportadores a&eacute;reos tipo Power &amp; Free, combinan las ventajas del transportador a&eacute;reo a cadena convencional (over head), con la posibilidad de transportar los bultos a voluntad, o sea en forma independiente al movimiento de la cadena transportadora, permitiendo paradas intermedias, desv&iacute;os, transferencias, descensos puntuales, y acumulaci&oacute;n, ventajas por dem&aacute;s importantes en l&iacute;neas de ensamblaje, estaciones de almacenamiento temporario, l&iacute;neas de proceso continuo encadenada a otros procesos, l&iacute;neas de transporte complejo.<\\/p>\",\"en\":\"<p>Los transportadores a&eacute;reos tipo power &amp; free, combinan las ventajas del transportador a&eacute;reo a cadena convencional (over head), con la posibilidad de transportar los bultos a voluntad, o sea en forma independiente al movimiento de la cadena transportadora, permitiendo paradas intermedias, desv&iacute;os, transferencias, descensos puntuales, y acumulaci&oacute;n, ventajas por dem&aacute;s importantes en l&iacute;neas de ensamblaje, estaciones de almacenamiento temporario, l&iacute;neas de proceso continuo encadenada a otros procesos, l&iacute;neas de transporte complejo.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Al igual que el transportador a&eacute;reo de cadena convencional, una cadena de acero laminado o forjado, del tipo bi-planar, con dedos empujadores, circula guiada por un perfil laminado o estructural a trav&eacute;s de un determinado circuito cerrado. Por debajo otra gu&iacute;a conformada por perfiles laminados, gu&iacute;a y permite el traslado de carros a los cuales se sujetan elementos que soportan a los bultos a transportar. Mediante distintos dispositivos mec&aacute;nicos (con accionamiento el&eacute;ctrico o neum&aacute;tico), es posible conducir los bultos por un n&uacute;mero ilimitado de v&iacute;as posibles, ademas de detenerlo (sin necesidad de detener la cadena), acumular o desviarlo seg&uacute;n una l&oacute;gica determinada.<br \\/>\\r\\nLa cadena es traccionada a trav&eacute;s de una corona dentada o sistema caterpillar, seg&uacute;n necesidad, permitiendo trabajar en forma confiable y segura.<br \\/>\\r\\nLa carga y descarga de los elementos se independiza del movimiento de la cadena.<br \\/>\\r\\nLos equipos de transporte &uml;power &amp; free&uml;, son utilizados en diversos tipos de industrias, tanto en l&iacute;neas de armado, l&iacute;neas de producci&oacute;n, ensamblaje de veh&iacute;culos.<\\/p>\",\"en\":\"<p>Los transportadores a&eacute;reos tipo power &amp; free, combinan las ventajas del transportador a&eacute;reo a cadena convencional (over head), con la posibilidad de transportar los bultos a voluntad, o sea en forma independiente al movimiento de la cadena transportadora, permitiendo paradas intermedias, desv&iacute;os, transferencias, descensos puntuales, y acumulaci&oacute;n, ventajas por dem&aacute;s importantes en l&iacute;neas de ensamblaje, estaciones de almacenamiento temporario, l&iacute;neas de proceso continuo encadenada a otros procesos, l&iacute;neas de transporte complejo.<br \\/>\\r\\nAl igual que el transportador a&eacute;reo de cadena convencional, una cadena de acero laminado o forjado, del tipo bi-planar, con dedos empujadores, circula guiada por un perfil laminado o estructural a trav&eacute;s de un determinado circuito cerrado. Por debajo otra gu&iacute;a conformada por perfiles laminados, gu&iacute;a y permite el traslado de carros a los cuales se sujetan elementos que soportan a los bultos a transportar. Mediante distintos dispositivos mec&aacute;nicos (con accionamiento el&eacute;ctrico o neum&aacute;tico), es posible conducir los bultos por un n&uacute;mero ilimitado de v&iacute;as posibles, ademas de detenerlo (sin necesidad de detener la cadena), acumular o desviarlo seg&uacute;n una l&oacute;gica determinada.<br \\/>\\r\\nLa cadena es traccionada a trav&eacute;s de una corona dentada o sistema caterpillar, seg&uacute;n necesidad, permitiendo trabajar en forma confiable y segura.<br \\/>\\r\\nLa carga y descarga de los elementos se independiza del movimiento de la cadena.<br \\/>\\r\\nLos equipos de transporte &uml;power &amp; free&uml;, son utilizados en diversos tipos de industrias, tanto en l&iacute;neas de armado, l&iacute;neas de producci&oacute;n, ensamblaje de veh&iacute;culos.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 1, 1, 'ac', '2019-06-24 22:42:47', '2019-08-05 20:45:15'),
(5, '{\"es\":\"Transportadores de Rodillos por Gravedad\",\"en\":\"Free Roller Conveyors\"}', '{\"es\":\"<p>Los transportadores de rodillos libres o de gravedad permiten el traslado de los bultos sin necesidad de motorizaci&oacute;n alguna, haciendo uso de la energ&iacute;a potencial (por diferencia de cotas entre carga y descarga), posibilitando el traslado de los elementos tanto en l&iacute;nea recta o curva.<\\/p>\",\"en\":\"<p>Los transportadores de rodillos libres o de gravedad permiten el traslado de los bultos sin necesidad de motorizaci&oacute;n alguna, haciendo uso de la energ&iacute;a potencial (por diferencia de cotas entre carga y descarga), posibilitando el traslado de los elementos tanto en l&iacute;nea recta o curva.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Este equipo transportador es uno de los equipos m&aacute;s utilizados en el transporte de bultos, (cuando por las caracter&iacute;sticas de la instalaci&oacute;n lo permita), por su <span style=\\\"color:#31923f\\\">sencillez, costo reducido, bajo mantenimiento y facilidad de operaci&oacute;n<\\/span>.<br \\/>\\r\\nConformado por un bastidor realizado en chapa plegada o perfil laminado, donde se insertan y fijan los rodillos, ubicados a distancias regulares, de acuerdo a las dimensiones y particularidades del bulto.<br \\/>\\r\\nLos bastidores se construyen mediante maquinas a control num&eacute;rico, permitiendo el exacto ensamblaje de todos los componentes. Los materiales de las estructuras portantes y bastidores se realizan en acero al carbono, acero galvanizado, aluminio o acero inoxidable<br \\/>\\r\\nLos rodillos giran locos a trav&eacute;s de un eje por medio de rodamientos o bolillas, (protegidos contra el polvo), pudiendo ser de acero al carbono, acero al carbono galvanizado, acero inoxidable, aluminio o pl&aacute;stico, tambi&eacute;n es posible reemplazar los rodillos por ruedas con las mismas alternativas de material.&nbsp;<br \\/>\\r\\nLos bultos con superficie inferior regular viajan suavemente desliz&aacute;ndose por los rodillos, siendo posible su detenci&oacute;n en cualquier momento, acumular los bultos, y nuevamente volver al movimiento.<br \\/>\\r\\nLos equipos transportadores de rodillos libres pueden ser rectos o curvos, fijos o m&oacute;viles, de bastidor r&iacute;gido o flexible, posibilitando un sinn&uacute;mero de configuraciones posibles.<\\/p>\",\"en\":\"<p>Este equipo transportador es uno de los equipos m&aacute;s utilizados en el transporte de bultos, (cuando por las caracter&iacute;sticas de la instalaci&oacute;n lo permita), por su sencillez, costo reducido, bajo mantenimiento y facilidad de operaci&oacute;n.<br \\/>\\r\\nConformado por un bastidor realizado en chapa plegada o perfil laminado, donde se insertan y fijan los rodillos, ubicados a distancias regulares, de acuerdo a las dimensiones y particularidades del bulto.<br \\/>\\r\\nLos bastidores se construyen mediante maquinas a control num&eacute;rico, permitiendo el exacto ensamblaje de todos los componentes. Los materiales de las estructuras portantes y bastidores se realizan en acero al carbono, acero galvanizado, aluminio o acero inoxidable<br \\/>\\r\\nLos rodillos giran locos a trav&eacute;s de un eje por medio de rodamientos o bolillas, (protegidos contra el polvo), pudiendo ser de acero al carbono, acero al carbono galvanizado, acero inoxidable, aluminio o pl&aacute;stico, tambi&eacute;n es posible reemplazar los rodillos por ruedas con las mismas alternativas de material.&nbsp;<br \\/>\\r\\nLos bultos con superficie inferior regular viajan suavemente desliz&aacute;ndose por los rodillos, siendo posible su detenci&oacute;n en cualquier momento, acumular los bultos, y nuevamente volver al movimiento.<br \\/>\\r\\nLos equipos transportadores de rodillos libres pueden ser rectos o curvos, fijos o m&oacute;viles, de bastidor r&iacute;gido o flexible, posibilitando un sinn&uacute;mero de configuraciones posibles.<\\/p>\"}', '{\"es\":null,\"en\":null}', 'imagenes/producto/plano/VwHMeAC1FMCyGiKs24i7BhmCFlJS3nbCKPPrTsme.jpeg', 1, 1, 'ae', '2019-06-24 22:45:01', '2019-07-19 16:07:30'),
(6, '{\"es\":\"Transportadores de Banda Modular\",\"en\":\"Modular Belt Conveyors\"}', '{\"es\":\"<p>Desde hace a&ntilde;os los transportadores a banda modular, se han desarrollado en gran medida, ofreciendo ventajas comparativas importantes con respecto a alternativas en banda de PVC o bandas met&aacute;licas, como facilidad de limpieza, mayor duraci&oacute;n, nulas deformaciones, r&aacute;pida y f&aacute;cil instalaci&oacute;n, adem&aacute;s de adaptarse a funciones espec&iacute;ficas como acumulaci&oacute;n, alineado, arrastre.<\\/p>\",\"en\":\"<p>Desde hace a&ntilde;os los transportadores a banda modular, se han desarrollado en gran medida, ofreciendo ventajas comparativas importantes con respecto a alternativas en banda de PVC o bandas met&aacute;licas, como facilidad de limpieza, mayor duraci&oacute;n, nulas deformaciones, r&aacute;pida y f&aacute;cil instalaci&oacute;n, adem&aacute;s de adaptarse a funciones espec&iacute;ficas como acumulaci&oacute;n, alineado, arrastre.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>En todos los casos la banda modular es traccionada por coronas motrices, ubicado en un cabezal de punta o intermedio, y corre sobre una cama de perfiles pl&aacute;sticos con gu&iacute;as laterales en pl&aacute;stico de baja coeficiente de fricci&oacute;n (UHMW).<br \\/>\\r\\nLas estructuras de los equipos o bastidores se fabrican en chapa plegada de acero al carbono, acero galvanizado o acero inoxidable con posibilidad de terminaci&oacute;n sanitaria, de ser requerido.<br \\/>\\r\\nPodemos ofrecer equipos transportadores con una gran variedad de bandas modulares, desde bandas lisas convencionales (perforadas o no), de diversos pasos, bandas con rodillos para acumulaci&oacute;n (cero presi&oacute;n), bandas con rodillos orientadores, bandas con grip, bandas con empujadores.<br \\/>\\r\\nDisponemos de amplia experiencia en el dise&ntilde;o, construcci&oacute;n e instalaci&oacute;n de una amplia gama de transporte a banda modular para diferentes usos en la industria y la log&iacute;stica.<br \\/>\\r\\nLos transportadores a banda modular son utilizados frecuentemente en la industria alimenticia, frigor&iacute;fica, automotriz, neum&aacute;ticos, en sistemas de paletizado autom&aacute;tico, clasificaci&oacute;n, despaletizado.<\\/p>\",\"en\":\"<p>En todos los casos la banda modular es traccionada por coronas motrices, ubicado en un cabezal de punta o intermedio, y corre sobre una cama de perfiles pl&aacute;sticos con gu&iacute;as laterales en pl&aacute;stico de baja coeficiente de fricci&oacute;n (UHMW).<br \\/>\\r\\nLas estructuras de los equipos o bastidores se fabrican en chapa plegada de acero al carbono, acero galvanizado o acero inoxidable con posibilidad de terminaci&oacute;n sanitaria, de ser requerido.<br \\/>\\r\\nPodemos ofrecer equipos transportadores con una gran variedad de bandas modulares, desde bandas lisas convencionales (perforadas o no), de diversos pasos, bandas con rodillos para acumulaci&oacute;n (cero presi&oacute;n), bandas con rodillos orientadores, bandas con grip, bandas con empujadores.<br \\/>\\r\\nDisponemos de amplia experiencia en el dise&ntilde;o, construcci&oacute;n e instalaci&oacute;n de una amplia gama de transporte a banda modular para diferentes usos en la industria y la log&iacute;stica.<br \\/>\\r\\nLos transportadores a banda modular son utilizados frecuentemente en la industria alimenticia, frigor&iacute;fica, automotriz, neum&aacute;ticos, en sistemas de paletizado autom&aacute;tico, clasificaci&oacute;n, despaletizado.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 1, 'af', '2019-06-24 22:46:14', '2019-07-19 16:08:12'),
(7, '{\"es\":\"Transportadores a Rodillos Motorizados por Cadena\",\"en\":\"Conveyors to Motorized Rollers by Chain\"}', '{\"es\":\"<p>En aquellos casos que no resulta viable utilizar la energ&iacute;a potencial para el desplazamiento de los bultos por sobre los rodillos, o necesitemos mantener el control del movimiento en todo el trayecto del equipo transportador, permitiendo arranques, paradas, aceleraciones, alineamiento o giros, son utilizados los transportadores motorizados con accionamiento por cadena.<\\/p>\",\"en\":\"<p>En aquellos casos que no resulta viable utilizar la energ&iacute;a potencial para el desplazamiento de los bultos por sobre los rodillos, o necesitemos mantener el control del movimiento en todo el trayecto del equipo transportador, permitiendo arranques, paradas, aceleraciones, alineamiento o giros, son utilizados los transportadores motorizados con accionamiento por cadena.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Los rodillos giran a trav&eacute;s de un eje por medio de rodamientos o bolillas, (protegidos contra el polvo), fabric&aacute;ndose en acero al carbono, acero al carbono galvanizado o acero inoxidable, y disponen en un extremo un pi&ntilde;&oacute;n, por el cual es accionado el mismo mediante una cadena de rodillos. En determinados casos se utilizan rodamientos unidireccionales, con el fin de absorber diferencias de velocidades en trenes de transportadores o situaciones de aceleraci&oacute;n y desaceleraci&oacute;n de los bultos.&nbsp;<br \\/>\\r\\nLa cadena de rodillos de carga de rotura adecuada, esta accionada por un mando central y acciona rodillo a rodillo a trav&eacute;s de todo el equipo.&nbsp;<br \\/>\\r\\nEstos equipos de transporte se conforman por un bastidor r&iacute;gido, construido en chapa plegada, donde se ubican los rodillos, posicionados a distancias regulares, de acuerdo a las dimensiones y particularidades de cada bulto a mover, los mismos son fabricados por maquinas a control num&eacute;rico, permitiendo el exacto ensamblaje de todos los componentes. Los materiales de las estructuras portantes y bastidores se realizan en acero al carbono, acero galvanizado, aluminio o acero inoxidable. La transmisi&oacute;n de cadena y pi&ntilde;ones son protegidos en todo el trayecto del transporte evitando atropamiento mec&aacute;nico o ingreso de materiales extra&ntilde;os.<br \\/>\\r\\nLos equipos transportadores de rodillos motorizados por cadena permiten trasladar cargas livianas a pesadas, y en anchos variados (desde 200 mm. A 2400 mm.), posibilitando un buen manejo de la manipulaci&oacute;n del bulto en todo momento.<\\/p>\",\"en\":\"<p>Los rodillos giran a trav&eacute;s de un eje por medio de rodamientos o bolillas, (protegidos contra el polvo), fabric&aacute;ndose en acero al carbono, acero al carbono galvanizado o acero inoxidable, y disponen en un extremo un pi&ntilde;&oacute;n, por el cual es accionado el mismo mediante una cadena de rodillos. En determinados casos se utilizan rodamientos unidireccionales, con el fin de absorber diferencias de velocidades en trenes de transportadores o situaciones de aceleraci&oacute;n y desaceleraci&oacute;n de los bultos.&nbsp;<br \\/>\\r\\nLa cadena de rodillos de carga de rotura adecuada, esta accionada por un mando central y acciona rodillo a rodillo a trav&eacute;s de todo el equipo.&nbsp;<br \\/>\\r\\nEstos equipos de transporte se conforman por un bastidor r&iacute;gido, construido en chapa plegada, donde se ubican los rodillos, posicionados a distancias regulares, de acuerdo a las dimensiones y particularidades de cada bulto a mover, los mismos son fabricados por maquinas a control num&eacute;rico, permitiendo el exacto ensamblaje de todos los componentes. Los materiales de las estructuras portantes y bastidores se realizan en acero al carbono, acero galvanizado, aluminio o acero inoxidable. La transmisi&oacute;n de cadena y pi&ntilde;ones son protegidos en todo el trayecto del transporte evitando atropamiento mec&aacute;nico o ingreso de materiales extra&ntilde;os.<br \\/>\\r\\nLos equipos transportadores de rodillos motorizados por cadena permiten trasladar cargas livianas a pesadas, y en anchos variados (desde 200 mm. A 2400 mm.), posibilitando un buen manejo de la manipulaci&oacute;n del bulto en todo momento.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 1, 'ag', '2019-06-24 22:48:23', '2019-07-23 00:36:17'),
(8, '{\"es\":\"Transportadores a Rodillos Motorizados Live Roller\",\"en\":\"Live roller conveyors Roller Motor\"}', '{\"es\":\"<p>Los equipos de transporte &ldquo;Live Roller&rdquo;, son <span style=\\\"color:#31923f\\\">transportadores de rodillos motorizados a trav&eacute;s de correines resistentes (o-ring)<\\/span>, desde poleas individuales que por fricci&oacute;n son accionadas por un eje que corre a lo largo de todo el transportador.<\\/p>\",\"en\":\"<p>Los equipos de transporte &ldquo;Live Roller&rdquo;, son transportadores de rodillos motorizados a trav&eacute;s de correines resistentes (o-ring), desde poleas individuales que por fricci&oacute;n son accionadas por un eje que corre a lo largo de todo el transportador.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Los rodillos disponen en uno de sus extremos de un sector conformado para guiar los correines, y giran a trav&eacute;s de un eje por medio de rodamientos o bolillas, (protegidos contra el polvo), fabric&aacute;ndose en acero al carbono, acero al carbono galvanizado y acero inoxidable&nbsp;<br \\/>\\r\\nLa particularidad de c&oacute;mo se realiza la transmisi&oacute;n del movimiento, permite regular el nivel de tracci&oacute;n de los rodillos, posibilitando la acumulaci&oacute;n de los bultos en sectores o a todo el largo del equipo.<br \\/>\\r\\nEstos equipos de transporte son utilizados especialmente donde por necesidad de proceso, deba acumularse temporariamente los bultos a transportar.<br \\/>\\r\\nEstos equipos de transporte est&aacute;n conformados por un bastidor r&iacute;gido, construido en chapa plegada, donde se ubican los rodillos, posicionados a distancias regulares, de acuerdo a las dimensiones y particularidades de cada bulto a mover, disponiendo de un eje principal de transmisi&oacute;n, con sus soportes, distanciadores y poleas. Los equipos son fabricados por maquinas a control num&eacute;rico, permitiendo el ensamblaje exacto de todos los componentes. Los materiales de las estructuras portantes y bastidores se realizan en acero al carbono, acero galvanizado, o acero inoxidable.<br \\/>\\r\\nLos bultos con superficie inferior regular viajan suavemente al ser accionados los rodillos, siendo posible su detenci&oacute;n, acumulaci&oacute;n, rotaci&oacute;n o alineaci&oacute;n a lo largo del equipo.<br \\/>\\r\\nLos equipos transportadores &ldquo;Live Roller&rdquo; son sencillos de instalar, f&aacute;cil de mantener y econ&oacute;micos respecto de otros de similar utilidad, permitiendo trasladar en forma rectil&iacute;nea o curva, distintos tipos de cargas (desde livianas a medianas), y ofreciendo en todo momento un buen manejo de los bultos. Son com&uacute;nmente utilizados en diversas industrias, log&iacute;stica, fines de l&iacute;nea, armado de electrodom&eacute;sticos, neum&aacute;ticos, l&iacute;neas de ensamblaje, distribuci&oacute;n.<\\/p>\",\"en\":\"<p>Los rodillos disponen en uno de sus extremos de un sector conformado para guiar los correines, y giran a trav&eacute;s de un eje por medio de rodamientos o bolillas, (protegidos contra el polvo), fabric&aacute;ndose en acero al carbono, acero al carbono galvanizado y acero inoxidable&nbsp;<br \\/>\\r\\nLa particularidad de c&oacute;mo se realiza la transmisi&oacute;n del movimiento, permite regular el nivel de tracci&oacute;n de los rodillos, posibilitando la acumulaci&oacute;n de los bultos en sectores o a todo el largo del equipo.<br \\/>\\r\\nEstos equipos de transporte son utilizados especialmente donde por necesidad de proceso, deba acumularse temporariamente los bultos a transportar.<br \\/>\\r\\nEstos equipos de transporte est&aacute;n conformados por un bastidor r&iacute;gido, construido en chapa plegada, donde se ubican los rodillos, posicionados a distancias regulares, de acuerdo a las dimensiones y particularidades de cada bulto a mover, disponiendo de un eje principal de transmisi&oacute;n, con sus soportes, distanciadores y poleas. Los equipos son fabricados por maquinas a control num&eacute;rico, permitiendo el ensamblaje exacto de todos los componentes. Los materiales de las estructuras portantes y bastidores se realizan en acero al carbono, acero galvanizado, o acero inoxidable.<br \\/>\\r\\nLos bultos con superficie inferior regular viajan suavemente al ser accionados los rodillos, siendo posible su detenci&oacute;n, acumulaci&oacute;n, rotaci&oacute;n o alineaci&oacute;n a lo largo del equipo.<br \\/>\\r\\nLos equipos transportadores &ldquo;Live Roller&rdquo; son sencillos de instalar, f&aacute;cil de mantener y econ&oacute;micos respecto de otros de similar utilidad, permitiendo trasladar en forma rectil&iacute;nea o curva, distintos tipos de cargas (desde livianas a medianas), y ofreciendo en todo momento un buen manejo de los bultos. Son com&uacute;nmente utilizados en diversas industrias, log&iacute;stica, fines de l&iacute;nea, armado de electrodom&eacute;sticos, neum&aacute;ticos, l&iacute;neas de ensamblaje, distribuci&oacute;n.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 1, 'ah', '2019-06-24 22:49:22', '2019-07-23 17:16:11'),
(9, '{\"es\":\"Transportadores a Malla Met\\u00e1lica\",\"en\":\"Conveyors Wire Mesh\"}', '{\"es\":\"<p>En distintos tipos de proceso, como en hornos, l&iacute;neas de enfriamiento, lavado, congelado, pasteurizado, desengrasado de elementos met&aacute;licos, donde las condiciones de trabajo no son aptas para otros tipos de banda, las mallas met&aacute;licas tienen un buen campo de trabajo y son ampliamente utilizadas.<\\/p>\",\"en\":\"<p>En distintos tipos de proceso, como en hornos, l&iacute;neas de enfriamiento, lavado, congelado, pasteurizado, desengrasado de elementos met&aacute;licos, donde las condiciones de trabajo no son aptas para otros tipos de banda, las mallas met&aacute;licas tienen un buen campo de trabajo y son ampliamente utilizadas.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Dise&ntilde;amos y construimos integralmente transportadores a malla met&aacute;lica (de distintos tipos), tanto rectos como curvos, posibilitando ofrecer un sinn&uacute;mero de opciones al respecto.<br \\/>\\r\\nLos equipos est&aacute;n conformados por un bastidor en chapa plegada, con gu&iacute;as en metal o pl&aacute;stico de baja fricci&oacute;n (UHMW), donde desliza la malla met&aacute;lica, apoyada en rodillos o patines de gu&iacute;a.&nbsp;<br \\/>\\r\\nLa malla met&aacute;lica transportadora se fabrica en acero aleado o acero inoxidable, con o sin cadenas gu&iacute;as, siendo accionada por varios pi&ntilde;ones motrices met&aacute;licos (de acuerdo a carga y longitud del equipo), ubicado en un cabezal de punta.&nbsp;<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse con estructuras de acero al carbono, o acero inoxidable.<\\/p>\",\"en\":\"<p>Dise&ntilde;amos y construimos integralmente transportadores a malla met&aacute;lica (de distintos tipos), tanto rectos como curvos, posibilitando ofrecer un sinn&uacute;mero de opciones al respecto.<br \\/>\\r\\nLos equipos est&aacute;n conformados por un bastidor en chapa plegada, con gu&iacute;as en metal o pl&aacute;stico de baja fricci&oacute;n (UHMW), donde desliza la malla met&aacute;lica, apoyada en rodillos o patines de gu&iacute;a.&nbsp;<br \\/>\\r\\nLa malla met&aacute;lica transportadora se fabrica en acero aleado o acero inoxidable, con o sin cadenas gu&iacute;as, siendo accionada por varios pi&ntilde;ones motrices met&aacute;licos (de acuerdo a carga y longitud del equipo), ubicado en un cabezal de punta.&nbsp;<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse con estructuras de acero al carbono, o acero inoxidable.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 1, 'ai', '2019-06-24 22:50:31', '2019-07-23 17:20:08'),
(10, '{\"es\":\"M\\u00e1quinas y equipos especiales\",\"en\":\"M\\u00e1quinas y equipos especiales\"}', '{\"es\":\"<p>Estamos capacitados para desarrollar m&aacute;quinas o equipos industriales de las m&aacute;s diversas caracter&iacute;sticas tales como<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>T&uacute;neles de Enfriamiento<\\/li>\\r\\n\\t<li>Prensas m&uacute;ltiples e individuales para la conformaci&oacute;n de artefactos sanitarios<\\/li>\\r\\n\\t<li>Turbo-matrices<\\/li>\\r\\n\\t<li>Separadores rotativos<\\/li>\\r\\n\\t<li>Sistema de pesaje y dosificaci&oacute;n<\\/li>\\r\\n\\t<li>Filtros de placas o canasto<\\/li>\\r\\n\\t<li>Trituradores y molinos<\\/li>\\r\\n\\t<li>Secadores \\/ Enfriadores por lecho fluidificado<\\/li>\\r\\n<\\/ul>\",\"en\":\"<p>Estamos capacitados para desarrollar m&aacute;quinas o equipos industriales de las m&aacute;s diversas caracter&iacute;sticas tales como<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>T&uacute;neles de Enfriamiento<\\/li>\\r\\n\\t<li>Prensas m&uacute;ltiples e individuales para la conformaci&oacute;n de artefactos sanitarios<\\/li>\\r\\n\\t<li>Turbo-matrices<\\/li>\\r\\n\\t<li>Separadores rotativos<\\/li>\\r\\n\\t<li>Sistema de pesaje y dosificaci&oacute;n<\\/li>\\r\\n\\t<li>Filtros de placas o canasto<\\/li>\\r\\n\\t<li>Trituradores y molinos<\\/li>\\r\\n\\t<li>Secadores \\/ Enfriadores por lecho fluidificado<\\/li>\\r\\n<\\/ul>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Ante necesidades espec&iacute;ficas de nuestros clientes, nuestra oficina de ingenier&iacute;a est&aacute; capacitada para realizar el<span style=\\\"color:#31923f\\\"> dise&ntilde;o y la ingenier&iacute;a de detalle<\\/span> necesaria para concretar el proyecto encomendado, permitiendo materializar en nuestros talleres, maquinas con un fin determinado, posibilit&aacute;ndonos ofrecer la mejor soluci&oacute;n en l&iacute;neas de proceso de las diversas plantas industriales (mineras, qu&iacute;micas, papeleras, metalmec&aacute;nicas, alimenticias, construcci&oacute;n, curtiembres, bebidas).<br \\/>\\r\\nNuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas <span style=\\\"color:#31923f\\\">m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio <\\/span>o en su defecto bajo vuestros lineamientos, planos y especificaciones.<\\/p>\",\"en\":\"<p>Ante necesidades espec&iacute;ficas de nuestros clientes, nuestra oficina de ingenier&iacute;a est&aacute; capacitada para realizar el dise&ntilde;o y la ingenier&iacute;a de detalle necesaria para concretar el proyecto encomendado, permitiendo materializar en nuestros talleres, maquinas con un fin determinado, posibilit&aacute;ndonos ofrecer la mejor soluci&oacute;n en l&iacute;neas de proceso de las diversas plantas industriales (mineras, qu&iacute;micas, papeleras, metalmec&aacute;nicas, alimenticias, construcci&oacute;n, curtiembres, bebidas).<br \\/>\\r\\nNuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 6, 'aa', '2019-06-27 18:32:01', '2019-08-15 23:43:50'),
(11, '{\"es\":\"Mezcladores de Polvo\",\"en\":\"Mezcladores de Polvo\"}', '{\"es\":\"<p>Nuestros mezcladores se destacan por su sencillez constructiva, facilidad de limpieza, y descarga r&aacute;pida.<br \\/>\\r\\nLas caracter&iacute;sticas particulares de nuestros mezcladores, posibilitan su utilizaci&oacute;n desde una operatoria totalmente manual, hasta una operatoria totalmente autom&aacute;tica, en la cual todo el proceso de carga, mezcla y descarga se realiza sin intervenci&oacute;n de operador alguno.&nbsp;<br \\/>\\r\\nRogamos consultar la alternativa m&aacute;s adecuada para v\\/proceso.<\\/p>\",\"en\":\"<p>Nuestros mezcladores se destacan por su sencillez constructiva, facilidad de limpieza, y descarga r&aacute;pida.<br \\/>\\r\\nLas caracter&iacute;sticas particulares de nuestros mezcladores, posibilitan su utilizaci&oacute;n desde una operatoria totalmente manual, hasta una operatoria totalmente autom&aacute;tica, en la cual todo el proceso de carga, mezcla y descarga se realiza sin intervenci&oacute;n de operador alguno.&nbsp;<br \\/>\\r\\nRogamos consultar la alternativa m&aacute;s adecuada para v\\/proceso.<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":\"<p>Disponemos de una extensa l&iacute;nea de equipos de mezclado para polvos con posibilidad de agregado de l&iacute;quidos o grasas, los cuales permiten lograr mezclas uniformes en tiempos extremadamente cortos, destac&aacute;ndose:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Mezcladores doble cono<\\/li>\\r\\n\\t<li>Mezcladores doble helicoide<\\/li>\\r\\n\\t<li>Mezcladores r&aacute;pidos a paletas<\\/li>\\r\\n\\t<li>Mezcladores verticales<\\/li>\\r\\n<\\/ul>\",\"en\":\"<p>Disponemos de una extensa l&iacute;nea de equipos de mezclado para polvos con posibilidad de agregado de l&iacute;quidos o grasas, los cuales permiten lograr mezclas uniformes en tiempos extremadamente cortos, destac&aacute;ndose:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Mezcladores doble cono<\\/li>\\r\\n\\t<li>Mezcladores doble helicoide<\\/li>\\r\\n\\t<li>Mezcladores r&aacute;pidos a paletas<\\/li>\\r\\n\\t<li>Mezcladores verticales<\\/li>\\r\\n<\\/ul>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 6, 'ab', '2019-06-27 18:36:16', '2019-06-27 18:36:16'),
(12, '{\"es\":\"Recipientes a presi\\u00f3n\",\"en\":\"Recipientes a presi\\u00f3n\"}', '{\"es\":\"<p>En <span style=\\\"color:#31923f\\\">Ammaturo S.A.<\\/span> contamos con una extensa gama de recipientes a presi&oacute;n, algunos de ellos son:<br \\/>\\r\\n<br \\/>\\r\\nRecipientes para aire comprimido<br \\/>\\r\\nRecipientes a presi&oacute;n (interna o externa), para todo tipo de fluido y\\/o proceso, de acuerdo a normas ASME, DIN, IRAM.<br \\/>\\r\\nRecipientes de todo tipo de capacidad. Uso y fluido, a&eacute;reos o subterr&aacute;neos, est&aacute;ticos o m&oacute;viles, con sistemas de calentamiento, agitaci&oacute;n, tanques hidroneum&aacute;tico., etc.<\\/p>\",\"en\":\"<p>En <span style=\\\"color:#31923f\\\">Ammaturo S.A.<\\/span> contamos con una extensa gama de recipientes a presi&oacute;n, algunos de ellos son:<br \\/>\\r\\n<br \\/>\\r\\nRecipientes para aire comprimido<br \\/>\\r\\nRecipientes a presi&oacute;n (interna o externa), para todo tipo de fluido y\\/o proceso, de acuerdo a normas ASME, DIN, IRAM.<br \\/>\\r\\nRecipientes de todo tipo de capacidad. Uso y fluido, a&eacute;reos o subterr&aacute;neos, est&aacute;ticos o m&oacute;viles, con sistemas de calentamiento, agitaci&oacute;n, tanques hidroneum&aacute;tico., etc.<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":\"<p>Desde los comienzos de nuestra actividad, hemos dise&ntilde;ado y fabricado recipientes a presi&oacute;n para todo tipo de fluido y proceso, con una amplia gama de capacidades, para ello disponemos de un departamento t&eacute;cnico especializado, el cual trabaja bajo normas internacionales y un taller de calderer&iacute;a altamente desarrollado con maquinaria y herramental de &uacute;ltima generaci&oacute;n.<\\/p>\",\"en\":\"<p>Desde los comienzos de nuestra actividad, hemos dise&ntilde;ado y fabricado recipientes a presi&oacute;n para todo tipo de fluido y proceso, con una amplia gama de capacidades, para ello disponemos de un departamento t&eacute;cnico especializado, el cual trabaja bajo normas internacionales y un taller de calderer&iacute;a altamente desarrollado con maquinaria y herramental de &uacute;ltima generaci&oacute;n.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 6, 'ac', '2019-06-27 18:40:34', '2019-06-27 18:40:34'),
(13, '{\"es\":\"Tanques, tolvas, ciclones y silos\",\"en\":\"Tanques, tolvas, ciclones y silos\"}', '{\"es\":\"<p>Dentro de la l&iacute;nea de producci&oacute;n de nuestra divisi&oacute;n calderer&iacute;a proveemos tanques de almacenaje de gran capacidad para todo tipo de fluido, bajo normas api 650 std. O dise&ntilde;o particular, al igual que tolvas, ciclones y silos de almacenaje para diversos materiales (por ej.: pl&aacute;sticos, harinas, minerales, cemento), realizados tanto en acero al carbono como en acero inoxidable.<br \\/>\\r\\n<span style=\\\"color:#31923f\\\">Nuestra oficina de ingenier&iacute;a est&aacute; capacitada para realizar el dise&ntilde;o y la ingenier&iacute;a de detalle necesaria, posibilitando tambi&eacute;n la fabricaci&oacute;n bajo planos.<\\/span><\\/p>\",\"en\":\"<p>Dentro de la l&iacute;nea de producci&oacute;n de nuestra divisi&oacute;n calderer&iacute;a proveemos tanques de almacenaje de gran capacidad para todo tipo de fluido, bajo normas api 650 std. O dise&ntilde;o particular, al igual que tolvas, ciclones y silos de almacenaje para diversos materiales (por ej.: pl&aacute;sticos, harinas, minerales, cemento), realizados tanto en acero al carbono como en acero inoxidable.<br \\/>\\r\\n<span style=\\\"color:#31923f\\\">Nuestra oficina de ingenier&iacute;a est&aacute; capacitada para realizar el dise&ntilde;o y la ingenier&iacute;a de detalle necesaria, posibilitando tambi&eacute;n la fabricaci&oacute;n bajo planos.<\\/span><\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 6, 'ad', '2019-06-27 18:45:06', '2019-06-27 18:45:06'),
(14, '{\"es\":\"Intercambiadores de calor\",\"en\":\"Intercambiadores de calor\"}', '{\"es\":\"<p>Dise&ntilde;amos y fabricamos equipos intercambiadores de calor, condensadores, evaporadores, aerotermos, para todo tipo de proceso, fluido, condiciones de trabajo y capacidad.&nbsp;<\\/p>\",\"en\":\"<p>Dise&ntilde;amos y fabricamos equipos intercambiadores de calor, condensadores, evaporadores, aerotermos, para todo tipo de proceso, fluido, condiciones de trabajo y capacidad.&nbsp;<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":\"<p>Nuestra oficina t&eacute;cnica con el soporte de software de &uacute;ltima generaci&oacute;n le permite dise&ntilde;ar equipos de intercambio de calor bajo las condiciones especificadas y realizar toda la ingenier&iacute;a de detalle necesaria, sobre normas tema \\/ DIN, y permitiendo tambi&eacute;n la fabricaci&oacute;n bajo planos y especificaciones t&eacute;cnicas de nuestros clientes.<br \\/>\\r\\nDisponemos de un amplio taller de calderer&iacute;a, totalmente equipado, con personal id&oacute;neo y experimentado, los que nos permite la fabricaci&oacute;n de integral de dichos equipos con altos est&aacute;ndares de calidad.<\\/p>\",\"en\":\"<p>Nuestra oficina t&eacute;cnica con el soporte de software de &uacute;ltima generaci&oacute;n le permite dise&ntilde;ar equipos de intercambio de calor bajo las condiciones especificadas y realizar toda la ingenier&iacute;a de detalle necesaria, sobre normas tema \\/ DIN, y permitiendo tambi&eacute;n la fabricaci&oacute;n bajo planos y especificaciones t&eacute;cnicas de nuestros clientes.<br \\/>\\r\\nDisponemos de un amplio taller de calderer&iacute;a, totalmente equipado, con personal id&oacute;neo y experimentado, los que nos permite la fabricaci&oacute;n de integral de dichos equipos con altos est&aacute;ndares de calidad.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 6, 'ae', '2019-06-27 18:47:21', '2019-06-27 18:47:21'),
(15, '{\"es\":\"Reactores\",\"en\":\"Reactores\"}', '{\"es\":\"<p>Nuestros talleres est&aacute;n equipados para la fabricaci&oacute;n integral de reactores qu&iacute;micos, para distintos tipos de industrias, fluidos, procesos, y condiciones de trabajo.&nbsp;<br \\/>\\r\\nDisponemos de personal id&oacute;neo y experimentado para llevar a cabo la construcci&oacute;n completa de los reactores qu&iacute;micos, bajo las m&aacute;s exigentes especificaciones t&eacute;cnicas.<br \\/>\\r\\nDichos equipos son factibles de construir en acero al carbono o acero inoxidable, con soldaduras bajo normas AWS.<\\/p>\",\"en\":\"<p>Nuestros talleres est&aacute;n equipados para la fabricaci&oacute;n integral de reactores qu&iacute;micos, para distintos tipos de industrias, fluidos, procesos, y condiciones de trabajo.&nbsp;<br \\/>\\r\\nDisponemos de personal id&oacute;neo y experimentado para llevar a cabo la construcci&oacute;n completa de los reactores qu&iacute;micos, bajo las m&aacute;s exigentes especificaciones t&eacute;cnicas.<br \\/>\\r\\nDichos equipos son factibles de construir en acero al carbono o acero inoxidable, con soldaduras bajo normas AWS.<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 6, 'af', '2019-06-27 18:54:31', '2019-06-27 18:54:31'),
(16, '{\"es\":\"Estructuras y Plataformas\",\"en\":\"Estructuras y Plataformas\"}', '{\"es\":\"<p>Dise&ntilde;amos y construimos integralmente todo tipo de estructuras met&aacute;licas, puentes, racks, plataformas, tanto en acero al carbono como en acero inoxidable.<br \\/>\\r\\nNuestra oficina de ingenier&iacute;a se encuentra capacitada para realizar el dise&ntilde;o y la ingenier&iacute;a de detalle necesaria que permite la fabricaci&oacute;n completa de las estructuras, y nuestros talleres est&aacute;n debidamente equipados para lograr la construcci&oacute;n econ&oacute;mica y fiable de las mismas.<br \\/>\\r\\nLas estructuras pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo lineamientos, planos y especificaciones de nuestros clientes.<\\/p>\",\"en\":\"<p>Dise&ntilde;amos y construimos integralmente todo tipo de estructuras met&aacute;licas, puentes, racks, plataformas, tanto en acero al carbono como en acero inoxidable.<br \\/>\\r\\nNuestra oficina de ingenier&iacute;a se encuentra capacitada para realizar el dise&ntilde;o y la ingenier&iacute;a de detalle necesaria que permite la fabricaci&oacute;n completa de las estructuras, y nuestros talleres est&aacute;n debidamente equipados para lograr la construcci&oacute;n econ&oacute;mica y fiable de las mismas.<br \\/>\\r\\nLas estructuras pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo lineamientos, planos y especificaciones de nuestros clientes.<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 6, 'ag', '2019-06-27 18:56:35', '2019-06-27 18:56:35'),
(17, '{\"es\":\"Calderer\\u00eda en acero inoxidable\",\"en\":\"Calderer\\u00eda en acero inoxidable\"}', '{\"es\":\"<p>Desde los inicios de nuestra empresa, hace ya m&aacute;s de 60 a&ntilde;os, en nuestros talleres hemos fabricado todo tipo de construcciones met&aacute;licas (calderer&iacute;a), tanto en acero al carbono, aceros especiales o acero inoxidable.<br \\/>\\r\\nDisponemos un amplio taller de calderer&iacute;a equipado adecuadamente para el trabajo de los metales, con maquinaria y herramental de &uacute;ltima generaci&oacute;n, complementado adecuadamente con oficiales y supervisores de amplia experiencia en el trabajo de chapas y perfiles como armado y trazado, soldadura, limpieza, pulido y\\/o pintura.&nbsp;<\\/p>\",\"en\":\"<p>Desde los inicios de nuestra empresa, hace ya m&aacute;s de 60 a&ntilde;os, en nuestros talleres hemos fabricado todo tipo de construcciones met&aacute;licas (calderer&iacute;a), tanto en acero al carbono, aceros especiales o acero inoxidable.<br \\/>\\r\\nDisponemos un amplio taller de calderer&iacute;a equipado adecuadamente para el trabajo de los metales, con maquinaria y herramental de &uacute;ltima generaci&oacute;n, complementado adecuadamente con oficiales y supervisores de amplia experiencia en el trabajo de chapas y perfiles como armado y trazado, soldadura, limpieza, pulido y\\/o pintura.&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 6, 'ah', '2019-06-27 19:10:19', '2019-07-25 00:19:50');
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `archivo`, `caracteristicas`, `video`, `plano`, `destacado`, `id_superior`, `orden`, `created_at`, `updated_at`) VALUES
(21, '{\"es\":\"Transportadores a rodillos motorizados por banda\",\"en\":\"Transportadores a rodillos motorizados por banda\"}', '{\"es\":\"<p>En los casos que no resulta viable utilizar la energ&iacute;a potencial para el desplazamiento de los bultos por sobre los rodillos, o sea necesario mantener el control del movimiento en todo el trayecto del equipo transportador, permitiendo arranques, paradas, aceleraciones, alineamiento, giros o acumulaci&oacute;n de los bultos con baja presi&oacute;n, son utilizados los transportadores motorizados con accionamiento por banda.<\\/p>\",\"en\":\"<p>En los casos que no resulta viable utilizar la energ&iacute;a potencial para el desplazamiento de los bultos por sobre los rodillos, o sea necesario mantener el control del movimiento en todo el trayecto del equipo transportador, permitiendo arranques, paradas, aceleraciones, alineamiento, giros o acumulaci&oacute;n de los bultos con baja presi&oacute;n, son utilizados los transportadores motorizados con accionamiento por banda.<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":\"<p>Los rodillos giran a trav&eacute;s de un eje por medio de rodamientos o bolillas, (protegidos contra el polvo), fabric&aacute;ndose en acero al carbono, acero al carbono galvanizado, acero inoxidable o pl&aacute;stico, y son traccionados por la banda en su parte inferior. La banda de tracci&oacute;n con superficie de fricci&oacute;n adecuada, es motorizada por un sistema de poleas y guiada a trav&eacute;s de todo el equipo mediante zapatas o poleas con regulaci&oacute;n independiente, las cuales permiten modificar el contacto entre banda y rodillos, y con ello la tracci&oacute;n sobre los mismos.<br \\/>\\r\\n<br \\/>\\r\\nEstos equipos de transporte se conforman por un bastidor r&iacute;gido, construido en chapa plegada, donde se ubican los rodillos, posicionados a distancias regulares, de acuerdo a las dimensiones y particularidades de cada bulto a mover, los mismos son fabricados por maquinas a control num&eacute;rico, permitiendo el exacto ensamblaje de todos los componentes. Los materiales de las estructuras portantes y bastidores se realizan en acero al carbono, acero galvanizado, aluminio o acero inoxidable.<br \\/>\\r\\nLos bultos con superficie inferior regular viajan suavemente al ser traccionados por los rodillos, siendo posible su detenci&oacute;n, acumulaci&oacute;n, rotaci&oacute;n o alineaci&oacute;n en cualquier momento.<br \\/>\\r\\nLos equipos transportadores de rodillos motorizados por banda permiten trasladar cargas livianas o medianas, posibilitando un buen manejo de la manipulaci&oacute;n del bulto en todo momento.<\\/p>\",\"en\":\"<p>Los rodillos giran a trav&eacute;s de un eje por medio de rodamientos o bolillas, (protegidos contra el polvo), fabric&aacute;ndose en acero al carbono, acero al carbono galvanizado, acero inoxidable o pl&aacute;stico, y son traccionados por la banda en su parte inferior. La banda de tracci&oacute;n con superficie de fricci&oacute;n adecuada, es motorizada por un sistema de poleas y guiada a trav&eacute;s de todo el equipo mediante zapatas o poleas con regulaci&oacute;n independiente, las cuales permiten modificar el contacto entre banda y rodillos, y con ello la tracci&oacute;n sobre los mismos.<br \\/>\\r\\n<br \\/>\\r\\nEstos equipos de transporte se conforman por un bastidor r&iacute;gido, construido en chapa plegada, donde se ubican los rodillos, posicionados a distancias regulares, de acuerdo a las dimensiones y particularidades de cada bulto a mover, los mismos son fabricados por maquinas a control num&eacute;rico, permitiendo el exacto ensamblaje de todos los componentes. Los materiales de las estructuras portantes y bastidores se realizan en acero al carbono, acero galvanizado, aluminio o acero inoxidable.<br \\/>\\r\\nLos bultos con superficie inferior regular viajan suavemente al ser traccionados por los rodillos, siendo posible su detenci&oacute;n, acumulaci&oacute;n, rotaci&oacute;n o alineaci&oacute;n en cualquier momento.<br \\/>\\r\\nLos equipos transportadores de rodillos motorizados por banda permiten trasladar cargas livianas o medianas, posibilitando un buen manejo de la manipulaci&oacute;n del bulto en todo momento.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 1, 'agb', '2019-06-27 22:05:54', '2019-06-27 22:05:54'),
(22, '{\"es\":\"Transportadores motorizados por correa de fricci\\u00f3n\",\"en\":\"Transportadores motorizados por correa de fricci\\u00f3n\"}', '{\"es\":\"<p>En estos equipos de transporte, los rodillos giran a trav&eacute;s de un eje por medio de rodamientos o bolillas, (protegidos contra el polvo), fabric&aacute;ndose en acero al carbono, acero al carbono galvanizado, acero inoxidable o pl&aacute;stico, y son traccionados por la correa de fricci&oacute;n en su parte inferior.&nbsp;<\\/p>\",\"en\":\"<p>En estos equipos de transporte, los rodillos giran a trav&eacute;s de un eje por medio de rodamientos o bolillas, (protegidos contra el polvo), fabric&aacute;ndose en acero al carbono, acero al carbono galvanizado, acero inoxidable o pl&aacute;stico, y son traccionados por la correa de fricci&oacute;n en su parte inferior.&nbsp;<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":\"<p>La correa de tracci&oacute;n dispone de una superficie de fricci&oacute;n adecuada, la cual es motorizada por un sistema de poleas acanaladas y guiada a trav&eacute;s de todo el equipo mediante zapatas o poleas con regulaci&oacute;n independiente, las cuales permiten modificar el contacto entre correa y rodillos, y con ello la tracci&oacute;n sobre los mismos.<br \\/>\\r\\nEstos equipos de transporte son utilizados donde no resulta posible usar la energ&iacute;a potencial para el desplazamiento de los bultos por sobre los rodillos, o sea necesario mantener el control del movimiento en todo el trayecto del equipo transportador, permitiendo arranques, paradas, aceleraciones, alineamiento, giros o acumulaci&oacute;n de los bultos con baja presi&oacute;n.<br \\/>\\r\\nEstos equipos de transporte est&aacute;n compuestos por un bastidor r&iacute;gido, construido en chapa plegada, donde se ubican los rodillos, posicionados a distancias regulares, de acuerdo a las dimensiones y particularidades de cada bulto a mover, los mismos son fabricados por m&aacute;quinas a control num&eacute;rico, permitiendo el exacto ensamblaje de todos los componentes. Los materiales de las estructuras portantes y bastidores se realizan en acero al carbono, acero galvanizado, aluminio o acero inoxidable.<br \\/>\\r\\nLos bultos con superficie inferior regular viajan suavemente al ser traccionados por los rodillos, siendo posible su detenci&oacute;n, acumulaci&oacute;n, rotaci&oacute;n o alineaci&oacute;n en cualquier momento.<br \\/>\\r\\nLos equipos transportadores de rodillos motorizados por correas permiten trasladar cargas livianas o medianas, posibilitando un buen manejo del bulto en todo momento.<\\/p>\",\"en\":\"<p>La correa de tracci&oacute;n dispone de una superficie de fricci&oacute;n adecuada, la cual es motorizada por un sistema de poleas acanaladas y guiada a trav&eacute;s de todo el equipo mediante zapatas o poleas con regulaci&oacute;n independiente, las cuales permiten modificar el contacto entre correa y rodillos, y con ello la tracci&oacute;n sobre los mismos.<br \\/>\\r\\nEstos equipos de transporte son utilizados donde no resulta posible usar la energ&iacute;a potencial para el desplazamiento de los bultos por sobre los rodillos, o sea necesario mantener el control del movimiento en todo el trayecto del equipo transportador, permitiendo arranques, paradas, aceleraciones, alineamiento, giros o acumulaci&oacute;n de los bultos con baja presi&oacute;n.<br \\/>\\r\\nEstos equipos de transporte est&aacute;n compuestos por un bastidor r&iacute;gido, construido en chapa plegada, donde se ubican los rodillos, posicionados a distancias regulares, de acuerdo a las dimensiones y particularidades de cada bulto a mover, los mismos son fabricados por maquinas a control num&eacute;rico, permitiendo el exacto ensamblaje de todos los componentes. Los materiales de las estructuras portantes y bastidores se realizan en acero al carbono, acero galvanizado, aluminio o acero inoxidable.<br \\/>\\r\\nLos bultos con superficie inferior regular viajan suavemente al ser traccionados por los rodillos, siendo posible su detenci&oacute;n, acumulaci&oacute;n, rotaci&oacute;n o alineaci&oacute;n en cualquier momento.<br \\/>\\r\\nLos equipos transportadores de rodillos motorizados por correas permiten trasladar cargas livianas o medianas, posibilitando un buen manejo del bulto en todo momento.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 1, 'agc', '2019-06-27 22:09:29', '2019-06-27 22:09:29'),
(24, '{\"es\":\"Elevadores continuos de bultos\",\"en\":\"Elevadores continuos de bultos\"}', '{\"es\":\"<p>Cuando las capacidades de transporte horarias son elevadas, es necesaria la utilizaci&oacute;n de Elevadores Continuos eliminando los tiempos de parada, estacionamiento y arranque.<\\/p>\",\"en\":\"<p>Cuando las capacidades de transporte horarias son elevadas, es necesaria la utilizaci&oacute;n de Elevadores Continuos eliminando los tiempos de parada, estacionamiento y arranque.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Nuestro Equipo Elevador de cajas, del tipo continuo, posibilita elevar bultos de dimensiones determinadas salvando diferencias de cotas en lugares estrechos, diferenci&aacute;ndose de otros equipos transportadores por su robustez, facilidad de mantenimiento y acceso, operaci&oacute;n segura y por sobre todo sencillez constructiva.<br \\/>\\r\\nLos Equipos Elevadores disponen de un m&iacute;nimo de equipamiento, que se traduce en un bajo mantenimiento y costo final, su concepci&oacute;n compacta permite minimizar la necesidad de espacio, posibilitando trabajar en un ambiente limpio y seguro, y como todos los equipos de su tipo est&aacute;n preparados para su uso en forma continua las 24 horas los 365 d&iacute;as del a&ntilde;o.<br \\/>\\r\\nEl sistema de mando de mando, sus componentes y sistema de trasmisi&oacute;n es totalmente mec&aacute;nico, por su parte el posicionado de las cajas, su seguimiento dentro del equipo y monitoreo de descarga es realizada por un sistema de sensores que reportan al PLC, el cual permiten en conjunto asegurar un funcionamiento seguro y confiable en el tiempo, evitando desestabilizaciones por inconvenientes comunes en otros Equipos Elevadores ya sea por falta de presi&oacute;n de aire comprimido, vibraciones, etc. El equipo necesita energ&iacute;a el&eacute;ctrica para los mandos principales los cuales son comandados desde un tablero general ubicado aleda&ntilde;o al equipo.<br \\/>\\r\\nEl Elevador permite el adicionado de equipamientos complementarios como detectores de caja abierta, contador de cajas, lector de c&oacute;digo de barras, etc.<br \\/>\\r\\nLos tiempos de elevaci&oacute;n son reducidos, a pesar de que todo el sistema trabaja a una velocidad baja evitando el consiguiente desgaste excesivo de cadenas, gu&iacute;as, pi&ntilde;ones y dem&aacute;s elementos mec&aacute;nicos.<br \\/>\\r\\nLas Cotas normales de elevaci&oacute;n puede llegar hasta los 15 mts, y la capacidad de Transporte varia en funci&oacute;n de la altura y las caracter&iacute;sticas del Bulto, rondando entre 30 Bultos\\/ Hora hasta 600 Bultos\\/ Hora.&nbsp;<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de Acero al carbono, o Acero Inoxidable, en este &uacute;ltimo caso puede solicitarse de construcci&oacute;n Sanitaria.<\\/p>\",\"en\":\"<p>Nuestro Equipo Elevador de cajas, del tipo continuo, posibilita elevar bultos de dimensiones determinadas salvando diferencias de cotas en lugares estrechos, diferenci&aacute;ndose de otros equipos transportadores por su robustez, facilidad de mantenimiento y acceso, operaci&oacute;n segura y por sobre todo sencillez constructiva.<br \\/>\\r\\nLos Equipos Elevadores disponen de un m&iacute;nimo de equipamiento, que se traduce en un bajo mantenimiento y costo final, su concepci&oacute;n compacta permite minimizar la necesidad de espacio, posibilitando trabajar en un ambiente limpio y seguro, y como todos los equipos de su tipo est&aacute;n preparados para su uso en forma continua las 24 horas los 365 d&iacute;as del a&ntilde;o.<br \\/>\\r\\nEl sistema de mando de mando, sus componentes y sistema de trasmisi&oacute;n es totalmente mec&aacute;nico, por su parte el posicionado de las cajas, su seguimiento dentro del equipo y monitoreo de descarga es realizada por un sistema de sensores que reportan al PLC, el cual permiten en conjunto asegurar un funcionamiento seguro y confiable en el tiempo, evitando desestabilizaciones por inconvenientes comunes en otros Equipos Elevadores ya sea por falta de presi&oacute;n de aire comprimido, vibraciones, etc. El equipo necesita energ&iacute;a el&eacute;ctrica para los mandos principales los cuales son comandados desde un tablero general ubicado aleda&ntilde;o al equipo.<br \\/>\\r\\nEl Elevador permite el adicionado de equipamientos complementarios como detectores de caja abierta, contador de cajas, lector de c&oacute;digo de barras, etc.<br \\/>\\r\\nLos tiempos de elevaci&oacute;n son reducidos, a pesar de que todo el sistema trabaja a una velocidad baja evitando el consiguiente desgaste excesivo de cadenas, gu&iacute;as, pi&ntilde;ones y dem&aacute;s elementos mec&aacute;nicos.<br \\/>\\r\\nLas Cotas normales de elevaci&oacute;n puede llegar hasta los 15 mts, y la capacidad de Transporte varia en funci&oacute;n de la altura y las caracter&iacute;sticas del Bulto, rondando entre 30 Bultos\\/ Hora hasta 600 Bultos\\/ Hora.&nbsp;<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de Acero al carbono, o Acero Inoxidable, en este &uacute;ltimo caso puede solicitarse de construcci&oacute;n Sanitaria.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 1, 'ahj', '2019-06-27 22:15:24', '2019-06-28 17:52:05'),
(25, '{\"es\":\"Elevadores discontinuos de bultos\",\"en\":\"Elevadores discontinuos de bultos\"}', '{\"es\":\"<p>En diversas situaciones en la industria en general, plantas de log&iacute;stica o almacenes se hace necesario trasladar de un nivel a otro, bultos o cajas, en sectores de espacio reducido, para estas situaciones hemos desarrollado un equipo elevador de bultos, r&aacute;pido, de construcci&oacute;n sencilla y de bajo mantenimiento.<\\/p>\",\"en\":\"<p>En diversas situaciones en la industria en general, plantas de log&iacute;stica o almacenes se hace necesario trasladar de un nivel a otro, bultos o cajas, en sectores de espacio reducido, para estas situaciones hemos desarrollado un equipo elevador de bultos, r&aacute;pido, de construcci&oacute;n sencilla y de bajo mantenimiento.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Ideal para producciones bajas a mediana, este elevador ocupa muy poco espacio, y es f&aacute;cilmente intercalarle en cualquier l&iacute;nea de transporte.<br \\/>\\r\\nEl equipo recibe en el nivel inferior los bultos o cajas, mediante un transportador dosificador, pasando el bulto a una plataforma que contiene un transportador de banda o rodillos, la cual es izada, mediante un mecanismo hidr&aacute;ulico o mec&aacute;nico hasta el punto superior. Un sistema de gu&iacute;as con ruedas regulables en todo el trayecto de elevaci&oacute;n, posibilita el traslado sin inconvenientes de los bultos.&nbsp;<br \\/>\\r\\nLas cotas normales de elevaci&oacute;n puede llegar hasta los 20 mts, y la capacidad de transporte var&iacute;a en funci&oacute;n de la altura y las caracter&iacute;sticas del bulto, rondando entre 10 bultos\\/ hora hasta 60 bultos\\/ hora.<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono, acero al carbono galvanizado o acero inoxidable.<\\/p>\",\"en\":\"<p>Ideal para producciones bajas a mediana, este elevador ocupa muy poco espacio, y es f&aacute;cilmente intercalarle en cualquier l&iacute;nea de transporte.<br \\/>\\r\\nEl equipo recibe en el nivel inferior los bultos o cajas, mediante un transportador dosificador, pasando el bulto a una plataforma que contiene un transportador de banda o rodillos, la cual es izada, mediante un mecanismo hidr&aacute;ulico o mec&aacute;nico hasta el punto superior. Un sistema de gu&iacute;as con ruedas regulables en todo el trayecto de elevaci&oacute;n, posibilita el traslado sin inconvenientes de los bultos.&nbsp;<br \\/>\\r\\nLas cotas normales de elevaci&oacute;n puede llegar hasta los 20 mts, y la capacidad de transporte var&iacute;a en funci&oacute;n de la altura y las caracter&iacute;sticas del bulto, rondando entre 10 bultos\\/ hora hasta 60 bultos\\/ hora.<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono, acero al carbono galvanizado o acero inoxidable.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 1, 'ahk', '2019-06-27 22:16:19', '2019-08-01 23:23:12'),
(26, '{\"es\":\"Elevadores de pallets\",\"en\":\"Elevadores de pallets\"}', '{\"es\":\"<p>En muchas ocasiones en la industria en general, plantas de log&iacute;stica o almacenes se hace necesario trasladar de un nivel a otro pallets, con cargas o no, en sectores de espacio reducido, para estas situaciones hemos desarrollado un equipo elevador de pallets, &aacute;gil, de estructura resistente y bajo mantenimiento.<\\/p>\",\"en\":\"<p>En muchas ocasiones en la industria en general, plantas de log&iacute;stica o almacenes se hace necesario trasladar de un nivel a otro pallets, con cargas o no, en sectores de espacio reducido, para estas situaciones hemos desarrollado un equipo elevador de pallets, &aacute;gil, de estructura resistente y bajo mantenimiento.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>El equipo recibe en el nivel inferior los pallets cargados o no, mediante un transportador de rodillos motorizados a cadena, pasando a una plataforma que contiene un transportador de rodillos, la cual es izada, mediante un mecanismo hidr&aacute;ulico o mec&aacute;nico hasta el punto superior. Un sistema de gu&iacute;as con ruedas regulables en todo el trayecto de elevaci&oacute;n, posibilita el traslado sin inconvenientes de los pallets.&nbsp;<br \\/>\\r\\nUna protecci&oacute;n mec&aacute;nica, acompa&ntilde;a todo el per&iacute;metro del equipo evitando accidentes o invasi&oacute;n del sector de izaje.<br \\/>\\r\\nLas cotas normales de elevaci&oacute;n puede llegar hasta los 40 mts, y la capacidad de transporte var&iacute;a en funci&oacute;n de la altura y las caracter&iacute;sticas del bulto, rondando entre 10 pallets\\/ hora hasta 45 pallets\\/ hora.<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono, acero al carbono galvanizado o acero inoxidable.<\\/p>\",\"en\":\"<p>El equipo recibe en el nivel inferior los pallets cargados o no, mediante un transportador de rodillos motorizados a cadena, pasando a una plataforma que contiene un transportador de rodillos, la cual es izada, mediante un mecanismo hidr&aacute;ulico o mec&aacute;nico hasta el punto superior. Un sistema de gu&iacute;as con ruedas regulables en todo el trayecto de elevaci&oacute;n, posibilita el traslado sin inconvenientes de los pallets.&nbsp;<br \\/>\\r\\nUna protecci&oacute;n mec&aacute;nica, acompa&ntilde;a todo el per&iacute;metro del equipo evitando accidentes o invasi&oacute;n del sector de izaje.<br \\/>\\r\\nLas cotas normales de elevaci&oacute;n puede llegar hasta los 40 mts, y la capacidad de transporte var&iacute;a en funci&oacute;n de la altura y las caracter&iacute;sticas del bulto, rondando entre 10 pallets\\/ hora hasta 45 pallets\\/ hora.<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono, acero al carbono galvanizado o acero inoxidable.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 1, 'ahj', '2019-06-27 22:18:21', '2019-07-23 00:50:44'),
(27, '{\"es\":\"L\\u00edneas de ensamble\",\"en\":\"L\\u00edneas de ensamble\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'ea', '2019-06-27 22:28:45', '2019-06-28 18:00:24'),
(28, '{\"es\":\"Plantas de acopio\",\"en\":\"Plantas de acopio\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'eb', '2019-06-27 22:28:45', '2019-06-28 18:01:02'),
(29, '{\"es\":\"L\\u00edneas de envasamiento\",\"en\":\"L\\u00edneas de envasamiento\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'ec', '2019-06-27 22:28:45', '2019-06-28 17:57:56'),
(30, '{\"es\":\"Sistema de distribuci\\u00f3n\",\"en\":\"Sistema de distribuci\\u00f3n\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'ed', '2019-06-27 22:28:45', '2019-06-28 18:04:51'),
(31, '{\"es\":\"L\\u00edneas de producci\\u00f3n\",\"en\":\"L\\u00edneas de producci\\u00f3n\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'ee', '2019-06-27 22:28:45', '2019-06-28 18:04:58'),
(32, '{\"es\":\"L\\u00edneas de enfriamiento\",\"en\":\"L\\u00edneas de enfriamiento\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'ef', '2019-06-27 22:28:45', '2019-06-28 18:03:50'),
(33, '{\"es\":\"Sistema de almacenaje para pastas\",\"en\":\"Sistema de almacenaje para pastas\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'eg', '2019-06-27 22:28:45', '2019-06-28 18:03:34'),
(34, '{\"es\":\"Silos para materiales dis\\u00edmiles\",\"en\":\"Silos para materiales dis\\u00edmiles\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'eh', '2019-06-27 22:28:45', '2019-06-28 18:03:16'),
(35, '{\"es\":\"Sistema almacenaje de galletas y snacks en l\\u00ednea\",\"en\":\"Sistema almacenaje de galletas y snacks en l\\u00ednea\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'ei', '2019-06-27 22:28:45', '2019-06-28 18:02:50'),
(36, '{\"es\":\"Sistema de almacenaje de envases vac\\u00edos\",\"en\":\"Sistema de almacenaje de envases vac\\u00edos\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'ej', '2019-06-27 22:28:45', '2019-06-28 18:02:25'),
(37, '{\"es\":\"Almacenaje de materiales a granel varios\",\"en\":\"Almacenaje de materiales a granel varios\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'el', '2019-06-27 22:28:45', '2019-06-28 18:04:32'),
(38, '{\"es\":\"Silos para productos varios\",\"en\":\"Silos para productos varios\"}', '{\"es\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Nuestra empresa desde sus inicios, se ha dedicado al dise&ntilde;o y construcci&oacute;n de m&aacute;quinas y equipos a pedido.<br \\/>\\r\\nLas m&aacute;quinas y equipos pueden realizarse bajo dise&ntilde;o propio o en su defecto bajo vuestros lineamientos, planos y especificaciones.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 5, 'ek', '2019-06-27 22:28:45', '2019-06-28 18:01:46'),
(39, '{\"es\":\"Transportadores a cinta liviana\",\"en\":\"Transportadores a cinta liviana\"}', '{\"es\":\"<p>Utilizadas en la industria alimenticia, qu&iacute;mica, pl&aacute;stica, etc.., son de estructura liviana, generalmente en chapa plegada, y suficientemente resistentes para las condiciones de uso y producto transportado, permitiendo el transporte de harinas, pl&aacute;sticos, sales, granos, productos alimenticios elaborados, materiales de peque&ntilde;a y mediana granulometr&iacute;a, etc.<\\/p>\",\"en\":\"<p>Utilizadas en la industria alimenticia, qu&iacute;mica, pl&aacute;stica, etc.., son de estructura liviana, generalmente en chapa plegada, y suficientemente resistentes para las condiciones de uso y producto transportado, permitiendo el transporte de harinas, pl&aacute;sticos, sales, granos, productos alimenticios elaborados, materiales de peque&ntilde;a y mediana granulometr&iacute;a, etc.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>En algunos casos se le adicionan alineadores de bandas autom&aacute;ticos, limpiadores de banda, rascadores, cabezales retractiles, tensores de banda por tornillo, etc., de acuerdo a requerimiento o naturaleza de utilizaci&oacute;n.&nbsp;<br \\/>\\r\\nLa banda transportadora es traccionada por un tambor motriz, ubicado en un cabezal de punta o intermedio, y corre sobre una cama de rodillos dispuestos rectos, en bina o trio, o en su defecto sobre cama de deslizamiento.<br \\/>\\r\\nLas cintas transportadoras pueden ser fijas o m&oacute;viles, en este caso se le adicionan un sistema de desplazamiento y fijaci&oacute;n, y generalmente disponen de sistema de elevaci&oacute;n, permitiendo adecuarlas a diferentes configuraciones.<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono, o acero inoxidable, pudiendo en este &uacute;ltimo caso ser de construcci&oacute;n sanitaria.<\\/p>\",\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 2, 'ba', '2019-06-27 22:55:07', '2019-08-06 00:08:46'),
(40, '{\"es\":\"Transportadores a cinta mediana\",\"en\":\"Transportadores a cinta mediana\"}', '{\"es\":\"<p>Utilizadas en la industria alimenticia, qu&iacute;mica, pl&aacute;stica, etc.., son de estructura liviana, generalmente en chapa plegada, y suficientemente resistentes para las condiciones de uso y producto transportado, permitiendo el transporte de harinas, pl&aacute;sticos, sales, granos, productos alimenticios elaborados, materiales de peque&ntilde;a y mediana granulometr&iacute;a, etc.<\\/p>\",\"en\":\"<p>Utilizadas en la industria alimenticia, qu&iacute;mica, pl&aacute;stica, etc.., son de estructura liviana, generalmente en chapa plegada, y suficientemente resistentes para las condiciones de uso y producto transportado, permitiendo el transporte de harinas, pl&aacute;sticos, sales, granos, productos alimenticios elaborados, materiales de peque&ntilde;a y mediana granulometr&iacute;a, etc.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>En algunos casos se le adicionan alineadores de bandas autom&aacute;ticos, limpiadores de banda, rascadores, cabezales retractiles, tensores de banda por tornillo, etc., de acuerdo a requerimiento o naturaleza de utilizaci&oacute;n.&nbsp;<br \\/>\\r\\nLa banda transportadora es traccionada por un tambor motriz, ubicado en un cabezal de punta o intermedio, y corre sobre una cama de rodillos dispuestos rectos, en bina o trio, o en su defecto sobre cama de deslizamiento.<br \\/>\\r\\nLas cintas transportadoras pueden ser fijas o m&oacute;viles, en este caso se le adicionan un sistema de desplazamiento y fijaci&oacute;n, y generalmente disponen de sistema de elevaci&oacute;n, permitiendo adecuarlas a diferentes configuraciones.<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono, o acero inoxidable, pudiendo en este &uacute;ltimo caso ser de construcci&oacute;n sanitaria.<\\/p>\",\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 2, 'bb', '2019-06-27 22:55:07', '2019-08-06 00:10:03'),
(41, '{\"es\":\"Transportadores a cinta pesada\",\"en\":\"Transportadores a cinta pesada\"}', '{\"es\":\"<p>Utilizadas en la industria alimenticia, qu&iacute;mica, pl&aacute;stica, etc.., son de estructura liviana, generalmente en chapa plegada, y suficientemente resistentes para las condiciones de uso y producto transportado, permitiendo el transporte de harinas, pl&aacute;sticos, sales, granos, productos alimenticios elaborados, materiales de peque&ntilde;a y mediana granulometr&iacute;a, etc.<\\/p>\",\"en\":\"<p>Utilizadas en la industria alimenticia, qu&iacute;mica, pl&aacute;stica, etc.., son de estructura liviana, generalmente en chapa plegada, y suficientemente resistentes para las condiciones de uso y producto transportado, permitiendo el transporte de harinas, pl&aacute;sticos, sales, granos, productos alimenticios elaborados, materiales de peque&ntilde;a y mediana granulometr&iacute;a, etc.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>En algunos casos se le adicionan alineadores de bandas autom&aacute;ticos, limpiadores de banda, rascadores, cabezales retractiles, tensores de banda por tornillo, etc., de acuerdo a requerimiento o naturaleza de utilizaci&oacute;n.&nbsp;<br \\/>\\r\\nLa banda transportadora es traccionada por un tambor motriz, ubicado en un cabezal de punta o intermedio, y corre sobre una cama de rodillos dispuestos rectos, en bina o trio, o en su defecto sobre cama de deslizamiento.<br \\/>\\r\\nLas cintas transportadoras pueden ser fijas o m&oacute;viles, en este caso se le adicionan un sistema de desplazamiento y fijaci&oacute;n, y generalmente disponen de sistema de elevaci&oacute;n, permitiendo adecuarlas a diferentes configuraciones.<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono, o acero inoxidable, pudiendo en este &uacute;ltimo caso ser de construcci&oacute;n sanitaria.<\\/p>\",\"en\":\"<p>En algunos casos se le adicionan alineadores de bandas autom&aacute;ticos, limpiadores de banda, rascadores, cabezales retractiles, tensores de banda por tornillo, etc., de acuerdo a requerimiento o naturaleza de utilizaci&oacute;n.&nbsp;<br \\/>\\r\\nLa banda transportadora es traccionada por un tambor motriz, ubicado en un cabezal de punta o intermedio, y corre sobre una cama de rodillos dispuestos rectos, en bina o trio, o en su defecto sobre cama de deslizamiento.<br \\/>\\r\\nLas cintas transportadoras pueden ser fijas o m&oacute;viles, en este caso se le adicionan un sistema de desplazamiento y fijaci&oacute;n, y generalmente disponen de sistema de elevaci&oacute;n, permitiendo adecuarlas a diferentes configuraciones.<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono, o acero inoxidable, pudiendo en este &uacute;ltimo caso ser de construcci&oacute;n sanitaria.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 2, 'bc', '2019-06-27 22:55:07', '2019-07-31 23:39:51'),
(42, '{\"es\":\"Transportadores a cadena tipo redler\",\"en\":\"Transportadores a cadena tipo redler\"}', '{\"es\":\"<p>Estos equipos de transporte son de uso habitual en l&iacute;neas de acopio y proceso en la industria cerealera, aceitera, molinera, petrolera, cemento etc., su estructura de chapa plegada, y abulonada, conforma una secci&oacute;n rectangular, donde es confinado el material, el cual es transportado por arrastre mediante una o varias cadenas, la cual dispone empujadores met&aacute;licos o pl&aacute;stico de bajo coeficiente de fricci&oacute;n, de secci&oacute;n adecuada, y distanciados regularmente.<\\/p>\",\"en\":\"<p>Estos equipos de transporte son de uso habitual en l&iacute;neas de acopio y proceso en la industria cerealera, aceitera, molinera, petrolera, cemento etc., su estructura de chapa plegada, y abulonada, conforma una secci&oacute;n rectangular, donde es confinado el material, el cual es transportado por arrastre mediante una o varias cadenas, la cual dispone empujadores met&aacute;licos o pl&aacute;stico de bajo coeficiente de fricci&oacute;n, de secci&oacute;n adecuada, y distanciados regularmente.<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":\"<p>Son de uso extendido para el transporte de cereal, carb&oacute;n, cenizas y todo material granular seco y homog&eacute;neo, permitiendo evitar la contaminaci&oacute;n por polvos del ambiente, debido a ser cerrados y de baja velocidad.&nbsp;<br \\/>\\r\\nExisten modelos con fondos autolimpiante, que permiten quitar totalmente el material transportado del interior del equipo.&nbsp;<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono, acero al carbono galvanizado o acero inoxidable.<\\/p>\",\"en\":\"<p>Son de uso extendido para el transporte de cereal, carb&oacute;n, cenizas y todo material granular seco y homog&eacute;neo, permitiendo evitar la contaminaci&oacute;n por polvos del ambiente, debido a ser cerrados y de baja velocidad.&nbsp;<br \\/>\\r\\nExisten modelos con fondos autolimpiante, que permiten quitar totalmente el material transportado del interior del equipo.&nbsp;<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono, acero al carbono galvanizado o acero inoxidable.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 2, 'bd', '2019-06-27 22:55:07', '2019-06-27 23:13:45'),
(43, '{\"es\":\"Transportadores a cadena tubular\",\"en\":\"Transportadores a cadena tubular\"}', '{\"es\":\"<p>Los transportadores tubulares a cadena, representan un tipo de m&aacute;quina de transporte, econ&oacute;mico, flexible, de f&aacute;cil configuraci&oacute;n, instalaci&oacute;n y mantenimiento, si bien es reservado para un rango de capacidades de transporte bajas, es un sistema ideal para varias industrias de proceso, posibilitando el traslado de materiales, tanto en vertical como en horizontal, con posibilidad de cargas y descargas intermedias, permitiendo trazados y configuraciones especiales, sumada a un confinamiento continuo del producto, evitando su contaminaci&oacute;n, alteraci&oacute;n o emisi&oacute;n de part&iacute;culas al ambiente, lo cual lo hace ideal para el traslado de polvos, cereales, chips, virutas, pl&aacute;sticos, granulados, harinas.<\\/p>\",\"en\":\"<p>Los transportadores tubulares a cadena, representan un tipo de m&aacute;quina de transporte, econ&oacute;mico, flexible, de f&aacute;cil configuraci&oacute;n, instalaci&oacute;n y mantenimiento, si bien es reservado para un rango de capacidades de transporte bajas, es un sistema ideal para varias industrias de proceso, posibilitando el traslado de materiales, tanto en vertical como en horizontal, con posibilidad de cargas y descargas intermedias, permitiendo trazados y configuraciones especiales, sumada a un confinamiento continuo del producto, evitando su contaminaci&oacute;n, alteraci&oacute;n o emisi&oacute;n de part&iacute;culas al ambiente, lo cual lo hace ideal para el traslado de polvos, cereales, chips, virutas, pl&aacute;sticos, granulados, harinas.<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":\"<p>El material es transportado por arrastre mediante una cadena de carga de rotura adecuada a la instalaci&oacute;n, la cual dispone empujadores pl&aacute;sticos de bajo coeficiente de fricci&oacute;n tomados a soportes met&aacute;licos abulonados, de secci&oacute;n circular, y distanciados regularmente.<br \\/>\\r\\nSeg&uacute;n requerimientos pueden fabricarse en acero al carbono, acero al carbono galvanizado o acero inoxidable.<\\/p>\",\"en\":\"<p>El material es transportado por arrastre mediante una cadena de carga de rotura adecuada a la instalaci&oacute;n, la cual dispone empujadores pl&aacute;sticos de bajo coeficiente de fricci&oacute;n tomados a soportes met&aacute;licos abulonados, de secci&oacute;n circular, y distanciados regularmente.<br \\/>\\r\\nSeg&uacute;n requerimientos pueden fabricarse en acero al carbono, acero al carbono galvanizado o acero inoxidable.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 2, 'be', '2019-06-27 23:14:45', '2019-06-27 23:14:45'),
(44, '{\"es\":\"Roscas transportadoras\",\"en\":\"Roscas transportadoras\"}', '{\"es\":\"<p>Las roscas transportadoras, son un sistema de traslado de material eficiente para un cantidad de procesos industriales, tanto para trabajos liviano como pesado, son ampliamente utilizadas en industria alimenticia, molinera, &aacute;ridos, del cemento, qu&iacute;mica, etc.<br \\/>\\r\\nConformado b&aacute;sicamente por un cuerpo o batea met&aacute;lica en u o secci&oacute;n circular, donde se deposita el material a trasladar, y un eje central, con espiras met&aacute;licas adosadas de pendiente y paso adecuado, siendo las encargadas del traslado del material.&nbsp;<\\/p>\",\"en\":\"<p>Las roscas transportadoras, son un sistema de traslado de material eficiente para un cantidad de procesos industriales, tanto para trabajos liviano como pesado, son ampliamente utilizadas en industria alimenticia, molinera, &aacute;ridos, del cemento, qu&iacute;mica, etc.<br \\/>\\r\\nConformado b&aacute;sicamente por un cuerpo o batea met&aacute;lica en u o secci&oacute;n circular, donde se deposita el material a trasladar, y un eje central, con espiras met&aacute;licas adosadas de pendiente y paso adecuado, siendo las encargadas del traslado del material.&nbsp;<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":\"<p>Su facilidad de instalaci&oacute;n y mantenimiento, adem&aacute;s de su larga vida &uacute;til, hace que este equipo sea elegido en varias l&iacute;neas de proceso o sistemas de transporte, permitiendo el transporte de materiales de diversa granulometr&iacute;a, sean secos o no, como cereales, harinas, productos qu&iacute;micos, minerales, polvos, cementos, carb&oacute;n, pastas, pl&aacute;sticos, productos alimenticios, etc.<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono o acero al carbono galvanizado.<\\/p>\",\"en\":\"<p>Su facilidad de instalaci&oacute;n y mantenimiento, adem&aacute;s de su larga vida &uacute;til, hace que este equipo sea elegido en varias l&iacute;neas de proceso o sistemas de transporte, permitiendo el transporte de materiales de diversa granulometr&iacute;a, sean secos o no, como cereales, harinas, productos qu&iacute;micos, minerales, polvos, cementos, carb&oacute;n, pastas, pl&aacute;sticos, productos alimenticios, etc.<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de acero al carbono o acero al carbono galvanizado.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 2, 'bf', '2019-06-27 23:15:46', '2019-06-27 23:15:46'),
(45, '{\"es\":\"Elevadores a cangilones\",\"en\":\"Elevadores a cangilones\"}', '{\"es\":\"<p>Los equipos elevadores a cangilones, permiten el traslado en vertical de materiales con regular granulometr&iacute;a, en forma r&aacute;pida y eficiente, y son utilizados extensamente en la industria, tanto para trabajos liviano como pesado, en industria alimenticia, molinera, &aacute;ridos, del cemento, qu&iacute;mica, miner&iacute;a, etc.&nbsp;<\\/p>\",\"en\":\"<p>Los equipos elevadores a cangilones, permiten el traslado en vertical de materiales con regular granulometr&iacute;a, en forma r&aacute;pida y eficiente, y son utilizados extensamente en la industria, tanto para trabajos liviano como pesado, en industria alimenticia, molinera, &aacute;ridos, del cemento, qu&iacute;mica, miner&iacute;a, etc.&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Conformado b&aacute;sicamente por un cuerpo met&aacute;lico de secci&oacute;n rectangular, cerrado, donde corre en forma transversal (vertical) la banda o cadenas con baldes (cangilones), los cuales trasladan el material desde el pie del elevador (noria), hasta la c&uacute;spide, donde es descargado por gravedad o velocidad centrifuga.<br \\/>\\r\\nLos baldes o cangilones de forma especial seg&uacute;n su uso, se encuentra fijados mediante bulones a la banda o cadenas, pudiendo fabricarse en pl&aacute;stico, acero al carbono o acero inoxidable.&nbsp;<br \\/>\\r\\nEste equipo de elevaci&oacute;n de material a granel, es seleccionado para la elevaci&oacute;n de materiales de diversa granulometr&iacute;a, secos, como cereales, piedras, harinas, productos qu&iacute;micos, minerales, cementos, carb&oacute;n, pl&aacute;sticos, productos alimenticios, fertilizantes.<br \\/>\\r\\nSeg&uacute;n las necesidades y\\/o requerimientos puede construirse su estructura en acero al carbono pintado, acero al carbono galvanizado, o acero inoxidable.<\\/p>\",\"en\":\"<p>Conformado b&aacute;sicamente por un cuerpo met&aacute;lico de secci&oacute;n rectangular, cerrado, donde corre en forma transversal (vertical) la banda o cadenas con baldes (cangilones), los cuales trasladan el material desde el pie del elevador (noria), hasta la c&uacute;spide, donde es descargado por gravedad o velocidad centrifuga.<br \\/>\\r\\nLos baldes o cangilones de forma especial seg&uacute;n su uso, se encuentra fijados mediante bulones a la banda o cadenas, pudiendo fabricarse en pl&aacute;stico, acero al carbono o acero inoxidable.&nbsp;<br \\/>\\r\\nEste equipo de elevaci&oacute;n de material a granel, es seleccionado para la elevaci&oacute;n de materiales de diversa granulometr&iacute;a, secos, como cereales, piedras, harinas, productos qu&iacute;micos, minerales, cementos, carb&oacute;n, pl&aacute;sticos, productos alimenticios, fertilizantes.<br \\/>\\r\\nSeg&uacute;n las necesidades y\\/o requerimientos puede construirse su estructura en acero al carbono pintado, acero al carbono galvanizado, o acero inoxidable.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 2, 'bg', '2019-06-27 23:16:38', '2019-08-15 23:37:26');
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `archivo`, `caracteristicas`, `video`, `plano`, `destacado`, `id_superior`, `orden`, `created_at`, `updated_at`) VALUES
(47, '{\"es\":\"Transportadores vibratorios\",\"en\":\"Transportadores vibratorios\"}', '{\"es\":\"<p>Los transportadores vibratorios, permiten el desplazamiento r&iacute;tmico del material, gracias a oscilaciones con determinada frecuencia. El material se sit&uacute;a sobre una platina met&aacute;lica, (que puede ser perforada o no), siendo trasladado sin que sufra deformaciones o roturas.<\\/p>\",\"en\":\"<p>Los transportadores vibratorios, permiten el desplazamiento r&iacute;tmico del material, gracias a oscilaciones con determinada frecuencia. El material se sit&uacute;a sobre una platina met&aacute;lica, (que puede ser perforada o no), siendo trasladado sin que sufra deformaciones o roturas.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Estos transportadores son utilizados para el traslado en horizontal del material depositado en la placa vibratoria, de forma r&aacute;pida, limpia y eficiente.<br \\/>\\r\\nSon utilizados para el transporte en relativa corta distancia o extracci&oacute;n de materiales, bajo tolvas o silos, en el traslado de minerales, piedras, cereales, granulados, productos alimenticios, etc.<br \\/>\\r\\nLa platina de apoyo del material puede ser fabricada en acero al carbono, aceros especiales o acero inoxidable, y pueden ser perforadas, con el fin de utilizarse como zarandas, procesos de enfriamiento o calentamiento.&nbsp;<br \\/>\\r\\nLa estructura del transportador vibratorio generalmente es construida en perfiles estructurales y\\/o laminados, puede realizarse en acero al carbono pintado o acero al carbono galvanizado.<\\/p>\",\"en\":\"<p>Estos transportadores son utilizados para el traslado en horizontal del material depositado en la placa vibratoria, de forma r&aacute;pida, limpia y eficiente.<br \\/>\\r\\nSon utilizados para el transporte en relativa corta distancia o extracci&oacute;n de materiales, bajo tolvas o silos, en el traslado de minerales, piedras, cereales, granulados, productos alimenticios, etc.<br \\/>\\r\\nLa platina de apoyo del material puede ser fabricada en acero al carbono, aceros especiales o acero inoxidable, y pueden ser perforadas, con el fin de utilizarse como zarandas, procesos de enfriamiento o calentamiento.&nbsp;<br \\/>\\r\\nLa estructura del transportador vibratorio generalmente es construida en perfiles estructurales y\\/o laminados, puede realizarse en acero al carbono pintado o acero al carbono galvanizado.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 2, 'bi', '2019-06-27 23:18:34', '2019-08-06 00:29:26'),
(49, '{\"es\":\"Sistema robotizado\",\"en\":\"Sistema robotizado\"}', '{\"es\":\"<p>Desde hace a&ntilde;os cuando los primeros robots comenzaron a trabajar, permiti&oacute; a las industrias mejorar su productividad y condiciones operativas. El continuo desarrollo, la baja de costos, y su facilidad de programaci&oacute;n, ha hecho que comenzara a generalizarse en industrias de las m&aacute;s diversas ramas, implement&aacute;ndose en un sin n&uacute;mero de procesos.<\\/p>\",\"en\":\"<p>Desde hace a&ntilde;os cuando los primeros robots comenzaron a trabajar, permiti&oacute; a las industrias mejorar su productividad y condiciones operativas. El continuo desarrollo, la baja de costos, y su facilidad de programaci&oacute;n, ha hecho que comenzara a generalizarse en industrias de las m&aacute;s diversas ramas, implement&aacute;ndose en un sin n&uacute;mero de procesos.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Los robots no trabajan aisladamente, sino con variados equipos que deben ser seleccionados de modo de maximizar la eficiencia de la celda de trabajo. Estos equipos deben ser por lo menos tan confiables como el robot, su complejidad y caracter&iacute;sticas depender&aacute;n de los objetivos y del trabajo realizado por la celda.&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nExisten diversos sistemas en c&oacute;mo se relacionan las celdas rob&oacute;ticas con el producto que est&aacute; siendo procesado.&nbsp;<br \\/>\\r\\nCon piezas de gran porte (por ej.: autom&oacute;viles), el sistema consiste en l&iacute;neas de transporte o veh&iacute;culos autoguiados que mueven las piezas mientras los robots act&uacute;an sobre la pieza<br \\/>\\r\\nOtro sistema de trabajo, es cuando se disponen las distintas m&aacute;quinas de tal manera que el robot tome una pieza y la mueva a trav&eacute;s de distintos procesos (por ej.: maquinado, control, embalaje, etc.) Y la deposite en una l&iacute;nea de salida.&nbsp;<br \\/>\\r\\nOtro sistema de trabajo es el ensamblaje, donde al robot le llegan pallets con las piezas que &eacute;l ordenar&aacute; o armar&aacute; en una forma predeterminada.&nbsp;<br \\/>\\r\\nDe cualquiera de estos sistemas se produce la interacci&oacute;n de los robots con alimentadores, equipos transportadores y otras m&aacute;quinas y equipos auxiliares, estando Ammaturo s.a. Capacitada para ofrecer soluciones integrales.<\\/p>\",\"en\":\"<p>Los robots no trabajan aisladamente, sino con variados equipos que deben ser seleccionados de modo de maximizar la eficiencia de la celda de trabajo. Estos equipos deben ser por lo menos tan confiables como el robot, su complejidad y caracter&iacute;sticas depender&aacute;n de los objetivos y del trabajo realizado por la celda.&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nExisten diversos sistemas en c&oacute;mo se relacionan las celdas rob&oacute;ticas con el producto que est&aacute; siendo procesado.&nbsp;<br \\/>\\r\\nCon piezas de gran porte (por ej.: autom&oacute;viles), el sistema consiste en l&iacute;neas de transporte o veh&iacute;culos autoguiados que mueven las piezas mientras los robots act&uacute;an sobre la pieza<br \\/>\\r\\nOtro sistema de trabajo, es cuando se disponen las distintas m&aacute;quinas de tal manera que el robot tome una pieza y la mueva a trav&eacute;s de distintos procesos (por ej.: maquinado, control, embalaje, etc.) Y la deposite en una l&iacute;nea de salida.&nbsp;<br \\/>\\r\\nOtro sistema de trabajo es el ensamblaje, donde al robot le llegan pallets con las piezas que &eacute;l ordenar&aacute; o armar&aacute; en una forma predeterminada.&nbsp;<br \\/>\\r\\nDe cualquiera de estos sistemas se produce la interacci&oacute;n de los robots con alimentadores, equipos transportadores y otras m&aacute;quinas y equipos auxiliares, estando Ammaturo s.a. Capacitada para ofrecer soluciones integrales.<\\/p>\"}', '{\"es\":\"R5EQJfuNuRI\",\"en\":null}', NULL, 0, 4, 'da', '2019-06-27 23:20:26', '2019-07-25 17:26:53'),
(50, '{\"es\":\"Final de l\\u00ednea\",\"en\":\"Final de l\\u00ednea\"}', '{\"es\":\"<p>Disponemos de una extensa experiencia en el desarrollo de fines de l&iacute;nea y sistema de paletizado autom&aacute;tico, para diversos tipos de industria y bultos.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Disponemos de una extensa experiencia en el desarrollo de fines de l&iacute;nea y sistema de paletizado autom&aacute;tico, para diversos tipos de industria y bultos.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Como antecedente, Ammaturo S.A. instalo su primer fin de l&iacute;nea, integrado con robots ABB, a comienzos de la d&eacute;cada de los 90, junto a equipos de dise&ntilde;o y fabricaci&oacute;n propia, en la industria de productos de limpieza, y luego lo hizo en la industria alimenticia, metalmec&aacute;nica, l&aacute;ctea, cemento, bebidas, entre otras. Hasta el presente en que podemos ofrecer soluciones para todo tipo de industria, vol&uacute;menes y paquetes.<br \\/>\\r\\n<br \\/>\\r\\nOfrecemos el dise&ntilde;o, construcci&oacute;n e integraci&oacute;n de equipamientos y la instalaci&oacute;n final, programaci&oacute;n y puesta en marcha de sistemas fines de l&iacute;nea, que comprende la salida de cajas, paquetes o bolsas desde las distintas l&iacute;neas de envasado, hasta la llegada almac&eacute;n de los pallets con productos, destinados a su dep&oacute;sito y despacho final.<\\/p>\",\"en\":\"<p>Como antecedente, Ammaturo S.A. instalo su primer fin de l&iacute;nea, integrado con robots ABB, a comienzos de la d&eacute;cada de los 90, junto a equipos de dise&ntilde;o y fabricaci&oacute;n propia, en la industria de productos de limpieza, y luego lo hizo en la industria alimenticia, metalmec&aacute;nica, l&aacute;ctea, cemento, bebidas, entre otras. Hasta el presente en que podemos ofrecer soluciones para todo tipo de industria, vol&uacute;menes y paquetes.<br \\/>\\r\\n<br \\/>\\r\\nOfrecemos el dise&ntilde;o, construcci&oacute;n e integraci&oacute;n de equipamientos y la instalaci&oacute;n final, programaci&oacute;n y puesta en marcha de sistemas fines de l&iacute;nea, que comprende la salida de cajas, paquetes o bolsas desde las distintas l&iacute;neas de envasado, hasta la llegada almac&eacute;n de los pallets con productos, destinados a su dep&oacute;sito y despacho final.<\\/p>\"}', '{\"es\":\"jPFWOkvaSl0\",\"en\":null}', NULL, 0, 4, 'db', '2019-06-27 23:25:49', '2019-07-25 17:16:39'),
(51, '{\"es\":\"Pick & Place\",\"en\":\"Pick & Place\"}', '{\"es\":\"<p>Varios sectores de la Industria, Almacenes o Log&iacute;stica realizan manipuleo de elementos peque&ntilde;os y medianos, situaci&oacute;n que generalmente es necesaria de optimizar, bien sea por la incidencia en la calidad final del Producto, mejora de Costos, o niveles de Producci&oacute;n creciente que hace imposible m&eacute;todos manuales usuales, siendo esta problem&aacute;tica factible de resolver en forma confiable, econ&oacute;mica y segura implementando Sistemas Pick and Place donde se conjugan veloces Robot o sistemas mec&aacute;nicos eficientes, junto a Equipos perificos agiles y precisos.<br \\/>\\r\\n&nbsp;<\\/p>\",\"en\":\"<p>Varios sectores de la Industria, Almacenes o Log&iacute;stica realizan manipuleo de elementos peque&ntilde;os y medianos, situaci&oacute;n que generalmente es necesaria de optimizar, bien sea por la incidencia en la calidad final del Producto, mejora de Costos, o niveles de Producci&oacute;n creciente que hace imposible m&eacute;todos manuales usuales, siendo esta problem&aacute;tica factible de resolver en forma confiable, econ&oacute;mica y segura implementando Sistemas Pick and Place donde se conjugan veloces Robot o sistemas mec&aacute;nicos eficientes, junto a Equipos perificos agiles y precisos.<br \\/>\\r\\n&nbsp;<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>La necesidad de tomar las piezas, elementos, o bultos peque&ntilde;os y medianos, es posible de lograr mediante el desarrollo de Grips adecuados. Los desplazamientos r&aacute;pidos puede realizarse por un Robot o Sistema electro mec&aacute;nico o con comando neum&aacute;tico.&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nEstamos en condiciones de ofrecer el dise&ntilde;o, construcci&oacute;n e integraci&oacute;n de Equipamiento y la Instalaci&oacute;n final, Programaci&oacute;n y puesta en Marcha de Sistemas Pick and Place.&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nH&aacute;ganos conocer sus problemas de manipuleo, nuestra Divisi&oacute;n Automoci&oacute;n, estudiara su caso y le podr&aacute; ofrecer la Soluci&oacute;n m&aacute;s competitiva tanto t&eacute;cnica como econ&oacute;mica.<\\/p>\",\"en\":\"<p>La necesidad de tomar las piezas, elementos, o bultos peque&ntilde;os y medianos, es posible de lograr mediante el desarrollo de Grips adecuados. Los desplazamientos r&aacute;pidos puede realizarse por un Robot o Sistema electro mec&aacute;nico o con comando neum&aacute;tico.&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nEstamos en condiciones de ofrecer el dise&ntilde;o, construcci&oacute;n e integraci&oacute;n de Equipamiento y la Instalaci&oacute;n final, Programaci&oacute;n y puesta en Marcha de Sistemas Pick and Place.&nbsp;<br \\/>\\r\\n<br \\/>\\r\\nH&aacute;ganos conocer sus problemas de manipuleo, nuestra Divisi&oacute;n Automoci&oacute;n, estudiara su caso y le podr&aacute; ofrecer la Soluci&oacute;n m&aacute;s competitiva tanto t&eacute;cnica como econ&oacute;mica.<\\/p>\"}', '{\"es\":\"iGP9xXTzRK0\",\"en\":null}', NULL, 0, 4, 'dc', '2019-06-27 23:27:56', '2019-07-25 17:37:26'),
(52, '{\"es\":\"Transportes curvos\",\"en\":\"Curved conveyors\"}', '{\"es\":\"<p>Al igual que las Cintas Transportadoras, son Equipos donde la Banda, Cadena o Malla Met&aacute;lica, es la que se desliza transportando los elementos de un punto a otro, con la especial particularidad, que en lugar de hacerlo en forma rectil&iacute;nea, lo hace en curva, siguiendo un determinado radio.<\\/p>\",\"en\":\"<p>Al igual que las Cintas Transportadoras, son Equipos donde la Banda, Cadena o Malla Met&aacute;lica, es la que se desliza transportando los elementos de un punto a otro, con la especial particularidad, que en lugar de hacerlo en forma rectil&iacute;nea, lo hace en curva, siguiendo un determinado radio.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>En todos los casos la banda transportadora es fraccionada por un Tambor Motriz c&oacute;nico, ubicado en el cabezal de punta o intermedio, y la banda corre sobre una cama de Rodillos o en su defecto sobre cama de deslizamiento.<br \\/>\\r\\nEl Bastidor en chapa Plegada, contiene gu&iacute;as que permiten un correcto desplazamiento de la Banda curva, evitando corrimientos indeseables.&nbsp;<br \\/>\\r\\nSeg&uacute;n los requerimientos pueden fabricarse en estructuras de Acero al carbono, o Acero Inoxidable, en este &uacute;ltimo caso puede solicitarse de construcci&oacute;n Sanitaria.<\\/p>\",\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 3, 'ca', '2019-06-27 23:32:42', '2019-08-06 00:34:46'),
(53, '{\"es\":\"Cinta retractil\",\"en\":\"Cinta retractil\"}', '{\"es\":\"<p>Es una variante de la Cinta Transportadora Convencional, siendo utilizadas en L&iacute;neas donde se necesite evacuar r&aacute;pidamente el Producto transportado, o enviarlo a dos Puntos de descarga diferente.<\\/p>\",\"en\":\"<p>Es una variante de la Cinta Transportadora Convencional, siendo utilizadas en L&iacute;neas donde se necesite evacuar r&aacute;pidamente el Producto transportado, o enviarlo a dos Puntos de descarga diferente.<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":\"<p>Para producir dicho efecto, una serie de rodillos, donde se enhebra la banda, se desplazan a trav&eacute;s de una gu&iacute;a, permitiendo la retracci&oacute;n del Transportador.&nbsp;<br \\/>\\r\\nAl igual que una Cinta convencional, la banda transportadora es traccionada por un Tambor Motriz ubicado en un cabezal intermedio, y la banda corre sobre una cama de Rodillos rectos o en su defecto sobre cama de deslizamiento.<br \\/>\\r\\nEl Bastidor en chapa Plegada, contiene las gu&iacute;as que permiten un correcto desplazamiento de la Banda, mediante un mecanismo especial.&nbsp;<br \\/>\\r\\nSeg&uacute;n necesidades de proceso pueden construirse en estructuras de Acero al carbono, o Acero Inoxidable, en este &uacute;ltimo caso puede solicitarse de construcci&oacute;n Sanitaria.<\\/p>\",\"en\":\"<p>Para producir dicho efecto, una serie de rodillos, donde se enhebra la banda, se desplazan a trav&eacute;s de una gu&iacute;a, permitiendo la retracci&oacute;n del Transportador.&nbsp;<br \\/>\\r\\nAl igual que una Cinta convencional, la banda transportadora es traccionada por un Tambor Motriz ubicado en un cabezal intermedio, y la banda corre sobre una cama de Rodillos rectos o en su defecto sobre cama de deslizamiento.<br \\/>\\r\\nEl Bastidor en chapa Plegada, contiene las gu&iacute;as que permiten un correcto desplazamiento de la Banda, mediante un mecanismo especial.&nbsp;<br \\/>\\r\\nSeg&uacute;n necesidades de proceso pueden construirse en estructuras de Acero al carbono, o Acero Inoxidable, en este &uacute;ltimo caso puede solicitarse de construcci&oacute;n Sanitaria.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 3, 'cb', '2019-06-27 23:33:57', '2019-06-27 23:34:09'),
(54, '{\"es\":\"Transporte sanitario\",\"en\":\"Transporte sanitario\"}', '{\"es\":\"<p>En las Industrias Alimenticias, Frigor&iacute;ficas y Farmac&eacute;uticas, es necesario Transportar materiales bajo condiciones sanitarias, por lo cual se hace necesario disponer Equipos Transportadores Especiales que contemplen estas particularidades.<\\/p>\",\"en\":\"<p>En las Industrias Alimenticias, Frigor&iacute;ficas y Farmac&eacute;uticas, es necesario Transportar materiales bajo condiciones sanitarias, por lo cual se hace necesario disponer Equipos Transportadores Especiales que contemplen estas particularidades.<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":\"<p>AMMATURO S.A. Desarrollo Equipos Transportadores Sanitarios a Banda, Transportadores, a Cadena y elevadores, dise&ntilde;ados y construidos considerando estas caracter&iacute;sticas particulares, que posibiliten adem&aacute;s la facilidad de limpieza, su resistencia a la corrosi&oacute;n, etc.., atento a la necesidad de Transporte de Material alimenticio desnudo, Carnes, Salchichas, Insumos Farmac&eacute;uticos.<br \\/>\\r\\n<br \\/>\\r\\nNo dude en consultarnos sobre sus necesidades espec&iacute;ficas de Transporte Sanitarios<\\/p>\",\"en\":\"<p>AMMATURO S.A. Desarrollo Equipos Transportadores Sanitarios a Banda, Transportadores, a Cadena y elevadores, dise&ntilde;ados y construidos considerando estas caracter&iacute;sticas particulares, que posibiliten adem&aacute;s la facilidad de limpieza, su resistencia a la corrosi&oacute;n, etc.., atento a la necesidad de Transporte de Material alimenticio desnudo, Carnes, Salchichas, Insumos Farmac&eacute;uticos.<br \\/>\\r\\n<br \\/>\\r\\nNo dude en consultarnos sobre sus necesidades espec&iacute;ficas de Transporte Sanitarios<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 3, 'cc', '2019-06-27 23:38:40', '2019-06-27 23:38:40'),
(55, '{\"es\":\"Espiroflex\",\"en\":\"Espiroflex\"}', '{\"es\":\"<p>El Transportador flexible ESPIROFLEX&reg; es una variante ingeniosa de la convencional Rosca Transportadora, con la particularidad de que su cuerpo es flexible, permitiendo curvarlo a voluntad y necesidad.&nbsp;<\\/p>\",\"en\":\"<p>El Transportador flexible ESPIROFLEX&reg; es una variante ingeniosa de la convencional Rosca Transportadora, con la particularidad de que su cuerpo es flexible, permitiendo curvarlo a voluntad y necesidad.&nbsp;<\\/p>\"}', '{\"es\":\"null\", \"en\":\"null\"}', '{\"es\":\"<p>Es un sistema de traslado de material eficiente para un cantidad de Productos Secos, Granulados y en Polvo, como Harina, Sales, Pl&aacute;sticos, Especias, Productos Alimenticios, Semillas, etc.<br \\/>\\r\\nAMMATURO S.A.&reg; ha desarrollado este Equipo atento a la necesidad de cargas y descargas o trasvasamiento de material, siendo utilizados en Industria Qu&iacute;micas, L&iacute;neas de Embasamiento, Procesos Industriales, Industria Alimenticia, Petroqu&iacute;micas.<br \\/>\\r\\nDispone de un cuerpo Tubular en Pl&aacute;stico de baja fricci&oacute;n, y una espira interior en Acero aleado o Acero Inoxidable transporta el material tanto en horizontal como en vertical.&nbsp;<br \\/>\\r\\nNo dude en consultarnos sobre sus necesidades espec&iacute;ficas de Transporte de Polvos o Granulados.<\\/p>\",\"en\":\"<p>Es un sistema de traslado de material eficiente para un cantidad de Productos Secos, Granulados y en Polvo, como Harina, Sales, Pl&aacute;sticos, Especias, Productos Alimenticios, Semillas, etc.<br \\/>\\r\\nAMMATURO S.A.&reg; ha desarrollado este Equipo atento a la necesidad de cargas y descargas o trasvasamiento de material, siendo utilizados en Industria Qu&iacute;micas, L&iacute;neas de Embasamiento, Procesos Industriales, Industria Alimenticia, Petroqu&iacute;micas.<br \\/>\\r\\nDispone de un cuerpo Tubular en Pl&aacute;stico de baja fricci&oacute;n, y una espira interior en Acero aleado o Acero Inoxidable transporta el material tanto en horizontal como en vertical.&nbsp;<br \\/>\\r\\nNo dude en consultarnos sobre sus necesidades espec&iacute;ficas de Transporte de Polvos o Granulados.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 3, 'dd', '2019-06-27 23:39:58', '2019-06-27 23:43:16'),
(57, '{\"es\":\"Dispensers, clasificador y girador de pallets\",\"en\":\"Dispensers, clasificador y girador de pallets\"}', '{\"es\":\"<p>En L&iacute;neas de Envasado, Almacenes, Log&iacute;sticas, etc.., se hace necesario muchas veces disponer de Equipos que permitan la acumulaci&oacute;n de Pallets, ya sea para evitar tiempos muertos de Operaci&oacute;n, mejorar el movimiento interno de la Planta, alimentar una L&iacute;nea o una celda de Paletizado autom&aacute;tico.<br \\/>\\r\\nEstos Equipos desarrollados por AMMATURO S.A.&reg;, permiten la carga por medio de zorras o autoelevadores de varios Pallets (hasta 20) y su descarga a la L&iacute;nea. De igual forma es posible acumular uno a uno, desde la L&iacute;nea de transporte para ser retirados luego el Lote de Pallets.<\\/p>\",\"en\":\"<p>En L&iacute;neas de Envasado, Almacenes, Log&iacute;sticas, etc.., se hace necesario muchas veces disponer de Equipos que permitan la acumulaci&oacute;n de Pallets, ya sea para evitar tiempos muertos de Operaci&oacute;n, mejorar el movimiento interno de la Planta, alimentar una L&iacute;nea o una celda de Paletizado autom&aacute;tico.<br \\/>\\r\\nEstos Equipos desarrollados por AMMATURO S.A.&reg;, permiten la carga por medio de zorras o autoelevadores de varios Pallets (hasta 20) y su descarga a la L&iacute;nea. De igual forma es posible acumular uno a uno, desde la L&iacute;nea de transporte para ser retirados luego el Lote de Pallets.<\\/p>\"}', '{\"es\":\"null\",\"en\":\"null\"}', '{\"es\":\"<p>Su construcci&oacute;n robusta, con mecanismo sencillos y accesibles, han logrado un Equipo de bajo costo y mantenimiento.<br \\/>\\r\\nLos Dispensers de Pallets son fabricados Acero al carbono, o Acero al Carbono galvanizado.<br \\/>\\r\\n<br \\/>\\r\\nEn L&iacute;neas donde se trabajan con Pallets de Madera, muchas veces es necesario la clasificaci&oacute;n de los mismos, ya sea para determinar la capacidad de ser utilizado o su rechazo, por defectos, rotura, diferencias dimensionales.<br \\/>\\r\\nEste Equipo desarrollado por AMMATURO S.A.&reg;, permite la carga por medio de zorras o autoelevadores de varios Pallets (hasta 20) y el posterior control autom&aacute;tico del mismo, permitiendo su rechazo o aceptaci&oacute;n, con posibilidad de derivarlo a la L&iacute;nea de Proceso o Rechazo, o en su defecto almacenarlo, en Buffer de hasta 20 Pallets, para su posterior retiro.<br \\/>\\r\\nNuestro Equipo clasificador de Pallets, permite descartar Pallets de Madera defectuosos, en forma autom&aacute;tica de acuerdo a par&aacute;metros previamente fijados, y modificables a posterior por el Usuario.&nbsp;<br \\/>\\r\\nSon de uso frecuente en Almacenes, Log&iacute;sticas, Plantas de Proceso, L&iacute;neas de Envasado, etc., tanto para impedir despachar Pallets defectuosos como tambi&eacute;n poder evitar inconvenientes en L&iacute;neas Autom&aacute;ticas, Almacenes Inteligentes o Fines de L&iacute;nea Robotizadas.<br \\/>\\r\\nLos Clasificadores de Pallets son construidos en Acero al carbono, o Acero al Carbono galvanizado.<\\/p>\",\"en\":\"<p>Su construcci&oacute;n robusta, con mecanismo sencillos y accesibles, han logrado un Equipo de bajo costo y mantenimiento.<br \\/>\\r\\nLos Dispensers de Pallets son fabricados Acero al carbono, o Acero al Carbono galvanizado.<br \\/>\\r\\n<br \\/>\\r\\nEn L&iacute;neas donde se trabajan con Pallets de Madera, muchas veces es necesario la clasificaci&oacute;n de los mismos, ya sea para determinar la capacidad de ser utilizado o su rechazo, por defectos, rotura, diferencias dimensionales.<br \\/>\\r\\nEste Equipo desarrollado por AMMATURO S.A.&reg;, permite la carga por medio de zorras o autoelevadores de varios Pallets (hasta 20) y el posterior control autom&aacute;tico del mismo, permitiendo su rechazo o aceptaci&oacute;n, con posibilidad de derivarlo a la L&iacute;nea de Proceso o Rechazo, o en su defecto almacenarlo, en Buffer de hasta 20 Pallets, para su posterior retiro.<br \\/>\\r\\nNuestro Equipo clasificador de Pallets, permite descartar Pallets de Madera defectuosos, en forma autom&aacute;tica de acuerdo a par&aacute;metros previamente fijados, y modificables a posterior por el Usuario.&nbsp;<br \\/>\\r\\nSon de uso frecuente en Almacenes, Log&iacute;sticas, Plantas de Proceso, L&iacute;neas de Envasado, etc., tanto para impedir despachar Pallets defectuosos como tambi&eacute;n poder evitar inconvenientes en L&iacute;neas Autom&aacute;ticas, Almacenes Inteligentes o Fines de L&iacute;nea Robotizadas.<br \\/>\\r\\nLos Clasificadores de Pallets son construidos en Acero al carbono, o Acero al Carbono galvanizado.<\\/p>\"}', '{\"es\":null,\"en\":null}', NULL, 0, 3, 'de', '2019-06-27 23:45:24', '2019-08-06 00:41:01'),
(59, '{\"es\":\"Transporte de materiales delicados\",\"en\":\"Transporte de materiales delicados\"}', '{\"es\":null,\"en\":null}', 'null', '{\"es\":null,\"en\":null}', '{\"es\":null,\"en\":null}', NULL, 0, 3, 'cd', '2019-07-25 00:26:58', '2019-07-25 00:26:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_imagenes`
--

CREATE TABLE `producto_imagenes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_producto` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto_imagenes`
--

INSERT INTO `producto_imagenes` (`id`, `imagen`, `orden`, `id_producto`, `created_at`, `updated_at`) VALUES
(27, 'imagenes/producto/fZSgcL2Q5Ffvn2iMvwdlOI5weuTYp6PV1bFVizoR.jpeg', 'aa', 11, '2019-06-27 18:36:16', '2019-06-27 18:36:16'),
(28, 'imagenes/producto/PPXBb6FSWSuC2QsHo7TD6HJAGdiCAPiDBh95eZBY.jpeg', 'ab', 11, '2019-06-27 18:36:16', '2019-06-27 18:36:16'),
(29, 'imagenes/producto/5S7gRWdZYjUX35cAN3SlneUNOBBtF7Jdb4IVwjxE.jpeg', 'ac', 11, '2019-06-27 18:36:16', '2019-06-27 18:36:16'),
(30, 'imagenes/producto/YFaujZGi675ev0aNaoT8b35AXGHL3tngol655B2W.jpeg', 'ad', 11, '2019-06-27 18:36:16', '2019-06-27 18:36:16'),
(31, 'imagenes/producto/4tYsJNmZhS7EGv91NnzvCIeHft3MIzQMF7evZfuR.jpeg', 'aa', 12, '2019-06-27 18:40:34', '2019-06-27 18:40:34'),
(32, 'imagenes/producto/zeReaGHExM3q2aMEjRDdhl1HDIilKs5JqnsdROU1.jpeg', 'ab', 12, '2019-06-27 18:40:34', '2019-06-27 18:40:34'),
(33, 'imagenes/producto/HGp0JF31YqpSlNWwvMtwqIxCTyGLF3gf507Ax9PN.jpeg', 'ac', 12, '2019-06-27 18:40:34', '2019-06-27 18:40:34'),
(34, 'imagenes/producto/kTrFVngjnQ9h2wxe78TCcPPTZ8teMYHgM0pvlex7.jpeg', 'aa', 13, '2019-06-27 18:45:06', '2019-06-27 18:45:06'),
(35, 'imagenes/producto/KaOO9KDEOii1MS8F13F7keUH2SKjK0d2LzQS1SIm.jpeg', 'ab', 13, '2019-06-27 18:45:06', '2019-06-27 18:45:06'),
(36, 'imagenes/producto/fDAkvsq5laQrM79Q79hixNlTQluQYNAWfWbDzny9.jpeg', 'ac', 13, '2019-06-27 18:45:06', '2019-06-27 18:45:06'),
(37, 'imagenes/producto/P5YuyGcWTbDoWgTReWlPs2BAKEbZg9FE9y80Wo3e.jpeg', 'ad', 13, '2019-06-27 18:45:06', '2019-06-27 18:45:06'),
(38, 'imagenes/producto/hzQZPtSlTakv7KQuF4TgDMaYrg4IeiRPB8tVeCOF.jpeg', 'aa', 14, '2019-06-27 18:47:21', '2019-06-27 18:47:21'),
(39, 'imagenes/producto/YxDN2avyLCXBsWpCVQlMch9PKRSIwHqJWxSrvH1Q.jpeg', 'ab', 14, '2019-06-27 18:47:21', '2019-06-27 18:47:21'),
(40, 'imagenes/producto/RKuXUjM8jC5LdBogCObVTE9c8sDh6um3o0rA6bED.jpeg', 'aa', 15, '2019-06-27 18:54:31', '2019-06-27 18:54:31'),
(41, 'imagenes/producto/BwcfE8AzFCSrHFB63RKyUNWT1fwRFHlpTXwdXCuu.jpeg', 'aa', 16, '2019-06-27 18:56:35', '2019-06-27 18:56:35'),
(42, 'imagenes/producto/hNI8x7mTTAKU6aajsjPublsmcqdYkICZ5rLPLg0g.jpeg', 'ab', 16, '2019-06-27 18:56:35', '2019-06-27 18:56:35'),
(68, 'imagenes/producto/289DoJukagWC4oW8ZbxdCSQXBb8tObYuN821zQrK.jpeg', 'ab', 21, '2019-06-27 22:05:54', '2019-06-27 22:05:54'),
(69, 'imagenes/producto/gP6xEdoyhQjkClqE5fo97FLAjKrCL7S0WckNWWeR.jpeg', 'aa', 22, '2019-06-27 22:09:29', '2019-06-27 22:09:29'),
(99, 'imagenes/producto/SAIrCzu8VS01dCSmcbUDzn58OyoipzXeDl5Q9ktL.jpeg', 'aa', 42, '2019-06-27 23:13:45', '2019-06-27 23:13:45'),
(100, 'imagenes/producto/Rk4WxVgpLC9wEfkCnVnvFweOkbIlsxnnJjApnAYd.jpeg', 'aa', 43, '2019-06-27 23:14:45', '2019-06-27 23:14:45'),
(101, 'imagenes/producto/fHPvMlTgWrmL3c2WdB59afJz4Z1UDBuxe9MkgvPO.jpeg', 'aa', 44, '2019-06-27 23:15:46', '2019-06-27 23:15:46'),
(120, 'imagenes/producto/PJ6EIt5u9k8AVMTQQlbj7Eo19rSFUP4faI5etgcV.jpeg', 'aa', 53, '2019-06-27 23:34:09', '2019-06-27 23:34:09'),
(121, 'imagenes/producto/aV6pstc7IGPovzyNJie31p7v45WJAlcFSQsksuur.jpeg', 'aa', 54, '2019-06-27 23:38:40', '2019-06-27 23:38:40'),
(122, 'imagenes/producto/zaCsR3gfs9svV48ZHbQKK9gLGnWUZ2kCSs0i2AbU.jpeg', 'ab', 54, '2019-06-27 23:38:40', '2019-06-27 23:38:40'),
(123, 'imagenes/producto/2mKokhkiQqF7K57U3TH6I2vYLEfAmtWkbscOslP1.jpeg', 'ac', 54, '2019-06-27 23:38:40', '2019-06-27 23:38:40'),
(124, 'imagenes/producto/pbFk14mcPl0cPcg8JDZTEKuooKGzX3EfMVOhdHml.jpeg', 'ad', 54, '2019-06-27 23:38:40', '2019-06-27 23:38:40'),
(133, 'imagenes/producto/N51yVpNb8y37woNjuk36K58dfH51Te1ewK4HjV44.jpeg', 'aa', 55, '2019-06-27 23:43:17', '2019-06-27 23:43:17'),
(134, 'imagenes/producto/hUaNET4I1A6tR8TCTnPWzB6TF1Hs0QN4CWgku93C.jpeg', 'ab', 55, '2019-06-27 23:43:17', '2019-06-27 23:43:17'),
(135, 'imagenes/producto/dy9gEXqBnk8KuGDEGqO1ZFbHln1MUwULYoAGnPqq.jpeg', 'ac', 55, '2019-06-27 23:43:17', '2019-06-27 23:43:17'),
(136, 'imagenes/producto/FoOAeCPX3NIh8GmaPwjLTqgp6bINViXIVpqTP15K.jpeg', 'ad', 55, '2019-06-27 23:43:17', '2019-06-27 23:43:17'),
(148, 'imagenes/producto/Sm6daAbO8jJBJEYlHK6AoWbe8cfMjxssRfmm9k26.jpeg', 'aa', 27, '2019-06-28 18:00:24', '2019-06-28 18:00:24'),
(149, 'imagenes/producto/zAJgfnsDoTSFwxbSdaW5Ed88zeswjZKlwgcduFMa.jpeg', 'aa', 28, '2019-06-28 18:01:02', '2019-06-28 18:01:02'),
(150, 'imagenes/producto/24Idn41CwfkqYayHo4oqy3wYgomQkCUUqfdGt3Ne.jpeg', 'aa', 38, '2019-06-28 18:01:46', '2019-06-28 18:01:46'),
(151, 'imagenes/producto/1LAaPITmqLB4Xi8hMAxPzVvV7P68js43TP2kn7CX.jpeg', 'aa', 36, '2019-06-28 18:02:25', '2019-06-28 18:02:25'),
(152, 'imagenes/producto/2sUI0lmRGEu2hxW5eStbrovmJSGZgsaih2HljXAK.jpeg', 'aa', 35, '2019-06-28 18:02:50', '2019-06-28 18:02:50'),
(153, 'imagenes/producto/HEYvZVLtMquoAXkXzDUtDJsNlYVhMAT13Fasm5qg.jpeg', 'aa', 34, '2019-06-28 18:03:16', '2019-06-28 18:03:16'),
(154, 'imagenes/producto/fhHqgIsGZLk6M3JSDW0WjdyOilUb288sB8gjIpR3.jpeg', 'aa', 33, '2019-06-28 18:03:34', '2019-06-28 18:03:34'),
(155, 'imagenes/producto/4ljs38MrzbqO5gTt1neKWh6FQBtyfBjh1ncs77Be.jpeg', 'aa', 32, '2019-06-28 18:03:50', '2019-06-28 18:03:50'),
(157, 'imagenes/producto/REiAJYWE9n65kWncHMX7sb9k3GZW71SUvbpGQTGW.jpeg', 'aa', 37, '2019-06-28 18:04:32', '2019-06-28 18:04:32'),
(158, 'imagenes/producto/nBMHVGxB2pB8af6xLhrSvKnZigkoSnLJyBwA3BNv.jpeg', 'aa', 30, '2019-06-28 18:04:51', '2019-06-28 18:04:51'),
(159, 'imagenes/producto/TAT6lZBBRddP23PPH5EaB7Im9RzZ8xu89g4bdh4X.jpeg', 'aa', 31, '2019-06-28 18:04:58', '2019-06-28 18:04:58'),
(160, 'imagenes/producto/IGd8avt5fE0RhSo1URYnFG4oVwrsgfhQ177tyuhC.jpeg', 'aa', 29, '2019-06-28 18:05:27', '2019-06-28 18:05:27'),
(225, 'imagenes/producto/dLMSlaIRMZgFZfp3CE55WOIamAJVTLk7oBx0g71S.jpeg', 'aa', 7, '2019-07-23 17:14:37', '2019-07-23 17:14:37'),
(226, 'imagenes/producto/OQl8Pp1gNDNYVYusBrjalL0fvX9xZqtT5VxXbt2Y.jpeg', 'ab', 7, '2019-07-23 17:14:37', '2019-07-23 17:14:37'),
(227, 'imagenes/producto/xxCEbKfOeCxfJc8IlnUxQFjbRGaNWftmByQrEFFU.jpeg', 'ac', 7, '2019-07-23 17:14:37', '2019-07-23 17:14:37'),
(228, 'imagenes/producto/2LScGjKKlTqsYkeAH4VQyxkG4CQo593pTYyaslmD.jpeg', 'ad', 7, '2019-07-23 17:14:37', '2019-07-23 17:14:37'),
(229, 'imagenes/producto/hcmLeqhatgTGMgWjCekfz7h8i6p9SnJpijBmxVOr.jpeg', 'aa', 8, '2019-07-23 17:16:11', '2019-07-23 17:16:11'),
(230, 'imagenes/producto/kGNITuQPWAUjLFlzrtTylGQl1H4J7fI9FHXljr9G.jpeg', 'ab', 8, '2019-07-23 17:16:11', '2019-07-23 17:16:11'),
(231, 'imagenes/producto/HHIekQzdx2zG4Bm4tTWw6xwuVS1cSDvPE3idWWc7.jpeg', 'aa', 26, '2019-07-23 17:18:36', '2019-07-23 17:18:36'),
(232, 'imagenes/producto/QDUJoPVyzUdJOvOpN9dHpOh6w7cYk448kBB9f3UU.jpeg', 'ab', 26, '2019-07-23 17:18:36', '2019-07-23 17:18:36'),
(233, 'imagenes/producto/nhxIXcHYefC6vdcnHKpqY8LDBHLz1S7b4ZyeOfpC.jpeg', 'ac', 26, '2019-07-23 17:18:36', '2019-07-23 17:18:36'),
(236, 'imagenes/producto/P0lhMeSl89mWziJWX6nh9feEdlQESSqxZBEFXddq.jpeg', 'aa', 17, '2019-07-25 00:19:50', '2019-07-25 00:19:50'),
(237, 'imagenes/producto/3qPbwE7LNDu8bg2NIvbY6RmgvIn4b2wGnY3X1E3M.jpeg', 'ab', 17, '2019-07-25 00:19:50', '2019-07-25 00:19:50'),
(238, 'imagenes/producto/0gEFWno1Oiyyq56NisWMmRQi6KytNpZICQhn2px3.jpeg', 'ac', 17, '2019-07-25 00:19:50', '2019-07-25 00:19:50'),
(239, 'imagenes/producto/gXJKmTyra0r8aLQ5E4zCrLCxD6OUvk8Q6fRRqcAv.jpeg', 'ad', 17, '2019-07-25 00:19:50', '2019-07-25 00:19:50'),
(250, 'imagenes/producto/UpLmbmE2R7bsCJ7XiA3Mj2feoE2rrfmjXm2OmVjb.jpeg', 'aa', 49, '2019-07-25 17:26:53', '2019-07-25 17:26:53'),
(251, 'imagenes/producto/iS3pgue7QpSHB4M4Sf7yONX95MD9yzm21fCSdjTS.jpeg', 'ab', 49, '2019-07-25 17:26:53', '2019-07-25 17:26:53'),
(258, 'imagenes/producto/Sder3dDYfYENAlCKnzzM2Tp8sk1VbV5skbqjPbsy.jpeg', 'aa', 3, '2019-07-26 00:19:47', '2019-07-26 00:19:47'),
(259, 'imagenes/producto/vkKAWK3ICZGzxm3HjkQokGLfxcLywGAajuYgYkna.jpeg', 'ab', 3, '2019-07-26 00:19:47', '2019-07-26 00:19:47'),
(260, 'imagenes/producto/nXJUhPa0w0P9WpohfksmfLirASeB2itY9cpAF30A.jpeg', 'ac', 3, '2019-07-26 00:19:47', '2019-07-26 00:19:47'),
(283, 'imagenes/producto/sMWEP45mbbqlgKgbbvD32CHmqZtx5iBoaoVHPpoC.png', 'aa', 25, '2019-08-01 23:23:12', '2019-08-01 23:23:12'),
(284, 'imagenes/producto/73oeWLl1v6tAgN8G8c9ck6kngMz0nkMFafEXSuu1.png', 'ab', 25, '2019-08-01 23:23:12', '2019-08-01 23:23:12'),
(296, 'imagenes/producto/BZOqPYpnhMalk1mnhy79UL6IWxawDjGOnoWewVgh.png', 'aa', 24, '2019-08-01 23:35:26', '2019-08-01 23:35:26'),
(297, 'imagenes/producto/zw4Y59cYSsCpH6t6tdEu9BTdjHJJ6FMhiqHnyK4z.png', 'ab', 24, '2019-08-01 23:35:26', '2019-08-01 23:35:26'),
(355, 'imagenes/producto/JKKB8nzBJsbZBWq5GB3Y0h4OY1fSc9ioUQXS4jPb.png', 'ac', 9, '2019-08-08 22:02:04', '2019-08-08 22:02:04'),
(356, 'imagenes/producto/EWWG24Eyp6Zng6VjocafTVxl5NeU8GXI7Rb7YewW.jpeg', 'aa', 9, '2019-08-08 22:02:04', '2019-08-08 22:02:04'),
(357, 'imagenes/producto/4inrw3hYmVRYcweExhDK88xt2JhTElhj3DmvhXeR.jpeg', 'ab', 9, '2019-08-08 22:02:04', '2019-08-08 22:02:04'),
(362, 'imagenes/producto/LxORWLoupF4jPyYhnm8ZpwcJOMXDtRUIbjZCE1Xb.png', 'aa', 40, '2019-08-08 22:15:18', '2019-08-08 22:15:18'),
(363, 'imagenes/producto/SOC8UrA96PdPLfpaMWmPi3ACtFj4SF0dC2YWrIvW.png', 'aa', 47, '2019-08-08 22:16:59', '2019-08-08 22:16:59'),
(364, 'imagenes/producto/3g6avCwe2wYPhvpX2fdFRLhEtkKpls45gKn23dLE.jpeg', 'ad', 52, '2019-08-08 22:28:21', '2019-08-08 22:28:21'),
(365, 'imagenes/producto/uYBnGn7F7ITHvJ5PeyFlji5cFs1wu7KW7I3b3Vg6.jpeg', 'ab', 52, '2019-08-08 22:28:21', '2019-08-08 22:28:21'),
(366, 'imagenes/producto/cUcUjSCusDGduu92rZF94q1G8iSOrK4alt3TLFdk.jpeg', 'ac', 52, '2019-08-08 22:28:21', '2019-08-08 22:28:21'),
(367, 'imagenes/producto/ncuKvacki08mcdozXmkz7v9aasekUzvYpyyuslBc.png', 'aa', 52, '2019-08-08 22:28:21', '2019-08-08 22:28:21'),
(371, 'imagenes/producto/IBewQjLGleFoswXpxB1SSRy1C3LwgOSZpOlIWGgu.jpeg', 'aa', 6, '2019-08-15 22:35:32', '2019-08-15 22:35:32'),
(372, 'imagenes/producto/eW6nq78eKHrBkwKdvg2eCfWfHyYRWkB1vXjGLZrO.jpeg', 'ab', 6, '2019-08-15 22:35:32', '2019-08-15 22:35:32'),
(373, 'imagenes/producto/ccj4BUWvkVKjCCHuXU1701gqeaKKbCDHjv0AhUzZ.jpeg', 'ac', 6, '2019-08-15 22:35:32', '2019-08-15 22:35:32'),
(374, 'imagenes/producto/Z9ZVz3Sx3KrrDGYWxmQNzUMbbPGlmLRl3TV6DfjZ.png', 'ad', 6, '2019-08-15 22:35:32', '2019-08-15 22:35:32'),
(375, 'imagenes/producto/RbO5C6Oq54ezxKo7uEF1CQ9pERuP5iSg94r4OAmS.png', 'aa', 39, '2019-08-15 22:37:08', '2019-08-15 22:37:08'),
(376, 'imagenes/producto/YLdREOmft0hXmcsyiyOAjcg8oFvInkNb8gKUL4al.png', 'ab', 39, '2019-08-15 22:37:08', '2019-08-15 22:37:08'),
(377, 'imagenes/producto/ai9la5I9ZFet1RHJYfuHBBgfbNEdkrCHBVHpsbXR.png', 'ac', 39, '2019-08-15 22:37:08', '2019-08-15 22:37:08'),
(378, 'imagenes/producto/vdQTEkqPpkNv1h7sNWSIqPnvjFgYABqtgsaU7OpY.png', 'ab', 41, '2019-08-15 22:38:39', '2019-08-15 22:38:39'),
(379, 'imagenes/producto/v4LkVznttbIVKtIZ90BcDCni4z3V4e1FDqsFurlV.png', 'ac', 41, '2019-08-15 22:38:39', '2019-08-15 22:38:39'),
(380, 'imagenes/producto/UbtRWirhyDSJqfuLzOPyFDOfTqxDuFIvdPMb4t0t.png', 'ae', 41, '2019-08-15 22:38:39', '2019-08-15 22:38:39'),
(381, 'imagenes/producto/lTiEUFlbeySJDktG95Km6Ko9YQGheqoDngsSTFue.png', 'aa', 41, '2019-08-15 22:38:39', '2019-08-15 22:38:39'),
(382, 'imagenes/producto/QImGQnPMaQmCA96lTx5PLEZzYMSpKhDmyv7bKQBH.png', 'aa', 45, '2019-08-15 23:37:26', '2019-08-15 23:37:26'),
(383, 'imagenes/producto/u77yPZVlLEqiutjsJFSox1WcFo3OBZnugGg9PbBy.jpeg', 'ab', 57, '2019-08-15 23:40:23', '2019-08-15 23:40:23'),
(384, 'imagenes/producto/gW8CLdrzqBrhYjt6aavVlIUgqlKvmWE0PmjOywCp.jpeg', 'ac', 57, '2019-08-15 23:40:23', '2019-08-15 23:40:23'),
(385, 'imagenes/producto/C1pBbTXjR498gJBssnfrFQFLns0JjLYVYolbaklX.png', 'aa', 57, '2019-08-15 23:40:23', '2019-08-15 23:40:23'),
(386, 'imagenes/producto/UPQ54Er4Em7FzrVNmI3V7Aia45tT0SUDzSpmT33n.png', 'ad', 57, '2019-08-15 23:40:23', '2019-08-15 23:40:23'),
(387, 'imagenes/producto/UtjRJsvZNFxzRElC8cX1JoA0TVsOBQtIdVB4NPUc.jpeg', 'aa', 50, '2019-08-15 23:41:51', '2019-08-15 23:41:51'),
(388, 'imagenes/producto/Hd4MTycX8GQiO14W44dYzwSvMz61cgulUhtb1c1c.jpeg', 'ac', 50, '2019-08-15 23:41:51', '2019-08-15 23:41:51'),
(389, 'imagenes/producto/aVCYsNgYeJSJEvies3jz7c9C2EnyKKU7yRuUWywT.png', 'ab', 50, '2019-08-15 23:41:51', '2019-08-15 23:41:51'),
(397, 'imagenes/producto/rCm2nWDNEeR8UmgacTOqCKiNbnxvyqkhrzE8ZuDP.png', 'aa', 4, '2019-08-15 23:47:03', '2019-08-15 23:47:03'),
(398, 'imagenes/producto/WXzc5NOjldKiscgIfiIOXxE2DHwAUjGlL5xeLqbO.jpeg', 'ab', 4, '2019-08-15 23:47:03', '2019-08-15 23:47:03'),
(399, 'imagenes/producto/ej8AaNnG0QvwSV5G1JaOQ9uR3rrFlr4BjFK1446k.png', 'ad', 4, '2019-08-15 23:47:03', '2019-08-15 23:47:03'),
(400, 'imagenes/producto/uAWyEgjZkjIzFikZXmfn7puBaUX7S9ax37cCVzHX.jpeg', 'ac', 4, '2019-08-15 23:47:03', '2019-08-15 23:47:03'),
(401, 'imagenes/producto/sRetlK4Pm1wciFs2h1VKal1EdLV4rd0yBpyY0i6C.jpeg', 'aa', 5, '2019-08-15 23:47:50', '2019-08-15 23:47:50'),
(402, 'imagenes/producto/WNmQBmbC5abS46FoekzrDGkKR9P5wTtmTMI2gJbm.jpeg', 'ab', 5, '2019-08-15 23:47:50', '2019-08-15 23:47:50'),
(403, 'imagenes/producto/VPMc4XBEpyjPF9fLIGvsQivs41J7pSeEBxXJsBVJ.png', 'ac', 5, '2019-08-15 23:47:50', '2019-08-15 23:47:50'),
(409, 'imagenes/producto/zA1m3htSnvVLWOFnY7bzdwXq525WhedA4zaOin2b.jpeg', 'ab', 1, '2019-08-15 23:51:46', '2019-08-15 23:51:46'),
(410, 'imagenes/producto/tOpK3PPgLCBw9W47kLDtCOzvxXq26n75qBY8o3lz.png', 'ac', 1, '2019-08-15 23:51:46', '2019-08-15 23:51:46'),
(411, 'imagenes/producto/hNy2GubWonl60xbWjTKG6NSliT7SE856gPw2jKJq.jpeg', 'ad', 1, '2019-08-15 23:51:46', '2019-08-15 23:51:46'),
(412, 'imagenes/producto/FgIPRSTfGSLMjLpl3S9KoKl2tL77gY2RSm1Ab7Xu.png', 'ae', 1, '2019-08-15 23:51:46', '2019-08-15 23:51:46'),
(413, 'imagenes/producto/K8NB4oh7BWjnaCBo39sUMsP86OGq2nHyGbwwHnYG.jpeg', 'aa', 10, '2019-08-15 23:53:08', '2019-08-15 23:53:08'),
(414, 'imagenes/producto/8YSp4cHPh5UytDx7hfyyjWcTFyxvstKhbAV8CNis.jpeg', 'bb', 10, '2019-08-15 23:53:08', '2019-08-15 23:53:08'),
(415, 'imagenes/producto/zWI60bcB6CNgnltGQ8EivdykRiuJWD2zTBAW7BTI.png', 'cc', 10, '2019-08-15 23:53:08', '2019-08-15 23:53:08'),
(416, 'imagenes/producto/98mr5rlsusl2nSzeZfcjFnSNom9xlyHTYTrZCQyL.png', 'dd', 10, '2019-08-15 23:53:08', '2019-08-15 23:53:08'),
(420, 'imagenes/producto/zwKz3nPIpO7oTiOMcSQpR0qGFYMchgDBGfWBzxC8.jpeg', 'aa', 51, '2019-08-16 19:52:01', '2019-08-16 19:52:01'),
(421, 'imagenes/producto/Gzc8w7WFI3ox8HaFAO0snzCPFtOLh9ik5UYSn7mL.jpeg', 'bb', 51, '2019-08-16 19:52:01', '2019-08-16 19:52:01'),
(422, 'imagenes/producto/5zZxtib5uAW35bvbVaIPFyGDJWgTY6Gq2E1e6icL.png', 'cc', 51, '2019-08-16 19:52:01', '2019-08-16 19:52:01'),
(426, 'imagenes/producto/H83M1Qe7qAKB5Uqc3esHKI9Bm8tvGNMnpNNwS31j.png', 'aa', 2, '2019-10-01 22:14:47', '2019-10-01 22:14:47'),
(427, 'imagenes/producto/PEKZUUdenaycN0VyPKy1QzGU6U14XTPY5sSo0XK2.png', 'ab', 2, '2019-10-01 22:14:47', '2019-10-01 22:14:47'),
(428, 'imagenes/producto/cdlWmxMwhP8DHPmh5jZXL396muMJpkcLBIvcAgMd.jpeg', 'ac', 2, '2019-10-01 22:14:47', '2019-10-01 22:14:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_relacionados`
--

CREATE TABLE `producto_relacionados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED DEFAULT NULL,
  `id_relacionado` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto_relacionados`
--

INSERT INTO `producto_relacionados` (`id`, `id_producto`, `id_relacionado`, `created_at`, `updated_at`) VALUES
(23, 11, 2, NULL, NULL),
(24, 11, 10, NULL, NULL),
(25, 11, 3, NULL, NULL),
(26, 12, 10, NULL, NULL),
(27, 12, 11, NULL, NULL),
(28, 12, 6, NULL, NULL),
(29, 13, 10, NULL, NULL),
(30, 13, 11, NULL, NULL),
(31, 13, 12, NULL, NULL),
(32, 14, 10, NULL, NULL),
(33, 14, 11, NULL, NULL),
(34, 14, 12, NULL, NULL),
(35, 15, 2, NULL, NULL),
(36, 15, 10, NULL, NULL),
(37, 15, 11, NULL, NULL),
(38, 16, 10, NULL, NULL),
(39, 16, 11, NULL, NULL),
(40, 16, 12, NULL, NULL),
(74, 21, 2, NULL, NULL),
(75, 21, 11, NULL, NULL),
(76, 21, 7, NULL, NULL),
(77, 22, 3, NULL, NULL),
(78, 22, 10, NULL, NULL),
(79, 22, 11, NULL, NULL),
(116, 42, 11, NULL, NULL),
(117, 42, 16, NULL, NULL),
(118, 42, 24, NULL, NULL),
(119, 43, 10, NULL, NULL),
(120, 43, 11, NULL, NULL),
(121, 43, 1, NULL, NULL),
(122, 44, 3, NULL, NULL),
(156, 53, 7, NULL, NULL),
(157, 53, 47, NULL, NULL),
(158, 53, 51, NULL, NULL),
(159, 54, 10, NULL, NULL),
(160, 54, 4, NULL, NULL),
(161, 54, 51, NULL, NULL),
(168, 55, 29, NULL, NULL),
(169, 55, 34, NULL, NULL),
(170, 55, 38, NULL, NULL),
(192, 27, 26, NULL, NULL),
(193, 27, 9, NULL, NULL),
(194, 27, 28, NULL, NULL),
(195, 28, 30, NULL, NULL),
(196, 28, 31, NULL, NULL),
(197, 28, 38, NULL, NULL),
(198, 38, 27, NULL, NULL),
(199, 38, 30, NULL, NULL),
(200, 38, 34, NULL, NULL),
(201, 36, 27, NULL, NULL),
(202, 36, 29, NULL, NULL),
(203, 36, 30, NULL, NULL),
(204, 35, 2, NULL, NULL),
(205, 35, 10, NULL, NULL),
(206, 35, 3, NULL, NULL),
(207, 34, 2, NULL, NULL),
(208, 34, 10, NULL, NULL),
(209, 34, 27, NULL, NULL),
(210, 33, 11, NULL, NULL),
(211, 33, 28, NULL, NULL),
(212, 33, 30, NULL, NULL),
(213, 32, 4, NULL, NULL),
(215, 32, 38, NULL, NULL),
(219, 37, 11, NULL, NULL),
(220, 37, 7, NULL, NULL),
(221, 37, 22, NULL, NULL),
(222, 30, 4, NULL, NULL),
(223, 30, 41, NULL, NULL),
(224, 30, 52, NULL, NULL),
(225, 31, 50, NULL, NULL),
(226, 31, 57, NULL, NULL),
(227, 31, 38, NULL, NULL),
(228, 29, 11, NULL, NULL),
(229, 29, 55, NULL, NULL),
(230, 29, 38, NULL, NULL),
(299, 7, 1, NULL, NULL),
(300, 7, 5, NULL, NULL),
(301, 7, 6, NULL, NULL),
(302, 8, 2, NULL, NULL),
(303, 8, 3, NULL, NULL),
(304, 8, 11, NULL, NULL),
(305, 26, 13, NULL, NULL),
(306, 26, 25, NULL, NULL),
(310, 17, 10, NULL, NULL),
(311, 17, 12, NULL, NULL),
(312, 17, 9, NULL, NULL),
(328, 49, 25, NULL, NULL),
(329, 49, 38, NULL, NULL),
(330, 49, 37, NULL, NULL),
(337, 3, 2, NULL, NULL),
(338, 3, 4, NULL, NULL),
(339, 3, 1, NULL, NULL),
(357, 25, 2, NULL, NULL),
(358, 25, 11, NULL, NULL),
(368, 24, 16, NULL, NULL),
(370, 24, 9, NULL, NULL),
(418, 9, 6, NULL, NULL),
(419, 9, 7, NULL, NULL),
(420, 9, 8, NULL, NULL),
(424, 47, 13, NULL, NULL),
(425, 47, 6, NULL, NULL),
(426, 47, 15, NULL, NULL),
(427, 52, 11, NULL, NULL),
(428, 52, 4, NULL, NULL),
(429, 52, 15, NULL, NULL),
(433, 6, 3, NULL, NULL),
(434, 6, 1, NULL, NULL),
(435, 6, 5, NULL, NULL),
(436, 39, 10, NULL, NULL),
(437, 39, 34, NULL, NULL),
(438, 39, 38, NULL, NULL),
(439, 45, 10, NULL, NULL),
(440, 45, 15, NULL, NULL),
(441, 45, 7, NULL, NULL),
(442, 57, 7, NULL, NULL),
(443, 57, 9, NULL, NULL),
(444, 50, 10, NULL, NULL),
(445, 50, 11, NULL, NULL),
(446, 50, 39, NULL, NULL),
(453, 4, 2, NULL, NULL),
(454, 4, 3, NULL, NULL),
(455, 4, 1, NULL, NULL),
(456, 5, 2, NULL, NULL),
(457, 5, 3, NULL, NULL),
(458, 5, 4, NULL, NULL),
(462, 1, 10, NULL, NULL),
(463, 1, 4, NULL, NULL),
(464, 1, 5, NULL, NULL),
(465, 10, 2, NULL, NULL),
(466, 10, 4, NULL, NULL),
(467, 10, 9, NULL, NULL),
(471, 51, 24, NULL, NULL),
(472, 51, 26, NULL, NULL),
(473, 51, 9, NULL, NULL),
(477, 2, 1, NULL, NULL),
(478, 2, 5, NULL, NULL),
(479, 2, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

CREATE TABLE `redes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id`, `icono`, `nombre`, `url`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-facebook-square', 'Facebook', 'https://es-la.facebook.com/AmmaturoS.A/', '2019-06-21 22:45:18', '2019-06-24 14:04:23'),
(2, 'fab fa-instagram', 'Instagram', 'https://www.instagram.com/ammaturo.s.a/?hl=es-la', '2019-06-21 23:03:01', '2019-06-24 14:15:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `imagen`, `contenido`, `seccion`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'imagenes/slider/CrPfKmUFw9vQYhMuVgRE3HfhtIcWoZWaRfOzbizf.jpeg', '{\"es\":\"<p style=\\\"text-align:center\\\"><strong>Especialistas en Movimiento de Materiales, Maquinas y Equipos Industriales<\\/strong><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"en\":\"<p><strong>Integral Solutions<\\/strong><br \\/>\\r\\nDesign, integral manufacturing, installation and commissioning<\\/p>\"}', 'empresa', 'aa', '2019-06-24 16:03:53', '2019-07-20 00:25:22'),
(2, 'imagenes/slider/h2LPBn3TapqjTpkUOkmIAEfNQz1dvC6BiUxynm7x.png', '{\"es\":\"<p>TRANSPORTADOR CURVO<\\/p>\",\"en\":\"<p>TRANSPORTADOR CURVO<\\/p>\"}', 'home', 'ad', '2019-06-24 16:22:08', '2019-08-01 22:50:33'),
(5, 'imagenes/slider/21cdjGNHzicSoDu402w0V41g37qhC4tTJaJG8bJz.png', '{\"es\":null,\"en\":null}', 'home', 'ac', '2019-07-20 00:46:03', '2019-08-13 20:22:42'),
(6, 'imagenes/slider/NnNyrn15Yfu5JQjgkyr7Y1AOlVznJ2ZDyqDkiYSy.png', '{\"es\":\"<p style=\\\"text-align:center\\\"><strong>PALETIZADO FINAL DE LINEA<\\/strong><\\/p>\",\"en\":\"<p style=\\\"text-align:center\\\"><strong>PALETIZADO FINAL DE LINEA<\\/strong><\\/p>\"}', 'home', 'aa', '2019-07-20 00:51:09', '2019-08-13 20:20:45'),
(8, 'imagenes/slider/YZCzIvhL3mWo99REOiQyqsQKDKRZXnGAoXLNIzBg.png', '{\"es\":null,\"en\":null}', 'empresa', 'ac', '2019-08-01 22:52:05', '2019-08-01 22:53:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcripciones`
--

CREATE TABLE `subcripciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subcripciones`
--

INSERT INTO `subcripciones` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'example@example.com', '2019-06-27 22:15:19', '2019-06-27 22:15:19'),
(2, 'soporte@osole.es', '2019-06-28 17:28:17', '2019-06-28 17:28:17'),
(4, 'aa', '2019-06-28 18:22:01', '2019-06-28 18:22:01'),
(5, 'ammaturo@ammaturo.com.ar', '2019-06-28 19:17:18', '2019-06-28 19:17:18'),
(6, 'aleradatsi@gmail.com', '2019-07-31 00:35:14', '2019-07-31 00:35:14'),
(7, 'yesi1989rivarola@gmail.com', '2019-08-14 22:29:40', '2019-08-14 22:29:40'),
(10, 'info@ammaturo.com.ar', '2019-08-15 17:10:56', '2019-08-15 17:10:56'),
(11, 'Косц http://ammaturo.com.ar/ 1', '2019-10-02 15:26:50', '2019-10-02 15:26:50'),
(12, 'dschmidok@gmail.com', '2019-10-23 18:20:41', '2019-10-23 18:20:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traducciones`
--

CREATE TABLE `traducciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `traducciones` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `traducciones`
--

INSERT INTO `traducciones` (`id`, `key`, `traducciones`, `created_at`, `updated_at`) VALUES
(1, 'Empresa', '{\"es\":\"Empresa\",\"en\":\"Company\"}', '2019-06-25 16:08:39', '2019-06-25 16:16:48'),
(2, 'Productos', '{\"es\":\"Productos\",\"en\":\"Products\"}', '2019-06-25 16:17:52', '2019-06-25 16:17:52'),
(3, 'Novedades', '{\"es\":\"Novedades\",\"en\":\"News\"}', '2019-06-25 16:18:35', '2019-06-25 16:18:35'),
(4, 'Ingeniería', '{\"es\":\"Ingenier\\u00eda\",\"en\":\"Engineering\"}', '2019-06-25 16:19:06', '2019-06-25 16:19:06'),
(5, 'Solicitar Presupuesto', '{\"es\":\"Solicitar Presupuesto\",\"en\":\"Request Budget\"}', '2019-06-25 16:19:47', '2019-06-25 16:19:47'),
(6, 'Post-Venta', '{\"es\":\"Post-Venta\",\"en\":\"Post-Sale\"}', '2019-06-25 16:20:15', '2019-06-25 16:20:15'),
(7, 'Contacto', '{\"es\":\"Contacto\",\"en\":\"Contact\"}', '2019-06-25 16:20:28', '2019-06-25 16:20:28'),
(8, '¿Necesitás Asesoramiento?', '{\"es\":\"\\u00bfNecesit\\u00e1s Asesoramiento?\",\"en\":\"Do you need advice?\"}', '2019-06-25 16:20:53', '2019-06-25 16:20:53'),
(9, 'Completá el siguiente formulario y nos contactaremos a la brevedad', '{\"es\":\"Complet\\u00e1 el siguiente formulario y nos contactaremos a la brevedad\",\"en\":\"Complete the following form and we will contact you shortly\"}', '2019-06-25 16:21:33', '2019-06-25 16:21:33'),
(10, 'Acepto los términos y condiciones de privacidad', '{\"es\":\"Acepto los t\\u00e9rminos y condiciones de privacidad\",\"en\":\"I accept the terms and conditions of privacy\"}', '2019-06-25 16:24:57', '2019-06-25 16:24:57'),
(11, 'Enviar', '{\"es\":\"Enviar\",\"en\":\"Submit\"}', '2019-06-25 16:25:31', '2019-06-25 16:25:31'),
(12, 'Nombre', '{\"es\":\"Nombre\",\"en\":\"Name\"}', '2019-06-25 16:26:11', '2019-06-25 16:26:11'),
(13, 'Email', '{\"es\":\"Email\",\"en\":\"Email\"}', '2019-06-25 16:26:31', '2019-06-25 16:26:31'),
(14, 'Mensaje', '{\"es\":\"Mensaje\",\"en\":\"Message\"}', '2019-06-25 16:26:57', '2019-06-25 16:26:57'),
(15, 'Inicio', '{\"es\":\"Inicio\",\"en\":\"Home\"}', '2019-06-25 16:28:24', '2019-06-25 16:28:24'),
(16, 'Productos destacados', '{\"es\":\"Productos destacados\",\"en\":\"Featured Products\"}', '2019-06-25 16:28:48', '2019-06-25 16:28:48'),
(17, 'Industria, Ingeniería y Servicio', '{\"es\":\"Industria, Ingenier\\u00eda y Servicio\",\"en\":\"Industry, Engineering and Service\"}', '2019-06-25 16:29:05', '2019-06-25 16:29:05'),
(18, 'SUSCRIBITE A NUESTRAS ÚLTIMAS NOVEDADES', '{\"es\":\"SUSCRIBITE A NUESTRAS \\u00daLTIMAS NOVEDADES\",\"en\":\"SUBSCRIBE TO OURS LATEST NEWS\"}', '2019-06-25 16:29:31', '2019-06-28 15:09:28'),
(19, 'Productos relacionados', '{\"es\":\"Productos relacionados\",\"en\":\"Related products\"}', '2019-06-25 16:31:00', '2019-06-25 16:31:00'),
(20, 'PLANOS', '{\"es\":\"PLANOS\",\"en\":\"BLUEPRINTS\"}', '2019-06-25 16:31:24', '2019-06-25 16:31:24'),
(21, 'CARACTERÍSTICAS', '{\"es\":\"CARACTER\\u00cdSTICAS\",\"en\":\"CHARACTERISTICS\"}', '2019-06-25 16:31:44', '2019-06-25 16:31:44'),
(22, 'Agregar productos', '{\"es\":\"Agregar productos\",\"en\":\"Add products\"}', '2019-06-25 16:32:12', '2019-06-25 16:32:12'),
(23, 'Teléfono', '{\"es\":\"Tel\\u00e9fono\",\"en\":\"Phone\"}', '2019-06-25 16:32:55', '2019-06-25 16:32:55'),
(24, 'Ingrese los siguientes datos para que podamos contestarle la solicitud de cotización.', '{\"es\":\"Ingrese los siguientes datos para que podamos contestarle la solicitud de cotizaci\\u00f3n.\",\"en\":\"Enter the following information so that we can answer the quote request.\"}', '2019-06-25 16:33:21', '2019-06-25 16:33:21'),
(25, 'Nuestro equipo se contactará a la brevedad para asesorarlo en lo que necesite.', '{\"es\":\"Nuestro equipo se contactar\\u00e1 a la brevedad para asesorarlo en lo que necesite.\",\"en\":\"Our team will contact you shortly to advise you on your needs.\"}', '2019-06-25 16:33:36', '2019-08-13 19:48:33'),
(26, 'Muchas gracias por su consulta', '{\"es\":\"Muchas gracias por su consulta\",\"en\":\"Thank you very much for your inquiry\"}', '2019-06-25 16:34:00', '2019-06-25 16:34:00'),
(27, 'Nuestro equipo se contactará a la brevedad para asesorarlo en lo que necesite', '{\"es\":\"Nuestro equipo se contactar\\u00e1 a la brevedad para asesorarlo en lo que necesite\",\"en\":\"Our team will contact you shortly to advise you on what you need\"}', '2019-06-25 16:34:13', '2019-06-25 16:34:13'),
(28, 'SEGUINOS EN', '{\"es\":\"SEGUINOS EN\",\"en\":\"FOLLOW IN\"}', '2019-06-25 16:34:50', '2019-06-25 16:34:50'),
(29, 'Ingresar Email', '{\"es\":\"Ingresar Email\",\"en\":\"Enter Email\"}', '2019-06-25 16:35:10', '2019-06-25 16:35:10'),
(30, 'NEWSLETTER', '{\"es\":\"NEWSLETTER\",\"en\":\"NEWSLETTER\"}', '2019-06-25 16:35:21', '2019-06-25 16:35:21'),
(31, 'SITEMAP', '{\"es\":\"SITEMAP\",\"en\":\"SITEMAP\"}', '2019-06-25 16:35:31', '2019-06-25 16:35:31'),
(32, 'Ammaturo S.A.', '{\"es\":\"Ammaturo S.A.\",\"en\":\"Ammaturo S.A.\"}', '2019-06-25 21:09:19', '2019-06-28 19:58:12'),
(33, 'Ingresar', '{\"es\":\"Ingresar\",\"en\":\"Enter\"}', '2019-06-26 16:17:11', '2019-06-26 16:17:11'),
(35, 'Ficha técnica', '{\"es\":\"Ficha t\\u00e9cnica\",\"en\":\"Data sheet\"}', '2019-06-26 21:46:01', '2019-06-26 21:46:01'),
(36, 'Para más información,  mirá el video a continuación', '{\"es\":\"Para m\\u00e1s informaci\\u00f3n,  mir\\u00e1 el video a continuaci\\u00f3n\",\"en\":\"For more information, watch the video below\"}', '2019-06-26 22:02:09', '2019-06-27 15:00:33'),
(37, 'CATEGORÍAS', '{\"es\":\"CATEGOR\\u00cdAS\",\"en\":\"CATEGORIES\"}', '2019-06-27 14:22:26', '2019-06-28 15:16:26'),
(38, 'cantidad', '{\"es\":\"cantidad\",\"en\":\"quantity\"}', '2019-06-27 14:23:27', '2019-06-27 14:23:27'),
(39, 'eliminar', '{\"es\":\"eliminar\",\"en\":\"remove\"}', '2019-06-27 14:24:57', '2019-06-27 14:24:57'),
(40, 'No existen registros', '{\"es\":\"No existen registros\",\"en\":\"There are no records\"}', '2019-06-27 14:40:54', '2019-06-27 14:40:54'),
(41, 'Términos y condiciones de la empresa', '{\"es\":\"T\\u00e9rminos y condiciones de la empresa\",\"en\":\"Terms and conditions of the company\"}', '2019-06-27 14:52:41', '2019-06-27 14:53:21'),
(42, 'Aceptar', '{\"es\":\"Aceptar\",\"en\":\"Accept\"}', '2019-06-27 14:58:22', '2019-06-27 14:58:22'),
(43, 'Cerrar', '{\"es\":\"Cerrar\",\"en\":\"Close\"}', '2019-06-27 14:59:09', '2019-06-27 14:59:09'),
(44, 'Solicitar', '{\"es\":\"Solicitar\",\"en\":\"Request\"}', '2019-06-27 16:21:07', '2019-06-27 16:21:07'),
(45, 'Muchas gracias por su consulta', '{\"es\":\"Muchas gracias por su consulta\",\"en\":\"Thank you for your consultation\"}', '2019-06-27 18:47:36', '2019-06-27 18:47:53'),
(46, 'Nuestro equipo se contactará a la brevedad para asesorarlo en lo que necesite', '{\"es\":\"Nuestro equipo se contactar\\u00e1 a la brevedad para asesorarlo en lo que necesite\",\"en\":\"Our team will contact you shortly to advise you on what you need\"}', '2019-06-27 18:48:59', '2019-06-27 18:48:59'),
(47, 'dirección', '{\"es\":\"direcci\\u00f3n\",\"en\":\"address\"}', '2019-06-27 21:17:18', '2019-06-27 21:17:18'),
(48, 'télefonos', '{\"es\":\"t\\u00e9lefonos\",\"en\":\"phones\"}', '2019-06-27 21:18:06', '2019-06-27 21:18:06'),
(49, 'correos', '{\"es\":\"correos\",\"en\":\"emails\"}', '2019-06-27 21:18:21', '2019-06-27 21:18:21'),
(50, 'Correo electrónico', '{\"es\":\"Correo electr\\u00f3nico\",\"en\":\"Email\"}', '2019-06-28 15:05:54', '2019-06-28 15:05:54'),
(51, 'Buscar', '{\"es\":\"Buscar\",\"en\":\"Search\"}', '2019-06-28 15:07:03', '2019-06-28 15:07:03'),
(52, 'Buscador', '{\"es\":\"Buscador\",\"en\":\"Search Engine\"}', '2019-06-28 15:08:22', '2019-06-28 15:08:22'),
(53, 'Contáctanos y te brindaremos toda la información que necesites', '{\"es\":\"Cont\\u00e1ctanos y te brindaremos toda la informaci\\u00f3n que necesites\",\"en\":\"Contact us and we will provide you with all the information you need\"}', '2019-06-28 15:10:09', '2019-06-28 15:10:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `isAdmin` int(11) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `isAdmin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ammaturo', 'ammaturosa', NULL, NULL, 1, '$2y$10$FYTcZViKRBlCgqKsxKnCP.yu3R1FRpCVv7Kt6fL0LaZiSiG7C.K0.', 'tzNMb0jjkfu3qcWgxMUQRCNyYYCj7HFHK6xdMcR5k7VZqUSnAxOG9fAbcJDq', NULL, '2019-10-02 16:15:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `blog_imagenes`
--
ALTER TABLE `blog_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_imagenes_id_blog_foreign` (`id_blog`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enlaces`
--
ALTER TABLE `enlaces`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `familias_id_superior_foreign` (`id_superior`);

--
-- Indices de la tabla `iconos`
--
ALTER TABLE `iconos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingenieria`
--
ALTER TABLE `ingenieria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `linea_items`
--
ALTER TABLE `linea_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `portadas`
--
ALTER TABLE `portadas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postventas`
--
ALTER TABLE `postventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_id_superior_foreign` (`id_superior`);

--
-- Indices de la tabla `producto_imagenes`
--
ALTER TABLE `producto_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_imagenes_id_producto_foreign` (`id_producto`);

--
-- Indices de la tabla `producto_relacionados`
--
ALTER TABLE `producto_relacionados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_relacionados_id_producto_foreign` (`id_producto`),
  ADD KEY `producto_relacionados_id_relacionado_foreign` (`id_relacionado`);

--
-- Indices de la tabla `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcripciones`
--
ALTER TABLE `subcripciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcripciones_email_unique` (`email`);

--
-- Indices de la tabla `traducciones`
--
ALTER TABLE `traducciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `blog_imagenes`
--
ALTER TABLE `blog_imagenes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `enlaces`
--
ALTER TABLE `enlaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `familias`
--
ALTER TABLE `familias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `iconos`
--
ALTER TABLE `iconos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ingenieria`
--
ALTER TABLE `ingenieria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `linea_items`
--
ALTER TABLE `linea_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `portadas`
--
ALTER TABLE `portadas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `postventas`
--
ALTER TABLE `postventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `producto_imagenes`
--
ALTER TABLE `producto_imagenes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT de la tabla `producto_relacionados`
--
ALTER TABLE `producto_relacionados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT de la tabla `redes`
--
ALTER TABLE `redes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `subcripciones`
--
ALTER TABLE `subcripciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `traducciones`
--
ALTER TABLE `traducciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `blog_imagenes`
--
ALTER TABLE `blog_imagenes`
  ADD CONSTRAINT `blog_imagenes_id_blog_foreign` FOREIGN KEY (`id_blog`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `familias`
--
ALTER TABLE `familias`
  ADD CONSTRAINT `familias_id_superior_foreign` FOREIGN KEY (`id_superior`) REFERENCES `familias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_id_superior_foreign` FOREIGN KEY (`id_superior`) REFERENCES `familias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `producto_imagenes`
--
ALTER TABLE `producto_imagenes`
  ADD CONSTRAINT `producto_imagenes_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `producto_relacionados`
--
ALTER TABLE `producto_relacionados`
  ADD CONSTRAINT `producto_relacionados_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `producto_relacionados_id_relacionado_foreign` FOREIGN KEY (`id_relacionado`) REFERENCES `productos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
