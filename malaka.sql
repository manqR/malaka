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


-- Dumping structure for table malaka.biaya_tidak_tetap
CREATE TABLE IF NOT EXISTS `biaya_tidak_tetap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(50) DEFAULT NULL,
  `nominal` double DEFAULT NULL,
  `user_created` varchar(50) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table malaka.biaya_tidak_tetap: ~0 rows (approximately)
/*!40000 ALTER TABLE `biaya_tidak_tetap` DISABLE KEYS */;
INSERT INTO `biaya_tidak_tetap` (`id`, `keterangan`, `nominal`, `user_created`, `date_created`) VALUES
	(1, 'Wisuda', 15000000, 'admin', '2018-10-16 03:21:50');
/*!40000 ALTER TABLE `biaya_tidak_tetap` ENABLE KEYS */;


-- Dumping structure for table malaka.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `idcart` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` char(10) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nominal` double NOT NULL,
  `catatan` varchar(50) NOT NULL,
  `user_create` varchar(50) NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`idcart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.cart: ~0 rows (approximately)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


-- Dumping structure for table malaka.cart_detail
CREATE TABLE IF NOT EXISTS `cart_detail` (
  `idcart` int(11) DEFAULT NULL,
  `idtagihan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.cart_detail: ~0 rows (approximately)
/*!40000 ALTER TABLE `cart_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_detail` ENABLE KEYS */;


-- Dumping structure for table malaka.detail_group
CREATE TABLE IF NOT EXISTS `detail_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsiswa` char(50) NOT NULL,
  `idgroup` int(11) NOT NULL,
  `tgl_add` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.detail_group: ~3 rows (approximately)
/*!40000 ALTER TABLE `detail_group` DISABLE KEYS */;
INSERT INTO `detail_group` (`id`, `idsiswa`, `idgroup`, `tgl_add`) VALUES
	(59, '176001', 26, '2018-09-15 00:00:00'),
	(60, '176002', 27, '2018-09-15 00:00:00'),
	(61, '176003', 27, '2018-09-15 00:00:00');
/*!40000 ALTER TABLE `detail_group` ENABLE KEYS */;


-- Dumping structure for table malaka.jurusan
CREATE TABLE IF NOT EXISTS `jurusan` (
  `idjurusan` char(10) NOT NULL,
  `nama_jurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idjurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.jurusan: ~3 rows (approximately)
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` (`idjurusan`, `nama_jurusan`) VALUES
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
  PRIMARY KEY (`kode`,`idajaran`,`idjurusan`),
  KEY `idkelas` (`idkelas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.kelas: ~3 rows (approximately)
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` (`idkelas`, `kode`, `idajaran`, `idjurusan`, `nama_kelas`, `status`) VALUES
	(6, 'X', 13, 'TPM', 'Kelas 10', 1),
	(7, 'X', 13, 'TPO', 'Kelas 10', 1),
	(10, 'XII', 15, 'TKJ', 'Kelas 12', 1);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;


-- Dumping structure for table malaka.kelas_group
CREATE TABLE IF NOT EXISTS `kelas_group` (
  `idgroup` int(11) NOT NULL AUTO_INCREMENT,
  `idkelas` char(10) NOT NULL,
  `wali_kelas` varchar(50) NOT NULL,
  `status` enum('A','I') NOT NULL,
  PRIMARY KEY (`idgroup`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.kelas_group: ~2 rows (approximately)
/*!40000 ALTER TABLE `kelas_group` DISABLE KEYS */;
INSERT INTO `kelas_group` (`idgroup`, `idkelas`, `wali_kelas`, `status`) VALUES
	(26, '6', 'Faishal', 'A'),
	(27, '10', 'Bagus', 'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.pencatatan_keuangan: ~2 rows (approximately)
/*!40000 ALTER TABLE `pencatatan_keuangan` DISABLE KEYS */;
INSERT INTO `pencatatan_keuangan` (`idcatat`, `no_pencatatan`, `kategori`, `keterangan`, `nominal`, `flag`, `user_create`, `date_create`) VALUES
	(1, 'IN31573', 'pemasukan', 'abcd', 100000, 1, 'admin', '2018-10-17 05:57:21'),
	(2, 'OUT45484', 'pengeluaran', 'abcd', 100000, 1, 'admin', '2018-10-17 05:58:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.siswa: ~13 rows (approximately)
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
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.spp: ~144 rows (approximately)
/*!40000 ALTER TABLE `spp` DISABLE KEYS */;
INSERT INTO `spp` (`idspp`, `idtagihan`, `besaran`, `bulan`, `user_create`, `user_update`, `date_create`, `date_update`) VALUES
	(292, 'BIL0001', 300000, 'Juli', 'admin', NULL, '2018-09-15 10:43:25', NULL),
	(293, 'BIL0001', 300000, 'Agustus', 'admin', NULL, '2018-09-15 10:43:25', NULL),
	(294, 'BIL0001', 300000, 'September', 'admin', NULL, '2018-09-15 10:43:25', NULL),
	(295, 'BIL0001', 300000, 'Oktober', 'admin', NULL, '2018-09-15 10:43:25', NULL),
	(296, 'BIL0001', 300000, 'November', 'admin', NULL, '2018-09-15 10:43:25', NULL),
	(297, 'BIL0001', 300000, 'Desember', 'admin', NULL, '2018-09-15 10:43:25', NULL),
	(298, 'BIL0001', 300000, 'Januari', 'admin', NULL, '2018-09-15 10:43:26', NULL),
	(299, 'BIL0001', 300000, 'Februari', 'admin', NULL, '2018-09-15 10:43:26', NULL),
	(300, 'BIL0001', 300000, 'Maret', 'admin', NULL, '2018-09-15 10:43:26', NULL),
	(301, 'BIL0001', 300000, 'April', 'admin', NULL, '2018-09-15 10:43:26', NULL),
	(302, 'BIL0001', 300000, 'Mei', 'admin', NULL, '2018-09-15 10:43:26', NULL),
	(303, 'BIL0001', 300000, 'Juni', 'admin', NULL, '2018-09-15 10:43:26', NULL),
	(304, 'BIL0001', 300000, 'Juli', 'admin', NULL, '2018-09-15 10:44:26', NULL),
	(305, 'BIL0001', 300000, 'Agustus', 'admin', NULL, '2018-09-15 10:44:27', NULL),
	(306, 'BIL0001', 300000, 'September', 'admin', NULL, '2018-09-15 10:44:27', NULL),
	(307, 'BIL0001', 300000, 'Oktober', 'admin', NULL, '2018-09-15 10:44:27', NULL),
	(308, 'BIL0001', 300000, 'November', 'admin', NULL, '2018-09-15 10:44:27', NULL),
	(309, 'BIL0001', 300000, 'Desember', 'admin', NULL, '2018-09-15 10:44:27', NULL),
	(310, 'BIL0001', 300000, 'Januari', 'admin', NULL, '2018-09-15 10:44:27', NULL),
	(311, 'BIL0001', 300000, 'Februari', 'admin', NULL, '2018-09-15 10:44:27', NULL),
	(312, 'BIL0001', 300000, 'Maret', 'admin', NULL, '2018-09-15 10:44:27', NULL),
	(313, 'BIL0001', 300000, 'April', 'admin', NULL, '2018-09-15 10:44:27', NULL),
	(314, 'BIL0001', 300000, 'Mei', 'admin', NULL, '2018-09-15 10:44:27', NULL),
	(315, 'BIL0001', 300000, 'Juni', 'admin', NULL, '2018-09-15 10:44:27', NULL),
	(316, 'BIL0001', 300000, 'Juli', 'admin', NULL, '2018-09-15 10:45:08', NULL),
	(317, 'BIL0001', 300000, 'Agustus', 'admin', NULL, '2018-09-15 10:45:08', NULL),
	(318, 'BIL0001', 300000, 'September', 'admin', NULL, '2018-09-15 10:45:08', NULL),
	(319, 'BIL0001', 300000, 'Oktober', 'admin', NULL, '2018-09-15 10:45:08', NULL),
	(320, 'BIL0001', 300000, 'November', 'admin', NULL, '2018-09-15 10:45:08', NULL),
	(321, 'BIL0001', 300000, 'Desember', 'admin', NULL, '2018-09-15 10:45:08', NULL),
	(322, 'BIL0001', 300000, 'Januari', 'admin', NULL, '2018-09-15 10:45:08', NULL),
	(323, 'BIL0001', 300000, 'Februari', 'admin', NULL, '2018-09-15 10:45:08', NULL),
	(324, 'BIL0001', 300000, 'Maret', 'admin', NULL, '2018-09-15 10:45:08', NULL),
	(325, 'BIL0001', 300000, 'April', 'admin', NULL, '2018-09-15 10:45:08', NULL),
	(326, 'BIL0001', 300000, 'Mei', 'admin', NULL, '2018-09-15 10:45:08', NULL),
	(327, 'BIL0001', 300000, 'Juni', 'admin', NULL, '2018-09-15 10:45:09', NULL),
	(328, 'BIL0001', 300000, 'Juli', 'admin', NULL, '2018-09-15 10:45:17', NULL),
	(329, 'BIL0001', 300000, 'Agustus', 'admin', NULL, '2018-09-15 10:45:17', NULL),
	(330, 'BIL0001', 300000, 'September', 'admin', NULL, '2018-09-15 10:45:17', NULL),
	(331, 'BIL0001', 300000, 'Oktober', 'admin', NULL, '2018-09-15 10:45:17', NULL),
	(332, 'BIL0001', 300000, 'November', 'admin', NULL, '2018-09-15 10:45:17', NULL),
	(333, 'BIL0001', 300000, 'Desember', 'admin', NULL, '2018-09-15 10:45:17', NULL),
	(334, 'BIL0001', 300000, 'Januari', 'admin', NULL, '2018-09-15 10:45:17', NULL),
	(335, 'BIL0001', 300000, 'Februari', 'admin', NULL, '2018-09-15 10:45:18', NULL),
	(336, 'BIL0001', 300000, 'Maret', 'admin', NULL, '2018-09-15 10:45:18', NULL),
	(337, 'BIL0001', 300000, 'April', 'admin', NULL, '2018-09-15 10:45:18', NULL),
	(338, 'BIL0001', 300000, 'Mei', 'admin', NULL, '2018-09-15 10:45:18', NULL),
	(339, 'BIL0001', 300000, 'Juni', 'admin', NULL, '2018-09-15 10:45:18', NULL),
	(340, 'BIL0001', 300000, 'Juli', 'admin', NULL, '2018-09-15 10:45:33', NULL),
	(341, 'BIL0001', 300000, 'Agustus', 'admin', NULL, '2018-09-15 10:45:33', NULL),
	(342, 'BIL0001', 300000, 'September', 'admin', NULL, '2018-09-15 10:45:33', NULL),
	(343, 'BIL0001', 300000, 'Oktober', 'admin', NULL, '2018-09-15 10:45:34', NULL),
	(344, 'BIL0001', 300000, 'November', 'admin', NULL, '2018-09-15 10:45:34', NULL),
	(345, 'BIL0001', 300000, 'Desember', 'admin', NULL, '2018-09-15 10:45:34', NULL),
	(346, 'BIL0001', 300000, 'Januari', 'admin', NULL, '2018-09-15 10:45:34', NULL),
	(347, 'BIL0001', 300000, 'Februari', 'admin', NULL, '2018-09-15 10:45:34', NULL),
	(348, 'BIL0001', 300000, 'Maret', 'admin', NULL, '2018-09-15 10:45:34', NULL),
	(349, 'BIL0001', 300000, 'April', 'admin', NULL, '2018-09-15 10:45:34', NULL),
	(350, 'BIL0001', 300000, 'Mei', 'admin', NULL, '2018-09-15 10:45:34', NULL),
	(351, 'BIL0001', 300000, 'Juni', 'admin', NULL, '2018-09-15 10:45:34', NULL),
	(352, 'BIL0001', 300000, 'Juli', 'admin', NULL, '2018-09-15 10:45:55', NULL),
	(353, 'BIL0001', 300000, 'Agustus', 'admin', NULL, '2018-09-15 10:45:55', NULL),
	(354, 'BIL0001', 300000, 'September', 'admin', NULL, '2018-09-15 10:45:55', NULL),
	(355, 'BIL0001', 300000, 'Oktober', 'admin', NULL, '2018-09-15 10:45:55', NULL),
	(356, 'BIL0001', 300000, 'November', 'admin', NULL, '2018-09-15 10:45:56', NULL),
	(357, 'BIL0001', 300000, 'Desember', 'admin', NULL, '2018-09-15 10:45:56', NULL),
	(358, 'BIL0001', 300000, 'Januari', 'admin', NULL, '2018-09-15 10:45:56', NULL),
	(359, 'BIL0001', 300000, 'Februari', 'admin', NULL, '2018-09-15 10:45:56', NULL),
	(360, 'BIL0001', 300000, 'Maret', 'admin', NULL, '2018-09-15 10:45:56', NULL),
	(361, 'BIL0001', 300000, 'April', 'admin', NULL, '2018-09-15 10:45:56', NULL),
	(362, 'BIL0001', 300000, 'Mei', 'admin', NULL, '2018-09-15 10:45:56', NULL),
	(363, 'BIL0001', 300000, 'Juni', 'admin', NULL, '2018-09-15 10:45:56', NULL),
	(364, 'BIL0001', 300000, 'Juli', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(365, 'BIL0001', 300000, 'Agustus', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(366, 'BIL0001', 300000, 'September', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(367, 'BIL0001', 300000, 'Oktober', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(368, 'BIL0001', 300000, 'November', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(369, 'BIL0001', 300000, 'Desember', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(370, 'BIL0001', 300000, 'Januari', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(371, 'BIL0001', 300000, 'Februari', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(372, 'BIL0001', 300000, 'Maret', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(373, 'BIL0001', 300000, 'April', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(374, 'BIL0001', 300000, 'Mei', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(375, 'BIL0001', 300000, 'Juni', 'admin', NULL, '2018-09-15 10:50:45', NULL),
	(376, 'BIL0001', 300000, 'Juli', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(377, 'BIL0001', 300000, 'Agustus', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(378, 'BIL0001', 300000, 'September', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(379, 'BIL0001', 300000, 'Oktober', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(380, 'BIL0001', 300000, 'November', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(381, 'BIL0001', 300000, 'Desember', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(382, 'BIL0001', 300000, 'Januari', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(383, 'BIL0001', 300000, 'Februari', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(384, 'BIL0001', 300000, 'Maret', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(385, 'BIL0001', 300000, 'April', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(386, 'BIL0001', 300000, 'Mei', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(387, 'BIL0001', 300000, 'Juni', 'admin', NULL, '2018-09-15 10:51:27', NULL),
	(388, 'BIL0001', 300000, 'Juli', 'admin', NULL, '2018-09-15 10:51:34', NULL),
	(389, 'BIL0001', 300000, 'Agustus', 'admin', NULL, '2018-09-15 10:51:35', NULL),
	(390, 'BIL0001', 300000, 'September', 'admin', NULL, '2018-09-15 10:51:35', NULL),
	(391, 'BIL0001', 300000, 'Oktober', 'admin', NULL, '2018-09-15 10:51:35', NULL),
	(392, 'BIL0001', 300000, 'November', 'admin', NULL, '2018-09-15 10:51:35', NULL),
	(393, 'BIL0001', 300000, 'Desember', 'admin', NULL, '2018-09-15 10:51:35', NULL),
	(394, 'BIL0001', 300000, 'Januari', 'admin', NULL, '2018-09-15 10:51:35', NULL),
	(395, 'BIL0001', 300000, 'Februari', 'admin', NULL, '2018-09-15 10:51:35', NULL),
	(396, 'BIL0001', 300000, 'Maret', 'admin', NULL, '2018-09-15 10:51:35', NULL),
	(397, 'BIL0001', 300000, 'April', 'admin', NULL, '2018-09-15 10:51:35', NULL),
	(398, 'BIL0001', 300000, 'Mei', 'admin', NULL, '2018-09-15 10:51:35', NULL),
	(399, 'BIL0001', 300000, 'Juni', 'admin', NULL, '2018-09-15 10:51:35', NULL),
	(400, 'BIL0001', 300000, 'Juli', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(401, 'BIL0001', 300000, 'Agustus', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(402, 'BIL0001', 300000, 'September', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(403, 'BIL0001', 300000, 'Oktober', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(404, 'BIL0001', 300000, 'November', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(405, 'BIL0001', 300000, 'Desember', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(406, 'BIL0001', 300000, 'Januari', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(407, 'BIL0001', 300000, 'Februari', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(408, 'BIL0001', 300000, 'Maret', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(409, 'BIL0001', 300000, 'April', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(410, 'BIL0001', 300000, 'Mei', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(411, 'BIL0001', 300000, 'Juni', 'admin', NULL, '2018-09-15 10:54:06', NULL),
	(412, 'BIL0002', 150000, 'Juli', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(413, 'BIL0002', 150000, 'Agustus', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(414, 'BIL0002', 150000, 'September', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(415, 'BIL0002', 150000, 'Oktober', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(416, 'BIL0002', 150000, 'November', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(417, 'BIL0002', 150000, 'Desember', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(418, 'BIL0002', 150000, 'Januari', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(419, 'BIL0002', 150000, 'Februari', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(420, 'BIL0002', 150000, 'Maret', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(421, 'BIL0002', 150000, 'April', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(422, 'BIL0002', 150000, 'Mei', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(423, 'BIL0002', 150000, 'Juni', 'admin', NULL, '2018-09-15 10:57:00', NULL),
	(424, 'BIL001', 300000, 'Juli', 'admin', NULL, '2018-09-15 11:05:37', NULL),
	(425, 'BIL001', 300000, 'Agustus', 'admin', NULL, '2018-09-15 11:05:37', NULL),
	(426, 'BIL001', 300000, 'September', 'admin', NULL, '2018-09-15 11:05:37', NULL),
	(427, 'BIL001', 300000, 'Oktober', 'admin', NULL, '2018-09-15 11:05:37', NULL),
	(428, 'BIL001', 300000, 'November', 'admin', NULL, '2018-09-15 11:05:37', NULL),
	(429, 'BIL001', 300000, 'Desember', 'admin', NULL, '2018-09-15 11:05:37', NULL),
	(430, 'BIL001', 300000, 'Januari', 'admin', NULL, '2018-09-15 11:05:37', NULL),
	(431, 'BIL001', 300000, 'Februari', 'admin', NULL, '2018-09-15 11:05:37', NULL),
	(432, 'BIL001', 300000, 'Maret', 'admin', NULL, '2018-09-15 11:05:37', NULL),
	(433, 'BIL001', 300000, 'April', 'admin', NULL, '2018-09-15 11:05:37', NULL),
	(434, 'BIL001', 300000, 'Mei', 'admin', NULL, '2018-09-15 11:05:37', NULL),
	(435, 'BIL001', 300000, 'Juni', 'admin', NULL, '2018-09-15 11:05:38', NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.spp_siswa: ~2 rows (approximately)
/*!40000 ALTER TABLE `spp_siswa` DISABLE KEYS */;
INSERT INTO `spp_siswa` (`idtagihan_siswa`, `idsiswa`, `idgroup`, `bulan`, `besaran`, `user_create`, `date_create`) VALUES
	(32, '176001', 26, 'Juli', 300000, 'admin', '2018-09-15 11:15:59'),
	(35, '176001', 26, 'Agustus', 300000, 'admin', '2018-10-17 05:32:26');
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
  `user_create` varchar(50) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_update` varchar(50) DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`idtagihan`,`idkelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.tagihan: ~0 rows (approximately)
/*!40000 ALTER TABLE `tagihan` DISABLE KEYS */;
INSERT INTO `tagihan` (`idtagihan`, `idkelas`, `idajaran`, `idjurusan`, `administrasi`, `pengembangan`, `praktik`, `semester_a`, `semester_b`, `lab_inggris`, `lks`, `perpustakaan`, `osis`, `mpls`, `asuransi`, `user_create`, `date_create`, `user_update`, `date_update`) VALUES
	('BIL001', '6', 13, 'TPM', 50000, 200000, 200000, 300000, 300000, 150000, 250000, 150000, 200000, 150000, 200000, 'admin', '2018-09-15 11:05:38', NULL, NULL);
/*!40000 ALTER TABLE `tagihan` ENABLE KEYS */;


-- Dumping structure for table malaka.tagihan_biaya_tidaktetap
CREATE TABLE IF NOT EXISTS `tagihan_biaya_tidaktetap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idbiaya` int(11) NOT NULL DEFAULT '0',
  `no_tagihan` char(10) NOT NULL,
  `idsiswa` char(10) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nominal` double NOT NULL,
  `flag` int(11) NOT NULL,
  `tgl_assign` datetime NOT NULL,
  `tgl_payment` datetime DEFAULT NULL,
  `user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.tagihan_biaya_tidaktetap: ~3 rows (approximately)
/*!40000 ALTER TABLE `tagihan_biaya_tidaktetap` DISABLE KEYS */;
INSERT INTO `tagihan_biaya_tidaktetap` (`id`, `idbiaya`, `no_tagihan`, `idsiswa`, `keterangan`, `nominal`, `flag`, `tgl_assign`, `tgl_payment`, `user`) VALUES
	(9, 1, 'BIL86936', '176001', 'Wisuda', 15000000, 1, '2018-10-16 04:47:19', '2018-10-16 05:28:47', 'admin'),
	(10, 1, 'BIL43704', '176001', 'Wisuda', 15000000, 0, '2018-10-16 04:48:17', '2018-10-16 05:26:04', 'admin'),
	(11, 1, 'BIL40678', '176001', 'Wisuda', 15000000, 1, '2018-10-17 05:32:59', '2018-10-17 05:33:32', 'admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Dumping data for table malaka.tagihan_siswa: ~2 rows (approximately)
/*!40000 ALTER TABLE `tagihan_siswa` DISABLE KEYS */;
INSERT INTO `tagihan_siswa` (`idtagihan_siswa`, `idsiswa`, `idgroup`, `nama_tagihan`, `besaran`, `keterangan`, `user_create`, `date_create`) VALUES
	(25, '176001', 26, 'administrasi', 50000, 'Administrasi', 'admin', '2018-10-16 12:26:33'),
	(26, '176001', 26, 'pengembangan', 200000, 'Pengembangan', 'admin', '2018-10-17 02:21:25');
/*!40000 ALTER TABLE `tagihan_siswa` ENABLE KEYS */;


-- Dumping structure for table malaka.tahun_ajaran
CREATE TABLE IF NOT EXISTS `tahun_ajaran` (
  `idajaran` int(11) NOT NULL AUTO_INCREMENT,
  `tahun_ajaran` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`idajaran`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table malaka.tahun_ajaran: ~3 rows (approximately)
/*!40000 ALTER TABLE `tahun_ajaran` DISABLE KEYS */;
INSERT INTO `tahun_ajaran` (`idajaran`, `tahun_ajaran`, `status`) VALUES
	(13, '2018/2019', 1),
	(14, '2019/2020', 1),
	(15, '2020/2021', 1);
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
