-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2016 at 03:57 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_dinamik12`
--
DROP DATABASE IF EXISTS `db_dinamik12`;
CREATE DATABASE `db_dinamik12` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_dinamik12`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_account`
--

CREATE TABLE IF NOT EXISTS `tb_account` (
  `account_id` varchar(10) NOT NULL DEFAULT '',
  `account_email` varchar(255) NOT NULL,
  `account_username` varchar(16) NOT NULL,
  `account_password` varchar(255) NOT NULL,
  `account_log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account_category` varchar(10) NOT NULL,
  PRIMARY KEY (`account_id`),
  KEY `account_category` (`account_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bazaar`
--

CREATE TABLE IF NOT EXISTS `tb_bazaar` (
  `bazaar_id` varchar(10) NOT NULL DEFAULT '',
  `bazaar_name` varchar(255) NOT NULL,
  `bazaar_type` varchar(20) NOT NULL,
  `bazaar_description` text NOT NULL,
  `bazaar_address` text NOT NULL,
  `bazaar_contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_calendar`
--

CREATE TABLE IF NOT EXISTS `tb_calendar` (
  `calendar_id` int(11) NOT NULL,
  `calendar_event_id` varchar(10) NOT NULL,
  `calendar_start_date` date NOT NULL,
  `calendar_end_date` date NOT NULL,
  `calendar_start_time` time NOT NULL,
  `calendar_end_time` time NOT NULL,
  `calendar_event_name` varchar(255) NOT NULL,
  `calendar_event_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabel daftar acara buat kalender';

-- --------------------------------------------------------

--
-- Table structure for table `tb_city`
--

CREATE TABLE IF NOT EXISTS `tb_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_city`
--

