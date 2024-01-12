-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 08:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaji`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keterangan` varchar(100) NOT NULL,
  `estimated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `nip`, `waktu`, `keterangan`, `estimated`) VALUES
(9, '17108217001', '2022-12-19 01:01:09', 'masuk', '2022-12-19'),
(10, '171091800', '2022-12-19 01:01:24', 'masuk', '2022-12-19'),
(11, '1710821900', '2022-12-19 01:01:35', 'masuk', '2022-12-19'),
(12, '1710821900', '2022-12-19 10:01:46', 'pulang', '2022-12-19'),
(13, '171091800', '2022-12-19 10:02:02', 'pulang', '2022-12-19'),
(14, '17108217001', '2022-12-19 10:02:11', 'pulang', '2022-12-19'),
(15, '1710821900', '2023-06-15 15:58:04', 'masuk', '2023-06-15'),
(16, '1710821900', '2023-06-15 15:58:17', 'pulang', '2023-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `nama_admin` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `nama_admin`, `username`, `password`, `role_id`) VALUES
(1, 'Putri Emnuryani', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id_bagian` int(11) NOT NULL,
  `nama_bagian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id_bagian`, `nama_bagian`) VALUES
(1, 'Human Resource'),
(2, 'Keuangan'),
(3, 'Legal Officer'),
(4, 'Marketing'),
(5, 'Frontend Developer');

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `id_cabang` int(11) NOT NULL,
  `nama_cabang` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`id_cabang`, `nama_cabang`) VALUES
(1, 'Jakarta Pusat'),
(2, 'Jakarta Timur'),
(3, 'Jakarta Selatan'),
(4, 'Jakarta Barat'),
(5, 'Depok'),
(6, 'Bekasi');

-- --------------------------------------------------------

--
-- Table structure for table `data_cuti`
--

CREATE TABLE `data_cuti` (
  `id` int(100) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `jenis_cuti` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `alasan` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `waktu_pengajuan` date NOT NULL,
  `waktu_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(128) NOT NULL,
  `gaji_pokok` varchar(128) NOT NULL,
  `tunjangan` varchar(128) NOT NULL,
  `benefit1` varchar(128) NOT NULL,
  `benefit2` varchar(128) DEFAULT NULL,
  `benefit3` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tunjangan`, `benefit1`, `benefit2`, `benefit3`) VALUES
