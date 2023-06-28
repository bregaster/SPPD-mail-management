-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 03:57 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sppd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_ADM` varchar(20) NOT NULL,
  `PASSWORD` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_ADM`, `PASSWORD`) VALUES
('admin', '$2y$10$ChSI2.pG4qjK3TtMCG/YAuz1DGafwDJy7iOAw27fzW7FOjEN90EwS');

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE `bidang` (
  `ID_BIDANG` varchar(2) NOT NULL,
  `NAMA_BIDANG` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`ID_BIDANG`, `NAMA_BIDANG`, `PASSWORD`) VALUES
('2', 'SEKRETARIAT', '$2y$10$.35CTQeNmdShJ7I1lWmPweLzMTWM6QDBvVCLx1M87YmxJNSCnuMZu'),
('3', 'MUTASI', '$2y$10$HnmoWG9Q1WJa10QIb5UMs.8lgg3U3NaH4kieNfUoVO3NSp2QquFYa'),
('4', 'PKFP', '$2y$10$.35CTQeNmdShJ7I1lWmPweLzMTWM6QDBvVCLx1M87YmxJNSCnuMZu'),
('5', 'PKP', '$2y$10$PEUeLl/hfUm8IHqGAMTIVOWx5aAalxnqX4Os4PC/RQSeuiDFtNttW');

-- --------------------------------------------------------

--
-- Table structure for table `instansitujuan`
--

CREATE TABLE `instansitujuan` (
  `ID_SPPD` int(11) NOT NULL,
  `ID_INSTANSI` int(11) NOT NULL,
  `INSTANSI` varchar(100) NOT NULL,
  `TANGGAL` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instansitujuan`
--

INSERT INTO `instansitujuan` (`ID_SPPD`, `ID_INSTANSI`, `INSTANSI`, `TANGGAL`) VALUES
(51, 12, 'Balai Keamanan Negara', '2019-11-14'),
(23, 14, 'dada', '2019-11-13'),
(49, 15, 'Balai Keamanan Negara', '2019-11-26'),
(44, 16, 'BKN', '2019-11-05'),
(51, 17, 'BKN', '2019-11-27'),
(44, 18, 'Balai Keamanan Negara', '2019-11-21'),
(55, 19, 'BKN', '2019-11-26'),
(55, 21, 'bkn provinsi', '2019-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `KODE` varchar(20) NOT NULL,
  `ID_BIDANG` varchar(2) DEFAULT NULL,
  `NIP_PPTK` char(18) DEFAULT NULL,
  `NAMA_KEGIATAN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`KODE`, `ID_BIDANG`, `NIP_PPTK`, `NAMA_KEGIATAN`) VALUES
