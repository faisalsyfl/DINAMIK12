-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2016 at 12:01 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
  `account_id` int(11) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `account_username` varchar(16) NOT NULL,
  `account_password` varchar(255) NOT NULL,
  `account_log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last login',
  `account_category_id` varchar(10) NOT NULL,
  `account_token` varchar(255) NOT NULL COMMENT 'Cookies token',
  `account_image` text NOT NULL COMMENT 'Gambar kategori',
  `account_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_account`
--

INSERT INTO `tb_account` (`account_id`, `account_email`, `account_username`, `account_password`, `account_log`, `account_category_id`, `account_token`, `account_image`, `account_status`) VALUES
(0, 'dinamik@cs.upi.edu', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2016-12-04 10:49:08', 'ADM', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_bazaar`
--

CREATE TABLE IF NOT EXISTS `tb_bazaar` (
  `bazaar_id` int(11) NOT NULL,
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
-- Table structure for table `tb_category`
--

CREATE TABLE IF NOT EXISTS `tb_category` (
  `category_id` varchar(10) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
('ADM', 'Administrator'),
('JDG', 'Juri'),
('SCH', 'Sekolah'),
('PUB', 'Publik'),
('SCT', 'Tim Sekolah'),
('PBT', 'Tim Publik'),
('COR', 'Koordinator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_city`
--

CREATE TABLE IF NOT EXISTS `tb_city` (
  `city_id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `city_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Dumping data for table `tb_city`
--

INSERT INTO `tb_city` (`city_name`) VALUES
('Aceh Barat Daya'),
('Aceh Barat'),
('Aceh Besar'),
('Aceh Jaya'),
('Aceh Selatan'),
('Aceh Singkil'),
('Aceh Tamiang'),
('Aceh Tengah'),
('Aceh Tenggara'),
('Aceh Timur'),
('Aceh Utara'),
('Adm. Kepulauan Serib'),
('Agam'),
('Alor'),
('Ambon'),
('Asahan'),
('Asmat'),
('Badung'),
('Balangan'),
('Balikpapan'),
('Banda Aceh'),
('Bandar Lampung'),
('Bandung Barat'),
('Bandung'),
('Banggai Kepulauan'),
('Banggai'),
('Bangka Barat'),
('Bangka Selatan'),
('Bangka Tengah'),
('Bangka'),
('Bangkalan'),
('Bangli'),
('Banjar Baru'),
('Banjar'),
('Banjarmasin'),
('Banjarnegara'),
('Bantaeng'),
('Bantul'),
('Banyuasin'),
('Banyumas'),
('Banyuwangi'),
('Barito Kuala'),
('Barito Selatan'),
('Barito Timur'),
('Barito Utara'),
('Barru'),
('Baru'),
('Batam'),
('Batang Hari'),
('Batang'),
('Batu'),
('Batubara'),
('Bau-bau'),
('Bekasi'),
('Belitung Timur'),
('Belitung'),
('Belu'),
('Bener Meriah'),
('Bengkalis'),
('Bengkayang'),
('Bengkulu Selatan'),
('Bengkulu Tengah'),
('Bengkulu Utara'),
('Bengkulu'),
('Berau'),
('Biak Numfor'),
('Bima'),
('Binjai'),
('Bintan'),
('Bireuen'),
('Bitung'),
('Blitar'),
('Blora'),
('Boalemo'),
('Bogor'),
('Bojonegoro'),
('Bolaang Mangondow Se'),
('Bolaang Mangondow Ti'),
('Bolaang Mangondow Ut'),
('Bolaang Mangondow'),
('Bombana'),
('Bondowoso'),
('Bone Bolango'),
('Bone'),
('Bontang'),
('Boven Digoel'),
('Boyolali'),
('Brebes'),
('Bukittinggi'),
('Buleleng'),
('Bulongan'),
('Bulukumba'),
('Bulungan'),
('Bungo'),
('Buol'),
('Buru Selatan'),
('Buru'),
('Buton Utara'),
('Buton'),
('Ciamis'),
('Cianjur'),
('Cilacap'),
('Cilegon'),
('Cimahi'),
('Cirebon'),
('Dairi'),
('Deiyai'),
('Deli Serdang'),
('Demak'),
('Denpasar'),
('Depok'),
('Dharmas Raya'),
('Dogiyai'),
('Dompu'),
('Donggala'),
('Dumai'),
('Empat Lawang'),
('Ende'),
('Enrekang'),
('Fakfak'),
('Flores Timur'),
('Garut'),
('Gayo Luwes'),
('Gianyar'),
('Gorontalo Utara'),
('Gorontalo'),
('Gowa'),
('Gresik'),
('Grobogan'),
('Gunung Kidul'),
('Gunung Mas'),
('Gunung Sitoli'),
('Halmahera Barat'),
('Halmahera Selatan'),
('Halmahera Tengah'),
('Halmahera Timur'),
('Halmahera Utara'),
('Hulu Sungai Selatan'),
('Hulu Sungai Tengah'),
('Hulu Sungai Utara'),
('Humbang Hasundutan'),
('Indragiri Hilir'),
('Indragiri Hulu'),
('Indramayu'),
('Intan Jaya'),
('Jakarta Barat'),
('Jakarta Pusat'),
('Jakarta Selatan'),
('Jakarta Timur'),
('Jakarta Utara'),
('Jambi'),
('Jayapura'),
('Jayawijaya'),
('Jember'),
('Jembrana'),
('Jeneponto'),
('Jepara'),
('Jombang'),
('Kaimana'),
('Kampar'),
('Kapuas Hulu'),
('Kapuas'),
('Karang Asem'),
('Karanganyar'),
('Karawang'),
('Karimun'),
('Karo'),
('Katingan'),
('Kaur'),
('Kayong Utara'),
('Kebumen'),
('Kediri'),
('Kediri'),
('Keerom'),
('Kendal'),
('Kendari'),
('Kepahiang'),
('Kepulauan Anambas'),
('Kepulauan Aru'),
('Kepulauan Mentawai'),
('Kepulauan Sangihe'),
('Kepulauan Siau Tagul'),
('Kepulauan Sula'),
('Kepulauan Talaud'),
('Kepulauan Yapen'),
('Kerinci'),
('Ketapang'),
('Klaten'),
('Klungkung'),
('Kolaka Utara'),
('Kolaka'),
('Konawe Selatan'),
('Konawe Utara'),
('Konawe'),
('Kotamobagu'),
('Kotawaringin Barat'),
('Kotawaringin Timur'),
('Kuantan Singingi'),
('Kubu Raya'),
('Kudus'),
('Kulon Progo'),
('Kuningan'),
('Kupang'),
('Kutai Barat'),
('Kutai Kartanegara'),
('Kutai Timur'),
('Labuhan Batu'),
('Labuhanbatu Selatan'),
('Labuhanbatu Utara'),
('Lahat'),
('Lamandau'),
('Lamongan'),
('Lampung Barat'),
('Lampung Selatan'),
('Lampung Tengah'),
('Lampung Timur'),
('Lampung Utara'),
('Landak'),
('Langkat'),
('Langsa'),
('Lanny Jaya'),
('Lebak'),
('Lebong'),
('Lembata'),
('Lhokseumawe'),
('Lima Puluh Kota'),
('Lingga'),
('Lombok Barat'),
('Lombok Tengah'),
('Lombok Timur'),
('Lombok Utara'),
('Lubuklinggau'),
('Lumajang'),
('Luwu Timur'),
('Luwu Utara'),
('Luwu'),
('Madiun'),
('Magelang'),
('Magetan'),
('Majalengka'),
('Majene'),
('Makassar'),
('Malang'),
('Malinau'),
('Maluku Barat Daya'),
('Maluku Tengah'),
('Maluku Tenggara Bara'),
('Maluku Tenggara'),
('Mamasa'),
('Mamberamo Raya'),
('Mamberamo Tengah'),
('Mamuju Utara'),
('Mamuju'),
('Manado'),
('Mandailing Natal'),
('Manggarai Barat'),
('Manggarai Timur'),
('Manggarai'),
('Manokwari'),
('Mappi'),
('Maros'),
('Mataram'),
('Maybrat'),
('Medan'),
('Melawi'),
('Merangin'),
('Meranti'),
('Merauke'),
('Mesuji'),
('Metro'),
('Mimika'),
('Minahasa Selatan'),
('Minahasa Tenggara'),
('Minahasa Utara'),
('Minahasa'),
('Mojokerto'),
('Morowali'),
('Muara Enim'),
('Muaro Jambi'),
('Mukomuko'),
('Muna'),
('Murung Raya'),
('Musi Banyu Asin'),
('Musi Rawas'),
('Nabire'),
('Nagan Raya'),
('Nagekeo'),
('Natuna'),
('Nduga'),
('Ngada'),
('Nganjuk'),
('Ngawi'),
('Nias Barat'),
('Nias Selatan'),
('Nias Utara'),
('Nias'),
('Nunukan'),
('Ogan Ilir'),
('Ogan Komering Ilir'),
('Ogan Komering Ulu Se'),
('Ogan Komering Ulu Ti'),
('Ogan Komering Ulu'),
('Pacitan'),
('Padang Lawas Utara'),
('Padang Lawas'),
('Padang Panjang'),
('Padang Pariaman'),
('Padang'),
('Padangsidempuan'),
('Pagar Alam'),
('Pakpak Barat'),
('Palangkaraya'),
('Palembang'),
('Palopo'),
('Palu'),
('Pamekasan'),
('Pandeglang'),
('Pangkajene Kepulauan'),
('Pangkal Pinang'),
('Paniai'),
('Pare-pare'),
('Pariaman'),
('Parigi Moutong'),
('Pasaman Barat'),
('Pasaman'),
('Paser'),
('Pasuruan'),
('Pasuruan'),
('Pati'),
('Payakumbuh'),
('Pegunungan Bintang'),
('Pekalongan'),
('Pekanbaru'),
('Pelalawan'),
('Pemalang'),
('Pematang Siantar'),
('Penajam Paser Utara'),
('Pesawaran'),
('Pesisir Selatan'),
('Pidie Jaya'),
('Pidie'),
('Pinrang'),
('Pohuwato'),
('Polewali Mandar'),
('Ponorogo'),
('Pontianak'),
('Poso'),
('Prabumulih'),
('Pringsewu'),
('Probolinggo'),
('Probolinggo'),
('Pulang Pisau'),
('Pulau Morotai'),
('Puncak Jaya'),
('Puncak'),
('Purbalingga'),
('Purwakarta'),
('Purworejo'),
('Raja Ampat'),
('Rejang Lebong'),
('Rembang'),
('Rokan Hilir'),
('Rokan Hulu'),
('Rote Ndao'),
('Sabang'),
('Sabu Raijua'),
('Salatiga'),
('Samarinda'),
('Sambas'),
('Samosir'),
('Sampang'),
('Sanggau'),
('Sarmi'),
('Sarolangun'),
('Sawah Lunto'),
('Sekadau'),
('Selayar'),
('Seluma'),
('Semarang'),
('Seram Bagian Barat'),
('Seram Bagian Timur'),
('Serang'),
('Serdang Bedagai'),
('Seruyan'),
('Siak'),
('Sibolga'),
('Sidenreng Rappang'),
('Sidoarjo'),
('Sigi'),
('Sijunjung'),
('Sikka'),
('Simalungun'),
('Simeulue'),
('Singkawang'),
('Sinjai'),
('Sintang'),
('Situbondo'),
('Sleman'),
('Solok Selatan'),
('Solok'),
('Soppeng'),
('Sorong Selatan'),
('Sorong'),
('Sragen'),
('Subang'),
('Subulussalam'),
('Sukabumi'),
('Sukamara'),
('Sukoharjo'),
('Sumba Barat Daya'),
('Sumba Barat'),
('Sumba Tengah'),
('Sumba Timur'),
('Sumbawa Barat'),
('Sumbawa'),
('Sumedang'),
('Sumenep'),
('Sungai Penuh'),
('Supiori'),
('Surabaya'),
('Surakarta'),
('Tabalong'),
('Tabanan'),
('Takalar'),
('Tambrauw'),
('Tana Tidung'),
('Tana Toraja'),
('Tanah Bumbu'),
('Tanah Datar'),
('Tanah Laut'),
('Tangerang Selatan'),
('Tangerang'),
('Tanggamus'),
('Tanjung Balai'),
('Tanjung Jabung Barat'),
('Tanjung Jabung Timur'),
('Tanjung Pinang'),
('Tapanuli Selatan'),
('Tapanuli Tengah'),
('Tapanuli Utara'),
('Tapin'),
('Tarakan'),
('Tarakan'),
('Tasikmalaya'),
('Tebing Tinggi'),
('Tebo'),
('Tegal'),
('Teluk Bintuni'),
('Teluk Wondama'),
('Temanggung'),
('Ternate'),
('Tidore Kepulauan'),
('Timor Tengah Selatan'),
('Timor Tengah Utara'),
('Toba Samosir'),
('Tojo Una-Una'),
('Toli Toli'),
('Tolikara'),
('Tomohon'),
('Toraja Utara'),
('Trenggalek'),
('Tual'),
('Tuban'),
('Tulang Bawang Barat'),
('Tulang Bawang'),
('Tulungagung'),
('Wajo'),
('Wakatobi'),
('Waropen'),
('Way Kanan'),
('Wonogiri'),
('Wonosobo'),
('Yahukimo'),
('Yalimo'),
('Yogyakarta');  
  

--
-- Table structure for table `tb_coordinator`
--

CREATE TABLE IF NOT EXISTS `tb_coordinator` (
  `coordinator_id` int(11) NOT NULL,
  `coordinator_name` varchar(255) NOT NULL,
  `coordinator_contact` varchar(20) NOT NULL,
  `coordinator_address` text NOT NULL,
  `coordinator_event_id` int(11) NOT NULL,
  `coordinator_account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_event`
--

CREATE TABLE IF NOT EXISTS `tb_event` (
  `event_id` int(11) NOT NULL,
  `event_code` varchar(10) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_status` tinyint(1) NOT NULL COMMENT '1 = valid/bisa daftar, 0 = tutup, 9 = spesial',
  `event_capacity` int(5) NOT NULL,
  `event_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_judge`
--

CREATE TABLE IF NOT EXISTS `tb_judge` (
  `judge_id` int(11) NOT NULL,
  `judge_name` varchar(255) NOT NULL,
  `judge_affiliation` varchar(255) NOT NULL,
  `judge_contact` varchar(20) NOT NULL,
  `judge_address` text NOT NULL,
  `judge_cv` varchar(255) NOT NULL,
  `judge_event_id` int(11) NOT NULL,
  `judge_account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_message`
--

CREATE TABLE IF NOT EXISTS `tb_message` (
  `message_id` int(11) NOT NULL,
  `message_name` varchar(75) NOT NULL,
  `message_email` varchar(255) NOT NULL,
  `message_content` text NOT NULL,
  `message_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

CREATE TABLE IF NOT EXISTS `tb_news` (
  `news_id` int(11) NOT NULL,
  `news_category` varchar(20) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_headline` varchar(255) NOT NULL,
  `news_content` text NOT NULL,
  `news_event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment`
--

CREATE TABLE IF NOT EXISTS `tb_payment` (
  `payment_id` int(11) NOT NULL,
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
  `public_id` int(11) NOT NULL,
  `public_name` varchar(255) NOT NULL,
  `public_address` text NOT NULL,
  `public_image` text NOT NULL,
  `public_contact` varchar(20) NOT NULL,
  `public_city_id` int(11) NOT NULL,
  `public_account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pubparticipant`
--

CREATE TABLE IF NOT EXISTS `tb_pubparticipant` (
  `pubparticipant_id` int(11) NOT NULL,
  `pubparticipant_name` varchar(255) NOT NULL,
  `pubparticipant_nisn` varchar(20) NOT NULL,
  `pubparticipant_birth` date NOT NULL,
  `pubparticipant_gender` char(1) NOT NULL,
  `pubparticipant_contact` varchar(20) NOT NULL,
  `pubparticipant_address` text NOT NULL,
  `pubparticipant_pubteam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pubteam`
--

CREATE TABLE IF NOT EXISTS `tb_pubteam` (
  `pubteam_id` int(11) NOT NULL,
  `pubteam_name` varchar(255) NOT NULL,
  `pubteam_coach_name` varchar(255) DEFAULT NULL,
  `pubteam_contact` varchar(20) DEFAULT NULL,
  `pubteam_public_id` int(11) NOT NULL,
  `pubteam_event_id` int(11) NOT NULL,
  `pubteam_payment_id` int(11) NOT NULL,
  `pubteam_account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_school`
--

CREATE TABLE IF NOT EXISTS `tb_school` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_grade` varchar(15) NOT NULL,
  `school_address` text NOT NULL,
  `school_image` text,
  `school_contact` varchar(20) NOT NULL,
  `school_city_id` int(11) NOT NULL,
  `school_account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_schparticipant`
--

CREATE TABLE IF NOT EXISTS `tb_schparticipant` (
  `schparticipant_id` int(11) NOT NULL,
  `schparticipant_name` varchar(255) NOT NULL,
  `schparticipant_nisn` varchar(20) NOT NULL,
  `schparticipant_birth` date NOT NULL,
  `schparticipant_gender` char(1) NOT NULL,
  `schparticipant_contact` varchar(20) NOT NULL,
  `schparticipant_address` text NOT NULL,
  `schparticipant_student_id` text NOT NULL,
  `schparticipant_schteam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_schteam`
--

CREATE TABLE IF NOT EXISTS `tb_schteam` (
  `schteam_id` int(11) NOT NULL,
  `schteam_name` varchar(255) NOT NULL,
  `schteam_coach_name` varchar(255) DEFAULT NULL,
  `schteam_coach_contact` varchar(20) DEFAULT NULL,
  `schteam_school_id` int(11) NOT NULL,
  `schteam_event_id` int(11) NOT NULL,
  `schteam_payment_id` int(11) NOT NULL,
  `schteam_account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_score`
--

CREATE TABLE IF NOT EXISTS `tb_score` (
  `score_id` int(11) NOT NULL,
  `score_score` int(11) NOT NULL,
  `score_judge_id` int(11) NOT NULL,
  `score_event_id` int(11) NOT NULL,
  `score_schteam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sponsor`
--

CREATE TABLE IF NOT EXISTS `tb_sponsor` (
  `sponsor_id` int(11) NOT NULL,
  `sponsor_name` varchar(255) NOT NULL,
  `sponsor_address` text NOT NULL,
  `sponsor_contact` varchar(20) NOT NULL,
  `sponsor_image` varchar(255) NOT NULL,
  `sponsor_type` varchar(20) NOT NULL,
  `sponsor_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_cor_acc`
--
CREATE TABLE IF NOT EXISTS `v_cor_acc` (
`acc_id` int(11)
,`cor_id` int(11)
,`cat_name` varchar(255)
,`cor_username` varchar(16)
,`cor_name` varchar(255)
,`cor_email` varchar(255)
,`cor_category` varchar(10)
,`cor_image` text
,`cor_event` int(11)
,`cor_acc` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `v_cor_acc`
--
DROP TABLE IF EXISTS `v_cor_acc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cor_acc` AS select `acc`.`account_id` AS `acc_id`,`cor`.`coordinator_id` AS `cor_id`,`cat`.`category_name` AS `cat_name`,`acc`.`account_username` AS `cor_username`,`cor`.`coordinator_name` AS `cor_name`,`acc`.`account_email` AS `cor_email`,`acc`.`account_category_id` AS `cor_category`,`acc`.`account_image` AS `cor_image`,`cor`.`coordinator_event_id` AS `cor_event`,`cor`.`coordinator_account_id` AS `cor_acc` from ((`tb_account` `acc` join `tb_coordinator` `cor`) join `tb_category` `cat` on(((`acc`.`account_id` = `cor`.`coordinator_account_id`) and (`cat`.`category_id` = `acc`.`account_category_id`))));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_account`
--
ALTER TABLE `tb_account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `account_category` (`account_category_id`),
  ADD KEY `account_category_2` (`account_category_id`);

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
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

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
-- Indexes for table `tb_message`
--
ALTER TABLE `tb_message`
  ADD PRIMARY KEY (`message_id`);

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
  ADD KEY `school_city_id` (`public_city_id`),
  ADD KEY `tb_school_ibfk_2` (`public_account_id`);

--
-- Indexes for table `tb_pubparticipant`
--
ALTER TABLE `tb_pubparticipant`
  ADD PRIMARY KEY (`pubparticipant_id`),
  ADD KEY `pubparticipant_pubteam_id` (`pubparticipant_pubteam_id`);

--
-- Indexes for table `tb_pubteam`
--
ALTER TABLE `tb_pubteam`
  ADD PRIMARY KEY (`pubteam_id`),
  ADD KEY `pubteam_public_id` (`pubteam_public_id`),
  ADD KEY `pubteam_public_id_2` (`pubteam_public_id`,`pubteam_event_id`,`pubteam_payment_id`),
  ADD KEY `pubteam_public_id_3` (`pubteam_public_id`,`pubteam_event_id`,`pubteam_payment_id`),
  ADD KEY `pubteam_payment_id` (`pubteam_payment_id`),
  ADD KEY `pubteam_event_id` (`pubteam_event_id`),
  ADD KEY `tb_pubteam_ibfk_4` (`pubteam_account_id`);

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
  ADD KEY `schparticipant_schteam_id` (`schparticipant_schteam_id`);

--
-- Indexes for table `tb_schteam`
--
ALTER TABLE `tb_schteam`
  ADD PRIMARY KEY (`schteam_id`),
  ADD KEY `schteam_school_id` (`schteam_school_id`),
  ADD KEY `schteam_school_id_2` (`schteam_school_id`,`schteam_event_id`,`schteam_payment_id`),
  ADD KEY `schteam_school_id_3` (`schteam_school_id`,`schteam_event_id`,`schteam_payment_id`),
  ADD KEY `schteam_payment_id` (`schteam_payment_id`),
  ADD KEY `schteam_event_id` (`schteam_event_id`),
  ADD KEY `tb_tscheam_ibfk_4` (`schteam_account_id`);

--
-- Indexes for table `tb_score`
--
ALTER TABLE `tb_score`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `score_judge_id` (`score_judge_id`),
  ADD KEY `score_event_id` (`score_event_id`),
  ADD KEY `score_schteam_id` (`score_schteam_id`);

--
-- Indexes for table `tb_sponsor`
--
ALTER TABLE `tb_sponsor`
  ADD PRIMARY KEY (`sponsor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_account`
--
ALTER TABLE `tb_account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_bazaar`
--
ALTER TABLE `tb_bazaar`
  MODIFY `bazaar_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_calendar`
--
ALTER TABLE `tb_calendar`
  MODIFY `calendar_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_calendar`
--
ALTER TABLE `tb_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_coordinator`
--
ALTER TABLE `tb_coordinator`
  MODIFY `coordinator_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_event`
--
ALTER TABLE `tb_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_judge`
--
ALTER TABLE `tb_judge`
  MODIFY `judge_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_message`
--
ALTER TABLE `tb_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_payment`
--
ALTER TABLE `tb_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_public`
--
ALTER TABLE `tb_public`
  MODIFY `public_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_pubparticipant`
--
ALTER TABLE `tb_pubparticipant`
  MODIFY `pubparticipant_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_pubteam`
--
ALTER TABLE `tb_pubteam`
  MODIFY `pubteam_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_school`
--
ALTER TABLE `tb_school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_schparticipant`
--
ALTER TABLE `tb_schparticipant`
  MODIFY `schparticipant_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_schteam`
--
ALTER TABLE `tb_schteam`
  MODIFY `schteam_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_score`
--
ALTER TABLE `tb_score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_sponsor`
--
ALTER TABLE `tb_sponsor`
  MODIFY `sponsor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_account`
--
ALTER TABLE `tb_account`
  ADD CONSTRAINT `tb_account_ibfk_1` FOREIGN KEY (`account_category_id`) REFERENCES `tb_category` (`category_id`);

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
  ADD CONSTRAINT `tb_pubparticipant_ibfk_1` FOREIGN KEY (`pubparticipant_pubteam_id`) REFERENCES `tb_pubteam` (`pubteam_id`);

--
-- Constraints for table `tb_pubteam`
--
ALTER TABLE `tb_pubteam`
  ADD CONSTRAINT `tb_pubteam_ibfk_1` FOREIGN KEY (`pubteam_public_id`) REFERENCES `tb_public` (`public_id`),
  ADD CONSTRAINT `tb_pubteam_ibfk_2` FOREIGN KEY (`pubteam_payment_id`) REFERENCES `tb_payment` (`payment_id`),
  ADD CONSTRAINT `tb_pubteam_ibfk_3` FOREIGN KEY (`pubteam_event_id`) REFERENCES `tb_event` (`event_id`),
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
