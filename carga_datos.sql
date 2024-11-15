-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2024 a las 21:18:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carga_datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion`
--

CREATE TABLE `atencion` (
  `idatencion` int(11) NOT NULL,
  `idcliente_tipo` int(11) NOT NULL,
  `dni_ruc` varchar(200) NOT NULL,
  `nombre_tramitador` varchar(200) NOT NULL,
  `nombres` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecharegistro` date NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cantidad` decimal(18,2) NOT NULL,
  `precio` decimal(18,2) NOT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `total_pagar2` decimal(18,2) NOT NULL,
  `derechos_registrales` decimal(18,2) NOT NULL,
  `idusuario` varchar(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `estado` varchar(11) NOT NULL,
  `numero_cuota` varchar(200) NOT NULL,
  `numero_minuta` varchar(200) NOT NULL,
  `descripcion_lote` varchar(200) NOT NULL,
  `importe` decimal(18,2) NOT NULL,
  `num_transferencia` varchar(200) NOT NULL,
  `descripcion_lugar` varchar(200) NOT NULL,
  `idlugar_lotes` int(11) NOT NULL,
  `descripcion_banco` varchar(200) NOT NULL,
  `idbancos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `atencion`
--

INSERT INTO `atencion` (`idatencion`, `idcliente_tipo`, `dni_ruc`, `nombre_tramitador`, `nombres`, `direccion`, `fecharegistro`, `descripcion`, `cantidad`, `precio`, `subtotal`, `total_pagar2`, `derechos_registrales`, `idusuario`, `usuario`, `estado`, `numero_cuota`, `numero_minuta`, `descripcion_lote`, `importe`, `num_transferencia`, `descripcion_lugar`, `idlugar_lotes`, `descripcion_banco`, `idbancos`) VALUES
(1, 1, '00000000', '', 'BILMER  TOY VACA', 'JR TUPAC AMARU S/N , BELLA VISTA', '2021-04-15', 'PAGO POR CUOTAS', 1.00, 0.00, 0.00, 0.00, 0.00, ' 5', ' MERCURIO', '1', '6', '62', 'A- 7 Y 8', 1180.00, '115', 'Juan Guerra', 2, 'BBVA', 5),
(2, 1, '00000000', '', 'BILMER  TOY VACA', 'JR TUPAC AMARU S/N , BELLA VISTA', '2021-04-15', 'PAGO POR CUOTAS', 1.00, 0.00, 0.00, 0.00, 0.00, ' 1', ' MARTE', '1', '6', '62', ' A- 7 Y 8', 1180.00, '115', 'Juan Guerra', 2, 'BBVA', 5),
(3, 1, '00000000', '', 'XIMENA FRANCO MANGIER TUANAMA', 'TPP', '2021-04-15', 'DERECHOS NOTARIALES', 1.00, 30.00, 30.00, 30.00, 0.00, '4', ' VENUS', '1', '', '', '', 0.00, '', '', 0, '', 0),
(4, 1, '00000000', '', 'BILMER  TOY VACA', 'TARAPOTO', '2021-04-15', 'PAGO POR CUOTAS', 1.00, 0.00, 0.00, 0.00, 0.00, ' 5', ' MERCURIO', '1', '1', '83', 'E-6', 197.00, '117', 'Juan Guerra', 2, 'BBVA', 5),
(5, 2, '000000000', '', 'BENAVIDES  ACS S.A.C.', 'JIRON CABO ALBERTO LEVEAU N° 152', '2021-04-15', 'RENUNCIA DE AREA', 1.00, 200.00, 200.00, 200.00, 0.00, ' 4', ' VENUS', '1', '', '', '', 0.00, '', '', 0, '', 0),
(6, 1, '000000000', '', 'OCTAVIO HUMBERTO ARROYO BONILLA', 'TPP', '2021-04-15', 'TRANSFERENCIA VEHICULAR', 1.00, 200.00, 200.00, 200.00, 0.00, ' 4', ' VENUS', '1', '', '', '', 0.00, '', '', 0, '', 0),
(7, 1, '000000000', '', 'OCTAVIO HUMBERTO ARROYO BONILLA', 'TPP', '2021-04-15', 'TRANSFERENCIA VEHICULAR', 1.00, 0.00, 0.00, 80.00, 80.00, '4', ' VENUS', '1', '', '', '', 0.00, '', '', 0, '', 0),
(8, 2, '0000000000', '', 'BENAVIDES & RODAS ACS S.A.C.', 'JIRON CABO ALBERTO LEVEAU N° 152', '2021-04-15', 'SUCESION INTESTADA', 1.00, 300.00, 300.00, 300.00, 0.00, '4', ' VENUS', '1', '', '', '', 0.00, '', '', 0, '', 0),
(9, 2, '0000000000', '', 'BENAVIDES  ACS S.A.C.', 'JIRON CABO ALBERTO LEVEAU N° 152', '2021-04-15', 'SUCESION INTESTADA', 1.00, 0.00, 0.00, 350.00, 350.00, '4', ' VENUS', '1', '', '', '', 0.00, '', '', 0, '', 0),
(10, 2, '0000000000', 'GABRIELA ANGI RALA VIRGOS', 'UNIVERSE CAARLHO COMPANY SERVICE EIRL ', 'JIRON ANTONIO RAYMONDI NÂ° 511', '2021-04-16', '', 1.00, 350.00, 350.00, 350.00, 0.00, '4', ' VENUS', '1', '', '', '', 0.00, '', '', 0, '', 0);
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`idatencion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atencion`
--
ALTER TABLE `atencion`
  MODIFY `idatencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4136;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_atencion`