('3.03.3.03.01.01.001', '2', '198307162001121003', 'Penyediaan jasa surat menyurat'),
('3.03.3.03.01.01.002', '2', '198307162001121003', 'Penyediaan jasa komunikasi, sumber daya air dan listrik'),
('3.03.3.03.01.01.003', '2', '198307162001121003', 'Penyediaan jasa peralatan dan perlengkapan kantor'),
('3.03.3.03.01.01.004', '2', '198307162001121003', 'Penyediaan jasa jaminan barang milik daerah'),
('3.03.3.03.01.01.005', '2', '198307162001121003', 'Penyediaan jasa pemeliharaan dan perizinan kendaraan dinas/operasional'),
('3.03.3.03.01.01.007', '2', '198307162001121003', 'Penyediaan jasa kebersihan kantor'),
('3.03.3.03.01.01.008', '2', '198307162001121003', 'Penyediaan alat tulis kantor'),
('3.03.3.03.01.01.009', '2', '198307162001121003', 'Penyediaan barang cetakan dan penggandaan'),
('3.03.3.03.01.01.012', '2', '198307162001121003', 'Penyediaan Bahan Bacaan dan Peraturan Perundang-Undangan'),
('3.03.3.03.01.01.014', '2', '198307162001121003', 'Penyediaan makanan dan minuman'),
('3.03.3.03.01.01.015', '2', '198307162001121003', 'Rapat-rapat koordinasi dan konsultasi keluar daerah'),
('3.03.3.03.01.01.023', '2', '198307162001121003', 'Peringatan/Kegiatan Insidentil'),
('3.03.3.03.01.01.028', '2', '198307162001121003', 'Penyediaan Jasa Pengemudi/Supir Dinas'),
('3.03.3.03.02.02.009', '2', '198307162001121003', 'Pengadaan peralatan gedung kantor'),
('3.03.3.03.02.02.013', '2', '198307162001121003', 'Pemeliharaan rutin/berkala gedung kantor'),
('3.03.3.03.02.02.015', '2', '198307162001121003', 'Pemeliharaan rutin/berkala kendaraan dinas/operasional'),
('3.03.3.03.02.02.020', '2', '198307162001121003', 'Pemeliharaan rutin/berkala mebeleur'),
('3.03.3.03.02.02.037', '2', '198307162001121003', 'Penyusunan dan Pengembangan Sistem Informasi dan Aplikasi'),
('3.03.3.03.02.02.040', '2', '198307162001121003', 'Penatausahaan Barang Milik Daerah'),
('3.03.3.03.05.05.008', '2', '198307162001121003', 'Peningkatan/Pengembangan Kapasitas Sumber Daya Aparatur'),
('3.03.3.03.06.06.001', '2', '198307162001121003', 'Penyusunan laporan capaian kinerja dan ikhtisar realisasi kinerja SKPD'),
('3.03.3.03.06.06.002', '2', '198307162001121003', 'Penyusunan laporan keuangan'),
('3.03.3.03.06.06.005', '2', '198307162001121003', 'Pelaksanaan Survei Kepuasan Masyarakat'),
('3.03.3.03.06.06.008', '2', '198307162001121003', 'Penyusunan/Reviu Standar Pelayanan'),
('3.03.3.03.06.06.009', '2', '198307162001121003', 'Penyusunan RKA/PRKA dan DPA/DPPA'),
('3.03.3.03.06.06.011', '2', '198307162001121003', 'Penyusunan/Reviu Renstra'),
('3.03.3.03.06.06.012', '2', '198307162001121003', 'Penyusunan Renja/RKT'),
('3.03.3.03.06.06.014', '2', '198307162001121003', 'Penyusunan Naskah Akademis dan Rancangan Peraturan Daerah/Peraturan Walikota'),
('3.03.3.03.06.06.015', '2', '198307162001121003', 'Penyusunan Profil SKPD'),
('3.03.3.03.15.15.007', '3', '196108101984031013', 'Proses Kenaikan Pangkat'),
('3.03.3.03.15.15.010', '3', '197406171996021003', 'Seleksi Terbuka Jabatan Pimpinan Tinggi'),
('3.03.3.03.15.15.016', '3', '197603032002121008', 'Pelaksanaan e-formasi'),
('3.03.3.03.15.15.024', '3', '197603032002121008', 'Penerimaan CPNS'),
('3.03.3.03.15.15.025', '3', '197603032002121008', 'Pengangkatan CPNS menjadi PNS'),
('3.03.3.03.15.15.026', '3', '197406171996021003', 'Fasilitasi Mutasi dan Promosi Jabatan'),
('3.03.3.03.15.15.027', '3', '197603032002121008', 'Penerimaan ASN'),
('3.03.3.03.16.16.002', '3', '196108101984031013', 'Fasilitasi Pemberhentian Pegawai'),
('3.03.3.03.17.17.001', '4', '197608272003122006', 'Pelaksanaan Ujian Kenaikan Pangkat Penyesuaian Ijasah Ujian Dinas Tk.1 dan Tk.II'),
('3.03.3.03.17.17.004', '4', '197908012003121003', 'Pendidikan  dan Pelatihan Teknis dan Fungsional'),
('3.03.3.03.17.17.005', '4', '197908012003121003', 'Pendidikan dan Pelatihan Kepemimpinan'),
('3.03.3.03.17.17.006', '4', '197608272003122006', 'Pelaksanaan Assesment'),
('3.03.3.03.17.17.011', '4', '196804011991032012', 'Fasilitasi Kegiatan Korpri'),
('3.03.3.03.17.17.012', '4', '197908012003121003', 'Monitoring dan Evaluasi Diklat'),
('3.03.3.03.17.17.015', '4', '197908012003121003', 'Pendidikan dan pelatihan Prajabatan bagi CPNSD'),
('3.03.3.03.18.18.003', '5', '196906201998032003', 'Penyelesaian Administrasi Identitas Pegawai'),
('3.03.3.03.18.18.005', '5', '196906201998032003', 'Pembinaan dan Pelatihan Pasukan Upacara PNS di lingkungan Pemerintah Kota Malang'),
('3.03.3.03.18.18.006', '5', '196805261999012001', 'Evaluasi Tambahan Penghasilan Bagi Pns Di Lingkungan Pemkot Malang'),
('3.03.3.03.18.18.009', '5', '196805261999012001', 'Pelaksanaan Senam Rutin bagi PNS'),
('3.03.3.03.18.18.010', '5', '196906201998032003', 'Pelaksanaan Pembinaan Kedisiplinan'),
('3.03.3.03.18.18.011', '5', '196805261999012001', 'Penerapan dan Pemahaman Tentang Kinerja PNS'),
('3.03.3.03.19.19.001', '5', '197302102001121004', 'Penyusunan Data Informasi Kepegawaian Daerah'),
('3.03.3.03.19.19.006', '5', '197302102001121004', 'Pengembangan Sistem Informasi Presensi Terkini'),
('3.03.3.03.19.19.007', '5', '197302102001121004', 'Pengembangan Sistem Informasi Manajemen ASN');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `NIP` char(18) NOT NULL,
  `ID_BIDANG` varchar(2) DEFAULT NULL,
  `NAMA` varchar(128) DEFAULT NULL,
  `PANGKAT` varchar(50) DEFAULT NULL,
  `GOLONGAN` varchar(5) DEFAULT NULL,
  `JABATAN` varchar(255) DEFAULT NULL,
  `TANGGALLAHIR` varchar(50) DEFAULT NULL,
  `TINGKAT` char(2) DEFAULT NULL,
  `AKTIF` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`NIP`, `ID_BIDANG`, `NAMA`, `PANGKAT`, `GOLONGAN`, `JABATAN`, `TANGGALLAHIR`, `TINGKAT`, `AKTIF`) VALUES