(1, 'Direktur', '10000000', '2000000', 'Asset Kendaraan', 'Asset Laptop', 'BPJS Kesehatan'),
(2, 'Manager', '8000000', '1000000', 'Asset Laptop', 'BPJS Kesehatan', NULL),
(7, 'Supervisi', '7000000', '800000', 'Asset Laptop', 'BPJS Kesehatan', ''),
(8, 'Staff', '6000000', '780000', 'Asset Laptop', 'BPJS Kesehatan', ''),
(9, 'Non Staff', '5000000', '780000', 'BPJS Kesehatan', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `kabupaten` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `id_provinsi`, `kabupaten`) VALUES
(1, 22, 'Kota Denpasar'),
(2, 17, 'Kabupaten Lebak'),
(3, 17, 'Kabupaten Pandeglang'),
(4, 17, 'Kabupaten Serang'),
(5, 17, 'Kabupaten Tangerang'),
(6, 17, 'Kota Cilegon'),
(7, 17, 'Kota Serang'),
(8, 17, 'Kota Tangerang'),
(9, 17, 'Kota Tangerang Selatan'),
(11, 1, 'Kabupaten Aceh Barat'),
(12, 1, 'Kabupaten Aceh Barat Daya'),
(13, 1, 'Kabupaten Aceh Besar'),
(14, 1, 'Kabupaten Aceh Jaya'),
(15, 1, 'Kabupaten Aceh Selatan'),
(16, 1, 'Kabupaten Aceh Singkil'),
(17, 1, 'Kabupaten Aceh Tamiang'),
(18, 1, 'Kabupaten Aceh Tengah'),
(19, 1, 'Kabupaten Aceh Tenggara'),
(20, 1, 'Kabupaten Aceh Timur'),
(21, 1, 'Kabupaten Aceh Utara'),
(22, 1, 'Kabupaten Bener Meriah'),
(23, 1, 'Kabupaten Bireuen'),
(24, 1, 'Kabupaten Gayo Lues'),
(25, 1, 'Kabupaten Nagan Raya'),
(26, 1, 'Kabupaten Pidie'),
(27, 1, 'Kabupaten Pidie Jaya'),
(28, 1, 'Kabupaten Simeulue'),
(29, 1, 'Kota Banda Aceh'),
(30, 1, 'Kota Langsa'),
(31, 1, 'Kota Lhokseumawe'),
(32, 1, 'Kota Sabang'),
(33, 1, 'Kota Subulussalam'),
(34, 2, 'Kabupaten Asahan'),
(35, 2, 'Kabupaten Batubara'),
(36, 2, 'Kabupaten Dairi'),
(37, 2, 'Kabupaten Deli Serdang'),
(38, 2, 'Kabupaten Humbang Hasundutan'),
(39, 2, 'Kabupaten Karo'),
(40, 2, 'Kabupaten Labuhanbatu'),
(41, 2, 'Kabupaten Labuhanbatu Selatan'),
(42, 2, 'Kabupaten Labuhanbatu Utara'),
(43, 2, 'Kabupaten Langkat'),
(44, 2, 'Kabupaten Mandailing Natal'),
(45, 2, 'Kabupaten Nias'),
(46, 2, 'Kabupaten Nias Barat'),
(47, 2, 'Kabupaten Nias Selatan'),
(48, 2, 'Kabupaten Nias Utara'),
(49, 2, 'Kabupaten Padang Lawas'),
(50, 2, 'Kabupaten Padang Lawas Utara'),
(51, 2, 'Kabupaten Pakpak Bharat'),
(52, 2, 'Kabupaten Samosir'),
(53, 2, 'Kabupaten Serdang Bedagai'),
(54, 2, 'Kabupaten Simalungun'),
(55, 2, 'Kabupaten Tapanuli Selatan'),
(56, 2, 'Kabupaten Tapanuli Tengah'),
(57, 2, 'Kabupaten Tapanuli Utara'),
(58, 2, 'Kabupaten Toba Samosir'),
(59, 2, 'Kota Binjai'),
(60, 2, 'Kota Gunungsitoli'),
(61, 2, 'Kota Medan'),
(62, 2, 'Kota Padangsidempuan'),
(63, 2, 'Kota Pematangsiantar'),
(64, 2, 'Kota Sibolga'),
(65, 2, 'Kota Tanjungbalai'),
(66, 2, 'Kota Tebing Tinggi'),
(67, 3, 'Kabupaten Banyuasin'),
(68, 3, 'Kabupaten Empat Lawang'),
(69, 3, 'Kabupaten Lahat'),
(70, 3, 'Kabupaten Muara Enim'),
(71, 3, 'Kabupaten Musi Banyuasin'),
(72, 3, 'Kabupaten Musi Rawas'),
(73, 3, 'Kabupaten Musi Rawas Utara'),
(74, 3, 'Kabupaten Ogan Ilir'),
(75, 3, 'Kabupaten Ogan Komering Ilir'),
(76, 3, 'Kabupaten Ogan Komering Ulu'),
(77, 3, 'Kabupaten Ogan Komering Ulu Selatan'),
(78, 3, 'Kabupaten Ogan Komering Ulu Timur'),
(79, 3, 'Kabupaten Penukal Abab Lematang Ilir'),
(80, 3, 'Kota Lubuklinggau'),
(81, 3, 'Kota Pagar Alam'),
(82, 3, 'Kota Palembang'),
(83, 3, 'Kota Prabumulih'),
(84, 4, 'Kabupaten Agam'),
(85, 4, 'Kabupaten Dharmasraya'),
(86, 4, 'Kabupaten Kepulauan Mentawai'),
(87, 4, 'Kabupaten Lima Puluh Kota'),
(88, 4, 'Kabupaten Padang Pariaman'),
(89, 4, 'Kabupaten Pasaman'),
(90, 4, 'Kabupaten Pasaman Barat'),
(91, 4, 'Kabupaten Pesisir Selatan'),
(92, 4, 'Kabupaten Sijunjung'),
(93, 4, 'Kabupaten Solok'),
(94, 4, 'Kabupaten Solok Selatan'),
(95, 4, 'Kabupaten Tanah Datar'),
(96, 4, 'Kota Bukittinggi'),
(97, 4, 'Kota Padang'),
(98, 4, 'Kota Padangpanjang'),
(99, 4, 'Kota Pariaman'),
(100, 4, 'Kota Payakumbuh'),
(101, 4, 'Kota Sawahlunto'),
(102, 4, 'Kota Solok'),
(103, 5, 'Kabupaten Bengkulu Selatan'),
(104, 5, 'Kabupaten Bengkulu Tengah'),
(105, 5, 'Kabupaten Bengkulu Utara'),
(106, 5, 'Kabupaten Kaur'),
(107, 5, 'Kabupaten Kepahiang'),
(108, 5, 'Kabupaten Lebong'),
(109, 5, 'Kabupaten Mukomuko'),
(110, 5, 'Kabupaten Rejang Lebong'),
(111, 5, 'Kabupaten Seluma'),
(112, 5, 'Kota Bengkulu'),
(113, 7, 'Kabupaten Bintan'),
(114, 7, 'Kabupaten Karimun'),
(115, 7, 'Kabupaten Kepulauan Anambas'),
(116, 7, 'Kabupaten Lingga'),
(117, 7, 'Kabupaten Natuna'),
(118, 7, 'Kota Batam'),
(119, 7, 'Kota Tanjung Pinang'),
(120, 6, 'Kabupaten Bengkalis'),
(121, 6, 'Kabupaten Indragiri Hilir'),
(122, 6, 'Kabupaten Indragiri Hulu'),
(123, 6, 'Kabupaten Kampar'),
(124, 6, 'Kabupaten Kepulauan Meranti'),
(125, 6, 'Kabupaten Kuantan Singingi'),
(126, 6, 'Kabupaten Pelalawan'),
(127, 6, 'Kabupaten Rokan Hilir'),
(128, 6, 'Kabupaten Rokan Hulu'),
(129, 6, 'Kabupaten Siak'),
(130, 6, 'Kota Dumai'),
(131, 6, 'Kota Pekanbaru'),
(132, 8, 'Kabupaten Batanghari'),
(133, 8, 'Kabupaten Bungo'),
(134, 8, 'Kabupaten Kerinci'),
(135, 8, 'Kabupaten Merangin'),
(136, 8, 'Kabupaten Muaro Jambi'),
(137, 8, 'Kabupaten Sarolangun'),
(138, 8, 'Kabupaten Tanjung Jabung Barat'),
(139, 8, 'Kabupaten Tanjung Jabung Timur'),
(140, 8, 'Kabupaten Tebo'),
(141, 8, 'Kota Jambi'),
(142, 8, 'Kota Sungai Penuh'),
(143, 9, 'Kabupaten Lampung Tengah'),
(144, 9, 'Kabupaten Lampung Utara'),
(145, 9, 'Kabupaten Lampung Selatan'),
(146, 9, 'Kabupaten Lampung Barat'),
(147, 9, 'Kabupaten Lampung Timur'),
(148, 9, 'Kabupaten Mesuji'),
(149, 9, 'Kabupaten Pesawaran'),
(150, 9, 'Kabupaten Pesisir Barat'),
(151, 9, 'Kabupaten Pringsewu'),
(152, 9, 'Kabupaten Tulang Bawang'),
(153, 9, 'Kabupaten Tulang Bawang Barat'),
(154, 9, 'Kabupaten Tanggamus'),
(155, 9, 'Kabupaten Way Kanan'),
(156, 9, 'Kota Bandar Lampung'),
(157, 9, 'Kota Metro'),
(158, 10, 'Kabupaten Bangka'),
(159, 10, 'Kabupaten Bangka Barat'),
(160, 10, 'Kabupaten Bangka Selatan'),
(161, 10, 'Kabupaten Bangka Tengah'),
(162, 10, 'Kabupaten Belitung'),
(163, 10, 'Kabupaten Belitung Timur'),
(164, 10, 'Kota Pangkal Pinang'),
(165, 11, 'Kabupaten Berau'),
(166, 11, 'Kabupaten Kutai Barat'),
(167, 11, 'Kabupaten Kutai Kartanegara'),
(168, 11, 'Kabupaten Kutai Timur'),
(169, 11, 'Kabupaten Mahakam Ulu'),
(170, 11, 'Kabupaten Paser'),
(171, 11, 'Kabupaten Penajam Paser Utara'),
(172, 11, 'Kota Balikpapan'),
(173, 11, 'Kota Bontang'),
(174, 11, 'Kota Samarinda'),
(175, 12, 'Kabupaten Bengkayang'),
(176, 12, 'Kabupaten Kapuas Hulu'),
(177, 12, 'Kabupaten Kayong Utara'),
(178, 12, 'Kabupaten Ketapang'),
(179, 12, 'Kabupaten Kubu Raya'),
(180, 12, 'Kabupaten Landak'),
(181, 12, 'Kabupaten Melawi'),
(182, 12, 'Kabupaten Mempawah'),
(183, 12, 'Kabupaten Sambas'),
(184, 12, 'Kabupaten Sanggau'),
(185, 12, 'Kabupaten Sekadau'),
(186, 12, 'Kabupaten Sintang'),
(187, 12, 'Kota Pontianak'),
(188, 12, 'Kota Singkawang'),
(189, 13, 'Kabupaten Barito Selatan'),
(190, 13, 'Kabupaten Barito Timur'),
(191, 13, 'Kabupaten Barito Utara'),
(192, 13, 'Kabupaten Gunung Mas'),
(193, 13, 'Kabupaten Kapuas'),
(194, 13, 'Kabupaten Katingan'),
(195, 13, 'Kabupaten Kotawaringin Barat'),
(196, 13, 'Kabupaten Kotawaringin Timur'),
(197, 13, 'Kabupaten Lamandau'),
(198, 13, 'Kabupaten Murung Raya'),
(199, 13, 'Kabupaten Pulang Pisau'),
(200, 13, 'Kabupaten Sukamara'),
(201, 13, 'Kabupaten Seruyan'),
(202, 13, 'Kota Palangka Raya'),
(203, 14, 'Kabupaten Balangan'),
(204, 14, 'Kabupaten Banjar'),
(205, 14, 'Kabupaten Barito Kuala'),
(206, 14, 'Kabupaten Hulu Sungai Selatan'),
(207, 14, 'Kabupaten Hulu Sungai Tengah'),
(208, 14, 'Kabupaten Hulu Sungai Utara'),
(209, 14, 'Kabupaten Kotabaru'),
(210, 14, 'Kabupaten Tabalong'),
(211, 14, 'Kabupaten Tanah Bumbu'),
(212, 14, 'Kabupaten Tanah Laut'),
(213, 14, 'Kabupaten Tapin'),
(214, 14, 'Kota Banjarbaru'),
(215, 14, 'Kota Banjarmasin'),
(216, 15, 'Kabupaten Bulungan'),
(217, 15, 'Kabupaten Malinau'),
(218, 15, 'Kabupaten Nunukan'),
(219, 15, 'Kabupaten Tana Tidung'),
(220, 15, 'Kota Tarakan'),
(221, 16, 'Jakarta Barat'),
(222, 16, 'Jakarta Pusat'),
(223, 16, 'Jakarta Selatan'),
(224, 16, 'Jakarta Timur'),
(225, 16, 'Jakarta Utara'),
(226, 16, 'Kepulauan Seribu'),
(227, 18, 'Kabupaten Bandung'),
(228, 18, 'Kabupaten Bandung Barat'),
(229, 18, 'Kabupaten Bekasi'),
(230, 18, 'Kabupaten Bogor'),
(231, 18, 'Kabupaten Ciamis'),
(232, 18, 'Kabupaten Cianjur'),
(233, 18, 'Kabupaten Cirebon'),
(234, 18, 'Kabupaten Garut'),
(235, 18, 'Kabupaten Indramayu'),
(236, 18, 'Kabupaten Karawang'),
(237, 18, 'Kabupaten Kuningan'),
(238, 18, 'Kabupaten Majalengka'),
(239, 18, 'Kabupaten Pangandaran'),
(240, 18, 'Kabupaten Purwakarta'),
(241, 18, 'Kabupaten Subang'),
(242, 18, 'Kabupaten Sukabumi'),
(243, 18, 'Kabupaten Sumedang'),
(244, 18, 'Kabupaten Tasikmalaya'),
(245, 18, 'Kota Bandung'),
(246, 18, 'Kota Banjar'),
(247, 18, 'Kota Bekasi'),
(248, 18, 'Kota Bogor'),
(249, 18, 'Kota Cimahi'),
(250, 18, 'Kota Cirebon'),
(251, 18, 'Kota Depok'),
(252, 18, 'Kota Sukabumi'),
(253, 18, 'Kota Tasikmalaya'),
(254, 19, 'Kabupaten Banjarnegara'),
(255, 19, 'Kabupaten Banyumas'),
(256, 19, 'Kabupaten Batang'),
(257, 19, 'Kabupaten Blora'),
(258, 19, 'Kabupaten Boyolali'),
(259, 19, 'Kabupaten Brebes'),
(260, 19, 'Kabupaten Cilacap'),
(261, 19, 'Kabupaten Demak'),
(262, 19, 'Kabupaten Grobogan'),
(263, 19, 'Kabupaten Jepara'),
(264, 19, 'Kabupaten Karanganyar'),
(265, 19, 'Kabupaten Kebumen'),
(266, 19, 'Kabupaten Kendal'),
(267, 19, 'Kabupaten Klaten'),
(268, 19, 'Kabupaten Kudus'),
(269, 19, 'Kabupaten Magelang'),
(270, 19, 'Kabupaten Pati'),
(271, 19, 'Kabupaten Pekalongan'),
(272, 19, 'Kabupaten Pemalang'),
(273, 19, 'Kabupaten Purbalingga'),
(274, 19, 'Kabupaten Purworejo'),
(275, 19, 'Kabupaten Rembang'),
(276, 19, 'Kabupaten Semarang'),
(277, 19, 'Kabupaten Sragen'),
(278, 19, 'Kabupaten Sukoharjo'),
(279, 19, 'Kabupaten Tegal'),
(280, 19, 'Kabupaten Temanggung'),
(281, 19, 'Kabupaten Wonogiri'),
(282, 19, 'Kabupaten Wonosobo'),
(283, 19, 'Kota Magelang'),
(284, 19, 'Kota Pekalongan'),
(285, 19, 'Kota Salatiga'),
(286, 19, 'Kota Semarang'),
(287, 19, 'Kota Surakarta'),
(288, 19, 'Kota Tegal'),
(289, 20, 'Kabupaten Bantul'),
(290, 20, 'Kabupaten Gunungkidul'),
(291, 20, 'Kabupaten Kulon Progo'),
(292, 20, 'Kabupaten Sleman'),
(293, 20, 'Kota Yogyakarta'),
(294, 21, 'Kabupaten Bangkalan'),
(295, 21, 'Kabupaten Banyuwangi'),
(296, 21, 'Kabupaten Blitar'),
(297, 21, 'Kabupaten Bojonegoro'),
(298, 21, 'Kabupaten Bondowoso'),
(299, 21, 'Kabupaten Gresik'),
(300, 21, 'Kabupaten Jember'),
(301, 21, 'Kabupaten Jombang'),
(302, 21, 'Kabupaten Kediri'),
(303, 21, 'Kabupaten Lamongan'),
(304, 21, 'Kabupaten Lumajang'),
(305, 21, 'Kabupaten Madiun'),
(306, 21, 'Kabupaten Magetan'),
(307, 21, 'Kabupaten Malang'),
(308, 21, 'Kabupaten Mojokerto'),
(309, 21, 'Kabupaten Nganjuk'),
(310, 21, 'Kabupaten Ngawi'),
(311, 21, 'Kabupaten Pacitan'),
(312, 21, 'Kabupaten Pamekasan'),
(313, 21, 'Kabupaten Pasuruan'),
(314, 21, 'Kabupaten Ponorogo'),
(315, 21, 'Kabupaten Probolinggo'),
(316, 21, 'Kabupaten Sampang'),
(317, 21, 'Kabupaten Sidoarjo'),
(318, 21, 'Kabupaten Situbondo'),
(319, 21, 'Kabupaten Sumenep'),
(320, 21, 'Kabupaten Trenggalek'),
(321, 21, 'Kabupaten Tuban'),
(322, 21, 'Kabupaten Tulungagung'),
(323, 21, 'Kota Batu'),
(324, 21, 'Kota Blitar'),
(325, 21, 'Kota Kediri'),
(326, 21, 'Kota Madiun'),
(327, 21, 'Kota Malang'),
(328, 21, 'Kota Mojokerto'),
(329, 21, 'Kota Pasuruan'),
(330, 21, 'Kota Probolinggo'),
(331, 21, 'Kota Surabaya'),
(332, 22, 'Kabupaten Badung'),
(333, 22, 'Kabupaten Bangli'),
(334, 22, 'Kabupaten Buleleng'),
(335, 22, 'Kabupaten Gianyar'),
(336, 22, 'Kabupaten Jembrana'),
(337, 22, 'Kabupaten Karangasem'),
(338, 22, 'Kabupaten Klungkung'),
(339, 22, 'Kabupaten Tabanan'),
(340, 23, 'Kabupaten Bima'),
(341, 23, 'Kabupaten Dompu'),
(342, 23, 'Kabupaten Lombok Barat'),
(343, 23, 'Kabupaten Lombok Tengah'),
(344, 23, 'Kabupaten Lombok Timur'),
(345, 23, 'Kabupaten Lombok Utara'),
(346, 23, 'Kabupaten Sumbawa'),
(347, 23, 'Kabupaten Sumbawa Barat'),
(348, 23, 'Kota Bima'),
(349, 23, 'Kota Mataram');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `kecamatan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `kecamatan`) VALUES
(1, 9, 'Ciputat'),
(2, 9, 'Ciputat Timur'),
(3, 9, 'Pamulang'),
(4, 9, 'Pondok Aren'),
(5, 9, 'Serpong'),
(6, 9, 'Serpong Utara'),
(7, 9, 'Setu');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id_payroll` int(11) NOT NULL,
  `kode_payroll` varchar(30) NOT NULL,
  `tgl_payroll` date DEFAULT NULL,
  `waktu_payroll` time DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `nama_jabatan` varchar(100) DEFAULT NULL,
  `nama_bagian` varchar(128) DEFAULT NULL,
  `hadir` int(11) DEFAULT NULL,
  `sakit` int(11) DEFAULT NULL,
  `alpha` int(11) DEFAULT NULL,
  `telat` int(11) DEFAULT NULL,
  `bpjs` varchar(100) DEFAULT NULL,
  `pajak` varchar(100) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `channel_bayar` varchar(128) DEFAULT NULL,
  `qr_code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id_payroll`, `kode_payroll`, `tgl_payroll`, `waktu_payroll`, `id_pegawai`, `nama_jabatan`, `nama_bagian`, `hadir`, `sakit`, `alpha`, `telat`, `bpjs`, `pajak`, `status`, `channel_bayar`, `qr_code`) VALUES