--

CREATE TABLE `carrito_atencion` (
  `idcarrito_atencion` int(11) NOT NULL,
  `idatencion` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cantidad` varchar(200) NOT NULL,
  `precio` decimal(18,2) NOT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `derechos_registrales` decimal(18,2) NOT NULL,
  `kardex` varchar(200) NOT NULL,
  `participante` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito_atencion`
--

INSERT INTO `carrito_atencion` (`idcarrito_atencion`, `idatencion`, `service`, `descripcion`, `cantidad`, `precio`, `subtotal`, `derechos_registrales`, `kardex`, `participante`) VALUES
(1, 2662, 1, 'COMPRA - VENTA', '1', 350.00, 350.00, 0.00, '', ''),
(2, 2663, 395, 'DERECHOS REGISTRALES', '1', 0.00, 0.00, 60.00, 'k 19918', ''),
(3, 2664, 1, 'COMPRA - VENTA', '1', 300.00, 300.00, 0.00, 'k 19919', ''),
(4, 2664, 395, 'DERECHOS REGISTRALES', '1', 0.00, 0.00, 50.00, 'k 19919', ''),
(5, 2665, 154, 'CONTRATO PRIVADO', '1', 100.00, 100.00, 0.00, '', ''),
(6, 2666, 418, 'COPIA LITERAL', '1', 0.00, 0.00, 13.00, '11189943', ''),
(7, 2667, 1, 'COMPRA - VENTA', '1', 350.00, 350.00, 0.00, 'K 19925', ''),
(8, 2667, 1, 'COMPRA - VENTA', '1', 350.00, 350.00, 0.00, 'K 19926', ''),
(9, 2667, 395, 'DERECHOS REGISTRALES', '1', 0.00, 0.00, 60.00, 'K 19925', ''),
(10, 2667, 395, 'DERECHOS REGISTRALES', '1', 0.00, 0.00, 60.00, 'K 19926', '');


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito_atencion`
--
ALTER TABLE `carrito_atencion`
  ADD PRIMARY KEY (`idcarrito_atencion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito_atencion`
--
ALTER TABLE `carrito_atencion`
  MODIFY `idcarrito_atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2222;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