('196012171986032010', '2', 'Dra. ANITA SUKMAWATI ', 'Pembina Utama Muda', 'IV/c', 'Kepala', '17 Desember 1960', 'B', 1),
('196108101984031013', '3', 'AGUS SUNGKONO S.H.', 'Penata Tingkat I', 'III/d', 'Kepala Subbidang Kepangkatan dan Pemberhentian Bidang Mutasi', '10 Agustus 1961', 'C', 1),
('196206111987031014', '2', 'SETIJOKO S.E.', 'Pembina', 'IV/a', 'Sekretaris', '11 Juni 1962', 'C', 1),
('196311171993032003', '4', 'MOERTI INDRIANI S.H., M.Si.', 'Pembina', 'IV/a', 'Kepala Bidang Pengembangan Kompetensi dan Fasilitasi Profesi', '17 November 1963', 'C', 1),
('196504171997032002', '5', 'SRI ATIKA WIDOWATI, S.H, M.M.', 'Pembina', 'IV/a', 'Kepala Bidang Penilaian Kinerja dan Penghargaan', '17 April 1965', 'C', 1),
('196509181990031006', '5', 'AGUS BOGO ISWONO ', 'Penata Muda Tingkat I', 'III/b', 'Pengelola Kepegawaian', '18 September 1965', 'D', 1),
('196510071994031011', '2', 'MOH. SUBUR', 'Pengatur', 'II/c', 'Pengadministrasi Persuratan', '7 Oktober 1951', 'E', 1),
('196804011991032012', '4', 'ANEKE SJANE TAULU, SM', 'Penata Tingkat I', 'III/d', 'Kepala Subbidang Fasilitasi Profesi Bidang Pengembangan Kompetensi dan Fasilitasi Profesi', '1 April 1968', 'C', 1),
('196805101994031012', '2', 'SUPARDI', 'Pengatur', 'II/c', 'Pengadministrasi Umum', '10 Mei 1968', 'E', 1),
('196805261999012001', '5', 'ILA MEIMUNA S.E.', 'Penata Tingkat I', 'III/d', 'Kepala Subbidang Penilaian dan Evaluasi Kinerja Bidang Penilaian Kinerja dan Penghargaan', '26 Mei 1968', 'C', 1),
('196903271989032007', '3', 'ARY ISDORIA SE', 'Penata', 'III/c', 'Pengelola Kepegawaian', '27 Maret 1969', 'D', 1),
('196906201998032003', '5', 'Ir. ROOS ASRI RATNA W, M.AP', 'Pembina', 'IV/a', 'Kepala Subbidang Penghargaan dan Disiplin Bidang Penilaian Kinerja dan Penghargaan', '20 Juni 1969', 'C', 1),
('196909111995031003', '3', 'MOCHAMAD ARIEF WIBISONO S.H.', 'Pembina', 'IV/a', 'Kepala Bidang Mutasi', '11 September 1969', 'C', 1),
('196909272003122005', '3', 'HANIFAH, SE', 'Penata Muda Tingkat I', 'III/b', 'Pengelola Kepegawaian', '27 September 1969', 'D', 1),
('196912302003122004', '2', 'FITRI KURNIANA ANNISAH, S.Si.,M.M.', 'Penata Tingkat I', 'III/d', 'Kepala Subbagian Perencanaan dan Keuangan Sekretariat', '30 Desember 1969', 'C', 1),
('197009182014071001', '5', 'YOYOK SUTIKNO, SE', 'Penata Muda Tingkat I', 'III/b', 'Pengelola Kepegawaian', '18 September 1970', 'D', 1),
('197302102001121004', '5', 'BAGUS WINARNO S.Kom.', 'Penata Tingkat I', 'III/d', 'Kepala Subbidang Data dan Informasi Bidang Penilaian Kinerja dan Penghargaan', '10 Februari 1973', 'C', 1),
('197406171996021003', '3', 'HENDRO MARTONO, S.AP', 'Penata Tingkat I', 'III/d', 'Kepala Subbidang Mutasi dan Promosi Bidang Mutasi', '17 Juni 1974', 'C', 1),
('197505092010011009', '3', 'ACHMAD WIDYA PRASETYO S.E', 'Penata Muda Tingkat I', 'III/b', 'Analis Kepegawaian', '9 Mei 1975', 'D', 1),
('197507102006041030', '5', 'NUROHMAN', 'Pengatur', 'II/c', 'Pranata Kearsipan', '10 Juli 1975', 'E', 1),
('197603032002121008', '3', 'BAGUS PAMBUDI S.Sos,M.Si.', 'Pembina', 'IV/a', 'Kepala Subbidang Formasi dan Pengadaan Bidang Mutasi', '3 Maret 1976', 'C', 1),
('197604161996022002', '4', 'DWI SUSIANTI', 'Penata Muda Tingkat I', 'III/b', 'Pengelola Profesi Sumber Daya Manusia', '16 April 1976', 'D', 1),
('197608272003122006', '4', 'INDIRA SRI WAHYUNI STP', 'Penata Tingkat I', 'III/d', 'Kepala Subbidang Pengembangan Kompetensi Bidang Pengembangan Kompetensi dan Fasilitasi Profesi', '27 Agustus 1976', 'C', 1),
('197703181998031005', '5', 'IMADUDDIN', 'Penata Muda Tingkat I', 'III/b', 'Pengelola Penilaian Kinerja Pegawai', '18 Maret 1977', 'D', 1),
('197711252003121007', '4', 'SISWO ADI, SH, M.M.', 'Penata Muda Tingkat I', 'III/b', 'Penyusun Program Penyelengara Diklat', '25 November 1977', 'D', 1),
('197807082005011012', '2', 'YUDI WINARNO S.S', 'Pengatur', 'II/c', 'Pengelola Keuangan', '8 Juli 1978', 'E', 1),
('197902202014071003', '4', 'ANDIKA A. SANJAYA ', 'Pengatur Muda', 'II/a', 'Pengelola Kepegawaian', '20 Februari 1979', 'E', 1),
('197908012003121003', '4', 'Dr. FERRY ANDRIONO ST.M.Si.', 'Penata Tingkat I', 'III/d', 'Kepala Subbidang Pendidikan dan Pelatihan Bidang Pengembangan Kompetensi dan Fasilitasi Profesi', '1 Agustus 1979', 'C', 1),
('198101162006041016', '3', 'NOVIYANTO, S.E.', 'Penata Muda', 'III/a', 'Analis Jabatan', '11 Oktober 1981', 'D', 1),
('198203112014071002', '2', 'ANDY WARDHANA ', 'Pengatur Muda', 'II/a', 'Pengadministrasi Keuangan', '11 Maret 1982', 'E', 1),
('198208282012121002', '2', 'AGUS SUPRIANTO ', 'Pengatur Muda', 'II/a', 'Pengadmnistrasi Kepegawaian', '28 Agustus 1982', 'E', 1),
('198307162001121003', '2', 'WAHYU ARIYANTO, S.STP', 'Penata Tingkat I', 'III/d', 'Kepala Subbagian Umum dan Kepegawaian Sekretariat', '16 Juli 1983', 'C', 1),
('198412102010012026', '3', 'DWI SULIS SETIOWATI A.Md', 'Pengatur Tingkat I', 'II/d', 'Analis Kepegawaian', '10 Desember 1984', 'E', 1),
('198507072010012031', '5', 'JULIA SAVITRI A.Md', 'Penata Muda', 'III/a', 'Arsiparis', '7 Juli 1985', 'D', 1),
('198507292009032008', '5', 'IKA KUSUMANING WARDHANI SH', 'Penata', 'III/c', 'Analis Kepegawaian', '29 Juli 1985', 'D', 1),
('198602022010011008', '5', 'MOCHAMAD ARSYAD A.Md', 'Pengatur Tingkat I', 'II/d', 'Pranata Komputer Terampil', '2 Februari 1986', 'E', 1),
('198603012009031002', '2', 'NURUL YAHDI ALHAQ A.Md', 'Penata Muda', 'III/a', 'Penyusun Rencana Kegiatan dan Anggaran', '1 Maret 1986', 'D', 1),
('198606082009031002', '5', 'BAYU PUTRA UTAMA A.Md', 'Penata Muda', 'III/a', 'Pranata Komputer', '8 Juni 1986', 'D', 1),
('198702262015032001', '4', 'FIKA INDRIASARI S.I.Kom', 'Penata Muda Tingkat I', 'III/b', 'Analis Diklat', '26 Februari 1987', 'D', 1),
('198702272010011011', '3', 'JUNAEDI ASMARA A.Md', 'Pengatur Tingkat I', 'II/d', 'Pranata Komputer', '27 Februari 1987', 'E', 1),
('198707042010012019', '3', 'IKA CAHYANI S.Sos', 'Penata', 'III/c', 'Pengelola Pengembangan Karir', '4 Juli 1987', 'D', 1),
('198809162010012022', '3', 'WULAN WIDYANINGTYAS A.Md', 'Penata Muda', 'III/a', 'Arsiparis', '16 September 1988', 'D', 1),
('198811062011012004', '5', 'ENGGAR ARI WAHYUNINGTYAS A.Md', 'Penata Muda', 'III/a', 'Pengelola Kepegawaian', '6 November 1988', 'D', 1),
('199108252012061002', '2', 'YOGA PANDU WASKITA, S. IP, M.A.P.', 'Penata Muda Tingkat I', 'III/b', 'Bendahara', '25 Agustus 1991', 'D', 1),
('199203202015071002', '3', 'BENNY IRAWAN, S.STP', 'Penata Muda', 'III/a', 'Pengelola Kepegawaian', '20 Maret 1992', 'D', 1),
('199204292015072001', '2', 'APRILIYANA DWI ALITANTI, S.STP', 'Penata Muda', 'III/a', 'Pengelola Pemanfaatan Barang Milik Daerah', '29 April 1992', 'D', 1),
('199402042015071002', '4', 'BIMANTORO YUHANDANI IRAWAN, S.STP', 'Penata Muda', 'III/a', 'Pengelola Penyelenggaraan Diklat', '4 Februari 1994', 'D', 1);

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `ID_PESERTA` int(5) NOT NULL,
  `ID_ST` int(11) NOT NULL,
  `NIP` char(18) DEFAULT NULL,
  `SEBAGAI` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`ID_PESERTA`, `ID_ST`, `NIP`, `SEBAGAI`) VALUES