INSERT INTO `tb_city` (`city_id`, `city_name`) VALUES
(1, 'Kabupaten Aceh Barat'),
(2, 'Kabupaten Aceh Barat Daya'),
(3, 'Kabupaten Aceh Besar'),
(4, 'Kabupaten Aceh Jaya'),
(5, 'Kabupaten Aceh Selatan'),
(6, 'Kabupaten Aceh Singkil'),
(7, 'Kabupaten Aceh Tamiang'),
(8, 'Kabupaten Aceh Tengah'),
(9, 'Kabupaten Aceh Tenggara'),
(10, 'Kabupaten Aceh Timur'),
(11, 'Kabupaten Aceh Utara'),
(12, 'Kabupaten Bener Meriah'),
(13, 'Kabupaten Bireuen'),
(14, 'Kabupaten Gayo Luwes'),
(15, 'Kabupaten Nagan Raya'),
(16, 'Kabupaten Pidie'),
(17, 'Kabupaten Pidie Jaya'),
(18, 'Kabupaten Simeulue'),
(19, 'Kota Banda Aceh'),
(20, 'Kota Langsa'),
(21, 'Kota Lhokseumawe'),
(22, 'Kota Sabang'),
(23, 'Kota Subulussalam'),
(24, 'Kabupaten Asahan'),
(25, 'Kabupaten Batubara'),
(26, 'Kabupaten Dairi'),
(27, 'Kabupaten Deli Serdang'),
(28, 'Kabupaten Humbang Hasundutan'),
(29, 'Kabupaten Karo'),
(30, 'Kabupaten Labuhan Batu'),
(31, 'Kabupaten Labuhanbatu Selatan'),
(32, 'Kabupaten Labuhanbatu Utara'),
(33, 'Kabupaten Langkat'),
(34, 'Kabupaten Mandailing Natal'),
(35, 'Kabupaten Nias'),
(36, 'Kabupaten Nias Barat'),
(37, 'Kabupaten Nias Selatan'),
(38, 'Kabupaten Nias Utara'),
(39, 'Kabupaten Padang Lawas'),
(40, 'Kabupaten Padang Lawas Utara'),
(41, 'Kabupaten Pakpak Barat'),
(42, 'Kabupaten Samosir'),
(43, 'Kabupaten Serdang Bedagai'),
(44, 'Kabupaten Simalungun'),
(45, 'Kabupaten Tapanuli Selatan'),
(46, 'Kabupaten Tapanuli Tengah'),
(47, 'Kabupaten Tapanuli Utara'),
(48, 'Kabupaten Toba Samosir'),
(49, 'Kota Binjai'),
(50, 'Kota Gunung Sitoli'),
(51, 'Kota Medan'),
(52, 'Kota Padangsidempuan'),
(53, 'Kota Pematang Siantar'),
(54, 'Kota Sibolga'),
(55, 'Kota Tanjung Balai'),
(56, 'Kota Tebing Tinggi'),
(57, 'Kabupaten Agam'),
(58, 'Kabupaten Dharmas Raya'),
(59, 'Kabupaten Kepulauan Mentawai'),
(60, 'Kabupaten Lima Puluh Kota'),
(61, 'Kabupaten Padang Pariaman'),
(62, 'Kabupaten Pasaman'),
(63, 'Kabupaten Pasaman Barat'),
(64, 'Kabupaten Pesisir Selatan'),
(65, 'Kabupaten Sijunjung'),
(66, 'Kabupaten Solok'),
(67, 'Kabupaten Solok Selatan'),
(68, 'Kabupaten Tanah Datar'),
(69, 'Kota Bukittinggi'),
(70, 'Kota Padang'),
(71, 'Kota Padang Panjang'),
(72, 'Kota Pariaman'),
(73, 'Kota Payakumbuh'),
(74, 'Kota Sawah Lunto'),
(75, 'Kota Solok'),
(76, 'Kabupaten Bengkalis'),
(77, 'Kabupaten Indragiri Hilir'),
(78, 'Kabupaten Indragiri Hulu'),
(79, 'Kabupaten Kampar'),
(80, 'Kabupaten Kuantan Singingi'),
(81, 'Kabupaten Meranti'),
(82, 'Kabupaten Pelalawan'),
(83, 'Kabupaten Rokan Hilir'),
(84, 'Kabupaten Rokan Hulu'),
(85, 'Kabupaten Siak'),
(86, 'Kota Dumai'),
(87, 'Kota Pekanbaru'),
(88, 'Kabupaten Bintan'),
(89, 'Kabupaten Karimun'),
(90, 'Kabupaten Kepulauan Anambas'),
(91, 'Kabupaten Lingga'),
(92, 'Kabupaten Natuna'),
(93, 'Kota Batam'),
(94, 'Kota Tanjung Pinang'),
(95, 'Kabupaten Bangka'),
(96, 'Kabupaten Bangka Barat'),
(97, 'Kabupaten Bangka Selatan'),
(98, 'Kabupaten Bangka Tengah'),
(99, 'Kabupaten Belitung'),
(100, 'Kabupaten Belitung Timur'),
(101, 'Kota Pangkal Pinang'),
(102, 'Kabupaten Kerinci'),
(103, 'Kabupaten Merangin'),
(104, 'Kabupaten Sarolangun'),
(105, 'Kabupaten Batang Hari'),
(106, 'Kabupaten Muaro Jambi'),
(107, 'Kabupaten Tanjung Jabung Timur'),
(108, 'Kabupaten Tanjung Jabung Barat'),
(109, 'Kabupaten Tebo'),
(110, 'Kabupaten Bungo'),
(111, 'Kota Jambi'),
(112, 'Kota Sungai Penuh'),
(113, 'Kabupaten Bengkulu Selatan'),
(114, 'Kabupaten Bengkulu Tengah'),
(115, 'Kabupaten Bengkulu Utara'),
(116, 'Kabupaten Kaur'),
(117, 'Kabupaten Kepahiang'),
(118, 'Kabupaten Lebong'),
(119, 'Kabupaten Mukomuko'),
(120, 'Kabupaten Rejang Lebong'),
(121, 'Kabupaten Seluma'),
(122, 'Kota Bengkulu'),
(123, 'Kabupaten Banyuasin'),
(124, 'Kabupaten Empat Lawang'),
(125, 'Kabupaten Lahat'),
(126, 'Kabupaten Muara Enim'),
(127, 'Kabupaten Musi Banyu Asin'),
(128, 'Kabupaten Musi Rawas'),
(129, 'Kabupaten Ogan Ilir'),
(130, 'Kabupaten Ogan Komering Ilir'),
(131, 'Kabupaten Ogan Komering Ulu'),
(132, 'Kabupaten Ogan Komering Ulu Se'),
(133, 'Kabupaten Ogan Komering Ulu Ti'),
(134, 'Kota Lubuklinggau'),
(135, 'Kota Pagar Alam'),
(136, 'Kota Palembang'),
(137, 'Kota Prabumulih'),
(138, 'Kabupaten Lampung Barat'),
(139, 'Kabupaten Lampung Selatan'),
(140, 'Kabupaten Lampung Tengah'),
(141, 'Kabupaten Lampung Timur'),
(142, 'Kabupaten Lampung Utara'),
(143, 'Kabupaten Mesuji'),
(144, 'Kabupaten Pesawaran'),
(145, 'Kabupaten Pringsewu'),
(146, 'Kabupaten Tanggamus'),
(147, 'Kabupaten Tulang Bawang'),
(148, 'Kabupaten Tulang Bawang Barat'),
(149, 'Kabupaten Way Kanan'),
(150, 'Kota Bandar Lampung'),
(151, 'Kota Metro'),
(152, 'Kabupaten Lebak'),
(153, 'Kabupaten Pandeglang'),
(154, 'Kabupaten Serang'),
(155, 'Kabupaten Tangerang'),
(156, 'Kota Cilegon'),
(157, 'Kota Serang'),
(158, 'Kota Tangerang'),
(159, 'Kota Tangerang Selatan'),
(160, 'Kabupaten Adm. Kepulauan Serib'),
(161, 'Kota Jakarta Barat'),
(162, 'Kota Jakarta Pusat'),
(163, 'Kota Jakarta Selatan'),
(164, 'Kota Jakarta Timur'),
(165, 'Kota Jakarta Utara'),
(166, 'Kabupaten Bandung'),
(167, 'Kabupaten Bandung Barat'),
(168, 'Kabupaten Bekasi'),
(169, 'Kabupaten Bogor'),
(170, 'Kabupaten Ciamis'),
(171, 'Kabupaten Cianjur'),
(172, 'Kabupaten Cirebon'),
(173, 'Kabupaten Garut'),
(174, 'Kabupaten Indramayu'),
(175, 'Kabupaten Karawang'),
(176, 'Kabupaten Kuningan'),
(177, 'Kabupaten Majalengka'),
(178, 'Kabupaten Purwakarta'),
(179, 'Kabupaten Subang'),
(180, 'Kabupaten Sukabumi'),
(181, 'Kabupaten Sumedang'),
(182, 'Kabupaten Tasikmalaya'),
(183, 'Kota Bandung'),
(184, 'Kota Banjar'),
(185, 'Kota Bekasi'),
(186, 'Kota Bogor'),
(187, 'Kota Cimahi'),
(188, 'Kota Cirebon'),
(189, 'Kota Depok'),
(190, 'Kota Sukabumi'),
(191, 'Kota Tasikmalaya'),
(192, 'Kabupaten Banjarnegara'),
(193, 'Kabupaten Banyumas'),
(194, 'Kabupaten Batang'),
(195, 'Kabupaten Blora'),
(196, 'Kabupaten Boyolali'),
(197, 'Kabupaten Brebes'),
(198, 'Kabupaten Cilacap'),
(199, 'Kabupaten Demak'),
(200, 'Kabupaten Grobogan'),
(201, 'Kabupaten Jepara'),
(202, 'Kabupaten Karanganyar'),
(203, 'Kabupaten Kebumen'),
(204, 'Kabupaten Kendal'),
(205, 'Kabupaten Klaten'),
(206, 'Kabupaten Kota Tegal'),
(207, 'Kabupaten Kudus'),
(208, 'Kabupaten Magelang'),
(209, 'Kabupaten Pati'),
(210, 'Kabupaten Pekalongan'),
(211, 'Kabupaten Pemalang'),
(212, 'Kabupaten Purbalingga'),
(213, 'Kabupaten Purworejo'),
(214, 'Kabupaten Rembang'),
(215, 'Kabupaten Semarang'),
(216, 'Kabupaten Sragen'),
(217, 'Kabupaten Sukoharjo'),
(218, 'Kabupaten Temanggung'),
(219, 'Kabupaten Wonogiri'),
(220, 'Kabupaten Wonosobo'),
(221, 'Kota Magelang'),
(222, 'Kota Pekalongan'),
(223, 'Kota Salatiga'),
(224, 'Kota Semarang'),
(225, 'Kota Surakarta'),
(226, 'Kota Tegal'),
(227, 'Kabupaten Bantul'),
(228, 'Kabupaten Gunung Kidul'),
(229, 'Kabupaten Kulon Progo'),
(230, 'Kabupaten Sleman'),
(231, 'Kota Yogyakarta'),
(232, 'Kabupaten Bangkalan'),
(233, 'Kabupaten Banyuwangi'),
(234, 'Kabupaten Blitar'),
(235, 'Kabupaten Bojonegoro'),
(236, 'Kabupaten Bondowoso'),
(237, 'Kabupaten Gresik'),
(238, 'Kabupaten Jember'),
(239, 'Kabupaten Jombang'),
(240, 'Kabupaten Kediri'),
(241, 'Kabupaten Lamongan'),
(242, 'Kabupaten Lumajang'),
(243, 'Kabupaten Madiun'),
(244, 'Kabupaten Magetan'),
(245, 'Kabupaten Malang'),
(246, 'Kabupaten Mojokerto'),
(247, 'Kabupaten Nganjuk'),
(248, 'Kabupaten Ngawi'),
(249, 'Kabupaten Pacitan'),
(250, 'Kabupaten Pamekasan'),
(251, 'Kabupaten Pasuruan'),
(252, 'Kabupaten Ponorogo'),
(253, 'Kabupaten Probolinggo'),
(254, 'Kabupaten Sampang'),
(255, 'Kabupaten Sidoarjo'),
(256, 'Kabupaten Situbondo'),
(257, 'Kabupaten Sumenep'),
(258, 'Kabupaten Trenggalek'),
(259, 'Kabupaten Tuban'),
(260, 'Kabupaten Tulungagung'),
(261, 'Kota Batu'),
(262, 'Kota Blitar'),
(263, 'Kota Kediri'),
(264, 'Kota Madiun'),
(265, 'Kota Malang'),
(266, 'Kota Mojokerto'),
(267, 'Kota Pasuruan'),
(268, 'Kota Probolinggo'),
(269, 'Kota Surabaya'),
(270, 'Kabupaten Badung'),
(271, 'Kabupaten Bangli'),
(272, 'Kabupaten Buleleng'),
(273, 'Kabupaten Gianyar'),
(274, 'Kabupaten Jembrana'),
(275, 'Kabupaten Karang Asem'),
(276, 'Kabupaten Klungkung'),
(277, 'Kabupaten Tabanan'),
(278, 'Kota Denpasar'),
(279, 'Kabupaten Bima'),
(280, 'Kabupaten Dompu'),
(281, 'Kabupaten Lombok Barat'),
(282, 'Kabupaten Lombok Tengah'),
(283, 'Kabupaten Lombok Timur'),
(284, 'Kabupaten Lombok Utara'),
(285, 'Kabupaten Sumbawa'),
(286, 'Kabupaten Sumbawa Barat'),
(287, 'Kota Bima'),
(288, 'Kota Mataram'),
(289, 'Kabupaten Alor'),
(290, 'Kabupaten Belu'),
(291, 'Kabupaten Ende'),
(292, 'Kabupaten Flores Timur'),
(293, 'Kabupaten Kupang'),
(294, 'Kabupaten Lembata'),
(295, 'Kabupaten Manggarai'),
(296, 'Kabupaten Manggarai Barat'),
(297, 'Kabupaten Manggarai Timur'),
(298, 'Kabupaten Nagekeo'),
(299, 'Kabupaten Ngada'),
(300, 'Kabupaten Rote Ndao'),
(301, 'Kabupaten Sabu Raijua'),
(302, 'Kabupaten Sikka'),
(303, 'Kabupaten Sumba Barat'),
(304, 'Kabupaten Sumba Barat Daya'),
(305, 'Kabupaten Sumba Tengah'),
(306, 'Kabupaten Sumba Timur'),
(307, 'Kabupaten Timor Tengah Selatan'),
(308, 'Kabupaten Timor Tengah Utara'),
(309, 'Kota Kupang'),
(310, 'Kabupaten Bengkayang'),
(311, 'Kabupaten Kapuas Hulu'),
(312, 'Kabupaten Kayong Utara'),
(313, 'Kabupaten Ketapang'),
(314, 'Kabupaten Kubu Raya'),
(315, 'Kabupaten Landak'),
(316, 'Kabupaten Melawi'),
(317, 'Kabupaten Pontianak'),
(318, 'Kabupaten Sambas'),
(319, 'Kabupaten Sanggau'),
(320, 'Kabupaten Sekadau'),
(321, 'Kabupaten Sintang'),
(322, 'Kota Pontianak'),
(323, 'Kota Singkawang'),
(324, 'Kabupaten Barito Selatan'),
(325, 'Kabupaten Barito Timur'),
(326, 'Kabupaten Barito Utara'),
(327, 'Kabupaten Gunung Mas'),
(328, 'Kabupaten Kapuas'),
(329, 'Kabupaten Katingan'),
(330, 'Kabupaten Kotawaringin Barat'),
(331, 'Kabupaten Kotawaringin Timur'),
(332, 'Kabupaten Lamandau'),
(333, 'Kabupaten Murung Raya'),
(334, 'Kabupaten Pulang Pisau'),
(335, 'Kabupaten Seruyan'),
(336, 'Kabupaten Sukamara'),
(337, 'Kota Palangkaraya'),
(338, 'Kabupaten Balangan'),
(339, 'Kabupaten Banjar'),
(340, 'Kabupaten Barito Kuala'),
(341, 'Kabupaten Hulu Sungai Selatan'),
(342, 'Kabupaten Hulu Sungai Tengah'),
(343, 'Kabupaten Hulu Sungai Utara'),
(344, 'Kabupaten Kota Baru'),
(345, 'Kabupaten Tabalong'),
(346, 'Kabupaten Tanah Bumbu'),
(347, 'Kabupaten Tanah Laut'),
(348, 'Kabupaten Tapin'),
(349, 'Kota Banjar Baru'),
(350, 'Kota Banjarmasin'),
(351, 'Kabupaten Berau'),
(352, 'Kabupaten Bulongan'),
(353, 'Kabupaten Kutai Barat'),
(354, 'Kabupaten Kutai Kartanegara'),
(355, 'Kabupaten Kutai Timur'),
(356, 'Kabupaten Malinau'),
(357, 'Kabupaten Nunukan'),
(358, 'Kabupaten Paser'),
(359, 'Kabupaten Penajam Paser Utara'),
(360, 'Kabupaten Tana Tidung'),
(361, 'Kota Balikpapan'),
(362, 'Kota Bontang'),
(363, 'Kota Samarinda'),
(364, 'Kota Tarakan'),
(365, 'Kabupaten Boalemo'),
(366, 'Kabupaten Bone Bolango'),
(367, 'Kabupaten Gorontalo'),
(368, 'Kabupaten Gorontalo Utara'),
(369, 'Kabupaten Pohuwato'),
(370, 'Kota Gorontalo'),
(371, 'Kabupaten Bantaeng'),
(372, 'Kabupaten Barru'),
(373, 'Kabupaten Bone'),
(374, 'Kabupaten Bulukumba'),
(375, 'Kabupaten Enrekang'),
(376, 'Kabupaten Gowa'),
(377, 'Kabupaten Jeneponto'),
(378, 'Kabupaten Luwu'),
(379, 'Kabupaten Luwu Timur'),
(380, 'Kabupaten Luwu Utara'),
(381, 'Kabupaten Maros'),
(382, 'Kabupaten Pangkajene Kepulauan'),
(383, 'Kabupaten Pinrang'),
(384, 'Kabupaten Selayar'),
(385, 'Kabupaten Sidenreng Rappang'),
(386, 'Kabupaten Sinjai'),
(387, 'Kabupaten Soppeng'),
(388, 'Kabupaten Takalar'),
(389, 'Kabupaten Tana Toraja'),
(390, 'Kabupaten Toraja Utara'),
(391, 'Kabupaten Wajo'),
(392, 'Kota Makassar'),
(393, 'Kota Palopo'),
(394, 'Kota Pare-pare'),
(395, 'Kabupaten Bombana'),
(396, 'Kabupaten Buton'),
(397, 'Kabupaten Buton Utara'),
(398, 'Kabupaten Kolaka'),
(399, 'Kabupaten Kolaka Utara'),
(400, 'Kabupaten Konawe'),
(401, 'Kabupaten Konawe Selatan'),
(402, 'Kabupaten Konawe Utara'),
(403, 'Kabupaten Muna'),
(404, 'Kabupaten Wakatobi'),
(405, 'Kota Bau-bau'),
(406, 'Kota Kendari'),
(407, 'Kabupaten Banggai'),
(408, 'Kabupaten Banggai Kepulauan'),
(409, 'Kabupaten Buol'),
(410, 'Kabupaten Donggala'),
(411, 'Kabupaten Morowali'),
(412, 'Kabupaten Parigi Moutong'),
(413, 'Kabupaten Poso'),
(414, 'Kabupaten Sigi'),
(415, 'Kabupaten Tojo Una-Una'),
(416, 'Kabupaten Toli Toli'),
(417, 'Kota Palu'),
(418, 'Kabupaten Bolaang Mangondow'),
(419, 'Kabupaten Bolaang Mangondow Se'),
(420, 'Kabupaten Bolaang Mangondow Ti'),
(421, 'Kabupaten Bolaang Mangondow Ut'),
(422, 'Kabupaten Kepulauan Sangihe'),
(423, 'Kabupaten Kepulauan Siau Tagul'),
(424, 'Kabupaten Kepulauan Talaud'),
(425, 'Kabupaten Minahasa'),
(426, 'Kabupaten Minahasa Selatan'),
(427, 'Kabupaten Minahasa Tenggara'),
(428, 'Kabupaten Minahasa Utara'),
(429, 'Kota Bitung'),
(430, 'Kota Kotamobagu'),
(431, 'Kota Manado'),
(432, 'Kota Tomohon'),
(433, 'Kabupaten Majene'),
(434, 'Kabupaten Mamasa'),
(435, 'Kabupaten Mamuju'),
(436, 'Kabupaten Mamuju Utara'),
(437, 'Kabupaten Polewali Mandar'),
(438, 'Kabupaten Buru'),
(439, 'Kabupaten Buru Selatan'),
(440, 'Kabupaten Kepulauan Aru'),
(441, 'Kabupaten Maluku Barat Daya'),
(442, 'Kabupaten Maluku Tengah'),
(443, 'Kabupaten Maluku Tenggara'),
(444, 'Kabupaten Maluku Tenggara Bara'),
(445, 'Kabupaten Seram Bagian Barat'),
(446, 'Kabupaten Seram Bagian Timur'),
(447, 'Kota Ambon'),
(448, 'Kota Tual'),
(449, 'Kabupaten Halmahera Barat'),
(450, 'Kabupaten Halmahera Selatan'),
(451, 'Kabupaten Halmahera Tengah'),
(452, 'Kabupaten Halmahera Timur'),
(453, 'Kabupaten Halmahera Utara'),
(454, 'Kabupaten Kepulauan Sula'),
(455, 'Kabupaten Pulau Morotai'),
(456, 'Kota Ternate'),
(457, 'Kota Tidore Kepulauan'),
(458, 'Kabupaten Fakfak'),
(459, 'Kabupaten Kaimana'),
(460, 'Kabupaten Manokwari'),
(461, 'Kabupaten Maybrat'),
(462, 'Kabupaten Raja Ampat'),
(463, 'Kabupaten Sorong'),
(464, 'Kabupaten Sorong Selatan'),
(465, 'Kabupaten Tambrauw'),
(466, 'Kabupaten Teluk Bintuni'),
(467, 'Kabupaten Teluk Wondama'),
(468, 'Kota Sorong'),
(469, 'Kabupaten Merauke'),
(470, 'Kabupaten Jayawijaya'),
(471, 'Kabupaten Nabire'),
(472, 'Kabupaten Kepulauan Yapen'),
(473, 'Kabupaten Biak Numfor'),
(474, 'Kabupaten Paniai'),
(475, 'Kabupaten Puncak Jaya'),
(476, 'Kabupaten Mimika'),
(477, 'Kabupaten Boven Digoel'),
(478, 'Kabupaten Mappi'),
(479, 'Kabupaten Asmat'),
(480, 'Kabupaten Yahukimo'),
(481, 'Kabupaten Pegunungan Bintang'),
(482, 'Kabupaten Tolikara'),
(483, 'Kabupaten Sarmi'),
(484, 'Kabupaten Keerom'),
(485, 'Kabupaten Waropen'),
(486, 'Kabupaten Jayapura'),
(487, 'Kabupaten Deiyai'),
(488, 'Kabupaten Dogiyai'),
(489, 'Kabupaten Intan Jaya'),
(490, 'Kabupaten Lanny Jaya'),
(491, 'Kabupaten Mamberamo Raya'),
(492, 'Kabupaten Mamberamo Tengah'),
(493, 'Kabupaten Nduga'),
(494, 'Kabupaten Puncak'),
(495, 'Kabupaten Supiori'),
(496, 'Kabupaten Yalimo'),
(497, 'Kota Jayapura'),
(498, 'Kabupaten Bulungan'),
(499, 'Kabupaten Malinau'),
(500, 'Kabupaten Nunukan'),
(501, 'Kabupaten Tana Tidung'),
(502, 'Kota Tarakan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE IF NOT EXISTS `tb_contact` (
  `contact_id` varchar(10) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_coordinator`
--

CREATE TABLE IF NOT EXISTS `tb_coordinator` (
  `coordinator_id` varchar(10) NOT NULL DEFAULT '',
  `coordinator_name` varchar(255) NOT NULL,
  `coordinator_contact` varchar(20) NOT NULL,
  `coordinator_address` text NOT NULL,
  `coordinator_email` varchar(255) NOT NULL,
  `coordinator_event_id` varchar(10) NOT NULL,
  `coordinator_account_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_event`
--

CREATE TABLE IF NOT EXISTS `tb_event` (
  `event_id` varchar(10) NOT NULL DEFAULT '',
  `event_code` varchar(10) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_status` tinyint(1) NOT NULL,
  `event_capacity` int(5) NOT NULL,
  `event_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_judge`
--

CREATE TABLE IF NOT EXISTS `tb_judge` (
  `judge_id` varchar(10) NOT NULL DEFAULT '',
  `judge_name` varchar(255) NOT NULL,
  `judge_affiliation` varchar(255) NOT NULL,
  `judge_contact` varchar(20) NOT NULL,
  `judge_address` text NOT NULL,
  `judge_cv` varchar(255) NOT NULL,
  `judge_event_id` varchar(10) NOT NULL,
  `judge_account_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

CREATE TABLE IF NOT EXISTS `tb_news` (
  `news_id` varchar(10) NOT NULL,
  `news_category` varchar(20) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_headline` varchar(255) NOT NULL,
  `news_content` text NOT NULL,
  `news_event_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment`
--

CREATE TABLE IF NOT EXISTS `tb_payment` (
  `payment_id` varchar(10) NOT NULL DEFAULT '',
  `payment_amount` double NOT NULL,
  `payment_document` varchar(255) NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `payment_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_public`
--

CREATE TABLE IF NOT EXISTS `tb_public` (
  `public_id` varchar(10) NOT NULL DEFAULT '',
  `public_name` varchar(255) NOT NULL,
  `public_address` text NOT NULL,
  `public_contact` varchar(20) NOT NULL,
  `public_email` varchar(255) NOT NULL,
  `public_city_id` int(11) NOT NULL,
  `public_account_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pubparticipant`
--

CREATE TABLE IF NOT EXISTS `tb_pubparticipant` (
  `pubparticipant_id` varchar(10) NOT NULL DEFAULT '',
  `pubparticipant_name` varchar(255) NOT NULL,
  `pubparticipant_birth` date NOT NULL,
  `pubparticipant_gender` char(1) NOT NULL,
  `pubparticipant_contact` varchar(20) NOT NULL,
  `pubparticipant_address` text NOT NULL,
  `pubparticipant_team_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pubteam`
--

CREATE TABLE IF NOT EXISTS `tb_pubteam` (
  `pubteam_id` varchar(10) NOT NULL DEFAULT '',
  `pubteam_name` varchar(255) NOT NULL,
  `pubteam_coach_name` varchar(255) DEFAULT NULL,
  `pubteam_coach_contact` varchar(20) DEFAULT NULL,
  `pubteam_public_id` varchar(10) NOT NULL,
  `pubteam_event_id` varchar(10) NOT NULL,
  `pubteam_payment_id` varchar(10) NOT NULL,
  `pubteam_account_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_school`
--

CREATE TABLE IF NOT EXISTS `tb_school` (
  `school_id` varchar(10) NOT NULL DEFAULT '',
  `school_name` varchar(255) NOT NULL,
  `school_address` text NOT NULL,
  `school_image` text,
  `school_contact` varchar(20) NOT NULL,
  `school_email` varchar(255) NOT NULL,
  `school_city_id` int(11) NOT NULL,
  `school_account_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_schparticipant`
--

CREATE TABLE IF NOT EXISTS `tb_schparticipant` (
  `schparticipant_id` varchar(10) NOT NULL DEFAULT '',
  `schparticipant_name` varchar(255) NOT NULL,
  `schparticipant_nisn` varchar(20) NOT NULL,
  `schparticipant_birth` date NOT NULL,
  `schparticipant_gender` char(1) NOT NULL,
  `schparticipant_contact` varchar(20) NOT NULL,
  `schparticipant_address` text NOT NULL,
  `schparticipant_team_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_schteam`
--

CREATE TABLE IF NOT EXISTS `tb_schteam` (
  `schteam_id` varchar(10) NOT NULL DEFAULT '',
  `schteam_name` varchar(255) NOT NULL,
  `schteam_coach_name` varchar(255) DEFAULT NULL,
  `schteam_coach_contact` varchar(20) DEFAULT NULL,
  `schteam_school_id` varchar(10) NOT NULL,
  `schteam_event_id` varchar(10) NOT NULL,
  `schteam_payment_id` varchar(10) NOT NULL,
  `schteam_account_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_score`
--

CREATE TABLE IF NOT EXISTS `tb_score` (
  `score_id` varchar(10) NOT NULL,
  `score_score` int(11) NOT NULL,
  `score_judge_id` varchar(10) NOT NULL,
  `score_event_id` varchar(10) NOT NULL,
  `score_team_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sponsor`
--

CREATE TABLE IF NOT EXISTS `tb_sponsor` (
  `sponsor_id` varchar(10) NOT NULL DEFAULT '',
  `sponsor_name` varchar(255) NOT NULL,
  `sponsor_address` text NOT NULL,
  `sponsor_contact` varchar(20) NOT NULL,
  `sponsor_image` varchar(255) NOT NULL,
  `sponsor_type` varchar(20) NOT NULL,
  `sponsor_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_account`
--
ALTER TABLE `tb_account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `account_category` (`account_category`);

--
-- Indexes for table `tb_bazaar`
--
ALTER TABLE `tb_bazaar`
  ADD PRIMARY KEY (`bazaar_id`);

--
-- Indexes for table `tb_calendar`
--
ALTER TABLE `tb_calendar`
  ADD PRIMARY KEY (`calendar_id`);

--
-- Indexes for table `tb_city`
--
ALTER TABLE `tb_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tb_coordinator`
--
ALTER TABLE `tb_coordinator`
  ADD PRIMARY KEY (`coordinator_id`),
  ADD KEY `coordinator_event_id` (`coordinator_event_id`),
  ADD KEY `tb_coordinator_ibfk_2` (`coordinator_account_id`);

--
-- Indexes for table `tb_event`
--
ALTER TABLE `tb_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tb_judge`
--
ALTER TABLE `tb_judge`
  ADD PRIMARY KEY (`judge_id`),
  ADD KEY `judge_event_id` (`judge_event_id`),
  ADD KEY `tb_judge_ibfk_2` (`judge_account_id`);

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `news_event_id` (`news_event_id`);

--
-- Indexes for table `tb_payment`
--
ALTER TABLE `tb_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tb_public`
--
ALTER TABLE `tb_public`
  ADD PRIMARY KEY (`public_id`),
  ADD KEY `public_city_id` (`public_city_id`),
  ADD KEY `tb_public_ibfk_2` (`public_account_id`);

--
-- Indexes for table `tb_pubparticipant`
--
ALTER TABLE `tb_pubparticipant`
  ADD PRIMARY KEY (`pubparticipant_id`),
  ADD KEY `participant_team_id` (`pubparticipant_team_id`);

--
-- Indexes for table `tb_pubteam`
--
ALTER TABLE `tb_pubteam`
  ADD PRIMARY KEY (`pubteam_id`),
  ADD KEY `team_school_id` (`pubteam_public_id`),
  ADD KEY `team_school_id_2` (`pubteam_public_id`,`pubteam_event_id`,`pubteam_payment_id`),
  ADD KEY `team_school_id_3` (`pubteam_public_id`,`pubteam_event_id`,`pubteam_payment_id`),
  ADD KEY `team_payment_id` (`pubteam_payment_id`),
  ADD KEY `team_event_id` (`pubteam_event_id`),
  ADD KEY `tb_team_ibfk_4` (`pubteam_account_id`);

--
-- Indexes for table `tb_school`
--
ALTER TABLE `tb_school`
  ADD PRIMARY KEY (`school_id`),
  ADD KEY `school_city_id` (`school_city_id`),
  ADD KEY `tb_school_ibfk_2` (`school_account_id`);

--
-- Indexes for table `tb_schparticipant`
--
ALTER TABLE `tb_schparticipant`
  ADD PRIMARY KEY (`schparticipant_id`),
  ADD KEY `participant_team_id` (`schparticipant_team_id`);

--
-- Indexes for table `tb_schteam`
--
ALTER TABLE `tb_schteam`
  ADD PRIMARY KEY (`schteam_id`),
  ADD KEY `team_school_id` (`schteam_school_id`),
  ADD KEY `team_school_id_2` (`schteam_school_id`,`schteam_event_id`,`schteam_payment_id`),
  ADD KEY `team_school_id_3` (`schteam_school_id`,`schteam_event_id`,`schteam_payment_id`),
  ADD KEY `team_payment_id` (`schteam_payment_id`),
  ADD KEY `team_event_id` (`schteam_event_id`),
  ADD KEY `tb_team_ibfk_4` (`schteam_account_id`);

--
-- Indexes for table `tb_score`
--
ALTER TABLE `tb_score`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `score_judge_id` (`score_judge_id`),
  ADD KEY `score_event_id` (`score_event_id`),
  ADD KEY `score_team_id` (`score_team_id`);

--
-- Indexes for table `tb_sponsor`
--
ALTER TABLE `tb_sponsor`
  ADD PRIMARY KEY (`sponsor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_calendar`
--
ALTER TABLE `tb_calendar`
  MODIFY `calendar_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

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
-- Constraints for table `tb_pubparticipant`
--
ALTER TABLE `tb_pubparticipant`
  ADD CONSTRAINT `tb_pubparticipant_ibfk_1` FOREIGN KEY (`pubparticipant_team_id`) REFERENCES `tb_pubteam` (`pubteam_id`);

--
-- Constraints for table `tb_pubteam`
--
ALTER TABLE `tb_pubteam`
  ADD CONSTRAINT `tb_pubteam_ibfk_1` FOREIGN KEY (`pubteam_public_id`) REFERENCES `tb_public` (`public_id`),
  ADD CONSTRAINT `tb_pubteam_ibfk_2` FOREIGN KEY (`pubteam_event_id`) REFERENCES `tb_event` (`event_id`),
  ADD CONSTRAINT `tb_pubteam_ibfk_3` FOREIGN KEY (`pubteam_payment_id`) REFERENCES `tb_payment` (`payment_id`),
  ADD CONSTRAINT `tb_pubteam_ibfk_4` FOREIGN KEY (`pubteam_account_id`) REFERENCES `tb_account` (`account_id`);

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
  ADD CONSTRAINT `tb_schparticipant_ibfk_1` FOREIGN KEY (`schparticipant_team_id`) REFERENCES `tb_schteam` (`schteam_id`);

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
  ADD CONSTRAINT `tb_score_ibfk_3` FOREIGN KEY (`score_team_id`) REFERENCES `tb_schteam` (`schteam_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
