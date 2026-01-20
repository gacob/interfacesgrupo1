-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         9.5.0 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.12.0.7122
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para papeleria
DROP DATABASE IF EXISTS `papeleria`;
CREATE DATABASE IF NOT EXISTS `papeleria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `papeleria`;

-- Volcando estructura para tabla papeleria.tablapapeleria
DROP TABLE IF EXISTS `tablapapeleria`;
CREATE TABLE IF NOT EXISTS `tablapapeleria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) DEFAULT NULL,
  `producto` varchar(50) DEFAULT NULL,
  `familia` varchar(50) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla papeleria.tablapapeleria: ~100 rows (aproximadamente)
DELETE FROM `tablapapeleria`;
INSERT INTO `tablapapeleria` (`id`, `codigo`, `producto`, `familia`, `precio`) VALUES
	(1, 'P001', 'Lápiz HB', 'Escritura', 0.5),
	(2, 'P002', 'Lápiz 2B', 'Escritura', 0.55),
	(3, 'P003', 'Bolígrafo azul', 'Escritura', 0.8),
	(4, 'P004', 'Bolígrafo negro', 'Escritura', 0.8),
	(5, 'P005', 'Bolígrafo rojo', 'Escritura', 0.85),
	(6, 'P006', 'Cuaderno A4', 'Cuadernos', 3.5),
	(7, 'P007', 'Cuaderno A5', 'Cuadernos', 2.5),
	(8, 'P008', 'Cuaderno espiral', 'Cuadernos', 4.2),
	(9, 'P009', 'Agenda escolar', 'Cuadernos', 6),
	(10, 'P010', 'Bloc de notas', 'Cuadernos', 1.8),
	(11, 'P011', 'Borrador blanco', 'Escritura', 0.4),
	(12, 'P012', 'Borrador miga', 'Escritura', 0.6),
	(13, 'P013', 'Sacapuntas plástico', 'Escritura', 0.7),
	(14, 'P014', 'Sacapuntas metálico', 'Escritura', 1.2),
	(15, 'P015', 'Regla 30 cm', 'Medición', 1.5),
	(16, 'P016', 'Regla 20 cm', 'Medición', 1.1),
	(17, 'P017', 'Escuadra', 'Medición', 2),
	(18, 'P018', 'Cartabón', 'Medición', 2),
	(19, 'P019', 'Compás', 'Medición', 4.5),
	(20, 'P020', 'Transportador', 'Medición', 1.8),
	(21, 'P021', 'Resaltador amarillo', 'Marcadores', 1.2),
	(22, 'P022', 'Resaltador verde', 'Marcadores', 1.2),
	(23, 'P023', 'Resaltador rosa', 'Marcadores', 1.2),
	(24, 'P024', 'Marcador permanente negro', 'Marcadores', 1.8),
	(25, 'P025', 'Marcador permanente azul', 'Marcadores', 1.8),
	(26, 'P026', 'Marcador pizarra negro', 'Marcadores', 1.7),
	(27, 'P027', 'Marcador pizarra azul', 'Marcadores', 1.7),
	(28, 'P028', 'Marcador pizarra rojo', 'Marcadores', 1.7),
	(29, 'P029', 'Set marcadores x6', 'Marcadores', 6.5),
	(30, 'P030', 'Set marcadores x12', 'Marcadores', 11),
	(31, 'P031', 'Carpeta A4', 'Archivo', 2.2),
	(32, 'P032', 'Carpeta oficio', 'Archivo', 2.5),
	(33, 'P033', 'Archivador', 'Archivo', 6.8),
	(34, 'P034', 'Separadores', 'Archivo', 1.9),
	(35, 'P035', 'Funda plástica', 'Archivo', 0.3),
	(36, 'P036', 'Caja archivo', 'Archivo', 4),
	(37, 'P037', 'Sobre manila', 'Archivo', 0.4),
	(38, 'P038', 'Sobre blanco', 'Archivo', 0.35),
	(39, 'P039', 'Sobre acolchado', 'Archivo', 1.2),
	(40, 'P040', 'Portafolio', 'Archivo', 8.5),
	(41, 'P041', 'Pegamento barra', 'Adhesivos', 1.1),
	(42, 'P042', 'Pegamento líquido', 'Adhesivos', 1.3),
	(43, 'P043', 'Cinta adhesiva', 'Adhesivos', 0.9),
	(44, 'P044', 'Cinta doble cara', 'Adhesivos', 1.8),
	(45, 'P045', 'Silicona líquida', 'Adhesivos', 2.4),
	(46, 'P046', 'Silicona caliente', 'Adhesivos', 2.9),
	(47, 'P047', 'Dispensador cinta', 'Adhesivos', 3.5),
	(48, 'P048', 'Corrector líquido', 'Corrección', 1.2),
	(49, 'P049', 'Corrector cinta', 'Corrección', 1.8),
	(50, 'P050', 'Corrector lápiz', 'Corrección', 1),
	(51, 'P051', 'Tijeras escolares', 'Corte', 2.2),
	(52, 'P052', 'Tijeras oficina', 'Corte', 3.5),
	(53, 'P053', 'Cúter pequeño', 'Corte', 1.9),
	(54, 'P054', 'Cúter grande', 'Corte', 3.2),
	(55, 'P055', 'Repuesto cúter', 'Corte', 1.5),
	(56, 'P056', 'Papel bond A4', 'Papelería', 6.5),
	(57, 'P057', 'Papel bond oficio', 'Papelería', 7),
	(58, 'P058', 'Cartulina blanca', 'Papelería', 0.8),
	(59, 'P059', 'Cartulina color', 'Papelería', 0.9),
	(60, 'P060', 'Papel reciclado', 'Papelería', 5.5),
	(61, 'P061', 'Notas adhesivas', 'Papelería', 1.5),
	(62, 'P062', 'Notas adhesivas colores', 'Papelería', 2.5),
	(63, 'P063', 'Block dibujo', 'Papelería', 3.8),
	(64, 'P064', 'Block cuadriculado', 'Papelería', 3.6),
	(65, 'P065', 'Papel fotográfico', 'Papelería', 9),
	(66, 'P066', 'Calculadora básica', 'Oficina', 6),
	(67, 'P067', 'Calculadora científica', 'Oficina', 18),
	(68, 'P068', 'Engrapadora', 'Oficina', 4.5),
	(69, 'P069', 'Grapas', 'Oficina', 1.2),
	(70, 'P070', 'Perforadora', 'Oficina', 5.8),
	(71, 'P071', 'Clips metálicos', 'Oficina', 0.9),
	(72, 'P072', 'Clips colores', 'Oficina', 1.3),
	(73, 'P073', 'Chinches', 'Oficina', 0.8),
	(74, 'P074', 'Ligas', 'Oficina', 0.7),
	(75, 'P075', 'Porta clips', 'Oficina', 1.5),
	(76, 'P076', 'Porta lápices', 'Oficina', 2.8),
	(77, 'P077', 'Mouse pad', 'Oficina', 3.2),
	(78, 'P078', 'Agenda ejecutiva', 'Oficina', 9.5),
	(79, 'P079', 'Planner semanal', 'Oficina', 6.8),
	(80, 'P080', 'Calendario escritorio', 'Oficina', 4),
	(81, 'P081', 'Crayones x12', 'Arte', 3.2),
	(82, 'P082', 'Crayones x24', 'Arte', 5.8),
	(83, 'P083', 'Colores x12', 'Arte', 4.5),
	(84, 'P084', 'Colores x24', 'Arte', 8.5),
	(85, 'P085', 'Acuarelas', 'Arte', 6),
	(86, 'P086', 'Pinceles', 'Arte', 3.5),
	(87, 'P087', 'Lienzo', 'Arte', 7.8),
	(88, 'P088', 'Plastilina', 'Arte', 2.4),
	(89, 'P089', 'Marcadores arte', 'Arte', 9),
	(90, 'P090', 'Set dibujo', 'Arte', 12.5),
	(91, 'P091', 'Mochila escolar', 'Escolar', 22),
	(92, 'P092', 'Lonchera', 'Escolar', 12),
	(93, 'P093', 'Cartuchera', 'Escolar', 6.5),
	(94, 'P094', 'Regla flexible', 'Escolar', 1.6),
	(95, 'P095', 'Compás escolar', 'Escolar', 3.8),
	(96, 'P096', 'Cuaderno universitario', 'Escolar', 5.2),
	(97, 'P097', 'Agenda estudiantil', 'Escolar', 4.8),
	(98, 'P098', 'Separadores escolares', 'Escolar', 1.7),
	(99, 'P099', 'Carpeta escolar', 'Escolar', 2.9),
	(100, 'P100', 'Block escolar', 'Escolar', 3.4);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