(400, 161, '196509181990031006', 'Kepala'),
(402, 162, '196509181990031006', 'Kepala'),
(496, 162, '198707042010012019', 'Pengikut'),
(499, 175, '198208282012121002', 'Kepala'),
(505, 175, '199204292015072001', 'Pengikut'),
(506, 175, '196509181990031006', 'Pengikut'),
(514, 179, '196509181990031006', 'Kepala'),
(515, 179, '198707042010012019', 'Pengikut'),
(516, 179, '198101162006041016', 'Pengikut'),
(517, 180, '197505092010011009', 'Pengikut'),
(518, 180, '198208282012121002', 'Pengikut'),
(519, 181, '196012171986032010', 'Kepala'),
(520, 181, '196805101994031012', 'Pengikut'),
(521, 182, '197908012003121003', 'Kepala'),
(522, 182, '198606082009031002', 'Pengikut'),
(529, 186, '198809162010012022', 'Kepala'),
(530, 186, '198412102010012026', 'Pengikut'),
(531, 187, '199402042015071002', 'Kepala'),
(532, 187, '196903271989032007', 'Pengikut'),
(535, 189, '198208282012121002', 'Kepala'),
(536, 189, '197406171996021003', 'Pengikut'),
(542, 180, '196108101984031013', 'Pengikut'),
(543, 182, '196108101984031013', 'Pengikut'),
(544, 182, '196509181990031006', 'Pengikut'),
(549, 192, NULL, 'Kepala'),
(550, 192, '199203202015071002', 'Pengikut'),
(551, 192, '198208282012121002', 'Pengikut'),
(552, 192, '197902202014071003', 'Pengikut'),
(559, 193, '197507102006041030', 'Kepala'),
(560, 193, '198602022010011008', 'Pengikut'),
(561, 193, '196509181990031006', 'Pengikut');

