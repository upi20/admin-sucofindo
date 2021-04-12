-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 13 Apr 2021 pada 01.45
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3
SET
    SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
    time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `engineer_berau`
--
-- --------------------------------------------------------
--
-- Struktur dari tabel `aats`
--
CREATE TABLE `aats` (
    `id` int(10) UNSIGNED NOT NULL,
    `user_id` int(10) UNSIGNED DEFAULT NULL,
    `id_wmp` int(10) UNSIGNED DEFAULT NULL,
    `id_sampling_point` varchar(50) NOT NULL,
    `tanggal_input` date DEFAULT NULL,
    `time_input` time NOT NULL,
    `periode_input` varchar(50) DEFAULT NULL,
    `kondisi_cuaca` varchar(50) DEFAULT NULL,
    `ph` int(11) DEFAULT NULL,
    `tts` int(11) DEFAULT NULL,
    `fe` int(11) DEFAULT NULL,
    `mn` int(11) DEFAULT NULL,
    `debit` int(11) DEFAULT NULL,
    `chem_dose` int(11) DEFAULT NULL,
    `tts_unit` varchar(50) DEFAULT NULL,
    `fe_unit` varchar(50) DEFAULT NULL,
    `mn_unit` varchar(50) DEFAULT NULL,
    `debit_unit` varchar(50) DEFAULT NULL,
    `chem_dose_unit` varchar(50) DEFAULT NULL,
    `status` varchar(50) NOT NULL DEFAULT 'Diproses',
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `aats`
--
INSERT INTO
    `aats` (
        `id`,
        `user_id`,
        `id_wmp`,
        `id_sampling_point`,
        `tanggal_input`,
        `time_input`,
        `periode_input`,
        `kondisi_cuaca`,
        `ph`,
        `tts`,
        `fe`,
        `mn`,
        `debit`,
        `chem_dose`,
        `tts_unit`,
        `fe_unit`,
        `mn_unit`,
        `debit_unit`,
        `chem_dose_unit`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        1,
        1,
        'Titik Penataan (Pintu Effluent)',
        '2021-04-08',
        '00:00:00',
        'Per 6 Jam',
        'Gerimis',
        1262837,
        356736,
        4658734,
        55674,
        674567,
        17673,
        'mg/L',
        'mg/L',
        'mg/L',
        'm3/detik',
        'mg/L',
        'Diproses',
        '2021-04-08 12:42:17',
        '2021-04-08 15:13:59'
    ),
    (
        2,
        1,
        1,
        'Sebelum titik Pengapuran',
        '2021-04-08',
        '00:00:00',
        'Per Jam',
        'Cerah',
        1,
        2,
        4,
        5,
        7,
        1,
        'mg/L',
        'mg/L',
        'mg/L',
        'm3/detik',
        'mg/L',
        'Diterima',
        '2021-04-08 13:26:27',
        '2021-04-08 13:26:27'
    ),
    (
        3,
        1,
        1,
        'Sebelum titik Pengapuran',
        '2021-04-08',
        '00:00:00',
        'Per Jam',
        'Cerah',
        3,
        100,
        1,
        3,
        4,
        4,
        'mg/L',
        'mg/L',
        'mg/L',
        'm3/detik',
        'mg/L',
        'Diproses',
        '2021-04-08 17:13:43',
        '2021-04-08 17:13:43'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `absensis`
--
CREATE TABLE `absensis` (
    `id` int(10) UNSIGNED NOT NULL,
    `id_pegawai` int(11) DEFAULT NULL,
    `status` varchar(50) DEFAULT NULL,
    `tanggal` date DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `absensis`
--
INSERT INTO
    `absensis` (
        `id`,
        `id_pegawai`,
        `status`,
        `tanggal`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        24,
        11,
        'Hadir',
        '2021-04-01',
        '2021-04-01 16:41:55',
        '2021-04-01 16:41:55'
    ),
    (
        25,
        8,
        'Hadir',
        '2021-04-01',
        '2021-04-01 16:43:21',
        '2021-04-01 16:43:21'
    ),
    (
        26,
        9,
        'Hadir',
        '2021-04-01',
        '2021-04-01 16:44:07',
        '2021-04-01 16:44:07'
    ),
    (
        27,
        10,
        'Hadir',
        '2021-04-01',
        '2021-04-01 16:56:41',
        '2021-04-01 16:56:41'
    ),
    (
        28,
        8,
        'Hadir',
        '2021-04-06',
        '2021-04-06 09:01:19',
        '2021-04-06 09:01:19'
    ),
    (
        29,
        9,
        'Hadir',
        '2021-04-06',
        '2021-04-06 09:02:02',
        '2021-04-06 09:02:02'
    ),
    (
        30,
        10,
        'Hadir',
        '2021-04-06',
        '2021-04-06 09:05:58',
        '2021-04-06 09:05:58'
    ),
    (
        31,
        11,
        'Hadir',
        '2021-04-07',
        '2021-04-07 02:48:52',
        '2021-04-07 02:48:52'
    ),
    (
        32,
        10,
        'Hadir',
        '2021-04-07',
        '2021-04-07 02:51:16',
        '2021-04-07 02:51:16'
    ),
    (
        33,
        9,
        'Hadir',
        '2021-04-08',
        '2021-04-08 02:05:16',
        '2021-04-08 02:05:16'
    ),
    (
        34,
        8,
        'Hadir',
        '2021-04-08',
        '2021-04-08 15:27:56',
        '2021-04-08 15:27:56'
    ),
    (
        35,
        10,
        'Hadir',
        '2021-04-08',
        '2021-04-08 15:32:33',
        '2021-04-08 15:32:33'
    ),
    (
        36,
        11,
        'Hadir',
        '2021-04-08',
        '2021-04-08 15:36:14',
        '2021-04-08 15:36:14'
    ),
    (
        37,
        13,
        'Hadir',
        '2021-04-08',
        '2021-04-08 15:59:21',
        '2021-04-08 15:59:21'
    ),
    (
        38,
        16,
        'Hadir',
        '2021-04-08',
        '2021-04-08 17:29:46',
        '2021-04-08 17:29:46'
    ),
    (
        39,
        15,
        'Hadir',
        '2021-04-08',
        '2021-04-08 17:30:02',
        '2021-04-08 17:30:02'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `adonis_schema`
--
CREATE TABLE `adonis_schema` (
    `id` int(10) UNSIGNED NOT NULL,
    `name` varchar(255) DEFAULT NULL,
    `batch` int(11) DEFAULT NULL,
    `migration_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `adonis_schema`
--
INSERT INTO
    `adonis_schema` (`id`, `name`, `batch`, `migration_time`)
VALUES
    (
        1,
        '1503248427885_user',
        1,
        '2021-02-26 04:00:41'
    ),
    (
        2,
        '1503248427886_token',
        1,
        '2021-02-26 04:00:43'
    ),
    (
        3,
        '1614308247765_level_schema',
        1,
        '2021-02-26 04:00:44'
    ),
    (
        4,
        '1614308406984_perusahaan_schema',
        1,
        '2021-02-26 04:00:45'
    ),
    (
        5,
        '1614308469790_periode_schema',
        1,
        '2021-02-26 04:00:45'
    ),
    (
        7,
        '1614308525931_stok_shift_schema',
        1,
        '2021-02-26 04:00:46'
    ),
    (
        8,
        '1614308562713_weather_kondisi_schema',
        1,
        '2021-02-26 04:00:47'
    ),
    (
        9,
        '1614308601206_jenis_perbaikan_schema',
        1,
        '2021-02-26 04:00:48'
    ),
    (
        10,
        '1614308987575_user_schema',
        1,
        '2021-02-26 04:00:50'
    ),
    (
        11,
        '1614309309725_jabatan_schema',
        1,
        '2021-02-26 04:00:52'
    ),
    (
        12,
        '1614309405655_chemical_schema',
        1,
        '2021-02-26 04:00:52'
    ),
    (
        13,
        '1614309430711_area_tambang_schema',
        1,
        '2021-02-26 04:00:55'
    ),
    (
        14,
        '1614311169471_perusahaan_favorite_schema',
        1,
        '2021-02-26 04:01:04'
    ),
    (
        15,
        '1614828022322_sampling_point_schema',
        2,
        '2021-03-04 03:32:56'
    ),
    (
        19,
        '1614828028232_aat_schema',
        3,
        '2021-03-04 03:47:55'
    ),
    (
        20,
        '1615774883015_bahan_kimia_schema',
        4,
        '2021-03-15 02:28:14'
    ),
    (
        21,
        '1615774889709_perbaikan_schema',
        4,
        '2021-03-15 02:28:17'
    ),
    (
        27,
        '1617237792076_pegawai_schema',
        5,
        '2021-04-01 03:22:53'
    ),
    (
        28,
        '1617237915205_absensi_schema',
        5,
        '2021-04-01 03:22:54'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `area_tambangs`
--
CREATE TABLE `area_tambangs` (
    `id` int(10) UNSIGNED NOT NULL,
    `id_perusahaan` int(10) UNSIGNED DEFAULT NULL,
    `id_user` int(10) UNSIGNED NOT NULL,
    `nama` varchar(50) NOT NULL,
    `keterangan` text DEFAULT NULL,
    `lat` varchar(20) DEFAULT NULL,
    `long` varchar(20) DEFAULT NULL,
    `status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `area_tambangs`
--
INSERT INTO
    `area_tambangs` (
        `id`,
        `id_perusahaan`,
        `id_user`,
        `nama`,
        `keterangan`,
        `lat`,
        `long`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        1,
        1,
        'Area Tambang LMO',
        '-',
        '-4.04050000',
        '137.0614',
        1,
        '2021-03-03 14:11:22',
        '2021-03-03 14:11:22'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `bahan_kimias`
--
CREATE TABLE `bahan_kimias` (
    `id` int(10) UNSIGNED NOT NULL,
    `id_wmp` int(10) UNSIGNED DEFAULT NULL,
    `user_id` int(10) UNSIGNED DEFAULT NULL,
    `tanggal_input` date DEFAULT NULL,
    `periode_input` varchar(50) DEFAULT NULL,
    `waktu_input` varchar(50) DEFAULT NULL,
    `chemical` varchar(50) DEFAULT NULL,
    `purity` varchar(50) DEFAULT NULL,
    `before` varchar(50) DEFAULT NULL,
    `before_unit` varchar(50) DEFAULT NULL,
    `current` varchar(50) DEFAULT NULL,
    `current_unit` varchar(50) DEFAULT NULL,
    `keterangan` text DEFAULT NULL,
    `status` varchar(50) DEFAULT 'Diproses',
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `bahan_kimias`
--
INSERT INTO
    `bahan_kimias` (
        `id`,
        `id_wmp`,
        `user_id`,
        `tanggal_input`,
        `periode_input`,
        `waktu_input`,
        `chemical`,
        `purity`,
        `before`,
        `before_unit`,
        `current`,
        `current_unit`,
        `keterangan`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        1,
        1,
        '2021-04-08',
        'Per Jam',
        '2021-04-08T05:41:58.292Z',
        'Kapur',
        '1',
        '1',
        'L',
        '2',
        'L',
        NULL,
        'Diproses',
        '2021-04-08 12:42:17',
        '2021-04-08 12:42:17'
    ),
    (
        2,
        1,
        1,
        '2021-04-08',
        'Per Jam',
        '2021-04-08T06:27:14.061Z',
        'Kapur',
        '1',
        '1',
        'L',
        '2',
        'L',
        NULL,
        'Diproses',
        '2021-04-08 13:27:29',
        '2021-04-08 13:27:29'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `chemicals`
--
CREATE TABLE `chemicals` (
    `id` int(10) UNSIGNED NOT NULL,
    `nama` varchar(50) NOT NULL,
    `keterangan` text DEFAULT NULL,
    `status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
-- Struktur dari tabel `jabatans`
--
CREATE TABLE `jabatans` (
    `id` int(10) UNSIGNED NOT NULL,
    `id_perusahaan` int(10) UNSIGNED DEFAULT NULL,
    `nama` varchar(50) NOT NULL,
    `keterangan` text DEFAULT NULL,
    `status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `jabatans`
--
INSERT INTO
    `jabatans` (
        `id`,
        `id_perusahaan`,
        `nama`,
        `keterangan`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        3,
        'Enviromental  Specialist',
        '-',
        1,
        '2021-03-01 10:59:41',
        '2021-03-01 10:59:41'
    ),
    (
        2,
        1,
        'Admin Sucofindo',
        NULL,
        1,
        '2021-04-12 19:03:28',
        '2021-04-12 19:03:28'
    ),
    (
        3,
        1,
        'Supervissor',
        'keterangan',
        1,
        '2021-04-13 01:06:31',
        '2021-04-13 01:06:31'
    ),
    (
        4,
        3,
        'Supervissor',
        'keterangan',
        1,
        '2021-04-13 01:07:19',
        '2021-04-13 01:07:19'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `jenis_perbaikans`
--
CREATE TABLE `jenis_perbaikans` (
    `id` int(10) UNSIGNED NOT NULL,
    `nama` varchar(50) NOT NULL,
    `keterangan` text DEFAULT NULL,
    `status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
-- Struktur dari tabel `levels`
--
CREATE TABLE `levels` (
    `id` int(10) UNSIGNED NOT NULL,
    `lev_nama` varchar(50) NOT NULL,
    `lev_keterangan` text DEFAULT NULL,
    `lev_status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `levels`
--
INSERT INTO
    `levels` (
        `id`,
        `lev_nama`,
        `lev_keterangan`,
        `lev_status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        'Pengawas',
        '-',
        1,
        '2021-02-26 11:19:27',
        '2021-02-26 11:19:27'
    ),
    (
        2,
        'Highest Administrator',
        '-',
        1,
        '2021-03-03 11:53:01',
        '2021-03-03 11:53:01'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `pegawais`
--
CREATE TABLE `pegawais` (
    `id` int(10) UNSIGNED NOT NULL,
    `id_pengawas` int(11) DEFAULT NULL,
    `id_wmp` int(11) DEFAULT NULL,
    `nama` varchar(50) DEFAULT NULL,
    `status` varchar(50) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `pegawais`
--
INSERT INTO
    `pegawais` (
        `id`,
        `id_pengawas`,
        `id_wmp`,
        `nama`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        8,
        1,
        2,
        'Soni',
        'Mobile',
        '2021-04-01 12:19:32',
        '2021-04-01 12:19:32'
    ),
    (
        9,
        1,
        1,
        'Bayu',
        'Dedicated',
        '2021-04-01 12:19:57',
        '2021-04-01 12:19:57'
    ),
    (
        10,
        1,
        1,
        'A',
        'Dedicated',
        '2021-04-01 12:20:09',
        '2021-04-01 12:20:09'
    ),
    (
        11,
        1,
        1,
        'Emil',
        'Dedicated',
        '2021-04-01 13:56:37',
        '2021-04-01 13:56:37'
    ),
    (
        13,
        1,
        1,
        'RYan',
        'Dedicated',
        '2021-04-08 15:56:36',
        '2021-04-08 15:56:36'
    ),
    (
        14,
        1,
        1,
        'RYan',
        'Dedicated',
        '2021-04-08 15:56:36',
        '2021-04-08 15:56:36'
    ),
    (
        16,
        1,
        1,
        'RYan',
        'Dedicated',
        '2021-04-08 15:56:36',
        '2021-04-08 15:56:36'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `perbaikans`
--
CREATE TABLE `perbaikans` (
    `id` int(11) UNSIGNED NOT NULL,
    `id_wmp` int(11) UNSIGNED DEFAULT NULL,
    `user_id` int(11) UNSIGNED DEFAULT NULL,
    `tanggal_input` date DEFAULT NULL,
    `periode_input` varchar(50) DEFAULT NULL,
    `waktu_input` varchar(50) DEFAULT NULL,
    `jenis_perbaikan` varchar(50) DEFAULT NULL,
    `notifikasi` varchar(50) DEFAULT NULL,
    `keterangan` text DEFAULT NULL,
    `status` varchar(50) DEFAULT 'Diproses',
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `perbaikans`
--
INSERT INTO
    `perbaikans` (
        `id`,
        `id_wmp`,
        `user_id`,
        `tanggal_input`,
        `periode_input`,
        `waktu_input`,
        `jenis_perbaikan`,
        `notifikasi`,
        `keterangan`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        1,
        1,
        '2021-04-08',
        'Per Jam',
        '2021-04-08T05:42:07.586Z',
        'Pengerukan',
        'Ya',
        '2',
        'Diproses',
        '2021-04-08 12:42:17',
        '2021-04-08 12:42:17'
    ),
    (
        2,
        1,
        1,
        '2021-04-08',
        'Per Jam',
        '2021-04-08T06:25:37.710Z',
        'Pengerukan',
        'Tidak',
        '',
        'Diproses',
        '2021-04-08 13:26:27',
        '2021-04-08 13:26:27'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `periodes`
--
CREATE TABLE `periodes` (
    `id` int(10) UNSIGNED NOT NULL,
    `nama` varchar(50) NOT NULL,
    `keterangan` text DEFAULT NULL,
    `status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
-- Struktur dari tabel `perusahaans`
--
CREATE TABLE `perusahaans` (
    `id` int(11) UNSIGNED NOT NULL,
    `nama` varchar(50) NOT NULL,
    `logo` varchar(50) NOT NULL,
    `keterangan` text DEFAULT NULL,
    `alamat` text DEFAULT NULL,
    `no_telpon` varchar(15) DEFAULT NULL,
    `status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `perusahaans`
--
INSERT INTO
    `perusahaans` (
        `id`,
        `nama`,
        `logo`,
        `keterangan`,
        `alamat`,
        `no_telpon`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        'PT. Sucufindo',
        'https://placeimg.com/640/480/people',
        'GGWP keterangan',
        'GGWP alamat',
        '08123',
        1,
        '2021-02-26 15:05:19',
        '2021-02-26 15:05:19'
    ),
    (
        2,
        '2sadasd',
        'https://placeimg.com/640/480/people',
        'lorem',
        'cimahi',
        '08123',
        1,
        '2021-03-01 15:43:42',
        '2021-03-01 15:43:42'
    ),
    (
        3,
        'Admin Sucofindosdsad',
        'https://placeimg.com/640/480/people',
        'saddasd',
        'dasdsad',
        '3321321',
        1,
        '2021-04-12 20:28:15',
        '2021-04-12 20:28:15'
    ),
    (
        4,
        'Admin Sucofindo',
        'https://placeimg.com/640/480/people',
        'saddasd',
        'dasdsad',
        '3321321',
        1,
        '2021-04-12 20:28:15',
        '2021-04-12 20:28:15'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `perusahaan_favorites`
--
CREATE TABLE `perusahaan_favorites` (
    `id` int(10) UNSIGNED NOT NULL,
    `user_id` int(10) UNSIGNED DEFAULT NULL,
    `id_perusahaan` int(10) UNSIGNED DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `perusahaan_favorites`
--
INSERT INTO
    `perusahaan_favorites` (
        `id`,
        `user_id`,
        `id_perusahaan`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        1,
        1,
        '2021-02-26 15:05:50',
        '2021-02-26 15:05:50'
    ),
    (
        2,
        1,
        2,
        '2021-03-02 14:23:45',
        '2021-03-02 14:23:45'
    ),
    (
        3,
        2,
        1,
        '2021-03-02 14:27:33',
        '2021-03-02 14:27:33'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `sampling_points`
--
CREATE TABLE `sampling_points` (
    `id` int(10) UNSIGNED NOT NULL,
    `nama` varchar(50) NOT NULL,
    `keterangan` text DEFAULT NULL,
    `status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `sampling_points`
--
INSERT INTO
    `sampling_points` (
        `id`,
        `nama`,
        `keterangan`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        'Sebelum Titik Pengapuran',
        '-',
        1,
        '2021-03-04 10:41:26',
        '2021-03-04 10:41:26'
    ),
    (
        2,
        'Sebelum Titik Penawasan',
        '-',
        1,
        '2021-03-04 10:41:26',
        '2021-03-04 10:41:26'
    ),
    (
        3,
        'Pintu Masuk Sedement Pond',
        '-',
        1,
        '2021-03-04 10:42:03',
        '2021-03-04 10:42:03'
    ),
    (
        4,
        'Pintu Masuk Setting Pond',
        '-',
        1,
        '2021-03-04 10:42:03',
        '2021-03-04 10:42:03'
    ),
    (
        5,
        'Titik Penataan ( Pintu Effluent )',
        '-',
        1,
        '2021-03-04 10:42:49',
        '2021-03-04 10:42:49'
    ),
    (
        6,
        'Titik Lainnya ( di SPARING )',
        '-',
        1,
        '2021-03-04 10:42:49',
        '2021-03-04 10:42:49'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `stok_shifts`
--
CREATE TABLE `stok_shifts` (
    `id` int(10) UNSIGNED NOT NULL,
    `nama` varchar(50) NOT NULL,
    `keterangan` text DEFAULT NULL,
    `status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

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
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `tokens`
--
INSERT INTO
    `tokens` (
        `id`,
        `user_id`,
        `token`,
        `type`,
        `is_revoked`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        12,
        1,
        'd7cb1e44-320d-4d8f-804e-2931f0e0e10a',
        'jwt_refresh_token',
        0,
        '2021-02-26 15:08:10',
        '2021-02-26 15:08:10'
    ),
    (
        13,
        1,
        'ec480a71-cf51-4cbd-94a8-97817a3dcaca',
        'jwt_refresh_token',
        0,
        '2021-03-01 09:33:42',
        '2021-03-01 09:33:42'
    ),
    (
        14,
        1,
        '407e5b32-b451-4fbe-a697-182b7fe05bba',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:05:15',
        '2021-03-01 10:05:15'
    ),
    (
        15,
        1,
        '1d73846e-f930-4e9c-a3e7-1dd2057cac73',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:17:01',
        '2021-03-01 10:17:01'
    ),
    (
        16,
        1,
        '70dc6865-e40c-4ec1-a636-45307318bc01',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:18:29',
        '2021-03-01 10:18:29'
    ),
    (
        17,
        1,
        '30604aa9-2670-4e8e-a0ff-134d1da973ee',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:19:19',
        '2021-03-01 10:19:19'
    ),
    (
        18,
        1,
        '8dfb723e-b87e-44db-9135-ed8869b0d201',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:20:13',
        '2021-03-01 10:20:13'
    ),
    (
        19,
        1,
        '124ad6a3-c4ee-44ff-b945-2c1ffe2a392d',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:28:04',
        '2021-03-01 10:28:04'
    ),
    (
        20,
        1,
        '016c0ade-f64d-4144-83b8-6fe466d02d8b',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:29:51',
        '2021-03-01 10:29:51'
    ),
    (
        21,
        1,
        'a78dcf6f-6c5b-4ed2-aa18-3e64749a1867',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:31:18',
        '2021-03-01 10:31:18'
    ),
    (
        22,
        1,
        '5d23db86-8bd2-4734-95cb-64e3f3564194',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:31:40',
        '2021-03-01 10:31:40'
    ),
    (
        23,
        1,
        '76511a80-cae2-4649-894f-ce6edca9b3bd',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:35:22',
        '2021-03-01 10:35:22'
    ),
    (
        24,
        1,
        '3b2ada9c-bde5-4b33-9824-9e1ea007fe09',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:40:59',
        '2021-03-01 10:40:59'
    ),
    (
        25,
        1,
        '5a1ce040-8717-42c0-bc00-9cfc1ddf3362',
        'jwt_refresh_token',
        0,
        '2021-03-01 10:41:47',
        '2021-03-01 10:41:47'
    ),
    (
        26,
        1,
        '7b6627f8-29c2-4868-aba9-e05155ac43ea',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:02:00',
        '2021-03-01 11:02:00'
    ),
    (
        27,
        1,
        '940d1c36-25dd-4423-81f4-d33e606eefe2',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:02:10',
        '2021-03-01 11:02:10'
    ),
    (
        28,
        1,
        '935c9623-38f4-47e5-b483-93c259a06a1d',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:02:53',
        '2021-03-01 11:02:53'
    ),
    (
        29,
        1,
        'acc94877-f466-4139-a935-73ba02826dc7',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:03:27',
        '2021-03-01 11:03:27'
    ),
    (
        30,
        1,
        'baf8242f-034e-4aa0-81e8-821f64802887',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:09:35',
        '2021-03-01 11:09:35'
    ),
    (
        31,
        1,
        '48bfebee-4a0a-45f1-8346-1b5f5666c8e7',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:10:11',
        '2021-03-01 11:10:11'
    ),
    (
        32,
        1,
        '0e672328-fe1d-4000-83a3-4017729e34b0',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:10:51',
        '2021-03-01 11:10:51'
    ),
    (
        33,
        1,
        '7a9a29a8-0b7a-440b-9a2f-056ef6ebeef4',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:11:02',
        '2021-03-01 11:11:02'
    ),
    (
        34,
        1,
        '81c0c9d4-928c-42e5-b8e6-1d11b205e34b',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:11:10',
        '2021-03-01 11:11:10'
    ),
    (
        35,
        1,
        '011a4b2a-0c21-4bec-b5be-0e2a341dddce',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:11:20',
        '2021-03-01 11:11:20'
    ),
    (
        36,
        1,
        'd43a113a-3f15-43e8-b282-2c864ab8b10e',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:11:32',
        '2021-03-01 11:11:32'
    ),
    (
        37,
        1,
        '83cec51c-f8f9-464e-80bc-92ee0f6286dd',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:15:58',
        '2021-03-01 11:15:58'
    ),
    (
        38,
        1,
        'ad992bc4-e2c1-4d6d-918c-f5e418c07555',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:16:16',
        '2021-03-01 11:16:16'
    ),
    (
        39,
        1,
        '8c3e0e81-d35f-4c67-b0ed-f84aa738cac8',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:19:15',
        '2021-03-01 11:19:15'
    ),
    (
        40,
        1,
        '065ed505-8931-4c6d-adc7-2f68e7f067f6',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:21:40',
        '2021-03-01 11:21:40'
    ),
    (
        41,
        1,
        '4b5dd29f-9776-473c-a534-d56d9d3e478a',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:22:13',
        '2021-03-01 11:22:13'
    ),
    (
        42,
        1,
        'b446ab16-53d0-4f3f-b620-c5ff8a3502a3',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:25:17',
        '2021-03-01 11:25:17'
    ),
    (
        43,
        1,
        'ecb2875d-de15-4b5d-bda6-854dbd879012',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:28:01',
        '2021-03-01 11:28:01'
    ),
    (
        44,
        1,
        'a9e5f528-2e42-410e-a375-4420327f5391',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:28:10',
        '2021-03-01 11:28:10'
    ),
    (
        45,
        1,
        'c8782fe9-f158-433b-a6a5-fdbc72b2aa94',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:28:48',
        '2021-03-01 11:28:48'
    ),
    (
        46,
        1,
        '1548491b-b1b1-45e4-a9bb-43c10feb985a',
        'jwt_refresh_token',
        0,
        '2021-03-01 11:30:25',
        '2021-03-01 11:30:25'
    ),
    (
        47,
        1,
        'c56756aa-045d-4848-aec3-54319997dd68',
        'jwt_refresh_token',
        0,
        '2021-03-01 12:04:22',
        '2021-03-01 12:04:22'
    ),
    (
        48,
        1,
        'cf7c9e7b-d5b1-4ff6-a98d-15be4bf819f1',
        'jwt_refresh_token',
        0,
        '2021-03-01 12:10:21',
        '2021-03-01 12:10:21'
    ),
    (
        49,
        1,
        '68805751-0faa-413d-adba-448669f66d3c',
        'jwt_refresh_token',
        0,
        '2021-03-01 12:11:16',
        '2021-03-01 12:11:16'
    ),
    (
        50,
        1,
        '3162ca55-01fb-441a-8881-3b3ec5eec7d7',
        'jwt_refresh_token',
        0,
        '2021-03-01 12:11:41',
        '2021-03-01 12:11:41'
    ),
    (
        51,
        1,
        'dbee0c11-c999-4440-bef6-30d3ae5df619',
        'jwt_refresh_token',
        0,
        '2021-03-01 12:14:44',
        '2021-03-01 12:14:44'
    ),
    (
        52,
        1,
        'e2470a38-09ec-41cf-8c02-a2d0eaf23e55',
        'jwt_refresh_token',
        0,
        '2021-03-01 12:15:02',
        '2021-03-01 12:15:02'
    ),
    (
        53,
        1,
        '3c0a3ebc-ef23-4db5-8ef5-2c15b421ba76',
        'jwt_refresh_token',
        0,
        '2021-03-01 12:15:24',
        '2021-03-01 12:15:24'
    ),
    (
        54,
        1,
        '8e0981c5-8246-4c56-9c48-5fe15c9bf1e3',
        'jwt_refresh_token',
        0,
        '2021-03-01 12:16:56',
        '2021-03-01 12:16:56'
    ),
    (
        55,
        1,
        'b40bb182-c37e-4506-99c1-e80eaaf6583e',
        'jwt_refresh_token',
        0,
        '2021-03-01 12:17:17',
        '2021-03-01 12:17:17'
    ),
    (
        56,
        1,
        'd5dc768a-2362-4371-bfe7-1bc501a56fd6',
        'jwt_refresh_token',
        0,
        '2021-03-01 12:17:39',
        '2021-03-01 12:17:39'
    ),
    (
        57,
        1,
        '2aeb9a18-f732-48cf-b51a-749ce4f9ef7c',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:09:44',
        '2021-03-01 14:09:44'
    ),
    (
        58,
        1,
        'f90c2aa3-bcd3-454c-8142-4f041188790d',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:09:47',
        '2021-03-01 14:09:47'
    ),
    (
        59,
        1,
        'a95d9e3a-5850-41e1-aa83-47c784c04b46',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:12:19',
        '2021-03-01 14:12:19'
    ),
    (
        60,
        1,
        'b413cd8f-46a3-4622-aa7b-57fd4ed897e1',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:12:36',
        '2021-03-01 14:12:36'
    ),
    (
        61,
        1,
        '76eba7a6-6580-40c5-b84a-7ade0c05b012',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:12:58',
        '2021-03-01 14:12:58'
    ),
    (
        62,
        1,
        '0b7f467e-2291-4647-8cfe-ebdad6de492a',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:14:47',
        '2021-03-01 14:14:47'
    ),
    (
        63,
        1,
        '41e97c3b-8906-45a0-8ec1-845398f5bf44',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:14:54',
        '2021-03-01 14:14:54'
    ),
    (
        64,
        1,
        '4d5d8ad5-519d-4de5-9e81-3761144e536f',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:16:31',
        '2021-03-01 14:16:31'
    ),
    (
        65,
        1,
        '9eee5b77-dffd-41aa-a18c-398e4bae6a56',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:17:09',
        '2021-03-01 14:17:09'
    ),
    (
        66,
        1,
        '806ea255-a282-460f-b8e6-58847fc1a72b',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:18:37',
        '2021-03-01 14:18:37'
    ),
    (
        67,
        1,
        '154a9c77-b131-4e38-9c04-d5ea4541159b',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:18:52',
        '2021-03-01 14:18:52'
    ),
    (
        68,
        1,
        'f24665a8-b07f-4209-849f-e871208d3987',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:18:54',
        '2021-03-01 14:18:54'
    ),
    (
        69,
        1,
        'c9814638-a31b-40b5-98c4-6030163a3f35',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:19:42',
        '2021-03-01 14:19:42'
    ),
    (
        70,
        1,
        'caec5f28-d826-4236-a8cb-30d817225d40',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:19:53',
        '2021-03-01 14:19:53'
    ),
    (
        71,
        1,
        '663961a0-2b73-4a10-9b84-9d6ec4f0af58',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:23:14',
        '2021-03-01 14:23:14'
    ),
    (
        72,
        1,
        '5ceb027f-9bfc-438a-a57c-00fa9933c386',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:23:53',
        '2021-03-01 14:23:53'
    ),
    (
        73,
        1,
        'b11e4ac2-1acd-4222-8e73-e65bb9ce0474',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:24:10',
        '2021-03-01 14:24:10'
    ),
    (
        74,
        1,
        'dbe2eb49-054a-4f77-8a46-067fcdc97b0a',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:24:37',
        '2021-03-01 14:24:37'
    ),
    (
        75,
        1,
        '4fdb4c4d-6ab8-4675-88a4-b31c1c461cb5',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:53:15',
        '2021-03-01 14:53:15'
    ),
    (
        76,
        1,
        '37a68a34-8f63-40ad-97b7-a19ab67464a5',
        'jwt_refresh_token',
        0,
        '2021-03-01 14:58:13',
        '2021-03-01 14:58:13'
    ),
    (
        77,
        1,
        '4de73978-c5ca-4886-80e4-1d807e94523e',
        'jwt_refresh_token',
        0,
        '2021-03-01 15:30:17',
        '2021-03-01 15:30:17'
    ),
    (
        78,
        1,
        '0f8e5f22-fd11-469e-9a54-374f675ae770',
        'jwt_refresh_token',
        0,
        '2021-03-01 15:49:39',
        '2021-03-01 15:49:39'
    ),
    (
        79,
        1,
        'a756f609-dd5b-4658-afd5-2a387ecf5597',
        'jwt_refresh_token',
        0,
        '2021-03-01 15:52:00',
        '2021-03-01 15:52:00'
    ),
    (
        80,
        1,
        'c8476f0a-d959-4435-9d3d-ebaeff1b1472',
        'jwt_refresh_token',
        0,
        '2021-03-01 15:52:00',
        '2021-03-01 15:52:00'
    ),
    (
        81,
        1,
        '6630cdef-b9a3-46c8-8b72-e77a9d22c3a8',
        'jwt_refresh_token',
        0,
        '2021-03-01 15:54:20',
        '2021-03-01 15:54:20'
    ),
    (
        82,
        1,
        '9aedc84c-f487-4815-be88-0fdc3efffbc2',
        'jwt_refresh_token',
        0,
        '2021-03-01 15:54:48',
        '2021-03-01 15:54:48'
    ),
    (
        83,
        1,
        '6e07e35e-647b-443d-92d3-7c3d726139bc',
        'jwt_refresh_token',
        0,
        '2021-03-01 15:55:03',
        '2021-03-01 15:55:03'
    ),
    (
        84,
        1,
        '8c5bc2cf-4868-4489-aff8-d70ddf510115',
        'jwt_refresh_token',
        0,
        '2021-03-01 15:55:17',
        '2021-03-01 15:55:17'
    ),
    (
        85,
        1,
        '5b4e3a05-2a69-4478-8a43-4b1746e97eed',
        'jwt_refresh_token',
        0,
        '2021-03-01 15:55:37',
        '2021-03-01 15:55:37'
    ),
    (
        86,
        1,
        '2398741d-40aa-4d90-94cc-a3fb00d2dd47',
        'jwt_refresh_token',
        0,
        '2021-03-01 15:55:37',
        '2021-03-01 15:55:37'
    ),
    (
        87,
        1,
        '634c9247-b025-4744-97e3-0da206120d23',
        'jwt_refresh_token',
        0,
        '2021-03-01 15:58:46',
        '2021-03-01 15:58:46'
    ),
    (
        88,
        1,
        'fab2822d-5945-4e01-b92c-127e097ba00d',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:06:23',
        '2021-03-01 16:06:23'
    ),
    (
        89,
        1,
        '54af9cf5-ebaf-4940-84b9-8a29c510979a',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:06:56',
        '2021-03-01 16:06:56'
    ),
    (
        90,
        1,
        'c6052d3e-80bc-414f-8733-a43aa093c2ec',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:06:56',
        '2021-03-01 16:06:56'
    ),
    (
        91,
        1,
        'd7b0c8b6-c08f-41e8-8e04-461e3d639971',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:07:11',
        '2021-03-01 16:07:11'
    ),
    (
        92,
        1,
        '100c7a24-2625-4327-9593-82204e13f8ef',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:07:12',
        '2021-03-01 16:07:12'
    ),
    (
        93,
        1,
        '3cd56a32-b142-4d8b-b0de-3264138ec393',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:08:04',
        '2021-03-01 16:08:04'
    ),
    (
        94,
        1,
        '5225f208-6ef7-4f46-a0c8-df11146dfec5',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:08:23',
        '2021-03-01 16:08:23'
    ),
    (
        95,
        1,
        '4187b016-2502-4782-ba4b-ea1e8ff1cfbd',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:08:23',
        '2021-03-01 16:08:23'
    ),
    (
        96,
        1,
        'bd51be54-ec38-453f-a7b8-b671aa6ca3d2',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:29:01',
        '2021-03-01 16:29:01'
    ),
    (
        97,
        1,
        '7ce872aa-b0e1-43a0-b3cc-3d2c48274bf6',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:30:04',
        '2021-03-01 16:30:04'
    ),
    (
        98,
        1,
        'a506b058-c562-4fcb-b6f6-a8443e392214',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:30:24',
        '2021-03-01 16:30:24'
    ),
    (
        99,
        1,
        '1c145e5c-2893-4ecc-bed2-7b1968d228b8',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:30:24',
        '2021-03-01 16:30:24'
    ),
    (
        100,
        1,
        '9ff5894d-8f2f-496f-a72a-db9473d7d62e',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:30:41',
        '2021-03-01 16:30:41'
    ),
    (
        101,
        1,
        'c91fcdb9-1a2c-4a31-a95b-96917672923f',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:30:45',
        '2021-03-01 16:30:45'
    ),
    (
        102,
        1,
        '47c2c7db-2dce-46be-aa7e-6f9241b186f3',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:30:47',
        '2021-03-01 16:30:47'
    ),
    (
        103,
        1,
        'c5274354-551b-47ef-ab6a-2cd83740fd9e',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:31:44',
        '2021-03-01 16:31:44'
    ),
    (
        104,
        1,
        '4c8dc5a8-e031-49f3-a24d-c32b0e70a9a2',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:32:38',
        '2021-03-01 16:32:38'
    ),
    (
        105,
        1,
        'd3e3935c-3b23-4cc2-95c2-e82dfce8c044',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:32:38',
        '2021-03-01 16:32:38'
    ),
    (
        106,
        1,
        'b99f25a4-d99c-4b87-9cb8-3eaeb55a93b7',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:32:42',
        '2021-03-01 16:32:42'
    ),
    (
        107,
        1,
        'b2d8afa4-b17e-4dd0-bc4e-2951993388b4',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:33:57',
        '2021-03-01 16:33:57'
    ),
    (
        108,
        1,
        '536a0d9d-c3f2-4ca3-91e4-a2c4cba17f02',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:34:00',
        '2021-03-01 16:34:00'
    ),
    (
        109,
        1,
        '513dd6ad-def9-47b1-a8d2-e62ae31190e3',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:34:24',
        '2021-03-01 16:34:24'
    ),
    (
        110,
        1,
        'a579519b-0b18-4bbe-80cd-67068cd78198',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:35:09',
        '2021-03-01 16:35:09'
    ),
    (
        111,
        1,
        '6efe270c-fa90-4a57-84de-9992e5d5f7ab',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:35:10',
        '2021-03-01 16:35:10'
    ),
    (
        112,
        1,
        '9e94b455-cb30-45a8-949a-0026d71b6f92',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:35:18',
        '2021-03-01 16:35:18'
    ),
    (
        113,
        1,
        'eeaa2b36-023a-4c2c-a43a-806d7c729209',
        'jwt_refresh_token',
        0,
        '2021-03-01 16:35:18',
        '2021-03-01 16:35:18'
    ),
    (
        114,
        1,
        '21ce3b21-617f-425f-a5f8-8b85039bde97',
        'jwt_refresh_token',
        0,
        '2021-03-01 17:08:13',
        '2021-03-01 17:08:13'
    ),
    (
        115,
        1,
        '3d10992c-31df-46e4-8796-e133369bb6b5',
        'jwt_refresh_token',
        0,
        '2021-03-01 17:22:31',
        '2021-03-01 17:22:31'
    ),
    (
        116,
        1,
        'e125dfab-c322-435b-a85a-868635ecbfb1',
        'jwt_refresh_token',
        0,
        '2021-03-01 17:23:28',
        '2021-03-01 17:23:28'
    ),
    (
        117,
        1,
        'bde38d5b-0164-4d27-ad4a-6de2bcff76a5',
        'jwt_refresh_token',
        0,
        '2021-03-01 17:23:56',
        '2021-03-01 17:23:56'
    ),
    (
        118,
        1,
        'fed3704e-72f6-46e9-94e9-3779b4e7880d',
        'jwt_refresh_token',
        0,
        '2021-03-01 17:23:57',
        '2021-03-01 17:23:57'
    ),
    (
        119,
        1,
        '235bb98b-da68-48f1-ba4a-fb3389199a8a',
        'jwt_refresh_token',
        0,
        '2021-03-01 17:24:00',
        '2021-03-01 17:24:00'
    ),
    (
        120,
        1,
        'feb557b5-574b-45e8-99bd-014d5616305b',
        'jwt_refresh_token',
        0,
        '2021-03-01 17:24:13',
        '2021-03-01 17:24:13'
    ),
    (
        121,
        1,
        'a5312633-89a8-44bc-9242-9529fc5fb82f',
        'jwt_refresh_token',
        0,
        '2021-03-01 17:24:14',
        '2021-03-01 17:24:14'
    ),
    (
        122,
        1,
        'a60d20ea-b0e3-4e5a-9c43-12d2e36a9114',
        'jwt_refresh_token',
        0,
        '2021-03-01 17:24:51',
        '2021-03-01 17:24:51'
    ),
    (
        123,
        1,
        '0394234f-2398-4a78-89e2-e53be3adc18c',
        'jwt_refresh_token',
        0,
        '2021-03-01 17:27:21',
        '2021-03-01 17:27:21'
    ),
    (
        124,
        1,
        '2d20dc00-6268-4def-8fb3-c7fa393105b5',
        'jwt_refresh_token',
        0,
        '2021-03-02 14:04:56',
        '2021-03-02 14:04:56'
    ),
    (
        125,
        1,
        'f5b99a3e-550a-4613-892f-37fbdf2a18ba',
        'jwt_refresh_token',
        0,
        '2021-03-02 14:04:56',
        '2021-03-02 14:04:56'
    ),
    (
        126,
        1,
        '3947e661-7b4b-42da-9d92-4c48c5b1133e',
        'jwt_refresh_token',
        0,
        '2021-03-02 14:05:04',
        '2021-03-02 14:05:04'
    ),
    (
        127,
        1,
        'cb2fda97-061f-48b6-b8fd-f33e1c4c099e',
        'jwt_refresh_token',
        0,
        '2021-03-02 15:32:34',
        '2021-03-02 15:32:34'
    ),
    (
        128,
        1,
        '3902e172-b13d-4e64-81d1-4a2fb54fd5a8',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:28:25',
        '2021-03-03 11:28:25'
    ),
    (
        129,
        1,
        '99a02429-6e9a-4af8-b265-687258d7c050',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:28:28',
        '2021-03-03 11:28:28'
    ),
    (
        130,
        1,
        '60beeede-5799-49a4-93d4-823c7976c52d',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:31:00',
        '2021-03-03 11:31:00'
    ),
    (
        131,
        1,
        '496bc0c9-9e23-4dd0-9e32-1c3e0f59d51e',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:31:11',
        '2021-03-03 11:31:11'
    ),
    (
        132,
        1,
        '65b6a051-3d9f-4477-80fc-d5055e21c635',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:31:18',
        '2021-03-03 11:31:18'
    ),
    (
        133,
        1,
        '6449bc75-fc30-4e41-9f24-151ecdaa1e58',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:31:49',
        '2021-03-03 11:31:49'
    ),
    (
        134,
        1,
        '61e7d5a3-8161-454a-892f-6824f122dbc3',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:32:12',
        '2021-03-03 11:32:12'
    ),
    (
        135,
        1,
        '56fad02a-bbac-497b-816b-317e7921d5f4',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:32:52',
        '2021-03-03 11:32:52'
    ),
    (
        136,
        1,
        '046cf9fb-9a71-45c4-b3b2-ef7d8c938eee',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:33:30',
        '2021-03-03 11:33:30'
    ),
    (
        137,
        1,
        '1e22517d-59e2-4d33-89a4-b7a2d194ef1f',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:33:31',
        '2021-03-03 11:33:31'
    ),
    (
        138,
        1,
        '4e1d4712-3d17-4ceb-a4be-9ba7939fb262',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:34:01',
        '2021-03-03 11:34:01'
    ),
    (
        139,
        1,
        '6dc61e3e-6c78-40e6-84ee-4b3e8989f93d',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:34:01',
        '2021-03-03 11:34:01'
    ),
    (
        140,
        1,
        '11e5587d-c7b0-4bb8-a152-996ad160a707',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:52:05',
        '2021-03-03 11:52:05'
    ),
    (
        141,
        2,
        '08d0c82d-dfa6-457b-9c9f-2b177e568899',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:54:01',
        '2021-03-03 11:54:01'
    ),
    (
        142,
        2,
        '97bebdf7-315f-407e-9e54-f16cbf058e22',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:54:13',
        '2021-03-03 11:54:13'
    ),
    (
        143,
        1,
        'eb7388db-31b2-4399-9051-a0e713a7c953',
        'jwt_refresh_token',
        0,
        '2021-03-03 11:55:44',
        '2021-03-03 11:55:44'
    ),
    (
        144,
        2,
        'bc8d912c-c9bf-4c94-b73f-79a58aed8354',
        'jwt_refresh_token',
        0,
        '2021-03-03 13:44:55',
        '2021-03-03 13:44:55'
    ),
    (
        145,
        1,
        '729925da-28bd-4270-911a-f594b47d3f12',
        'jwt_refresh_token',
        0,
        '2021-03-04 08:21:44',
        '2021-03-04 08:21:44'
    ),
    (
        146,
        1,
        '2e685a0e-df19-48d3-84fd-49b7175c2c74',
        'jwt_refresh_token',
        0,
        '2021-03-04 08:22:09',
        '2021-03-04 08:22:09'
    ),
    (
        147,
        1,
        '79c3cdeb-0e37-4b46-89dc-9dc1175bbc52',
        'jwt_refresh_token',
        0,
        '2021-03-04 08:24:42',
        '2021-03-04 08:24:42'
    ),
    (
        148,
        1,
        '39975dcc-dcce-4577-8bae-f5be0bfe22aa',
        'jwt_refresh_token',
        0,
        '2021-03-04 08:25:26',
        '2021-03-04 08:25:26'
    ),
    (
        149,
        1,
        'acbb1063-9a1e-4be6-8db8-2b54c71a0fe8',
        'jwt_refresh_token',
        0,
        '2021-03-04 08:26:33',
        '2021-03-04 08:26:33'
    ),
    (
        150,
        1,
        '7db380c5-c678-4c89-af63-ad0712d85204',
        'jwt_refresh_token',
        0,
        '2021-03-04 08:27:31',
        '2021-03-04 08:27:31'
    ),
    (
        151,
        1,
        '6d65bb7c-6d5d-4181-a346-e3bc83ad20ab',
        'jwt_refresh_token',
        0,
        '2021-03-04 08:29:36',
        '2021-03-04 08:29:36'
    ),
    (
        152,
        1,
        '2f7ee42f-fdd2-4052-9ac1-5c400263dad3',
        'jwt_refresh_token',
        0,
        '2021-03-04 09:11:41',
        '2021-03-04 09:11:41'
    ),
    (
        153,
        1,
        '0a7d720c-1485-4b35-b7a6-32e9060c5a8d',
        'jwt_refresh_token',
        0,
        '2021-03-04 09:13:37',
        '2021-03-04 09:13:37'
    ),
    (
        154,
        1,
        'd8e83b1f-2376-4dca-bdd1-1b775b7f95a2',
        'jwt_refresh_token',
        0,
        '2021-03-04 09:17:54',
        '2021-03-04 09:17:54'
    ),
    (
        155,
        1,
        '19b0550e-a2c5-4153-a54b-4b2ecc000ad8',
        'jwt_refresh_token',
        0,
        '2021-03-04 09:18:13',
        '2021-03-04 09:18:13'
    ),
    (
        156,
        1,
        '5a93117a-ac3c-4174-ac01-87199a8ea821',
        'jwt_refresh_token',
        0,
        '2021-03-04 09:18:17',
        '2021-03-04 09:18:17'
    ),
    (
        157,
        1,
        '3778b097-a58f-4931-81da-06d0e0bdbada',
        'jwt_refresh_token',
        0,
        '2021-03-04 09:21:41',
        '2021-03-04 09:21:41'
    ),
    (
        158,
        1,
        'a28fd419-d5bf-46cd-aa63-ee0e301fccb6',
        'jwt_refresh_token',
        0,
        '2021-03-04 09:23:45',
        '2021-03-04 09:23:45'
    ),
    (
        159,
        1,
        '5a687fd9-4a97-4df6-800b-b3fb467ffe45',
        'jwt_refresh_token',
        0,
        '2021-03-04 10:16:06',
        '2021-03-04 10:16:06'
    ),
    (
        160,
        2,
        '943076c5-57cd-4832-b0b3-c947c43dfa11',
        'jwt_refresh_token',
        0,
        '2021-03-04 10:29:08',
        '2021-03-04 10:29:08'
    ),
    (
        161,
        1,
        '096edc19-0492-4014-a105-d6e9974d38f0',
        'jwt_refresh_token',
        0,
        '2021-03-04 10:29:58',
        '2021-03-04 10:29:58'
    ),
    (
        162,
        1,
        '80e44e95-f547-4cbc-ae1c-025655898adb',
        'jwt_refresh_token',
        0,
        '2021-03-05 09:51:20',
        '2021-03-05 09:51:20'
    ),
    (
        163,
        1,
        '9c01a3bf-9e79-4a6c-85c4-52952fc4fa1d',
        'jwt_refresh_token',
        0,
        '2021-03-05 09:56:58',
        '2021-03-05 09:56:58'
    ),
    (
        164,
        1,
        'e2e60b92-db72-4a71-a36c-558119ab288c',
        'jwt_refresh_token',
        0,
        '2021-03-05 10:03:39',
        '2021-03-05 10:03:39'
    ),
    (
        165,
        1,
        '72c82eb0-5336-4537-b9a9-1af4b69f9bd9',
        'jwt_refresh_token',
        0,
        '2021-03-05 11:03:34',
        '2021-03-05 11:03:34'
    ),
    (
        166,
        1,
        '6fc3188b-7452-4250-b026-e214d677c116',
        'jwt_refresh_token',
        0,
        '2021-03-05 11:47:46',
        '2021-03-05 11:47:46'
    ),
    (
        167,
        1,
        '5a61e3af-bb6e-4610-bf85-93478178c2d8',
        'jwt_refresh_token',
        0,
        '2021-03-05 16:22:23',
        '2021-03-05 16:22:23'
    ),
    (
        168,
        1,
        '6b7164c1-759a-4172-8f1d-799a08f2dfe7',
        'jwt_refresh_token',
        0,
        '2021-03-09 13:05:12',
        '2021-03-09 13:05:12'
    ),
    (
        169,
        1,
        'd464c9ee-e15e-4be6-9eff-376c3ab7b5db',
        'jwt_refresh_token',
        0,
        '2021-03-10 14:04:59',
        '2021-03-10 14:04:59'
    ),
    (
        170,
        1,
        '5b1f3f44-076b-4eb9-b132-c38318592e73',
        'jwt_refresh_token',
        0,
        '2021-03-11 22:16:31',
        '2021-03-11 22:16:31'
    ),
    (
        171,
        1,
        '3b9d2719-d6c9-48d0-8f73-bdcd0c7cd0f4',
        'jwt_refresh_token',
        0,
        '2021-03-12 09:42:26',
        '2021-03-12 09:42:26'
    ),
    (
        172,
        1,
        '3d66e34a-aaa1-42a9-8b64-814032fb103f',
        'jwt_refresh_token',
        0,
        '2021-03-12 09:45:43',
        '2021-03-12 09:45:43'
    ),
    (
        173,
        1,
        '9c2bf78b-6b4e-4e59-976b-a277d7875b81',
        'jwt_refresh_token',
        0,
        '2021-03-12 10:13:33',
        '2021-03-12 10:13:33'
    ),
    (
        174,
        1,
        '18e54029-d3a5-4e4a-9ca1-e0cfc2376522',
        'jwt_refresh_token',
        0,
        '2021-03-12 14:49:21',
        '2021-03-12 14:49:21'
    ),
    (
        175,
        1,
        'd8314367-fbae-4f99-96ec-d5f38ea6def1',
        'jwt_refresh_token',
        0,
        '2021-03-12 15:28:23',
        '2021-03-12 15:28:23'
    ),
    (
        176,
        1,
        'dcdd05a2-e500-45e9-b4ee-cdd225cb8a55',
        'jwt_refresh_token',
        0,
        '2021-03-15 11:33:48',
        '2021-03-15 11:33:48'
    ),
    (
        177,
        1,
        '4475a9b9-6618-4dc9-938e-0c9c610038bd',
        'jwt_refresh_token',
        0,
        '2021-03-15 11:34:41',
        '2021-03-15 11:34:41'
    ),
    (
        178,
        1,
        'ee0fad4b-593d-4841-a84d-bfb4f625806a',
        'jwt_refresh_token',
        0,
        '2021-03-15 12:04:08',
        '2021-03-15 12:04:08'
    ),
    (
        179,
        1,
        'ca0b595a-f3d2-4f27-a29f-007ee2b97cb1',
        'jwt_refresh_token',
        0,
        '2021-03-17 09:32:22',
        '2021-03-17 09:32:22'
    ),
    (
        180,
        1,
        '3b9bee84-85ff-4723-97db-d2526ffcf1b5',
        'jwt_refresh_token',
        0,
        '2021-03-17 16:05:50',
        '2021-03-17 16:05:50'
    ),
    (
        181,
        1,
        '3f64244f-b73c-4ec3-a810-7f298e81a787',
        'jwt_refresh_token',
        0,
        '2021-03-17 16:53:39',
        '2021-03-17 16:53:39'
    ),
    (
        182,
        1,
        '5191804c-11c4-4cc4-809d-42c00072b16a',
        'jwt_refresh_token',
        0,
        '2021-03-19 16:55:10',
        '2021-03-19 16:55:10'
    ),
    (
        183,
        1,
        'b9202ed6-84f4-45a7-8cca-07ed85f47c02',
        'jwt_refresh_token',
        0,
        '2021-03-23 10:14:39',
        '2021-03-23 10:14:39'
    ),
    (
        184,
        1,
        'ae3886ef-4e59-4b80-a79b-34a44db0c55b',
        'jwt_refresh_token',
        0,
        '2021-03-23 10:22:58',
        '2021-03-23 10:22:58'
    ),
    (
        185,
        1,
        'ec3e1537-ef25-49d1-9136-ffc3cf7a5805',
        'jwt_refresh_token',
        0,
        '2021-03-26 13:31:11',
        '2021-03-26 13:31:11'
    ),
    (
        186,
        1,
        'b27e884d-506c-47eb-ad13-b1f845cdc1a6',
        'jwt_refresh_token',
        0,
        '2021-03-26 13:33:00',
        '2021-03-26 13:33:00'
    ),
    (
        187,
        1,
        'f2dd3d71-8642-4fca-a7e3-de10fca35596',
        'jwt_refresh_token',
        0,
        '2021-03-27 14:33:00',
        '2021-03-27 14:33:00'
    ),
    (
        188,
        1,
        '426b8a34-baac-41ae-9ff8-a1f487cc711d',
        'jwt_refresh_token',
        0,
        '2021-03-27 14:38:56',
        '2021-03-27 14:38:56'
    ),
    (
        189,
        1,
        'eb39c5d8-ebe8-4bcd-a79c-4aa812569858',
        'jwt_refresh_token',
        0,
        '2021-03-27 14:40:52',
        '2021-03-27 14:40:52'
    ),
    (
        190,
        1,
        '75e3424f-5927-4006-a061-3cbd1f8b7592',
        'jwt_refresh_token',
        0,
        '2021-03-27 14:42:58',
        '2021-03-27 14:42:58'
    ),
    (
        191,
        1,
        '8e6f64be-23ed-47c4-a035-12fbfc9e9045',
        'jwt_refresh_token',
        0,
        '2021-03-27 15:00:58',
        '2021-03-27 15:00:58'
    ),
    (
        192,
        1,
        '14e12dff-3b8d-418a-918e-322ad06b3f12',
        'jwt_refresh_token',
        0,
        '2021-03-29 13:24:10',
        '2021-03-29 13:24:10'
    ),
    (
        193,
        1,
        'baf5ba3d-e2e3-4cfe-a25c-f2620026a2db',
        'jwt_refresh_token',
        0,
        '2021-03-29 16:12:10',
        '2021-03-29 16:12:10'
    ),
    (
        194,
        1,
        '8728a19a-a1af-416b-bf2d-13086bee5d1f',
        'jwt_refresh_token',
        0,
        '2021-03-30 08:33:28',
        '2021-03-30 08:33:28'
    ),
    (
        195,
        1,
        'daeb0162-6c46-46cc-811f-90639102aeb7',
        'jwt_refresh_token',
        0,
        '2021-04-01 09:31:02',
        '2021-04-01 09:31:02'
    ),
    (
        196,
        1,
        '5b9f6b1c-7394-4901-9afa-31c7af246007',
        'jwt_refresh_token',
        0,
        '2021-04-01 09:44:31',
        '2021-04-01 09:44:31'
    ),
    (
        197,
        1,
        '1788df57-a310-4955-9dc0-328265cfc196',
        'jwt_refresh_token',
        0,
        '2021-04-01 09:48:13',
        '2021-04-01 09:48:13'
    ),
    (
        198,
        1,
        'c043b7df-a23f-4877-8a81-14facc5052f6',
        'jwt_refresh_token',
        0,
        '2021-04-01 09:48:40',
        '2021-04-01 09:48:40'
    ),
    (
        199,
        1,
        '3498ab35-ca40-48f2-9f3f-dbddeb6853d9',
        'jwt_refresh_token',
        0,
        '2021-04-01 09:49:43',
        '2021-04-01 09:49:43'
    ),
    (
        200,
        1,
        'f6087caf-567c-4d53-a7e6-fcdb3366567d',
        'jwt_refresh_token',
        0,
        '2021-04-01 09:54:31',
        '2021-04-01 09:54:31'
    ),
    (
        201,
        1,
        '85c6fbcc-5667-4510-a6d3-935cdded1672',
        'jwt_refresh_token',
        0,
        '2021-04-01 09:59:06',
        '2021-04-01 09:59:06'
    ),
    (
        202,
        1,
        '99af8265-47a1-42d6-a2d3-1dc98a5ee0da',
        'jwt_refresh_token',
        0,
        '2021-04-01 09:59:28',
        '2021-04-01 09:59:28'
    ),
    (
        203,
        1,
        'baf3e2cd-ec58-46c9-a81a-934e21aeaee9',
        'jwt_refresh_token',
        0,
        '2021-04-01 09:59:28',
        '2021-04-01 09:59:28'
    ),
    (
        204,
        1,
        '319a909f-0c42-488c-9b4c-9ee196c0b7fa',
        'jwt_refresh_token',
        0,
        '2021-04-01 10:00:00',
        '2021-04-01 10:00:00'
    ),
    (
        205,
        1,
        '3a13088f-00e3-4226-8d2e-0fb679931aec',
        'jwt_refresh_token',
        0,
        '2021-04-01 10:00:00',
        '2021-04-01 10:00:00'
    ),
    (
        206,
        1,
        '13b6e1d2-68d3-48e8-be15-312fef90a975',
        'jwt_refresh_token',
        0,
        '2021-04-01 10:00:49',
        '2021-04-01 10:00:49'
    ),
    (
        207,
        1,
        '8623bc5e-316f-46c0-9fa8-71e9e9596f2d',
        'jwt_refresh_token',
        0,
        '2021-04-01 10:51:30',
        '2021-04-01 10:51:30'
    ),
    (
        208,
        1,
        '81b1bfe9-6a2c-46d9-9b42-7b8a1f690250',
        'jwt_refresh_token',
        0,
        '2021-04-01 10:52:42',
        '2021-04-01 10:52:42'
    ),
    (
        209,
        1,
        '943a2657-6da1-441a-8609-d27b02d2279b',
        'jwt_refresh_token',
        0,
        '2021-04-01 10:54:12',
        '2021-04-01 10:54:12'
    ),
    (
        210,
        1,
        '120eaa8c-da7e-4dff-b032-7ea12e4de489',
        'jwt_refresh_token',
        0,
        '2021-04-01 11:01:21',
        '2021-04-01 11:01:21'
    ),
    (
        211,
        1,
        '5bced9b2-0d2c-4e8d-aad8-ec4f924853bc',
        'jwt_refresh_token',
        0,
        '2021-04-01 11:04:19',
        '2021-04-01 11:04:19'
    ),
    (
        212,
        1,
        '10848404-c6ab-410f-9ef3-49aa34447df5',
        'jwt_refresh_token',
        0,
        '2021-04-01 11:17:26',
        '2021-04-01 11:17:26'
    ),
    (
        213,
        1,
        'cb3399bd-aebd-4fde-bdd2-0417e907166f',
        'jwt_refresh_token',
        0,
        '2021-04-01 16:55:31',
        '2021-04-01 16:55:31'
    ),
    (
        214,
        1,
        '9b7b6f88-05ae-4945-8d30-d123f17e93e7',
        'jwt_refresh_token',
        0,
        '2021-04-03 01:09:34',
        '2021-04-03 01:09:34'
    ),
    (
        215,
        1,
        '2f6d99fd-f56b-46a3-a334-db30ddac4c21',
        'jwt_refresh_token',
        0,
        '2021-04-06 08:59:03',
        '2021-04-06 08:59:03'
    ),
    (
        216,
        1,
        '1983237f-39aa-4c22-9602-93acd8554dc6',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:39:55',
        '2021-04-06 09:39:55'
    ),
    (
        217,
        1,
        'd8ff53c5-84e7-4fef-a9b9-a77bcb87f210',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:40:31',
        '2021-04-06 09:40:31'
    ),
    (
        218,
        1,
        '674fdaa7-ba90-409f-9492-900d0d3e8cf4',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:40:32',
        '2021-04-06 09:40:32'
    ),
    (
        219,
        1,
        'f5212f6b-2a36-4094-8aca-c3fac838d636',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:41:13',
        '2021-04-06 09:41:13'
    ),
    (
        220,
        1,
        '209b31ac-e6f0-45e3-a963-ccfaf90d0f0d',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:41:13',
        '2021-04-06 09:41:13'
    ),
    (
        221,
        1,
        '98d6a8a2-05f2-402a-b914-3b0786a27b25',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:41:38',
        '2021-04-06 09:41:38'
    ),
    (
        222,
        1,
        '5a8a95ce-bb72-4956-a21d-6f9f7f247256',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:41:38',
        '2021-04-06 09:41:38'
    ),
    (
        223,
        1,
        '9c673179-a124-403d-afce-a80839fbf5ae',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:42:44',
        '2021-04-06 09:42:44'
    ),
    (
        224,
        1,
        'd23e3332-3ea0-424d-9e03-1d767cc44d23',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:44:37',
        '2021-04-06 09:44:37'
    ),
    (
        225,
        1,
        '66074e08-51de-4cae-86c5-ba20b24853e5',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:45:46',
        '2021-04-06 09:45:46'
    ),
    (
        226,
        1,
        '8c84eb5d-559f-4d2b-985c-171f47bff079',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:49:30',
        '2021-04-06 09:49:30'
    ),
    (
        227,
        1,
        '6966ecad-0871-4c52-a5fd-30cf043c4165',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:51:31',
        '2021-04-06 09:51:31'
    ),
    (
        228,
        1,
        '9d47f0e3-4334-42ca-ba80-b865e762d661',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:53:52',
        '2021-04-06 09:53:52'
    ),
    (
        229,
        1,
        'd9351ffb-8b14-434e-bd8c-a0b50c70b7e9',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:57:10',
        '2021-04-06 09:57:10'
    ),
    (
        230,
        1,
        '792dc91b-cc2f-4c45-b202-ea023f905af5',
        'jwt_refresh_token',
        0,
        '2021-04-06 09:57:10',
        '2021-04-06 09:57:10'
    ),
    (
        231,
        1,
        'd0ff631a-e1ff-47b3-9d9a-a2e20eba2313',
        'jwt_refresh_token',
        0,
        '2021-04-06 10:01:00',
        '2021-04-06 10:01:00'
    ),
    (
        232,
        1,
        '24fd8106-fa77-4acb-8f34-32e45b579ed6',
        'jwt_refresh_token',
        0,
        '2021-04-06 15:18:33',
        '2021-04-06 15:18:33'
    ),
    (
        233,
        1,
        'ec031307-773b-469a-bf39-fdfe1f7a0cb9',
        'jwt_refresh_token',
        0,
        '2021-04-07 11:07:48',
        '2021-04-07 11:07:48'
    ),
    (
        234,
        1,
        '2bd7cd70-395d-4e8d-b614-d0144bb00cc8',
        'jwt_refresh_token',
        0,
        '2021-04-07 13:49:39',
        '2021-04-07 13:49:39'
    ),
    (
        235,
        1,
        'ed048632-7d53-400e-9cb6-de38ebd27655',
        'jwt_refresh_token',
        0,
        '2021-04-07 15:30:34',
        '2021-04-07 15:30:34'
    ),
    (
        236,
        1,
        '5c4983fd-8a52-4830-93d1-96db6c4d569c',
        'jwt_refresh_token',
        0,
        '2021-04-07 15:59:00',
        '2021-04-07 15:59:00'
    ),
    (
        237,
        1,
        '054f680c-a752-4f31-b620-bd9c8cc08cd4',
        'jwt_refresh_token',
        0,
        '2021-04-07 16:44:16',
        '2021-04-07 16:44:16'
    ),
    (
        238,
        1,
        'fced27c2-3127-48f5-8ec3-287403da67df',
        'jwt_refresh_token',
        0,
        '2021-04-08 11:54:34',
        '2021-04-08 11:54:34'
    ),
    (
        239,
        1,
        '1d01ef26-c923-4bdc-a679-6a3e20822005',
        'jwt_refresh_token',
        0,
        '2021-04-08 15:26:33',
        '2021-04-08 15:26:33'
    ),
    (
        240,
        1,
        '2d000bea-4a12-4021-9bf3-565dca197afa',
        'jwt_refresh_token',
        0,
        '2021-04-08 15:36:54',
        '2021-04-08 15:36:54'
    ),
    (
        241,
        1,
        'cb7a708d-fca3-4277-8c7b-eeaeb0aa4abd',
        'jwt_refresh_token',
        0,
        '2021-04-08 15:39:05',
        '2021-04-08 15:39:05'
    ),
    (
        242,
        1,
        'a58b9af5-05e3-49c8-843b-e5bb567a4019',
        'jwt_refresh_token',
        0,
        '2021-04-08 15:44:30',
        '2021-04-08 15:44:30'
    ),
    (
        243,
        1,
        'd6af8edd-4ce4-489e-a845-dd78894632a3',
        'jwt_refresh_token',
        0,
        '2021-04-08 16:04:49',
        '2021-04-08 16:04:49'
    ),
    (
        244,
        1,
        '90634176-50fb-41e4-8e60-c48985364b28',
        'jwt_refresh_token',
        0,
        '2021-04-08 16:25:07',
        '2021-04-08 16:25:07'
    ),
    (
        245,
        1,
        'b46ee7d2-adfb-4e90-b06f-6d5e045a13cc',
        'jwt_refresh_token',
        0,
        '2021-04-08 16:26:20',
        '2021-04-08 16:26:20'
    ),
    (
        246,
        1,
        '978f0827-5b3f-4b51-b6b6-0f1cbe24071d',
        'jwt_refresh_token',
        0,
        '2021-04-08 16:27:09',
        '2021-04-08 16:27:09'
    ),
    (
        247,
        1,
        'b76335ce-846a-4865-a6d4-49bfcf2f836e',
        'jwt_refresh_token',
        0,
        '2021-04-08 16:29:08',
        '2021-04-08 16:29:08'
    ),
    (
        248,
        1,
        '30f907ac-cd4a-4fe1-bc48-847723fcad8c',
        'jwt_refresh_token',
        0,
        '2021-04-08 16:39:09',
        '2021-04-08 16:39:09'
    ),
    (
        249,
        1,
        '60ec8905-e44a-4808-b42e-0e81230f9e3a',
        'jwt_refresh_token',
        0,
        '2021-04-08 16:42:36',
        '2021-04-08 16:42:36'
    ),
    (
        250,
        1,
        'ee8c9422-cc0f-4032-9618-785bc3f8b167',
        'jwt_refresh_token',
        0,
        '2021-04-08 16:57:09',
        '2021-04-08 16:57:09'
    ),
    (
        251,
        1,
        'e1826440-c84e-496e-84a1-d1a36936732e',
        'jwt_refresh_token',
        0,
        '2021-04-08 17:29:46',
        '2021-04-08 17:29:46'
    ),
    (
        252,
        1,
        'd0c22f0f-3d0e-4fb5-817a-dafdc9df82d3',
        'jwt_refresh_token',
        0,
        '2021-04-08 17:49:18',
        '2021-04-08 17:49:18'
    ),
    (
        253,
        1,
        '11892192-66dc-41a8-bcd2-fc3f6e697edf',
        'jwt_refresh_token',
        0,
        '2021-04-08 17:50:10',
        '2021-04-08 17:50:10'
    ),
    (
        254,
        1,
        '88449a17-35ae-4f24-99d2-d46444ea5444',
        'jwt_refresh_token',
        0,
        '2021-04-09 18:33:45',
        '2021-04-09 18:33:45'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `users`
--
CREATE TABLE `users` (
    `id` int(10) UNSIGNED NOT NULL,
    `user_nama` varchar(80) NOT NULL,
    `id_jabatan` int(10) UNSIGNED DEFAULT NULL,
    `user_email` varchar(254) NOT NULL,
    `user_password` varchar(60) NOT NULL,
    `user_photo` varchar(254) NOT NULL,
    `user_phone` varchar(15) DEFAULT NULL,
    `user_status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL,
    `user_level` int(10) UNSIGNED DEFAULT NULL,
    `user_tanggal_lahir` date DEFAULT NULL,
    `user_alamat` text DEFAULT NULL,
    `mulai_bekerja` varchar(5) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `users`
--
INSERT INTO
    `users` (
        `id`,
        `user_nama`,
        `id_jabatan`,
        `user_email`,
        `user_password`,
        `user_photo`,
        `user_phone`,
        `user_status`,
        `created_at`,
        `updated_at`,
        `user_level`,
        `user_tanggal_lahir`,
        `user_alamat`,
        `mulai_bekerja`
    )
VALUES
    (
        1,
        'TOTO ISWANTO',
        4,
        'iseplutpi1008@gmail.com',
        'jsu7YOrb49mdj.URzNeFB.Tg25PgzmseS8Bxop0u1EbHI0Ynfve8.',
        'img_profile.png',
        '08123123',
        1,
        '2021-02-26 11:19:32',
        '2021-02-26 11:19:32',
        1,
        '1992-03-01',
        'Cimahi',
        '2019'
    ),
    (
        2,
        'Test Baru',
        1,
        'test2@gmail.comm',
        'jsu7YOrb49mdj.URzNeFB.Tg25PgzmseS8Bxop0u1EbHI0Ynfve8.',
        'https://placeimg.com/640/480/people',
        '123456',
        1,
        '2021-03-02 14:27:13',
        '2021-03-02 14:27:13',
        2,
        '2021-03-01',
        'GGWP',
        '2019'
    );

-- --------------------------------------------------------
--
-- Struktur dari tabel `weather_kondisis`
--
CREATE TABLE `weather_kondisis` (
    `id` int(10) UNSIGNED NOT NULL,
    `nama` varchar(50) NOT NULL,
    `keterangan` text DEFAULT NULL,
    `status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
-- Struktur dari tabel `wmps`
--
CREATE TABLE `wmps` (
    `id` int(10) UNSIGNED NOT NULL,
    `id_area_tambang` int(10) UNSIGNED NOT NULL,
    `nama` varchar(50) NOT NULL,
    `keterangan` text DEFAULT NULL,
    `lat` varchar(20) DEFAULT NULL,
    `long` varchar(20) DEFAULT NULL,
    `status` int(1) DEFAULT NULL,
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Dumping data untuk tabel `wmps`
--
INSERT INTO
    `wmps` (
        `id`,
        `id_area_tambang`,
        `nama`,
        `keterangan`,
        `lat`,
        `long`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        1,
        'WMP 1',
        '-',
        '-6.884082',
        '107.541306',
        1,
        '2021-03-03 14:18:33',
        '2021-03-03 14:18:33'
    ),
    (
        2,
        1,
        'WMP 2',
        '-',
        '-6.917464',
        '107.619125',
        1,
        '2021-03-04 09:13:29',
        '2021-03-04 09:13:29'
    ),
    (
        3,
        1,
        'WMP 3',
        '-',
        '-6.21462',
        '106.84513',
        1,
        '2021-03-04 09:43:09',
        '2021-03-04 09:43:09'
    ),
    (
        4,
        1,
        'WMP 4',
        '-',
        '-7.78278',
        '110.36083',
        1,
        '2021-03-04 09:43:58',
        '2021-03-04 09:43:58'
    );

--
-- Indexes for dumped tables
--
--
-- Indeks untuk tabel `aats`
--
ALTER TABLE
    `aats`
ADD
    PRIMARY KEY (`id`),
ADD
    KEY `aats_user_id_foreign` (`user_id`),
ADD
    KEY `aats_id_wmp_foreign` (`id_wmp`),
ADD
    KEY `aats_id_sampling_point_foreign` (`id_sampling_point`);

--
-- Indeks untuk tabel `absensis`
--
ALTER TABLE
    `absensis`
ADD
    PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `adonis_schema`
--
ALTER TABLE
    `adonis_schema`
ADD
    PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `area_tambangs`
--
ALTER TABLE
    `area_tambangs`
ADD
    PRIMARY KEY (`id`),
ADD
    KEY `area_tambangs_id_perusahaan_foreign` (`id_perusahaan`),
ADD
    KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `bahan_kimias`
--
ALTER TABLE
    `bahan_kimias`
ADD
    PRIMARY KEY (`id`),
ADD
    KEY `bahan_kimias_id_wmp_foreign` (`id_wmp`),
ADD
    KEY `bahan_kimias_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `chemicals`
--
ALTER TABLE
    `chemicals`
ADD
    PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jabatans`
--
ALTER TABLE
    `jabatans`
ADD
    PRIMARY KEY (`id`),
ADD
    KEY `jabatans_id_perusahaan_foreign` (`id_perusahaan`);

--
-- Indeks untuk tabel `jenis_perbaikans`
--
ALTER TABLE
    `jenis_perbaikans`
ADD
    PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `levels`
--
ALTER TABLE
    `levels`
ADD
    PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawais`
--
ALTER TABLE
    `pegawais`
ADD
    PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perbaikans`
--
ALTER TABLE
    `perbaikans`
ADD
    PRIMARY KEY (`id`),
ADD
    KEY `perbaikans_id_wmp_foreign` (`id_wmp`),
ADD
    KEY `perbaikans_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `periodes`
--
ALTER TABLE
    `periodes`
ADD
    PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perusahaans`
--
ALTER TABLE
    `perusahaans`
ADD
    PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perusahaan_favorites`
--
ALTER TABLE
    `perusahaan_favorites`
ADD
    PRIMARY KEY (`id`),
ADD
    KEY `perusahaan_favorites_user_id_foreign` (`user_id`),
ADD
    KEY `perusahaan_favorites_id_perusahaan_foreign` (`id_perusahaan`);

--
-- Indeks untuk tabel `sampling_points`
--
ALTER TABLE
    `sampling_points`
ADD
    PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stok_shifts`
--
ALTER TABLE
    `stok_shifts`
ADD
    PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tokens`
--
ALTER TABLE
    `tokens`
ADD
    PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `tokens_token_unique` (`token`),
ADD
    KEY `tokens_user_id_foreign` (`user_id`),
ADD
    KEY `tokens_token_index` (`token`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE
    `users`
ADD
    PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `users_user_nama_unique` (`user_nama`),
ADD
    UNIQUE KEY `users_user_email_unique` (`user_email`),
ADD
    KEY `users_user_level_foreign` (`user_level`),
ADD
    KEY `id_jabatan` (`id_jabatan`);

--
-- Indeks untuk tabel `weather_kondisis`
--
ALTER TABLE
    `weather_kondisis`
ADD
    PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wmps`
--
ALTER TABLE
    `wmps`
ADD
    PRIMARY KEY (`id`),
ADD
    KEY `id_area_tambang` (`id_area_tambang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--
--
-- AUTO_INCREMENT untuk tabel `aats`
--
ALTER TABLE
    `aats`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 4;

--
-- AUTO_INCREMENT untuk tabel `absensis`
--
ALTER TABLE
    `absensis`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 40;

--
-- AUTO_INCREMENT untuk tabel `adonis_schema`
--
ALTER TABLE
    `adonis_schema`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 29;

--
-- AUTO_INCREMENT untuk tabel `area_tambangs`
--
ALTER TABLE
    `area_tambangs`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

--
-- AUTO_INCREMENT untuk tabel `bahan_kimias`
--
ALTER TABLE
    `bahan_kimias`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT untuk tabel `chemicals`
--
ALTER TABLE
    `chemicals`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jabatans`
--
ALTER TABLE
    `jabatans`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 5;

--
-- AUTO_INCREMENT untuk tabel `jenis_perbaikans`
--
ALTER TABLE
    `jenis_perbaikans`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `levels`
--
ALTER TABLE
    `levels`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT untuk tabel `pegawais`
--
ALTER TABLE
    `pegawais`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 17;

--
-- AUTO_INCREMENT untuk tabel `perbaikans`
--
ALTER TABLE
    `perbaikans`
MODIFY
    `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT untuk tabel `periodes`
--
ALTER TABLE
    `periodes`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `perusahaans`
--
ALTER TABLE
    `perusahaans`
MODIFY
    `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 5;

--
-- AUTO_INCREMENT untuk tabel `perusahaan_favorites`
--
ALTER TABLE
    `perusahaan_favorites`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 4;

--
-- AUTO_INCREMENT untuk tabel `sampling_points`
--
ALTER TABLE
    `sampling_points`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 7;

--
-- AUTO_INCREMENT untuk tabel `stok_shifts`
--
ALTER TABLE
    `stok_shifts`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tokens`
--
ALTER TABLE
    `tokens`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 255;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE
    `users`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT untuk tabel `weather_kondisis`
--
ALTER TABLE
    `weather_kondisis`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wmps`
--
ALTER TABLE
    `wmps`
MODIFY
    `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--
--
-- Ketidakleluasaan untuk tabel `aats`
--
ALTER TABLE
    `aats`
ADD
    CONSTRAINT `aats_id_wmp_foreign` FOREIGN KEY (`id_wmp`) REFERENCES `wmps` (`id`),
ADD
    CONSTRAINT `aats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `area_tambangs`
--
ALTER TABLE
    `area_tambangs`
ADD
    CONSTRAINT `area_tambangs_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
ADD
    CONSTRAINT `area_tambangs_id_perusahaan_foreign` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaans` (`id`);

--
-- Ketidakleluasaan untuk tabel `bahan_kimias`
--
ALTER TABLE
    `bahan_kimias`
ADD
    CONSTRAINT `bahan_kimias_id_wmp_foreign` FOREIGN KEY (`id_wmp`) REFERENCES `wmps` (`id`),
ADD
    CONSTRAINT `bahan_kimias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `jabatans`
--
ALTER TABLE
    `jabatans`
ADD
    CONSTRAINT `jabatans_id_perusahaan_foreign` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaans` (`id`);

--
-- Ketidakleluasaan untuk tabel `perbaikans`
--
ALTER TABLE
    `perbaikans`
ADD
    CONSTRAINT `perbaikans_id_wmp_foreign` FOREIGN KEY (`id_wmp`) REFERENCES `wmps` (`id`),
ADD
    CONSTRAINT `perbaikans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `perusahaan_favorites`
--
ALTER TABLE
    `perusahaan_favorites`
ADD
    CONSTRAINT `perusahaan_favorites_id_perusahaan_foreign` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaans` (`id`),
ADD
    CONSTRAINT `perusahaan_favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `tokens`
--
ALTER TABLE
    `tokens`
ADD
    CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE
    `users`
ADD
    CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatans` (`id`),
ADD
    CONSTRAINT `users_user_level_foreign` FOREIGN KEY (`user_level`) REFERENCES `levels` (`id`);

--
-- Ketidakleluasaan untuk tabel `wmps`
--
ALTER TABLE
    `wmps`
ADD
    CONSTRAINT `wmps_ibfk_1` FOREIGN KEY (`id_area_tambang`) REFERENCES `area_tambangs` (`id`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;