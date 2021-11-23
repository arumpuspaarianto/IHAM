-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 03:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `rfid_uid` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `rfid_uid`, `username`, `email`, `password`, `usertype`) VALUES
(22, 'qwertyuiop', 'M Insanul Kamil', 'kamil@iham.com', 'admin', 'admin'),
(26, '', 'admin', 'admin@gg.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `rekammedis`
--

CREATE TABLE `rekammedis` (
  `id` int(255) NOT NULL,
  `tanggal_masuk` timestamp NOT NULL DEFAULT current_timestamp(),
  `kode_rfid` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `poli` varchar(100) NOT NULL,
  `usia` varchar(50) NOT NULL,
  `diagnosa` varchar(100) NOT NULL,
  `kategori_pasien` varchar(100) NOT NULL,
  `gol_darah` varchar(100) NOT NULL,
  `tb` varchar(20) NOT NULL,
  `bb` varchar(100) NOT NULL,
  `hasil_diagnosa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekammedis`
--

INSERT INTO `rekammedis` (`id`, `tanggal_masuk`, `kode_rfid`, `nama`, `poli`, `usia`, `diagnosa`, `kategori_pasien`, `gol_darah`, `tb`, `bb`, `hasil_diagnosa`) VALUES
(127648, '2021-11-17 09:59:52', '6325467', 'rani mayaomi', 'wonorejo 4/36', '16', 'lambung', 'dewasa', 'O', '178', '73', 'maag'),
(674564, '2021-11-17 10:03:31', '875694', 'arum harum', 'jantung', '15', 'deg degan', 'bayi', 'B', '165', '65', 'galau'),
(845984, '2021-11-24 10:03:31', '865796', 'kamil', 'mata', '27', 'minus', 'dewasa', 'A', '187', '65', 'silinder'),
(8567598, '2021-11-10 10:07:28', '8657965', 'Awang', 'umum', '21', 'kaki bengkak', 'anak', 'B', '165', '56', 'cantengan'),
(74568567, '2021-11-23 09:59:52', '8567856', 'maya sari', 'gigi dan mulut', '23', 'sariawan', 'dewasa', 'AB', '154', '46', 'panas dalam');

-- --------------------------------------------------------

--
-- Table structure for table `tb_area_1`
--

CREATE TABLE `tb_area_1` (
  `id` int(11) NOT NULL,
  `rfid_uid` varchar(30) NOT NULL,
  `timestamp` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `nama_anak` varchar(30) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `total` float NOT NULL,
  `tot_all` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_area_1`
--

INSERT INTO `tb_area_1` (`id`, `rfid_uid`, `timestamp`, `nama_anak`, `posX`, `posY`, `total`, `tot_all`) VALUES
(1447, '00000000000', '2021-11-22 09:28:17.587198', ' ', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_area_2`
--

CREATE TABLE `tb_area_2` (
  `id` int(11) NOT NULL,
  `timestamp` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `rfid_uid` varchar(30) NOT NULL,
  `nama_anak` varchar(30) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `total` float NOT NULL,
  `tot_all` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_area_2`
--

INSERT INTO `tb_area_2` (`id`, `timestamp`, `rfid_uid`, `nama_anak`, `posX`, `posY`, `total`, `tot_all`) VALUES
(2217, '2021-11-22 09:28:17.590334', '00000000000', ' ', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_area_3`
--

CREATE TABLE `tb_area_3` (
  `id` int(11) NOT NULL,
  `timestamp` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `rfid_uid` varchar(30) NOT NULL,
  `nama_anak` varchar(30) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `total` float NOT NULL,
  `tot_all` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_area_3`
--

INSERT INTO `tb_area_3` (`id`, `timestamp`, `rfid_uid`, `nama_anak`, `posX`, `posY`, `total`, `tot_all`) VALUES
(23846, '2021-11-22 09:28:17.593625', '00000000000', ' ', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_catinventory`
--

CREATE TABLE `tb_catinventory` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_catinventory`
--

INSERT INTO `tb_catinventory` (`id`, `category_name`, `creation_date`, `updation_date`) VALUES
(1, 'Alat Medis', '2021-11-19 07:09:07', NULL),
(17, 'tes', '2021-11-19 07:20:28', '2021-11-20 03:27:17'),
(18, 'Fasilitas Umumm', '2021-11-19 14:07:29', '2021-11-22 01:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_clinical_pasien`
--

CREATE TABLE `tb_clinical_pasien` (
  `tag_id` varchar(50) NOT NULL,
  `tanggal_masuk` varchar(50) NOT NULL,
  `jenis_pasien` varchar(50) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `dokter` varchar(50) NOT NULL,
  `diagnosa` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `asal_ruang` varchar(50) NOT NULL,
  `ruang_pemindahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_clinical_pasien`
--

INSERT INTO `tb_clinical_pasien` (`tag_id`, `tanggal_masuk`, `jenis_pasien`, `nama_pasien`, `dokter`, `diagnosa`, `status`, `asal_ruang`, `ruang_pemindahan`) VALUES
('1111111', '12 November 2021', '', 'Dodo', 'dr. Gian', 'Batuk', 'Rawat Jalan', 'AB-28', 'AA-112'),
('1123433', '30 Oktober 2021', '', 'Leuloch', 'dr. Garreth', 'Vertigo', 'Sembuh', 'AB-028', 'AB-011'),
('1123458', '26 Desember 2021', '', 'Vina', 'dr.Vivi', 'Batuk', 'Pasien Baru', 'AB-036', 'AB-001'),
('1213146', '26 Juli 2021', '', 'Lisa', 'dr.Cedric', 'Insomnia', 'Dalam Perawatan', 'AB-011', 'AB-007'),
('121343', '12 November 2021', '', 'Ariana', 'dr. Gian', 'Batuk', 'Rawat Inap', 'AB-280', 'AA-213'),
('143466', '12 November 2021', '', 'Dodo', 'Ina', 'Vertigo', 'Rawat Jalan', 'AA-123', 'AA-023'),
('14346688', '19 Oktober 2021', '', 'Aniyaa', 'dr. Gian', 'Vertigo', 'Rawat Jalan', 'AA-123', 'AA-023'),
('14365', '12 November 2021', '', 'Ani', 'Ina', 'Vertigo', 'Rawat Jalan', 'AA-009', 'AA-123'),
('1537523', '03 September 2021', '', 'Genry', 'dr. Mina', 'Anemia', 'Dalam Perawatan', 'AC-018', 'AB-015'),
('165537', '26 Desember 2021', '', 'Tio', 'dr. Dexter', 'Pusing', 'Dalam Perawatan', 'AA-031', 'AB-009'),
('1766268', '09 Oktober 2021', '', 'Frank', 'dr.Cedric', 'Batuk', 'Pasien Baru', 'AC-010', 'AB-022'),
('187876', '16 Agustus 2021', '', 'Tika', 'dr. Mina', 'Vertigo', 'Dalam Perawatan', 'AB-014', 'AB-032'),
('44444', '03 September 2021', 'Anak', 'Chacha', 'dr. Gian', 'Insomnia', 'Rawat Inap', 'AA-073', 'AA-198');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id` int(100) NOT NULL,
  `rfid_uid` varchar(100) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `nik_dokter` varchar(100) NOT NULL,
  `jenis_kelamin_dokter` varchar(100) NOT NULL,
  `alamat_dokter` varchar(100) NOT NULL,
  `kontak_dokter` int(15) NOT NULL,
  `spesialis` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id`, `rfid_uid`, `nama_dokter`, `nik_dokter`, `jenis_kelamin_dokter`, `alamat_dokter`, `kontak_dokter`, `spesialis`, `timestamp`) VALUES
(7, 'DOK003', 'dr, Kamil  Panotogomo', '455532010001', 'Pria', 'Gresik', 2147483647, 'Teknologi Informasi', '2021-11-22 02:05:50'),
(8, 'DOK001', 'dr. Budi, Sp.OG', '455532010001', 'Pria', 'Jl. Bali', 2147483647, 'Kandungan', '2021-11-22 02:12:31');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil2_dokter`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil2_dokter` (
`rfid_uid` varchar(30)
,`nama_dokter` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil2_karyawannonmedis`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil2_karyawannonmedis` (
`rfid_uid` varchar(30)
,`nama_karyawan` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil2_medicalequipment`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil2_medicalequipment` (
`rfid_uid` varchar(30)
,`nama_alat` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil2_pasienbayi`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil2_pasienbayi` (
`rfid_uid` varchar(30)
,`nama_anak` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil2_pasiendewasa`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil2_pasiendewasa` (
`rfid_uid` varchar(30)
,`nama_pasien` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil2_perawat`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil2_perawat` (
`rfid_uid` varchar(30)
,`nama_perawat` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasilscan1_asetbarang`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasilscan1_asetbarang` (
`nama_alat` varchar(50)
,`timestamp` timestamp
,`rfid_uid` varchar(100)
,`deskripsi` varchar(50)
,`penanggung_jawab` varchar(50)
,`status_asset` varchar(30)
,`peminjam` varchar(50)
,`jumlah` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasilscan1_asetbayi`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasilscan1_asetbayi` (
`nama_anak` varchar(50)
,`rfid_uid` varchar(100)
,`id_pengenal` varchar(50)
,`nama_ibu` varchar(50)
,`penanggung_jawab_bayi` varchar(50)
,`alamat` varchar(50)
,`status` varchar(50)
,`timestamp` timestamp
,`jumlah` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasilscan2_asetbarang`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasilscan2_asetbarang` (
`nama_alat` varchar(50)
,`timestamp` timestamp(6)
,`rfid_uid` varchar(30)
,`deskripsi` varchar(50)
,`penanggung_jawab` varchar(50)
,`status_asset` varchar(30)
,`peminjam` varchar(50)
,`jumlah` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasilscan2_asetbayi`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasilscan2_asetbayi` (
`nama_anak` varchar(50)
,`rfid_uid` varchar(30)
,`id_pengenal` varchar(50)
,`nama_ibu` varchar(50)
,`penanggung_jawab_bayi` varchar(50)
,`alamat` varchar(50)
,`status` varchar(50)
,`timestamp` timestamp(6)
,`jumlah` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil_dokter`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil_dokter` (
`rfid_uid` varchar(100)
,`nama_dokter` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil_karyawannonmedis`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil_karyawannonmedis` (
`rfid_uid` varchar(100)
,`nama_karyawan` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil_medicalequipment`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil_medicalequipment` (
`rfid_uid` varchar(100)
,`nama_alat` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil_pasienbayi`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil_pasienbayi` (
`rfid_uid` varchar(100)
,`nama_anak` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil_pasiendewasa`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil_pasiendewasa` (
`rfid_uid` varchar(100)
,`nama_pasien` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil_pemeriksaan`
--

CREATE TABLE `tb_hasil_pemeriksaan` (
  `rfid_uid` varchar(100) NOT NULL,
  `tipe_penyakit` varchar(100) NOT NULL,
  `diagnosa` varchar(100) NOT NULL,
  `rekomendasi_obat` varchar(100) NOT NULL,
  `tindakan` int(11) NOT NULL,
  `tingkat_keparahan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_hasil_perawat`
-- (See below for the actual view)
--
CREATE TABLE `tb_hasil_perawat` (
`rfid_uid` varchar(100)
,`nama_perawat` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `tb_inventory`
--

CREATE TABLE `tb_inventory` (
  `id` int(11) NOT NULL,
  `kode_rfid` varchar(255) DEFAULT NULL,
  `nama_aset` varchar(255) DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `lokasi_penyimpanan` varchar(255) DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_inventory`
--

INSERT INTO `tb_inventory` (`id`, `kode_rfid`, `nama_aset`, `kategori`, `lokasi_penyimpanan`, `update_date`) VALUES
(23, '99', 'Tensimeter', 23, 'zcxzczc', '2021-11-19 08:02:32'),
(24, '87', 'Stetoskopic', 24, 'RAK023', '2021-11-19 14:08:13'),
(25, '103', 'Testes', 25, 'sdfsdfdsf', '2021-11-22 02:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwaldokter`
--

CREATE TABLE `tb_jadwaldokter` (
  `id` int(11) NOT NULL,
  `dokter_id` varchar(255) NOT NULL,
  `hari_praktik` varchar(255) NOT NULL,
  `jam_mulai` varchar(255) NOT NULL,
  `jam_selesai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jadwaldokter`
--

INSERT INTO `tb_jadwaldokter` (`id`, `dokter_id`, `hari_praktik`, `jam_mulai`, `jam_selesai`) VALUES
(6, 'DOK002', 'Rabu', '13:14', '02:20');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kamar`
--

CREATE TABLE `tb_kamar` (
  `nama` int(11) NOT NULL,
  `jenis_ruangan` int(11) NOT NULL,
  `kelas_ruangan` int(11) NOT NULL,
  `kategori_pasien` int(11) NOT NULL,
  `kapasitas_ruangan` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id` int(11) NOT NULL,
  `kode_rfid` varchar(255) DEFAULT NULL,
  `nama_karyawan` varchar(255) DEFAULT NULL,
  `jenis_kelamin_karyawan` varchar(255) DEFAULT NULL,
  `alamat_karyawan` varchar(255) DEFAULT NULL,
  `divisi_karyawan` varchar(255) NOT NULL,
  `nik_karyawan` int(16) NOT NULL,
  `kontak_karyawan` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id`, `kode_rfid`, `nama_karyawan`, `jenis_kelamin_karyawan`, `alamat_karyawan`, `divisi_karyawan`, `nik_karyawan`, `kontak_karyawan`) VALUES
(5, 'KAR20211511', 'KAR20211511', 'Pria', 'City Home Regency E10', 'Keamanan', 2147483647, 2147483647),
(6, 'KAR002', 'Daffa Firyandhika', 'Pria', 'Cirebon', '', 0, 0),
(7, 'KAR008', 'Guruh', 'Pria', 'City Home Regency E9', 'Tukang Pukul', 849829492, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `tb_non_medis`
--

CREATE TABLE `tb_non_medis` (
  `id` int(100) NOT NULL,
  `rfid_uid` varchar(100) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `id_pengenal` varchar(100) NOT NULL,
  `usia` int(100) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id` int(255) NOT NULL,
  `tanggal_masuk` timestamp NOT NULL DEFAULT current_timestamp(),
  `kode_rfid` varchar(255) NOT NULL,
  `nik` int(16) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `Penanggungjawab` varchar(255) NOT NULL,
  `diagnosa` varchar(255) NOT NULL,
  `dokter_penanggungjawab` varchar(100) NOT NULL,
  `kategori_pasien` varchar(255) NOT NULL,
  `status_pasien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id`, `tanggal_masuk`, `kode_rfid`, `nik`, `nama`, `tanggal_lahir`, `alamat`, `Penanggungjawab`, `diagnosa`, `dokter_penanggungjawab`, `kategori_pasien`, `status_pasien`) VALUES
(3, '2021-11-04 07:16:36', '10311910000001', 2147483647, 'Mohammad Insanul Kamil P', '2021-11-04', 'Gresik', '', 'Flu', 'Dr A', 'Dewasa', 'Rawat Inap'),
(4, '2021-11-04 07:17:13', '10311910000002', 2147483647, 'Yoga Dwi', '2021-11-04', 'Petemon, Surabaya', '', 'Diare', 'Dr B', 'Dewasa', 'Rawat Jalan'),
(6, '2021-11-04 08:41:50', '10311910000008', 2147483647, 'Guruh Putra', '2021-11-24', 'Gresik', '', 'Batuk', 'Dr E', 'Anak', 'Rawat Inap'),
(7, '2021-11-15 04:28:24', '10311910000048', 2147483647, 'dsfsdfs', '2021-11-15', 'aca', '', 'fssfsf', 'sfsfsf', 'Dewasa', 'Rawat Jalan'),
(8, '2021-11-17 07:18:36', '14141414', 2147483647, 'Upin Ipin', '2021-11-17', 'Durian Runtuh', 'Tok Dalang', 'Kebotakan dini', 'Dr X', 'Bayi', 'Rawat Jalan'),
(9, '2021-11-18 11:23:35', 'tfttftf', 0, 'ghjgjyv', '2021-11-18', 'gbcgbcgb', 'fgtdtdgt', 'ddrddd', 'fdgfg', 'Anak', 'Rawat Inap');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien_dewasa`
--

CREATE TABLE `tb_pasien_dewasa` (
  `id` int(50) NOT NULL,
  `rfid_uid` varchar(50) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `id_pengenal` varchar(50) NOT NULL,
  `usia` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `tinggi_badan` int(100) NOT NULL,
  `berat_badan` int(100) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien_rawat_inap`
--

CREATE TABLE `tb_pasien_rawat_inap` (
  `nama` varchar(100) NOT NULL,
  `id_kasur` varchar(100) NOT NULL,
  `nama_ruangan_perawatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_perawat`
--

CREATE TABLE `tb_perawat` (
  `id` int(100) NOT NULL,
  `rfid_uid` varchar(100) NOT NULL,
  `nama_perawat` varchar(100) NOT NULL,
  `nik_perawat` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kontak_perawat` int(14) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_perawat`
--

INSERT INTO `tb_perawat` (`id`, `rfid_uid`, `nama_perawat`, `nik_perawat`, `jenis_kelamin`, `alamat`, `kontak_perawat`, `timestamp`) VALUES
(1, '239183918391', 'Aji', '09090909', 'Pria', 'Gresik', 2147483647, '2021-11-22 02:07:36'),
(2, '239183918391', 'qweq', '133131', 'Pria', 'qweqw', 0, '2021-11-04 04:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peta`
--

CREATE TABLE `tb_peta` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `width` float NOT NULL,
  `length` float NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `numerotation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_peta`
--

INSERT INTO `tb_peta` (`id`, `nom`, `width`, `length`, `posX`, `posY`, `numerotation`) VALUES
(1, 'e2000020271601980440aeaf', 10, 10, 10, 10, 'Solipah Bin Sukijah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pinjaminventory`
--

CREATE TABLE `tb_pinjaminventory` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `id_penanggungjawab` varchar(255) DEFAULT NULL,
  `tgl_pinjam` timestamp NOT NULL DEFAULT current_timestamp(),
  `tgl_kembali` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status_pengembalian` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pinjaminventory`
--

INSERT INTO `tb_pinjaminventory` (`id`, `asset_id`, `id_penanggungjawab`, `tgl_pinjam`, `tgl_kembali`, `status_pengembalian`) VALUES
(17, 100, 'KAR20211511', '2021-11-16 12:55:43', '2021-11-17 04:27:18', 1),
(18, 103, 'KAR002', '2021-11-17 04:58:53', '2021-11-17 04:58:57', 1),
(19, 100, 'KAR002', '2021-11-17 05:33:17', '2021-11-17 05:35:37', 1),
(20, 103, 'KAR002', '2021-11-17 05:35:49', '2021-11-17 05:36:06', 1),
(21, 0, 'KAR002', '2021-11-17 08:37:11', '2021-11-17 08:37:21', 1),
(22, 100, 'KAR002', '2021-11-19 07:21:38', '2021-11-19 07:21:47', 1),
(23, 99, 'KAR002', '2021-11-19 08:02:55', '2021-11-19 08:03:01', 1),
(24, 87, 'KAR002', '2021-11-19 14:08:30', '2021-11-19 14:08:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_reader_scan`
--

CREATE TABLE `tb_reader_scan` (
  `id` int(100) NOT NULL,
  `rfid_uid` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `reader_id` varchar(2) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_reader_scan`
--

INSERT INTO `tb_reader_scan` (`id`, `rfid_uid`, `nama`, `reader_id`, `timestamp`) VALUES
(1, 'E20000202016019804409101', 'putri', '7/', '0000-00-00 00:00:00'),
(2, 'E20000202016019804409102', 'putra', '7/', '0000-00-00 00:00:00'),
(3, 'E20000202016019804409103', 'gina', '7/', '0000-00-00 00:00:00'),
(4, 'E20000202016019804409104', 'devi', '7/', '0000-00-00 00:00:00'),
(5, 'E20000202016019804409105', 'sani', '7/', '0000-00-00 00:00:00'),
(6, 'E20000202016019804409106', 'ahmad', '7/', '0000-00-00 00:00:00'),
(7, 'E20000202016019804409107', 'adi', '7/', '0000-00-00 00:00:00'),
(8, 'E20000202016019804409108', 'budi', '7/', '0000-00-00 00:00:00'),
(9, 'E20000202016019804409109', 'ari', '7/', '0000-00-00 00:00:00'),
(10, 'E20000202016019804409110', 'aji', '7/', '0000-00-00 00:00:00'),
(11, 'E20000202016019804409111', 'tino', '7/', '0000-00-00 00:00:00'),
(12, 'E20000202016019804409112', 'toni ', '7/', '0000-00-00 00:00:00'),
(13, 'E20000202016019804409113', 'fika', '7/', '0000-00-00 00:00:00'),
(14, 'E20000202016019804409114', 'cassandra', '7/', '0000-00-00 00:00:00'),
(15, 'E20000202016019804409115', 'jihyo', '7/', '0000-00-00 00:00:00'),
(16, 'E20000202016019804409116', 'jeongyeon', '7/', '0000-00-00 00:00:00'),
(17, 'E20000202016019804409117', 'tzuyu', '7/', '0000-00-00 00:00:00'),
(18, 'E20000202016019804409118', 'nayeon', '7/', '0000-00-00 00:00:00'),
(19, 'E20000202016019804409119', 'mina', '7/', '0000-00-00 00:00:00'),
(20, 'E20000202016019804409120', 'dahyun', '7/', '0000-00-00 00:00:00'),
(18020, 'rfid_uid', 'nama_anak', 'ti', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_reader_scan2`
--

CREATE TABLE `tb_reader_scan2` (
  `id` int(255) NOT NULL,
  `rfid_uid` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `reader_id` varchar(30) DEFAULT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_reader_scan2`
--

INSERT INTO `tb_reader_scan2` (`id`, `rfid_uid`, `nama`, `reader_id`, `timestamp`) VALUES
(1, 'E20000202016019804409101', 'putri', '2', '0000-00-00 00:00:00.000000'),
(2, 'E20000202016019804409102', 'putra', '2', '0000-00-00 00:00:00.000000'),
(3, 'E20000202016019804409103', 'gina', '2', '0000-00-00 00:00:00.000000'),
(4, 'E20000202016019804409104', 'devi', '2', '0000-00-00 00:00:00.000000'),
(5, 'E20000202016019804409105', 'sani', '2', '0000-00-00 00:00:00.000000'),
(6, 'E20000202016019804409106', 'ahmad', '2', '0000-00-00 00:00:00.000000'),
(7, 'E20000202016019804409107', 'adi', '2', '0000-00-00 00:00:00.000000'),
(8, 'E20000202016019804409108', 'budi', '2', '0000-00-00 00:00:00.000000'),
(9, 'E20000202016019804409109', 'ari', '2', '0000-00-00 00:00:00.000000'),
(10, 'E20000202016019804409110', 'aji', '2', '0000-00-00 00:00:00.000000'),
(11, 'E20000202016019804409111', 'tino', '2', '0000-00-00 00:00:00.000000'),
(12, 'E20000202016019804409112', 'toni ', '2', '0000-00-00 00:00:00.000000'),
(13, 'E20000202016019804409113', 'fika', '2', '0000-00-00 00:00:00.000000'),
(14, 'E20000202016019804409114', 'cassandra', '2', '0000-00-00 00:00:00.000000'),
(15, 'E20000202016019804409115', 'jihyo', '2', '0000-00-00 00:00:00.000000'),
(16, 'E20000202016019804409116', 'jeongyeon', '2', '0000-00-00 00:00:00.000000'),
(17, 'E20000202016019804409117', 'tzuyu', '2', '0000-00-00 00:00:00.000000'),
(18, 'E20000202016019804409118', 'nayeon', '2', '0000-00-00 00:00:00.000000'),
(19, 'E20000202016019804409119', 'mina', '2', '0000-00-00 00:00:00.000000'),
(20, 'E20000202016019804409120', 'dahyun', '2', '0000-00-00 00:00:00.000000'),
(19517, 'rfid_uid', 'nama_anak', 'reader_id', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_registrasi`
--

CREATE TABLE `tb_registrasi` (
  `id` int(100) NOT NULL,
  `rfid_uid` varchar(100) NOT NULL,
  `time_stamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_registrasi`
--

INSERT INTO `tb_registrasi` (`id`, `rfid_uid`, `time_stamp`, `status`) VALUES
(1, 'UUFGVWVVUU686876JHJ', '0000-00-00 00:00:00.000000', '`1'),
(2, '72337268e6286', '2021-11-24 15:09:55.000000', '1'),
(3, 'dsajgdjasgda7782387', '0000-00-00 00:00:00.000000', '1'),
(4, 'UUFGVWVVUU686876JHJ', '2021-11-02 14:28:01.000000', '1'),
(5, 'udhuidshushhhs', '0000-00-00 00:00:00.000000', '1'),
(22, 'qwertyuiop', '2021-11-23 00:38:44.000000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rfid`
--

CREATE TABLE `tb_rfid` (
  `id` int(5) NOT NULL,
  `rfid_uid` varchar(50) NOT NULL,
  `nama_alat` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `tanggal` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `penanggung_jawab` varchar(50) NOT NULL,
  `status_asset` varchar(30) NOT NULL,
  `peminjam` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rfid`
--

INSERT INTO `tb_rfid` (`id`, `rfid_uid`, `nama_alat`, `deskripsi`, `tanggal`, `penanggung_jawab`, `status_asset`, `peminjam`, `keterangan`) VALUES
(67, 'E20000202716016304408D11', 'kursi roda', 'tempat duduk', '2021-07-03 09:22:28.179721', 'hariyanto', 'tersedia', '', ''),
(68, 'E20000202716015704408452', 'stetoskop', 'alat bantu pemeriksaan', '2021-07-03 09:25:41.244374', 'Dr. Cindy Puri Herdiana', 'tersedia', '', ''),
(71, 'E2000020271601980440AEAF', 'otoskop', 'alat pemeriksa telinga', '2021-07-03 09:34:54.353988', 'Indira Rahardjo', 'tersedia', '', ''),
(72, 'E2000020271601880440A63A', 'Alat EKG', 'Alat pemeriksa Jantung', '2021-07-03 09:55:40.123897', 'Dr. hambali', 'tersedia', '', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_scanner1_assetbarang`
-- (See below for the actual view)
--
CREATE TABLE `tb_scanner1_assetbarang` (
`rfid_uid` varchar(100)
,`nama_alat` varchar(50)
,`deskripsi` varchar(50)
,`penanggung_jawab` varchar(50)
,`status_asset` varchar(30)
,`peminjam` varchar(50)
,`timestamp` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_scanner1_assetbayi`
-- (See below for the actual view)
--
CREATE TABLE `tb_scanner1_assetbayi` (
`rfid_uid` varchar(100)
,`id_pengenal` varchar(50)
,`nama_anak` varchar(50)
,`nama_ibu` varchar(50)
,`penanggung_jawab_bayi` varchar(50)
,`alamat` varchar(50)
,`status` varchar(50)
,`timestamp` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_scanner2_assetbarang`
-- (See below for the actual view)
--
CREATE TABLE `tb_scanner2_assetbarang` (
`rfid_uid` varchar(30)
,`nama_alat` varchar(50)
,`deskripsi` varchar(50)
,`penanggung_jawab` varchar(50)
,`status_asset` varchar(30)
,`peminjam` varchar(50)
,`timestamp` timestamp(6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_scanner2_assetbayi`
-- (See below for the actual view)
--
CREATE TABLE `tb_scanner2_assetbayi` (
`rfid_uid` varchar(30)
,`id_pengenal` varchar(50)
,`nama_anak` varchar(50)
,`nama_ibu` varchar(50)
,`penanggung_jawab_bayi` varchar(50)
,`alamat` varchar(50)
,`status` varchar(50)
,`timestamp` timestamp(6)
);

-- --------------------------------------------------------

--
-- Table structure for table `tb_status_kamar`
--

CREATE TABLE `tb_status_kamar` (
  `id_kamar` int(100) NOT NULL,
  `jumlah_pasien` int(100) NOT NULL,
  `kapasitas` int(100) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_stat_anak`
--

CREATE TABLE `tb_stat_anak` (
  `id` int(4) NOT NULL,
  `rfid_uid` varchar(50) NOT NULL,
  `id_pengenal` varchar(50) NOT NULL,
  `nama_anak` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `penanggung_jawab_bayi` varchar(50) NOT NULL,
  `waktu_masuk` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `alamat` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_stat_anak`
--

INSERT INTO `tb_stat_anak` (`id`, `rfid_uid`, `id_pengenal`, `nama_anak`, `nama_ibu`, `penanggung_jawab_bayi`, `waktu_masuk`, `alamat`, `status`, `keterangan`) VALUES
(1, 'E20000202016019804409101', '111', 'putri', 'fina', 'sri', '0000-00-00 00:00:00.000000', 'jl merak', 'perawatan', ''),
(2, 'E20000202016019804409102', '112', 'putra', 'marfuah', 'rina', '0000-00-00 00:00:00.000000', 'jl puri', 'perawatan', ''),
(3, 'E20000202016019804409103', '113', 'gina', 'sri', 'rani', '0000-00-00 00:00:00.000000', 'jl delima', 'perawatan', ''),
(4, 'E20000202016019804409104', '114', 'devi', 'heni', 'ferry', '0000-00-00 00:00:00.000000', 'jl jambu', 'perawatan', ''),
(5, 'E20000202016019804409105', '115', 'sani', 'hany', 'puji', '0000-00-00 00:00:00.000000', 'jl nanas', 'perawatan', ''),
(6, 'E20000202016019804409106', '116', 'ahmad', 'fitri', 'ana', '0000-00-00 00:00:00.000000', 'jl juwet', 'perawatan', ''),
(7, 'E20000202016019804409107', '117', 'adi', 'fira', 'cinta', '0000-00-00 00:00:00.000000', 'jl rambutan', 'perawatan', ''),
(8, 'E20000202016019804409108', '118', 'budi', 'zubaidah', 'chandra', '0000-00-00 00:00:00.000000', 'jl jawa', 'perawatan', ''),
(9, 'E20000202016019804409109', '119', 'ari', 'siti', 'felly', '0000-00-00 00:00:00.000000', 'jl kalimanta', 'perawatan', ''),
(10, 'E20000202016019804409110', '120', 'aji', 'wati', 'agustin', '0000-00-00 00:00:00.000000', 'jl duku', 'perawatan', ''),
(11, 'E20000202016019804409111', '121', 'tino', 'rosmala', 'dila', '0000-00-00 00:00:00.000000', 'jl kedondong', 'perawatan', ''),
(12, 'E20000202016019804409112', '122', 'toni ', 'anira', 'dini', '0000-00-00 00:00:00.000000', 'jl sulawesi', 'perawatan', ''),
(13, 'E20000202016019804409113', '123', 'fika', 'ani', 'rumi', '0000-00-00 00:00:00.000000', 'jl cempedak', 'perawatan', ''),
(14, 'E20000202016019804409114', '124', 'cassandra', 'nita', 'andin', '0000-00-00 00:00:00.000000', 'jl kelapa', 'perawatan', ''),
(15, 'E20000202016019804409115', '125', 'jihyo', 'mili', 'elsa', '0000-00-00 00:00:00.000000', 'jl srikaya', 'perawatan', ''),
(16, 'E20000202016019804409116', '126', 'jeongyeon', 'dita', 'fifin', '0000-00-00 00:00:00.000000', 'jl langsep', 'perawatan', ''),
(17, 'E20000202016019804409117', '127', 'tzuyu', 'dira', 'sumi', '0000-00-00 00:00:00.000000', 'jl sumatra', 'perawatan', ''),
(18, 'E20000202016019804409118', '128', 'nayeon', 'cindy', 'sinta', '0000-00-00 00:00:00.000000', 'jl kenari', 'perawatan', ''),
(19, 'E20000202016019804409119', '129', 'mina', 'rista', 'anti', '0000-00-00 00:00:00.000000', 'jl kupang', 'perawatan', ''),
(20, 'E20000202016019804409120', '130', 'dahyun', 'tari', 'ina', '0000-00-00 00:00:00.000000', 'jl kupang indah', 'perawatan', ''),
(44, 'E200002027160173044095DE', '123456', 'aji', 'sia', 'sui', '2021-07-04 08:30:28.904604', 'Jl Jambu no 57 RT 007 RW 002 Tambaksari', 'perawatan', ''),
(45, 'rfid_id', 'id_pengenal', 'nama_anak', 'nama_ibu', 'penanggung_jawab_bayi', '0000-00-00 00:00:00.000000', 'alamat', 'status ', 'keterangan');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_asset`
-- (See below for the actual view)
--
CREATE TABLE `view_asset` (
`id` int(11)
,`kode_rfid` varchar(255)
,`nama_aset` varchar(255)
,`category_name` varchar(255)
,`lokasi_penyimpanan` varchar(255)
,`assetid` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_jadwaldokter`
-- (See below for the actual view)
--
CREATE TABLE `view_jadwaldokter` (
`nama_dokter` varchar(100)
,`spesialis` varchar(100)
,`hari_praktik` varchar(255)
,`jam_mulai` varchar(255)
,`jam_selesai` varchar(255)
,`jadwalid` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_peminjaman`
-- (See below for the actual view)
--
CREATE TABLE `view_peminjaman` (
`nama_karyawan` varchar(255)
,`kode_rfid` varchar(255)
,`nama_aset` varchar(255)
,`kategori` int(11)
,`tgl_pinjam` timestamp
,`tgl_kembali` timestamp
,`rid` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil2_dokter`
--
DROP TABLE IF EXISTS `tb_hasil2_dokter`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil2_dokter`  AS SELECT `tb_reader_scan2`.`rfid_uid` AS `rfid_uid`, `tb_dokter`.`nama_dokter` AS `nama_dokter` FROM (`tb_reader_scan2` left join `tb_dokter` on(`tb_reader_scan2`.`rfid_uid` = `tb_dokter`.`rfid_uid`)) ORDER BY `tb_reader_scan2`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil2_karyawannonmedis`
--
DROP TABLE IF EXISTS `tb_hasil2_karyawannonmedis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil2_karyawannonmedis`  AS SELECT `tb_reader_scan2`.`rfid_uid` AS `rfid_uid`, `tb_non_medis`.`nama_karyawan` AS `nama_karyawan` FROM (`tb_reader_scan2` join `tb_non_medis` on(`tb_reader_scan2`.`rfid_uid` = `tb_non_medis`.`rfid_uid`)) ORDER BY `tb_reader_scan2`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil2_medicalequipment`
--
DROP TABLE IF EXISTS `tb_hasil2_medicalequipment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil2_medicalequipment`  AS SELECT `tb_reader_scan2`.`rfid_uid` AS `rfid_uid`, `tb_rfid`.`nama_alat` AS `nama_alat` FROM (`tb_reader_scan2` join `tb_rfid` on(`tb_reader_scan2`.`rfid_uid` = `tb_rfid`.`rfid_uid`)) ORDER BY `tb_reader_scan2`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil2_pasienbayi`
--
DROP TABLE IF EXISTS `tb_hasil2_pasienbayi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil2_pasienbayi`  AS SELECT `tb_reader_scan2`.`rfid_uid` AS `rfid_uid`, `tb_stat_anak`.`nama_anak` AS `nama_anak` FROM (`tb_reader_scan2` left join `tb_stat_anak` on(`tb_reader_scan2`.`rfid_uid` = `tb_stat_anak`.`rfid_uid`)) ORDER BY `tb_reader_scan2`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil2_pasiendewasa`
--
DROP TABLE IF EXISTS `tb_hasil2_pasiendewasa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil2_pasiendewasa`  AS SELECT `tb_reader_scan2`.`rfid_uid` AS `rfid_uid`, `tb_pasien_dewasa`.`nama_pasien` AS `nama_pasien` FROM (`tb_reader_scan2` join `tb_pasien_dewasa` on(`tb_reader_scan2`.`rfid_uid` = `tb_pasien_dewasa`.`rfid_uid`)) ORDER BY `tb_reader_scan2`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil2_perawat`
--
DROP TABLE IF EXISTS `tb_hasil2_perawat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil2_perawat`  AS SELECT `tb_reader_scan2`.`rfid_uid` AS `rfid_uid`, `tb_perawat`.`nama_perawat` AS `nama_perawat` FROM (`tb_reader_scan2` join `tb_perawat` on(`tb_reader_scan2`.`rfid_uid` = `tb_perawat`.`rfid_uid`)) ORDER BY `tb_reader_scan2`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasilscan1_asetbarang`
--
DROP TABLE IF EXISTS `tb_hasilscan1_asetbarang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasilscan1_asetbarang`  AS SELECT `tb_scanner1_assetbarang`.`nama_alat` AS `nama_alat`, max(`tb_scanner1_assetbarang`.`timestamp`) AS `timestamp`, `tb_scanner1_assetbarang`.`rfid_uid` AS `rfid_uid`, `tb_scanner1_assetbarang`.`deskripsi` AS `deskripsi`, `tb_scanner1_assetbarang`.`penanggung_jawab` AS `penanggung_jawab`, `tb_scanner1_assetbarang`.`status_asset` AS `status_asset`, `tb_scanner1_assetbarang`.`peminjam` AS `peminjam`, count(0) AS `jumlah` FROM `tb_scanner1_assetbarang` GROUP BY `tb_scanner1_assetbarang`.`nama_alat` ORDER BY max(`tb_scanner1_assetbarang`.`timestamp`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasilscan1_asetbayi`
--
DROP TABLE IF EXISTS `tb_hasilscan1_asetbayi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasilscan1_asetbayi`  AS SELECT `tb_scanner1_assetbayi`.`nama_anak` AS `nama_anak`, `tb_scanner1_assetbayi`.`rfid_uid` AS `rfid_uid`, `tb_scanner1_assetbayi`.`id_pengenal` AS `id_pengenal`, `tb_scanner1_assetbayi`.`nama_ibu` AS `nama_ibu`, `tb_scanner1_assetbayi`.`penanggung_jawab_bayi` AS `penanggung_jawab_bayi`, `tb_scanner1_assetbayi`.`alamat` AS `alamat`, `tb_scanner1_assetbayi`.`status` AS `status`, max(`tb_scanner1_assetbayi`.`timestamp`) AS `timestamp`, count(0) AS `jumlah` FROM `tb_scanner1_assetbayi` GROUP BY `tb_scanner1_assetbayi`.`nama_anak` ORDER BY max(`tb_scanner1_assetbayi`.`timestamp`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasilscan2_asetbarang`
--
DROP TABLE IF EXISTS `tb_hasilscan2_asetbarang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasilscan2_asetbarang`  AS SELECT `tb_scanner2_assetbarang`.`nama_alat` AS `nama_alat`, max(`tb_scanner2_assetbarang`.`timestamp`) AS `timestamp`, `tb_scanner2_assetbarang`.`rfid_uid` AS `rfid_uid`, `tb_scanner2_assetbarang`.`deskripsi` AS `deskripsi`, `tb_scanner2_assetbarang`.`penanggung_jawab` AS `penanggung_jawab`, `tb_scanner2_assetbarang`.`status_asset` AS `status_asset`, `tb_scanner2_assetbarang`.`peminjam` AS `peminjam`, count(0) AS `jumlah` FROM `tb_scanner2_assetbarang` GROUP BY `tb_scanner2_assetbarang`.`nama_alat` ORDER BY max(`tb_scanner2_assetbarang`.`timestamp`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasilscan2_asetbayi`
--
DROP TABLE IF EXISTS `tb_hasilscan2_asetbayi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasilscan2_asetbayi`  AS SELECT `tb_scanner2_assetbayi`.`nama_anak` AS `nama_anak`, `tb_scanner2_assetbayi`.`rfid_uid` AS `rfid_uid`, `tb_scanner2_assetbayi`.`id_pengenal` AS `id_pengenal`, `tb_scanner2_assetbayi`.`nama_ibu` AS `nama_ibu`, `tb_scanner2_assetbayi`.`penanggung_jawab_bayi` AS `penanggung_jawab_bayi`, `tb_scanner2_assetbayi`.`alamat` AS `alamat`, `tb_scanner2_assetbayi`.`status` AS `status`, max(`tb_scanner2_assetbayi`.`timestamp`) AS `timestamp`, count(0) AS `jumlah` FROM `tb_scanner2_assetbayi` GROUP BY `tb_scanner2_assetbayi`.`nama_anak` ORDER BY max(`tb_scanner2_assetbayi`.`timestamp`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil_dokter`
--
DROP TABLE IF EXISTS `tb_hasil_dokter`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil_dokter`  AS SELECT `tb_reader_scan`.`rfid_uid` AS `rfid_uid`, `tb_dokter`.`nama_dokter` AS `nama_dokter` FROM (`tb_reader_scan` join `tb_dokter` on(`tb_reader_scan`.`rfid_uid` = `tb_dokter`.`rfid_uid`)) ORDER BY `tb_reader_scan`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil_karyawannonmedis`
--
DROP TABLE IF EXISTS `tb_hasil_karyawannonmedis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil_karyawannonmedis`  AS SELECT `tb_reader_scan`.`rfid_uid` AS `rfid_uid`, `tb_non_medis`.`nama_karyawan` AS `nama_karyawan` FROM (`tb_reader_scan` join `tb_non_medis` on(`tb_reader_scan`.`rfid_uid` = `tb_non_medis`.`rfid_uid`)) ORDER BY `tb_reader_scan`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil_medicalequipment`
--
DROP TABLE IF EXISTS `tb_hasil_medicalequipment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil_medicalequipment`  AS SELECT `tb_reader_scan`.`rfid_uid` AS `rfid_uid`, `tb_rfid`.`nama_alat` AS `nama_alat` FROM (`tb_reader_scan` join `tb_rfid` on(`tb_reader_scan`.`rfid_uid` = `tb_rfid`.`rfid_uid`)) ORDER BY `tb_reader_scan`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil_pasienbayi`
--
DROP TABLE IF EXISTS `tb_hasil_pasienbayi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil_pasienbayi`  AS SELECT `tb_reader_scan`.`rfid_uid` AS `rfid_uid`, `tb_stat_anak`.`nama_anak` AS `nama_anak` FROM (`tb_reader_scan` join `tb_stat_anak` on(`tb_reader_scan`.`rfid_uid` = `tb_stat_anak`.`rfid_uid`)) ORDER BY `tb_reader_scan`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil_pasiendewasa`
--
DROP TABLE IF EXISTS `tb_hasil_pasiendewasa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil_pasiendewasa`  AS SELECT `tb_reader_scan`.`rfid_uid` AS `rfid_uid`, `tb_pasien_dewasa`.`nama_pasien` AS `nama_pasien` FROM (`tb_reader_scan` join `tb_pasien_dewasa` on(`tb_reader_scan`.`rfid_uid` = `tb_pasien_dewasa`.`rfid_uid`)) ORDER BY `tb_reader_scan`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_hasil_perawat`
--
DROP TABLE IF EXISTS `tb_hasil_perawat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_hasil_perawat`  AS SELECT `tb_reader_scan`.`rfid_uid` AS `rfid_uid`, `tb_perawat`.`nama_perawat` AS `nama_perawat` FROM (`tb_reader_scan` join `tb_perawat` on(`tb_reader_scan`.`rfid_uid` = `tb_perawat`.`rfid_uid`)) ORDER BY `tb_reader_scan`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_scanner1_assetbarang`
--
DROP TABLE IF EXISTS `tb_scanner1_assetbarang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_scanner1_assetbarang`  AS SELECT `tb_reader_scan`.`rfid_uid` AS `rfid_uid`, `tb_rfid`.`nama_alat` AS `nama_alat`, `tb_rfid`.`deskripsi` AS `deskripsi`, `tb_rfid`.`penanggung_jawab` AS `penanggung_jawab`, `tb_rfid`.`status_asset` AS `status_asset`, `tb_rfid`.`peminjam` AS `peminjam`, `tb_reader_scan`.`timestamp` AS `timestamp` FROM (`tb_reader_scan` join `tb_rfid` on(`tb_reader_scan`.`rfid_uid` = `tb_rfid`.`rfid_uid`)) ORDER BY `tb_reader_scan`.`rfid_uid` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_scanner1_assetbayi`
--
DROP TABLE IF EXISTS `tb_scanner1_assetbayi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_scanner1_assetbayi`  AS SELECT `tb_reader_scan`.`rfid_uid` AS `rfid_uid`, `tb_stat_anak`.`id_pengenal` AS `id_pengenal`, `tb_stat_anak`.`nama_anak` AS `nama_anak`, `tb_stat_anak`.`nama_ibu` AS `nama_ibu`, `tb_stat_anak`.`penanggung_jawab_bayi` AS `penanggung_jawab_bayi`, `tb_stat_anak`.`alamat` AS `alamat`, `tb_stat_anak`.`status` AS `status`, `tb_reader_scan`.`timestamp` AS `timestamp` FROM (`tb_reader_scan` join `tb_stat_anak` on(`tb_reader_scan`.`rfid_uid` = `tb_stat_anak`.`rfid_uid`)) ORDER BY `tb_reader_scan`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_scanner2_assetbarang`
--
DROP TABLE IF EXISTS `tb_scanner2_assetbarang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_scanner2_assetbarang`  AS SELECT `tb_reader_scan2`.`rfid_uid` AS `rfid_uid`, `tb_rfid`.`nama_alat` AS `nama_alat`, `tb_rfid`.`deskripsi` AS `deskripsi`, `tb_rfid`.`penanggung_jawab` AS `penanggung_jawab`, `tb_rfid`.`status_asset` AS `status_asset`, `tb_rfid`.`peminjam` AS `peminjam`, `tb_reader_scan2`.`timestamp` AS `timestamp` FROM (`tb_reader_scan2` join `tb_rfid` on(`tb_reader_scan2`.`rfid_uid` = `tb_rfid`.`rfid_uid`)) ORDER BY `tb_reader_scan2`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `tb_scanner2_assetbayi`
--
DROP TABLE IF EXISTS `tb_scanner2_assetbayi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tb_scanner2_assetbayi`  AS SELECT `tb_reader_scan2`.`rfid_uid` AS `rfid_uid`, `tb_stat_anak`.`id_pengenal` AS `id_pengenal`, `tb_stat_anak`.`nama_anak` AS `nama_anak`, `tb_stat_anak`.`nama_ibu` AS `nama_ibu`, `tb_stat_anak`.`penanggung_jawab_bayi` AS `penanggung_jawab_bayi`, `tb_stat_anak`.`alamat` AS `alamat`, `tb_stat_anak`.`status` AS `status`, `tb_reader_scan2`.`timestamp` AS `timestamp` FROM (`tb_reader_scan2` join `tb_stat_anak` on(`tb_reader_scan2`.`rfid_uid` = `tb_stat_anak`.`rfid_uid`)) ORDER BY `tb_reader_scan2`.`rfid_uid` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `view_asset`
--
DROP TABLE IF EXISTS `view_asset`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_asset`  AS SELECT `tb_inventory`.`id` AS `id`, `tb_inventory`.`kode_rfid` AS `kode_rfid`, `tb_inventory`.`nama_aset` AS `nama_aset`, `tb_catinventory`.`category_name` AS `category_name`, `tb_inventory`.`lokasi_penyimpanan` AS `lokasi_penyimpanan`, `tb_inventory`.`id` AS `assetid` FROM (`tb_inventory` join `tb_catinventory` on(`tb_catinventory`.`id` = `tb_inventory`.`kategori`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_jadwaldokter`
--
DROP TABLE IF EXISTS `view_jadwaldokter`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwaldokter`  AS SELECT `tb_dokter`.`nama_dokter` AS `nama_dokter`, `tb_dokter`.`spesialis` AS `spesialis`, `tb_jadwaldokter`.`hari_praktik` AS `hari_praktik`, `tb_jadwaldokter`.`jam_mulai` AS `jam_mulai`, `tb_jadwaldokter`.`jam_selesai` AS `jam_selesai`, `tb_jadwaldokter`.`id` AS `jadwalid` FROM (`tb_jadwaldokter` join `tb_dokter` on(`tb_dokter`.`rfid_uid` = `tb_jadwaldokter`.`dokter_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_peminjaman`
--
DROP TABLE IF EXISTS `view_peminjaman`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_peminjaman`  AS SELECT `tb_karyawan`.`nama_karyawan` AS `nama_karyawan`, `tb_inventory`.`kode_rfid` AS `kode_rfid`, `tb_inventory`.`nama_aset` AS `nama_aset`, `tb_inventory`.`kategori` AS `kategori`, `tb_pinjaminventory`.`tgl_pinjam` AS `tgl_pinjam`, `tb_pinjaminventory`.`tgl_kembali` AS `tgl_kembali`, `tb_pinjaminventory`.`id` AS `rid` FROM ((`tb_pinjaminventory` join `tb_karyawan` on(`tb_karyawan`.`kode_rfid` = `tb_pinjaminventory`.`id_penanggungjawab`)) join `tb_inventory` on(`tb_inventory`.`kode_rfid` = `tb_pinjaminventory`.`asset_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekammedis`
--
ALTER TABLE `rekammedis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_area_1`
--
ALTER TABLE `tb_area_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_area_2`
--
ALTER TABLE `tb_area_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_area_3`
--
ALTER TABLE `tb_area_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_catinventory`
--
ALTER TABLE `tb_catinventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_clinical_pasien`
--
ALTER TABLE `tb_clinical_pasien`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_inventory`
--
ALTER TABLE `tb_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jadwaldokter`
--
ALTER TABLE `tb_jadwaldokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_rfid` (`kode_rfid`);

--
-- Indexes for table `tb_non_medis`
--
ALTER TABLE `tb_non_medis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pasien_dewasa`
--
ALTER TABLE `tb_pasien_dewasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_perawat`
--
ALTER TABLE `tb_perawat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_peta`
--
ALTER TABLE `tb_peta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pinjaminventory`
--
ALTER TABLE `tb_pinjaminventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_reader_scan`
--
ALTER TABLE `tb_reader_scan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_id` (`rfid_uid`);

--
-- Indexes for table `tb_reader_scan2`
--
ALTER TABLE `tb_reader_scan2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_id` (`rfid_uid`);

--
-- Indexes for table `tb_registrasi`
--
ALTER TABLE `tb_registrasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rfid`
--
ALTER TABLE `tb_rfid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`rfid_uid`),
  ADD KEY `nama_alat` (`nama_alat`);

--
-- Indexes for table `tb_stat_anak`
--
ALTER TABLE `tb_stat_anak`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `rekammedis`
--
ALTER TABLE `rekammedis`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74658466;

--
-- AUTO_INCREMENT for table `tb_area_1`
--
ALTER TABLE `tb_area_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1448;

--
-- AUTO_INCREMENT for table `tb_area_2`
--
ALTER TABLE `tb_area_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2218;

--
-- AUTO_INCREMENT for table `tb_area_3`
--
ALTER TABLE `tb_area_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23847;

--
-- AUTO_INCREMENT for table `tb_catinventory`
--
ALTER TABLE `tb_catinventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_inventory`
--
ALTER TABLE `tb_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_jadwaldokter`
--
ALTER TABLE `tb_jadwaldokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_non_medis`
--
ALTER TABLE `tb_non_medis`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_perawat`
--
ALTER TABLE `tb_perawat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_peta`
--
ALTER TABLE `tb_peta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_pinjaminventory`
--
ALTER TABLE `tb_pinjaminventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_reader_scan`
--
ALTER TABLE `tb_reader_scan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18021;

--
-- AUTO_INCREMENT for table `tb_reader_scan2`
--
ALTER TABLE `tb_reader_scan2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19518;

--
-- AUTO_INCREMENT for table `tb_registrasi`
--
ALTER TABLE `tb_registrasi`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `tb_rfid`
--
ALTER TABLE `tb_rfid`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tb_stat_anak`
--
ALTER TABLE `tb_stat_anak`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