-- --------------------------------------------------------

--
-- Table structure for table `rincian`
--

CREATE TABLE `rincian` (
  `ID_RINCIAN` int(11) NOT NULL,
  `ID_SPPD` int(10) DEFAULT NULL,
  `ID_PESERTA` int(5) DEFAULT NULL,
  `JENIS` varchar(25) DEFAULT NULL,
  `JUMLAH` tinyint(4) DEFAULT NULL,
  `HARGA` double DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `KETERANGAN` varchar(50) DEFAULT NULL,
  `NO_TIKET` varchar(10) DEFAULT NULL,
  `NO_FLIGHT` varchar(10) DEFAULT NULL,
  `JAM` time DEFAULT NULL,
  `NO_TMPDUDUK` varchar(10) DEFAULT NULL,
  `TANGGAL` date DEFAULT NULL,
  `TMP_BERANGKAT` varchar(20) DEFAULT NULL,
  `TMP_TUJUAN` varchar(20) DEFAULT NULL,
  `STATUS` varchar(6) DEFAULT NULL,
  `BUKTI_PEMBAYARAN` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rincian`
--

INSERT INTO `rincian` (`ID_RINCIAN`, `ID_SPPD`, `ID_PESERTA`, `JENIS`, `JUMLAH`, `HARGA`, `TOTAL`, `KETERANGAN`, `NO_TIKET`, `NO_FLIGHT`, `JAM`, `NO_TMPDUDUK`, `TANGGAL`, `TMP_BERANGKAT`, `TMP_TUJUAN`, `STATUS`, `BUKTI_PEMBAYARAN`) VALUES
(49, 51, 535, 'Transportasi', 1, 6, 6, '', '3', 'MR74as', '12:12:00', '1', '2019-11-26', 'Kab. Boven Digoel', 'Kab. Simeulue', 'Pergi', 1),
(50, 49, 531, 'Transportasi', 1, 230000, 230000, '', '3', 'MR74', '23:00:00', '1', '2019-11-26', 'Kota Malang', 'Kab. Deli Serdang', 'Pergi', 1),
(51, 49, 531, 'Transportasi', 1, 20000, 20000, '', '12', 'a', '11:00:00', '1', '2019-11-28', 'Kab. Aceh Singkil', 'Kab. Aceh Singkil', 'Pulang', NULL),
(52, 49, 531, 'Uang Representatif', 2, 3, 6, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(53, 49, 531, 'Uang Harian', 3, 7, 21, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(54, 55, 559, 'Transportasi', 1, 1000000, 1000000, 'garuda ', '1212', 'MR74', '06:30:00', 'e122', '2019-11-26', 'Kota Malang', 'Kota Surabaya', 'Pergi', 1),
(55, 55, 559, 'Uang Harian', 1, 300000, 300000, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(56, 55, 559, 'Transportasi', 3, 7500, 22500, 'BBM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 55, 560, 'Transportasi', 1, 1000000, 1000000, 'garuda', '212', '121', '06:30:00', 'e23', '2019-11-27', 'Kota Malang', 'Kota Surabaya', 'Pergi', 1),
(58, 55, 560, 'Uang Harian', 1, 200000, 200000, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sppd`
--

CREATE TABLE `sppd` (
  `ID_SPPD` int(10) NOT NULL,
  `ID_ST` int(11) NOT NULL,
  `KODE` varchar(20) DEFAULT NULL,
  `ALAT_ANGKUT` varchar(21) DEFAULT NULL,
  `TMP_BERANGKAT` varchar(20) DEFAULT NULL,
  `TMP_TUJUAN` varchar(20) DEFAULT NULL,
  `TGL_BERANGKAT` date DEFAULT NULL,
  `TGL_KEMBALI` date DEFAULT NULL,
  `LAMA` smallint(6) DEFAULT NULL,
  `KETERANGAN` text,
  `KATEGORI` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sppd`
--

INSERT INTO `sppd` (`ID_SPPD`, `ID_ST`, `KODE`, `ALAT_ANGKUT`, `TMP_BERANGKAT`, `TMP_TUJUAN`, `TGL_BERANGKAT`, `TGL_KEMBALI`, `LAMA`, `KETERANGAN`, `KATEGORI`) VALUES
(23, 161, '3.03.3.03.01.01.002', 'Umum', 'Kab. Simalungun', 'Kab. Aceh Singkil', '2019-11-26', '2019-11-30', 4, 'macan', 'Dinas Luar'),
(24, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 187, '3.03.3.03.18.18.005', 'Umum', 'Kab. Malang', 'Kab. Aceh Timur', '2019-11-26', '2019-11-30', 4, '', 'Dinas Luar'),
(51, 189, '3.03.3.03.18.18.003', 'Dinas', 'Kota Surabaya', 'Kota Malang', '2019-11-16', '2019-11-23', 7, 'macan', 'Dinas Dalam'),
(54, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 193, '3.03.3.03.18.18.005', 'Umum', 'Kab. Malang', 'Kota Surabaya', '2019-11-26', '2019-11-26', 0, '', 'Dinas Dalam');

-- --------------------------------------------------------

--
-- Table structure for table `surattugas`
--

CREATE TABLE `surattugas` (
  `ID_ST` int(11) NOT NULL,
  `ID_BIDANG` varchar(2) NOT NULL,
  `NOMOR_SURAT` varchar(25) NOT NULL,
  `DASAR` text,
  `TUJUAN` text,
  `TANGGAL` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `surattugas`
--

INSERT INTO `surattugas` (`ID_ST`, `ID_BIDANG`, `NOMOR_SURAT`, `DASAR`, `TUJUAN`, `TANGGAL`) VALUES
(161, '2', '', 'tanggal', 'validasi', '2019-08-17'),
(162, '3', '', 'tanggal', 'validasi', '2019-08-17'),
(175, '2', '12321312312312', 'asdasdas', 'sssss', '2019-11-30'),
(179, '4', '333', 'juni', 'ddd', '2019-06-10'),
(180, '5', '1', 'untuk mengikuti kegiatan Pelatihan Peningkatan Mutu Guru Mata Pelajaran Bahasa Indonesia yang akan dilaksanakan di Dinas Pendidikan Provinsi Jawa Tengah mulai tanggal 11 Desember 2017 s/d 15 Desember 2017.', 'Guru Mata Pelajaran Bahasa Indonesia yang akan dilaksanakan di Dinas Pendidikan Provinsi Jawa Tengah mulai tanggal 11 Desember 2017 s/d 15 Desember 2017.', '2019-11-02'),
(181, '5', '2', 'untuk mengikuti kegiatan Pelatihan Peningkatan Mutu Guru Mata Pelajaran Bahasa Indonesia yang akan dilaksanakan di Dinas Pendidikan Provinsi Jawa Tengah mulai tanggal 11 Desember 2017 s/d 15 Desember 2018.', 'da', '2019-11-09'),
(182, '5', '3', 'untuk mengikuti kegiatan Pelatihan Peningkatan Mutu Guru Mata Pelajaran Bahasa Indonesia yang akan dilaksanakan di Dinas Pendidikan Provinsi Jawa Tengah mulai tanggal 11 Desember 2017 s/d 15 Desembe 2019.', 'se', '2019-11-23'),
(186, '5', '8', 'Peningkatan Mutu Guru Mata Pelajaran Bahasa Indonesia yang akan dilaksanakan di Dinas Pendidikan Provinsi Jawa Tengah mulai tanggal 11 Desember 2017 s/d 15 Desember 2017.', 'a', '2019-11-30'),
(187, '5', '12', 'Guru Mata Pelajaran Bahasa Indonesia yang akan dilaksanakan di Dinas Pendidikan Provinsi Jawa Tengah mulai tanggal 11 Desember 2017 s/d 15 Desember 2017.', 's', '2019-11-09'),
(189, '5', '45', 'Pelajaran Bahasa Indonesia yang akan dilaksanakan di Dinas Pendidikan Provinsi Jawa Tengah mulai tanggal 11 Desember 2017 s/d 15 Desember 2017.', 's', '2019-11-16'),
(192, '5', '1', 'ini', '2', '2019-11-30'),
(193, '5', '16/2212/11/212.2019', 'y', 'y', '2019-11-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADM`);

--
-- Indexes for table `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`ID_BIDANG`);

--
-- Indexes for table `instansitujuan`
--
ALTER TABLE `instansitujuan`
  ADD PRIMARY KEY (`ID_INSTANSI`),
  ADD KEY `FK_REFERENCE_15` (`ID_SPPD`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`KODE`),
  ADD KEY `FK_REFERENCE_4` (`ID_BIDANG`),
  ADD KEY `FK_REFERENCE_5` (`NIP_PPTK`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`NIP`),
  ADD KEY `FK_REFERENCE_7` (`ID_BIDANG`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`ID_PESERTA`),
  ADD KEY `FK_REFERENCE_3` (`NIP`),
  ADD KEY `peserta_ibfk_1` (`ID_ST`);

--
-- Indexes for table `rincian`
--
ALTER TABLE `rincian`
  ADD PRIMARY KEY (`ID_RINCIAN`),
  ADD KEY `FK_REFERENCE_10` (`ID_PESERTA`),
  ADD KEY `FK_REFERENCE_9` (`ID_SPPD`);

--
-- Indexes for table `sppd`
--
ALTER TABLE `sppd`
  ADD PRIMARY KEY (`ID_SPPD`),
  ADD KEY `FK_REFERENCE_8` (`KODE`),
  ADD KEY `sppd_ibfk_1` (`ID_ST`);

--
-- Indexes for table `surattugas`
--
ALTER TABLE `surattugas`
  ADD PRIMARY KEY (`ID_ST`),
  ADD KEY `FK_REFERENCE_14` (`ID_BIDANG`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instansitujuan`
--
ALTER TABLE `instansitujuan`
  MODIFY `ID_INSTANSI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `ID_PESERTA` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;
--
-- AUTO_INCREMENT for table `rincian`
--
ALTER TABLE `rincian`
  MODIFY `ID_RINCIAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `sppd`
--
ALTER TABLE `sppd`
  MODIFY `ID_SPPD` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `surattugas`
--
ALTER TABLE `surattugas`
  MODIFY `ID_ST` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `instansitujuan`
--
ALTER TABLE `instansitujuan`
  ADD CONSTRAINT `FK_REFERENCE_15` FOREIGN KEY (`ID_SPPD`) REFERENCES `sppd` (`ID_SPPD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `FK_REFERENCE_4` FOREIGN KEY (`ID_BIDANG`) REFERENCES `bidang` (`ID_BIDANG`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REFERENCE_5` FOREIGN KEY (`NIP_PPTK`) REFERENCES `pegawai` (`NIP`) ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `FK_REFERENCE_7` FOREIGN KEY (`ID_BIDANG`) REFERENCES `bidang` (`ID_BIDANG`) ON UPDATE CASCADE;

--
-- Constraints for table `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `FK_REFERENCE_3` FOREIGN KEY (`NIP`) REFERENCES `pegawai` (`NIP`),
  ADD CONSTRAINT `peserta_ibfk_1` FOREIGN KEY (`ID_ST`) REFERENCES `surattugas` (`ID_ST`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rincian`
--
ALTER TABLE `rincian`
  ADD CONSTRAINT `FK_REFERENCE_10` FOREIGN KEY (`ID_PESERTA`) REFERENCES `peserta` (`ID_PESERTA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REFERENCE_11` FOREIGN KEY (`ID_SPPD`) REFERENCES `sppd` (`ID_SPPD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sppd`
--
ALTER TABLE `sppd`
  ADD CONSTRAINT `FK_REFERENCE_8` FOREIGN KEY (`KODE`) REFERENCES `kegiatan` (`KODE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sppd_ibfk_1` FOREIGN KEY (`ID_ST`) REFERENCES `surattugas` (`ID_ST`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `surattugas`
--
ALTER TABLE `surattugas`
  ADD CONSTRAINT `FK_REFERENCE_14` FOREIGN KEY (`ID_BIDANG`) REFERENCES `bidang` (`ID_BIDANG`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