(7, 'TR879699424286', '2023-06-16', '00:35:00', 6, 'Staff', 'Marketing', NULL, NULL, NULL, NULL, '5000', '12000', '1', NULL, 'TR879699424286.png');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `nama` varchar(128) DEFAULT NULL,
  `tempat_lahir` varchar(128) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `provinsi` varchar(128) DEFAULT NULL,
  `kabupaten` varchar(128) DEFAULT NULL,
  `kecamatan` varchar(128) DEFAULT NULL,
  `agama` varchar(128) DEFAULT NULL,
  `status_nikah` varchar(128) DEFAULT NULL,
  `warga_negara` varchar(128) DEFAULT NULL,
  `nip` varchar(15) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `status_pegawai` varchar(30) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `id_bagian` int(11) DEFAULT NULL,
  `no_rek` varchar(128) DEFAULT NULL,
  `nama_rek` varchar(128) DEFAULT NULL,
  `no_hp` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `role_id` varchar(2) DEFAULT NULL,
  `about` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nik`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `provinsi`, `kabupaten`, `kecamatan`, `agama`, `status_nikah`, `warga_negara`, `nip`, `photo`, `status_pegawai`, `tgl_masuk`, `id_jabatan`, `id_bagian`, `no_rek`, `nama_rek`, `no_hp`, `email`, `username`, `password`, `role_id`, `about`) VALUES
(6, '3674052109990001', 'Rayi Putra', 'Banten', '1991-12-01', 'Laki-laki', 'Jalan Jalan', '17', '9', '1', 'Islam', NULL, NULL, '17108219', '', 'contract employee', '2023-06-15', 8, 4, NULL, NULL, '0215485411', 'admin@gmail.com', 'rayi', '202cb962ac59075b964b07152d234b70', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `provinsi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `provinsi`) VALUES
(1, 'Nanggroe Aceh Darussalam'),
(2, 'Sumatera Utara'),
(3, 'Sumatera Selatan'),
(4, 'Sumatera Barat'),
(5, 'Bengkulu'),
(6, 'Riau'),
(7, 'Kepulauan Riau'),
(8, 'Jambi'),
(9, 'Lampung'),
(10, 'Bangka Belitung'),
(11, 'Kalimantan Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Tengah'),
(14, 'Kalimantan Selatan'),
(15, 'Kalimantan Utara'),
(16, 'DKI Jakarta'),
(17, 'Banten'),
(18, 'Jawa Barat'),
(19, 'Jawa Tengah'),
(20, 'DI Yogyakarta'),
(21, 'Jawa Timur'),
(22, 'Bali'),
(23, 'Nusa Tenggara Barat'),
(24, 'Nusa Tenggara Timur'),
(25, 'Sulawesi Utara'),
(26, 'Sulawesi Barat'),
(27, 'Sulawesi Tengah'),
(28, 'Gorontalo'),
(29, 'Sulawesi Tenggara'),
(30, 'Sulawesi Selatan'),
(31, 'Maluku Utara'),
(32, 'Maluku'),
(33, 'Papua Barat'),
(34, 'Papua'),
(35, 'Papua Selatan'),
(36, 'Papua Tengah'),
(37, 'Papua Pegunungan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id_cabang`);

--
-- Indexes for table `data_cuti`
--
ALTER TABLE `data_cuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id_payroll`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id_bagian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id_cabang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data_cuti`
--
ALTER TABLE `data_cuti`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id_payroll` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
