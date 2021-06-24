-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2021 pada 21.57
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clc_keuangan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktifitas`
--

CREATE TABLE `aktifitas` (
  `id` int(11) NOT NULL,
  `id_pengkodeans` int(11) DEFAULT NULL,
  `uraian` varchar(100) DEFAULT NULL,
  `kode` varchar(5) NOT NULL,
  `status` varchar(12) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aktifitas`
--

INSERT INTO `aktifitas` (`id`, `id_pengkodeans`, `uraian`, `kode`, `status`, `created_date`, `updated_date`) VALUES
(1, 0, 'Pengembangan Kompetensi Lulusan', '1', 'Aktif', '2021-03-07 19:15:56', NULL),
(2, 0, 'Pengembangan Standart isi', '2', 'Aktif', '2021-03-07 19:15:56', NULL),
(3, 0, 'Pengembangan Standart Proses', '3', 'Aktif', NULL, NULL),
(4, 3, 'Pengembangan Perpustakaan ', '3.1', 'Aktif', NULL, NULL),
(6, 3, 'Pengadaan Alat dan Media Pembelajaran', '3.2', 'Aktif', NULL, NULL),
(8, 3, 'Penerimaan Peserta Didik Baru', '3.3', 'Aktif', NULL, NULL),
(9, 0, 'Pengembangan Pendidik dan Tenaga Kependidikan', '4', 'Aktif', NULL, NULL),
(10, 9, 'Peningkatan kompetensi guru dan tendik', '4.1', 'Aktif', NULL, NULL),
(11, 9, 'Pembinaan guru ', '4.2', 'Aktif', NULL, NULL),
(12, 0, 'Pengembangan Sarana dan Prasarana Sekolah', '5', 'Aktif', NULL, NULL),
(14, 3, 'Kegiatan Kesiswaan', '3.4', 'Aktif', NULL, NULL),
(15, 3, 'Baju Seragam Siswa', '3.5', 'Aktif', NULL, NULL),
(16, 12, 'Perbaikan/ perawatan Alat kantor/inventaris sekolah', '5.1', 'Aktif', NULL, NULL),
(17, 12, 'Rehab ringan', '5.2', 'Aktif', NULL, NULL),
(18, 12, 'Pengadaan Sarana Prasarana sekolah', '5.3', 'Aktif', NULL, NULL),
(19, 0, 'Pengembangan standar pengelolaan', '6', 'Aktif', NULL, NULL),
(20, 19, 'Kegiatan Pengelolaan Perkantoran', '6.1', 'Aktif', NULL, NULL),
(21, 19, 'Kegiatan Pengembangan Manajemen Sekolah', '6.2', 'Aktif', NULL, NULL),
(22, 19, 'Akomodasi moving guru bina ke TKB', '6.3', 'Aktif', NULL, NULL),
(23, 0, 'Pengembangan  Standar Pembiayaan ', '7', 'Aktif', NULL, NULL),
(24, 23, 'Kegiatan Rumah Tangga Sekolah', '7.1', 'Aktif', NULL, NULL),
(25, 23, 'Langganan Daya dan Jasa', '7.2', 'Aktif', NULL, NULL),
(26, 0, 'Pengembangan dan implementasi sistem penilaian', '8', 'Aktif', NULL, NULL),
(27, 26, 'Ujian Sekolah/ Ujian Nasional', '8.1', 'Aktif', NULL, NULL),
(28, 26, 'Fotokopi Soal', '8.2', 'Aktif', NULL, NULL),
(29, 26, 'Ujian Sekolah Praktik', '8.3', 'Aktif', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabangs`
--

CREATE TABLE `cabangs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_telpon` varchar(13) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `jumlah_kelas_7` int(11) NOT NULL,
  `jumlah_kelas_8` int(11) NOT NULL,
  `jumlah_kelas_9` int(11) NOT NULL,
  `total_jumlah_siswa` int(11) NOT NULL,
  `jumlah_guru_bina` int(11) NOT NULL,
  `jumlah_guru_pamong` int(11) NOT NULL,
  `total_jumlah_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cabangs`
--

INSERT INTO `cabangs` (`id`, `user_id`, `kode`, `nama`, `no_telpon`, `alamat`, `status`, `created_date`, `updated_date`, `jumlah_kelas_7`, `jumlah_kelas_8`, `jumlah_kelas_9`, `total_jumlah_siswa`, `jumlah_guru_bina`, `jumlah_guru_pamong`, `total_jumlah_guru`) VALUES
(1, 329, '9LN0102', 'SMP 1 Bandung 123', '0857981325051', 'Badung 123', 'Aktif', NULL, NULL, 40, 40, 30, 111, 12, 16, 28),
(2, 330, '9LN0101', 'SMP Cimahi', '085798132505', 'Bandung', 'Aktif', NULL, NULL, 90, 85, 120, 295, 18, 20, 38),
(3, 1, '9LN', 'SMP Pusat', '085798132505', 'Malaysia', 'Aktif', NULL, NULL, 90, 85, 120, 295, 18, 20, 38);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hutang`
--

CREATE TABLE `hutang` (
  `id` int(11) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `jumlah` float NOT NULL,
  `dibayar` float NOT NULL,
  `sisa` float NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 = belum lunas | 1 = lunas',
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hutang`
--

INSERT INTO `hutang` (`id`, `id_cabang`, `nama`, `no_hp`, `keterangan`, `jumlah`, `dibayar`, `sisa`, `status`, `tanggal`) VALUES
(4, 1, 'pa dede', '0212121', 'pinajaman bulanan', 3856460, 0, 3856460, 1, '2021-06-22'),
(5, 1, 'pa dede', '08123123', 'pinjaman', 6143690, 0, 6143690, 1, '2021-06-22'),
(6, 1, 'asdas', '2132', 'sdas', 142, 0, 142, 1, '2021-06-22'),
(7, 1, 'Aquila prince', '08798132505', '-', -50000, 0, -50000, 0, '2021-06-24'),
(9, 1, 'SMP 1 Bandung', '08798132505', '-sdasd', -50000, 0, -50000, 0, '2021-06-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurs`
--

CREATE TABLE `kurs` (
  `id` int(11) NOT NULL,
  `ringgit` int(11) DEFAULT NULL,
  `rupiah` int(11) DEFAULT NULL,
  `status` varchar(12) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kurs`
--

INSERT INTO `kurs` (`id`, `ringgit`, `rupiah`, `status`, `created_date`, `updated_date`) VALUES
(1, 1, 3500, 'Aktif', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `lev_id` int(11) NOT NULL,
  `lev_nama` varchar(50) NOT NULL,
  `lev_keterangan` text NOT NULL,
  `lev_status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`lev_id`, `lev_nama`, `lev_keterangan`, `lev_status`, `created_at`) VALUES
(2, 'Super Admin', '-', 'Aktif', '2020-06-18 09:40:31'),
(4, 'Admin Sekolah', '-', 'Aktif', '2020-06-18 10:20:10'),
(6, 'Siswa', '-', 'Aktif', '2021-02-13 07:32:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_menu_id` int(11) NOT NULL,
  `menu_nama` varchar(50) NOT NULL,
  `menu_keterangan` text NOT NULL,
  `menu_index` int(11) NOT NULL,
  `menu_icon` varchar(50) NOT NULL,
  `menu_url` varchar(100) NOT NULL,
  `menu_status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_menu_id`, `menu_nama`, `menu_keterangan`, `menu_index`, `menu_icon`, `menu_url`, `menu_status`, `created_at`) VALUES
(1, 0, 'Dashboard', '-', 1, 'fa fa-suitcase', 'dashboard', 'Aktif', '2020-06-18 09:40:07'),
(2, 0, 'Pengaturan', '-', 10, 'fa fa-cogs', '#', 'Aktif', '2020-06-18 09:40:07'),
(3, 2, 'Hak Akses', '-', 1, 'fa fa-caret-right', 'pengaturan/hakAkses', 'Aktif', '2020-06-18 09:40:07'),
(4, 2, 'Menu', '-', 2, 'fa fa-caret-right', 'pengaturan/menu', 'Aktif', '2020-06-18 09:40:07'),
(5, 2, 'Level', '-', 3, 'fa fa-caret-right', 'pengaturan/level', 'Aktif', '2020-06-18 09:40:07'),
(6, 2, 'Pengguna', '-', 4, 'fa fa-caret-right', 'pengaturan/pengguna', 'Aktif', '2020-06-18 09:40:07'),
(15, 0, 'Home', '-', 1, 'fa fa-home', 'home', 'Aktif', '2020-06-18 10:24:18'),
(38, 2, 'Periode', '-', 1, 'fa fa-caret-right', 'pengaturan/periode', 'Aktif', '2021-03-01 15:31:44'),
(39, 2, 'Kurs', '-', 2, 'fa fa-caret-right', 'pengaturan/kurs', 'Aktif', '2021-03-01 15:32:01'),
(40, 0, 'Cabang', '-', 1, 'fa fa-building', 'cabang', 'Aktif', '2021-03-01 15:32:38'),
(41, 0, 'RAB', '-', 2, 'fa fa-list-ul', '#', 'Aktif', '2021-03-01 16:09:44'),
(42, 41, 'Aktifitas Utama', '-', 1, 'fa fa-caret-right', 'rab/aktifitas', 'Aktif', '2021-03-01 16:10:15'),
(43, 41, 'CLC', '-', 2, 'fa fa-caret-right', 'rab/cabang', 'Aktif', '2021-03-01 16:10:30'),
(44, 0, 'Saldo', '-', 3, 'fa fa-usd', '#', 'Aktif', '2021-03-01 16:14:46'),
(45, 44, 'Cabang', '-', 1, 'fa fa-caret-right', 'saldo/cabang', 'Aktif', '2021-03-01 16:15:43'),
(46, 44, 'Pemasukan', '-', 2, 'fa fa-caret-right', 'saldo/pemasukan', 'Aktif', '2021-03-01 16:16:13'),
(47, 44, 'Pengeluaran', '-', 3, 'fa fa-caret-right', 'saldo/pengeluaran', 'Aktif', '2021-03-01 16:16:34'),
(48, 0, 'Laporan', '-', 6, 'fa fa-book', '#', 'Aktif', '2021-03-02 07:26:24'),
(49, 48, 'RAB', '-', 1, 'fa fa-caret-right', 'laporan/rab', 'Aktif', '2021-03-02 07:27:13'),
(50, 48, 'Pengeluaran', '-', 2, 'fa fa-caret-right', 'laporan/pengeluaran', 'Aktif', '2021-03-02 07:27:38'),
(51, 41, 'Preview', '-', 3, 'fa fa-caret-right', 'rab/preview', 'Aktif', '2021-03-17 09:45:23'),
(52, 0, 'Realisasi', '-', 3, ' fa fa-usd', '#', 'Aktif', '2021-04-06 10:01:38'),
(53, 52, 'Dana RAB', '-', 1, ' fa fa-caret-right', 'realisasi', 'Aktif', '2021-04-12 05:44:38'),
(54, 52, 'Dana Sisa', '-', 2, ' fa fa-caret-right', 'realisasi/danaSisa', 'Aktif', '2021-04-12 05:45:07'),
(55, 52, 'Dana Kurang', '-', 3, ' fa fa-caret-right', 'realisasi/danaKurang', 'Aktif', '2021-04-12 05:45:28'),
(56, 2, 'RAB ', '-', 5, 'fa fa-arrow', 'pengaturan/rab', 'Aktif', '2021-05-20 09:21:37'),
(57, 48, 'BKU', '-', 1, 'fa fa-caret-right', 'laporan/bku', 'Aktif', '2021-05-22 08:26:16'),
(58, 48, 'Standar', '-', 2, 'fa fa-caret-right', 'laporan/standard', 'Aktif', '2021-05-22 08:26:40'),
(59, 48, 'Rekap', '-', 3, 'fa fa-caret-right', 'laporan/rekap', 'Aktif', '2021-05-23 04:36:34'),
(60, 2, 'Laporan   ', 'Pengaturan Laporan', 6, 'fa fa-caret-right', 'pengaturan/laporan', 'Aktif', '2021-05-29 09:11:50'),
(61, 48, 'Rekapitulasi RAB', 'REKAPITULASI REALISASI ANGGARAN BANTUAN OPERASIONAL CLC SMP', 4, 'fa fa-caret-right', 'laporan/rekaprab', 'Aktif', '2021-06-11 12:44:40'),
(62, 0, 'Hutang', '-', 4, 'fa fa-usd', 'hutang', 'Aktif', '2021-06-23 17:20:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan_laporan`
--

CREATE TABLE `pengaturan_laporan` (
  `id` int(11) NOT NULL,
  `kepala_nama` varchar(50) NOT NULL,
  `kepala_nip` varchar(50) NOT NULL,
  `kas_nama` varchar(50) NOT NULL,
  `kas_nip` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaturan_laporan`
--

INSERT INTO `pengaturan_laporan` (`id`, `kepala_nama`, `kepala_nip`, `kas_nama`, `kas_nip`, `kota`) VALUES
(1, 'Dadang Hermawan, M.Ed.', '19700731 199803 1 005', 'Dede Kurniawan, S.Pd.', '-', 'Kinabalu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periodes`
--

CREATE TABLE `periodes` (
  `id` int(11) NOT NULL,
  `tahun_awal` int(11) DEFAULT NULL,
  `tahun_akhir` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pindah_danas`
--

CREATE TABLE `pindah_danas` (
  `id` int(11) NOT NULL,
  `id_realisasi` int(11) DEFAULT NULL,
  `sisa_ringgit` int(11) DEFAULT NULL,
  `sisa_rupiah` int(11) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `id_rab` int(11) DEFAULT NULL,
  `jumlah_ringgit` int(11) DEFAULT NULL,
  `jumlah_rupiah` int(11) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tipe` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pindah_danas`
--

INSERT INTO `pindah_danas` (`id`, `id_realisasi`, `sisa_ringgit`, `sisa_rupiah`, `kategori`, `id_rab`, `jumlah_ringgit`, `jumlah_rupiah`, `keterangan`, `status`, `tipe`, `created_at`, `updated_at`) VALUES
(2, 11, 3, 9800, 'rab', 44, 397, 1387750, '123', 1, '', NULL, NULL),
(3, 13, 3, 10780, 'rab', 61, 400, 1398530, '123', 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rabs`
--

CREATE TABLE `rabs` (
  `id` int(11) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `id_aktifitas` int(11) DEFAULT NULL,
  `kode_isi_1` varchar(15) DEFAULT NULL,
  `kode_isi_2` varchar(15) DEFAULT NULL,
  `kode_isi_3` varchar(15) DEFAULT NULL,
  `kode` varchar(15) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jumlah_1` int(11) NOT NULL,
  `satuan_1` varchar(50) NOT NULL,
  `jumlah_2` int(11) NOT NULL,
  `satuan_2` varchar(50) NOT NULL,
  `jumlah_3` int(11) NOT NULL,
  `satuan_3` varchar(50) NOT NULL,
  `jumlah_4` int(11) NOT NULL,
  `satuan_4` varchar(50) NOT NULL,
  `harga_ringgit` float DEFAULT NULL,
  `harga_rupiah` float DEFAULT NULL,
  `total_harga_ringgit` float DEFAULT NULL,
  `total_harga_rupiah` float DEFAULT NULL,
  `prioritas` int(11) DEFAULT NULL,
  `keterangan` text NOT NULL,
  `status` varchar(20) DEFAULT '0',
  `fungsi` int(11) NOT NULL,
  `created_date` date DEFAULT current_timestamp(),
  `updated_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rabs`
--

INSERT INTO `rabs` (`id`, `id_cabang`, `id_aktifitas`, `kode_isi_1`, `kode_isi_2`, `kode_isi_3`, `kode`, `nama`, `jumlah_1`, `satuan_1`, `jumlah_2`, `satuan_2`, `jumlah_3`, `satuan_3`, `jumlah_4`, `satuan_4`, `harga_ringgit`, `harga_rupiah`, `total_harga_ringgit`, `total_harga_rupiah`, `prioritas`, `keterangan`, `status`, `fungsi`, `created_date`, `updated_date`, `created_at`, `updated_at`) VALUES
(22, 1, 4, '', '0', '0', '3.1.1', 'Pengadaan Buku Teks Siswa (Buku Pelajaran) 2', 1, '', 1, '', 1, '', 1, '', 0, 0, 0, 0, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:35:25', NULL),
(23, 1, 4, '22', '0', '0', '3.1.1.1', 'Kelas IX 2', 1, '', 1, '', 1, '', 1, '', 0, 0, 0, 0, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:35:57', NULL),
(24, 1, 4, '22', '23', '0', '3.1.1.1.1', 'Pendidikan Agama dan Budi Pekerti 2', 1, '', 1, '', 1, '', 1, '', 0, 0, 0, 0, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:36:48', NULL),
(25, 1, 4, '22', '23', '24', '3.1.1.1.1.1', 'Agama Islam 2', 40, 'siswa', 1, '', 1, '', 1, '', 11.54, 40390, 452.6, 1585500, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:39:36', NULL),
(26, 1, 4, '22', '23', '24', '3.1.1.1.1.2', 'Agama Kristen 2', 50, 'siswa', 1, '', 1, '', 1, '', 8.23, 28805, 411.5, 1440250, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:40:28', NULL),
(28, 1, 4, '22', '23', '24', '3.1.1.1.1.3', 'Agama Katolik 2', 50, 'siswa', 1, '', 1, '', 1, '', 5.71, 19985, 399.5, 1398530, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:42:10', NULL),
(29, 1, 4, '22', '23', '0', '3.1.1.1.2', 'PPKn 2', 80, 'siswa', 2, '', 1, '', 1, '', 7.94, 27790, 1270.4, 4446400, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:43:32', NULL),
(30, 1, 4, '22', '23', '0', '3.1.1.1.3', 'Bahasa Indonesia 2', 80, 'siswa', 1, '', 1, '', 1, '', 7.09, 24815, 567.2, 1985200, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:44:38', NULL),
(31, 1, 4, '22', '23', '0', '3.1.1.1.4', 'Matematika 2', 80, 'siswa', 1, '', 1, '', 1, '', 12.4, 43400, 992, 3472000, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:45:23', NULL),
(32, 1, 4, '22', '23', '0', '3.1.1.1.5', 'IPA Semester 1 2', 80, 'siswa', 1, '', 1, '', 1, '', 21.94, 76790, 1755.2, 6143200, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:46:07', NULL),
(33, 1, 4, '22', '23', '0', '3.1.1.1.6', 'IPA Semester 2 2', 80, 'siswa', 1, '', 1, '', 1, '', 21.94, 76790, 1755.2, 6143200, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:47:09', NULL),
(34, 1, 4, '22', '23', '0', '3.1.1.1.7', 'IPS 2', 80, 'siswa', 1, '', 1, '', 1, '', 11.83, 41405, 946.4, 3312400, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:48:05', NULL),
(35, 1, 4, '22', '23', '0', '3.1.1.1.8', 'Bahasa Inggris 2', 80, 'siswa', 1, '', 1, '', 1, '', 8.51, 29785, 680.8, 2382800, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:48:54', NULL),
(36, 1, 4, '22', '23', '0', '3.1.1.1.9', 'Seni Budaya 2', 90, 'siswa', 1, '', 1, '', 1, '', 12.11, 42385, 1089.9, 3814650, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:49:28', NULL),
(39, 1, 4, '22', '0', '0', '3.1.1.2', 'Kelas VIII 2', 1, '', 1, '', 1, '', 1, '', 0, 0, 0, 0, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:52:33', NULL),
(40, 1, 4, '22', '39', '0', '3.1.1.2.1', 'Pendidikan Agama dan Budi Pekerti 2', 1, '', 1, '', 1, '', 1, '', 0, 0, 0, 0, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:53:07', NULL),
(41, 1, 4, '22', '39', '40', '3.1.1.2.1.1', 'Agama Islam 2', 25, 'siswa', 1, '', 1, '', 1, '', 11.26, 39410, 281.5, 985250, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:53:46', NULL),
(42, 1, 4, '22', '39', '40', '3.1.1.2.1.2', 'Agama Kristen 2', 10, 'siswa', 1, '', 1, '', 1, '', 5.66, 19810, 56.6, 198100, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:54:16', NULL),
(43, 1, 4, '22', '39', '40', '3.1.1.2.1.3', 'Agama Katolik 2', 10, 'siswa', 1, '', 1, '', 1, '', 6.57, 22995, 65.7, 229950, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:55:01', NULL),
(44, 1, 4, '22', '39', '40', '3.1.1.2.1.4', 'Agama Katolik 2', 20, 'siswa', 1, '', 1, '', 1, '', 7.14, 24990, 142.8, 499800, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:55:38', NULL),
(45, 1, 4, '22', '39', '40', '3.1.1.2.1.5', 'Bahasa Indonesia 2', 20, 'siswa', 1, '', 1, '', 1, '', 11.26, 39410, 225.2, 788200, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:56:14', NULL),
(46, 1, 4, '22', '39', '40', '3.1.1.2.1.6', 'Matematika Semester 1 2', 20, 'siswa', 1, '', 1, '', 1, '', 24.57, 85995, 491.4, 1719900, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:56:45', NULL),
(47, 1, 4, '22', '39', '40', '3.1.1.2.1.7', 'Matematika Semester 2 2', 20, 'siswa', 1, '', 1, '', 1, '', 24.57, 85995, 491.4, 1719900, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:57:19', NULL),
(48, 1, 4, '22', '39', '40', '3.1.1.2.1.8', 'IPA Semester 1 2', 20, 'siswa', 1, '', 1, '', 1, '', 24.57, 85995, 491.4, 1719900, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:57:48', NULL),
(49, 1, 4, '22', '39', '40', '3.1.1.2.1.9', 'IPA Semester 2 2', 20, 'siswa', 1, '', 1, '', 1, '', 24.57, 85995, 491.4, 1719900, NULL, '2', '4', 0, '2021-06-12', NULL, '2021-06-12 19:58:19', NULL),
(55, 2, 4, '', '0', '0', '3.1.1', 'Pengadaan Buku Teks Siswa (Buku Pelajaran) 1', 20, '', 1, '', 1, '', 1, '', 5000, 0, 100000, 0, 1, '123', '0', 0, '2021-06-13', NULL, '2021-06-13 02:32:23', NULL),
(56, 2, 4, '55', '0', '0', '3.1.1.1', 'Kelas IX 1', 1, '', 1, '', 1, '', 1, '', 0, 0, 0, 0, 1, '1', '0', 0, '2021-06-13', NULL, '2021-06-13 02:39:16', NULL),
(57, 2, 4, '55', '56', '0', '3.1.1.1.1', 'Pendidikan Agama dan Budi Pekerti 1', 1, '', 1, '', 1, '', 1, '', 0, 0, 0, 0, 1, '1', '0', 0, '2021-06-13', NULL, '2021-06-13 02:39:48', NULL),
(58, 2, 4, '55', '56', '57', '3.1.1.1.1.1', 'Agama Islam 1', 1, '', 1, '', 1, '', 1, '', 11.54, 40390, 11.54, 40390, 1, '1', '0', 0, '2021-06-13', NULL, '2021-06-13 02:40:24', NULL),
(59, 1, 4, '22', '23', '24', '3.1.1.1.1.4', 'Aquila princes', 2, 'sos', 1, '', 1, '', 1, '', 11.54, 40390, 23.08, 80780, NULL, 'sdasdasd', '4', 0, '2021-06-20', NULL, '2021-06-20 04:57:53', NULL),
(60, 1, 4, '22', '39', '40', '3.1.1.2.2', 'Aquila princes', 1, '', 1, '', 1, '', 1, '', 50, 175000, 50, 175000, NULL, 'sdasdasd', '4', 0, '2021-06-20', NULL, '2021-06-20 14:47:30', NULL),
(61, 1, 4, '22', '23', '24', '3.1.1.1.1.5', 'Aquila princes', 1, '', 1, '', 1, '', 1, '', 60, 210000, 60, 210000, NULL, 'sdasdasd', '4', 0, '2021-06-20', NULL, '2021-06-20 14:50:54', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `realisasis`
--

CREATE TABLE `realisasis` (
  `id` int(11) NOT NULL,
  `id_rab` int(11) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `harga_ringgit` int(11) NOT NULL,
  `harga_rupiah` int(11) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `tanggal` date NOT NULL,
  `sisa_ringgit` float NOT NULL,
  `sisa_rupiah` float NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `realisasis`
--

INSERT INTO `realisasis` (`id`, `id_rab`, `id_cabang`, `no_urut`, `nama`, `keterangan`, `harga_ringgit`, `harga_rupiah`, `gambar`, `tanggal`, `sisa_ringgit`, `sisa_rupiah`, `created_at`, `updated_at`) VALUES
(1, 23, 1, 0, 'Toko Makmur jaya', '123', 0, 0, '1_Admin_Pusat_c74bba45804820a87e5373e7bac95d86.png', '2021-06-13', 0, 0, NULL, NULL),
(2, 24, 1, 0, 'Toko Makmur jaya', '123', 0, 0, '1_Admin_Pusat_c74bba45804820a87e5373e7bac95d86.png', '2021-06-13', 0, 0, NULL, NULL),
(3, 25, 1, 0, 'Toko Makmur jaya', '123', 462, 1615600, '1_Admin_Pusat_c74bba45804820a87e5373e7bac95d86.png', '2021-06-13', 0, 0, NULL, NULL),
(4, 26, 1, 0, 'Toko Makmur jaya', '123', 412, 1440250, '1_Admin_Pusat_c74bba45804820a87e5373e7bac95d86.png', '2021-06-13', 0, 0, NULL, NULL),
(5, 28, 1, 0, 'Toko Makmur jaya', '123', 286, 999250, '1_Admin_Pusat_c74bba45804820a87e5373e7bac95d86.png', '2021-06-13', 0, 0, NULL, NULL),
(6, 29, 1, 0, 'Toko Makmur jaya', '123', 635, 2223200, '1_Admin_Pusat_c74bba45804820a87e5373e7bac95d86.png', '2021-06-13', 0, 0, NULL, NULL),
(7, 30, 1, 0, 'Toko Makmur jaya', '123', 567, 1985200, '1_Admin_Pusat_c74bba45804820a87e5373e7bac95d86.png', '2021-06-13', 0, 0, NULL, NULL),
(8, 31, 1, 0, 'Toko Makmur jaya', '123', 992, 3472000, '1_Admin_Pusat_c74bba45804820a87e5373e7bac95d86.png', '2021-06-13', 0, 0, NULL, NULL),
(9, 32, 1, 0, 'Toko Makmur jaya', '123', 1647, 5764500, '1_Admin_Pusat_c74bba45804820a87e5373e7bac95d86.png', '2021-06-13', 108, 378700, NULL, NULL),
(10, 48, 1, 0, 'Toko Makmur jaya coba', '456', 500, 1750000, '1_Admin_Pusat_99e3468f668e5c238001c16578313a08.png', '2021-06-13', -9, -30100, NULL, NULL),
(11, 44, 1, 0, 'Dibayarkan kepada MamanguntukBeli Buku', '-', 140, 490000, '329_SMP_1_Bandung_2b4c9406ed1a547dc33e9160f08cfa2c.png', '2021-06-14', 0, 0, NULL, NULL),
(12, 59, 1, 0, 'Dibayarkan Kepada Toko Makmur jaya Untuk Smen', '123', 23, 80780, '329_SMP_1_Bandung_cb35b0d19b6e54bec8fc4fbfd9a192e7.png', '2021-06-23', 0, 0, NULL, NULL),
(13, 61, 1, 0, 'Dibayarkan Kepada Toko Makmur jaya Untuk Smen', '123', 57, 199220, '329_SMP_1_Bandung_cb35b0d19b6e54bec8fc4fbfd9a192e7.png', '2021-06-23', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_aplikasi`
--

CREATE TABLE `role_aplikasi` (
  `rola_id` int(11) NOT NULL,
  `rola_menu_id` int(11) NOT NULL,
  `rola_lev_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role_aplikasi`
--

INSERT INTO `role_aplikasi` (`rola_id`, `rola_menu_id`, `rola_lev_id`, `created_at`) VALUES
(2, 1, 2, '2020-06-18 09:39:47'),
(7, 6, 2, '2020-06-18 09:39:47'),
(8, 2, 2, '2020-06-18 09:39:47'),
(17, 15, 5, '2020-06-18 10:24:29'),
(24, 19, 5, '2020-06-27 14:03:43'),
(25, 20, 4, '2020-06-27 16:04:16'),
(26, 20, 5, '2020-06-27 16:04:21'),
(27, 21, 2, '2020-07-07 00:55:36'),
(28, 23, 2, '2020-07-07 06:56:39'),
(32, 27, 2, '2020-07-15 07:54:34'),
(37, 5, 2, '2021-02-13 07:32:12'),
(44, 30, 4, '2021-02-19 09:06:13'),
(50, 40, 2, '2021-03-01 15:32:47'),
(51, 38, 2, '2021-03-01 15:32:57'),
(52, 39, 2, '2021-03-01 15:33:07'),
(53, 41, 2, '2021-03-01 16:12:36'),
(54, 42, 2, '2021-03-01 16:12:43'),
(59, 47, 2, '2021-03-01 16:17:19'),
(60, 48, 2, '2021-03-02 07:27:51'),
(63, 51, 2, '2021-03-17 09:45:35'),
(64, 1, 4, '2021-04-03 05:47:25'),
(65, 41, 4, '2021-04-03 05:47:37'),
(66, 43, 4, '2021-04-03 05:47:54'),
(67, 51, 4, '2021-04-03 05:48:01'),
(73, 52, 4, '2021-04-06 10:02:09'),
(74, 53, 4, '2021-04-12 05:45:44'),
(75, 54, 4, '2021-04-12 05:45:51'),
(76, 55, 4, '2021-04-12 05:45:57'),
(77, 52, 2, '2021-04-25 03:00:04'),
(78, 53, 2, '2021-04-25 03:00:17'),
(79, 54, 2, '2021-04-25 03:01:04'),
(80, 55, 2, '2021-04-25 03:01:12'),
(81, 56, 2, '2021-05-20 09:22:00'),
(82, 57, 2, '2021-05-22 08:27:30'),
(83, 58, 2, '2021-05-22 08:27:38'),
(84, 59, 2, '2021-05-23 04:36:43'),
(85, 60, 2, '2021-05-29 09:12:07'),
(86, 61, 2, '2021-06-11 12:47:46'),
(88, 62, 4, '2021-06-23 17:21:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_users`
--

CREATE TABLE `role_users` (
  `role_id` int(11) NOT NULL,
  `role_user_id` int(11) NOT NULL,
  `role_lev_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role_users`
--

INSERT INTO `role_users` (`role_id`, `role_user_id`, `role_lev_id`, `created_at`) VALUES
(1, 1, 2, '2020-06-18 09:39:26'),
(332, 329, 4, '2021-06-12 09:18:10'),
(333, 330, 4, '2021-06-12 09:18:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saldos`
--

CREATE TABLE `saldos` (
  `id` int(11) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `total_ringgit` float DEFAULT NULL,
  `total_rupiah` float DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `saldos`
--

INSERT INTO `saldos` (`id`, `id_cabang`, `total_ringgit`, `total_rupiah`, `status`, `created_date`, `updated_date`, `created_at`, `updated_at`) VALUES
(1, 1, 13191.2, 46170800, 'aktif', '2021-06-24 02:24:28', NULL, NULL, NULL),
(2, 2, 100012, 40390, 'aktif', '2021-06-19 10:30:07', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `saldo_pemasukans`
--

CREATE TABLE `saldo_pemasukans` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_cabang` int(11) DEFAULT NULL,
  `id_rab` int(11) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `total_ringgit` float DEFAULT NULL,
  `total_rupiah` float DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `saldo_pemasukans`
--

INSERT INTO `saldo_pemasukans` (`id`, `id_user`, `id_cabang`, `id_rab`, `keterangan`, `total_ringgit`, `total_rupiah`, `status`, `created_date`, `updated_date`) VALUES
(1, 1, 1, 0, 'sudah dicairkan', 12317.9, 43112600, 'aktif', '2021-06-13 07:07:42', NULL),
(2, 1, 2, 0, 'sudah dicairkan', 100012, 40390, 'aktif', '2021-06-19 10:30:07', NULL),
(3, 1, 1, 0, 'sudah dicairkan', 13086.2, 45801600, 'aktif', '2021-06-22 17:34:09', NULL),
(4, 1, 1, 0, 'sudah dicairkan', 13086.2, 45801600, 'aktif', '2021-06-22 17:35:53', NULL),
(5, 1, 1, 0, 'sudah dicairkan', 13191.2, 46170800, 'aktif', '2021-06-24 02:24:28', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `saldo_pengeluarans`
--

CREATE TABLE `saldo_pengeluarans` (
  `id` int(11) NOT NULL,
  `id_cabang` int(11) DEFAULT NULL,
  `id_rab` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `total_ringgit` float DEFAULT NULL,
  `total_rupiah` float DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `bukti_1` varchar(250) DEFAULT NULL,
  `bukti_2` varchar(250) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_rabs`
--

CREATE TABLE `setting_rabs` (
  `id` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `keterangan` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_rabs`
--

INSERT INTO `setting_rabs` (`id`, `tanggal_mulai`, `tanggal_akhir`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(3, '2021-05-17', '2021-05-26', 'sample 1', 0, NULL, NULL),
(4, '2021-05-21', '2021-05-26', 'sampel 2', 0, '2021-05-19 17:00:00', NULL),
(5, '2021-05-20', '2021-05-22', 'sampel 3', 0, '2021-05-19 17:00:00', NULL),
(6, '2021-05-20', '2021-05-20', 'sampel 4', 1, NULL, NULL),
(7, '2021-05-22', '2021-05-27', 'sampel 5', 1, '2021-05-19 17:00:00', NULL),
(9, '2021-05-21', '2021-05-22', 'sampel 6', 1, '2021-05-21 02:17:20', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `type` varchar(80) NOT NULL,
  `is_revoked` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `token`, `type`, `is_revoked`, `created_at`, `updated_at`) VALUES
(12, 1, 'd7cb1e44-320d-4d8f-804e-2931f0e0e10a', 'jwt_refresh_token', 0, '2021-02-26 15:08:10', '2021-02-26 15:08:10'),
(13, 1, 'ec480a71-cf51-4cbd-94a8-97817a3dcaca', 'jwt_refresh_token', 0, '2021-03-01 09:33:42', '2021-03-01 09:33:42'),
(14, 1, '407e5b32-b451-4fbe-a697-182b7fe05bba', 'jwt_refresh_token', 0, '2021-03-01 10:05:15', '2021-03-01 10:05:15'),
(15, 1, '1d73846e-f930-4e9c-a3e7-1dd2057cac73', 'jwt_refresh_token', 0, '2021-03-01 10:17:01', '2021-03-01 10:17:01'),
(16, 1, '70dc6865-e40c-4ec1-a636-45307318bc01', 'jwt_refresh_token', 0, '2021-03-01 10:18:29', '2021-03-01 10:18:29'),
(17, 1, '30604aa9-2670-4e8e-a0ff-134d1da973ee', 'jwt_refresh_token', 0, '2021-03-01 10:19:19', '2021-03-01 10:19:19'),
(18, 1, '8dfb723e-b87e-44db-9135-ed8869b0d201', 'jwt_refresh_token', 0, '2021-03-01 10:20:13', '2021-03-01 10:20:13'),
(19, 1, '124ad6a3-c4ee-44ff-b945-2c1ffe2a392d', 'jwt_refresh_token', 0, '2021-03-01 10:28:04', '2021-03-01 10:28:04'),
(20, 1, '016c0ade-f64d-4144-83b8-6fe466d02d8b', 'jwt_refresh_token', 0, '2021-03-01 10:29:51', '2021-03-01 10:29:51'),
(21, 1, 'a78dcf6f-6c5b-4ed2-aa18-3e64749a1867', 'jwt_refresh_token', 0, '2021-03-01 10:31:18', '2021-03-01 10:31:18'),
(22, 1, '5d23db86-8bd2-4734-95cb-64e3f3564194', 'jwt_refresh_token', 0, '2021-03-01 10:31:40', '2021-03-01 10:31:40'),
(23, 1, '76511a80-cae2-4649-894f-ce6edca9b3bd', 'jwt_refresh_token', 0, '2021-03-01 10:35:22', '2021-03-01 10:35:22'),
(24, 1, '3b2ada9c-bde5-4b33-9824-9e1ea007fe09', 'jwt_refresh_token', 0, '2021-03-01 10:40:59', '2021-03-01 10:40:59'),
(25, 1, '5a1ce040-8717-42c0-bc00-9cfc1ddf3362', 'jwt_refresh_token', 0, '2021-03-01 10:41:47', '2021-03-01 10:41:47'),
(26, 1, '7b6627f8-29c2-4868-aba9-e05155ac43ea', 'jwt_refresh_token', 0, '2021-03-01 11:02:00', '2021-03-01 11:02:00'),
(27, 1, '940d1c36-25dd-4423-81f4-d33e606eefe2', 'jwt_refresh_token', 0, '2021-03-01 11:02:10', '2021-03-01 11:02:10'),
(28, 1, '935c9623-38f4-47e5-b483-93c259a06a1d', 'jwt_refresh_token', 0, '2021-03-01 11:02:53', '2021-03-01 11:02:53'),
(29, 1, 'acc94877-f466-4139-a935-73ba02826dc7', 'jwt_refresh_token', 0, '2021-03-01 11:03:27', '2021-03-01 11:03:27'),
(30, 1, 'baf8242f-034e-4aa0-81e8-821f64802887', 'jwt_refresh_token', 0, '2021-03-01 11:09:35', '2021-03-01 11:09:35'),
(31, 1, '48bfebee-4a0a-45f1-8346-1b5f5666c8e7', 'jwt_refresh_token', 0, '2021-03-01 11:10:11', '2021-03-01 11:10:11'),
(32, 1, '0e672328-fe1d-4000-83a3-4017729e34b0', 'jwt_refresh_token', 0, '2021-03-01 11:10:51', '2021-03-01 11:10:51'),
(33, 1, '7a9a29a8-0b7a-440b-9a2f-056ef6ebeef4', 'jwt_refresh_token', 0, '2021-03-01 11:11:02', '2021-03-01 11:11:02'),
(34, 1, '81c0c9d4-928c-42e5-b8e6-1d11b205e34b', 'jwt_refresh_token', 0, '2021-03-01 11:11:10', '2021-03-01 11:11:10'),
(35, 1, '011a4b2a-0c21-4bec-b5be-0e2a341dddce', 'jwt_refresh_token', 0, '2021-03-01 11:11:20', '2021-03-01 11:11:20'),
(36, 1, 'd43a113a-3f15-43e8-b282-2c864ab8b10e', 'jwt_refresh_token', 0, '2021-03-01 11:11:32', '2021-03-01 11:11:32'),
(37, 1, '83cec51c-f8f9-464e-80bc-92ee0f6286dd', 'jwt_refresh_token', 0, '2021-03-01 11:15:58', '2021-03-01 11:15:58'),
(38, 1, 'ad992bc4-e2c1-4d6d-918c-f5e418c07555', 'jwt_refresh_token', 0, '2021-03-01 11:16:16', '2021-03-01 11:16:16'),
(39, 1, '8c3e0e81-d35f-4c67-b0ed-f84aa738cac8', 'jwt_refresh_token', 0, '2021-03-01 11:19:15', '2021-03-01 11:19:15'),
(40, 1, '065ed505-8931-4c6d-adc7-2f68e7f067f6', 'jwt_refresh_token', 0, '2021-03-01 11:21:40', '2021-03-01 11:21:40'),
(41, 1, '4b5dd29f-9776-473c-a534-d56d9d3e478a', 'jwt_refresh_token', 0, '2021-03-01 11:22:13', '2021-03-01 11:22:13'),
(42, 1, 'b446ab16-53d0-4f3f-b620-c5ff8a3502a3', 'jwt_refresh_token', 0, '2021-03-01 11:25:17', '2021-03-01 11:25:17'),
(43, 1, 'ecb2875d-de15-4b5d-bda6-854dbd879012', 'jwt_refresh_token', 0, '2021-03-01 11:28:01', '2021-03-01 11:28:01'),
(44, 1, 'a9e5f528-2e42-410e-a375-4420327f5391', 'jwt_refresh_token', 0, '2021-03-01 11:28:10', '2021-03-01 11:28:10'),
(45, 1, 'c8782fe9-f158-433b-a6a5-fdbc72b2aa94', 'jwt_refresh_token', 0, '2021-03-01 11:28:48', '2021-03-01 11:28:48'),
(46, 1, '1548491b-b1b1-45e4-a9bb-43c10feb985a', 'jwt_refresh_token', 0, '2021-03-01 11:30:25', '2021-03-01 11:30:25'),
(47, 1, 'c56756aa-045d-4848-aec3-54319997dd68', 'jwt_refresh_token', 0, '2021-03-01 12:04:22', '2021-03-01 12:04:22'),
(48, 1, 'cf7c9e7b-d5b1-4ff6-a98d-15be4bf819f1', 'jwt_refresh_token', 0, '2021-03-01 12:10:21', '2021-03-01 12:10:21'),
(49, 1, '68805751-0faa-413d-adba-448669f66d3c', 'jwt_refresh_token', 0, '2021-03-01 12:11:16', '2021-03-01 12:11:16'),
(50, 1, '3162ca55-01fb-441a-8881-3b3ec5eec7d7', 'jwt_refresh_token', 0, '2021-03-01 12:11:41', '2021-03-01 12:11:41'),
(51, 1, 'dbee0c11-c999-4440-bef6-30d3ae5df619', 'jwt_refresh_token', 0, '2021-03-01 12:14:44', '2021-03-01 12:14:44'),
(52, 1, 'e2470a38-09ec-41cf-8c02-a2d0eaf23e55', 'jwt_refresh_token', 0, '2021-03-01 12:15:02', '2021-03-01 12:15:02'),
(53, 1, '3c0a3ebc-ef23-4db5-8ef5-2c15b421ba76', 'jwt_refresh_token', 0, '2021-03-01 12:15:24', '2021-03-01 12:15:24'),
(54, 1, '8e0981c5-8246-4c56-9c48-5fe15c9bf1e3', 'jwt_refresh_token', 0, '2021-03-01 12:16:56', '2021-03-01 12:16:56'),
(55, 1, 'b40bb182-c37e-4506-99c1-e80eaaf6583e', 'jwt_refresh_token', 0, '2021-03-01 12:17:17', '2021-03-01 12:17:17'),
(56, 1, 'd5dc768a-2362-4371-bfe7-1bc501a56fd6', 'jwt_refresh_token', 0, '2021-03-01 12:17:39', '2021-03-01 12:17:39'),
(57, 1, '2aeb9a18-f732-48cf-b51a-749ce4f9ef7c', 'jwt_refresh_token', 0, '2021-03-01 14:09:44', '2021-03-01 14:09:44'),
(58, 1, 'f90c2aa3-bcd3-454c-8142-4f041188790d', 'jwt_refresh_token', 0, '2021-03-01 14:09:47', '2021-03-01 14:09:47'),
(59, 1, 'a95d9e3a-5850-41e1-aa83-47c784c04b46', 'jwt_refresh_token', 0, '2021-03-01 14:12:19', '2021-03-01 14:12:19'),
(60, 1, 'b413cd8f-46a3-4622-aa7b-57fd4ed897e1', 'jwt_refresh_token', 0, '2021-03-01 14:12:36', '2021-03-01 14:12:36'),
(61, 1, '76eba7a6-6580-40c5-b84a-7ade0c05b012', 'jwt_refresh_token', 0, '2021-03-01 14:12:58', '2021-03-01 14:12:58'),
(62, 1, '0b7f467e-2291-4647-8cfe-ebdad6de492a', 'jwt_refresh_token', 0, '2021-03-01 14:14:47', '2021-03-01 14:14:47'),
(63, 1, '41e97c3b-8906-45a0-8ec1-845398f5bf44', 'jwt_refresh_token', 0, '2021-03-01 14:14:54', '2021-03-01 14:14:54'),
(64, 1, '4d5d8ad5-519d-4de5-9e81-3761144e536f', 'jwt_refresh_token', 0, '2021-03-01 14:16:31', '2021-03-01 14:16:31'),
(65, 1, '9eee5b77-dffd-41aa-a18c-398e4bae6a56', 'jwt_refresh_token', 0, '2021-03-01 14:17:09', '2021-03-01 14:17:09'),
(66, 1, '806ea255-a282-460f-b8e6-58847fc1a72b', 'jwt_refresh_token', 0, '2021-03-01 14:18:37', '2021-03-01 14:18:37'),
(67, 1, '154a9c77-b131-4e38-9c04-d5ea4541159b', 'jwt_refresh_token', 0, '2021-03-01 14:18:52', '2021-03-01 14:18:52'),
(68, 1, 'f24665a8-b07f-4209-849f-e871208d3987', 'jwt_refresh_token', 0, '2021-03-01 14:18:54', '2021-03-01 14:18:54'),
(69, 1, 'c9814638-a31b-40b5-98c4-6030163a3f35', 'jwt_refresh_token', 0, '2021-03-01 14:19:42', '2021-03-01 14:19:42'),
(70, 1, 'caec5f28-d826-4236-a8cb-30d817225d40', 'jwt_refresh_token', 0, '2021-03-01 14:19:53', '2021-03-01 14:19:53'),
(71, 1, '663961a0-2b73-4a10-9b84-9d6ec4f0af58', 'jwt_refresh_token', 0, '2021-03-01 14:23:14', '2021-03-01 14:23:14'),
(72, 1, '5ceb027f-9bfc-438a-a57c-00fa9933c386', 'jwt_refresh_token', 0, '2021-03-01 14:23:53', '2021-03-01 14:23:53'),
(73, 1, 'b11e4ac2-1acd-4222-8e73-e65bb9ce0474', 'jwt_refresh_token', 0, '2021-03-01 14:24:10', '2021-03-01 14:24:10'),
(74, 1, 'dbe2eb49-054a-4f77-8a46-067fcdc97b0a', 'jwt_refresh_token', 0, '2021-03-01 14:24:37', '2021-03-01 14:24:37'),
(75, 1, '4fdb4c4d-6ab8-4675-88a4-b31c1c461cb5', 'jwt_refresh_token', 0, '2021-03-01 14:53:15', '2021-03-01 14:53:15'),
(76, 1, '37a68a34-8f63-40ad-97b7-a19ab67464a5', 'jwt_refresh_token', 0, '2021-03-01 14:58:13', '2021-03-01 14:58:13'),
(77, 1, '4de73978-c5ca-4886-80e4-1d807e94523e', 'jwt_refresh_token', 0, '2021-03-01 15:30:17', '2021-03-01 15:30:17'),
(78, 1, '0f8e5f22-fd11-469e-9a54-374f675ae770', 'jwt_refresh_token', 0, '2021-03-01 15:49:39', '2021-03-01 15:49:39'),
(79, 1, 'a756f609-dd5b-4658-afd5-2a387ecf5597', 'jwt_refresh_token', 0, '2021-03-01 15:52:00', '2021-03-01 15:52:00'),
(80, 1, 'c8476f0a-d959-4435-9d3d-ebaeff1b1472', 'jwt_refresh_token', 0, '2021-03-01 15:52:00', '2021-03-01 15:52:00'),
(81, 1, '6630cdef-b9a3-46c8-8b72-e77a9d22c3a8', 'jwt_refresh_token', 0, '2021-03-01 15:54:20', '2021-03-01 15:54:20'),
(82, 1, '9aedc84c-f487-4815-be88-0fdc3efffbc2', 'jwt_refresh_token', 0, '2021-03-01 15:54:48', '2021-03-01 15:54:48'),
(83, 1, '6e07e35e-647b-443d-92d3-7c3d726139bc', 'jwt_refresh_token', 0, '2021-03-01 15:55:03', '2021-03-01 15:55:03'),
(84, 1, '8c5bc2cf-4868-4489-aff8-d70ddf510115', 'jwt_refresh_token', 0, '2021-03-01 15:55:17', '2021-03-01 15:55:17'),
(85, 1, '5b4e3a05-2a69-4478-8a43-4b1746e97eed', 'jwt_refresh_token', 0, '2021-03-01 15:55:37', '2021-03-01 15:55:37'),
(86, 1, '2398741d-40aa-4d90-94cc-a3fb00d2dd47', 'jwt_refresh_token', 0, '2021-03-01 15:55:37', '2021-03-01 15:55:37'),
(87, 1, '634c9247-b025-4744-97e3-0da206120d23', 'jwt_refresh_token', 0, '2021-03-01 15:58:46', '2021-03-01 15:58:46'),
(88, 1, 'fab2822d-5945-4e01-b92c-127e097ba00d', 'jwt_refresh_token', 0, '2021-03-01 16:06:23', '2021-03-01 16:06:23'),
(89, 1, '54af9cf5-ebaf-4940-84b9-8a29c510979a', 'jwt_refresh_token', 0, '2021-03-01 16:06:56', '2021-03-01 16:06:56'),
(90, 1, 'c6052d3e-80bc-414f-8733-a43aa093c2ec', 'jwt_refresh_token', 0, '2021-03-01 16:06:56', '2021-03-01 16:06:56'),
(91, 1, 'd7b0c8b6-c08f-41e8-8e04-461e3d639971', 'jwt_refresh_token', 0, '2021-03-01 16:07:11', '2021-03-01 16:07:11'),
(92, 1, '100c7a24-2625-4327-9593-82204e13f8ef', 'jwt_refresh_token', 0, '2021-03-01 16:07:12', '2021-03-01 16:07:12'),
(93, 1, '3cd56a32-b142-4d8b-b0de-3264138ec393', 'jwt_refresh_token', 0, '2021-03-01 16:08:04', '2021-03-01 16:08:04'),
(94, 1, '5225f208-6ef7-4f46-a0c8-df11146dfec5', 'jwt_refresh_token', 0, '2021-03-01 16:08:23', '2021-03-01 16:08:23'),
(95, 1, '4187b016-2502-4782-ba4b-ea1e8ff1cfbd', 'jwt_refresh_token', 0, '2021-03-01 16:08:23', '2021-03-01 16:08:23'),
(96, 1, 'bd51be54-ec38-453f-a7b8-b671aa6ca3d2', 'jwt_refresh_token', 0, '2021-03-01 16:29:01', '2021-03-01 16:29:01'),
(97, 1, '7ce872aa-b0e1-43a0-b3cc-3d2c48274bf6', 'jwt_refresh_token', 0, '2021-03-01 16:30:04', '2021-03-01 16:30:04'),
(98, 1, 'a506b058-c562-4fcb-b6f6-a8443e392214', 'jwt_refresh_token', 0, '2021-03-01 16:30:24', '2021-03-01 16:30:24'),
(99, 1, '1c145e5c-2893-4ecc-bed2-7b1968d228b8', 'jwt_refresh_token', 0, '2021-03-01 16:30:24', '2021-03-01 16:30:24'),
(100, 1, '9ff5894d-8f2f-496f-a72a-db9473d7d62e', 'jwt_refresh_token', 0, '2021-03-01 16:30:41', '2021-03-01 16:30:41'),
(101, 1, 'c91fcdb9-1a2c-4a31-a95b-96917672923f', 'jwt_refresh_token', 0, '2021-03-01 16:30:45', '2021-03-01 16:30:45'),
(102, 1, '47c2c7db-2dce-46be-aa7e-6f9241b186f3', 'jwt_refresh_token', 0, '2021-03-01 16:30:47', '2021-03-01 16:30:47'),
(103, 1, 'c5274354-551b-47ef-ab6a-2cd83740fd9e', 'jwt_refresh_token', 0, '2021-03-01 16:31:44', '2021-03-01 16:31:44'),
(104, 1, '4c8dc5a8-e031-49f3-a24d-c32b0e70a9a2', 'jwt_refresh_token', 0, '2021-03-01 16:32:38', '2021-03-01 16:32:38'),
(105, 1, 'd3e3935c-3b23-4cc2-95c2-e82dfce8c044', 'jwt_refresh_token', 0, '2021-03-01 16:32:38', '2021-03-01 16:32:38'),
(106, 1, 'b99f25a4-d99c-4b87-9cb8-3eaeb55a93b7', 'jwt_refresh_token', 0, '2021-03-01 16:32:42', '2021-03-01 16:32:42'),
(107, 1, 'b2d8afa4-b17e-4dd0-bc4e-2951993388b4', 'jwt_refresh_token', 0, '2021-03-01 16:33:57', '2021-03-01 16:33:57'),
(108, 1, '536a0d9d-c3f2-4ca3-91e4-a2c4cba17f02', 'jwt_refresh_token', 0, '2021-03-01 16:34:00', '2021-03-01 16:34:00'),
(109, 1, '513dd6ad-def9-47b1-a8d2-e62ae31190e3', 'jwt_refresh_token', 0, '2021-03-01 16:34:24', '2021-03-01 16:34:24'),
(110, 1, 'a579519b-0b18-4bbe-80cd-67068cd78198', 'jwt_refresh_token', 0, '2021-03-01 16:35:09', '2021-03-01 16:35:09'),
(111, 1, '6efe270c-fa90-4a57-84de-9992e5d5f7ab', 'jwt_refresh_token', 0, '2021-03-01 16:35:10', '2021-03-01 16:35:10'),
(112, 1, '9e94b455-cb30-45a8-949a-0026d71b6f92', 'jwt_refresh_token', 0, '2021-03-01 16:35:18', '2021-03-01 16:35:18'),
(113, 1, 'eeaa2b36-023a-4c2c-a43a-806d7c729209', 'jwt_refresh_token', 0, '2021-03-01 16:35:18', '2021-03-01 16:35:18'),
(114, 1, '21ce3b21-617f-425f-a5f8-8b85039bde97', 'jwt_refresh_token', 0, '2021-03-01 17:08:13', '2021-03-01 17:08:13'),
(115, 1, '3d10992c-31df-46e4-8796-e133369bb6b5', 'jwt_refresh_token', 0, '2021-03-01 17:22:31', '2021-03-01 17:22:31'),
(116, 1, 'e125dfab-c322-435b-a85a-868635ecbfb1', 'jwt_refresh_token', 0, '2021-03-01 17:23:28', '2021-03-01 17:23:28'),
(117, 1, 'bde38d5b-0164-4d27-ad4a-6de2bcff76a5', 'jwt_refresh_token', 0, '2021-03-01 17:23:56', '2021-03-01 17:23:56'),
(118, 1, 'fed3704e-72f6-46e9-94e9-3779b4e7880d', 'jwt_refresh_token', 0, '2021-03-01 17:23:57', '2021-03-01 17:23:57'),
(119, 1, '235bb98b-da68-48f1-ba4a-fb3389199a8a', 'jwt_refresh_token', 0, '2021-03-01 17:24:00', '2021-03-01 17:24:00'),
(120, 1, 'feb557b5-574b-45e8-99bd-014d5616305b', 'jwt_refresh_token', 0, '2021-03-01 17:24:13', '2021-03-01 17:24:13'),
(121, 1, 'a5312633-89a8-44bc-9242-9529fc5fb82f', 'jwt_refresh_token', 0, '2021-03-01 17:24:14', '2021-03-01 17:24:14'),
(122, 1, 'a60d20ea-b0e3-4e5a-9c43-12d2e36a9114', 'jwt_refresh_token', 0, '2021-03-01 17:24:51', '2021-03-01 17:24:51'),
(123, 1, '0394234f-2398-4a78-89e2-e53be3adc18c', 'jwt_refresh_token', 0, '2021-03-01 17:27:21', '2021-03-01 17:27:21'),
(124, 1, '2d20dc00-6268-4def-8fb3-c7fa393105b5', 'jwt_refresh_token', 0, '2021-03-02 14:04:56', '2021-03-02 14:04:56'),
(125, 1, 'f5b99a3e-550a-4613-892f-37fbdf2a18ba', 'jwt_refresh_token', 0, '2021-03-02 14:04:56', '2021-03-02 14:04:56'),
(126, 1, '3947e661-7b4b-42da-9d92-4c48c5b1133e', 'jwt_refresh_token', 0, '2021-03-02 14:05:04', '2021-03-02 14:05:04'),
(127, 1, 'cb2fda97-061f-48b6-b8fd-f33e1c4c099e', 'jwt_refresh_token', 0, '2021-03-02 15:32:34', '2021-03-02 15:32:34'),
(128, 1, '3902e172-b13d-4e64-81d1-4a2fb54fd5a8', 'jwt_refresh_token', 0, '2021-03-03 11:28:25', '2021-03-03 11:28:25'),
(129, 1, '99a02429-6e9a-4af8-b265-687258d7c050', 'jwt_refresh_token', 0, '2021-03-03 11:28:28', '2021-03-03 11:28:28'),
(130, 1, '60beeede-5799-49a4-93d4-823c7976c52d', 'jwt_refresh_token', 0, '2021-03-03 11:31:00', '2021-03-03 11:31:00'),
(131, 1, '496bc0c9-9e23-4dd0-9e32-1c3e0f59d51e', 'jwt_refresh_token', 0, '2021-03-03 11:31:11', '2021-03-03 11:31:11'),
(132, 1, '65b6a051-3d9f-4477-80fc-d5055e21c635', 'jwt_refresh_token', 0, '2021-03-03 11:31:18', '2021-03-03 11:31:18'),
(133, 1, '6449bc75-fc30-4e41-9f24-151ecdaa1e58', 'jwt_refresh_token', 0, '2021-03-03 11:31:49', '2021-03-03 11:31:49'),
(134, 1, '61e7d5a3-8161-454a-892f-6824f122dbc3', 'jwt_refresh_token', 0, '2021-03-03 11:32:12', '2021-03-03 11:32:12'),
(135, 1, '56fad02a-bbac-497b-816b-317e7921d5f4', 'jwt_refresh_token', 0, '2021-03-03 11:32:52', '2021-03-03 11:32:52'),
(136, 1, '046cf9fb-9a71-45c4-b3b2-ef7d8c938eee', 'jwt_refresh_token', 0, '2021-03-03 11:33:30', '2021-03-03 11:33:30'),
(137, 1, '1e22517d-59e2-4d33-89a4-b7a2d194ef1f', 'jwt_refresh_token', 0, '2021-03-03 11:33:31', '2021-03-03 11:33:31'),
(138, 1, '4e1d4712-3d17-4ceb-a4be-9ba7939fb262', 'jwt_refresh_token', 0, '2021-03-03 11:34:01', '2021-03-03 11:34:01'),
(139, 1, '6dc61e3e-6c78-40e6-84ee-4b3e8989f93d', 'jwt_refresh_token', 0, '2021-03-03 11:34:01', '2021-03-03 11:34:01'),
(140, 1, '11e5587d-c7b0-4bb8-a152-996ad160a707', 'jwt_refresh_token', 0, '2021-03-03 11:52:05', '2021-03-03 11:52:05'),
(141, 2, '08d0c82d-dfa6-457b-9c9f-2b177e568899', 'jwt_refresh_token', 0, '2021-03-03 11:54:01', '2021-03-03 11:54:01'),
(142, 2, '97bebdf7-315f-407e-9e54-f16cbf058e22', 'jwt_refresh_token', 0, '2021-03-03 11:54:13', '2021-03-03 11:54:13'),
(143, 1, 'eb7388db-31b2-4399-9051-a0e713a7c953', 'jwt_refresh_token', 0, '2021-03-03 11:55:44', '2021-03-03 11:55:44'),
(144, 2, 'bc8d912c-c9bf-4c94-b73f-79a58aed8354', 'jwt_refresh_token', 0, '2021-03-03 13:44:55', '2021-03-03 13:44:55'),
(145, 1, '729925da-28bd-4270-911a-f594b47d3f12', 'jwt_refresh_token', 0, '2021-03-04 08:21:44', '2021-03-04 08:21:44'),
(146, 1, '2e685a0e-df19-48d3-84fd-49b7175c2c74', 'jwt_refresh_token', 0, '2021-03-04 08:22:09', '2021-03-04 08:22:09'),
(147, 1, '79c3cdeb-0e37-4b46-89dc-9dc1175bbc52', 'jwt_refresh_token', 0, '2021-03-04 08:24:42', '2021-03-04 08:24:42'),
(148, 1, '39975dcc-dcce-4577-8bae-f5be0bfe22aa', 'jwt_refresh_token', 0, '2021-03-04 08:25:26', '2021-03-04 08:25:26'),
(149, 1, 'acbb1063-9a1e-4be6-8db8-2b54c71a0fe8', 'jwt_refresh_token', 0, '2021-03-04 08:26:33', '2021-03-04 08:26:33'),
(150, 1, '7db380c5-c678-4c89-af63-ad0712d85204', 'jwt_refresh_token', 0, '2021-03-04 08:27:31', '2021-03-04 08:27:31'),
(151, 1, '6d65bb7c-6d5d-4181-a346-e3bc83ad20ab', 'jwt_refresh_token', 0, '2021-03-04 08:29:36', '2021-03-04 08:29:36'),
(152, 1, '2f7ee42f-fdd2-4052-9ac1-5c400263dad3', 'jwt_refresh_token', 0, '2021-03-04 09:11:41', '2021-03-04 09:11:41'),
(153, 1, '0a7d720c-1485-4b35-b7a6-32e9060c5a8d', 'jwt_refresh_token', 0, '2021-03-04 09:13:37', '2021-03-04 09:13:37'),
(154, 1, 'd8e83b1f-2376-4dca-bdd1-1b775b7f95a2', 'jwt_refresh_token', 0, '2021-03-04 09:17:54', '2021-03-04 09:17:54'),
(155, 1, '19b0550e-a2c5-4153-a54b-4b2ecc000ad8', 'jwt_refresh_token', 0, '2021-03-04 09:18:13', '2021-03-04 09:18:13'),
(156, 1, '5a93117a-ac3c-4174-ac01-87199a8ea821', 'jwt_refresh_token', 0, '2021-03-04 09:18:17', '2021-03-04 09:18:17'),
(157, 1, '3778b097-a58f-4931-81da-06d0e0bdbada', 'jwt_refresh_token', 0, '2021-03-04 09:21:41', '2021-03-04 09:21:41'),
(158, 1, 'a28fd419-d5bf-46cd-aa63-ee0e301fccb6', 'jwt_refresh_token', 0, '2021-03-04 09:23:45', '2021-03-04 09:23:45'),
(159, 1, '5a687fd9-4a97-4df6-800b-b3fb467ffe45', 'jwt_refresh_token', 0, '2021-03-04 10:16:06', '2021-03-04 10:16:06'),
(160, 2, '943076c5-57cd-4832-b0b3-c947c43dfa11', 'jwt_refresh_token', 0, '2021-03-04 10:29:08', '2021-03-04 10:29:08'),
(161, 1, '096edc19-0492-4014-a105-d6e9974d38f0', 'jwt_refresh_token', 0, '2021-03-04 10:29:58', '2021-03-04 10:29:58'),
(162, 1, '5702c2cf-a7d3-4078-989e-3b7d84065db9', 'jwt_refresh_token', 0, '2021-04-01 09:15:15', '2021-04-01 09:15:15'),
(163, 1, '60734559-e694-455c-a5f3-fefa0ddd4b55', 'jwt_refresh_token', 0, '2021-04-01 09:46:24', '2021-04-01 09:46:24'),
(164, 1, 'd3280c53-edd0-468d-84a8-e2483a671ad9', 'jwt_refresh_token', 0, '2021-04-01 14:17:43', '2021-04-01 14:17:43'),
(165, 1, 'a9ccc9e7-786d-41bc-8994-d0023a6735ca', 'jwt_refresh_token', 0, '2021-04-03 01:55:47', '2021-04-03 01:55:47'),
(166, 1, 'd119364f-04dd-486b-949c-558354f58041', 'jwt_refresh_token', 0, '2021-04-03 01:58:13', '2021-04-03 01:58:13'),
(167, 323, 'e179df7d-63e3-4746-b328-d8ffa253108c', 'jwt_refresh_token', 0, '2021-04-03 01:58:43', '2021-04-03 01:58:43'),
(168, 323, 'f22d0679-105e-4843-9bae-df99991ece67', 'jwt_refresh_token', 0, '2021-04-03 10:59:54', '2021-04-03 10:59:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(50) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `user_nama`, `user_password`, `user_email`, `user_phone`, `user_status`, `created_at`, `updated_at`) VALUES
(1, 'Admin Pusat', '$2y$10$Rjouuev8QI3/bmgJAaWg3O52Mg00xYWNOEVs0CERf6mdsHTFPC.T.', 'administrator@gmail.com', '08123123', 'Aktif', '2020-06-18 09:39:08', '2020-06-18 09:39:08'),
(329, 'SMP 1 Bandung', '$2y$10$Q9nlG/Lv.0eohNLjDU917.bEzGoC42JlWRNpqnsngVDbc4cenMpQS', 'smp.bandung@gmail.com', '', '', '2021-06-12 09:18:10', '0000-00-00 00:00:00'),
(330, 'SMP Cimahi', '$2y$10$jw.kKvsFtt9C3emfDIW1/OdFVI4PvUqWdtu25ukZse6YEyjX6wU0q', 'smpcimahi@gmail.com', '', '', '2021-06-12 09:18:52', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktifitas`
--
ALTER TABLE `aktifitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kurs`
--
ALTER TABLE `kurs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`lev_id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indeks untuk tabel `pengaturan_laporan`
--
ALTER TABLE `pengaturan_laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `periodes`
--
ALTER TABLE `periodes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pindah_danas`
--
ALTER TABLE `pindah_danas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rabs`
--
ALTER TABLE `rabs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `realisasis`
--
ALTER TABLE `realisasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_aplikasi`
--
ALTER TABLE `role_aplikasi`
  ADD PRIMARY KEY (`rola_id`);

--
-- Indeks untuk tabel `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`role_id`);

--
-- Indeks untuk tabel `saldos`
--
ALTER TABLE `saldos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `saldo_pemasukans`
--
ALTER TABLE `saldo_pemasukans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `saldo_pengeluarans`
--
ALTER TABLE `saldo_pengeluarans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_rabs`
--
ALTER TABLE `setting_rabs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unique` (`token`),
  ADD KEY `tokens_user_id_foreign` (`user_id`),
  ADD KEY `tokens_token_index` (`token`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aktifitas`
--
ALTER TABLE `aktifitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `cabangs`
--
ALTER TABLE `cabangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hutang`
--
ALTER TABLE `hutang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kurs`
--
ALTER TABLE `kurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `lev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `periodes`
--
ALTER TABLE `periodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pindah_danas`
--
ALTER TABLE `pindah_danas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rabs`
--
ALTER TABLE `rabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `realisasis`
--
ALTER TABLE `realisasis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `role_aplikasi`
--
ALTER TABLE `role_aplikasi`
  MODIFY `rola_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `role_users`
--
ALTER TABLE `role_users`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT untuk tabel `saldos`
--
ALTER TABLE `saldos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `saldo_pemasukans`
--
ALTER TABLE `saldo_pemasukans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `saldo_pengeluarans`
--
ALTER TABLE `saldo_pengeluarans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `setting_rabs`
--
ALTER TABLE `setting_rabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
