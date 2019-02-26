-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table malaka.beasiswa
CREATE TABLE IF NOT EXISTS `beasiswa` (
  `idsiswa` char(10) NOT NULL,
  `jenis_beasiswa` varchar(50) DEFAULT NULL,
  `penyelenggara` varchar(50) DEFAULT NULL,
  `tahun_mulai` year(4) DEFAULT NULL,
  `tahun_selesai` year(4) DEFAULT NULL,
  PRIMARY KEY (`idsiswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.beasiswa: ~0 rows (approximately)
/*!40000 ALTER TABLE `beasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `beasiswa` ENABLE KEYS */;


-- Dumping structure for table malaka.biaya_tidak_tetap
CREATE TABLE IF NOT EXISTS `biaya_tidak_tetap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(50) DEFAULT NULL,
  `nominal` double DEFAULT NULL,
  `tahun_ajaran` varchar(50) DEFAULT NULL,
  `user_created` varchar(50) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table malaka.biaya_tidak_tetap: ~0 rows (approximately)
/*!40000 ALTER TABLE `biaya_tidak_tetap` DISABLE KEYS */;
/*!40000 ALTER TABLE `biaya_tidak_tetap` ENABLE KEYS */;


-- Dumping structure for table malaka.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `idcart` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` char(10) NOT NULL,
  `key_` varchar(50) NOT NULL,
  `idkelas` char(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nominal` double NOT NULL,
  `tahun_ajaran` varchar(20) NOT NULL,
  `flag` int(11) NOT NULL,
  `user_create` varchar(50) NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`idcart`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.cart: ~0 rows (approximately)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


-- Dumping structure for table malaka.detail_group
CREATE TABLE IF NOT EXISTS `detail_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` char(50) NOT NULL,
  `idgroup` int(11) NOT NULL,
  `tgl_add` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.detail_group: ~332 rows (approximately)
/*!40000 ALTER TABLE `detail_group` DISABLE KEYS */;
INSERT INTO `detail_group` (`id`, `idsiswa`, `idgroup`, `tgl_add`) VALUES
	(68, '185001', 29, '2019-02-13 00:00:00'),
	(69, '185002', 29, '2019-02-14 00:00:00'),
	(70, '185003', 29, '2019-02-15 00:00:00'),
	(71, '185004', 29, '2019-02-16 00:00:00'),
	(72, '185005', 29, '2019-02-17 00:00:00'),
	(73, '185006', 29, '2019-02-18 00:00:00'),
	(74, '185007', 29, '2019-02-19 00:00:00'),
	(75, '185008', 29, '2019-02-20 00:00:00'),
	(76, '185009', 29, '2019-02-21 00:00:00'),
	(77, '185010', 29, '2019-02-22 00:00:00'),
	(78, '185011', 29, '2019-02-23 00:00:00'),
	(79, '185012', 29, '2019-02-24 00:00:00'),
	(80, '185013', 29, '2019-02-25 00:00:00'),
	(81, '185014', 29, '2019-02-26 00:00:00'),
	(82, '185015', 29, '2019-02-27 00:00:00'),
	(83, '185016', 29, '2019-02-28 00:00:00'),
	(84, '185017', 29, '2019-03-01 00:00:00'),
	(85, '185018', 29, '2019-03-02 00:00:00'),
	(86, '185019', 29, '2019-03-03 00:00:00'),
	(87, '185020', 29, '2019-03-04 00:00:00'),
	(88, '185021', 29, '2019-03-05 00:00:00'),
	(89, '185022', 29, '2019-03-06 00:00:00'),
	(90, '185023', 29, '2019-03-07 00:00:00'),
	(91, '185024', 29, '2019-03-08 00:00:00'),
	(92, '185025', 29, '2019-03-09 00:00:00'),
	(93, '185026', 29, '2019-03-10 00:00:00'),
	(94, '185027', 29, '2019-03-11 00:00:00'),
	(95, '185029', 29, '2019-03-12 00:00:00'),
	(96, '185030', 29, '2019-03-13 00:00:00'),
	(97, '185031', 29, '2019-03-14 00:00:00'),
	(98, '185032', 29, '2019-03-15 00:00:00'),
	(99, '185033', 29, '2019-03-16 00:00:00'),
	(100, '185034', 29, '2019-03-17 00:00:00'),
	(102, '185036', 30, '2019-03-18 00:00:00'),
	(103, '185037', 30, '2019-03-18 00:00:00'),
	(104, '185038', 30, '2019-03-18 00:00:00'),
	(105, '185039', 30, '2019-03-18 00:00:00'),
	(106, '185040', 30, '2019-03-18 00:00:00'),
	(107, '185041', 30, '2019-03-18 00:00:00'),
	(108, '185042', 30, '2019-03-18 00:00:00'),
	(109, '185043', 30, '2019-03-18 00:00:00'),
	(110, '185044', 30, '2019-03-18 00:00:00'),
	(111, '185045', 30, '2019-03-18 00:00:00'),
	(112, '185046', 30, '2019-03-18 00:00:00'),
	(113, '185047', 30, '2019-03-18 00:00:00'),
	(114, '185048', 30, '2019-03-18 00:00:00'),
	(115, '185049', 30, '2019-03-18 00:00:00'),
	(116, '185050', 30, '2019-03-18 00:00:00'),
	(117, '185051', 30, '2019-03-18 00:00:00'),
	(118, '185052', 30, '2019-03-18 00:00:00'),
	(119, '185053', 30, '2019-03-18 00:00:00'),
	(120, '185054', 30, '2019-03-18 00:00:00'),
	(121, '185055', 30, '2019-03-18 00:00:00'),
	(122, '185056', 30, '2019-03-18 00:00:00'),
	(123, '185057', 30, '2019-03-18 00:00:00'),
	(124, '185058', 30, '2019-03-18 00:00:00'),
	(125, '185059', 30, '2019-03-18 00:00:00'),
	(126, '185060', 30, '2019-03-18 00:00:00'),
	(127, '185061', 30, '2019-03-18 00:00:00'),
	(128, '185062', 30, '2019-03-18 00:00:00'),
	(129, '185063', 30, '2019-03-18 00:00:00'),
	(130, '185064', 30, '2019-03-18 00:00:00'),
	(131, '185065', 30, '2019-03-18 00:00:00'),
	(132, '185066', 30, '2019-03-18 00:00:00'),
	(133, '185067', 30, '2019-03-18 00:00:00'),
	(134, '185068', 30, '2019-03-18 00:00:00'),
	(135, '185069', 30, '2019-03-18 00:00:00'),
	(136, '185070', 30, '2019-03-18 00:00:00'),
	(137, '185071', 31, '2019-03-18 00:00:00'),
	(138, '185073', 31, '2019-03-18 00:00:00'),
	(139, '185074', 31, '2019-03-18 00:00:00'),
	(140, '185075', 31, '2019-03-18 00:00:00'),
	(141, '185076', 31, '2019-03-18 00:00:00'),
	(142, '185077', 31, '2019-03-18 00:00:00'),
	(143, '185078', 31, '2019-03-18 00:00:00'),
	(144, '185079', 31, '2019-03-18 00:00:00'),
	(145, '185080', 31, '2019-03-18 00:00:00'),
	(146, '185081', 31, '2019-03-18 00:00:00'),
	(147, '185082', 31, '2019-03-18 00:00:00'),
	(148, '185083', 31, '2019-03-18 00:00:00'),
	(149, '185084', 31, '2019-03-18 00:00:00'),
	(150, '185085', 31, '2019-03-18 00:00:00'),
	(151, '185086', 31, '2019-03-18 00:00:00'),
	(152, '185087', 31, '2019-03-18 00:00:00'),
	(153, '185088', 31, '2019-03-18 00:00:00'),
	(154, '185089', 31, '2019-03-18 00:00:00'),
	(155, '185090', 31, '2019-03-18 00:00:00'),
	(156, '185092', 31, '2019-03-18 00:00:00'),
	(157, '185093', 31, '2019-03-18 00:00:00'),
	(158, '185094', 31, '2019-03-18 00:00:00'),
	(159, '185095', 31, '2019-03-18 00:00:00'),
	(160, '185096', 31, '2019-03-18 00:00:00'),
	(161, '185099', 31, '2019-03-18 00:00:00'),
	(162, '185100', 31, '2019-03-18 00:00:00'),
	(163, '185101', 31, '2019-03-18 00:00:00'),
	(164, '185102', 31, '2019-03-18 00:00:00'),
	(165, '185103', 31, '2019-03-18 00:00:00'),
	(166, '185104', 31, '2019-03-18 00:00:00'),
	(167, '185105', 31, '2019-03-18 00:00:00'),
	(168, '185106', 31, '2019-03-18 00:00:00'),
	(169, '102001', 32, '2019-03-18 00:00:00'),
	(170, '102002', 32, '2019-03-18 00:00:00'),
	(171, '102003', 32, '2019-03-18 00:00:00'),
	(172, '102004', 32, '2019-03-18 00:00:00'),
	(173, '102006', 32, '2019-03-18 00:00:00'),
	(174, '102007', 32, '2019-03-18 00:00:00'),
	(175, '102008', 32, '2019-03-18 00:00:00'),
	(176, '102009', 32, '2019-03-18 00:00:00'),
	(177, '102010', 32, '2019-03-18 00:00:00'),
	(178, '102011', 32, '2019-03-18 00:00:00'),
	(179, '102012', 32, '2019-03-18 00:00:00'),
	(180, '102013', 32, '2019-03-18 00:00:00'),
	(181, '102014', 32, '2019-03-18 00:00:00'),
	(182, '102015', 32, '2019-03-18 00:00:00'),
	(183, '102016', 32, '2019-03-18 00:00:00'),
	(184, '102017', 32, '2019-03-18 00:00:00'),
	(185, '102018', 32, '2019-03-18 00:00:00'),
	(186, '102019', 32, '2019-03-18 00:00:00'),
	(187, '102021', 32, '2019-03-18 00:00:00'),
	(188, '102022', 32, '2019-03-18 00:00:00'),
	(189, '102023', 32, '2019-03-18 00:00:00'),
	(190, '102024', 32, '2019-03-18 00:00:00'),
	(191, '102025', 32, '2019-03-18 00:00:00'),
	(192, '102026', 32, '2019-03-18 00:00:00'),
	(193, '102027', 32, '2019-03-18 00:00:00'),
	(194, '102028', 32, '2019-03-18 00:00:00'),
	(195, '102029', 32, '2019-03-18 00:00:00'),
	(196, '102030', 32, '2019-03-18 00:00:00'),
	(197, '181001', 33, '2019-03-18 00:00:00'),
	(198, '181002', 33, '2019-03-18 00:00:00'),
	(199, '181003', 33, '2019-03-18 00:00:00'),
	(200, '181004', 33, '2019-03-18 00:00:00'),
	(201, '181006', 33, '2019-03-18 00:00:00'),
	(202, '181007', 33, '2019-03-18 00:00:00'),
	(203, '181008', 33, '2019-03-18 00:00:00'),
	(204, '181009', 33, '2019-03-18 00:00:00'),
	(205, '181010', 33, '2019-03-18 00:00:00'),
	(206, '181011', 33, '2019-03-18 00:00:00'),
	(207, '181012', 33, '2019-03-18 00:00:00'),
	(208, '181013', 33, '2019-03-18 00:00:00'),
	(209, '181014', 33, '2019-03-18 00:00:00'),
	(210, '181015', 33, '2019-03-18 00:00:00'),
	(211, '181016', 33, '2019-03-18 00:00:00'),
	(212, '181017', 33, '2019-03-18 00:00:00'),
	(213, '184001', 34, '2019-03-18 00:00:00'),
	(214, '184002', 34, '2019-03-18 00:00:00'),
	(215, '184003', 34, '2019-03-18 00:00:00'),
	(216, '184004', 34, '2019-03-18 00:00:00'),
	(217, '184005', 34, '2019-03-18 00:00:00'),
	(218, '184006', 34, '2019-03-18 00:00:00'),
	(219, '184007', 34, '2019-03-18 00:00:00'),
	(220, '184008', 34, '2019-03-18 00:00:00'),
	(221, '184009', 34, '2019-03-18 00:00:00'),
	(222, '184010', 34, '2019-03-18 00:00:00'),
	(223, '184011', 34, '2019-03-18 00:00:00'),
	(224, '184012', 34, '2019-03-18 00:00:00'),
	(225, '184013', 34, '2019-03-18 00:00:00'),
	(226, '184014', 34, '2019-03-18 00:00:00'),
	(227, '184015', 34, '2019-03-18 00:00:00'),
	(228, '184016', 34, '2019-03-18 00:00:00'),
	(229, '184017', 34, '2019-03-18 00:00:00'),
	(230, '184018', 34, '2019-03-18 00:00:00'),
	(231, '184019', 34, '2019-03-18 00:00:00'),
	(232, '184020', 34, '2019-03-18 00:00:00'),
	(233, '184021', 34, '2019-03-18 00:00:00'),
	(234, '184022', 34, '2019-03-18 00:00:00'),
	(235, '184023', 34, '2019-03-18 00:00:00'),
	(236, '184024', 34, '2019-03-18 00:00:00'),
	(237, '184025', 34, '2019-03-18 00:00:00'),
	(238, '184026', 34, '2019-03-18 00:00:00'),
	(239, '184027', 34, '2019-03-18 00:00:00'),
	(240, '184028', 34, '2019-03-18 00:00:00'),
	(241, '184029', 34, '2019-03-18 00:00:00'),
	(242, '184030', 34, '2019-03-18 00:00:00'),
	(243, '184031', 34, '2019-03-18 00:00:00'),
	(244, '184032', 35, '2019-03-18 00:00:00'),
	(245, '184033', 35, '2019-03-18 00:00:00'),
	(246, '184034', 35, '2019-03-18 00:00:00'),
	(247, '184035', 35, '2019-03-18 00:00:00'),
	(248, '184036', 35, '2019-03-18 00:00:00'),
	(249, '184037', 35, '2019-03-18 00:00:00'),
	(250, '184038', 35, '2019-03-18 00:00:00'),
	(251, '184039', 35, '2019-03-18 00:00:00'),
	(252, '184040', 35, '2019-03-18 00:00:00'),
	(253, '184041', 35, '2019-03-18 00:00:00'),
	(254, '184042', 35, '2019-03-18 00:00:00'),
	(255, '184043', 35, '2019-03-18 00:00:00'),
	(256, '184044', 35, '2019-03-18 00:00:00'),
	(257, '184045', 35, '2019-03-18 00:00:00'),
	(258, '184123', 35, '2019-03-18 00:00:00'),
	(259, '184046', 35, '2019-03-18 00:00:00'),
	(260, '184047', 35, '2019-03-18 00:00:00'),
	(261, '184048', 35, '2019-03-18 00:00:00'),
	(262, '184049', 35, '2019-03-18 00:00:00'),
	(263, '184050', 35, '2019-03-18 00:00:00'),
	(264, '184051', 35, '2019-03-18 00:00:00'),
	(265, '184052', 35, '2019-03-18 00:00:00'),
	(266, '184053', 35, '2019-03-18 00:00:00'),
	(267, '184054', 35, '2019-03-18 00:00:00'),
	(268, '184055', 35, '2019-03-18 00:00:00'),
	(269, '184056', 35, '2019-03-18 00:00:00'),
	(270, '184057', 35, '2019-03-18 00:00:00'),
	(271, '184058', 35, '2019-03-18 00:00:00'),
	(272, '184059', 35, '2019-03-18 00:00:00'),
	(273, '184060', 35, '2019-03-18 00:00:00'),
	(274, '184062', 36, '2019-03-18 00:00:00'),
	(275, '184063', 36, '2019-03-18 00:00:00'),
	(276, '184064', 36, '2019-03-18 00:00:00'),
	(277, '184065', 36, '2019-03-18 00:00:00'),
	(278, '184066', 36, '2019-03-18 00:00:00'),
	(279, '184067', 36, '2019-03-18 00:00:00'),
	(280, '184068', 36, '2019-03-18 00:00:00'),
	(281, '184069', 36, '2019-03-18 00:00:00'),
	(282, '184070', 36, '2019-03-18 00:00:00'),
	(283, '184071', 36, '2019-03-18 00:00:00'),
	(284, '184073', 36, '2019-03-18 00:00:00'),
	(285, '184074', 36, '2019-03-18 00:00:00'),
	(286, '184075', 36, '2019-03-18 00:00:00'),
	(287, '184076', 36, '2019-03-18 00:00:00'),
	(288, '184077', 36, '2019-03-18 00:00:00'),
	(289, '184078', 36, '2019-03-18 00:00:00'),
	(290, '184079', 36, '2019-03-18 00:00:00'),
	(291, '184081', 36, '2019-03-18 00:00:00'),
	(292, '184082', 36, '2019-03-18 00:00:00'),
	(293, '184083', 36, '2019-03-18 00:00:00'),
	(294, '184084', 36, '2019-03-18 00:00:00'),
	(295, '184085', 36, '2019-03-18 00:00:00'),
	(296, '184086', 36, '2019-03-18 00:00:00'),
	(297, '184087', 36, '2019-03-18 00:00:00'),
	(298, '184088', 36, '2019-03-18 00:00:00'),
	(299, '184089', 36, '2019-03-18 00:00:00'),
	(300, '184090', 36, '2019-03-18 00:00:00'),
	(301, '184091', 36, '2019-03-18 00:00:00'),
	(302, '184092', 37, '2019-03-18 00:00:00'),
	(303, '184093', 37, '2019-03-18 00:00:00'),
	(304, '184094', 37, '2019-03-18 00:00:00'),
	(305, '184095', 37, '2019-03-18 00:00:00'),
	(306, '184096', 37, '2019-03-18 00:00:00'),
	(307, '184097', 37, '2019-03-18 00:00:00'),
	(308, '184098', 37, '2019-03-18 00:00:00'),
	(309, '184099', 37, '2019-03-18 00:00:00'),
	(310, '184100', 37, '2019-03-18 00:00:00'),
	(311, '184101', 37, '2019-03-18 00:00:00'),
	(312, '184102', 37, '2019-03-18 00:00:00'),
	(313, '184103', 37, '2019-03-18 00:00:00'),
	(314, '184104', 37, '2019-03-18 00:00:00'),
	(315, '184105', 37, '2019-03-18 00:00:00'),
	(316, '184106', 37, '2019-03-18 00:00:00'),
	(317, '184107', 37, '2019-03-18 00:00:00'),
	(318, '184108', 37, '2019-03-18 00:00:00'),
	(319, '184109', 37, '2019-03-18 00:00:00'),
	(320, '184110', 37, '2019-03-18 00:00:00'),
	(321, '184112', 37, '2019-03-18 00:00:00'),
	(322, '184113', 37, '2019-03-18 00:00:00'),
	(323, '184114', 37, '2019-03-18 00:00:00'),
	(324, '184116', 37, '2019-03-18 00:00:00'),
	(325, '184117', 37, '2019-03-18 00:00:00'),
	(326, '184118', 37, '2019-03-18 00:00:00'),
	(327, '184119', 37, '2019-03-18 00:00:00'),
	(328, '184120', 37, '2019-03-18 00:00:00'),
	(329, '184121', 37, '2019-03-18 00:00:00'),
	(330, '184122', 37, '2019-03-18 00:00:00'),
	(331, '186001', 38, '2019-03-18 00:00:00'),
	(332, '186002', 38, '2019-03-18 00:00:00'),
	(333, '186003', 38, '2019-03-18 00:00:00'),
	(334, '186004', 38, '2019-03-18 00:00:00'),
	(335, '186005', 38, '2019-03-18 00:00:00'),
	(336, '186006', 38, '2019-03-18 00:00:00'),
	(337, '186007', 38, '2019-03-18 00:00:00'),
	(338, '186008', 38, '2019-03-18 00:00:00'),
	(339, '186009', 38, '2019-03-18 00:00:00'),
	(340, '186010', 38, '2019-03-18 00:00:00'),
	(341, '186011', 38, '2019-03-18 00:00:00'),
	(342, '186012', 38, '2019-03-18 00:00:00'),
	(343, '186013', 38, '2019-03-18 00:00:00'),
	(344, '186014', 38, '2019-03-18 00:00:00'),
	(345, '186015', 38, '2019-03-18 00:00:00'),
	(346, '186016', 38, '2019-03-18 00:00:00'),
	(347, '186017', 38, '2019-03-18 00:00:00'),
	(348, '186018', 38, '2019-03-18 00:00:00'),
	(349, '186019', 38, '2019-03-18 00:00:00'),
	(350, '186020', 38, '2019-03-18 00:00:00'),
	(351, '186021', 38, '2019-03-18 00:00:00'),
	(352, '186022', 38, '2019-03-18 00:00:00'),
	(353, '186023', 38, '2019-03-18 00:00:00'),
	(354, '186024', 38, '2019-03-18 00:00:00'),
	(355, '186025', 38, '2019-03-18 00:00:00'),
	(356, '186026', 38, '2019-03-18 00:00:00'),
	(357, '186027', 38, '2019-03-18 00:00:00'),
	(358, '186028', 38, '2019-03-18 00:00:00'),
	(359, '186029', 38, '2019-03-18 00:00:00'),
	(360, '186030', 38, '2019-03-18 00:00:00'),
	(361, '186031', 38, '2019-03-18 00:00:00'),
	(362, '186032', 38, '2019-03-18 00:00:00'),
	(363, '186033', 38, '2019-03-18 00:00:00'),
	(364, '186034', 38, '2019-03-18 00:00:00'),
	(365, '186035', 38, '2019-03-18 00:00:00'),
	(366, '186036', 38, '2019-03-18 00:00:00'),
	(367, '186037', 39, '2019-03-18 00:00:00'),
	(369, '186039', 39, '2019-03-18 00:00:00'),
	(370, '186040', 39, '2019-03-18 00:00:00'),
	(371, '186041', 39, '2019-03-18 00:00:00'),
	(372, '186042', 39, '2019-03-18 00:00:00'),
	(373, '186043', 39, '2019-03-18 00:00:00'),
	(374, '186045', 39, '2019-03-18 00:00:00'),
	(375, '186046', 39, '2019-03-18 00:00:00'),
	(376, '186047', 39, '2019-03-18 00:00:00'),
	(377, '186048', 39, '2019-03-18 00:00:00'),
	(378, '186049', 39, '2019-03-18 00:00:00'),
	(379, '186050', 39, '2019-03-18 00:00:00'),
	(380, '186051', 39, '2019-03-18 00:00:00'),
	(381, '186052', 39, '2019-03-18 00:00:00'),
	(382, '186053', 39, '2019-03-18 00:00:00'),
	(383, '186054', 39, '2019-03-18 00:00:00'),
	(384, '186055', 39, '2019-03-18 00:00:00'),
	(385, '186056', 39, '2019-03-18 00:00:00'),
	(386, '186057', 39, '2019-03-18 00:00:00'),
	(387, '186058', 39, '2019-03-18 00:00:00'),
	(388, '186059', 39, '2019-03-18 00:00:00'),
	(389, '186060', 39, '2019-03-18 00:00:00'),
	(390, '186061', 39, '2019-03-18 00:00:00'),
	(391, '186063', 39, '2019-03-18 00:00:00'),
	(392, '186064', 39, '2019-03-18 00:00:00'),
	(393, '186065', 39, '2019-03-18 00:00:00'),
	(394, '186066', 39, '2019-03-18 00:00:00'),
	(395, '186067', 39, '2019-03-18 00:00:00'),
	(396, '186068', 39, '2019-03-18 00:00:00'),
	(397, '186069', 39, '2019-03-18 00:00:00'),
	(398, '186070', 39, '2019-03-18 00:00:00'),
	(399, '186072', 39, '2019-03-18 00:00:00'),
	(400, '185035', 29, '2019-02-26 00:00:00'),
	(401, '186038', 39, '2019-02-26 00:00:00');
/*!40000 ALTER TABLE `detail_group` ENABLE KEYS */;


-- Dumping structure for table malaka.import
CREATE TABLE IF NOT EXISTS `import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) DEFAULT NULL,
  `file` varchar(50) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table malaka.import: ~2 rows (approximately)
/*!40000 ALTER TABLE `import` DISABLE KEYS */;
INSERT INTO `import` (`id`, `kategori`, `file`, `user`, `date`) VALUES
	(1, 'master', 'import/1542434568.csv', NULL, NULL),
	(2, 'master', 'import/1542436128.csv', NULL, NULL);
/*!40000 ALTER TABLE `import` ENABLE KEYS */;


-- Dumping structure for table malaka.jurusan
CREATE TABLE IF NOT EXISTS `jurusan` (
  `idjurusan` char(10) NOT NULL,
  `nama_jurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idjurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.jurusan: ~3 rows (approximately)
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` (`idjurusan`, `nama_jurusan`) VALUES
	('MM', 'Multimedia'),
	('TKJ', 'Teknik Komputer Jaringan '),
	('TPM', 'Teknik Pemesinan'),
	('TPO', 'Teknik Mesin Otomotif ');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;


-- Dumping structure for table malaka.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `idkelas` int(11) NOT NULL AUTO_INCREMENT,
  `kode` char(10) NOT NULL,
  `idajaran` int(11) NOT NULL,
  `idjurusan` char(10) NOT NULL,
  `nama_kelas` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`kode`,`idajaran`,`idjurusan`,`idkelas`),
  KEY `idkelas` (`idkelas`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.kelas: ~11 rows (approximately)
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` (`idkelas`, `kode`, `idajaran`, `idjurusan`, `nama_kelas`, `status`) VALUES
	(23, 'X', 13, 'MM', 'X MM 1', 1),
	(24, 'X', 13, 'MM', 'X MM 2', 1),
	(17, 'X', 13, 'TITL', 'X TITL', 1),
	(14, 'X', 13, 'TKJ', 'X TKJ 1', 1),
	(15, 'X', 13, 'TKJ', 'X TKJ 2', 1),
	(16, 'X', 13, 'TKJ', 'X TKJ 3', 1),
	(19, 'X', 13, 'TKR', 'X TKR 1', 1),
	(20, 'X', 13, 'TKR', 'X TKR 2', 1),
	(21, 'X', 13, 'TKR', 'X TKR 3', 1),
	(22, 'X', 13, 'TKR', 'X TKR 4', 1),
	(18, 'X', 13, 'TPM', 'X TPM', 1),
	(25, 'X', 14, 'TKJ', 'X TKJ 1', 1);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;


-- Dumping structure for table malaka.kelas_group
CREATE TABLE IF NOT EXISTS `kelas_group` (
  `idgroup` int(11) NOT NULL AUTO_INCREMENT,
  `idkelas` int(11) NOT NULL,
  `wali_kelas` varchar(50) NOT NULL,
  `status` enum('A','I') NOT NULL,
  PRIMARY KEY (`idgroup`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.kelas_group: ~11 rows (approximately)
/*!40000 ALTER TABLE `kelas_group` DISABLE KEYS */;
INSERT INTO `kelas_group` (`idgroup`, `idkelas`, `wali_kelas`, `status`) VALUES
	(29, 14, 'A', 'A'),
	(30, 15, 'B', 'A'),
	(31, 16, 'C', 'A'),
	(32, 17, 'D', 'A'),
	(33, 18, 'E', 'A'),
	(34, 19, 'F', 'A'),
	(35, 20, 'G', 'A'),
	(36, 21, 'H', 'A'),
	(37, 22, 'I', 'A'),
	(38, 23, 'J', 'A'),
	(39, 24, 'K', 'A');
/*!40000 ALTER TABLE `kelas_group` ENABLE KEYS */;


-- Dumping structure for table malaka.kuitansi
CREATE TABLE IF NOT EXISTS `kuitansi` (
  `idkuitansi` char(20) NOT NULL,
  `idsiswa` char(10) NOT NULL,
  `idcart` int(11) NOT NULL,
  `key_` varchar(50) NOT NULL,
  `nominal` double NOT NULL,
  `idkelas` int(11) NOT NULL,
  `tahun_ajaran` varchar(50) NOT NULL,
  `tanggal_pembayaran` datetime NOT NULL,
  `urutan` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`urutan`,`idkuitansi`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- Dumping data for table malaka.kuitansi: ~0 rows (approximately)
/*!40000 ALTER TABLE `kuitansi` DISABLE KEYS */;
/*!40000 ALTER TABLE `kuitansi` ENABLE KEYS */;


-- Dumping structure for table malaka.migration
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.migration: ~2 rows (approximately)
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` (`version`, `apply_time`) VALUES
	('m000000_000000_base', 1531710340),
	('m130524_201442_init', 1531710344);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;


-- Dumping structure for table malaka.months
CREATE TABLE IF NOT EXISTS `months` (
  `idbulan` int(11) NOT NULL,
  `namabulan` varchar(50) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  PRIMARY KEY (`idbulan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.months: ~12 rows (approximately)
/*!40000 ALTER TABLE `months` DISABLE KEYS */;
INSERT INTO `months` (`idbulan`, `namabulan`, `urutan`) VALUES
	(1, 'Januari', 7),
	(2, 'Februari', 8),
	(3, 'Maret', 9),
	(4, 'April', 10),
	(5, 'Mei', 11),
	(6, 'Juni', 12),
	(7, 'Juli', 1),
	(8, 'Agustus', 2),
	(9, 'September', 3),
	(10, 'Oktober', 4),
	(11, 'November', 5),
	(12, 'Desember', 6);
/*!40000 ALTER TABLE `months` ENABLE KEYS */;


-- Dumping structure for table malaka.pencatatan_keuangan
CREATE TABLE IF NOT EXISTS `pencatatan_keuangan` (
  `idcatat` int(11) NOT NULL AUTO_INCREMENT,
  `no_pencatatan` char(10) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nominal` double NOT NULL,
  `flag` int(11) NOT NULL,
  `user_create` varchar(50) NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`idcatat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.pencatatan_keuangan: ~4 rows (approximately)
/*!40000 ALTER TABLE `pencatatan_keuangan` DISABLE KEYS */;
INSERT INTO `pencatatan_keuangan` (`idcatat`, `no_pencatatan`, `kategori`, `keterangan`, `nominal`, `flag`, `user_create`, `date_create`) VALUES
	(1, 'IN31573', 'pemasukan', 'abcd', 100000, 1, 'admin', '2018-10-17 05:57:21'),
	(2, 'OUT45484', 'pengeluaran', 'abcd', 100000, 1, 'admin', '2018-10-17 05:58:29'),
	(3, 'OUT19551', 'pengeluaran', 'Beli A', 3000000, 1, 'admin', '2018-11-24 10:39:43'),
	(4, 'IN51653', 'pemasukan', 'MASUk A', 200000, 1, 'admin', '2018-11-24 10:40:06');
/*!40000 ALTER TABLE `pencatatan_keuangan` ENABLE KEYS */;


-- Dumping structure for table malaka.prestasi
CREATE TABLE IF NOT EXISTS `prestasi` (
  `idsiswa` char(10) NOT NULL,
  `jenis_prestasi` varchar(50) DEFAULT NULL,
  `tingkat` varchar(50) DEFAULT NULL,
  `nama_prestasi` varchar(50) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `penyelenggara` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idsiswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.prestasi: ~0 rows (approximately)
/*!40000 ALTER TABLE `prestasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestasi` ENABLE KEYS */;


-- Dumping structure for table malaka.role
CREATE TABLE IF NOT EXISTS `role` (
  `idrole` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL,
  PRIMARY KEY (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table malaka.role: ~2 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`idrole`, `role_name`, `flag`) VALUES
	(1, 'All', 1),
	(2, 'Keuangan', 1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


-- Dumping structure for table malaka.role_privilage
CREATE TABLE IF NOT EXISTS `role_privilage` (
  `idprivilage` int(11) NOT NULL AUTO_INCREMENT,
  `idrole` int(11) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `nama_menu` varchar(50) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`idprivilage`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- Dumping data for table malaka.role_privilage: ~40 rows (approximately)
/*!40000 ALTER TABLE `role_privilage` DISABLE KEYS */;
INSERT INTO `role_privilage` (`idprivilage`, `idrole`, `keterangan`, `nama_menu`, `flag`) VALUES
	(20, 2, 'HEAD', 'Pengaturan', 1),
	(21, 2, 'HEAD', 'Siswa', 0),
	(22, 2, 'HEAD', 'Pencatatan Keuangan', 1),
	(23, 2, 'HEAD', 'Kasir', 1),
	(24, 2, 'HEAD', 'Spp', 1),
	(25, 2, 'HEAD', 'Histori Kuitansi', 1),
	(26, 2, 'HEAD', 'Upload', 0),
	(27, 2, 'HEAD', 'Laporan', 1),
	(28, 2, 'DETAIL', 'Biaya Tagihan', 1),
	(29, 2, 'DETAIL', 'Atur Kelas', 0),
	(30, 2, 'DETAIL', 'Jurusan', 0),
	(31, 2, 'DETAIL', 'Tahun Ajaran', 0),
	(32, 2, 'DETAIL', 'Biaya Tidak Tetap', 1),
	(33, 2, 'DETAIL', 'User', 0),
	(34, 2, 'DETAIL', 'Registrasi', 0),
	(35, 2, 'DETAIL', 'Kelas', 0),
	(36, 2, 'DETAIL', 'Tagihan', 1),
	(37, 2, 'DETAIL', 'Tambah Pencatatan', 1),
	(38, 2, 'DETAIL', 'Surat Tunggakan', 1),
	(39, 2, 'DETAIL', 'Laporan Keuangan', 1),
	(65, 1, 'HEAD', 'Pengaturan', 1),
	(66, 1, 'HEAD', 'Siswa', 1),
	(67, 1, 'HEAD', 'Pencatatan Keuangan', 1),
	(68, 1, 'HEAD', 'Kasir', 1),
	(69, 1, 'HEAD', 'Spp', 1),
	(70, 1, 'HEAD', 'Histori Kuitansi', 1),
	(71, 1, 'HEAD', 'Upload', 1),
	(72, 1, 'HEAD', 'Laporan', 1),
	(73, 1, 'DETAIL', 'Biaya Tagihan', 1),
	(74, 1, 'DETAIL', 'Kelas', 1),
	(75, 1, 'DETAIL', 'Jurusan', 1),
	(76, 1, 'DETAIL', 'Tahun Ajaran', 1),
	(77, 1, 'DETAIL', 'Biaya Tidak Tetap', 1),
	(78, 1, 'DETAIL', 'User', 1),
	(79, 1, 'DETAIL', 'Registrasi', 1),
	(80, 1, 'DETAIL', 'Kelas', 1),
	(81, 1, 'DETAIL', 'Tagihan', 1),
	(82, 1, 'DETAIL', 'Tambah Pencatatan', 1),
	(83, 1, 'DETAIL', 'Surat Tunggakan', 1),
	(84, 1, 'DETAIL', 'Laporan Keuangan', 1);
/*!40000 ALTER TABLE `role_privilage` ENABLE KEYS */;


-- Dumping structure for table malaka.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `idsiswa` char(10) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` char(10) DEFAULT NULL,
  `nisn` char(20) DEFAULT NULL,
  `no_seri_ijazah_smp` char(20) DEFAULT NULL,
  `no_seri_skhun_smp` char(20) DEFAULT NULL,
  `no_ujian_nasional` char(20) DEFAULT NULL,
  `nik` char(20) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `alamat` text,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `transportasi` varchar(50) DEFAULT NULL,
  `tlp_rumah` char(10) DEFAULT NULL,
  `hp` char(14) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `status_kps` tinyint(4) DEFAULT NULL,
  `no_kps` char(20) DEFAULT NULL,
  `tinggi_badan` int(11) DEFAULT NULL,
  `berat_badan` float DEFAULT NULL,
  `jarak_tempat_tinggal` int(11) DEFAULT NULL,
  `waktu_tempuh` int(11) DEFAULT NULL,
  `jml_saudara` int(11) DEFAULT NULL,
  `user_create` varchar(50) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_update` varchar(50) DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  `urutan` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`urutan`,`idsiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=856 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.siswa: ~355 rows (approximately)
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` (`idsiswa`, `nama_lengkap`, `jenis_kelamin`, `nisn`, `no_seri_ijazah_smp`, `no_seri_skhun_smp`, `no_ujian_nasional`, `nik`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `kelurahan`, `kecamatan`, `kota`, `provinsi`, `transportasi`, `tlp_rumah`, `hp`, `email`, `status_kps`, `no_kps`, `tinggi_badan`, `berat_badan`, `jarak_tempat_tinggal`, `waktu_tempuh`, `jml_saudara`, `user_create`, `date_create`, `user_update`, `date_update`, `urutan`) VALUES
	('185001', 'Achmad Ramdani', NULL, '28195430', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 525),
	('185002', 'Aditya Priadi Pradana', NULL, '33653288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 526),
	('185003', 'Ahmad Andreansya', NULL, '33914270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 527),
	('185004', 'Ahmad Khadafi', NULL, '29752950', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 528),
	('185005', 'Ahmad Syukron Fadli', NULL, '31697038', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 529),
	('185006', 'Ahmad Zhidan Zain', NULL, '33778201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 530),
	('185007', 'Anisa Dyah Sekarini', NULL, '35673236', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 531),
	('185008', 'Ardhiansyah', NULL, '19896979', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 532),
	('185009', 'Asraf Putra Ramdani', NULL, '35704854', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 533),
	('185010', 'Aulia Zahra Aisyah', NULL, '33091687', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 534),
	('185011', 'Ayu Devi Rahmadani', NULL, '18833698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 535),
	('185012', 'David Pujo Prasetyo', NULL, '20795366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 536),
	('185013', 'Devito Tri Oktaviono', NULL, '30514276', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 537),
	('185014', 'Esha Maulana Fahrezi', NULL, '32479205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 538),
	('185015', 'Faizal Dwi Prasetiawan', NULL, '33778175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 539),
	('185016', 'Fajar Ramadhan', NULL, '27426770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 540),
	('185017', 'Farhan Fadilah', NULL, '33452693', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 541),
	('185018', 'Fauzan Ilhami', NULL, '33513211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 542),
	('185019', 'Febryan Sanjaya', NULL, '20791075', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 543),
	('185020', 'Garda Nusantara Nurfadillah', NULL, '31251246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 544),
	('185021', 'Krisna Gunawan', NULL, '21737764', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 545),
	('185022', 'Mohammad Nuriana Heryanto', NULL, '26172747', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 546),
	('185023', 'Muhammad Bagus Kuncoro', NULL, '27190305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 547),
	('185024', 'Muhammad Diffa Nurhakim', NULL, '33876505', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 548),
	('185025', 'Muhammad Djafar Siddiq', NULL, '14315913', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 549),
	('185026', 'Muhammad Lutfi Damanhuri', NULL, '28747424', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 550),
	('185027', 'Muhammad Rafka', NULL, '32959836', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 551),
	('185029', 'Muhammad Rifaldi', NULL, '33193128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 552),
	('185030', 'Qurdhon Hasanan', NULL, '14690221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 553),
	('185031', 'Rafly Ferdyan', NULL, '32456878', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 554),
	('185032', 'Raihan Mar\'ie', NULL, '32834435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 555),
	('185033', 'Rakayasiin Everestu', NULL, '32918326', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 556),
	('185034', 'Reza Alfa Rizy', NULL, '32452667', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 557),
	('185035', 'Yanuar Budi Triyawan', NULL, '39636754', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 558),
	('185036', 'Achmad Fajri Pratu Kamil', NULL, '21617243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 559),
	('185037', 'Adam Ridho Pratama', NULL, '26214780', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 560),
	('185038', 'Aditya Sahputra', NULL, '9953308956', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 561),
	('185039', 'Ahmad Naufal Arrafi', NULL, '34952065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 562),
	('185040', 'Achmad Rifaldi', NULL, '22404305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 563),
	('185041', 'Ahmad Rifky', NULL, '31590519', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 564),
	('185042', 'Apriana Hidayahtuloh', NULL, '39428090', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 565),
	('185043', 'Arif Bassam', NULL, '33710991', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 566),
	('185044', 'Azra Hafizan', NULL, '13572522', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 567),
	('185045', 'Bayu Radityo Natalegawa Putra', NULL, '32444727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 568),
	('185046', 'Dea Zikri Hanafi', NULL, '33246925', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 569),
	('185047', 'Difa Gilang Saputra', NULL, '24510740', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 570),
	('185048', 'Eben Lio Kristiasen Sihombing', NULL, '34233277', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 571),
	('185049', 'Fahri Hidayat Kaimuddin', NULL, '31219359', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 572),
	('185050', 'Fahri Rizky Zaharsyah', NULL, '20390980', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 573),
	('185051', 'Habil Alkdri', NULL, '24319147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 574),
	('185052', 'Haekal Fajri Alaika', NULL, '33778185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 575),
	('185053', 'Ihsan Harry Purnomo', NULL, '30430950', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 576),
	('185054', 'Iqbal Maulana', NULL, '25314144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 577),
	('185055', 'Moch. Fanani', NULL, '1757968', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 578),
	('185056', 'Muhamad Farhan Irodat', NULL, '29503037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 579),
	('185057', 'Muhammad Ammar Rahman', NULL, '20517830', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 580),
	('185058', 'Muhammad Daffa Khairullah', NULL, '37858792', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 581),
	('185059', 'Muhammad Gozali', NULL, '11683780', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 582),
	('185060', 'Nabil Ahmad Fauzan', NULL, '33257743', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 583),
	('185061', 'Noval Rizki Sugiyatno', NULL, '29498882', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 584),
	('185062', 'Primananda Wicaksono', NULL, '31258262', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 585),
	('185063', 'Rafi Ramadhani', NULL, '31590525', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 586),
	('185064', 'Rahfahma Najmi Syahrezi', NULL, '30698827', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 587),
	('185065', 'Raihan Muhammad Muyassar', NULL, '33137351', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 588),
	('185066', 'Rakhananda Gemma Zhafarrus', NULL, '3125157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 589),
	('185067', 'Renaldi Iqbal Agustin', NULL, '82858957', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 590),
	('185068', 'Rizqy Agusti Rahmat', NULL, '25010359', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 591),
	('185069', 'Seighi Putra Irvani', NULL, '38065177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 592),
	('185070', 'Sukron Sidiq', NULL, '20653461', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 593),
	('185071', 'Abdullah Rayhan Arkan', NULL, '15854760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 594),
	('185073', 'Agustino Pradiyanto', NULL, '18773955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 595),
	('185074', 'Ahmad Wijanarko', NULL, '20971795', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 596),
	('185075', 'Aldan Naufal', NULL, '31250912', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 597),
	('185076', 'Alif Nurhidayah', NULL, '31014140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 598),
	('185077', 'Alvito Nurseto', NULL, '25670077', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 599),
	('185078', 'Ananda Pratama Razaki', NULL, '33799087', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 600),
	('185079', 'Angga Nur Hidayatulloh', NULL, '33317909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 601),
	('185080', 'Arba Bintang Ibrahim', NULL, '24439636', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 602),
	('185081', 'Bagas Sumantri', NULL, '25816991', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 603),
	('185082', 'Dhimas Mardani Satrio Bawono', NULL, '12724655', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 604),
	('185083', 'Erson Waakna Sibarani', NULL, '29836626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 605),
	('185084', 'Gilang Ramadhan', NULL, '33219209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 606),
	('185085', 'Haris Fadhilah', NULL, '35219154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 607),
	('185086', 'Januar David Valentino Piay', NULL, '31014959', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 608),
	('185087', 'Lutfi Aulia Muharom', NULL, '13637565', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 609),
	('185088', 'Muhammad Alki Putera Ashani Bustaman', NULL, '35185491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 610),
	('185089', 'Muhammad Aryasen Pratamajasa', NULL, '24839423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 611),
	('185090', 'Muhammad Tubagus Pangestu', NULL, '31006558', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 612),
	('185092', 'Mohammad Raihan Alfisyahrie', NULL, '37240621', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 613),
	('185093', 'Muchlis Nur Cholis', NULL, '33219164', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 614),
	('185094', 'Muhamad Alief Fitral', NULL, '15695196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 615),
	('185095', 'Muhammad Faisal', NULL, '30459606', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 616),
	('185096', 'Muhammad Farhan Naufal', NULL, '24022454', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 617),
	('185099', 'Pidie Ainun Alrasyid', NULL, '32113228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 618),
	('185100', 'Robby Awaludin Harahap', NULL, '13590293', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 619),
	('185101', 'Robert Yakan Titiriloloby', NULL, '25358990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 620),
	('185102', 'Samuel', NULL, '24531709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 621),
	('185103', 'Shandy Satria Gunawan', NULL, '151607048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 622),
	('185104', 'Waladin Soleh Anugrah Ilahi', NULL, '31257592', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 623),
	('185105', 'Windhuha Mardian', NULL, '37507187', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 624),
	('185106', 'Zalfa Shohibi Anli', NULL, '25831521', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 625),
	('102001', 'Afiz Fauzi', NULL, '3267165', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 626),
	('102002', 'Agih Prasetiyo', NULL, '31590485', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 627),
	('102003', 'Amar Ferdiyansyah', NULL, '20260882', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 628),
	('102004', 'Beni Oktiansyah Audi', NULL, '824649', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 629),
	('102006', 'Dimas Eri Prabowo', NULL, '31974661', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 630),
	('102007', 'Fadlan Zaelani', NULL, '33159820', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 631),
	('102008', 'Fiqhri Wahyu Perdana', NULL, '32318095', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 632),
	('102009', 'Lucas Golddenmar Pandapotan', NULL, '7871553', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 633),
	('102010', 'Muhammad Alfaridzi Munzir', NULL, '14435390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 634),
	('102011', 'Muhammad Alni Haekal', NULL, '33219178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 635),
	('102012', 'Muhammad Firansyah Putra', NULL, '1817015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 636),
	('102013', 'Muhamad Rafqi Ramadhan', NULL, '29460857', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 637),
	('102014', 'Muhammad Rizky Januar', NULL, '20410952', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 638),
	('102015', 'Muhammad Rizky Saputra', NULL, '35547391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 639),
	('102016', 'Malik Fajar Sialita', NULL, '19455569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 640),
	('102017', 'Mochamad Hijaz Fajri', NULL, '39126990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 641),
	('102018', 'Mohamad Fadlan Herdiansyah', NULL, '32772189', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 642),
	('102019', 'Muhamamd Farhan', NULL, '16069274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 643),
	('102021', 'Muhamad Ikhsan Zulfikar', NULL, '32817905', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 644),
	('102022', 'Muhammad Fadli Ardiansyah', NULL, '31512611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 645),
	('102023', 'Muhammad Khalid Arrasyid', NULL, '30356018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 646),
	('102024', 'Nabila Amelia', NULL, '38294062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 647),
	('102025', 'Naufal Agatha Putra', NULL, '1548897', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 648),
	('102026', 'Reza Hermawan', NULL, '26506249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 649),
	('102027', 'Subakti Ramadhan', NULL, '14618524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 650),
	('102028', 'Supyanto Sauri', NULL, '27036336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 651),
	('102029', 'Syaiful Zidane', NULL, '31456895', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 652),
	('102030', 'Yudha Nugraha', NULL, '31697033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 653),
	('181001', 'Aditia Ilham Santoso', NULL, '34414399', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 654),
	('181002', 'Ar Rafi Putra Alamsyah', NULL, '24379264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 655),
	('181003', 'Aria Ramdhan', NULL, '26840403', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 656),
	('181004', 'Arjunanda Syah', NULL, '26222568', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 657),
	('181006', 'Firmansyah', NULL, '13453769', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 658),
	('181007', 'Ifan Surna', NULL, '26697582', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 659),
	('181008', 'Muhammad Bentar Apriyadi', NULL, '34141812', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 660),
	('181009', 'Muhammad Raga Santana', NULL, '32737663', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 661),
	('181010', 'Mardi Gunawan', NULL, '25837264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 662),
	('181011', 'Rahmat Hidayat', NULL, '17076633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 663),
	('181012', 'Ramadhan Dwi Saputra', NULL, '29016792', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 664),
	('181013', 'Rimbor Setia Doli', NULL, '14837442', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 665),
	('181014', 'Rudi Septiono', NULL, '2581680', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 666),
	('181015', 'Syahbani', NULL, '33778165', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 667),
	('181016', 'Wahyu Putra Sepriyanto', NULL, '31897514', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 668),
	('181017', 'Wildhan Ainul Yakiin', NULL, '33773242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 669),
	('184001', 'Ahmad Nursyifa', NULL, '23176112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 670),
	('184002', 'Ahmad Rizal Al Sa\'ban', NULL, '27036550', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 671),
	('184003', 'Alip Priyantoro', NULL, '17190892', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 672),
	('184004', 'Andito Ramadhan', NULL, '24351441', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 673),
	('184005', 'Dava Alpanhadi', NULL, '28725515', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 674),
	('184006', 'David Komarudin', NULL, '27364446', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 675),
	('184007', 'Dika Maulana Rivai', NULL, '24463265', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 676),
	('184008', 'Doni Saputra', NULL, '33430663', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 677),
	('184009', 'Dwi Febriyanto', NULL, '30378930', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 678),
	('184010', 'Elang Subhi Permana', NULL, '25415671', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 679),
	('184011', 'Farhan Valen A.lamsyah', NULL, '20390971', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 680),
	('184012', 'Galang Adi Surya ', NULL, '29683197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 681),
	('184013', 'Galang Aryanto', NULL, '31881220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 682),
	('184014', 'Idris Risky Nurakbar', NULL, '30813177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 683),
	('184015', 'Johnatan Nael', NULL, '7871556', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 684),
	('184016', 'Muhamad Khoirul Fahrudi', NULL, '25938933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 685),
	('184017', 'Muhamad Rafi Fadilah', NULL, '33370896', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 686),
	('184018', 'Muhammad Aththar Faridh Haqqon', NULL, '20599523', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 687),
	('184019', 'Muhamad Rifqi Jalun Nudin', NULL, '33311603', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 688),
	('184020', 'Muhamad Septian Raihan', NULL, '26537187', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 689),
	('184021', 'Muhammad Bagus Lazuardi Imani', NULL, '24059337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 690),
	('184022', 'Muhammad Ferry Juliansyah', NULL, '35401034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 691),
	('184023', 'Muhammad Rian Agustiadi', NULL, '34245064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 692),
	('184024', 'Rafi Mirza Rizki', NULL, '25159715', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 693),
	('184025', 'Raka Saputra', NULL, '33506611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 694),
	('184026', 'Rikki Asta Nugraha', NULL, '33511401', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 695),
	('184027', 'Rizki Ahmad Fadilah', NULL, '27795025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 696),
	('184028', 'Taufiqul Rahman', NULL, '17638696', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 697),
	('184029', 'Vaizun Sah', NULL, '30430958', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 698),
	('184030', 'Wahid Farhan Purwadi', NULL, '31251502', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 699),
	('184031', 'Yulian Satria', NULL, '20592376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700),
	('184032', 'Aldo Permana', NULL, '38161616', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 701),
	('184033', 'Abdul Qohar Fikri', NULL, '33785536', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702),
	('184034', 'Achmad Ilham Al Farizi', NULL, '37254178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 703),
	('184035', 'Adi Rian Saputra', NULL, '5737697', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 704),
	('184036', 'Aditya Maulana Firdaus', NULL, '33593062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 705),
	('184037', 'Andrew Wicaksono', NULL, '9953308960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 706),
	('184038', 'Ardhi Nurwahiddiyanto ', NULL, '31512616', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 707),
	('184039', 'Armand Putra Maulana', NULL, '30470162', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 708),
	('184040', 'Chandra Yulianto', NULL, '21932666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 709),
	('184041', 'Deni Septyan Arya Saputra', NULL, '24696750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 710),
	('184042', 'Farhan Aditya Pratama', NULL, '25938876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 711),
	('184043', 'Farrel Indra Nugroho', NULL, '33533186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 712),
	('184044', 'Fedryco Melando', NULL, '23627188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 713),
	('184045', 'Fiki', NULL, '25891339', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 714),
	('184123', 'Ibnu Shalsa Erlangga', NULL, '26177182', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 715),
	('184046', 'Irhas Fajri', NULL, '30639160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 716),
	('184047', 'Jati Kusuma', NULL, '33194663', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 717),
	('184048', 'Kevin Caesar Ramadhan', NULL, '27314109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 718),
	('184049', 'Muhamad Farhan Syah', NULL, '30479141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 719),
	('184050', 'Muhamad Nur Wahid', NULL, '23367949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 720),
	('184051', 'Muhamad Raihan Sitepu', NULL, '29522354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 721),
	('184052', 'Muhammad Agus Rianto', NULL, '20894696', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 722),
	('184053', 'Muhammad Fikri', NULL, '20362069', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 723),
	('184054', 'Raja Yusrah', NULL, '21558031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 724),
	('184055', 'Rendy Fernando', NULL, '18706475', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 725),
	('184056', 'Ridho Pambudi', NULL, '32616063', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 726),
	('184057', 'Risky Haria Pradana', NULL, '32616050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 727),
	('184058', 'Septian Hermawan', NULL, '14496653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 728),
	('184059', 'Toriq Nabil', NULL, '33312138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 729),
	('184060', 'Tri Adi Setiawan', NULL, '23248804', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 730),
	('184062', 'Abi Ahmad Audy', NULL, '32494034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 731),
	('184063', 'Agung Pangestu', NULL, '33532869', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 732),
	('184064', 'Achmad Tarmizi', NULL, '34822164', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 733),
	('184065', 'Akbar Setrama Putra', NULL, '32114221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 734),
	('184066', 'Alif Janis Ma\'arif', NULL, '33617697', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 735),
	('184067', 'Aureno Firmansyah Z.acky', NULL, '33131755', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 736),
	('184068', 'Azril Dastin Ramadhan', NULL, '17971703', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 737),
	('184069', 'Beryl Nugroho Sakti Priwangestu', NULL, '34866188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 738),
	('184070', 'Cecep Edi Junaidi', NULL, '24995873', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 739),
	('184071', 'Dani Rohman', NULL, '11688997', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 740),
	('184073', 'Farhan Ramadhan', NULL, '23289327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 741),
	('184074', 'Faris Joko Wibowo', NULL, '30577578', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 742),
	('184075', 'Ferdy Ferdiansyah', NULL, '32094170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 743),
	('184076', 'Harry Bisa Bakti', NULL, '30419381', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 744),
	('184077', 'Ibrahim', NULL, '24379243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 745),
	('184078', 'Ichsan Ardiwinata', NULL, '33674393', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 746),
	('184079', 'Muhammad Naufal Fikriy', NULL, '20634636', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 747),
	('184081', 'Muhamad Fairus Azhari', NULL, '30350766', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 748),
	('184082', 'Muhammad Hisyam Khamil', NULL, '31757985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 749),
	('184083', 'Respati Widianto', NULL, '31979154', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 750),
	('184084', 'Reva Dyo Nugraha', NULL, '27794954', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 751),
	('184085', 'Riezky Alviansyah Harahap', NULL, '37790696', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 752),
	('184086', 'Rifat Irfan Zidni', NULL, '27013131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 753),
	('184087', 'Rino Ramadan', NULL, '25419424', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 754),
	('184088', 'Suparman', NULL, '16973015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 755),
	('184089', 'Teddy Afriansyah Wicaksono', NULL, '13913418', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 756),
	('184090', 'Wahyu Adi Nugroho', NULL, '30554308', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 757),
	('184091', 'Zafar Umar Ali', NULL, '26240832', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 758),
	('184092', 'Akmal Nazrey Rasyidi', NULL, '37515123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 759),
	('184093', 'Aldes Setiawan', NULL, '26353038', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 760),
	('184094', 'Ali Wafa', NULL, '0032253522\'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 761),
	('184095', 'Ari Rachman Hakim', NULL, '16812881', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 762),
	('184096', 'Brayan Steven', NULL, '27036850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 763),
	('184097', 'Chandra Andreanto', NULL, '26557926', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 764),
	('184098', 'Emiludin', NULL, '14690402', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 765),
	('184099', 'Hafizh Rangga Ramadhan', NULL, '26771815', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 766),
	('184100', 'Heri Khuseni', NULL, '30479147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 767),
	('184101', 'Huldan Annas Ferdiansyah', NULL, '39279825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 768),
	('184102', 'Imam Raul Gozali', NULL, '20553320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 769),
	('184103', 'Luis Yerico', NULL, '14633395', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 770),
	('184104', 'Muhamad As\'ad Muzayad', NULL, '38824998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 771),
	('184105', 'Muhamad Bayu Maulana', NULL, '6346929', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 772),
	('184106', 'Muhamad Syehan Ramana Putra', NULL, '26771798', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 773),
	('184107', 'Muhammad Alif Al hakim', NULL, '39598145', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 774),
	('184108', 'Muhammad Fadli Septiansyah', NULL, '25314125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 775),
	('184109', 'Muhammad Iqbal Aditya Pratama', NULL, '30610254', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 776),
	('184110', 'Muhammad Ramadhani Yusuf', NULL, '40232732', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 777),
	('184112', 'Pikri Darmawan', NULL, '3141731', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 778),
	('184113', 'Renaldy', NULL, '26574285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 779),
	('184114', 'Rizaldisya Afiatna', NULL, '22796730', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 780),
	('184116', 'Saiful Abidin', NULL, '26537210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 781),
	('184117', 'Simen Adi Putra', NULL, '30415310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 782),
	('184118', 'Steven Yohanes', NULL, '30419358', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 783),
	('184119', 'Syarif Hidayatulloh', NULL, '39426691', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 784),
	('184121', 'Yanuar Eka Putra Sorin', NULL, '32057290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 785),
	('184122', 'Zayidan Habila', NULL, '33159808', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 786),
	('186001', 'Abdul Shaleh', NULL, '33532332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 787),
	('186002', 'Aditya Bintang Pratama', NULL, '34736201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 788),
	('186003', 'Ahmad Sabili Ibrahim', NULL, '40239371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 789),
	('186004', 'Andrian Prasetio', NULL, '48680559', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 790),
	('186005', 'Aqmal Maulana', NULL, '26713667', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 791),
	('186006', 'Aulia Winda Safitri', NULL, '32616041', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 792),
	('186007', 'Cempaka Ersa Putri', NULL, '13590562', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 793),
	('186008', 'Chandra Maulana Triatmaja', NULL, '32730425', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 794),
	('186009', 'Dava Tri Ananda', NULL, '32772180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 795),
	('186010', 'Efelina Pityasari', NULL, '31836357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 796),
	('186011', 'Fadz Kuruni Muttaqiin', NULL, '28212846', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 797),
	('186012', 'Ferdian Syahputra.', NULL, '33885222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 798),
	('186013', 'Fernando Malakiano', NULL, '31135622', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 799),
	('186014', 'Fifin Apriyanti Mangidi', NULL, '33762701', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 800),
	('186015', 'Fitrahel Hikmadinah Putri', NULL, '23014890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 801),
	('186016', 'Gea Ramadhany', NULL, '26219824', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802),
	('186017', 'Hadi Pratama', NULL, '17556636', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803),
	('186018', 'Hanafa Nur Zahwa', NULL, '14633323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 804),
	('186019', 'Irvan Ardyanto', NULL, '27134059', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 805),
	('186020', 'Ivan Riyanto', NULL, '30419379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 806),
	('186021', 'Jasmine Lathifah Aliyah', NULL, '26872953', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 807),
	('186022', 'Mohammad Rafli Fahrezi', NULL, '44504963', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 808),
	('186023', 'Made Bagus Prabaswara', NULL, '32959833', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 809),
	('186024', 'Muhamad Hafis Setiyawan Jodi', NULL, '30552708', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 810),
	('186025', 'Muhammad Fadli Akbar', NULL, '27277626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 811),
	('186026', 'Muhammad Furqon', NULL, '28103836', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 812),
	('186027', 'Muhammad Raihan', NULL, '39155139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 813),
	('186028', 'Nabilah Puteri Ufairah', NULL, '35275576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 814),
	('186029', 'Ndaru Andreyanto Hermawan', NULL, '25814261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 815),
	('186030', 'Nurul Fitri Maulidiyah', NULL, '20375760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 816),
	('186031', 'Reiva Nanda Sopyan Azzahra', NULL, '31736276', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 817),
	('186032', 'Rizqi Alfisyah Putra', NULL, '24995904', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 818),
	('186033', 'Rusniar Nuraviana', NULL, '33137372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 819),
	('186034', 'Sabrina Austini', NULL, '18217134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 820),
	('186035', 'Yusuf Arozaq Khotir', NULL, '28434423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 821),
	('186036', 'Zahra Devita', NULL, '27013246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 822),
	('186037', 'Albi Bilal', NULL, '33778195', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 823),
	('186038', 'Amad Afriyanto', NULL, '31135626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 824),
	('186039', 'Anggi Dwi Firmansyah', NULL, '39723642', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 825),
	('186040', 'Aulia Mahdiyyah Ufairah', NULL, '33137368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 826),
	('186041', 'Avriel Fajri Kurnia', NULL, '20691801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 827),
	('186042', 'Daniel Abet Nego Sembiring', NULL, '26115532', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 828),
	('186043', 'Dascha Dahayu Anggita Febriandini', NULL, '32667551', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 829),
	('186045', 'Fahriz Wishuda Putra', NULL, '18163429', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 830),
	('186046', 'Fairuz Hafizh Azzuhry', NULL, '33734607', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 831),
	('186047', 'Fathan Aryo Fadillah', NULL, '25434713', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 832),
	('186048', 'George Clearen Arlen ', NULL, '33776930', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 833),
	('186049', 'Hasyim Azhari', NULL, '25515653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 834),
	('186050', 'Haura Maulida', NULL, '37515122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 835),
	('186051', 'Ibnu Ambiya Putra', NULL, '24339413', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 836),
	('186052', 'Ikram Zillur Rahman', NULL, '33131760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 837),
	('186053', 'Josafat Jonah Siang ', NULL, '31014981', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 838),
	('186054', 'Muhammad Septian Mahesa', NULL, '22972872', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 839),
	('186055', 'Mikayla', NULL, '26611912', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 840),
	('186056', 'Mohammad Erlangga Pratama', NULL, '30451816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 841),
	('186057', 'Muhammad Naufal Fahrezi', NULL, '24379261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 842),
	('186058', 'Muhammad Farhan', NULL, '21554001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 843),
	('186059', 'Muhammad Hendy Adnan', NULL, '24195850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 844),
	('186060', 'M. Reynaldi Argyanto.', NULL, '25759085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 845),
	('186061', 'Naufal Rizqy Yuniarto', NULL, '31704170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 846),
	('186063', 'Rafi Akbar Qadhafi', NULL, '25530227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 847),
	('186064', 'Rita Claudia Hernawan', NULL, '24603637', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 848),
	('186065', 'Rizka Amanah Putri', NULL, '31882911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 849),
	('186066', 'Syarif Oktaviansyah', NULL, '25530224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 850),
	('186067', 'Syifa Artha Mauliyati', NULL, '31251140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 851),
	('186068', 'Tamazian Pramana Putra', NULL, '32352087', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 852),
	('186069', 'Tiara Ratu Alifia', NULL, '33059462', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 853),
	('186070', 'Triwianto Daniel Maulana', NULL, '19853108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 854),
	('186072', 'Yohanes Kukuh Perlindungan', NULL, '30850503', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 855);
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;


-- Dumping structure for table malaka.spp
CREATE TABLE IF NOT EXISTS `spp` (
  `idspp` int(11) NOT NULL AUTO_INCREMENT,
  `idtagihan` char(50) NOT NULL,
  `besaran` double NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `user_create` varchar(50) NOT NULL,
  `user_update` varchar(50) DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`idspp`)
) ENGINE=InnoDB AUTO_INCREMENT=616 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.spp: ~48 rows (approximately)
/*!40000 ALTER TABLE `spp` DISABLE KEYS */;
INSERT INTO `spp` (`idspp`, `idtagihan`, `besaran`, `bulan`, `user_create`, `user_update`, `date_create`, `date_update`) VALUES
	(568, 'KJ20182019', 350000, 'Juli', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(569, 'KJ20182019', 350000, 'Agustus', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(570, 'KJ20182019', 350000, 'September', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(571, 'KJ20182019', 350000, 'Oktober', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(572, 'KJ20182019', 350000, 'November', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(573, 'KJ20182019', 350000, 'Desember', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(574, 'KJ20182019', 350000, 'Januari', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(575, 'KJ20182019', 350000, 'Februari', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(576, 'KJ20182019', 350000, 'Maret', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(577, 'KJ20182019', 350000, 'April', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(578, 'KJ20182019', 350000, 'Mei', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(579, 'KJ20182019', 350000, 'Juni', 'admin', 'admin', '2019-02-26 16:50:00', '2019-02-26 17:31:18'),
	(580, 'M120182019', 350000, 'Juli', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(581, 'M120182019', 350000, 'Agustus', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(582, 'M120182019', 350000, 'September', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(583, 'M120182019', 350000, 'Oktober', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(584, 'M120182019', 350000, 'November', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(585, 'M120182019', 350000, 'Desember', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(586, 'M120182019', 350000, 'Januari', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(587, 'M120182019', 350000, 'Februari', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(588, 'M120182019', 350000, 'Maret', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(589, 'M120182019', 350000, 'April', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(590, 'M120182019', 350000, 'Mei', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(591, 'M120182019', 350000, 'Juni', 'admin', 'admin', '2019-02-26 16:45:25', '2019-02-26 17:37:46'),
	(592, 'M220182019', 350000, 'Juli', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(593, 'M220182019', 350000, 'Agustus', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(594, 'M220182019', 350000, 'September', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(595, 'M220182019', 350000, 'Oktober', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(596, 'M220182019', 350000, 'November', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(597, 'M220182019', 350000, 'Desember', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(598, 'M220182019', 350000, 'Januari', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(599, 'M220182019', 350000, 'Februari', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(600, 'M220182019', 350000, 'Maret', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(601, 'M220182019', 350000, 'April', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(602, 'M220182019', 350000, 'Mei', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(603, 'M220182019', 350000, 'Juni', 'admin', 'admin', '2019-02-26 16:46:47', '2019-02-26 17:38:07'),
	(604, 'PM20182019', 350000, 'Juli', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25'),
	(605, 'PM20182019', 350000, 'Agustus', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25'),
	(606, 'PM20182019', 350000, 'September', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25'),
	(607, 'PM20182019', 350000, 'Oktober', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25'),
	(608, 'PM20182019', 350000, 'November', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25'),
	(609, 'PM20182019', 350000, 'Desember', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25'),
	(610, 'PM20182019', 350000, 'Januari', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25'),
	(611, 'PM20182019', 350000, 'Februari', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25'),
	(612, 'PM20182019', 350000, 'Maret', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25'),
	(613, 'PM20182019', 350000, 'April', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25'),
	(614, 'PM20182019', 350000, 'Mei', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25'),
	(615, 'PM20182019', 350000, 'Juni', 'admin', 'admin', '2019-02-26 16:48:44', '2019-02-26 17:38:25');
/*!40000 ALTER TABLE `spp` ENABLE KEYS */;


-- Dumping structure for table malaka.spp_siswa
CREATE TABLE IF NOT EXISTS `spp_siswa` (
  `idtagihan_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` char(10) NOT NULL,
  `idgroup` int(11) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `besaran` float NOT NULL,
  `user_create` varchar(50) NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`idtagihan_siswa`,`idsiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.spp_siswa: ~0 rows (approximately)
/*!40000 ALTER TABLE `spp_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `spp_siswa` ENABLE KEYS */;


-- Dumping structure for table malaka.tagihan
CREATE TABLE IF NOT EXISTS `tagihan` (
  `idtagihan` char(10) NOT NULL,
  `idkelas` char(10) NOT NULL,
  `idajaran` int(11) NOT NULL,
  `idjurusan` char(10) NOT NULL,
  `administrasi` double DEFAULT NULL,
  `pengembangan` double DEFAULT NULL,
  `praktik` double DEFAULT NULL,
  `semester_a` double DEFAULT NULL,
  `semester_b` double DEFAULT NULL,
  `lab_inggris` double DEFAULT NULL,
  `lks` double DEFAULT NULL,
  `perpustakaan` double DEFAULT NULL,
  `osis` double DEFAULT NULL,
  `mpls` double DEFAULT NULL,
  `asuransi` double DEFAULT NULL,
  `baju_olah_raga` double DEFAULT NULL,
  `mos` double DEFAULT NULL,
  `kunjungan_industri` double DEFAULT NULL,
  `pkl` double DEFAULT NULL,
  `pendalaman_materi` double DEFAULT NULL,
  `dana_alokasi` double DEFAULT NULL,
  `user_create` varchar(50) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_update` varchar(50) DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`idtagihan`,`idkelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.tagihan: ~4 rows (approximately)
/*!40000 ALTER TABLE `tagihan` DISABLE KEYS */;
INSERT INTO `tagihan` (`idtagihan`, `idkelas`, `idajaran`, `idjurusan`, `administrasi`, `pengembangan`, `praktik`, `semester_a`, `semester_b`, `lab_inggris`, `lks`, `perpustakaan`, `osis`, `mpls`, `asuransi`, `baju_olah_raga`, `mos`, `kunjungan_industri`, `pkl`, `pendalaman_materi`, `dana_alokasi`, `user_create`, `date_create`, `user_update`, `date_update`) VALUES
	('KJ20182019', '14', 13, 'TKJ', 0, 1500000, 1750000, 300000, 300000, 200000, 300000, 150000, 150000, 0, 100000, 250000, 150000, 0, 0, 0, 0, 'admin', '2019-02-26 16:50:01', 'admin', '2019-02-26 17:31:19'),
	('M120182019', '23', 13, 'MM', 0, 1500000, 2000000, 300000, 300000, 200000, 300000, 150000, 150000, 0, 100000, 250000, 150000, 0, 0, 0, 0, 'admin', '2019-02-26 16:45:26', 'admin', '2019-02-26 17:37:46'),
	('M220182019', '24', 13, 'MM', 0, 1500000, 2000000, 300000, 300000, 200000, 300000, 150000, 150000, 0, 100000, 250000, 150000, 0, 0, 0, 0, 'admin', '2019-02-26 16:46:47', 'admin', '2019-02-26 17:38:07'),
	('PM20182019', '18', 13, 'TPM', 0, 1500000, 1750000, 300000, 300000, 200000, 300000, 150000, 150000, 0, 100000, 250000, 150000, 0, 0, 0, 0, 'admin', '2019-02-26 16:48:44', 'admin', '2019-02-26 17:38:25');
/*!40000 ALTER TABLE `tagihan` ENABLE KEYS */;


-- Dumping structure for table malaka.tagihan_biaya_tidaktetap
CREATE TABLE IF NOT EXISTS `tagihan_biaya_tidaktetap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idbiaya` int(11) NOT NULL DEFAULT '0',
  `no_tagihan` char(50) NOT NULL,
  `idsiswa` char(10) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nominal` double NOT NULL,
  `tahun_ajaran` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL,
  `tgl_assign` datetime NOT NULL,
  `tgl_payment` datetime DEFAULT NULL,
  `user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.tagihan_biaya_tidaktetap: ~0 rows (approximately)
/*!40000 ALTER TABLE `tagihan_biaya_tidaktetap` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagihan_biaya_tidaktetap` ENABLE KEYS */;


-- Dumping structure for table malaka.tagihan_siswa
CREATE TABLE IF NOT EXISTS `tagihan_siswa` (
  `idtagihan_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` char(10) NOT NULL,
  `idgroup` int(11) NOT NULL,
  `nama_tagihan` varchar(50) NOT NULL,
  `besaran` float NOT NULL,
  `keterangan` text,
  `user_create` varchar(50) NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`idtagihan_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.tagihan_siswa: ~0 rows (approximately)
/*!40000 ALTER TABLE `tagihan_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagihan_siswa` ENABLE KEYS */;


-- Dumping structure for table malaka.tahun_ajaran
CREATE TABLE IF NOT EXISTS `tahun_ajaran` (
  `idajaran` int(11) NOT NULL AUTO_INCREMENT,
  `tahun_ajaran` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`idajaran`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table malaka.tahun_ajaran: ~2 rows (approximately)
/*!40000 ALTER TABLE `tahun_ajaran` DISABLE KEYS */;
INSERT INTO `tahun_ajaran` (`idajaran`, `tahun_ajaran`, `status`) VALUES
	(13, '2018/2019', 1),
	(14, '2019/2020', 2),
	(15, '2020/2021', 2),
	(16, '2022/2023', 2);
/*!40000 ALTER TABLE `tahun_ajaran` ENABLE KEYS */;


-- Dumping structure for table malaka.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table malaka.user: ~3 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `role`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'admin', 'pof3Gqn_ogAiMa84TFqEe9c4s8k9vQFx', '$2y$13$vzgWqK3/H3yUOlTHFEVjg.mFMgGvQz8SdMhRq//ZKUIvxqoKwC2ei', NULL, 'admin@malaka.com', 10, '0000-00-00', '2019-02-22'),
	(2, 2, 'annisa', 'MiLflX5IYbe2bPuByFXC2EoKs9h9rjIT', '$2y$13$ohwToWQY9I1IHLClfnXJjOR/1WGjO0XY43gScTo.ZMqbw.7NdheTW', NULL, 'annisa@itbu.ac.id', 10, '2019-02-22', NULL),
	(3, 2, 'sugyono', 'vEaDO2Z3ZuB8UB4Hz9NtVkpYBixK6Gty', '$2y$13$2IEdWQoXOR2pHh/YBI0RBu2YjonS0fq6Yk65fHxhm9q5hheyzxCuO', NULL, 'sugiyono@itbu.ac.id', 10, '2019-02-22', NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Dumping structure for view malaka.v_pelunasan_spp
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_pelunasan_spp` (
	`idsiswa` CHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`idajaran` INT(11) NOT NULL,
	`nama_kelas` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`idjurusan` CHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`kode` CHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`idspp` INT(11) NOT NULL,
	`idtagihan` CHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`besaran` DOUBLE NOT NULL,
	`bulan` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_create` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_update` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`date_create` DATETIME NOT NULL,
	`date_update` DATETIME NULL
) ENGINE=MyISAM;


-- Dumping structure for view malaka.v_pelunasan_tagihan
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_pelunasan_tagihan` (
	`key_` CHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`idsiswa` CHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_lengkap` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`keterangan` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`ajaran` VARCHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci',
	`nama_kelas` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`idkelas` VARCHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci',
	`idjurusan` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`nominal` DOUBLE NULL,
	`tgl_payment` DATETIME NULL
) ENGINE=MyISAM;


-- Dumping structure for view malaka.v_tagihan_master
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_tagihan_master` (
	`idtagihan` CHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`Keterangan` VARCHAR(12) NOT NULL COLLATE 'utf8mb4_general_ci',
	`Nominal` DOUBLE NULL
) ENGINE=MyISAM;


-- Dumping structure for view malaka.v_tagihan_siswa
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_tagihan_siswa` (
	`idsiswa` CHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nominal` DOUBLE NULL,
	`keterangan` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`idkelas` INT(11) NULL,
	`tahun_ajaran` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`key_` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


-- Dumping structure for view malaka.v_tagihan_spp
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_tagihan_spp` (
	`idsiswa` CHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`idajaran` INT(11) NOT NULL,
	`nama_kelas` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`idjurusan` CHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`idkelas` INT(11) NOT NULL,
	`idspp` INT(11) NOT NULL,
	`idtagihan` CHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`besaran` DOUBLE NOT NULL,
	`bulan` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_create` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`user_update` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`date_create` DATETIME NOT NULL,
	`date_update` DATETIME NULL
) ENGINE=MyISAM;


-- Dumping structure for view malaka.v_tunggakan_siswa
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_tunggakan_siswa` (
	`key_` CHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`idsiswa` CHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`keterangan` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`ajaran` VARCHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci',
	`nama_kelas` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`idjurusan` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`kategori` BIGINT(20) NOT NULL,
	`nominal` DOUBLE NULL
) ENGINE=MyISAM;


-- Dumping structure for table malaka.wali_siswa
CREATE TABLE IF NOT EXISTS `wali_siswa` (
  `idsiswa` char(10) NOT NULL,
  `hubungan` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `penghasilan` float NOT NULL,
  `deskripsi` text,
  PRIMARY KEY (`idsiswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.wali_siswa: ~0 rows (approximately)
/*!40000 ALTER TABLE `wali_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `wali_siswa` ENABLE KEYS */;


-- Dumping structure for view malaka.v_pelunasan_spp
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_pelunasan_spp`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `v_pelunasan_spp` AS SELECT  d.idsiswa,a.idajaran, f.nama_kelas, f.idjurusan ,f.kode,b.* 
FROM tagihan a 
JOIN spp b ON a.idtagihan = b.idtagihan
JOIN kelas_group c ON a.idkelas = c.idkelas
JOIN detail_group d ON c.idgroup = d.idgroup 
LEFT JOIN spp_siswa e ON d.idgroup = c.idgroup 
					  AND e.idsiswa = d.idsiswa 
					  AND e.bulan = b.bulan 
					  AND b.besaran = e.besaran 
					  AND e.idgroup = c.idgroup
JOIN kelas f ON f.idkelas = c.idkelas					  
WHERE e.besaran IS NOT NULL ;


-- Dumping structure for view malaka.v_pelunasan_tagihan
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_pelunasan_tagihan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `v_pelunasan_tagihan` AS SELECT no_tagihan key_
		 ,x.idsiswa
		 ,y.nama_lengkap
		 ,keterangan
		 ,'-' ajaran
		 ,'-' nama_kelas
		 ,'-' idkelas
		 ,'-' idjurusan
		 ,nominal 
		 ,tgl_payment
FROM tagihan_biaya_tidaktetap x 
JOIN siswa y ON x.idsiswa = y.idsiswa WHERE flag = 1
UNION ALL
SELECT a.idtagihan key_
		,e.idsiswa
		,g.nama_lengkap
		,a.Keterangan
		,c.idajaran
		,c.nama_kelas
		,c.idkelas
		,c.idjurusan
		,a.Nominal 
		,f.date_create
FROM v_tagihan_master a 
JOIN tagihan b ON a.idtagihan = b.idtagihan
JOIN kelas c ON b.idkelas = c.idkelas 
				 AND b.idajaran = c.idajaran 
				 AND b.idjurusan = c.idjurusan
JOIN kelas_group d ON c.idkelas = d.idkelas
JOIN detail_group e ON e.idgroup = d.idgroup 
LEFT JOIN tagihan_siswa f ON f.idsiswa = e.idsiswa AND f.idgroup = e.idgroup AND f.nama_tagihan = a.Keterangan COLLATE utf8mb4_general_ci
JOIN siswa g ON e.idsiswa = g.idsiswa
WHERE f.besaran IS NOT NULL ;


-- Dumping structure for view malaka.v_tagihan_master
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_tagihan_master`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `v_tagihan_master` AS SELECT idtagihan
		,'administrasi' Keterangan
		,administrasi  Nominal
FROM tagihan
UNION ALL
SELECT idtagihan
		,'pengembangan' Keterangan
		,pengembangan  Nominal
FROM tagihan
UNION ALL
SELECT idtagihan
		,'praktik' Keterangan
		,praktik  Nominal
FROM tagihan
UNION ALL
SELECT idtagihan
		,'semester_a' Keterangan
		,semester_a  Nominal
FROM tagihan
UNION ALL
SELECT idtagihan
		,'semester_b' Keterangan
		,semester_b  Nominal
FROM tagihan
UNION ALL
SELECT  
		idtagihan
		,'lab_inggris' Keterangan
		,lab_inggris  Nominal
FROM tagihan
UNION ALL
SELECT idtagihan
		,'lks' Keterangan
		,lks  Nominal
FROM tagihan
UNION ALL
SELECT idtagihan
		,'perpustakaan' Keterangan
		,perpustakaan  Nominal
FROM tagihan
UNION ALL
SELECT idtagihan
		,'osis' Keterangan
		,osis  Nominal
FROM tagihan
UNION ALL
SELECT idtagihan
		,'mpls' Keterangan
		,mpls  Nominal
FROM tagihan
UNION ALL
SELECT idtagihan
		,'asuransi' Keterangan
		,asuransi  Nominal
FROM tagihan ;


-- Dumping structure for view malaka.v_tagihan_siswa
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_tagihan_siswa`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `v_tagihan_siswa` AS SELECT a.idsiswa
		,d.administrasi nominal
		,'Administrasi' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'administrasi' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran				  
UNION ALL
SELECT a.idsiswa
		,d.pengembangan nominal
		,'Pengembangan' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'pengembangan' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran					  
UNION ALL
SELECT a.idsiswa
		,d.praktik nominal
		,'Praktik' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'praktik' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran					  
UNION ALL
SELECT a.idsiswa
		,d.semester_a nominal
		,'Semester Ganjil' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'semester_a' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran					  
UNION ALL
SELECT a.idsiswa
		,d.semester_b nominal
		,'Semester Genap' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'semester_b' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran					  
UNION ALL
SELECT a.idsiswa
		,d.lab_inggris nominal
		,'Lab B.Inggris' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'lab_inggris' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran					  
UNION ALL				  				  
SELECT a.idsiswa
		,d.lks nominal
		,'Lks' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'lks' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran					  
UNION ALL				  				  
SELECT a.idsiswa
		,d.perpustakaan nominal
		,'Perpustakaan' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'perpustakaan' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran					  
UNION ALL				  				  
SELECT a.idsiswa
		,d.osis nominal
		,'Osis' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'osis' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas	
JOIN tahun_ajaran e ON d.idajaran = e.idajaran					  		
UNION ALL				  				 	
SELECT a.idsiswa
		,d.mpls nominal
		,'Mpls' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'mpls' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran					  					    
UNION ALL				  
SELECT a.idsiswa
		,d.asuransi nominal
		,'Asuransi' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'asuransi' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran					  				
UNION ALL				  
SELECT a.idsiswa
		,d.baju_olah_raga nominal
		,'Baju OlahRaga' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'baju_olah_raga' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran		 
UNION ALL				  
SELECT a.idsiswa
		,d.mos nominal
		,'Mos' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'mos' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran		  
UNION ALL				  
SELECT a.idsiswa
		,d.kunjungan_industri nominal
		,'Kunjungan Industri' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'kunjungan_industri' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran		  
UNION ALL				  
SELECT a.idsiswa
		,d.pkl nominal
		,'PKL' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'pkl' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran	
UNION ALL				  
SELECT a.idsiswa
		,d.pendalaman_materi nominal
		,'Pendalaman Materi' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'pendalaman_materi' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran	
UNION ALL				  
SELECT a.idsiswa
		,d.dana_alokasi nominal
		,'Dana Alokasi' keterangan
		,c.idkelas idkelas
		,e.tahun_ajaran
		,'dana_alokasi' key_
FROM detail_group a 
JOIN kelas_group b ON a.idgroup = b.idgroup
JOIN kelas c ON b.idkelas = c.idkelas
JOIN tagihan d ON c.idajaran = d.idajaran 
				  AND c.idjurusan = d.idjurusan 
				  AND c.idkelas = d.idkelas
JOIN tahun_ajaran e ON d.idajaran = e.idajaran	
UNION ALL
SELECT idsiswa
		,nominal
		,Keterangan
		,NULL ajaran
		,no_tagihan key_
		,'' tahun_ajaran
FROM tagihan_biaya_tidaktetap 
UNION ALL

SELECT idsiswa
		,besaran nominal
		,bulan keterangan
		,vts.idkelas
		,ta.tahun_ajaran
		,bulan key_
FROM v_tagihan_spp vts 
JOIN tahun_ajaran ta ON vts.idajaran = ta.idajaran ;


-- Dumping structure for view malaka.v_tagihan_spp
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_tagihan_spp`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `v_tagihan_spp` AS SELECT  d.idsiswa,a.idajaran, f.nama_kelas, f.idjurusan , c.idkelas, b.* 
FROM tagihan a 
JOIN spp b ON a.idtagihan = b.idtagihan
JOIN kelas_group c ON a.idkelas = c.idkelas
JOIN detail_group d ON c.idgroup = d.idgroup 
LEFT JOIN spp_siswa e ON d.idgroup = c.idgroup 
					  AND e.idsiswa = d.idsiswa 
					  AND e.bulan = b.bulan 
					  AND b.besaran = e.besaran 
					  AND e.idgroup = c.idgroup
JOIN kelas f ON f.idkelas = c.idkelas					  
WHERE e.besaran IS NULL ;


-- Dumping structure for view malaka.v_tunggakan_siswa
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_tunggakan_siswa`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `v_tunggakan_siswa` AS SELECT no_tagihan key_
		 ,idsiswa
		 ,keterangan
		 ,'-' ajaran
		 ,'-' nama_kelas
		 ,'-' idjurusan
		 ,0 kategori
		 ,nominal 
FROM tagihan_biaya_tidaktetap WHERE flag = 0
UNION ALL
SELECT a.idtagihan key_
		,e.idsiswa
		,a.Keterangan
		,c.idajaran
		,c.nama_kelas
		,c.idjurusan
		,1 kategori
		,a.Nominal 
FROM v_tagihan_master a 
JOIN tagihan b ON a.idtagihan = b.idtagihan
JOIN kelas c ON b.idkelas = c.idkelas 
				 AND b.idajaran = c.idajaran 
				 AND b.idjurusan = c.idjurusan
JOIN kelas_group d ON c.idkelas = d.idkelas
JOIN detail_group e ON e.idgroup = d.idgroup 
LEFT JOIN tagihan_siswa f ON f.idsiswa = e.idsiswa AND f.idgroup = e.idgroup AND f.nama_tagihan = a.Keterangan COLLATE utf8mb4_general_ci
WHERE f.besaran IS NULL ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
