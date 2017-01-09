-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2017 at 03:38 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dinamik12`
--
CREATE DATABASE IF NOT EXISTS `db_dinamik12` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_dinamik12`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_account`
--

DROP TABLE IF EXISTS `tb_account`;
CREATE TABLE IF NOT EXISTS `tb_account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_email` varchar(255) NOT NULL,
  `account_username` varchar(255) NOT NULL,
  `account_password` varchar(255) NOT NULL,
  `account_log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last login',
  `account_category_id` varchar(10) NOT NULL,
  `account_token` varchar(255) NOT NULL COMMENT 'Cookies token',
  `account_image` text NOT NULL COMMENT 'Gambar kategori',
  `account_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`),
  KEY `account_category` (`account_category_id`),
  KEY `account_category_2` (`account_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_account`
--

TRUNCATE TABLE `tb_account`;
--
-- Dumping data for table `tb_account`
--

INSERT INTO `tb_account` (`account_id`, `account_email`, `account_username`, `account_password`, `account_log`, `account_category_id`, `account_token`, `account_image`, `account_status`) VALUES
(0, 'dinamik.cs@upi.edu', 'admin', 'ede193cd28509d8ca49a210b5659c56d', '2017-01-08 13:27:11', 'ADMSU', '', '/assets/img/icon_dashboard/admin.jpg', 1),
(1, 'dinamik.cs@upi.edu', 'ketuplak', '21232f297a57a5a743894a0e4a801fc3', '2017-01-04 11:50:24', 'ADM', '', '/assets/img/icon_dashboard/admin.jpg', 1),
(2, 'dinamik.cs@upi.edu', 'acara', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:35:51', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(3, 'dinamik.cs@upi.edu', 'bendahara', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:35:54', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(4, 'dinamik.cs@upi.edu', 'danusbazaar', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:35:56', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(5, 'dinamik.cs@upi.edu', 'dokumentasi', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:35:59', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(6, 'dinamik.cs@upi.edu', 'publikasi', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:01', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(7, 'dinamik.cs@upi.edu', 'sponsor', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:03', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(8, 'dinamik.cs@upi.edu', 'cspc', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:05', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(9, 'dinamik.cs@upi.edu', 'donor', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:09', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(10, 'dinamik.cs@upi.edu', 'dstar', '21232f297a57a5a743894a0e4a801fc3', '2017-01-04 11:50:27', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(11, 'dinamik.cs@upi.edu', 'felose', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:12', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(12, 'dinamik.cs@upi.edu', 'komjar', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:18', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(13, 'dinamik.cs@upi.edu', 'lca', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:21', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(14, 'dinamik.cs@upi.edu', 'lcw', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:23', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(15, 'dinamik.cs@upi.edu', 'ldg', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:25', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(16, 'dinamik.cs@upi.edu', 'otik', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:27', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(17, 'dinamik.cs@upi.edu', 'pca', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:30', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(18, 'dinamik.cs@upi.edu', 'rlf', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:33', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(19, 'dinamik.cs@upi.edu', 'semnas', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:35', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(20, 'dinamik.cs@upi.edu', 'talkshow', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:38', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(21, 'dinamik.cs@upi.edu', 'workshop', '21232f297a57a5a743894a0e4a801fc3', '2017-01-03 09:36:40', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_bazaar`
--

DROP TABLE IF EXISTS `tb_bazaar`;
CREATE TABLE IF NOT EXISTS `tb_bazaar` (
  `bazaar_id` int(11) NOT NULL AUTO_INCREMENT,
  `bazaar_name` varchar(255) NOT NULL,
  `bazaar_type` varchar(20) NOT NULL,
  `bazaar_description` text NOT NULL,
  `bazaar_address` text NOT NULL,
  `bazaar_contact` varchar(20) NOT NULL,
  PRIMARY KEY (`bazaar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_bazaar`
--

TRUNCATE TABLE `tb_bazaar`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_calendar`
--

DROP TABLE IF EXISTS `tb_calendar`;
CREATE TABLE IF NOT EXISTS `tb_calendar` (
  `calendar_id` int(11) NOT NULL AUTO_INCREMENT,
  `calendar_event_id` int(11) NOT NULL,
  `calendar_start_date` date NOT NULL,
  `calendar_end_date` date NOT NULL,
  `calendar_start_time` time NOT NULL,
  `calendar_end_time` time NOT NULL,
  `calendar_event_name` varchar(255) NOT NULL,
  `calendar_event_description` text NOT NULL,
  PRIMARY KEY (`calendar_id`),
  KEY `calendar_event_id` (`calendar_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabel daftar acara buat kalender';

--
-- Truncate table before insert `tb_calendar`
--

TRUNCATE TABLE `tb_calendar`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE IF NOT EXISTS `tb_category` (
  `category_id` varchar(10) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_category`
--

TRUNCATE TABLE `tb_category`;
--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
('ADM', 'Ketua Pelaksana'),
('ADMSU', 'Super Administrator'),
('COR', 'Coordinator'),
('JDG', 'Juri'),
('PUB', 'Publik'),
('SCH', 'Sekolah'),
('SCT', 'Tim Sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_city`
--

DROP TABLE IF EXISTS `tb_city`;
CREATE TABLE IF NOT EXISTS `tb_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(40) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_city`
--

TRUNCATE TABLE `tb_city`;
--
-- Dumping data for table `tb_city`
--

INSERT INTO `tb_city` (`city_id`, `city_name`) VALUES
(1, 'Aceh Barat Daya'),
(2, 'Aceh Barat'),
(3, 'Aceh Besar'),
(4, 'Aceh Jaya'),
(5, 'Aceh Selatan'),
(6, 'Aceh Singkil'),
(7, 'Aceh Tamiang'),
(8, 'Aceh Tengah'),
(9, 'Aceh Tenggara'),
(10, 'Aceh Timur'),
(11, 'Aceh Utara'),
(12, 'Adm. Kepulauan Serib'),
(13, 'Agam'),
(14, 'Alor'),
(15, 'Ambon'),
(16, 'Asahan'),
(17, 'Asmat'),
(18, 'Badung'),
(19, 'Balangan'),
(20, 'Balikpapan'),
(21, 'Banda Aceh'),
(22, 'Bandar Lampung'),
(23, 'Bandung Barat'),
(24, 'Bandung'),
(25, 'Banggai Kepulauan'),
(26, 'Banggai'),
(27, 'Bangka Barat'),
(28, 'Bangka Selatan'),
(29, 'Bangka Tengah'),
(30, 'Bangka'),
(31, 'Bangkalan'),
(32, 'Bangli'),
(33, 'Banjar Baru'),
(34, 'Banjar'),
(35, 'Banjarmasin'),
(36, 'Banjarnegara'),
(37, 'Bantaeng'),
(38, 'Bantul'),
(39, 'Banyuasin'),
(40, 'Banyumas'),
(41, 'Banyuwangi'),
(42, 'Barito Kuala'),
(43, 'Barito Selatan'),
(44, 'Barito Timur'),
(45, 'Barito Utara'),
(46, 'Barru'),
(47, 'Baru'),
(48, 'Batam'),
(49, 'Batang Hari'),
(50, 'Batang'),
(51, 'Batu'),
(52, 'Batubara'),
(53, 'Bau-bau'),
(54, 'Bekasi'),
(55, 'Belitung Timur'),
(56, 'Belitung'),
(57, 'Belu'),
(58, 'Bener Meriah'),
(59, 'Bengkalis'),
(60, 'Bengkayang'),
(61, 'Bengkulu Selatan'),
(62, 'Bengkulu Tengah'),
(63, 'Bengkulu Utara'),
(64, 'Bengkulu'),
(65, 'Berau'),
(66, 'Biak Numfor'),
(67, 'Bima'),
(68, 'Binjai'),
(69, 'Bintan'),
(70, 'Bireuen'),
(71, 'Bitung'),
(72, 'Blitar'),
(73, 'Blora'),
(74, 'Boalemo'),
(75, 'Bogor'),
(76, 'Bojonegoro'),
(77, 'Bolaang Mangondow Se'),
(78, 'Bolaang Mangondow Ti'),
(79, 'Bolaang Mangondow Ut'),
(80, 'Bolaang Mangondow'),
(81, 'Bombana'),
(82, 'Bondowoso'),
(83, 'Bone Bolango'),
(84, 'Bone'),
(85, 'Bontang'),
(86, 'Boven Digoel'),
(87, 'Boyolali'),
(88, 'Brebes'),
(89, 'Bukittinggi'),
(90, 'Buleleng'),
(91, 'Bulongan'),
(92, 'Bulukumba'),
(93, 'Bulungan'),
(94, 'Bungo'),
(95, 'Buol'),
(96, 'Buru Selatan'),
(97, 'Buru'),
(98, 'Buton Utara'),
(99, 'Buton'),
(100, 'Ciamis'),
(101, 'Cianjur'),
(102, 'Cilacap'),
(103, 'Cilegon'),
(104, 'Cimahi'),
(105, 'Cirebon'),
(106, 'Dairi'),
(107, 'Deiyai'),
(108, 'Deli Serdang'),
(109, 'Demak'),
(110, 'Denpasar'),
(111, 'Depok'),
(112, 'Dharmas Raya'),
(113, 'Dogiyai'),
(114, 'Dompu'),
(115, 'Donggala'),
(116, 'Dumai'),
(117, 'Empat Lawang'),
(118, 'Ende'),
(119, 'Enrekang'),
(120, 'Fakfak'),
(121, 'Flores Timur'),
(122, 'Garut'),
(123, 'Gayo Luwes'),
(124, 'Gianyar'),
(125, 'Gorontalo Utara'),
(126, 'Gorontalo'),
(127, 'Gowa'),
(128, 'Gresik'),
(129, 'Grobogan'),
(130, 'Gunung Kidul'),
(131, 'Gunung Mas'),
(132, 'Gunung Sitoli'),
(133, 'Halmahera Barat'),
(134, 'Halmahera Selatan'),
(135, 'Halmahera Tengah'),
(136, 'Halmahera Timur'),
(137, 'Halmahera Utara'),
(138, 'Hulu Sungai Selatan'),
(139, 'Hulu Sungai Tengah'),
(140, 'Hulu Sungai Utara'),
(141, 'Humbang Hasundutan'),
(142, 'Indragiri Hilir'),
(143, 'Indragiri Hulu'),
(144, 'Indramayu'),
(145, 'Intan Jaya'),
(146, 'Jakarta Barat'),
(147, 'Jakarta Pusat'),
(148, 'Jakarta Selatan'),
(149, 'Jakarta Timur'),
(150, 'Jakarta Utara'),
(151, 'Jambi'),
(152, 'Jayapura'),
(153, 'Jayawijaya'),
(154, 'Jember'),
(155, 'Jembrana'),
(156, 'Jeneponto'),
(157, 'Jepara'),
(158, 'Jombang'),
(159, 'Kaimana'),
(160, 'Kampar'),
(161, 'Kapuas Hulu'),
(162, 'Kapuas'),
(163, 'Karang Asem'),
(164, 'Karanganyar'),
(165, 'Karawang'),
(166, 'Karimun'),
(167, 'Karo'),
(168, 'Katingan'),
(169, 'Kaur'),
(170, 'Kayong Utara'),
(171, 'Kebumen'),
(172, 'Kediri'),
(173, 'Kediri'),
(174, 'Keerom'),
(175, 'Kendal'),
(176, 'Kendari'),
(177, 'Kepahiang'),
(178, 'Kepulauan Anambas'),
(179, 'Kepulauan Aru'),
(180, 'Kepulauan Mentawai'),
(181, 'Kepulauan Sangihe'),
(182, 'Kepulauan Siau Tagul'),
(183, 'Kepulauan Sula'),
(184, 'Kepulauan Talaud'),
(185, 'Kepulauan Yapen'),
(186, 'Kerinci'),
(187, 'Ketapang'),
(188, 'Klaten'),
(189, 'Klungkung'),
(190, 'Kolaka Utara'),
(191, 'Kolaka'),
(192, 'Konawe Selatan'),
(193, 'Konawe Utara'),
(194, 'Konawe'),
(195, 'Kotamobagu'),
(196, 'Kotawaringin Barat'),
(197, 'Kotawaringin Timur'),
(198, 'Kuantan Singingi'),
(199, 'Kubu Raya'),
(200, 'Kudus'),
(201, 'Kulon Progo'),
(202, 'Kuningan'),
(203, 'Kupang'),
(204, 'Kutai Barat'),
(205, 'Kutai Kartanegara'),
(206, 'Kutai Timur'),
(207, 'Labuhan Batu'),
(208, 'Labuhanbatu Selatan'),
(209, 'Labuhanbatu Utara'),
(210, 'Lahat'),
(211, 'Lamandau'),
(212, 'Lamongan'),
(213, 'Lampung Barat'),
(214, 'Lampung Selatan'),
(215, 'Lampung Tengah'),
(216, 'Lampung Timur'),
(217, 'Lampung Utara'),
(218, 'Landak'),
(219, 'Langkat'),
(220, 'Langsa'),
(221, 'Lanny Jaya'),
(222, 'Lebak'),
(223, 'Lebong'),
(224, 'Lembata'),
(225, 'Lhokseumawe'),
(226, 'Lima Puluh Kota'),
(227, 'Lingga'),
(228, 'Lombok Barat'),
(229, 'Lombok Tengah'),
(230, 'Lombok Timur'),
(231, 'Lombok Utara'),
(232, 'Lubuklinggau'),
(233, 'Lumajang'),
(234, 'Luwu Timur'),
(235, 'Luwu Utara'),
(236, 'Luwu'),
(237, 'Madiun'),
(238, 'Magelang'),
(239, 'Magetan'),
(240, 'Majalengka'),
(241, 'Majene'),
(242, 'Makassar'),
(243, 'Malang'),
(244, 'Malinau'),
(245, 'Maluku Barat Daya'),
(246, 'Maluku Tengah'),
(247, 'Maluku Tenggara Bara'),
(248, 'Maluku Tenggara'),
(249, 'Mamasa'),
(250, 'Mamberamo Raya'),
(251, 'Mamberamo Tengah'),
(252, 'Mamuju Utara'),
(253, 'Mamuju'),
(254, 'Manado'),
(255, 'Mandailing Natal'),
(256, 'Manggarai Barat'),
(257, 'Manggarai Timur'),
(258, 'Manggarai'),
(259, 'Manokwari'),
(260, 'Mappi'),
(261, 'Maros'),
(262, 'Mataram'),
(263, 'Maybrat'),
(264, 'Medan'),
(265, 'Melawi'),
(266, 'Merangin'),
(267, 'Meranti'),
(268, 'Merauke'),
(269, 'Mesuji'),
(270, 'Metro'),
(271, 'Mimika'),
(272, 'Minahasa Selatan'),
(273, 'Minahasa Tenggara'),
(274, 'Minahasa Utara'),
(275, 'Minahasa'),
(276, 'Mojokerto'),
(277, 'Morowali'),
(278, 'Muara Enim'),
(279, 'Muaro Jambi'),
(280, 'Mukomuko'),
(281, 'Muna'),
(282, 'Murung Raya'),
(283, 'Musi Banyu Asin'),
(284, 'Musi Rawas'),
(285, 'Nabire'),
(286, 'Nagan Raya'),
(287, 'Nagekeo'),
(288, 'Natuna'),
(289, 'Nduga'),
(290, 'Ngada'),
(291, 'Nganjuk'),
(292, 'Ngawi'),
(293, 'Nias Barat'),
(294, 'Nias Selatan'),
(295, 'Nias Utara'),
(296, 'Nias'),
(297, 'Nunukan'),
(298, 'Ogan Ilir'),
(299, 'Ogan Komering Ilir'),
(300, 'Ogan Komering Ulu Se'),
(301, 'Ogan Komering Ulu Ti'),
(302, 'Ogan Komering Ulu'),
(303, 'Pacitan'),
(304, 'Padang Lawas Utara'),
(305, 'Padang Lawas'),
(306, 'Padang Panjang'),
(307, 'Padang Pariaman'),
(308, 'Padang'),
(309, 'Padangsidempuan'),
(310, 'Pagar Alam'),
(311, 'Pakpak Barat'),
(312, 'Palangkaraya'),
(313, 'Palembang'),
(314, 'Palopo'),
(315, 'Palu'),
(316, 'Pamekasan'),
(317, 'Pandeglang'),
(318, 'Pangkajene Kepulauan'),
(319, 'Pangkal Pinang'),
(320, 'Paniai'),
(321, 'Pare-pare'),
(322, 'Pariaman'),
(323, 'Parigi Moutong'),
(324, 'Pasaman Barat'),
(325, 'Pasaman'),
(326, 'Paser'),
(327, 'Pasuruan'),
(328, 'Pasuruan'),
(329, 'Pati'),
(330, 'Payakumbuh'),
(331, 'Pegunungan Bintang'),
(332, 'Pekalongan'),
(333, 'Pekanbaru'),
(334, 'Pelalawan'),
(335, 'Pemalang'),
(336, 'Pematang Siantar'),
(337, 'Penajam Paser Utara'),
(338, 'Pesawaran'),
(339, 'Pesisir Selatan'),
(340, 'Pidie Jaya'),
(341, 'Pidie'),
(342, 'Pinrang'),
(343, 'Pohuwato'),
(344, 'Polewali Mandar'),
(345, 'Ponorogo'),
(346, 'Pontianak'),
(347, 'Poso'),
(348, 'Prabumulih'),
(349, 'Pringsewu'),
(350, 'Probolinggo'),
(351, 'Probolinggo'),
(352, 'Pulang Pisau'),
(353, 'Pulau Morotai'),
(354, 'Puncak Jaya'),
(355, 'Puncak'),
(356, 'Purbalingga'),
(357, 'Purwakarta'),
(358, 'Purworejo'),
(359, 'Raja Ampat'),
(360, 'Rejang Lebong'),
(361, 'Rembang'),
(362, 'Rokan Hilir'),
(363, 'Rokan Hulu'),
(364, 'Rote Ndao'),
(365, 'Sabang'),
(366, 'Sabu Raijua'),
(367, 'Salatiga'),
(368, 'Samarinda'),
(369, 'Sambas'),
(370, 'Samosir'),
(371, 'Sampang'),
(372, 'Sanggau'),
(373, 'Sarmi'),
(374, 'Sarolangun'),
(375, 'Sawah Lunto'),
(376, 'Sekadau'),
(377, 'Selayar'),
(378, 'Seluma'),
(379, 'Semarang'),
(380, 'Seram Bagian Barat'),
(381, 'Seram Bagian Timur'),
(382, 'Serang'),
(383, 'Serdang Bedagai'),
(384, 'Seruyan'),
(385, 'Siak'),
(386, 'Sibolga'),
(387, 'Sidenreng Rappang'),
(388, 'Sidoarjo'),
(389, 'Sigi'),
(390, 'Sijunjung'),
(391, 'Sikka'),
(392, 'Simalungun'),
(393, 'Simeulue'),
(394, 'Singkawang'),
(395, 'Sinjai'),
(396, 'Sintang'),
(397, 'Situbondo'),
(398, 'Sleman'),
(399, 'Solok Selatan'),
(400, 'Solok'),
(401, 'Soppeng'),
(402, 'Sorong Selatan'),
(403, 'Sorong'),
(404, 'Sragen'),
(405, 'Subang'),
(406, 'Subulussalam'),
(407, 'Sukabumi'),
(408, 'Sukamara'),
(409, 'Sukoharjo'),
(410, 'Sumba Barat Daya'),
(411, 'Sumba Barat'),
(412, 'Sumba Tengah'),
(413, 'Sumba Timur'),
(414, 'Sumbawa Barat'),
(415, 'Sumbawa'),
(416, 'Sumedang'),
(417, 'Sumenep'),
(418, 'Sungai Penuh'),
(419, 'Supiori'),
(420, 'Surabaya'),
(421, 'Surakarta'),
(422, 'Tabalong'),
(423, 'Tabanan'),
(424, 'Takalar'),
(425, 'Tambrauw'),
(426, 'Tana Tidung'),
(427, 'Tana Toraja'),
(428, 'Tanah Bumbu'),
(429, 'Tanah Datar'),
(430, 'Tanah Laut'),
(431, 'Tangerang Selatan'),
(432, 'Tangerang'),
(433, 'Tanggamus'),
(434, 'Tanjung Balai'),
(435, 'Tanjung Jabung Barat'),
(436, 'Tanjung Jabung Timur'),
(437, 'Tanjung Pinang'),
(438, 'Tapanuli Selatan'),
(439, 'Tapanuli Tengah'),
(440, 'Tapanuli Utara'),
(441, 'Tapin'),
(442, 'Tarakan'),
(443, 'Tarakan'),
(444, 'Tasikmalaya'),
(445, 'Tebing Tinggi'),
(446, 'Tebo'),
(447, 'Tegal'),
(448, 'Teluk Bintuni'),
(449, 'Teluk Wondama'),
(450, 'Temanggung'),
(451, 'Ternate'),
(452, 'Tidore Kepulauan'),
(453, 'Timor Tengah Selatan'),
(454, 'Timor Tengah Utara'),
(455, 'Toba Samosir'),
(456, 'Tojo Una-Una'),
(457, 'Toli Toli'),
(458, 'Tolikara'),
(459, 'Tomohon'),
(460, 'Toraja Utara'),
(461, 'Trenggalek'),
(462, 'Tual'),
(463, 'Tuban'),
(464, 'Tulang Bawang Barat'),
(465, 'Tulang Bawang'),
(466, 'Tulungagung'),
(467, 'Wajo'),
(468, 'Wakatobi'),
(469, 'Waropen'),
(470, 'Way Kanan'),
(471, 'Wonogiri'),
(472, 'Wonosobo'),
(473, 'Yahukimo'),
(474, 'Yalimo'),
(475, 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `tb_coordinator`
--

DROP TABLE IF EXISTS `tb_coordinator`;
CREATE TABLE IF NOT EXISTS `tb_coordinator` (
  `coordinator_id` int(11) NOT NULL AUTO_INCREMENT,
  `coordinator_name` varchar(255) NOT NULL,
  `coordinator_contact` varchar(20) DEFAULT NULL,
  `coordinator_address` text,
  `coordinator_event_id` int(11) DEFAULT NULL,
  `coordinator_account_id` int(11) NOT NULL,
  PRIMARY KEY (`coordinator_id`),
  KEY `coordinator_event_id` (`coordinator_event_id`),
  KEY `tb_coordinator_ibfk_2` (`coordinator_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_coordinator`
--

TRUNCATE TABLE `tb_coordinator`;
--
-- Dumping data for table `tb_coordinator`
--

INSERT INTO `tb_coordinator` (`coordinator_id`, `coordinator_name`, `coordinator_contact`, `coordinator_address`, `coordinator_event_id`, `coordinator_account_id`) VALUES
(0, 'Super Admin', NULL, NULL, NULL, 0),
(1, 'Ketua Pelaksana', NULL, NULL, NULL, 1),
(2, 'Koordinator Acara', NULL, NULL, NULL, 2),
(3, 'Bendahara', NULL, NULL, NULL, 3),
(4, 'Danus dan Bazaar', NULL, NULL, NULL, 4),
(5, 'Dokumentasi', NULL, NULL, NULL, 5),
(6, 'Publikasi', NULL, NULL, NULL, 6),
(7, 'Sponsor', NULL, NULL, NULL, 7),
(8, 'CSPC', NULL, NULL, 5, 8),
(9, 'Donor Darah', NULL, NULL, 12, 9),
(10, 'Dinamik Star', NULL, NULL, 14, 10),
(11, 'Festival Teknologi dan Seni', NULL, NULL, 11, 11),
(12, 'Kompetisi Jaringan', NULL, NULL, 8, 12),
(13, 'Lomba Cipta Animasi', NULL, NULL, 6, 13),
(14, 'Lomba Cipta Web', NULL, NULL, 2, 14),
(15, 'Lomba Desain Grafis', NULL, NULL, 1, 15),
(16, 'Olimpiade Teknologi Informasi dan Komunikasi', NULL, NULL, 3, 16),
(17, 'PC Assembling', NULL, NULL, 4, 17),
(18, 'Robot Line Follower', NULL, NULL, 7, 18),
(19, 'Seminar Nasional', NULL, NULL, 10, 19),
(20, 'Talkshow', NULL, NULL, 9, 20),
(21, 'Workshop', NULL, NULL, 13, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tb_event`
--

DROP TABLE IF EXISTS `tb_event`;
CREATE TABLE IF NOT EXISTS `tb_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_code` varchar(10) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_status` tinyint(1) NOT NULL COMMENT '1 = valid/bisa daftar, 0 = tutup, 9 = spesial',
  `event_price` double DEFAULT NULL,
  `event_capacity` int(5) NOT NULL,
  `event_description` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_event`
--

TRUNCATE TABLE `tb_event`;
--
-- Dumping data for table `tb_event`
--

INSERT INTO `tb_event` (`event_id`, `event_code`, `event_name`, `event_status`, `event_price`, `event_capacity`, `event_description`) VALUES
(1, 'LDG', 'Lomba Desain Grafis', 1, 50000, 59, 'Lomba Desain Grafis merupakan salah satu ajang kompetisi  dalam rangkaian acara DINAMIK12 di bidang desain grafis. Lomba Desain Grafis adalah lomba perorangan yang mengasah kreativitas peserta dalam mendesain sebuah ilustrasi yang sesuai dengan tema, yaitu “Teknologi data dalam pendidikan Indonesia” Ilustrasi yang dibuat tidak hanya bagus tetapi juga memiliki makna. Peserta lomba diharuskan membuat desain grafis berupa ilustrasi sesuai dengan tema LDG DINAMIK12 dengan menggunakan software seperti Inkscape, GIMP, Adobe Photoshop, atau CorelDRAW. Sasaran peserta dalam lomba ini yaitu siswa/i SMA/SMK/sederajat se-Nasional.									\r\n																	\r\n									\r\n								'),
(2, 'LCW', 'Lomba Cipta Web', 1, 100000, 50, 'Lomba Cipta Website merupakan kompetisi yang diselenggarakan oleh Mahasiswa Ilmu Komputer dan Pendidikan Ilmu Komputer pada Dies Natalis Mahasiswa Komputer yang ke-12 (Dinamik 12) untuk menuangkan ide dan kreativitas ke dalam sebuah website, bertujuan untuk memberikan motivasi dan sebagai sarana belajar untuk membangun dan mengembangkan website.Pada tahun ini, LCW mengusung tema “Technology Innovation for Smarter Indonesian Education” untuk ketentuan website peserta. Sasaran peserta lomba ini yaitu siswa/i SMA/SMK/sederajat se-Nasional.'),
(3, 'OTIK', 'Olimpiade Teknologi Informasi dan Komunikasi', 1, 60000, 50, 'Olimpiade TIK merupakan salah satu cabang lomba dalam rangkaian acara DINAMIK 12. Pada perlombaan ini para peserta akan diuji dengan soal-soal logika matematika dan TIK dan harus diselesaikan dengan tepat dan cepat selama waktu yang ditentukan. Lomba ini bertemakan “Mahakarya Teknologi Bangsa Untuk Pendidikan Indonesia”. Sasaran peserta untuk lomba ini yaitu siswa/i SMA/SMK/ sederajat se-Jawa Barat.'),
(4, 'PCA', 'Personal Computer Assembling', 1, 95000, 50, 'Personal Computer Assembling (PCA) merupakan lomba yang menjadi daya tarik dalam DINAMIK. Dari tahun ke tahun PCA selalu menjadi lomba favorit yang diikuti dengan ditandainya jumlah peserta yang dapat mencapai 200 peserta. Lomba ini menekankan ketelitian, kerapihan dan kecepatan dalam perakitan komponen - komponen PC. Sasaran peserta untuk lomba ini yaitu siswa/i SMA/ sederajat se-Nasional.'),
(5, 'CSPC', 'Computer Science Programming Contest', 1, 50000, 50, 'Computer Science Programming Contest (CSPC) adalah lomba pemrograman yang diselanggarakan di DINAMIK. Lomba ini menekankan kemampuan analisis berpikir dalam pemecahan masalah yang diberikan dalam bentuk soal yang kemudian diinterpretasikan dalam bentuk kode program sehingga menjadi program yang efektif. Lomba ini bertemakan “Mahakarya Teknologi Bangsa Untuk Pendidikan Indonesia”. Sasaran peserta untuk lomba ini yaitu siswa - siswi SMA/SMK sederajat se-Nasional.'),
(6, 'LCA', 'Lomba Cipta Animasi', 1, 100000, 50, 'Lomba Cipta Animasi (LCA) adalah salah satu cabang lomba di DINAMIK yang kembali muncul setelah absen selama 2 tahun di perhelatan DINAMIK. Lomba ini mengkompetisikan kemampuan peserta di bidang multimedia dalam pembuatan film pendek animasi 2D bertemakan “Mahakarya Teknologi Bangsa Untuk Pendidikan Indonesia”. Peserta dibebaskan menggunakan perangkat lunak apapun dalam proses pembuatannya. Lomba ini ditujukan untuk siswa-siswi SMA/SMK sederajat se-Nasional.'),
(7, 'RLF', 'Robot Line Follower', 1, 110000, 50, 'Robot Line Follower merupakan sebuah ajang kompetisi balapan robot dimana robot tersebut  bergerak mengikuti garis secara otomatis, dengan track yang ditentukan. Dengan ketentuan robot dibuat oleh masing-masing peserta. Tema yang diusungkan adalah “Mahakarya Teknologi Bangsa Untuk Pendidikan Indonesia”. Sasaran kompetisi line follower ini adalah seluruh siswa-siswi tingkat SMA/SMK/MA/Sederajat se-Nasional.'),
(8, 'KJ', 'Kompetisi Jaringan', 1, 50000, 50, 'Kompetisi Jaringan merupakan kompetisi untuk menguji kemampuan peserta dalam menghadapi kasus keamanan sistem komputer dan jaringan yang telah disiapkan. Sistem dirancang untuk mempunyai celah atau informasi tertentu yang berakibat terhadap dimungkinkannya peretasan pada sistem tersebut. Terdapat dua bidang yang di kompetisikan dalam acara ini yaitu bidang keamanan jaringan dan desain jaringan. Kompetisi Jaringan mengusung tema “sub teknologi data”. Sasaran peserta lomba ini yaitu siswa/i SMK se-Jawa Barat.'),
(9, 'TALKSHOW', 'Talkshow Inspiratif', 1, 50000, 50, 'Talkshow Inspiratif merupakan salah satu dari rangkaian acara DINAMIK 12. Acara ini tentunya menyuguhkan ilmu yang bermanfaat. Dengan bertemakan “Menyelaraskan Teknologi dan Pendidikan Yang Sesuai Dengan Syariat Islam”, pemateri akan memandu peserta untuk mengupas tuntas tema tersebut. Selanjutnya, peserta akan berdiskusi dalam sebuah talkshow inspiratif bersama beberapa orang pemateri. Acara ini terbuka untuk umum.'),
(10, 'SEMNAS', 'Seminar Nasional', 1, 50000, 50, 'Seminar Nasional (Semnas) merupakan suatu kegiatan pertemuan skala nasional untuk membahas, menyikapi suatu topik bahasan dan menampilkan satu atau beberapa pembicara. Seminar nasional ini memiliki tema “Penerapan teknologi ‘Big data’ Dalam Transformasi Pendidikan dan Pembelajaran”. Peserta seminar yang hadir harus berpartisipasi secara aktif dan diharapakan terjadi interaksi dua arah antara pembicara dan peserta seminar.'),
(11, 'FELOSE', 'Festival Teknologi dan Seni', 1, 0, 50, 'Festival Teknologi dan Seni atau disebut juga FELOSE merupakan salah satu dari rangkaian acara di DINAMIK 12 yang bertajuk unjuk karya mahasiswa/i ilmu komputer dan pendidikan ilmu computer, mahasiswa/i seJawa Barat dan kerjasama IT dengan berbagai komunitas di Bandung. FELOSE ini juga merupakan bentuk perkembangan dari pameran karya pada dinamik 11 maupun dinamik 10 yang didalamnya dibagi menjadi 2 kategori yaitu Seni murni seperti digital art, kriya, komic, ilustrasi dsb dan Teknologi seperti robot, aplikasi, game dsb. Tema yang diusungkan adalah “Mahakarya Teknologi dan Seni Indonesia”. Sasaran dari kegiatan ini adalah Mahasiswa/i se-Nasional.'),
(12, 'DONOR', 'Donor Darah', 0, 0, 50, 'Donor Darah DINAMIK merupakan kegiatan sosial tahunan yang dilaksanakan bertepatan dengan DINAMIK. Pada tahun ini Donor Darah DINAMIK mengusung tema “Blood is a gift of life”. Donor Darah memiliki banyak manfaat antara lain dapat mengetahui golongan darah, mengurangi zat besi yang berlebih dalam tubuh, membakar kalori dalam tubuh, dapat menurunkan resiko penyakit serangan jantung bagi pendonor rutin,  mencegah penuaan dini karena sel-sel darah merah diperbaharui secara berkala dan mencegah resiko kanker. Sasaran dari acara ini yaitu mahasiswa dan masyarakat umum di wilayah Universitas Pendidikan Indonesia dan sekitarnya.'),
(13, 'WORKSHOP', 'Workshop Digitalisasi Guru', 1, 50000, 50, 'Workshop Digitalisasi Guru merupakan suatu acara dimana beberapa guru berkumpul untuk memecahkan masalah dan mencari solusinya. Acara ini bertujuan untuk mengajarkan guru dalam menggunakan teknologi pada level 0-2. Acara ini mengusung tema “Digitalisasi Pembelajaran”. Sasaran Workshop Digitalisasi Guru adalah semua guru se-Nasional.'),
(14, 'DSTAR', 'Dinamik Star', 1, 50000, 50, 'DINAMIK Star adalah suatu acara pencarian bakat yang diadakan dalam perayaan DINAMIK (Dies Natalis Mahasiswa Ilmu Komputer) Universitas Pendidikan Indonesia. Pada tahun ini DINAMIK Star mengusung tema “Mahakarya Talenta dalam Balutan Teknologi”. Acara ini diadakan untuk semua kalangan dari TK, SD, SMP, SMA atau sederajatnya maupun kalangan mahasiswa se-Bandung Raya. Acara ini pun tidak membatasi semua bakat yang dimiliki oleh peserta. Dinamik Star ini ditujukan untuk masyarakat umum khususnya mahasiswa/i UPI.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_judge`
--

DROP TABLE IF EXISTS `tb_judge`;
CREATE TABLE IF NOT EXISTS `tb_judge` (
  `judge_id` int(11) NOT NULL AUTO_INCREMENT,
  `judge_name` varchar(255) NOT NULL,
  `judge_affiliation` varchar(255) NOT NULL,
  `judge_contact` varchar(20) NOT NULL,
  `judge_address` text NOT NULL,
  `judge_cv` varchar(255) NOT NULL,
  `judge_event_id` int(11) NOT NULL,
  `judge_account_id` int(11) NOT NULL,
  PRIMARY KEY (`judge_id`),
  KEY `judge_event_id` (`judge_event_id`),
  KEY `tb_judge_ibfk_2` (`judge_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_judge`
--

TRUNCATE TABLE `tb_judge`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_message`
--

DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE IF NOT EXISTS `tb_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_name` varchar(75) NOT NULL,
  `message_email` varchar(255) NOT NULL,
  `message_content` text NOT NULL,
  `message_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_message`
--

TRUNCATE TABLE `tb_message`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE IF NOT EXISTS `tb_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_category` varchar(20) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_headline` varchar(255) NOT NULL,
  `news_content` text NOT NULL,
  `news_event_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`),
  KEY `news_event_id` (`news_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_news`
--

TRUNCATE TABLE `tb_news`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_payment`
--

DROP TABLE IF EXISTS `tb_payment`;
CREATE TABLE IF NOT EXISTS `tb_payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_amount` double NOT NULL,
  `payment_document` varchar(255) DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT '0',
  `payment_unique_code` varchar(255) NOT NULL,
  `payment_description` text,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_payment`
--

TRUNCATE TABLE `tb_payment`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_public`
--

DROP TABLE IF EXISTS `tb_public`;
CREATE TABLE IF NOT EXISTS `tb_public` (
  `public_id` int(11) NOT NULL AUTO_INCREMENT,
  `public_name` varchar(255) NOT NULL,
  `public_gender` varchar(2) NOT NULL,
  `public_address` text NOT NULL,
  `public_image` text NOT NULL,
  `public_contact` varchar(20) NOT NULL,
  `public_city_id` int(11) NOT NULL,
  `public_account_id` int(11) NOT NULL,
  PRIMARY KEY (`public_id`),
  KEY `school_city_id` (`public_city_id`),
  KEY `tb_school_ibfk_2` (`public_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_public`
--

TRUNCATE TABLE `tb_public`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_pubteam`
--

DROP TABLE IF EXISTS `tb_pubteam`;
CREATE TABLE IF NOT EXISTS `tb_pubteam` (
  `pubteam_id` int(11) NOT NULL AUTO_INCREMENT,
  `pubteam_name` varchar(255) NOT NULL,
  `pubteam_email` varchar(255) NOT NULL,
  `pubteam_contact` varchar(255) NOT NULL,
  `pubteam_public_id` int(11) NOT NULL,
  `pubteam_event_id` int(11) NOT NULL,
  `pubteam_payment_id` int(11) NOT NULL,
  PRIMARY KEY (`pubteam_id`),
  KEY `pubteam_public_id` (`pubteam_public_id`),
  KEY `pubteam_public_id_2` (`pubteam_public_id`,`pubteam_event_id`,`pubteam_payment_id`),
  KEY `pubteam_public_id_3` (`pubteam_public_id`,`pubteam_event_id`,`pubteam_payment_id`),
  KEY `pubteam_payment_id` (`pubteam_payment_id`),
  KEY `pubteam_event_id` (`pubteam_event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_pubteam`
--

TRUNCATE TABLE `tb_pubteam`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_school`
--

DROP TABLE IF EXISTS `tb_school`;
CREATE TABLE IF NOT EXISTS `tb_school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) NOT NULL,
  `school_grade` varchar(15) NOT NULL,
  `school_address` text NOT NULL,
  `school_image` text,
  `school_contact` varchar(20) NOT NULL,
  `school_city_id` int(11) NOT NULL,
  `school_account_id` int(11) NOT NULL,
  PRIMARY KEY (`school_id`),
  KEY `school_city_id` (`school_city_id`),
  KEY `tb_school_ibfk_2` (`school_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_school`
--

TRUNCATE TABLE `tb_school`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_schparticipant`
--

DROP TABLE IF EXISTS `tb_schparticipant`;
CREATE TABLE IF NOT EXISTS `tb_schparticipant` (
  `schparticipant_id` int(11) NOT NULL AUTO_INCREMENT,
  `schparticipant_name` varchar(255) NOT NULL,
  `schparticipant_nisn` varchar(20) NOT NULL,
  `schparticipant_birth` date DEFAULT NULL,
  `schparticipant_gender` char(1) DEFAULT NULL,
  `schparticipant_contact` varchar(20) DEFAULT NULL,
  `schparticipant_address` text,
  `schparticipant_student_id` text,
  `schparticipant_schteam_id` int(11) NOT NULL,
  PRIMARY KEY (`schparticipant_id`),
  KEY `schparticipant_schteam_id` (`schparticipant_schteam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_schparticipant`
--

TRUNCATE TABLE `tb_schparticipant`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_schteam`
--

DROP TABLE IF EXISTS `tb_schteam`;
CREATE TABLE IF NOT EXISTS `tb_schteam` (
  `schteam_id` int(11) NOT NULL AUTO_INCREMENT,
  `schteam_name` varchar(255) NOT NULL,
  `schteam_coach_name` varchar(255) DEFAULT NULL,
  `schteam_coach_contact` varchar(20) DEFAULT NULL,
  `schteam_school_id` int(11) NOT NULL,
  `schteam_event_id` int(11) NOT NULL,
  `schteam_payment_id` int(11) NOT NULL,
  `schteam_account_id` int(11) NOT NULL,
  PRIMARY KEY (`schteam_id`),
  KEY `schteam_school_id` (`schteam_school_id`),
  KEY `schteam_school_id_2` (`schteam_school_id`,`schteam_event_id`,`schteam_payment_id`),
  KEY `schteam_school_id_3` (`schteam_school_id`,`schteam_event_id`,`schteam_payment_id`),
  KEY `schteam_payment_id` (`schteam_payment_id`),
  KEY `schteam_event_id` (`schteam_event_id`),
  KEY `tb_tscheam_ibfk_4` (`schteam_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_schteam`
--

TRUNCATE TABLE `tb_schteam`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_score`
--

DROP TABLE IF EXISTS `tb_score`;
CREATE TABLE IF NOT EXISTS `tb_score` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `score_score` int(11) NOT NULL,
  `score_judge_id` int(11) NOT NULL,
  `score_event_id` int(11) NOT NULL,
  `score_schteam_id` int(11) NOT NULL,
  PRIMARY KEY (`score_id`),
  KEY `score_judge_id` (`score_judge_id`),
  KEY `score_event_id` (`score_event_id`),
  KEY `score_schteam_id` (`score_schteam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_score`
--

TRUNCATE TABLE `tb_score`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_sponsor`
--

DROP TABLE IF EXISTS `tb_sponsor`;
CREATE TABLE IF NOT EXISTS `tb_sponsor` (
  `sponsor_id` int(11) NOT NULL AUTO_INCREMENT,
  `sponsor_name` varchar(255) NOT NULL,
  `sponsor_address` text NOT NULL,
  `sponsor_contact` varchar(20) NOT NULL,
  `sponsor_image` varchar(255) NOT NULL,
  `sponsor_type` varchar(20) NOT NULL,
  `sponsor_link` varchar(255) NOT NULL,
  PRIMARY KEY (`sponsor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_sponsor`
--

TRUNCATE TABLE `tb_sponsor`;
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_cor_acc`
--
DROP VIEW IF EXISTS `v_cor_acc`;
CREATE TABLE IF NOT EXISTS `v_cor_acc` (
`acc_id` int(11)
,`cor_id` int(11)
,`cat_name` varchar(255)
,`cor_username` varchar(255)
,`cor_name` varchar(255)
,`cor_email` varchar(255)
,`cor_category` varchar(10)
,`cor_image` text
,`cor_event` int(11)
,`eve_event_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pubteam_dash`
--
DROP VIEW IF EXISTS `v_pubteam_dash`;
CREATE TABLE IF NOT EXISTS `v_pubteam_dash` (
`pbt_id` int(11)
,`pbt_name` varchar(255)
,`pbt_email` varchar(255)
,`pbt_contact` varchar(255)
,`eve_name` varchar(255)
,`eve_price` double
,`pay_status` tinyint(1)
,`pay_unique_code` varchar(255)
,`pub_id` int(11)
,`eve_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_schteam_dash`
--
DROP VIEW IF EXISTS `v_schteam_dash`;
CREATE TABLE IF NOT EXISTS `v_schteam_dash` (
`sct_id` int(11)
,`sct_name` varchar(255)
,`eve_name` varchar(255)
,`eve_price` double
,`sct_coach_name` varchar(255)
,`pay_status` tinyint(1)
,`sch_id` int(11)
,`acc_id` int(11)
,`pay_unique_code` varchar(255)
,`eve_id` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `v_cor_acc`
--
DROP TABLE IF EXISTS `v_cor_acc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cor_acc`  AS  select `acc`.`account_id` AS `acc_id`,`cor`.`coordinator_id` AS `cor_id`,`cat`.`category_name` AS `cat_name`,`acc`.`account_username` AS `cor_username`,`cor`.`coordinator_name` AS `cor_name`,`acc`.`account_email` AS `cor_email`,`acc`.`account_category_id` AS `cor_category`,`acc`.`account_image` AS `cor_image`,`cor`.`coordinator_event_id` AS `cor_event`,`eve`.`event_name` AS `eve_event_name` from (((`tb_account` `acc` join `tb_coordinator` `cor`) join `tb_category` `cat`) join `tb_event` `eve` on(((`acc`.`account_id` = `cor`.`coordinator_account_id`) and (`eve`.`event_id` = `cor`.`coordinator_event_id`) and (`cat`.`category_id` = `acc`.`account_category_id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_pubteam_dash`
--
DROP TABLE IF EXISTS `v_pubteam_dash`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pubteam_dash`  AS  select `pbt`.`pubteam_id` AS `pbt_id`,`pbt`.`pubteam_name` AS `pbt_name`,`pbt`.`pubteam_email` AS `pbt_email`,`pbt`.`pubteam_contact` AS `pbt_contact`,`eve`.`event_name` AS `eve_name`,`eve`.`event_price` AS `eve_price`,`pay`.`payment_status` AS `pay_status`,`pay`.`payment_unique_code` AS `pay_unique_code`,`pub`.`public_id` AS `pub_id`,`eve`.`event_id` AS `eve_id` from (((`tb_pubteam` `pbt` join `tb_public` `pub`) join `tb_event` `eve`) join `tb_payment` `pay` on(((`pbt`.`pubteam_public_id` = `pub`.`public_id`) and (`pbt`.`pubteam_event_id` = `eve`.`event_id`) and (`pbt`.`pubteam_payment_id` = `pay`.`payment_id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_schteam_dash`
--
DROP TABLE IF EXISTS `v_schteam_dash`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_schteam_dash`  AS  select `sct`.`schteam_id` AS `sct_id`,`sct`.`schteam_name` AS `sct_name`,`eve`.`event_name` AS `eve_name`,`eve`.`event_price` AS `eve_price`,`sct`.`schteam_coach_name` AS `sct_coach_name`,`pay`.`payment_status` AS `pay_status`,`sch`.`school_id` AS `sch_id`,`acc`.`account_id` AS `acc_id`,`pay`.`payment_unique_code` AS `pay_unique_code`,`eve`.`event_id` AS `eve_id` from ((((`tb_schteam` `sct` join `tb_school` `sch`) join `tb_event` `eve`) join `tb_payment` `pay`) join `tb_account` `acc` on(((`sct`.`schteam_school_id` = `sch`.`school_id`) and (`sct`.`schteam_event_id` = `eve`.`event_id`) and (`sct`.`schteam_payment_id` = `pay`.`payment_id`) and (`sct`.`schteam_account_id` = `acc`.`account_id`)))) ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_account`
--
ALTER TABLE `tb_account`
  ADD CONSTRAINT `tb_account_ibfk_1` FOREIGN KEY (`account_category_id`) REFERENCES `tb_category` (`category_id`);

--
-- Constraints for table `tb_calendar`
--
ALTER TABLE `tb_calendar`
  ADD CONSTRAINT `tb_calendar_ibfk_1` FOREIGN KEY (`calendar_event_id`) REFERENCES `tb_event` (`event_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_coordinator`
--
ALTER TABLE `tb_coordinator`
  ADD CONSTRAINT `tb_coordinator_ibfk_1` FOREIGN KEY (`coordinator_event_id`) REFERENCES `tb_event` (`event_id`),
  ADD CONSTRAINT `tb_coordinator_ibfk_2` FOREIGN KEY (`coordinator_account_id`) REFERENCES `tb_account` (`account_id`);

--
-- Constraints for table `tb_judge`
--
ALTER TABLE `tb_judge`
  ADD CONSTRAINT `tb_judge_ibfk_1` FOREIGN KEY (`judge_event_id`) REFERENCES `tb_event` (`event_id`),
  ADD CONSTRAINT `tb_judge_ibfk_2` FOREIGN KEY (`judge_account_id`) REFERENCES `tb_account` (`account_id`);

--
-- Constraints for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD CONSTRAINT `tb_news_ibfk_1` FOREIGN KEY (`news_event_id`) REFERENCES `tb_event` (`event_id`);

--
-- Constraints for table `tb_public`
--
ALTER TABLE `tb_public`
  ADD CONSTRAINT `tb_public_ibfk_1` FOREIGN KEY (`public_city_id`) REFERENCES `tb_city` (`city_id`),
  ADD CONSTRAINT `tb_public_ibfk_2` FOREIGN KEY (`public_account_id`) REFERENCES `tb_account` (`account_id`);

--
-- Constraints for table `tb_pubteam`
--
ALTER TABLE `tb_pubteam`
  ADD CONSTRAINT `tb_pubteam_ibfk_1` FOREIGN KEY (`pubteam_public_id`) REFERENCES `tb_public` (`public_id`),
  ADD CONSTRAINT `tb_pubteam_ibfk_2` FOREIGN KEY (`pubteam_payment_id`) REFERENCES `tb_payment` (`payment_id`),
  ADD CONSTRAINT `tb_pubteam_ibfk_3` FOREIGN KEY (`pubteam_event_id`) REFERENCES `tb_event` (`event_id`);

--
-- Constraints for table `tb_school`
--
ALTER TABLE `tb_school`
  ADD CONSTRAINT `tb_school_ibfk_1` FOREIGN KEY (`school_city_id`) REFERENCES `tb_city` (`city_id`),
  ADD CONSTRAINT `tb_school_ibfk_2` FOREIGN KEY (`school_account_id`) REFERENCES `tb_account` (`account_id`);

--
-- Constraints for table `tb_schparticipant`
--
ALTER TABLE `tb_schparticipant`
  ADD CONSTRAINT `tb_schparticipant_ibfk_1` FOREIGN KEY (`schparticipant_schteam_id`) REFERENCES `tb_schteam` (`schteam_id`);

--
-- Constraints for table `tb_schteam`
--
ALTER TABLE `tb_schteam`
  ADD CONSTRAINT `tb_schteam_ibfk_1` FOREIGN KEY (`schteam_school_id`) REFERENCES `tb_school` (`school_id`),
  ADD CONSTRAINT `tb_schteam_ibfk_2` FOREIGN KEY (`schteam_payment_id`) REFERENCES `tb_payment` (`payment_id`),
  ADD CONSTRAINT `tb_schteam_ibfk_3` FOREIGN KEY (`schteam_event_id`) REFERENCES `tb_event` (`event_id`),
  ADD CONSTRAINT `tb_schteam_ibfk_4` FOREIGN KEY (`schteam_account_id`) REFERENCES `tb_account` (`account_id`);

--
-- Constraints for table `tb_score`
--
ALTER TABLE `tb_score`
  ADD CONSTRAINT `tb_score_ibfk_1` FOREIGN KEY (`score_judge_id`) REFERENCES `tb_judge` (`judge_id`),
  ADD CONSTRAINT `tb_score_ibfk_2` FOREIGN KEY (`score_event_id`) REFERENCES `tb_event` (`event_id`),
  ADD CONSTRAINT `tb_score_ibfk_3` FOREIGN KEY (`score_schteam_id`) REFERENCES `tb_schteam` (`schteam_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
