-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
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


-- Dumping structure for table malaka.detail_group
CREATE TABLE IF NOT EXISTS `detail_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` char(50) NOT NULL,
  `idgroup` int(11) NOT NULL,
  `tgl_add` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.detail_group: ~4 rows (approximately)
/*!40000 ALTER TABLE `detail_group` DISABLE KEYS */;
INSERT INTO `detail_group` (`id`, `idsiswa`, `idgroup`, `tgl_add`) VALUES
	(14, '176001', 12, '2018-08-24 00:00:00');
/*!40000 ALTER TABLE `detail_group` ENABLE KEYS */;


-- Dumping structure for table malaka.jurusan
CREATE TABLE IF NOT EXISTS `jurusan` (
  `idjurusan` char(10) NOT NULL,
  `nama_jurusan` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idjurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.jurusan: ~2 rows (approximately)
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` (`idjurusan`, `nama_jurusan`, `status`) VALUES
	('AA', 'AA', 1),
	('MM', 'MM', 1);
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;


-- Dumping structure for table malaka.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `idkelas` char(10) NOT NULL,
  `nama_kelas` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idkelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.kelas: ~2 rows (approximately)
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` (`idkelas`, `nama_kelas`, `status`) VALUES
	('XI', 'Kelas 11', 1),
	('XII', 'Kelas 12', 1);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;


-- Dumping structure for table malaka.kelas_group
CREATE TABLE IF NOT EXISTS `kelas_group` (
  `idgroup` int(11) NOT NULL AUTO_INCREMENT,
  `idajaran` int(11) NOT NULL,
  `idkelas` char(10) NOT NULL,
  `idjurusan` char(10) NOT NULL,
  `wali_kelas` varchar(50) NOT NULL,
  `status` enum('A','I') NOT NULL,
  PRIMARY KEY (`idgroup`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.kelas_group: ~4 rows (approximately)
/*!40000 ALTER TABLE `kelas_group` DISABLE KEYS */;
INSERT INTO `kelas_group` (`idgroup`, `idajaran`, `idkelas`, `idjurusan`, `wali_kelas`, `status`) VALUES
	(12, 5, 'XI', 'MM', 'Bagus', 'A'),
	(13, 5, 'XI', 'MM', 'Faishal', 'A'),
	(15, 5, 'XI', 'AA', 'Bagusx', 'A');
/*!40000 ALTER TABLE `kelas_group` ENABLE KEYS */;


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.siswa: ~0 rows (approximately)
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` (`idsiswa`, `nama_lengkap`, `jenis_kelamin`, `nisn`, `no_seri_ijazah_smp`, `no_seri_skhun_smp`, `no_ujian_nasional`, `nik`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `kelurahan`, `kecamatan`, `kota`, `provinsi`, `transportasi`, `tlp_rumah`, `hp`, `email`, `status_kps`, `no_kps`, `tinggi_badan`, `berat_badan`, `jarak_tempat_tinggal`, `waktu_tempuh`, `jml_saudara`, `user_create`, `date_create`, `user_update`, `date_update`, `urutan`) VALUES
	('176001', 'Abie Nugraha', 'L', '21770861', 'DN-01 DI/06 0081374', 'DN-01 D 0102083', '', '367109280320006', '', '0000-00-00', 'Islam', 'Kp. Sumur Rt.08/10 Klender Duren Sawit Jaktim', 'Klender', 'Duren Sawit', 'Jakarta Timur', 'DKI Jakarta', 'Umum', '', '87885293983', 'email1@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 1),
	('176002', 'Achmad Bagas Maulana', 'L', '25348468', 'DN-01 DI/06 0093467', 'DN-01 D 0119171', '', '3175012706020001', '', '0000-00-00', 'Islam', 'Jl. Pisangan Baru Timur VII No.9 Rt.11/10 Mataman Jaktim', 'Pisangan Baru', 'Matraman', 'Jakarta Timur', 'DKI Jakarta', 'Umum', '', '89652581811', 'email2@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 2),
	('176003', 'Adihtya Setia Budi', 'L', '23299571', 'DN-01 DI/06 0079734', 'DN-01 D 0100648', '', '', '', '0000-00-00', 'Islam', 'Kp. Sumur Rt.07/07 No. 152 Klender Jaktim', 'Klender', 'Duren Sawit', 'Jakarta Timur', 'DKI Jakarta', 'Motor', '', '86777767673', 'email3@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 3),
	('176004', 'Andriyanto', 'L', '9766816', 'DN-01 DI/06 0089595', 'DN-01 D 0110945', '', '3175061104001002', '', '0000-00-00', 'Islam', 'Jl. Pulo Lio Rt.09/11 Pulo Gadung Cakung Jaktim', 'Pulo Gadung', 'Cakung', 'Jakarta Timur', 'DKI Jakarta', 'Umum', '', '83870858765', 'email4@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 4),
	('176005', 'Angel', 'P', '33938706', 'DN-01 DI/13 0006445', 'DN-01 D 0110331', '', '3603140204020004', '', '0000-00-00', 'Kristen', 'Jl. Raya Komarudin Rt.05/06 No.88 B Ujung Krawang Cakung Jaktim', 'Ujung Krawang', 'Cakung', 'Jakarta Timur', 'DKI Jakarta', 'Motor', '', '81512864715', 'email5@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 5),
	('176006', 'Auzan Abi Nubli', 'L', '26211299', 'DN-01 DI/06 0083781', 'DN-01 D 0103740', '', '3175011601020011', '', '0000-00-00', 'Islam', 'Moncokerto III/16 Rt.07/13 Utan Kayu Selatan Jaktim', 'Utan Kayu Selatan', 'Matraman', 'Jakarta Timur', 'DKI Jakarta', 'Motor', '', '8176819914', 'email6@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 6),
	('176007', 'Bunga Anggraini Lestari', 'P', '14935196', 'DN-01 DI/06 0082800', 'DN-01 D 0102758', '', '3175076703010012', '', '0000-00-00', 'Islam', 'Jl. Madrasah Rt.01/10 Cilungup Duren Sawit Jaktim', 'Cilungup', 'Duren Sawit', 'Jakarta Timur', 'DKI Jakarta', 'Umum', '', '87875114226', 'email7@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 7),
	('176008', 'Charissa Kamila Azzahra', 'P', '13657490', 'DN-01 DI/06 0083418', 'DN-01 DI/06 0083418', '', '', '', '0000-00-00', 'Islam', 'Kp. Buaran Baru Jl. Cobra I E/17 Rt.07/15 Duren Sawit Jaktim ', 'Duren Sawit', 'Duren Sawit', 'Jakarta Timur', 'DKI Jakarta', 'Umum', '', '82122672741', 'email8@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 8),
	('176009', 'Dea Ardelia', 'P', '16257334', 'DN-01 DI/06 0082836', 'DN-01 D 0102723', '', '317507561101006', '', '0000-00-00', 'Islam', 'Rusun Prumnas Klender Blk.47/III/II Malaka Jaya Jaktim', 'Malaka jaya', 'Duren Sawit', 'Jakarta Timur', 'DKI Jakarta', 'Motor', '', '87876262910', 'email9@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 9),
	('176010', 'Dea Putri Amanda', 'P', '21617255', 'DN-01 DI/06 0083701', 'DN-01 D 0103657', '', '317507460602004', '', '0000-00-00', 'Islam', 'Bintara 17 Rt.10/03 Bintara Jaya Bekasi Barat', 'Bintara', 'Bekasi Barat', 'Bekasi', 'Jawa Barat', 'Umum', '', '87877488012', 'email10@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 10),
	('176011', 'Difa Saif Abdillah', 'L', '11390863', 'DN-01 DI/06 0084822', 'DN-01 D 0105958', '', '3175080804010002', '', '0000-00-00', 'Islam', 'Pangkalan Jati V Rt.07/05 No.78 Cipinang Melayu Jaktim', 'Cipinang Melayu', 'Makasar', 'Jakarta Timur', 'DKI Jakarta', 'Motor', '', '87837981256', 'email11@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 11),
	('176012', 'Dzaki Febriano', 'L', '20556468', 'DN-01 DI/13 0008913', 'DN-01 DI/13 0008913', '', '317507210202014', '', '0000-00-00', 'Islam', 'Jl. Nusa Indah V/4/26 Rt.04/04 Malaka Jaya Jaktim', 'Malaka jaya', 'Duren Sawit', 'Jakarta Timur', 'DKI Jakarta', 'Umum', '', '', 'email12@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 12),
	('176013', 'Fadel Fillah Akbar', 'L', '10087563', 'DN-01 DI/06 0091682', 'DN-01 D 0113137', '', '31750302120100011', '', '0000-00-00', 'Islam', 'Cipinang Lontar Rt.10/06 Cipinang Muara Jatinegara Jaktim', 'Cipinang Muara', 'Jatinegara', 'Jakarta Timur', 'DKI Jakarta', 'Umum', '218573155', '', 'email13@yahoo.com', 0, '', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 13);
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.spp: ~36 rows (approximately)
/*!40000 ALTER TABLE `spp` DISABLE KEYS */;
INSERT INTO `spp` (`idspp`, `idtagihan`, `besaran`, `bulan`, `user_create`, `user_update`, `date_create`, `date_update`) VALUES
	(148, 'MM001', 300000, 'Juli', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:45'),
	(149, 'MM001', 300000, 'Agustus', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:45'),
	(150, 'MM001', 300000, 'September', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:45'),
	(151, 'MM001', 300000, 'Oktober', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:46'),
	(152, 'MM001', 300000, 'November', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:46'),
	(153, 'MM001', 300000, 'Desember', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:46'),
	(154, 'MM001', 300000, 'Januari', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:46'),
	(155, 'MM001', 300000, 'Februari', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:46'),
	(156, 'MM001', 300000, 'Maret', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:46'),
	(157, 'MM001', 300000, 'April', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:46'),
	(158, 'MM001', 300000, 'Mei', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:46'),
	(159, 'MM001', 300000, 'Juni', 'admin', 'admin', '2018-07-24 13:18:08', '2018-07-25 04:12:46'),
	(160, 'BIl2202', 300000, 'Juli', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(161, 'BIl2202', 300000, 'Agustus', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(162, 'BIl2202', 300000, 'September', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(163, 'BIl2202', 300000, 'Oktober', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(164, 'BIl2202', 300000, 'November', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(165, 'BIl2202', 300000, 'Desember', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(166, 'BIl2202', 300000, 'Januari', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(167, 'BIl2202', 300000, 'Februari', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(168, 'BIl2202', 300000, 'Maret', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(169, 'BIl2202', 300000, 'April', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(170, 'BIl2202', 300000, 'Mei', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(171, 'BIl2202', 300000, 'Juni', 'admin', NULL, '2018-08-17 13:09:45', NULL),
	(172, 'BILAA01', 150000, 'Juli', 'admin', NULL, '2018-08-18 12:44:28', NULL),
	(173, 'BILAA01', 150000, 'Agustus', 'admin', NULL, '2018-08-18 12:44:29', NULL),
	(174, 'BILAA01', 150000, 'September', 'admin', NULL, '2018-08-18 12:44:29', NULL),
	(175, 'BILAA01', 150000, 'Oktober', 'admin', NULL, '2018-08-18 12:44:29', NULL),
	(176, 'BILAA01', 150000, 'November', 'admin', NULL, '2018-08-18 12:44:29', NULL),
	(177, 'BILAA01', 150000, 'Desember', 'admin', NULL, '2018-08-18 12:44:29', NULL),
	(178, 'BILAA01', 150000, 'Januari', 'admin', NULL, '2018-08-18 12:44:29', NULL),
	(179, 'BILAA01', 150000, 'Februari', 'admin', NULL, '2018-08-18 12:44:29', NULL),
	(180, 'BILAA01', 150000, 'Maret', 'admin', NULL, '2018-08-18 12:44:29', NULL),
	(181, 'BILAA01', 150000, 'April', 'admin', NULL, '2018-08-18 12:44:29', NULL),
	(182, 'BILAA01', 150000, 'Mei', 'admin', NULL, '2018-08-18 12:44:29', NULL),
	(183, 'BILAA01', 150000, 'Juni', 'admin', NULL, '2018-08-18 12:44:29', NULL);
/*!40000 ALTER TABLE `spp` ENABLE KEYS */;


-- Dumping structure for table malaka.spp_siswa
CREATE TABLE IF NOT EXISTS `spp_siswa` (
  `idtagihan_siswa` int(11) NOT NULL,
  `idsiswa` char(10) NOT NULL,
  `idgroup` int(11) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `besaran` float NOT NULL,
  `user_create` varchar(50) NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`idtagihan_siswa`,`idsiswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.spp_siswa: ~2 rows (approximately)
/*!40000 ALTER TABLE `spp_siswa` DISABLE KEYS */;
INSERT INTO `spp_siswa` (`idtagihan_siswa`, `idsiswa`, `idgroup`, `bulan`, `besaran`, `user_create`, `date_create`) VALUES
	(1, '18010010', 12, 'Juli', 300000, 'admin', '2018-08-18 17:39:42'),
	(2, '18010010', 12, 'Agustus', 3300000, 'admin', '2018-08-18 17:40:53');
/*!40000 ALTER TABLE `spp_siswa` ENABLE KEYS */;


-- Dumping structure for table malaka.tagihan
CREATE TABLE IF NOT EXISTS `tagihan` (
  `idtagihan` char(10) NOT NULL,
  `idjurusan` char(10) NOT NULL,
  `idkelas` char(10) NOT NULL,
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
  `user_create` varchar(50) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_update` varchar(50) DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`idtagihan`,`idjurusan`,`idkelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.tagihan: ~3 rows (approximately)
/*!40000 ALTER TABLE `tagihan` DISABLE KEYS */;
INSERT INTO `tagihan` (`idtagihan`, `idjurusan`, `idkelas`, `administrasi`, `pengembangan`, `praktik`, `semester_a`, `semester_b`, `lab_inggris`, `lks`, `perpustakaan`, `osis`, `mpls`, `asuransi`, `user_create`, `date_create`, `user_update`, `date_update`) VALUES
	('BIl2202', 'MM', 'XII', 50000, 1500000, 2000000, 300000, 300000, 200000, 150000, 150000, 150000, 250000, 250000, 'admin', '2018-08-17 13:09:45', NULL, NULL),
	('BILAA01', 'AA', 'XI', 50000, 1500000, 2000000, 300000, 300000, 200000, 300000, 150000, 150000, 250000, 250000, 'admin', '2018-08-18 12:44:29', NULL, NULL),
	('MM001', 'MM', 'XI', 50000, 0, 2000000, 300000, 300000, 200000, 300000, 150000, 150000, 250000, 250000, 'admin', '2018-07-24 11:07:27', 'admin', '2018-07-25 04:12:46');
/*!40000 ALTER TABLE `tagihan` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.tagihan_siswa: ~0 rows (approximately)
/*!40000 ALTER TABLE `tagihan_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagihan_siswa` ENABLE KEYS */;


-- Dumping structure for table malaka.tahun_ajaran
CREATE TABLE IF NOT EXISTS `tahun_ajaran` (
  `idajaran` int(11) NOT NULL AUTO_INCREMENT,
  `tahun_ajaran` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`idajaran`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table malaka.tahun_ajaran: ~2 rows (approximately)
/*!40000 ALTER TABLE `tahun_ajaran` DISABLE KEYS */;
INSERT INTO `tahun_ajaran` (`idajaran`, `tahun_ajaran`, `status`) VALUES
	(5, '2018/2019', 1),
	(6, '1020/3023', 1);
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
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table malaka.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `role`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
	(1, 0, 'admin', 'pof3Gqn_ogAiMa84TFqEe9c4s8k9vQFx', '$2y$13$vzgWqK3/H3yUOlTHFEVjg.mFMgGvQz8SdMhRq//ZKUIvxqoKwC2ei', NULL, 'admin@malaka.com', 10, 1531711643, 1531711643);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


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
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
