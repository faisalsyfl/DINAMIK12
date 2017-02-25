-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2017 at 05:40 PM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=701 ;

--
-- RELATIONS FOR TABLE `tb_account`:
--   `account_category_id`
--       `tb_category` -> `category_id`
--

--
-- Truncate table before insert `tb_account`
--

TRUNCATE TABLE `tb_account`;
--
-- Dumping data for table `tb_account`
--

INSERT INTO `tb_account` (`account_id`, `account_email`, `account_username`, `account_password`, `account_log`, `account_category_id`, `account_token`, `account_image`, `account_status`) VALUES
(0, 'dinamik.cs@upi.edu', 'admin', 'c8648da0a406f2ad558f539e0c064294', '2017-02-12 07:41:49', 'ADMSU', '', '/assets/img/icon_dashboard/admin.jpg', 1),
(1, 'dinamik.cs@upi.edu', 'ketuplak', '1e36cc07dbd5ec0fd229266f3447d496', '2017-02-11 09:12:06', 'ADM', '', '/assets/img/icon_dashboard/admin.jpg', 1),
(2, 'dinamik.cs@upi.edu', 'acara', '8a19a38c1b9fc2ec3c1028152a7f2b5d', '2017-02-11 02:23:16', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(3, 'dinamik.cs@upi.edu', 'bendahara', '37e49ae212f8124a29bf6206bb79a4fc', '2017-02-12 03:39:41', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(4, 'dinamik.cs@upi.edu', 'danusbazaar', 'e2caad71ee1da251f3ff8a05ce501290', '2017-01-09 00:32:03', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(5, 'dinamik.cs@upi.edu', 'dokumentasi', '1edab3457ccaeb386827140e647f669f', '2017-01-09 00:32:07', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(6, 'dinamik.cs@upi.edu', 'publikasi', '9a969a4b0622c8314a2413b7e59dc09d', '2017-01-09 00:32:23', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(7, 'dinamik.cs@upi.edu', 'sponsor', '662b30e38c7590f06c5dcebf260b6b26', '2017-01-09 00:32:39', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(8, 'dinamik.cs@upi.edu', 'cspc', 'd7a273c3becade875278fc5c4391a502', '2017-02-10 00:09:05', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(9, 'dinamik.cs@upi.edu', 'humas', 'e9853044bad3f49c8ffa0d4d92d603ed', '2017-01-16 15:10:14', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(10, 'dinamik.cs@upi.edu', 'dstar', 'c8d62f739fce3fc1b842fbbfee58d12b', '2017-02-10 13:22:18', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(11, 'dinamik.cs@upi.edu', 'felose', 'e5b936ba0464f7db4c05e3377163f290', '2017-01-13 17:25:57', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(12, 'dinamik.cs@upi.edu', 'komjar', 'ec19f427fee769ea733461f56f9549b6', '2017-02-04 06:07:08', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(13, 'dinamik.cs@upi.edu', 'lca', '685015a030f717f66adc519e7c0ded8c', '2017-02-10 18:25:21', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(14, 'dinamik.cs@upi.edu', 'lcw', 'daaede32d58103e1d72acd5946fe3a57', '2017-02-11 09:32:48', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(15, 'dinamik.cs@upi.edu', 'ldg', '972bbad20cafb269f83fb92ae6900544', '2017-02-10 13:44:24', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(16, 'dinamik.cs@upi.edu', 'otik', '77f959f119f4fb2321e9ce801e2f5163', '2017-02-12 01:08:12', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(17, 'dinamik.cs@upi.edu', 'pca', '1fad28b26d377cef981a875bd9a407c8', '2017-02-12 09:46:33', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(18, 'dinamik.cs@upi.edu', 'rlf', '2d758d405e2b5371bc3bc0aa2cbba216', '2017-02-10 14:46:07', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(19, 'dinamik.cs@upi.edu', 'semnas', 'e225e823c7693b4c2d4daa8aa8b90d84', '2017-02-09 01:22:25', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(20, 'dinamik.cs@upi.edu', 'talkshow', 'b49708a838e92dd6a4d7972d9025a9db', '2017-02-09 08:05:00', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(21, 'dinamik.cs@upi.edu', 'workshop', 'f94cd03f74eb454ae3779b4ae2f90676', '2017-01-09 00:41:03', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(22, 'dinamik.cs@upi.edu', 'kestari', '88c8763b57289f7c7bb1e6b22dd7ad99', '2017-02-10 05:40:33', 'COR', '', '/assets/img/icon_dashboard/koordinator.jpg', 1),
(77, 'faishol.amirul27@gmail.com', 'faishol27', 'c46f5f40976b853d35441f92c742533b', '2017-01-14 13:34:29', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(78, 'buanadika902@yahoo.com', 'dika902', '5fb676bfa44fa194d0cc530192454b40', '2017-01-09 01:49:51', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(79, 'shelonboyz136@gmail.com', 'test', '478220733f93bb345bf23b6527337741', '2017-02-10 07:57:04', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(81, 'anisadestiana17@gmail.com', 'anisadestiana', '2358a29abc3a7e6bde437e44bf127f3a', '2017-02-08 01:20:10', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(82, 'gitamarshelina@gmail.com', 'gitamarshelina', 'd7d4d13c868cc6dd97d05a3ae1744a38', '2017-01-09 02:57:20', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(83, 'tkj@smknukaplongan.sch.id', 'smknukaplongan', '753de0b683f5cbf42e8e7db81e5ab8b3', '2017-02-07 08:50:35', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(84, 'smkpasundan3cimahi@gmail.com', 'smkpasundan3kotacimahi', '1f3c563267dd002f59fbe806daa9fa23', '2017-01-14 01:18:26', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(85, 'kimsuhoo16@gmail.com', 'windafebri', '422ea9bc14dd1c1cf3698d74bab45943', '2017-01-09 09:10:16', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(86, 'faisal.faisal.anwar@gmail.com', 'faisalsyfl', 'd7a273c3becade875278fc5c4391a502', '2017-02-07 14:28:57', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(88, 'info@sman24bdg.sch.id', 'sman24bandung', 'e8440ddb9670bdc40161d7468685ab64', '2017-01-09 12:14:47', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(89, 'coklatsusukrim@gmail.com', 'sma1uganda', '2c5e8541aeadc6f9e9ad7d163092d1c0', '2017-01-09 12:21:28', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(90, 'coklatsusukrim@gmail.com', 'coklatsusukrim', 'eeacafe362ea9f9f468c3eb2614f5b4b', '2017-01-09 12:24:49', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(91, 'detrihf@gmail.com', 'detrihf', '80a1fccdd55703bc6ae540a9043bb95a', '2017-02-09 09:02:17', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(92, 'zathyrazarif.zk@gmail.com', 'bellaaf', 'a57ca233bb3987f7d3e0daeb0ef52141', '2017-01-09 12:27:55', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(94, 'faustaadp@gmail.com', 'faustaadp', '1bb6ae2593689ce3cf2163cc61975580', '2017-01-09 14:53:59', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(96, 'shelonboyz136@gmail.com', 'testumum', '478220733f93bb345bf23b6527337741', '2017-02-09 11:15:20', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(99, 'sman22kotabandung@gmail.com', 'sman22bandung', '5c3cd779d0cf6def9d2abb5b7bf3e898', '2017-02-01 12:17:41', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(101, 'ma.yayasanislam@gmail.com', 'mayirajamandala', '2f0cd040ee3838f647f3c67619469aa2', '2017-02-12 07:46:49', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(103, 'divisi_ict@sman3cmi.sch.id', 'smanegeri3cimahi', 'ce1c4f650812f5fd2dc0d5e80710df0f', '2017-02-09 04:41:16', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(105, 'onmiruyin@gmail.com', 'smalalala', '2a3a221d913c9a3165c0e86d0c3fde67', '2017-01-11 18:08:14', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(107, 'aditnovit@gmail.com', 'aditianovit', '0b14e26a7cecce2544c743c4b8333832', '2017-01-12 00:40:00', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(109, 'tkjsmkbpi@gmail.com', 'smkbpibandung', 'cd4fc49ae24cacb21473ecf933020e65', '2017-02-06 07:02:13', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(110, 'bravolost@gmail.com', 'mashanif123', 'e405208fff0860e7618204866de2b88a', '2017-01-12 08:49:31', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(111, 'fevelines@gmail.com', 'feliciaevelinsianturi', 'a90db968e0a9348375848060b0953b47', '2017-01-12 08:54:02', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(113, 'rafisalahudin248@gmail.com', 'rafishalahudin', '9a2fc2329c20ac6f44b28115c27ee135', '2017-01-12 10:02:19', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(114, 'adsadsa@as', 'asdsad', 'd3aff16a801b4b7d36b4da1094bee345', '2017-01-13 02:59:29', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(118, 'qusshoy@gmail.com', 'qushoyy', '02026f43d24ffed99b62f8a3e221dd41', '2017-01-15 06:08:56', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(119, 'anisadestiana10@gmail.com', 'smkn1', 'c152b8c4d605fbc010a4d4593c24117e', '2017-02-09 08:24:24', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(124, 'dera.apriyadi04@gmail.com', 'smkn1cimahi', '093dbce1b4959c923875b00ec5a15b09', '2017-01-16 01:19:10', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(125, 'alihasanasyari@outlook.com', 'sman17bandung', 'c7eab27e0beca3140251f57a8e40dec2', '2017-02-08 08:18:34', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(126, 'alihasanasyari19@gmail.com', 'alihasanasyari', 'dc4408248653e134630c89d5ebe3947e', '2017-01-16 03:16:51', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(127, 'pisckipratama@gmail.com', 'pisckipratama', 'b5cb49b1a1dba14294a32a58b5291cfc', '2017-02-08 13:48:26', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(128, 'info@smk-angkasa1.sch.id', 'smkangkasa1margahayu', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-09 14:41:44', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(129, 'smktqalhikmah@gmail.com', 'smktakhassusquranal-hikmah', 'd351cb1e258aee61f644918fe01c3899', '2017-01-17 02:46:59', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(130, 'indo@gmail.com', 'indo', '882838be9bb614de4c630fe8f6ab900c', '2017-01-17 14:10:47', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(131, 'rahmiyanti195@gmail.com', 'rahmi', '115c4722c1667cab006fa7c9d9941a3d', '2017-01-18 00:46:03', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(132, 'Mohamadzaelani09@gmail.com', 'mohamad_zaelani', '383988ddb2eb48b8cac1be0adc6af886', '2017-01-18 05:12:18', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(133, 'Uptdsmantan@gmail.com', 'smanegeri1tanjunganom', '76dd35c716ef7f286ce601227bcb127d', '2017-01-18 02:01:42', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(134, 'MZAE00@gmail.com', 'sman1tanjunganom', '383988ddb2eb48b8cac1be0adc6af886', '2017-02-10 03:59:11', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(135, 'mohamadzaelani09@gmail.com', 'zaelani', '383988ddb2eb48b8cac1be0adc6af886', '2017-01-18 05:19:05', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(136, 'smakgadingserpong@bpkpenaburjakarta.or.id', 'smakpenaburgadingserpong', 'd3ad5b1baef994ce64a2442159558c7f', '2017-01-18 10:48:13', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(137, 'phillotunru@gmail.com', 'phillotunru', '6030ea7c198a0071f8f67eb4d672d619', '2017-01-26 14:09:07', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(138, 'phillohambali@gmail.com', 'smakpenaburgs', 'bf24ff76315b35d2170fa7644ec434cc', '2017-01-26 14:12:48', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(139, 'phillotunru@gmail.com', 'ahole.', '6030ea7c198a0071f8f67eb4d672d619', '2017-01-18 11:16:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(140, 'Simsimart@yahoo.com', 'smaharapanbangsa', 'cf417d9b71431557bb7294e86dae2b42', '2017-01-24 04:21:39', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(142, 'agathamariajossephine@gmail.com', 'shbweb1', '5a9b16a2e9c832c365d9e1f30d535d9f', '2017-01-20 01:37:44', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(143, 'agathamariajossephine@gmail.com', 'shbweb1', '5a9b16a2e9c832c365d9e1f30d535d9f', '2017-01-20 01:39:35', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(144, 'kevin.kevinwidjaja@gmail.com', 'shbweb2', '1967ce351df8a481a4fa21094abb57c4', '2017-01-20 01:43:56', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(145, 'agathamariajossephine@gmail.com', 'shbdg1', '161dcfc4dc9d7827c089ab2c8a232c9e', '2017-01-20 01:48:09', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(146, 'vinnesvm@gmail.com', 'shbdg2', 'd758c1a23257aeeac4aa47541a4bdeb9', '2017-01-20 01:50:23', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(147, 'adindafitria5g@yahoo.com', 'shbdg3', 'c4fd3f8f4cf4155de99d1bfef930e656', '2017-01-20 01:52:18', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(148, 'gkuwanto@gmail.com', 'shbprog1', '63de4e1db0fb3a9ca57145c8799dfe7b', '2017-01-24 00:36:53', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(149, 'firdyadi@gmail.com', 'firdyadi', '19e0e361ecaf7b3d90a5a0a5528f1d96', '2017-01-27 13:09:51', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(150, 'info@smkbpi.sch.id', 'smkbpi', '354d0267474a42ecf4538a3affc8090f', '2017-02-03 07:18:18', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(151, 'agisabhi@smk-informatika-srg.sch.id', 'smkinformatikakotaserang', 'ac150ea9cbf7d540032805685096433e', '2017-02-11 10:12:09', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(153, 'fattahurrasyid@yahoo.com', 'rasyid', 'cc2eb00ecdc8fdb2bc851739e2e6803f', '2017-01-22 04:05:19', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(154, 'pisckipratama@gmail.com', 'smkangkasa1margahayu', 'b5cb49b1a1dba14294a32a58b5291cfc', '2017-01-22 10:23:21', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(155, 'alvianialvii@gmail.com', 'alviani', '38f88f0a43446ba0d4e014530cb69532', '2017-01-23 03:49:17', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(156, 'smasiji_teladan@yahoo.com', 'smanegeri1yogyakarta', '52e4688a22f803e224d8f3a68e2bbbd1', '2017-02-09 08:01:36', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(157, 'dlohanata@gmail.com', 'shbprog2', '1b5ae3c5c7152b4c7d965adef74a737f', '2017-01-24 00:58:52', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(159, 'muhamad.iqbal.ifeny@gmail.com', 'iqbalifeni', 'f2f8be945890c81e5fa76aaa88ac3402', '2017-01-24 01:23:54', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(161, 'giyas.fauzi.rasyid@gmail.com', 'animasitkjsmkbpi', 'a816425d3486fde9af300e772fb83918', '2017-02-01 12:35:50', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(162, 'alifgufron1515@gmail.com', 'dgtkjsmkbpi', '14d104d44e3d2f317043f36d3d08f50d', '2017-02-01 12:34:44', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(163, 'radiyansyahit1@gmail.com', 'dg2tkjsmkbpi', 'f545b936f0fe783aa67bc89a07a0dd2f', '2017-02-01 12:35:05', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(164, 'alifgufron1515@gmail.com', 'pcatkjsmkbpi', '900bb3f12228a22ccb2fa7028c5950a9', '2017-02-01 12:35:11', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(165, 'muhammadizan21@gmail.com', 'kjtkjsmkbpi', 'fb8b5d2ee03ad10d56a2bf51c2ff9f9e', '2017-02-01 12:35:22', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(166, 'varizkimazaya@gmail.com', 'kj2tkjsmkbpi', '99c88cde1dc38d17d3fbd4015724dcf3', '2017-02-01 12:35:36', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(167, 'slametfaisal1@gmail.com', 'smkpgrijatibarang', '50a0ca599c8d72ca138f84db8de0aeb8', '2017-02-11 13:39:07', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(168, 'evan.agustian.148@gmail.com', 'evanagustianlukius', '8d644abd48efc8c8f66c65c368081459', '2017-01-24 13:56:16', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(169, 'smk13bdg@gmail.com', 'smknegeri13bandung', 'ac7f98917faf5f38acc039925c346ce7', '2017-02-10 00:34:07', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(170, 'poetra05@gmail.com', 'smkpasundan1cimahi', 'd8e87b836e3e4daa8480af3a762f6f77', '2017-02-08 05:23:17', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(171, 'mvrudiansyah0207@gmail.com', 'mfandirudiansah', 'e0c3bcad02c6d4fe3507eb772538e03f', '2017-01-25 15:58:40', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(172, 'ismayanaa89@gmail.com', 'ismayana', 'eee74ddac1a986c582544ac8797ed542', '2017-02-02 02:14:22', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(173, 'dwifp@student.upi.edu', 'dwiffitriq', '92ef90f3f25f7d427645711daf9de199', '2017-01-26 08:31:42', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(174, 'dalludella@gmail.com', 'satelit17', 'c7eab27e0beca3140251f57a8e40dec2', '2017-02-08 11:19:19', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(175, 'dalludella@gmail.com', 'satelit17', 'c7eab27e0beca3140251f57a8e40dec2', '2017-01-26 10:01:13', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(176, '', 'satelit17', 'c7eab27e0beca3140251f57a8e40dec2', '2017-01-26 10:05:37', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(177, '', 'satelit17', 'c7eab27e0beca3140251f57a8e40dec2', '2017-01-26 10:16:36', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(178, 'naichanme@gmail.com', 'sheilahnuf', '58fb9df136755130393c7421cb4012f2', '2017-01-26 11:10:39', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(179, 'bude_smd@yahoo.co', 'budiana', '7d90c279fe32d71195abeb817bccd7da', '2017-01-26 11:19:11', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(180, 'Andrewfanggara21@yahoo.com', 'smadarmayudha', 'c40d584bfa3a5f54342793bac1332c88', '2017-02-11 15:35:26', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(182, 'Andrewfanggara21@yahoo.com', 'teguharmy', 'c40d584bfa3a5f54342793bac1332c88', '2017-01-26 12:59:35', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(183, 'info@venobut.com', 'smanegeri1pati', 'a7cb9f86a3f04555d0e9b10a32a66861', '2017-02-10 08:18:31', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(184, 'ebensantosa9@gmail.com', 'ebensantosa', 'ef4fc6d98104ebd053351682c69047ef', '2017-02-07 02:21:46', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(185, 'faisalikevil@gmail.com', 'faisal', '34a66f37a7dfc1711dc2ff4dfe35e47b', '2017-02-11 09:48:16', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(186, 'smkn1pnyk@yahoo.com', 'smknegeri1panyingkiran', '07b78b2bdb57438144f7878a52ded03b', '2017-02-01 02:54:54', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(187, 'Varistya.f@yahoo.com', 'varistyafarhan', '7586b87a35dc345aeaab587a1529ded0', '2017-01-27 04:06:50', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(188, 'adminweb@smkn1subang.sch.id', 'smkn1subang', 'a3bbd67a75be6552fb7feeca4f445090', '2017-02-10 09:00:18', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(189, 'smkpu.bdg@gmail.com', 'smkpunegeribandungprovinsijawabarat', '4757bac86f5bd8b44d1fa36367e889e4', '2017-01-27 08:13:02', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(190, 'muhamadnopa97@gmail.com', 'muhamadnopa', 'd2115bf7cefa7363a4a3dcb817d52b72', '2017-01-27 10:05:30', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(191, 'vincealek2@gmail.com', 'vincent', 'f77817189d9c54113c71b7224f415592', '2017-02-06 03:24:27', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(200, 'ainiyahchan@gmail.com', 'ainiyahputri', '538679e551c00bc1483f47613971a0ef', '2017-01-28 13:10:23', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(201, 'visualmavenco@gmail.com', 'visualmaven', '192a553d3a3ecdfcc051fe9663269d1a', '2017-01-28 22:21:47', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(202, 'tkjsmkn7smg@gmail.com', 'smknegeri7semarang', 'd6fcd7012bb8285e8f34d63cb0b0a3fc', '2017-01-29 00:03:27', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(203, 'indrifputri@gmail.com', 'indrifp', '42bf96fa3b0479749e1c549897730848', '2017-02-07 12:19:01', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(204, 'gammamuhammad36@gmail.com', 'gammamuhammadnajmudin', '8e895bf7395d9e8270fba1850f92b517', '2017-01-29 06:40:30', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(205, 'dq030775@gmail.com', 'smknegeri1cimahi', '9bf69d3665928fea6201eac0cc320bcc', '2017-02-09 02:41:47', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(206, 'venomkomputer@gmail.com', 'sman2bekasi', '06ef03ede5c59f0e4171b65b436a46f9', '2017-02-07 13:35:43', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(209, 'frenicohansen@gmail.com', 'venom', '06ef03ede5c59f0e4171b65b436a46f9', '2017-02-01 12:36:43', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(210, 'info@sman1subang.sch.id', 'smanegeri1subang', 'ec96d666a816420cc38972ca98304108', '2017-02-11 01:11:51', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(211, 'fandri66@gmail.com', 'fandrip', 'b7e7afc92651675095fa54f27f9bb786', '2017-01-30 14:06:58', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(212, 'smkmiftahulhuda7@gmail.com', 'miftahulhuda', 'b59ed571f10f8f5bceac01d78af46958', '2017-02-03 12:21:59', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(213, 'budiwidodo.crb@gmail.com', 'mihud', '4f89178c745ec3f99ff173fcd818fd55', '2017-02-02 13:40:50', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(214, 'arifr1212@gmail.com', 'smkangkasa1margahayu', '083d3c2d6ea30c950e1a2a041006260d', '2017-01-31 01:49:26', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(215, 'pisckipratama@gmail.com', 'smkangkasa1margahayu', '083d3c2d6ea30c950e1a2a041006260d', '2017-01-31 01:50:06', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(216, 'poetra05@gmail.com', 'abalnetwork', 'd8e87b836e3e4daa8480af3a762f6f77', '2017-02-03 10:48:39', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(217, 'poetra05@gmail.com', 'abalweb', 'd8e87b836e3e4daa8480af3a762f6f77', '2017-02-08 03:46:54', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(218, 'poetra05@gmail.com', 'abalpc', 'd8e87b836e3e4daa8480af3a762f6f77', '2017-02-08 03:47:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(219, 'sman7bdg@yahoo.com', 'sekolahmenengahnegeri7', '6a26712f28d6cdc9324fb58e6fbac59a', '2017-01-31 12:16:19', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(220, 'g3njihasna@gmail.com', 'yenisuhaeni', '4951c2e9b453c33a0b3a0c33401fd784', '2017-01-31 14:02:30', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(221, 'smkn1pnyk@yahoo.co.id', 'smknegeri1panyingkiranmajalengka', '16e4179ea0ec6d988133951c00c3ff26', '2017-02-07 07:26:10', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(222, 'amarzakaf@gmail.com', 'smknegeri1panyingkiranmajalengka', 'c1510ba5955bb633f217ffaf3a057f8f', '2017-02-01 03:14:11', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(223, 'ghalib.ath@gmail.com', 'ash', 'e24e74be5a8c2dd1926083874bd6c995', '2017-02-01 03:28:34', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(224, 'poetra05@gmail.com', 'abal_animasi', 'd8e87b836e3e4daa8480af3a762f6f77', '2017-02-08 03:48:22', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(226, 'irfanheru66@gmail.com', 'irfan', '53eb7ba80b58253918e6aa735791be0d', '2017-02-01 11:38:44', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(227, 'gmrzki@yahoo.com', 'smknukaplongan', '753de0b683f5cbf42e8e7db81e5ab8b3', '2017-02-02 00:21:34', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(228, 'auliaghni30@gmail.com', 'diksikustik', '6a49385c220c7ba079c87320ff50a4ed', '2017-02-09 02:03:26', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(229, 'smkn6garut@gmail.com', 'smknegeri6garut', '1a85a31e717c9e34791e8833183fa0b3', '2017-02-04 00:27:19', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(230, 'smkn2be@gmail.com', 'smkn2baleendah', 'cafe605dac0156fce5a8666b790bc232', '2017-02-02 02:38:44', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(231, 'yogi.canna@gmail.com', 'smkn6garut', 'b6f2f2c104551f82903dfbe9ba81bc04', '2017-02-02 13:40:06', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(234, 'yogi.canna@gmail.com', 'smknegeri6garut', '359eb717b06848846eac8315810b5e86', '2017-02-02 06:13:21', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(235, 'm.dutaacpermana@gmail.com', 'satelit17', '83814af42d17f4fbdbc0309dab438c3f', '2017-02-02 10:50:52', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(237, 'fandri66@gmail.com', 'brainwareofsmansa', 'eee30e42aa2f52f5ef972cd180b27e49', '2017-02-02 12:19:18', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(238, 'mgfebrian@gmail.com', 'brainwareofsmansa', 'f6d8cb8ff8b65f3e74f7befc207630e0', '2017-02-02 12:52:08', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(239, 'sakamotokazuma0@gmail.com', 'sakhihartanto', '5e9efd4e577cb46366a8e2c755ae269a', '2017-02-02 13:04:12', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(240, 'alfathaariqh@gmail.com', 'thaariqh', '5044755a8e63ef8f91f40267d5aa290f', '2017-02-02 13:04:37', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(241, 'nayoopa@gmail.com', 'nayopa', '756c455b0a8843bac42ebb608bd29ed2', '2017-02-02 13:25:46', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(242, 'akbar0102@student.upi.edu', 'akbarh', '3537bed8316ea2736be4ea91854bfcb8', '2017-02-09 13:11:37', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(243, 'asgum020365@gmail.com', 'sman11garut', 'b5e80248c3d2dba39cff27c885bf39f9', '2017-02-09 01:54:11', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(244, 'rpl@smkassalaambandung.sch.id', 'smkassalaambandung', '0af4da1b6c64be2fe1dd8031c8bb2036', '2017-02-03 03:09:44', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(245, 'nopinola1@gmail.com', 'nopilatipah', '25f9e794323b453885f5181f1b624d0b', '2017-02-03 03:27:05', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(246, 'agussuratna@gmail.com', 'asur', '87fa79eab3f2427882c5b8ac913c7e59', '2017-02-03 03:43:25', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(247, 'itsmanda12@gmail.com', 'bascomp', '90c8767b1b693642d3d42c2a5fc45adc', '2017-02-03 03:55:47', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(248, 'www.smkn5malang.sch.id', 'smk5malang', 'e080a6994e2edbd90b7508f327324d65', '2017-02-03 05:52:47', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(249, 'fauzanmf982@gmail', 'fauzan', '5b3a7ac1320f1caa5b824a40b76211f5', '2017-02-03 06:15:24', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(250, 'muhammadbima20@gmail.com', 'rplsmkbpi', '907d708ba8a08c193ce955281a158b6a', '2017-02-03 07:26:26', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(251, 'sma6cimahi@yahoo.com', 'smanegeri6cimahi', '91cdce688532c7122a77ac200d0e14c9', '2017-02-09 13:41:18', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(253, 'trisuardidani@yahoo.com', 'smkangkasa1margahayu', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-03 09:41:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(254, 'arifrahmansyah720@gmail.com', 'pca_sanaci_1', '41e6d77800e80d555a7c18d7c3599611', '2017-02-09 13:54:44', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(255, 'nickymr007@gmail.com', 'pca_sanaci_2', '109b7f782224dbf21356107e8b7c6d09', '2017-02-09 12:24:06', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(256, 'syahrul.falahi.5@gmail.com', 'ldg_sanaci_1', '774c49d68c59c1e1c8c90ff1f1748c84', '2017-02-09 13:55:38', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(257, 'rachmandarena@gmail.com', 'ldg_sanaci_2', '46216e52ada565b4ff4ea45a05fab804', '2017-02-09 12:24:48', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(258, 'amlandzikri@gmail.com', 'smkangkasa1margahayu', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-03 10:01:46', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(259, 'lamonesakaka@gmail.com', 'lamonesakakaiman', '3d9b1793685ceb3b1cf57c5c50230902', '2017-02-03 11:49:27', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(260, 'adnanzaidanz@gmail.com', 'adnanz', '5a2e2d0b2e11e81dfd3c3aa95d1d5008', '2017-02-03 12:02:37', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(261, 'rahmantaufik27@gmail.com', 'smkn5', '5549eea74e33fcf09d398773e666b9f0', '2017-02-07 10:03:35', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(262, 'rahmantaufik27@gmail.com', '', '4cce923129aadbf8052a216f0e24e6ec', '2017-02-09 12:26:12', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(263, 'rahmantaufik27@gmail.com', '', '4cce923129aadbf8052a216f0e24e6ec', '2017-02-03 15:46:37', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(264, 'rahmantaufik27@gmail.com', '', '4cce923129aadbf8052a216f0e24e6ec', '2017-02-03 15:47:55', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(265, 'rahmantaufik27@gmail.com', '', '4cce923129aadbf8052a216f0e24e6ec', '2017-02-03 15:48:55', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(266, 'rahmantaufik27@gmail.com', '', '4cce923129aadbf8052a216f0e24e6ec', '2017-02-03 15:49:50', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(267, 'rahmantaufik27@gmail.com', '', '4cce923129aadbf8052a216f0e24e6ec', '2017-02-03 15:50:14', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(268, 'rahmantaufik27@gmail.com', '', '4cce923129aadbf8052a216f0e24e6ec', '2017-02-03 15:50:25', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(269, 'rahmantaufik27@gmail.com', '', '4cce923129aadbf8052a216f0e24e6ec', '2017-02-03 15:50:51', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(270, 'rahmantaufik27@gmail.com', '', '4cce923129aadbf8052a216f0e24e6ec', '2017-02-03 15:51:13', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(271, 'Tikommayrama@gmail.com', 'tikomcommunity', 'fe35bb3c35e4ce6ab8cad91bf8976433', '2017-02-09 14:37:21', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(275, 'tikommayirama@gmail.com', 'tikomcommunity', 'fe35bb3c35e4ce6ab8cad91bf8976433', '2017-02-11 23:40:26', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(276, 'tikommayirama@gmail.com', 'tikomcommunity', 'fe35bb3c35e4ce6ab8cad91bf8976433', '2017-02-03 23:58:56', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(279, 'tikommayirama@gmail.com', 'tikomcommunity', 'fe35bb3c35e4ce6ab8cad91bf8976433', '2017-02-04 00:03:56', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(280, 'sman1sidoarjo@yahoo.co.id', 'smanegeri1sidoarjo', 'c29fc702635c417242d8d5f39f533fb3', '2017-02-10 14:11:27', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(281, 'faishol.amirul27@gmail.com', 'smanisda1', '1c94e7e00d5711e75567bcb955aef3be', '2017-02-06 04:29:21', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(282, 'dika.doang69@gmail.com', 'smanisda2', 'fd76e602d61b615d27ae0153b5686979', '2017-02-10 14:25:52', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(283, 'miairaantika2016@gmail.com', 'smkn1garut', 'f50ff20e2a26bb09be52572c6018d924', '2017-02-09 04:36:17', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(284, 'haikalluthfi692@gmail.com', 'pondokmoderndarussalamgontor3', 'b4524628ea340d322feffc3c1b4b6bfa', '2017-02-04 06:29:49', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(286, 'sweet_sugar89@yahoo.com', 'fahmi', '65e56fdbdbf9b07a04d41d778f3751c8', '2017-02-04 06:31:46', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(287, 'haikalluthfi692@gmail.com', 'gigabyte', 'b4524628ea340d322feffc3c1b4b6bfa', '2017-02-04 06:31:12', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(288, 'dimazzart@gmail.com', 'smkn1indramayu', '56b6274f58cd4819aa8dac1caabde824', '2017-02-10 00:34:00', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(289, 'ilhamcyber4rt@gmail.com', 'ilhamgymnastiar', 'f49f6e8055fb4a6844c00887121e3d9b', '2017-02-09 12:24:58', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(290, 'fandri66@gmail.com', 'brainwareofsmansa-pca1', '05e2f1d0850b3080ef8150fd3fbc3f38', '2017-02-09 13:00:40', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(291, 'fandri66@gmail.com', 'brainwareofsmansa-pca2', '1b16461bb5089ae74ab9608a21aee6f1', '2017-02-09 13:00:43', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(292, 'fandri66@gmail.com', 'brainwareofsmansa-pca3', '120caa6ae271be22a35f778d8a3017b1', '2017-02-09 13:00:45', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(293, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg1', '2d913e9af255dcd811461af900569b4b', '2017-02-09 13:00:47', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(294, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg2', 'bb98445d8dca49181792a669e5bfb515', '2017-02-09 13:00:49', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(295, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg3', '002866728f2f45044167c0c5980d2f31', '2017-02-09 13:00:51', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(297, 'fahmyenggar123@gmail.com', 'brainwareofsmansa-cspc1', 'fb8a89a030d86c803f50392ffe91314f', '2017-02-09 13:00:54', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(298, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg5', '673f7468d172b086e6eb139dba2adb8a', '2017-02-09 13:00:57', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(299, 'fahmyenggar123@gmail.com', 'brainwareofsmansa-cspc2', '605285e1a8a1617278e52034433a9af1', '2017-02-09 13:00:59', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(300, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg6', '2a429d0c2c759d23584333c8f860b191', '2017-02-09 14:39:26', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(301, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg7', 'add59fa2a40d03f24b2573caeb660819', '2017-02-10 11:18:45', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(302, 'fahmyenggar123@gmail.com', 'brainwareofsmansa-cspc3', '8630b9f972aeab8bdf210bb095614580', '2017-02-09 13:01:02', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(303, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg8', '6bae5ed3e16a0b7e91a4e1422504d890', '2017-02-09 14:40:23', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(305, 'fandri66@gmail.com', 'brainwareofsmansa-pca4', '24384a86b77d2406324f8d37becd74d9', '2017-02-09 13:01:05', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(306, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg9', 'e53a9e639b218b7f297d78942e2673f5', '2017-02-09 14:40:25', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(307, 'fahmyenggar123@gmail.com', 'brainwareofsmansa-cspc4', '4410ddda9eb5101e1c8a0fab5f2df794', '2017-02-09 13:01:06', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(308, 'fandri66@gmail.com', 'brainwareofsmansa-pca5', 'fa6294a7ecb492725750317565f017cd', '2017-02-09 13:01:09', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(309, 'fandri66@gmail.com', 'brainwareofsmansa-pca6', '0c1595ace1960d2569461733405ce3f2', '2017-02-09 14:40:30', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(310, 'fandri66@gmail.com', 'brainwareofsmansa-pca7', '54d8bfe9c5a03e29113cd3cddd5ae2c3', '2017-02-09 14:40:35', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(311, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg10', 'f53d4162fc09171e0a2f296b171540b9', '2017-02-09 14:40:39', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(312, 'fandri66@gmail.com', 'brainwareofsmansa-pca8', 'e6fd284421ab2419f648a17949c5a8fc', '2017-02-09 14:40:41', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(314, 'info@smkpunegerijabar.sch.id', 'smkpunegeribandungprov.jawabarat', '880f49af06c0572adee24a52c884f605', '2017-02-09 16:15:47', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(315, 'mgfebrian@gmail.com', 'brainwareofsmansa-lca1', '90dd747004edfc80433bfcdd478978ff', '2017-02-09 13:01:10', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(316, 'Ivandymaulana@gmail.com', 'brainwareofsmansa-lcw1', '01d3b0ff703e1e1ab95a721f8ef61dd3', '2017-02-09 13:01:12', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(317, 'fauzanmuharam123@gmail.com', 'brainwareofsmansa-otik1', 'c1f47a67b234474d5af771fdeb13a1c8', '2017-02-09 13:01:13', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(318, 'winayulinar@gmail.com', 'winayulinar', '8b859e79f023d2dc85f925ccd8f51ba8', '2017-02-04 15:07:23', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(319, 'riezaldii@gmail.com', 'riezaldi', 'c0043b45b95749c714ba20b7abfe28fb', '2017-02-04 15:42:55', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(320, 'fahmyenggar123@gmail.com', 'brainwareofsmansa-cspc5', 'a91770dc633abb5ed8237f0465f3eac8', '2017-02-09 13:01:15', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(321, 'tkj@smknukaplongan.sch.id', 'networkkaplongan', '753de0b683f5cbf42e8e7db81e5ab8b3', '2017-02-05 12:45:35', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(322, 'bayupandu11@gmail.com', 'bayupandu1', 'ec64ef02e4ffe789afed3eb0ba9bfbce', '2017-02-05 13:05:12', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(323, 'auyangkun@yahoo.co.id', 'smkmuhammadiyahkotapekalongan', '67712aecb50b023a0548fc91402a9b11', '2017-02-05 13:10:32', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(324, 'bayupandu001@gmail.com', 'smkmuhammadiyahpekalongan', '00872970f0d075cf8aea248f5d2399ed', '2017-02-08 05:05:07', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(325, 'bayupandu11@gmail.com', 'bayuaqibyahya', '00872970f0d075cf8aea248f5d2399ed', '2017-02-06 15:20:23', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(332, 'shofiasoleha@gmail.com', 'sofiasoleha', 'c17b37ac91d7e92f7b9395309d5bcb6d', '2017-02-05 14:20:23', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(333, 'dymorisaki@gmail.com', 'dorisyondra', '49c84a7770d479d2e8e36882f129e59b', '2017-02-05 22:32:45', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(334, 'sekretaris@mypribadi.com', 'smapribadi', '30455f47d95d6de3e7195a9ee95e205a', '2017-02-06 04:06:15', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(339, 'aristonidzar@gmail.com', 'smktarunamandiri', 'fafa17d2c369fc6f8753afe5261e25cf', '2017-02-10 10:09:02', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(340, 'rafaelgaluh@gmail.com', 'sman9bandung', '41b8a9c8e2cde8e8f9bfe2a2db02e31e', '2017-02-07 04:47:57', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(341, 'sman8yogyakarta@yahoo.co.id', 'sman*yogyakarta', 'bef04c6a6254c9f04eed179d936ee2dd', '2017-02-06 22:20:17', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(343, 'galprad99@gmail.com', 'rangquman', 'c90ba5ec61f56c94abaae9b3a6650813', '2017-02-08 11:02:26', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(344, 'fadhil.rasendriya@icloud.com', 'ninjadefuse', '41e3e29e83e3e76bcdf1cc42d42b1b40', '2017-02-10 10:51:45', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(345, 'pisckipratama@gmail.com', 'pisckifebiryansyahpratama', 'b5cb49b1a1dba14294a32a58b5291cfc', '2017-02-08 04:39:47', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(346, 'arifr1212@gmail.com', 'ariprahman', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-07 01:55:05', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(347, 'jamalude449@gmail.com', 'io', '3d9c5d378c432e9960d444aa72281157', '2017-02-06 08:10:58', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(348, 'info@smkn4bdg.sch.id', 'smknegeri4bandung', '877a103af7c24960d6a66f24fef14556', '2017-02-12 09:47:20', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(349, 'rakha.fauzi08@gmail.com', '', 'd12d5c992b2cbaf364aa00760afc855a', '2017-02-06 09:52:34', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(350, 'hurinazka10@yahoo.com', 'hurinazkamillatina', 'ce2ec1c9bde6810ec88dc773f8196fd5', '2017-02-06 11:06:19', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(351, 'siswasmkn5bdg@gmail.com', '', '280fe4c373563acc17b5cf130f397f94', '2017-02-06 15:35:12', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(352, 'siswasmkn5bdg@gmail.com', '', 'e983e9de03dd7193425e2083d5761758', '2017-02-06 15:37:22', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(356, 'siswasmkn5bdg@gmail.com', 'itc5design', 'e983e9de03dd7193425e2083d5761758', '2017-02-07 07:50:29', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(357, 'siswasmkn5bdg@gmail.com', 'itc5design2', 'e983e9de03dd7193425e2083d5761758', '2017-02-07 07:50:30', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(359, 'siswasmkn5bdg@gmail.com', 'itc5pca', 'e983e9de03dd7193425e2083d5761758', '2017-02-07 07:50:35', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(360, 'siswasmkn5bdg@gmail.com', 'itc5kj', 'e983e9de03dd7193425e2083d5761758', '2017-02-07 07:50:40', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(361, 'siswasmkn5bdg@gmail.com', 'itc5kj2', 'e983e9de03dd7193425e2083d5761758', '2017-02-07 07:50:40', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(362, 'siswasmkn5bdg@gmail.com', 'itc5pca2', 'e983e9de03dd7193425e2083d5761758', '2017-02-07 07:50:37', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(363, 'aeps2017@gmail.com', 'itc5lcw', 'e983e9de03dd7193425e2083d5761758', '2017-02-07 07:50:31', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(364, 'fandri66@gmail.com', 'brainwareofsmansa-pca9', '38e80e20619f38eba1b3b4a141803576', '2017-02-06 22:02:43', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(365, 'ivandymaulana@gmail.com', 'brainwareofsmansa-lcw2', 'b048250eede7eb4e8c0cd461bb2fbbb5', '2017-02-09 13:01:17', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(366, 'alan.nugrohadi@gmail.com', 'alannugrohadi', 'f75662d023252cd7236114dbcd6ce74f', '2017-02-06 23:29:49', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(367, 'smkinformatika.crb@gmail.com', 'smkinformatikaal-irsyadal-islamiyyah', '910998a50466e2ce5c12ad6bc77f6c73', '2017-02-11 03:48:25', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(368, 'windisapitri@student.upi.edu', 'windisapitri', '15be99be9e849e22730ad45ac2132349', '2017-02-07 00:54:43', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(369, 'kurikulum.albinaa@gmail.com', 'smaalbinaaibs', 'e1b31b9f8b2f006556bf084fa413e145', '2017-02-07 01:12:52', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(370, 'riaharyani1616@gmail.com', 'ria_haryani', '884a9d56cd532deb13b9c730d61e9f89', '2017-02-07 02:00:13', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(371, 'fatahillah1isa@yahoo.com', 'fatah_isa', '154ea3ca574fd886c23f9bad10482705', '2017-02-07 02:05:11', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(372, 'fmrivaldy@gmail.com', 'rar', '70da752fe649edac4309d5ca394f754a', '2017-02-09 12:26:14', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(373, 'marsairfansyah@gmail.com', 'amd', 'c4bf96863b445227384addc2303c20c7', '2017-02-09 12:26:15', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(374, 'hartinitri3@gmail.com', '', '486b53d3eb421b963b4927636c34cf2e', '2017-02-08 00:53:57', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(375, 'fajarmf.22@gmail.com', 'fajarmuhammadfauzi', '60489a5a7905c6c8be5ede4a9530b6a0', '2017-02-08 15:12:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(377, 'bennyherdian1@gmail.com', 'bennyherdianhidayat', 'a6e514f9486b83cb53d8d932f9a04292', '2017-02-08 15:12:31', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(379, 'naufal.fauzi00@gmail.com', 'naufalfauziluthfi', '8974c36f6db24cc7e588acf6ebf739af', '2017-02-08 15:12:35', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(381, 'ferdyansyah447@gmail.com', 'dellacapitale', '45b5d44c8826591b601195cefdd62c20', '2017-02-08 15:12:38', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(384, 'janisetiawan61@gmail.com', 'artteamanimation', '2e5bc8831f7ae6a29530e7f1bbf2de9c', '2017-02-08 11:31:47', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(385, 'adhimawafa74@gmail.com', 'smeascripter', '2e5bc8831f7ae6a29530e7f1bbf2de9c', '2017-02-08 11:30:28', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(386, 'akunbakti5@gmail.com', '', '2e5bc8831f7ae6a29530e7f1bbf2de9c', '2017-02-11 13:11:31', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(387, 'akunbakti5@gmail.com', 'muhammadbaktirizaldi', 'f50ff20e2a26bb09be52572c6018d924', '2017-02-08 11:29:02', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(388, 'indrifp24@gmail.com', 'indrii', '4364adf9417394a356d9752f1e20e78d', '2017-02-07 10:39:19', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(389, 'hajir.nf@gmail.com', 'sman2labakkangboardingschool', '51a31706e0a2c6b844a08691190d7f73', '2017-02-09 12:30:14', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(390, 'hajir.syam.hs@gmail.com', 'smandala', 'dc2546383440cf8a6b16085d3f7fba51', '2017-02-10 00:26:56', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(391, 'gilangilyasa@gmail.com', 'gif', 'b63fad7c064cccf833996e3585f73d28', '2017-02-07 11:53:00', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(392, 'pinakestikintan981230@gmail.com', 'pinakestikintan', 'f9024a0147e8295d7f2eb92ce3d7bf69', '2017-02-07 14:06:17', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(393, 'pinakestikintan@ymail.com', 'sman11bandung', '1785f1669e51113a53d2f66f98689f66', '2017-02-10 14:24:16', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(394, 'i@alanmsm.xyz', 'smanegeri1baleendah', '2a92ea88de675808825b8d22359d0ef8', '2017-02-09 23:20:33', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(395, 'julijuppret@gmail.com', 'juli', '49447a8b72d96eb9b900f3d6f3036f87', '2017-02-07 21:48:44', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(396, 'mfmaulana08@gmail.com', 'skinfa', '743997211456f664e9f60b93194bbde3', '2017-02-10 11:19:11', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(397, 'fatah1isa@gmail.com', 'osbit', '154ea3ca574fd886c23f9bad10482705', '2017-02-08 00:00:56', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(398, 'hasffi65@gmail.com', 'muhamadasbirafiyudin', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-08 13:32:48', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(399, 'amlandzikri@gmail.com', 'dzikrikhairullahamlanm', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-08 11:35:10', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(402, 'gulovra10@gmail.com', 'skinfanetworking', '9cf73d37666bce9970544f590171a354', '2017-02-10 11:19:14', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(403, 'nursyariefabdullah@gmail.com', 'skinfaassembli', 'f94838df2f9f42ec45c7db24984948ac', '2017-02-10 11:19:08', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(404, 'radityanpradana@gmail.com', 'skinfadesign', 'd7292da28d99a50ac8b58f516b9f8fe6', '2017-02-10 11:19:07', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(405, 'rizkihgd99@gmail.com', 'rizkikhairunfadhilla', '791edd293727a32c3653524115899bbc', '2017-02-11 10:34:45', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(406, 'fahrularyadi@smk-informatika-srg.sch.id', 'nusantara', '377db3b1a5ac8d1240ba7da98b9ce3ca', '2017-02-11 08:55:45', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(407, 'rpl.rizkikf.2016@gmail.com', 'smkinformatika', 'd9b131fc820859c5839d3b221d46da6f', '2017-02-11 09:02:24', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(408, 'rizkihgd99@gmail.com', 'zero3', '22e7979623b3129a011c90c1a6459030', '2017-02-09 14:35:50', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(409, 'agustiyana007@gmail.com', 'animatsoe', '7528a6ecc0d5bc5f82ff5b69398c9c5e', '2017-02-09 12:25:16', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(410, 'desta.priatama88@gmail.com', 'destapriatamarahmansyah', '2e5bc8831f7ae6a29530e7f1bbf2de9c', '2017-02-08 11:29:44', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(411, 'informatikaskyone21@gmail.com', 'dani', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-08 11:36:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(413, 'smait@albinaa.co.id', 'smaitalbinaaibs', '5d4c42c6e70237c9a1c735415d6c57c7', '2017-02-09 02:11:57', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(414, 'trisuardidani@yahoo.com', 'skyonewebclub', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-08 13:38:42', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(416, 'dzerlangga@gmail.com', 'dandizusitamaerlangga', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-08 13:34:05', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(418, 'ferdinandharyanto39@gmail.com', 'ferdinandharyanto', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-08 13:34:30', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(419, 'anisadestiana17@gmail.com', 'dionrakaariri', '12ab90928ba9e3a05694d2e9da46a9db', '2017-02-08 11:38:31', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(420, 'stefanusadi307@gmail.com', 'stefanusadinugroho', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-08 13:35:39', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(421, 'anisadestiana17@gmail.com', 'deffafebriand', '12ab90928ba9e3a05694d2e9da46a9db', '2017-02-08 11:38:20', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(422, 'dimyati336@gmail.com', 'ahmaddimyati', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-08 13:36:05', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(423, 'dikaanggoro15@gmail.com', 'dikaanggoro', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-08 13:37:19', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(424, 'roes_byandra@gmail.com', 'roesbyandra', '083d3c2d6ea30c950e1a2a041006260d', '2017-02-08 11:40:28', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(425, 'info@smaplusmuthahhari.sch.id', 'smaplusmuthahhari', 'b3aaa3492b254a2286b629b32251c113', '2017-02-09 06:41:06', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(426, 'info@smaplusmuthahhari.sch.id', 'smuth', '1135064cd98e06c5644a5c8765f44127', '2017-02-08 11:40:31', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(427, 'dq030775@gmail.com', 'smkn1cimahi', '9bf69d3665928fea6201eac0cc320bcc', '2017-02-08 06:49:09', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(429, 'dq030775@gmail.com', 'smkn1cimahi-1', '9bf69d3665928fea6201eac0cc320bcc', '2017-02-09 03:32:57', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(430, 'dq030775@gmail.com', 'smkn1cimahi-2', '9bf69d3665928fea6201eac0cc320bcc', '2017-02-09 03:32:52', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(431, 'info@smkifsmd.sch.id', 'smkinformatikasumedang', 'b3e595ab06362376bceaee3ca25d8bdc', '2017-02-11 01:14:22', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(432, 'dq030775@gmail.com', 'smktipembangunan-1', '9bf69d3665928fea6201eac0cc320bcc', '2017-02-09 03:31:49', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(433, 'dq030775@gmail.com', 'smktipembangunan-2', '9bf69d3665928fea6201eac0cc320bcc', '2017-02-09 03:31:55', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(434, 'otsufy.11@gmail.com', 'nisfy', '03b1ca3291ab09031cb2e15df61848ee', '2017-02-09 09:30:54', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(435, 'aris_hendaris@yahoo.com', 'smanegeri2cirebon', '6212f6283477b91b2216ba16d652d45c', '2017-02-11 08:18:07', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(436, 'alihasanasyari@outlook.com', 'satelit17', 'dc4408248653e134630c89d5ebe3947e', '2017-02-08 07:43:52', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(437, 'alihasanasyari@outlook.com', 'satelit17', 'dc4408248653e134630c89d5ebe3947e', '2017-02-08 07:44:34', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(438, 'alihasanasyari@outlook.com', 'satelit17', 'dc4408248653e134630c89d5ebe3947e', '2017-02-08 07:46:24', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0);
INSERT INTO `tb_account` (`account_id`, `account_email`, `account_username`, `account_password`, `account_log`, `account_category_id`, `account_token`, `account_image`, `account_status`) VALUES
(439, 'alihasanasyari@outlook.com', 'satelit17', 'dc4408248653e134630c89d5ebe3947e', '2017-02-08 07:47:41', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(440, 'alihasanasyari@outlook.com', 'satelit17', 'dc4408248653e134630c89d5ebe3947e', '2017-02-08 07:48:25', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(441, 'alihasanasyari@outlook.com', 'satelit17', 'dc4408248653e134630c89d5ebe3947e', '2017-02-08 07:49:37', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(442, 'alihasanasyari@outlook.com', 'satelit17', 'dc4408248653e134630c89d5ebe3947e', '2017-02-08 07:50:34', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(448, 'evan.agustian.148@gmail.com', 'evanagustianlukius', '675df85f44b7e08c4c749918a9e00e12', '2017-02-08 08:10:55', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(450, 'alihasanasyari@outlook.com', 'satelitnimation', 'dc4408248653e134630c89d5ebe3947e', '2017-02-08 11:24:47', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(451, 'alihasanasyari@outlook.com', 'satelitteam', 'dc4408248653e134630c89d5ebe3947e', '2017-02-08 11:22:34', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(452, 'alihasanasyari@outlook.com', 'satelit17', 'dc4408248653e134630c89d5ebe3947e', '2017-02-08 08:32:38', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(453, 'rizal.drawrs@gmail.com', 'compsr', '996d8af51d2416a22c1f0df3136d405d', '2017-02-10 11:19:24', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(454, 'jijajija868@gmail.com', 'sman11bandung', 'd3a1b3dfa536bc5773299d558e96ace8', '2017-02-08 08:37:10', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(455, 'nickytabps@gmail.com', 'nickytabps', '6e0dea79ed9c87fbb325d069123e6642', '2017-02-10 07:41:36', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(456, 'sman15bdg@yahoo.com', 'smanegeri15bandung', 'fff65fa49da609540df7f132d52b4e9a', '2017-02-08 13:25:09', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(457, 'info@sman4bdg.sch.id', 'sman4bandung', '6e4fc94bc23bfb28c653dc033a5d41fd', '2017-02-08 09:06:24', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(458, 'naufal_fauzi51@live.com', 'm.naufalferyanto', 'ce1c4f650812f5fd2dc0d5e80710df0f', '2017-02-08 15:12:33', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(460, 'i@alanmsm.xyz', 'karbit', 'd7421fa7ff192bdbdbcf0eb05716b07c', '2017-02-08 09:17:29', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(462, 'kikipratama61@gmail.com', 'muhammadrizkypratama', '35a0290bedd634bef3bcaecdb6a77af4', '2017-02-08 11:24:08', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(464, 'alfindwiyanto74@gmail.com', 'alfindwiyanto', '35a0290bedd634bef3bcaecdb6a77af4', '2017-02-08 11:40:05', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(466, 'merza.bolivar@gmail.com', 'verified', 'c9965044100bed295124fbf682368045', '2017-02-08 09:57:48', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(467, 'allinurmagribi@gmail.com', '', 'c9965044100bed295124fbf682368045', '2017-02-08 10:01:14', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(468, 'radeniqbalhibatullah@gmail.com', 'animasiverified', 'c9965044100bed295124fbf682368045', '2017-02-08 10:03:40', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(469, 'satriafauzan@rocketmail.com', '', 'c9965044100bed295124fbf682368045', '2017-02-08 10:05:42', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(470, 'fahmibrillian@gmail.com', 'greennosoft', '45d0212264e6cc5dcb7396a4411c5200', '2017-02-09 12:26:17', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(471, 'merza.bolivar@gmail.com', '', 'c9965044100bed295124fbf682368045', '2017-02-08 10:07:49', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(472, 'salsabila.harnanda.d@gmail.com', 'karbit', '0f231b0b667bb743a8d1efbd55b1d7db', '2017-02-08 10:26:02', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(474, 'farispyurangi@gmail.com', 'karbit', 'e2f1f5e35f606609448ff82e19285d5e', '2017-02-08 10:28:51', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(475, 'cecep_fery@windowslive.com', 'smkn1katapang', 'b22e6baca97c39f034a3aa701a4008ab', '2017-02-09 06:22:06', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(476, 'senisilvia1308@gmail.com', 'senisilviasatriani', 'b849df34b6aa04aebb8c21f8258c127f', '2017-02-09 04:49:15', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(477, 'arilalfaj@gmail.com', 'arilalfajrinurrohman', '9044065317ab6accfd3722fed33d1f00', '2017-02-09 04:50:53', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(478, 'fahrezaadifya@gmail.com', 'fahrezaadifya', '670b14728ad9902aecba32e22fa4f6bd', '2017-02-09 04:50:55', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(479, 'rivadimas28@gmail.com', 'rivadimaspangestu', '34c2d1f1b56528e62e69978a788bc9ec', '2017-02-09 04:49:33', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(480, 'alyazenita27@gmail.com', 'alyazenita', 'c2a96e701e29d4ee54e891ff50a200de', '2017-02-09 04:50:37', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(481, 'evan.agustian.148@gmail.com', 'evanagustianlukius', 'e800e491e6007678d681bcd90def57ed', '2017-02-08 12:59:02', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(482, 'heavenalifz@gmail.com', 'unitedrevolution', '020854ed101efc16e9b8fda8dc739fb1', '2017-02-09 04:49:26', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(484, 'nurzaman920@gmail.com', 'muhammadnurzamanfirdaus', 'b9c93fbdfd2a30504e05d3b0b32307da', '2017-02-09 04:50:41', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(485, 'fadhil1023@gmail.com', 'si-fi', '9f5dd3bf32dcb4ac27de2f3bf95cb891', '2017-02-09 04:50:32', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(487, 'dhikayokim@gmail.com', 'cerberus', '5ec99d124794d57d91a312087257fd75', '2017-02-09 04:50:28', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(488, 'romeoghassany1471@gmail.com', 'andromaeda', '61f95a5c059aa891c12854eda2f77574', '2017-02-09 04:50:50', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(489, 'spugarut@gmail.com', 'sman11garut', 'd41d8cd98f00b204e9800998ecf8427e', '2017-02-08 13:44:25', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(491, 'msultanpinto@gmail.com', 'sebelas-2', 'd41d8cd98f00b204e9800998ecf8427e', '2017-02-09 03:31:03', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(492, 'gemafebri@gmail.com', 'sman11garut', '6177739278244d41c9360fe74c856ece', '2017-02-08 14:30:09', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(493, 'adnanfarras12@gmail.com', 'sebelas-1', '41231eb296f173581cbc92299dced8ef', '2017-02-09 03:31:06', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(494, 'gemafebri@gmail.com', 'sman11-2', '6177739278244d41c9360fe74c856ece', '2017-02-09 03:29:28', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(495, 'S4LFARIDZI@gmail.com', 'sman11-3', '7ce4c294df7ad8b13ae7e947058c7a28', '2017-02-09 03:29:48', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(496, 'salmanalparizzi@gmail.com', 'sman11-4', 'e4681e5746de859b54937687124d6881', '2017-02-09 03:29:51', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(497, '', 'hilmial-wahid', 'd41d8cd98f00b204e9800998ecf8427e', '2017-02-10 01:05:18', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(498, 'fefeyhilmi2010@gmail.com', 'hilmial-wahid', 'd3a1b3dfa536bc5773299d558e96ace8', '2017-02-09 01:30:03', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(499, 'smanpar@yahoo.co.id', 'sman1parongpong', 'b51b6b6a3e3e286466db0991ce7de1ed', '2017-02-09 09:42:43', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(500, 'anangsuryana2@gmail.com', 'man1kotasukabumi', '71b24f70dbc3a1cd3169ddbb79fb350f', '2017-02-10 10:26:12', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(501, 'banisultan@gmail.com', 'muhammadsultanbani', 'd3a1b3dfa536bc5773299d558e96ace8', '2017-02-10 01:15:47', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(502, 'wilmanrosadi23@gmail.com', 'ics24', '8ed4b7237472ffb510cb24c3993bde15', '2017-02-09 12:27:31', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(503, 'regsinatramuhammadh@gmail.com', 'ics23', '5aafbb462597cccbd557083818a79468', '2017-02-09 12:27:34', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(504, 'ihsanahmadshiddiq@gmail.com', 'ics25', '35c075ac485c65642f2bede02d413f25', '2017-02-09 12:27:35', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(505, 'aldyagustiansyahtamvan@gmail.com', 'aldyagustiansyah', 'c8837b23ff8aaa8a2dde915473ce0991', '2017-02-09 04:50:44', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(506, 'obiismail17.oi10@gmail.com', 'ics22', '4951c07edbfe187b0b3c3568113fbf67', '2017-02-09 12:27:38', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(507, 'nanik.supiati@gmail.com', 'smaalazharsyifabudiparahyangan', '119c1fc5a80d1a87e3c9f4c9e45e26d0', '2017-02-10 05:58:33', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(508, 'cahyaramdansyah12@gmail.com', 'cahyaramdansyah', '30a313f95e5765c955d52216d96e654a', '2017-02-09 04:50:46', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(509, 'smkn1majalengka@gmail.com', 'smkn1majalengka', '125b8b6f508d6d79f0ea4f6e0decd0ce', '2017-02-09 03:02:00', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(510, 'fajarhijaz11@gmail.com', 'ics27', '79c0db920f9712034ddc0c2549875734', '2017-02-09 12:27:40', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(511, 'wiranata198@gmail.com', 'smknegeri1purwakarta', '18347dab1fd16a2c98f9d23acfea2757', '2017-02-09 14:43:44', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(512, 'koesnandar237@gmail.com', 'ics26', '5e019f3acf55d25aee986f6b78814f3a', '2017-02-09 12:27:43', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(513, 'atepmugni0@gmail.com', 'ics28', '30427cbcb8bbd579f0ba1280360c3d93', '2017-02-09 12:27:48', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(514, 'aditkoko765@gmail.com', 'ics29', '658d2fb849bc981dbac6b4e6e885bfcc', '2017-02-09 12:27:51', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(515, 'rikiriswandi206@gmail.com', 'ics30', '0f36af630b1fa085e07aafa4b40593c1', '2017-02-09 12:27:55', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(516, 'aditkendra@gmail.com', 'ics31', 'aba2146fd9cddd4f1b218800e5edfbe0', '2017-02-09 12:28:03', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(517, 'fitriansyahjaka@gmail.com', 'ics32', '644d8c0ddc711f5cd9681dd79601405b', '2017-02-09 12:28:07', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(518, 'badlanmuharrom@gmail.com', 'ics33', 'b57f7d1c8c2d1b1812f7f841e0127d24', '2017-02-09 12:28:11', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(522, 'fhajarmuhamad@gmail.com', 'andikman12v.3', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:30:31', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(523, 'myshowbiz@gmail.com', 'oray''s', '76ad21056e0c83152b7525c02841529c', '2017-02-09 12:22:44', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(524, 'rizkyirwana@gmail.com', '', '27f2c81ba9ed2818898c70531161ed98', '2017-02-09 03:32:29', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(525, 'myshowbiz@gmail.com', 'sanca''s', '2af7c61e6e4b5822ed5f327795dbe8c2', '2017-02-09 12:22:50', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(526, 'chandika7d@gmail.com', 'orbitwebdev', '4f390773e143e1847a96a424974d7644', '2017-02-09 12:26:22', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(527, 'adhimeong@gmail.com', 'yogsrr', '76ad21056e0c83152b7525c02841529c', '2017-02-09 12:23:02', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(528, 'adhimeong@gmail.com', 'h2o2', '2af7c61e6e4b5822ed5f327795dbe8c2', '2017-02-09 12:23:06', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(529, 'nemo.duit@gmail.com', 'arphdez.', '64195f90e187821418d9c1ddb174ab87', '2017-02-09 06:21:14', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(530, 'komaraderii@gmail.com', 'arphdez.', '2b2307d5ade9ce30a44e72f8566784a3', '2017-02-09 03:43:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(531, 'agit.trinadi2@gmail.com', 'techno13', '76ad21056e0c83152b7525c02841529c', '2017-02-09 12:23:22', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(532, 'agit.trinadi2@gmail.com', 'deremdem13', '2af7c61e6e4b5822ed5f327795dbe8c2', '2017-02-09 12:23:25', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(533, 'akashiseijurolbm@gmail.com', 'ics34', 'b7bbb096cc160ded9fd2e0acf25b28e9', '2017-02-09 12:27:28', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(534, 'ihsanfadhel18@gmail.com', '', '05ff730ce86a8da5be1e5b8607d527a3', '2017-02-09 03:48:49', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(535, 'hartinitri3@gmail.com', 'delta13', '76ad21056e0c83152b7525c02841529c', '2017-02-09 12:22:32', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(536, 'hartinitri3@gmail.com', 'n13', '2af7c61e6e4b5822ed5f327795dbe8c2', '2017-02-09 12:22:37', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(537, 'kuwat.santoso84@gmail.com', 'tcp/ip', '76ad21056e0c83152b7525c02841529c', '2017-02-09 12:23:29', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(538, 'kuwat.santoso84@gmail.com', 'uy', '2af7c61e6e4b5822ed5f327795dbe8c2', '2017-02-09 12:23:31', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(539, 'kuwat.santoso84@gmail.com', 'cmd', '55ca5fce24f4d272b27d5b10310e102a', '2017-02-09 12:23:32', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(540, 'kania.dewi.18@gmail.com', 'pentool', '76ad21056e0c83152b7525c02841529c', '2017-02-09 12:22:19', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(541, 'kania.dewi.18@gmail.com', 'napskoy', '2af7c61e6e4b5822ed5f327795dbe8c2', '2017-02-09 12:22:26', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(542, 'nogimuharam@gmail.com', 'thirteenager', '76ad21056e0c83152b7525c02841529c', '2017-02-09 12:23:34', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(543, 'nogimuharam@gmail.com', 'mplisquad', '2af7c61e6e4b5822ed5f327795dbe8c2', '2017-02-09 12:23:40', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(544, 'fadillah.rahmat@gmail.com', 'smkn1sumedang', 'b999fa21cee23b763734085d409ee1af', '2017-02-09 11:46:23', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(545, 'fadillah.rahmat@gmail.com', '', 'b999fa21cee23b763734085d409ee1af', '2017-02-09 04:34:17', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(547, 'fhajarmuhamad@gmail.com', 'andikman12v.1', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:30:36', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(548, 'Putrirufaidas@gmail.com', 'putrirufaidasabrina', '35a0290bedd634bef3bcaecdb6a77af4', '2017-02-09 04:51:56', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(550, 'fhajarmuhamad@gmail.com', 'andikman12v.2', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:30:41', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(551, 'fadillah.rahmat@gmail.com', 'nec', 'b999fa21cee23b763734085d409ee1af', '2017-02-09 12:35:26', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(552, 'fhajarmuhamad@gmail.com', 'andikman12v.4', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:30:44', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(553, 'fhajarmuhamad@gmail.com', 'andikman12v.5', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:30:47', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(554, 'fhajarmuhamad@gmail.com', 'andikman12v.6', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:30:58', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(555, 'rafideveloper18@gmail.com', 'mohamadrafialfariz', '6bd1d933581186a459bd38918d65074d', '2017-02-09 04:55:09', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(556, 'fadillah.rahmat@gmail.com', 'nec2', 'b999fa21cee23b763734085d409ee1af', '2017-02-09 12:35:28', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(557, 'g.alfazri1987@gmail.com', 'maydas159', '50a0ca599c8d72ca138f84db8de0aeb8', '2017-02-11 13:08:44', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(558, 'yenhndayani@gmail.com', 'sman1garut', 'a83d4ad5afa5cd901bce3d37ae09261d', '2017-02-09 08:47:48', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(559, 'azis.naufal@gmail.com', '', 'a46f167daf855318afced0ade78b314e', '2017-02-09 19:40:04', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(560, 'slametfaisal1@gmail.com', 'maydas159', '50a0ca599c8d72ca138f84db8de0aeb8', '2017-02-09 05:00:08', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(561, 'amilio.ardha@gmail.com', '', 'c96afe716e0885102f7128ab0d3da446', '2017-02-09 05:01:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(562, 'nikencarolina@gmail.com', 'niken', '546ea0a2df5c19abf32e9a80b6400e71', '2017-02-09 12:37:20', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(563, 'fmoch00@gmail.com', 'mfirdausft', '493c236938b080cbd7cba42c75105e38', '2017-02-09 12:37:22', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(565, 'milham.ashshiddiqi@gmail.com', 'milhamah', 'f9137123d5945b95cc320578698591df', '2017-02-09 12:37:24', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(566, 'qns30nessac@gmail.com', 'qalbunatasyasalsabila', 'fb283fe9f6b2500283eda8df5ecfe32d', '2017-02-09 12:37:26', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(567, 'syiffafp5@gmail.com', 'merdeka91', '25d55ad283aa400af464c76d713c07ad', '2017-02-09 12:37:28', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(568, 'rahmaericare@gmail.com', 'rahmaerica', '1336d1b0d6cfcc5dc11ae96e655e1019', '2017-02-09 12:37:30', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(569, 'mrizky04@gmail.com', 'mrm', '1247f38895c4a3bef59e49a88bad76d0', '2017-02-09 12:37:33', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(570, 'aqimelya08@gmail.com', 'otik91', '9501fcea48175a1da7d07ec41c0c3724', '2017-02-09 12:37:34', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(571, '', '', 'd41d8cd98f00b204e9800998ecf8427e', '2017-02-09 05:41:34', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(572, 'ninenick_68@yahoo.com', 'muhammadadityamahardhika', 'fffa6525a1684a49a1d3a02062780e64', '2017-02-10 04:34:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(573, '', 'bta91', 'd41d8cd98f00b204e9800998ecf8427e', '2017-02-09 12:37:36', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(574, 'galihmramdan17@gmail.com', 'cerberus', '6a2857a0b19b4c394f1ac3c5a76a76d6', '2017-02-09 05:51:43', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(575, 'fisika.kita@yahoo.com', 'millenianbintangnusantara', 'fffa6525a1684a49a1d3a02062780e64', '2017-02-10 04:34:33', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(576, 'kartikasari.math.upi@gmail.com', 'kevindigowidyadhana', 'fffa6525a1684a49a1d3a02062780e64', '2017-02-10 04:34:38', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(577, 'farhanfuza@gmail.com', 'huluk91', '62ad7ba6721e3c92b48432fc9cc4a565', '2017-02-09 12:37:39', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(578, 'nidaulfafitriani@gmail.com', 'muhammadhilmifaiz', 'fffa6525a1684a49a1d3a02062780e64', '2017-02-10 05:58:37', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(579, 'anisadestiana17@gmail.com', 'didoadhityaprasetyo', '12ab90928ba9e3a05694d2e9da46a9db', '2017-02-09 14:40:16', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(581, 'anisadestiana17@gmail.com', 'm.sugito', '12ab90928ba9e3a05694d2e9da46a9db', '2017-02-09 14:40:16', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(582, 'dsandi.m4ulana@gmail.com', 'smaalma''soem', 'cfacaa76ce842efa380cc2d97c243c1d', '2017-02-09 09:29:07', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(583, 'aryzonatv@gmail.com', 'pandawa5', '05c728555d22da04e7461afd4f4c8a3e', '2017-02-09 12:37:40', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(584, 'dwitiyanarahayu@gmail.com', 'pandawa5', '2f6e91e26b77f8d3543a1f2338b870f2', '2017-02-09 06:10:13', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(585, 'raishaldhy@gmail.com', 'pandawa5', '09597566c6edf131d20e0b6d2a8092d4', '2017-02-09 06:12:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(586, 'farzyahoo@gmail.com', 'pandawa5', 'ce938c1a77370243d322d09c37f3c7e3', '2017-02-09 06:12:51', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(587, 'ardhibahrulmubarok@gmail.com', 'pandawa5', '41b98e97b7655b180aaba3b2b3fe9342', '2017-02-09 06:13:22', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(588, 'dwi.murtikah@gmail.com', 'struggle', '85d9c5cba5657f99c5951f8ff9ed98f0', '2017-02-09 12:14:23', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(590, 'dwi.murtikah@gmail.com', 'dandi', '85d9c5cba5657f99c5951f8ff9ed98f0', '2017-02-09 12:13:41', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(591, 'smknsumedang1@gmail.com', 'smknegeri1sumedang', '6a5f41d169887d5297bc87d5b0bcae2b', '2017-02-09 10:34:39', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(592, 'yenhndayani@gmail.com', 'm.ilhamrizki', 'adc80da0afe335f3214545d9c16ce9f3', '2017-02-09 12:37:48', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(593, 'mochamadasef99@gmail.com', 'maydas159', '50a0ca599c8d72ca138f84db8de0aeb8', '2017-02-09 07:02:31', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(594, 'yenhndayani@gmail.com', 'fauzanmm', 'adc80da0afe335f3214545d9c16ce9f3', '2017-02-09 12:37:50', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(595, 'mochamadasef99@gmail.com', 'maydas159', '50a0ca599c8d72ca138f84db8de0aeb8', '2017-02-09 07:04:32', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(596, 'yenhndayani@gmail.com', 'sendiardiansyah', 'e9221e9101f3c1ea4db454f7720b2cc7', '2017-02-09 12:37:51', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(597, 'ysupriatna41@gmail.com', 'nesas', '7f1067716060cd5e01174cf5493044d8', '2017-02-09 12:35:36', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(598, 'g.alfazri1987@gmail.com', 'gustialfazridjahid', '50a0ca599c8d72ca138f84db8de0aeb8', '2017-02-11 12:34:28', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(599, 'yudha0902@gmail.com', 'yudhapratama', '50a0ca599c8d72ca138f84db8de0aeb8', '2017-02-11 12:34:19', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(600, 'farif9494@gmail.com', 'muhamadariffirdaus', '50a0ca599c8d72ca138f84db8de0aeb8', '2017-02-11 12:34:07', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(601, 'dioprasetiyo@gmail.com', 'dioprasetiyo', '50a0ca599c8d72ca138f84db8de0aeb8', '2017-02-11 12:32:49', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(602, 'maulanahidayatullah159@gmail.com', 'maulanahidayatullah', '50a0ca599c8d72ca138f84db8de0aeb8', '2017-02-11 12:31:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(604, 'slametfaisal1@gmail.com', 'slametfaisal', '50a0ca599c8d72ca138f84db8de0aeb8', '2017-02-11 12:31:23', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(605, 'smkn1malausma@gmail.com', 'smkn1malausma', '5aa1c3aab1f523518ca408ad31ba5728', '2017-02-09 07:46:38', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(606, 'nidafnisa00@gmail.com', 'otik11', 'd3a1b3dfa536bc5773299d558e96ace8', '2017-02-10 01:16:11', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(607, 'pkbmmdcbdg@gmail.com', 'pkbmmdc', 'a43594a0065225f68ad853daddf1ec5d', '2017-02-09 10:21:57', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(608, 'dymorisaki@gmail.com', 'pkbmmdc', '49c84a7770d479d2e8e36882f129e59b', '2017-02-09 08:14:12', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(609, 'Ijaysaepudin99.is@gmail.com', 'lifoman1si', '71b24f70dbc3a1cd3169ddbb79fb350f', '2017-02-11 13:14:30', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(610, 'smknlemahsugih@ymail.com', 'smknegeri1lemahsugih', 'bb63eb1e0e25f44d27c88b4164659866', '2017-02-09 08:26:30', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(611, 'dede.rusliandi1@gmail.com', 'rubik4', '3e5d3404efe78aba0ef4b89caea8113e', '2017-02-09 12:26:09', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(612, 'renaldibudianadwipoetra@gmail.com', 'renaldibudianadwipoetra', '8f43a0084293c8910cb813cce3c1859a', '2017-02-09 08:52:10', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(613, 'randiabdul69@gmail.com', '', '14c486dda81a34b0d93cae582c83a72f', '2017-02-09 09:10:46', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(614, 'farhananshari77@gmail.com', '', '16a76c380819e768fc90e6c83d26b557', '2017-02-09 09:12:14', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(615, 'ramdaniarid@gmail.com', '', '0fab147efe90584847ebc77c263f5fd3', '2017-02-09 09:14:02', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(616, 'rbrizkym@gmail.com', 'kirato.fuyu', 'dd2e48ef6d6fdb31c0969f94c2da39b3', '2017-02-09 09:28:45', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(617, 'fhajarmuhamad@gmail.com', 'andikman12v.7', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:31:08', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(618, 'fhajarmuhamad@gmail.com', 'andikman12v.8', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:31:13', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(619, 'fhajarmuhamad@gmail.com', 'andikman12v.9', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:31:21', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(620, 'fhajarmuhamad@gmail.com', 'andikman12v.10', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:31:23', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(621, 'fhajarmuhamad@gmail.com', 'andikman12v.11', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:31:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(622, 'fhajarmuhamad@gmail.com', 'andikman12v.12', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:31:30', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(623, 'ihsandn27@yahoo.com', '', '690a64363d074d5ddb753fb74469050b', '2017-02-09 09:49:26', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(625, 'fhajarmuhamad@gmail.com', 'andikman12v.13', 'd7c2481a66158b4911b4f2a1c5a7de0a', '2017-02-09 12:31:34', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(627, 'ihsanadn27@yahoo.com', 'isndevelop', '690a64363d074d5ddb753fb74469050b', '2017-02-09 10:11:07', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(629, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg12', '89e75827469cf28eec0dd6ee83398478', '2017-02-10 14:03:40', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(630, 'divan.fadila@gmail.com', 'dimar', '1417be24794339115835890446d29030', '2017-02-09 10:50:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(632, 'Taufiqulhakima@gmail.com', 'aufikarteam', '7d1b139c1f07898590cf95d532b03e65', '2017-02-09 11:31:29', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(633, 'mohammad.rizqypratama@yahoo.com', 'mohammadrizqypratama', '1417be24794339115835890446d29030', '2017-02-09 11:58:42', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(634, 'askflyhole@gmail.com', 'mochammadkhosynurhayatfirdaus', '1417be24794339115835890446d29030', '2017-02-09 12:00:09', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(635, 'arigatobunc@gmail.com', 'muhammadaminarist', '1417be24794339115835890446d29030', '2017-02-09 12:02:35', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(636, 'herdisyah.putra@gmail.com', 'herdisyahputranugraha', '1417be24794339115835890446d29030', '2017-02-09 12:04:04', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(637, 'Suryatamvan23@gmail.com', 'suryamansidik', '1417be24794339115835890446d29030', '2017-02-09 12:05:11', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(638, 'FachriME@gmail.com', 'fachriafifudin', '1417be24794339115835890446d29030', '2017-02-09 12:06:45', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(639, 'fahminurfaizy.gunawan@gmail.com', 'roboticsquad', '1417be24794339115835890446d29030', '2017-02-09 12:15:10', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(640, 'renakaagusta28@gmail.com', 'osbit', '154ea3ca574fd886c23f9bad10482705', '2017-02-09 12:19:18', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(641, 'kristoforusyoristeguh@gmail.com', 'yoristeguh', '3b8d38c7ce452bd580d75dd527c176fe', '2017-02-09 12:21:05', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(642, 'fatah1isa@gmail.com', 'osbit', '154ea3ca574fd886c23f9bad10482705', '2017-02-09 12:56:05', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(643, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg11', '147a00a2e364f19bd24c193c59e5a4f7', '2017-02-09 14:40:44', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(644, 'fajarfadilas@gmail.com', 'brainwareofsmansa-ldg12', '89e75827469cf28eec0dd6ee83398478', '2017-02-09 14:11:17', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(645, 'smaitihsanulfikri@yahoo.com', 'smaitihsanulfikrimagelang', '897d0cbfd42e05ba0fb44fcc91f1d134', '2017-02-09 14:17:20', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(646, 'savairahandiny@gmail.com', 'smksigasarpindad', 'c79a33c4781acbe6f2e591bd00d6ba72', '2017-02-10 03:07:46', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(647, 'fosmatif17@gmail.com', 'smaitihsanulfikri', 'd71695ac809c3c4d5f9df423499f5212', '2017-02-12 03:05:00', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(650, 'savairahandiny@gmail.com', 'igapinbandung', '49570b843d9e5473be1320bf95276238', '2017-02-10 01:16:32', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(651, 'igapinoke@gmail.com', 'igapin_web', '36d5295e439a6877ff0d0f29dfe3b2d2', '2017-02-10 01:16:49', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(652, 'Billyrivaldi10@gmail.com', 'billyrivaldi', 'd3a1b3dfa536bc5773299d558e96ace8', '2017-02-09 15:09:59', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(653, 'igapinoke@gmail.com', 'igapin_assembling', '36d5295e439a6877ff0d0f29dfe3b2d2', '2017-02-10 01:17:04', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(654, 'info@smkn1-purwakarta.sch.id', 'smknegri1purwakarta', '1b6ced69dbcdb2abedd4d7913a727fd8', '2017-02-09 15:36:00', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(655, 'blayteamo@gmail.com', 'aefs', '64bd33bdd5cb252a9e47732ac4d72ae9', '2017-02-09 15:48:16', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(656, 'igapinoke@gmail.com', 'animasiigapin', '36d5295e439a6877ff0d0f29dfe3b2d2', '2017-02-10 01:15:29', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 1),
(657, 'chandrajumara@gmail.com', 'chandrajumara', '743fe5fea119721ff0555ceb80f477c8', '2017-02-09 16:17:14', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(658, 'masyita18@gmail.com', 'karbit', '0f231b0b667bb743a8d1efbd55b1d7db', '2017-02-09 23:22:09', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(659, 'fajaramburadul@gmail.com', 'karbit', '29c437ac7d24d859ae265b7f61e909fd', '2017-02-09 23:24:19', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(660, 'smkn4.padalarang@gmail.com', 'smkn4padalarang', '629e189be688af09dfa9e8d3ec820421', '2017-02-10 01:56:33', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(661, '', 'osbit', 'a7cb9f86a3f04555d0e9b10a32a66861', '2017-02-10 04:41:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(662, '', 'osbit', 'a7cb9f86a3f04555d0e9b10a32a66861', '2017-02-10 04:44:27', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(663, 'smanegeri4cimahi@gmail.com', 'sman4cimahi', 'eec66e388ab765f9bf59cf08a7539562', '2017-02-10 04:46:05', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(664, 'sman4cimahi@gmail.com', 'smapat', 'eec66e388ab765f9bf59cf08a7539562', '2017-02-10 04:50:31', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(665, 'sman25bdg@sch.id', 'sman25bandung', 'f743d45639b92e8631d3c70da20f1c0b', '2017-02-10 05:52:19', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(667, 'gunadharmanusantarasmk@yahoo.co.id', 'smkgunadharmanusantara', 'e32bfc45f956bc7d92f425106c94e677', '2017-02-11 06:40:54', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(678, 'gsdagsdgsdgs@gmail.com', 'gfsagsadgs', '255aa80f1df7b4da1d87dd49b6d3cf3b', '2017-02-10 07:35:41', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(679, 'gsdagsdgsdgs@gmail.com', 'gfsagsadgs', '255aa80f1df7b4da1d87dd49b6d3cf3b', '2017-02-10 07:35:59', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(681, 'prorifrid22@yahoo.com', 'smkgunadharmanusantara', 'b0e2d76f90a1ad71f63d8e2bfa6e5afb', '2017-02-10 08:22:21', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(682, 'prorifrid22@yahoo.com', 'smkgunadharmanusantara', 'b0e2d76f90a1ad71f63d8e2bfa6e5afb', '2017-02-10 08:25:33', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(683, 'prorifrid22@yahoo.com', 'smkgunadharmanusantara', 'b0e2d76f90a1ad71f63d8e2bfa6e5afb', '2017-02-10 08:28:17', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(684, 'firmanalamsyah14@gmail.com', 'smkgunadharmanusantara', 'b0e2d76f90a1ad71f63d8e2bfa6e5afb', '2017-02-10 08:37:09', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(685, 'mochraihan110100@gmail.com', 'smkgunadharmanusantara', 'b0e2d76f90a1ad71f63d8e2bfa6e5afb', '2017-02-10 08:42:39', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(687, 'info.smkpasundan1bdg@gmail.com', 'smkpasundan1kotabandung', 'cb144bb69f84d62470dc0a29f3f08878', '2017-02-10 15:03:33', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(688, 'bayugustiana88@gmail.com', 'pcabalonggede', '10111f4a167cb7b34b9c5633eca24576', '2017-02-10 15:04:43', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(689, 'bayugustiana88@gmail.com', 'pcabalonggede', '10111f4a167cb7b34b9c5633eca24576', '2017-02-10 15:06:18', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(690, 'bayugustiana88@gmail.com', 'ldgbalonggede', '10111f4a167cb7b34b9c5633eca24576', '2017-02-10 15:10:03', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(691, 'fianshared@gmail.com', 'alfian.isnan', '54042bf23d25bd7f7f484107b1e7a96a', '2017-02-11 01:56:29', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1),
(692, 'firmanalamsyah14@gmail.com', 'smkgunadharmanusantara', 'b0e2d76f90a1ad71f63d8e2bfa6e5afb', '2017-02-11 04:42:02', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(693, 'afirman734@gmail.com', 'smkgunadharmanusantara', 'b0e2d76f90a1ad71f63d8e2bfa6e5afb', '2017-02-11 04:46:15', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(694, 'firmanalamsyah14@gmail.com', 'smkgunadharmanusantaraa', 'e32bfc45f956bc7d92f425106c94e677', '2017-02-11 06:39:09', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(695, 'afirman734@gmail.com', 'smkgunadharmanusantarab', 'e32bfc45f956bc7d92f425106c94e677', '2017-02-11 06:43:22', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(696, 'firmanalamsyah14@gmail.com', 'smkgunadharmanusantarac', 'e32bfc45f956bc7d92f425106c94e677', '2017-02-11 06:47:20', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(697, 'diks.mbudis@gmai.com', 'smandainteractiveclub', '50905d7b2216bfeccb5b41016357176b', '2017-02-11 08:33:55', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(698, 'ahzami.fadilahakbar@gmail.com', 'smaitif', 'd71695ac809c3c4d5f9df423499f5212', '2017-02-12 03:10:20', 'SCT', '', '/assets/img/icon_dashboard/tim.jpg', 0),
(699, 'sman5bandung@yahoo.com', 'sman5bandung', '78473660ce8e352dc6ae0cd6c603ad0b', '2017-02-12 03:58:25', 'SCH', '', '/assets/img/icon_dashboard/sekolah.jpg', 1),
(700, 'galunk.gunk.99@gmail.com', 'arz4rt', '46ad79b971be7de79a572e842ec95c71', '2017-02-12 04:00:04', 'PUB', '', '/assets/img/icon_dashboard/umum.jpg', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabel daftar acara buat kalender' AUTO_INCREMENT=1 ;

--
-- RELATIONS FOR TABLE `tb_calendar`:
--   `calendar_event_id`
--       `tb_event` -> `event_id`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=476 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- RELATIONS FOR TABLE `tb_coordinator`:
--   `coordinator_event_id`
--       `tb_event` -> `event_id`
--   `coordinator_account_id`
--       `tb_account` -> `account_id`
--

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
(9, 'Humas', NULL, NULL, NULL, 9),
(10, 'Dinamik Star', NULL, NULL, 14, 10),
(11, 'Festival Teknologi & Seni', NULL, NULL, 11, 11),
(12, 'Kompetisi Jaringan', NULL, NULL, 8, 12),
(13, 'Lomba Cipta Animasi', NULL, NULL, 6, 13),
(14, 'Lomba Cipta Web', NULL, NULL, 2, 14),
(15, 'Lomba Desain Grafis', NULL, NULL, 1, 15),
(16, 'Olimpiade Teknologi Informasi dan Komunikasi', NULL, NULL, 3, 16),
(17, 'PC Assembling', NULL, NULL, 4, 17),
(18, 'Robot Line Follower', NULL, NULL, 7, 18),
(19, 'Seminar Nasional', NULL, NULL, 10, 19),
(20, 'Talkshow', NULL, NULL, 9, 20),
(21, 'Workshop', NULL, NULL, 13, 21),
(22, 'Kestari', NULL, NULL, NULL, 22);

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
  `event_rule` varchar(255) DEFAULT NULL,
  `event_description` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Truncate table before insert `tb_event`
--

TRUNCATE TABLE `tb_event`;
--
-- Dumping data for table `tb_event`
--

INSERT INTO `tb_event` (`event_id`, `event_code`, `event_name`, `event_status`, `event_price`, `event_capacity`, `event_rule`, `event_description`) VALUES
(1, 'LDG', 'Lomba Desain Grafis', 1, 50000, 100, 'https://drive.google.com/open?id=0B6-S3m8s--tAenI0ajdrWURZX28', 'Lomba Desain Grafis merupakan salah satu ajang kompetisi  dalam rangkaian acara DINAMIK12 di bidang desain grafis. Lomba Desain Grafis adalah lomba perorangan yang mengasah kreativitas peserta dalam mendesain sebuah ilustrasi yang sesuai dengan tema, yaitu “Teknologi data dalam pendidikan Indonesia” Ilustrasi yang dibuat tidak hanya bagus tetapi juga memiliki makna. Peserta lomba diharuskan membuat desain grafis berupa ilustrasi sesuai dengan tema LDG DINAMIK12 dengan menggunakan software seperti Inkscape, GIMP, Adobe Photoshop, atau CorelDRAW. Sasaran peserta dalam lomba ini yaitu siswa/i SMA/SMK/sederajat se-Nasional.                 \r\n                                  \r\n                  \r\n                									\r\n																	\r\n																	\r\n								'),
(2, 'LCW', 'Lomba Cipta Web', 1, 100000, 50, 'https://drive.google.com/open?id=0B6-S3m8s--tAa3hqOHd2aFBDZnc', 'Lomba Cipta Website merupakan kompetisi yang diselenggarakan oleh Mahasiswa Ilmu Komputer dan Pendidikan Ilmu Komputer pada Dies Natalis Mahasiswa Komputer yang ke-12 (Dinamik 12) untuk menuangkan ide dan kreativitas ke dalam sebuah website, bertujuan untuk memberikan motivasi dan sebagai sarana belajar untuk membangun dan mengembangkan website.Pada tahun ini, LCW mengusung tema “Technology Innovation for Smarter Indonesian Education” untuk ketentuan website peserta. Sasaran peserta lomba ini yaitu siswa/i SMA/SMK/sederajat se-Nasional.'),
(3, 'OTIK', 'Olimpiade Teknologi Informasi dan Komunikasi', 1, 150000, 50, 'https://drive.google.com/open?id=0B6-S3m8s--tAVlVqTk10WEk1c0E', 'Olimpiade Teknologi Informasi dan Komunikasi (TIK) merupakan sebuah perlombaan bagi siswa/i SMK/SMA/sederajat untuk menguji kemampuan dan pengetahuan siswa tentang teknologi informasi dan komunikasi. Tema kegiatan ini adalah “Mahakarya Teknologi Bangsa Untuk Pendidikan Indonesia”. Lomba ini bersifat kelompok (tim), sehingga kekompakan dan kerjasama sangat diperlukan untuk menyelesaikannya. \r\nDalam lomba ini tim akan diberikan beberapa permasalahan yang harus dikerjakan dalam beberapa tahap yang sudah panitia tetapkan, seperti tahap penyisihan online, tahap perempat final berupa rally post, tahap semi final berupa penyelesaian soal essay, tahap final berupa tantangan praktikum, serta tahap grandfinal berupa lomba cepat tepat. \r\nMateri yang diujikan dalam perlombaan ini adalah Teknik Komputer dan Jaringan (TKJ), Rekayasa Perangkat Lunak (RPL), Multimedia dan Elektronika Dasar. '),
(4, 'PCA', 'Personal Computer Assembling', 1, 95000, 50, 'https://drive.google.com/open?id=0B6-S3m8s--tAbFBYdkMzUUpYS1E', 'Personal Computer Assembling (PCA) merupakan lomba yang menjadi daya tarik dalam DINAMIK. Dari tahun ke tahun PCA selalu menjadi lomba favorit yang diikuti dengan ditandainya jumlah peserta yang dapat mencapai 200 peserta. Lomba ini menekankan ketelitian, kerapihan dan kecepatan dalam perakitan komponen - komponen PC. Sasaran peserta untuk lomba ini yaitu siswa/i SMA/ sederajat se-Nasional.'),
(5, 'CSPC', 'Computer Science Programming Contest', 1, 50000, 50, 'https://drive.google.com/open?id=0B6-S3m8s--tANV9HZWU1eUV3Q2M', 'Computer Science Programming Contest (CSPC) adalah lomba pemrograman yang diselanggarakan di DINAMIK. Lomba ini menekankan kemampuan analisis berpikir dalam pemecahan masalah yang diberikan dalam bentuk soal yang kemudian diinterpretasikan dalam bentuk kode program sehingga menjadi program yang efektif. Lomba ini bertemakan “Mahakarya Teknologi Bangsa Untuk Pendidikan Indonesia”. Sasaran peserta untuk lomba ini yaitu siswa - siswi SMA/SMK sederajat se-Nasional.'),
(6, 'LCA', 'Lomba Cipta Animasi', 1, 100000, 50, 'https://drive.google.com/open?id=0B6-S3m8s--tAQ2tIMzdZRzd6TXM', 'Lomba Cipta Animasi (LCA) adalah salah satu cabang lomba di DINAMIK 12 yang dipertahankan dari lomba tahun sebelumnya. Lomba ini mengkompetisikan kemampuan peserta di bidang multimedia dalam pembuatan film pendek animasi 2D maupun 3D yang bertemakan "Inovasi Teknologi dalam Mendukung Dunia Pendidikan". Peserta dibebaskan menggunakan perangkat lunak apapun dalam proses pembuatannya. Lomba ini ditujukan untuk siswa/i SMA/SMK/sederajat se-Nasional.'),
(7, 'RLF', 'Robot Line Follower', 0, 110000, 50, 'https://drive.google.com/open?id=0B6-S3m8s--tARzMzeWVPUjA2N1U', 'Robot Line Follower merupakan sebuah ajang kompetisi balapan robot dimana robot tersebut  bergerak mengikuti garis secara otomatis, dengan track yang ditentukan. Dengan ketentuan robot dibuat oleh masing-masing peserta. Tema yang diusungkan adalah “Mahakarya Teknologi Bangsa Untuk Pendidikan Indonesia”. Sasaran kompetisi line follower ini adalah seluruh siswa-siswi tingkat SMA/SMK/MA/Sederajat se-Nasional.'),
(8, 'KJ', 'Kompetisi Jaringan', 1, 50000, 50, 'https://drive.google.com/open?id=0B6-S3m8s--tAVDBkdzZkcGJmVWs', 'Kompetisi Jaringan merupakan kompetisi untuk menguji kemampuan peserta dalam pengetahuan mengenai jaringan komputer. Disediakan beragam soal untuk menguji kemampuan peserta termasuk membangun sistem berdasarkan desain yang telah disediakan. Terdapat dua tahap yang di kompetisikan dalam acara ini yaitu bidang pengetahuan jaringan dan konfigurasi jaringan. Kompetisi Jaringan mengusung tema “sub teknologi data”. Sasaran peserta lomba ini yaitu siswa/i SMK se-Nasional.'),
(9, 'TALKSHOW', 'Talkshow Inspiratif', 1, 50000, 50, NULL, 'Talkshow Inspiratif merupakan salah satu dari rangkaian acara DINAMIK 12. Acara ini tentunya menyuguhkan ilmu yang bermanfaat. Dengan bertemakan “Menyelaraskan Teknologi dan Pendidikan Yang Sesuai Dengan Syariat Islam”, pemateri akan memandu peserta untuk mengupas tuntas tema tersebut. Selanjutnya, peserta akan berdiskusi dalam sebuah talkshow inspiratif bersama beberapa orang pemateri. Acara ini terbuka untuk umum.'),
(10, 'SEMNAS', 'Seminar Nasional', 1, 50000, 50, NULL, 'Seminar Nasional (Semnas) merupakan suatu kegiatan pertemuan skala nasional untuk membahas, menyikapi suatu topik bahasan dan menampilkan satu atau beberapa pembicara. Seminar nasional ini memiliki tema “Penerapan teknologi ‘Big data’ Dalam Transformasi Pendidikan dan Pembelajaran”. Peserta seminar yang hadir harus berpartisipasi secara aktif dan diharapakan terjadi interaksi dua arah antara pembicara dan peserta seminar.'),
(11, 'FELOSE', 'Festival Teknologi dan Seni', 1, 0, 50, NULL, 'Fesival Teknologi dan Seni atau disebut juga FELOSE merupakan salah satu dari rangkaian acara di DINAMIK 12 yang bertajuk unjuk karya mahasiswa/i ilmu komputer dan pendidikan ilmu komputer, mahasiswa/i se-Jawa Barat, pelajar dan kerjasama IT dengan berbagai instansi dan komunitas di Bandung. Felose ini juga merupakan bentuk pengembangan dari pameran karya pada DINAMIK 11 maupun DINAMIK 10 yang didalamnya dibagi menjadi 2 kategori yaitu Seni murni seperti digital art, kriya, komik, ilustrasi, dsb. dan Teknologi seperti robot, aplikasi, game, dsb. Tema yang diusungkan adalah "Mahakarya Teknologi dan Seni Indonesia". Sasaran dari kegiatan ini adalah mahasiswa, pelajar, dan masyarakat umum.'),
(12, 'DONOR', 'Donor Darah', 0, 0, 50, NULL, 'Donor Darah DINAMIK merupakan kegiatan sosial tahunan yang dilaksanakan bertepatan dengan DINAMIK. Pada tahun ini Donor Darah DINAMIK mengusung tema “Blood is a gift of life”. Donor Darah memiliki banyak manfaat antara lain dapat mengetahui golongan darah, mengurangi zat besi yang berlebih dalam tubuh, membakar kalori dalam tubuh, dapat menurunkan resiko penyakit serangan jantung bagi pendonor rutin,  mencegah penuaan dini karena sel-sel darah merah diperbaharui secara berkala dan mencegah resiko kanker. Sasaran dari acara ini yaitu mahasiswa dan masyarakat umum di wilayah Universitas Pendidikan Indonesia dan sekitarnya.'),
(13, 'WORKSHOP', 'Workshop Digitalisasi Guru', 0, 50000, 50, NULL, 'Workshop Digitalisasi Guru merupakan suatu acara dimana beberapa guru berkumpul untuk memecahkan masalah dan mencari solusinya. Acara ini bertujuan untuk mengajarkan guru dalam menggunakan teknologi pada level 0-2. Acara ini mengusung tema “Digitalisasi Pembelajaran”. Sasaran Workshop Digitalisasi Guru adalah semua guru se-Nasional.'),
(14, 'DSTAR', 'Dinamik Star', 1, 50000, 50, 'https://drive.google.com/open?id=0B6-S3m8s--tAQkZ6LXFXbjcwcDg', 'DINAMIK Star adalah suatu acara pencarian bakat yang diadakan dalam perayaan DINAMIK (Dies Natalis Mahasiswa Ilmu Komputer) Universitas Pendidikan Indonesia. Pada tahun ini DINAMIK Star mengusung tema “Mahakarya Talenta dalam Balutan Teknologi”. Acara ini diadakan untuk semua kalangan dengan rentang usia 4 hingga 30 tahun. Dalam acara ini tidak membatasi semua bakat yang dimiliki oleh peserta. Dinamik Star ini ditujukan untuk masyarakat umum se-Indonesia.');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- RELATIONS FOR TABLE `tb_judge`:
--   `judge_event_id`
--       `tb_event` -> `event_id`
--   `judge_account_id`
--       `tb_account` -> `account_id`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Truncate table before insert `tb_message`
--

TRUNCATE TABLE `tb_message`;
--
-- Dumping data for table `tb_message`
--

INSERT INTO `tb_message` (`message_id`, `message_name`, `message_email`, `message_content`, `message_status`) VALUES
(1, 'Developer', 'faisalsyfl@gmail.com', 'WEB NYA KECEH SEKALI', 0),
(2, 'Test', 'asdasd', 'afasf', 0),
(3, '', '', '', 0),
(4, 'wewe', '123123@123123', 'asdasd', 0);

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
  `news_event_id` int(11) DEFAULT NULL,
  `news_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `news_event_id` (`news_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- RELATIONS FOR TABLE `tb_news`:
--   `news_event_id`
--       `tb_event` -> `event_id`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=481 ;

--
-- Truncate table before insert `tb_payment`
--

TRUNCATE TABLE `tb_payment`;
--
-- Dumping data for table `tb_payment`
--

INSERT INTO `tb_payment` (`payment_id`, `payment_amount`, `payment_document`, `payment_status`, `payment_unique_code`, `payment_description`) VALUES
(1, 0, NULL, 1, '028495', NULL),
(4, 50000, NULL, 0, '780512', NULL),
(5, 50000, NULL, 0, '443084', NULL),
(6, 0, NULL, 1, '855300', NULL),
(8, 50000, NULL, 0, '276627', NULL),
(13, 0, NULL, 1, '120197', NULL),
(14, 50000, NULL, 0, '577335', NULL),
(23, 50000, NULL, 0, '628448', NULL),
(25, 50000, NULL, 0, '732767', NULL),
(26, 50000, NULL, 0, '774474', NULL),
(28, 100000, NULL, 0, '721639', NULL),
(29, 100000, NULL, 0, '879422', NULL),
(30, 50000, NULL, 0, '882016', NULL),
(31, 50000, NULL, 0, '607740', NULL),
(32, 50000, NULL, 0, '884303', NULL),
(33, 50000, NULL, 0, '577550', NULL),
(34, 50000, NULL, 0, '729117', NULL),
(36, 50000, NULL, 0, '787039', NULL),
(39, 100000, 'smkbpibandung-1485922178.jpg', 1, '086856', '1 Februari 2017\r\nPembayaran SMK BPI Bandung untuk Animasi, Desain grafis, PCA, dan kompetensi jaringan'),
(40, 50000, 'smkbpibandung-1485922178.jpg', 1, '888104', '1 Februari 2017\r\nPembayaran SMK BPI Bandung untuk Animasi, Desain grafis, PCA, dan kompetensi jaringan'),
(41, 50000, 'smkbpibandung-1485922178.jpg', 1, '534839', '1 Februari 2017\r\nPembayaran SMK BPI Bandung untuk Animasi, Desain grafis, PCA, dan kompetensi jaringan'),
(42, 95000, 'smkbpibandung-1485922178.jpg', 1, '855094', '1 Februari 2017\r\nPembayaran SMK BPI Bandung untuk Animasi, Desain grafis, PCA, dan kompetensi jaringan'),
(43, 50000, 'smkbpibandung-1485922178.jpg', 1, '298806', '1 Februari 2017\r\nPembayaran SMK BPI Bandung untuk Animasi, Desain grafis, PCA, dan kompetensi jaringan'),
(44, 50000, 'smkbpibandung-1485922178.jpg', 1, '602508', '1 Februari 2017\r\nPembayaran SMK BPI Bandung untuk Animasi, Desain grafis, PCA, dan kompetensi jaringan'),
(45, 50000, NULL, 0, '856739', NULL),
(50, 50000, NULL, 0, '833365', NULL),
(52, 50000, NULL, 0, '424754', NULL),
(53, 50000, NULL, 0, '110458', NULL),
(54, 50000, NULL, 0, '091927', NULL),
(65, 50000, 'sman2bekasi-1485748469.jpg', 1, '227910', 'Pembayaran Untuk tim VENOM tanggal 30 Januari 2017 jam 10:47:39 sejumlah 50 ribu'),
(66, 95000, 'miftahulhuda-1486019985.jpg', 1, '642422', 'Pembayaran nomor 642422, 02 02 2017'),
(69, 50000, 'smkpasundan1cimahi-1486108310.jpg', 1, '375301', 'Teh ini pembayaran atas nama SMK Pasundan 1 Cimahi, transfer lsg via atm jadi kode pembayaran ditulis. di transfer pada tanggal 03/02/2017 jam 13:09:05 untuk kompetensi jaringan. yang lainnya menyusul.'),
(70, 100000, 'smkpasundan1cimahi-1486519422.jpg', 1, '995736', 'Sudah di Bayar Via ATM pada tanggal 08/02/17 waktu 07:14:07  untuk perlombaan Cipta Web'),
(71, 95000, 'smkpasundan1cimahi-1486519564.jpg', 1, '068748', 'Sudah di bayar via ATM pada tanggal 08/02/17 waktu 07:15:25 untuk perlombaan PC Assembling'),
(74, 50000, 'smknegeri1panyingkiranmajalengka-1485928088.jpg', 1, '005146', 'Pembayaran Kompetisi Jaringan dengan Kode 005146\r\nMohon diperbaiki, Nama Akun BCA yang dicantumkan di web, menggunakan An. Sita Kartina Zulkhijah\r\nKarena Jika Transper di Bank secara Langsung, Nama Sita Kartina saja tidak cocok dengan Data\r\nTerima Kasih'),
(75, 100000, 'smkpasundan1cimahi-1486519202.jpg', 1, '858320', 'Sudah di Bayar untuk Perlombaan Cipta Animasi Pada tanggal 08/02/17 waktu 07:13:13'),
(78, 50000, NULL, 0, '443960', NULL),
(79, 50000, 'smknegeri6garut-1486005420.jpg', 1, '623851', 'Bukti pembayaran melalui transfer rekening Bank BNI ke BCA Tanggal 02 februari 2017 sebesar Rp 50.000'),
(82, 95000, 'smknegeri6garut-1486016129.jpg', 1, '745454', 'Pembayaran dengan transfer Bank BNI ke BCA tanggal 02 Februari 2017 dengan biaya Rp. 95.000'),
(83, 95000, 'sman17bandung-1486542611.jpg', 1, '610845', 'Membayar pada tanggal 8 Februari 2017 langsung kepada Bendahara DINAMIK 12'),
(88, 50000, NULL, 0, '609475', NULL),
(89, 50000, NULL, 0, '872163', NULL),
(90, 0, NULL, 1, '703360', NULL),
(91, 50000, NULL, 0, '989062', NULL),
(92, 50000, NULL, 0, '751461', NULL),
(93, 0, NULL, 1, '493523', NULL),
(94, 0, NULL, 1, '540815', NULL),
(95, 100000, NULL, 0, '205349', NULL),
(98, 95000, 'smanegeri6cimahi-1486632994.jpg', 1, '487238', '9 februari 2017'),
(99, 95000, 'smanegeri6cimahi-1486633144.jpg', 1, '146119', '9 februari 2017'),
(100, 50000, 'smanegeri6cimahi-1486633209.jpg', 1, '532021', '9 februari 2017'),
(101, 50000, 'smanegeri6cimahi-1486633235.jpg', 1, '256219', '9 februari 2017'),
(116, 95000, 'mayirajamandala-1486650137.jpg', 1, '946602', 'Bukti Pembayaran PCA untuk M.Fahmi Rizaldi tanggal 9 Februari 2017'),
(117, 95000, 'mayirajamandala-1486650242.jpg', 1, '141286', 'Pembayaran PCA Atas nama Ichsan Maulana tanggal 9 Februari 2017'),
(120, 95000, 'mayirajamandala-1486650308.jpg', 1, '652875', 'Pembayaran PCA atas nama Fadli Winarya tgl 9 Februari 2017'),
(121, 50000, 'smanegeri1sidoarjo-1486350420.jpg', 1, '570095', 'Transfer ATM tanggal 5 Februari 2017'),
(122, 50000, 'smanegeri1sidoarjo-1486736151.jpg', 1, '968939', 'Melalui bank BNI, 10 Februari 2017'),
(124, 50000, NULL, 0, '405252', NULL),
(125, 50000, 'smkn1indramayu-1486640595.jpg', 1, '637221', 'Bukti transfer u/ peserta ILHAM GYMNASTIAR'),
(126, 95000, 'smanegeri1subang-1486644847.jpg', 1, '173358', 'Assalamualaikum ka yang lainya nyusul'),
(127, 95000, 'smanegeri1subang-1486644847.jpg', 1, '475124', 'Assalamualaikum ka yang lainya nyusul'),
(128, 95000, 'smanegeri1subang-1486644847.jpg', 1, '711790', 'Assalamualaikum ka yang lainya nyusul'),
(129, 50000, 'smanegeri1subang-1486644847.jpg', 1, '240853', 'Assalamualaikum ka yang lainya nyusul'),
(130, 50000, 'smanegeri1subang-1486644847.jpg', 1, '789652', 'Assalamualaikum ka yang lainya nyusul'),
(131, 50000, 'smanegeri1subang-1486644847.jpg', 1, '170650', 'Assalamualaikum ka yang lainya nyusul'),
(133, 50000, 'smanegeri1subang-1486644847.jpg', 1, '528915', 'Assalamualaikum ka yang lainya nyusul'),
(134, 50000, 'smanegeri1subang-1486644847.jpg', 1, '013298', 'Assalamualaikum ka yang lainya nyusul'),
(135, 50000, 'smanegeri1subang-1486644847.jpg', 1, '507288', 'Assalamualaikum ka yang lainya nyusul'),
(136, 50000, 'smanegeri1subang-1486649232.jpg', 1, '742288', 'Assalamualaikum ka 2 lagi nyusul'),
(137, 50000, 'smanegeri1subang-1486644847.jpg', 1, '690897', NULL),
(138, 50000, 'smanegeri1subang-1486644847.jpg', 1, '236465', 'Assalamualaikum ka yang lainya nyusul'),
(139, 50000, 'smanegeri1subang-1486649232.jpg', 1, '174587', 'Assalamualaikum ka 2 lagi nyusul'),
(141, 95000, 'smanegeri1subang-1486644847.jpg', 1, '456238', 'Assalamualaikum ka yang lainya nyusul'),
(142, 50000, 'smanegeri1subang-1486649232.jpg', 1, '252077', 'Assalamualaikum ka 2 lagi nyusul'),
(143, 50000, 'smanegeri1subang-1486644847.jpg', 1, '073013', 'Assalamualaikum ka yang lainya nyusul'),
(144, 95000, 'smanegeri1subang-1486644847.jpg', 1, '278765', 'Assalamualaikum ka yang lainya nyusul'),
(145, 95000, 'smanegeri1subang-1486649232.jpg', 1, '005512', 'Assalamualaikum ka 2 lagi nyusul'),
(146, 95000, 'smanegeri1subang-1486649232.jpg', 1, '615541', 'Assalamualaikum ka 2 lagi nyusul'),
(147, 50000, 'smanegeri1subang-1486649232.jpg', 1, '194441', 'Assalamualaikum ka 2 lagi nyusul'),
(148, 95000, 'smanegeri1subang-1486649232.jpg', 1, '423619', 'Assalamualaikum ka 2 lagi nyusul'),
(150, 100000, 'smanegeri1subang-1486644847.jpg', 1, '062051', 'Assalamualaikum ka yang lainya nyusul'),
(151, 100000, 'smanegeri1subang-1486644847.jpg', 1, '135395', 'Assalamualaikum ka yang lainya nyusul'),
(152, 150000, 'smanegeri1subang-1486644847.jpg', 1, '938544', 'Assalamualaikum ka yang lainya nyusul'),
(153, 50000, NULL, 0, '218036', NULL),
(154, 50000, NULL, 0, '492471', NULL),
(155, 0, NULL, 1, '944350', NULL),
(156, 50000, 'smanegeri1subang-1486644847.jpg', 1, '366203', 'Assalamualaikum ka yang lainya nyusul'),
(157, 50000, 'smknukaplongan-1486269674.jpg', 1, '140209', 'Kami meng upload bukti transfer untuk tim dengan nomor pendaftaran : 140209'),
(158, 50000, 'smkmuhammadiyahpekalongan-1486368332.jpg', 1, '008383', 'PSPCbukti_Smkmuhammadiyahpekalongan_BayuAqibYahya_6 Februari 2017'),
(165, 50000, NULL, 0, '797872', NULL),
(171, 100000, 'sman9bandung-1486369450.jpg', 1, '019954', 'setor tunai a/n rafael galuh 100rb'),
(172, 50000, 'sman*yogyakarta-1486383036.pdf', 1, '969692', ''),
(173, 50000, 'smkangkasa1margahayu-112233.jpg', 1, '691855', NULL),
(174, 95000, 'smkangkasa1margahayu-112233.jpg', 1, '415795', NULL),
(175, 50000, 'smknegeri4bandung-1486630368.png', 1, '146846', 'Pembayaran No Rek 176.136.9429 a.n Ferry Stephanus Suwita\r\nTanggal 09-02-2017 15:57'),
(176, 50000, NULL, 0, '316499', NULL),
(182, 50000, 'smkn5-1486396291.jpg', 1, '874367', 'Telah ditransfer uang pendaftaran lomba dinamik sebesar 490000 rupiah atas nama Rahman Taufik kepada Sita Kartina (Panitia Dinamik)'),
(183, 50000, 'smkn5-1486396291.jpg', 1, '822044', 'Telah ditransfer uang pendaftaran lomba dinamik sebesar 490000 rupiah atas nama Rahman Taufik kepada Sita Kartina (Panitia Dinamik)'),
(185, 95000, 'smkn5-1486396291.jpg', 1, '481162', 'Telah ditransfer uang pendaftaran lomba dinamik sebesar 490000 rupiah atas nama Rahman Taufik kepada Sita Kartina (Panitia Dinamik)'),
(186, 50000, 'smkn5-1486396291.jpg', 1, '030853', 'Telah ditransfer uang pendaftaran lomba dinamik sebesar 490000 rupiah atas nama Rahman Taufik kepada Sita Kartina (Panitia Dinamik)'),
(187, 50000, 'smkn5-1486396291.jpg', 1, '659900', 'Telah ditransfer uang pendaftaran lomba dinamik sebesar 490000 rupiah atas nama Rahman Taufik kepada Sita Kartina (Panitia Dinamik)'),
(188, 95000, 'smkn5-1486396291.jpg', 1, '893813', 'Telah ditransfer uang pendaftaran lomba dinamik sebesar 490000 rupiah atas nama Rahman Taufik kepada Sita Kartina (Panitia Dinamik)'),
(189, 100000, 'smkn5-1486396291.jpg', 1, '849047', 'Telah ditransfer uang pendaftaran lomba dinamik sebesar 490000 rupiah atas nama Rahman Taufik kepada Sita Kartina (Panitia Dinamik)'),
(190, 95000, NULL, 0, '792359', NULL),
(191, 100000, 'smanegeri1subang-1486644847.jpg', 1, '831233', 'Assalamualaikum ka yang lainya nyusul'),
(192, 50000, NULL, 0, '823840', NULL),
(193, 50000, NULL, 0, '256052', NULL),
(194, 0, NULL, 1, '196579', NULL),
(195, 100000, 'smknegeri4bandung-1486630368.png', 1, '640308', 'Pembayaran No Rek 176.136.9429 a.n Ferry Stephanus Suwita\r\nTanggal 09-02-2017 15:57'),
(196, 100000, 'smknegeri4bandung-1486630368.png', 1, '027529', 'Pembayaran No Rek 176.136.9429 a.n Ferry Stephanus Suwita\r\nTanggal 09-02-2017 15:57'),
(198, 50000, 'smanegeri3cimahi-1486557767.jpg', 1, '069953', 'sudah di transfer yah ke rek.sita tanggal 8/02/17 nominal 390 ribu'),
(200, 95000, 'smanegeri3cimahi-1486557767.jpg', 1, '988713', 'sudah di transfer yah ke rek.sita tanggal 8/02/17 nominal 390 ribu'),
(202, 95000, 'smanegeri3cimahi-1486557767.jpg', 1, '682967', 'sudah di transfer yah ke rek.sita tanggal 8/02/17 nominal 390 ribu'),
(204, 100000, 'smanegeri3cimahi-1486557767.jpg', 1, '916484', 'sudah di transfer yah ke rek.sita tanggal 8/02/17 nominal 390 ribu'),
(207, 100000, 'smkn1garut-1486527689.jpg', 1, '068910', '\r\nLDG 3 orang 150.000\r\nLCA 1 team 100.000\r\nPCA 2 orang 190.000\r\nLCW 1 team 100.000\r\nTotal uang yang di transfer : 535.000 harusnya 540.000\r\n5000 akan dibayarkan langsung oleh rima yuliana(panitia dinamik) kepada panitia. terimakasih'),
(208, 100000, 'smkn1garut-1486527765.jpg', 1, '064080', '\r\nLDG 3 orang 150.000\r\nLCA 1 team 100.000\r\nPCA 2 orang 190.000\r\nLCW 1 team 100.000\r\nTotal uang yang di transfer : 535.000 harusnya 540.000\r\n5000 akan dibayarkan langsung oleh rima yuliana(panitia dinamik) kepada panitia. terimakasih'),
(210, 50000, 'smkn1garut-1486527788.jpg', 1, '895297', '\r\nLDG 3 orang 150.000\r\nLCA 1 team 100.000\r\nPCA 2 orang 190.000\r\nLCW 1 team 100.000\r\nTotal uang yang di transfer : 535.000 harusnya 540.000\r\n5000 akan dibayarkan langsung oleh rima yuliana(panitia dinamik) kepada panitia. terimakasih'),
(212, 0, NULL, 1, '515495', NULL),
(213, 150000, 'sman2labakkangboardingschool-1486626230.jpg', 1, '865844', 'Bukti Transfer lomba OTIK, transfer pada tanggal 9/2/2017 pukul 13:28'),
(214, 50000, NULL, 0, '260710', NULL),
(216, 100000, 'smkinformatikaal-irsyadal-islamiyyah-1486712820.jpeg', 1, '804739', '804739,023025,374017,297463'),
(218, 50000, 'smkangkasa1margahayu-1486530325.jpg', 1, '825969', 'NO Pembayaran 825969\r\nTanggal 8 Februari 2017\r\nDisatukan dengan 6 LDG, 2 PCA, dan 1 LCW'),
(219, 50000, 'smkangkasa1margahayu-1486530994.jpg', 1, '887928', 'No Pembayaran 887928\r\nTanggal 8 Februari 2016\r\nDisatukan dengan 6 LDG, 2 PCA, 1 LCW'),
(222, 50000, 'smkinformatikaal-irsyadal-islamiyyah-1486712820.jpeg', 1, '023025', '804739,023025,374017,297463'),
(223, 95000, 'smkinformatikaal-irsyadal-islamiyyah-1486712820.jpeg', 1, '374017', '804739,023025,374017,297463'),
(224, 50000, 'smkinformatikaal-irsyadal-islamiyyah-1486712820.jpeg', 1, '297463', '804739,023025,374017,297463'),
(225, 150000, 'smkinformatikakotaserang-1486650328.jpg', 1, '859209', ''),
(226, 150000, 'smkinformatikakotaserang-1486650817.jpg', 1, '459057', ''),
(227, 100000, 'smkn1indramayu-1486640779.jpg', 1, '888041', 'U/ tim ANIMATSOE'),
(228, 50000, 'smkn1garut-1486527846.jpg', 1, '525280', '\r\nLDG 3 orang 150.000\r\nLCA 1 team 100.000\r\nPCA 2 orang 190.000\r\nLCW 1 team 100.000\r\nTotal uang yang di transfer : 535.000 harusnya 540.000\r\n5000 akan dibayarkan langsung oleh rima yuliana(panitia dinamik) kepada panitia. terimakasih'),
(229, 95000, 'smkangkasa1margahayu-1486530878.jpg', 1, '721333', 'No Pembayaran 721333\r\nTanggal 8 Februari 2016\r\nDisatukan dengan 6 LDG, 2 PCA, 1 LCW'),
(231, 100000, 'smkangkasa1margahayu-1486530840.jpg', 1, '252324', 'No Pembayaran 252324\r\nTanggal 8 Februari 2016\r\nDisatukan dengan 6 LDG, 2 PCA, 1 LCW'),
(233, 50000, 'smkangkasa1margahayu-1486530422.jpg', 1, '556828', 'No Pembayaran 556828\r\nTanggal 8 Februari 2016\r\nDisatukan dengan 6 LDG, 2 PCA, 1 LCW'),
(235, 50000, 'smkangkasa1margahayu-1486530480.jpg', 1, '615769', 'No Pembayaran 615769\r\nTanggal 8 Februari 2016\r\nDisatukan dengan 6 LDG, 2 PCA, 1 LCW'),
(236, 95000, 'smkn1-1486528406.jpg', 1, '095858', 'ini bukti transfer untuk siswa bernama dion raka ariri yg akan mengikuti lomba PC Assembling..di transfr pada hari selasa tgl 07/02/2017..terima kasih akang dan teteh panitia..'),
(237, 50000, 'smkangkasa1margahayu-1486530594.jpg', 1, '476058', 'No Pembayaran 476058\r\nTanggal 8 Februari 2016\r\nDisatukan dengan 6 LDG, 2 PCA, 1 LCW'),
(238, 95000, 'smkn1-1486528521.jpg', 1, '112607', 'ini bukti transfer untuk siswa bernama Deffan febrian D..yg akan mengikuti lomba PC assembling saat dinamik 12..ditransfr pada hari selasa tgl 07/02/2017..'),
(239, 50000, 'smkangkasa1margahayu-1486530688.jpg', 1, '502100', 'No Pembayaran 502100\r\nTanggal 8 Februari 2016\r\nDisatukan dengan 6 LDG, 2 PCA, 1 LCW'),
(240, 50000, 'smkangkasa1margahayu-1486530768.jpg', 1, '613158', 'No Pembayaran 613158\r\nTanggal 8 Februari 2016\r\nDisatukan dengan 6 LDG, 2 PCA, 1 LCW'),
(241, 95000, 'smkangkasa1margahayu-1486530952.jpg', 1, '210883', 'No Pembayaran 210883\r\nTanggal 8 Februari 2016\r\nDisatukan dengan 6 LDG, 2 PCA, 1 LCW'),
(242, 95000, 'smaplusmuthahhari-1486535181.PNG', 1, '613681', 'Pendaftaran Mulkin shadra Ref 008113340786 Tanggal 8 February 2017'),
(245, 95000, 'smknegeri1cimahi-1486607952.jpg', 1, '214844', 'Melalui ATM BRI tanggal 7 Februari 2017'),
(246, 95000, 'smknegeri1cimahi-1486608000.jpg', 1, '351187', 'Setor tunai pada tanggal 9 Februari 2017'),
(247, 95000, 'smknegeri1cimahi-1486608055.jpg', 1, '185204', 'Setor tunai @ 2 peserta sebesar Rp. 190.000,00 tanggal 9 Februari 2017'),
(248, 95000, 'smknegeri1cimahi-1486608055.jpg', 1, '019911', 'Setor tunai @ 2 peserta sebesar Rp. 190.000,00 tanggal 9 Februari 2017'),
(249, 95000, 'sman17bandung-1486542628.jpg', 1, '004815', 'Membayar pada tanggal 8 Februari 2017 langsung kepada Bendahara DINAMIK 12'),
(252, 95000, 'sman17bandung-1486542646.jpg', 1, '498419', 'Membayar pada tanggal 8 Februari 2017 langsung kepada Bendahara DINAMIK 12'),
(254, 50000, 'sman17bandung-1486542679.jpg', 1, '958012', 'Membayar pada tanggal 8 Februari 2017 langsung kepada Bendahara DINAMIK 12'),
(255, 50000, 'sman17bandung-1486542691.jpg', 1, '676178', 'Membayar pada tanggal 8 Februari 2017 langsung kepada Bendahara DINAMIK 12'),
(263, 100000, 'sman17bandung-1486542702.jpg', 1, '760943', 'Membayar pada tanggal 8 Februari 2017 langsung kepada Bendahara DINAMIK 12'),
(264, 150000, 'sman17bandung-1486542715.jpg', 1, '187230', 'Membayar pada tanggal 8 Februari 2017 langsung kepada Bendahara DINAMIK 12'),
(265, 95000, 'sman17bandung-1486542775.jpg', 1, '964968', ''),
(266, 100000, 'smkinformatikaal-irsyadal-islamiyyah-1486712850.jpeg', 1, '109106', '109106'),
(267, 95000, 'sman11bandung-1486574396.jpg', 1, '506591', 'Pembayaran lomba PCA atas nama:\r\nMochammad Reza Rusmawardana\r\nNisn: 13674558\r\nPada tanggal 08/02/17\r\nPukul 20:40'),
(268, 50000, 'smanegeri3cimahi-1486557767.jpg', 1, '400007', 'sudah di transfer yah ke rek.sita tanggal 8/02/17 nominal 390 ribu'),
(270, 100000, NULL, 0, '859820', NULL),
(272, 95000, 'smkn1garut-1486546772.jpg', 1, '081287', ''),
(274, 95000, 'smkn1garut-1486546790.jpg', 1, '748631', ''),
(276, 150000, NULL, 0, '270190', NULL),
(277, 50000, NULL, 0, '955268', NULL),
(278, 100000, NULL, 0, '362517', NULL),
(279, 50000, NULL, 0, '850593', NULL),
(280, 100000, 'smknegeri4bandung-1486630368.png', 1, '144998', 'Pembayaran No Rek 176.136.9429 a.n Ferry Stephanus Suwita\r\nTanggal 09-02-2017 15:57'),
(281, 95000, NULL, 0, '868734', NULL),
(282, 50000, NULL, 0, '556039', NULL),
(284, 95000, NULL, 0, '396363', NULL),
(285, 50000, 'smkn1subang-1486613874.jpg', 1, '563585', 'Bukti pembayaran ini untuk kode registrasi : \r\n563585\r\n691524\r\n220364\r\n489875\r\n159524\r\n270234\r\n788245'),
(286, 50000, 'smkn1subang-1486613874.jpg', 1, '691524', 'Bukti pembayaran ini untuk kode registrasi : \r\n563585\r\n691524\r\n220364\r\n489875\r\n159524\r\n270234\r\n788245'),
(287, 50000, 'smkn1subang-1486613874.jpg', 1, '220364', 'Bukti pembayaran ini untuk kode registrasi : \r\n563585\r\n691524\r\n220364\r\n489875\r\n159524\r\n270234\r\n788245'),
(288, 95000, 'smkn1subang-1486613874.jpg', 1, '489875', 'Bukti pembayaran ini untuk kode registrasi : \r\n563585\r\n691524\r\n220364\r\n489875\r\n159524\r\n270234\r\n788245'),
(289, 95000, 'smkn1subang-1486613874.jpg', 1, '159524', 'Bukti pembayaran ini untuk kode registrasi : \r\n563585\r\n691524\r\n220364\r\n489875\r\n159524\r\n270234\r\n788245'),
(290, 50000, 'smkn1subang-1486613874.jpg', 1, '270234', 'Bukti pembayaran ini untuk kode registrasi : \r\n563585\r\n691524\r\n220364\r\n489875\r\n159524\r\n270234\r\n788245'),
(291, 100000, 'smkn1subang-1486613874.jpg', 1, '788245', 'Bukti pembayaran ini untuk kode registrasi : \r\n563585\r\n691524\r\n220364\r\n489875\r\n159524\r\n270234\r\n788245'),
(293, 95000, 'smkn1subang-1486613928.jpg', 1, '052688', 'Bukti pendaftaran ini untuk kode registrasi :\r\n052688\r\n975726\r\n009131\r\n404699\r\n159762\r\n742113'),
(294, 150000, 'smkn1subang-1486613928.jpg', 1, '975726', 'Bukti pendaftaran ini untuk kode registrasi :\r\n052688\r\n975726\r\n009131\r\n404699\r\n159762\r\n742113'),
(296, 100000, 'smkn1subang-1486613928.jpg', 1, '009131', 'Bukti pendaftaran ini untuk kode registrasi :\r\n052688\r\n975726\r\n009131\r\n404699\r\n159762\r\n742113'),
(297, 100000, 'smkn1subang-1486613928.jpg', 1, '404699', 'Bukti pendaftaran ini untuk kode registrasi :\r\n052688\r\n975726\r\n009131\r\n404699\r\n159762\r\n742113'),
(300, 150000, 'sman11garut-1486605514.pdf', 1, '896533', ''),
(301, 50000, 'sman11garut-1486605686.pdf', 1, '347259', ''),
(302, 150000, 'sman11garut-1486605597.pdf', 1, '856367', ''),
(303, 50000, 'sman11garut-1486605740.pdf', 1, '020983', ''),
(304, 50000, 'sman11garut-1486605805.pdf', 1, '130277', ''),
(305, 50000, 'sman11garut-1486605852.pdf', 1, '505290', ''),
(307, 95000, 'sman11bandung-1486652583.jpg', 1, '924343', 'Pembayaran PCA atas nama Hilmi Al-Wahid\r\nPada tanggal 09/02/17\r\nPukul 21:08'),
(308, 95000, 'sman11bandung-1486652667.jpg', 1, '168988', 'Pembayaran PCA atas nama Muhammad Sultan Bani\r\nPada tanggal 09/02/17\r\nPukul 21:30'),
(309, 50000, NULL, 0, '390379', NULL),
(310, 100000, 'smkinformatikasumedang-1486621543.jpg', 1, '543763', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(311, 100000, 'smkinformatikasumedang-1486621503.jpg', 1, '680752', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(312, 100000, 'smkinformatikasumedang-1486621590.jpg', 1, '510066', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(313, 95000, 'smkn1subang-1486613928.jpg', 1, '159762', 'Bukti pendaftaran ini untuk kode registrasi :\r\n052688\r\n975726\r\n009131\r\n404699\r\n159762\r\n742113'),
(314, 100000, 'smkinformatikasumedang-1486621387.jpg', 1, '215603', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(315, 95000, 'smkn1subang-1486613928.jpg', 1, '742113', 'Bukti pendaftaran ini untuk kode registrasi :\r\n052688\r\n975726\r\n009131\r\n404699\r\n159762\r\n742113'),
(316, 100000, 'smkinformatikasumedang-1486621723.jpg', 1, '243085', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(317, 100000, 'smkinformatikasumedang-1486621685.jpg', 1, '093474', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(318, 50000, 'smkinformatikasumedang-1486621766.jpg', 1, '941184', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(319, 50000, 'smkinformatikasumedang-1486621839.jpg', 1, '663308', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(320, 50000, 'smkinformatikasumedang-1486621917.jpg', 1, '711713', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(321, 95000, 'smkinformatikasumedang-1486622002.jpg', 1, '476075', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(322, 95000, 'smkinformatikasumedang-1486622215.jpg', 1, '280523', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(323, 95000, 'smkinformatikasumedang-1486622294.jpg', 1, '271564', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(327, 100000, 'smknegeri1purwakarta-1486640877.jpg', 1, '103164', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(328, 150000, 'smknegeri13bandung-1486632305.jpg', 1, '760212', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(329, 50000, 'smknegeri4bandung-1486630368.png', 1, '905318', 'Pembayaran No Rek 176.136.9429 a.n Ferry Stephanus Suwita\r\nTanggal 09-02-2017 15:57'),
(330, 150000, 'smknegeri13bandung-1486632305.jpg', 1, '238094', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(331, 100000, 'smknegeri4bandung-1486630368.png', 1, '614221', 'Pembayaran No Rek 176.136.9429 a.n Ferry Stephanus Suwita\r\nTanggal 09-02-2017 15:57'),
(332, 100000, 'smknegeri13bandung-1486632305.jpg', 1, '752215', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(333, 100000, 'smknegeri13bandung-1486632305.jpg', 1, '838344', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(334, 100000, 'smkn1katapang-1486613294.jpg', 1, '832722', 'Pembayaran via bni sms banking tanggal 9 februari 2017'),
(335, 50000, 'smkn1katapang-1486613294.jpg', 1, '670844', 'Pembayaran via bni sms banking tanggal 9 februari 2017'),
(336, 100000, 'smknegeri13bandung-1486632305.jpg', 1, '347421', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(337, 100000, 'smknegeri13bandung-1486632305.jpg', 1, '667499', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(338, 95000, 'smkinformatikasumedang-1486622357.jpg', 1, '213550', 'Tanggal                                   :  09 Februari 2017\r\nNo. Rekening/Customer  : 1480861899 a.n Sita Kartina Zulkhij\r\nBerita/Keterangan              :  SMK Informatika Sumedang  (Biaya Pendaftaran Lomba Dinamik 12 UPI Bandung)\r\nNama Penyetor                    : Gugum Oxalis\r\nAlamat Penyetor                 :  Dsn. Babakancaringin, Cipanas, Tanjungkerta\r\nTelepon                                     :  082217447130\r\nJumlah setor                        :  Rp. 1.130.000,-    (untuk semua tim yang di daftarkan)'),
(339, 95000, 'smknegeri4bandung-1486630368.png', 1, '249551', 'Pembayaran No Rek 176.136.9429 a.n Ferry Stephanus Suwita\r\nTanggal 09-02-2017 15:57'),
(340, 50000, 'smknegeri13bandung-1486632305.jpg', 1, '976688', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(341, 50000, 'smknegeri13bandung-1486632305.jpg', 1, '722632', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(342, 50000, 'smknegeri13bandung-1486632305.jpg', 1, '676803', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(343, 50000, 'smknegeri13bandung-1486632305.jpg', 1, '003386', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(344, 50000, 'smknegeri13bandung-1486632305.jpg', 1, '456112', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(345, 50000, 'smknegeri13bandung-1486632305.jpg', 1, '533709', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(346, 50000, 'smknegeri13bandung-1486632305.jpg', 1, '043223', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(347, 95000, 'smknegeri13bandung-1486632305.jpg', 1, '781349', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(348, 95000, 'smknegeri13bandung-1486632305.jpg', 1, '098835', 'Pembayaran SMK Negeri 13 Bandung untuk Lomba Dinamik, terlampir sebagai berikut :\r\n1. Lomba Design Grafis (Rp50.000), sebanyak 2 Orang = Rp100.000 \r\n2. Lomba CSPC (Computer Science Programming Contest) (Rp50.000 ), sebanyak 2 Orang = Rp100.000 \r\n3. Lomba Kompetisi Jaringan (Rp50.000), sebanyak 3 Orang = Rp150.000 \r\n4. PC Assembling (Rp95.000), sebanyak 2 Orang = Rp190.000 \r\n5. Lomba Cipta Web (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n6. Lomba Olimpiade TIK (Rp150.000), sebanyak 2 Tim = Rp300.000 \r\n7. Lomba Cipta Animasi (Rp100.000), sebanyak 2 Tim = Rp200.000 \r\n\r\nTotal Pembayaran = Rp1.240.000,00\r\n'),
(351, 95000, 'smknegeri1purwakarta-1486640877.jpg', 1, '035131', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(352, 50000, 'smkn1garut-1486615730.jpg', 1, '838855', ''),
(354, 95000, 'smknegeri1purwakarta-1486640877.jpg', 1, '885316', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(355, 95000, 'smkn1sumedang-1486641965.rar', 1, '281636', 'TIM NEC SMKN 1 Sumedang kode pembayran 281636'),
(356, 95000, 'smknegeri1purwakarta-1486640877.jpg', 1, '249359', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(357, 95000, 'smknegeri1purwakarta-1486640877.jpg', 1, '949975', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(358, 95000, 'smknegeri1purwakarta-1486640877.jpg', 1, '978976', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(359, 95000, 'smkn1sumedang-1486641985.rar', 1, '078382', 'TIM NEC2 SMKN 1 Sumedang kode pembayran 281636'),
(361, 50000, 'smknegeri4bandung-1486630368.png', 1, '798905', 'Pembayaran No Rek 176.136.9429 a.n Ferry Stephanus Suwita\r\nTanggal 09-02-2017 15:57'),
(363, 50000, 'smknegeri4bandung-1486630368.png', 1, '186825', 'Pembayaran No Rek 176.136.9429 a.n Ferry Stephanus Suwita\r\nTanggal 09-02-2017 15:57'),
(364, 50000, 'sman1garut-1486630387.JPG', 1, '031639', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(365, 50000, 'sman1garut-1486630387.JPG', 1, '957018', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(367, 50000, 'sman1garut-1486630387.JPG', 1, '776624', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(368, 50000, 'sman1garut-1486630387.JPG', 1, '714372', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(369, 100000, 'sman1garut-1486630387.JPG', 1, '887656', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(370, 50000, 'sman1garut-1486630387.JPG', 1, '792714', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(371, 50000, 'sman1garut-1486630387.JPG', 1, '214398', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(372, 150000, 'sman1garut-1486630387.JPG', 1, '758149', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(374, 95000, 'smaalazharsyifabudiparahyangan-1486700833.jpg', 1, '359229', 'Pembayaran a.n Nanik Supiati (Bank Mandiri). Tanggal 09 Feb 2017. Lokasi : BDG PJKA Selatan 1\r\nNominal: Rp. 380.000,-\r\nUntuk biaya pendaftaran PCA peserta SMA Al Azhar Syifa Budi Parahyangan (Muhammad Aditya Mahardhika, Millenian Bintang Nusantara, Kevin Digo W, Muhammad Hilmi Faiz)'),
(375, 100000, 'sman1garut-1486630387.JPG', 1, '600840', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(376, 100000, 'sman1garut-1486630387.JPG', 1, '566807', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(377, 95000, 'smaalazharsyifabudiparahyangan-1486700833.jpg', 1, '098772', 'Pembayaran a.n Nanik Supiati (Bank Mandiri). Tanggal 09 Feb 2017. Lokasi : BDG PJKA Selatan 1\r\nNominal: Rp. 380.000,-\r\nUntuk biaya pendaftaran PCA peserta SMA Al Azhar Syifa Budi Parahyangan (Muhammad Aditya Mahardhika, Millenian Bintang Nusantara, Kevin Digo W, Muhammad Hilmi Faiz)'),
(378, 95000, 'smaalazharsyifabudiparahyangan-1486700833.jpg', 1, '758253', 'Pembayaran a.n Nanik Supiati (Bank Mandiri). Tanggal 09 Feb 2017. Lokasi : BDG PJKA Selatan 1\r\nNominal: Rp. 380.000,-\r\nUntuk biaya pendaftaran PCA peserta SMA Al Azhar Syifa Budi Parahyangan (Muhammad Aditya Mahardhika, Millenian Bintang Nusantara, Kevin Digo W, Muhammad Hilmi Faiz)'),
(379, 100000, 'sman1garut-1486630387.JPG', 1, '340662', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(380, 95000, 'smaalazharsyifabudiparahyangan-1486700833.jpg', 1, '693329', 'Pembayaran a.n Nanik Supiati (Bank Mandiri). Tanggal 09 Feb 2017. Lokasi : BDG PJKA Selatan 1\r\nNominal: Rp. 380.000,-\r\nUntuk biaya pendaftaran PCA peserta SMA Al Azhar Syifa Budi Parahyangan (Muhammad Aditya Mahardhika, Millenian Bintang Nusantara, Kevin Digo W, Muhammad Hilmi Faiz)'),
(381, 50000, 'smkn1-1486628768.jpg', 0, '744074', 'ini bukti transfer untuk siswa yg akan mengikuti lomba desain grafis '),
(383, 50000, 'smkn1-1486628854.jpg', 0, '486731', 'ini bukti transfer untuk siswa smkn1 cirebon yg akan mengikuti lomba desain grafis..'),
(384, 95000, 'sman1garut-1486630387.JPG', 1, '756741', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(385, 95000, 'sman1garut-1486630387.JPG', 1, '049252', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(386, 95000, 'sman1garut-1486630387.JPG', 1, '447614', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(387, 95000, 'sman1garut-1486630387.JPG', 1, '392800', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(388, 95000, 'sman1garut-1486630387.JPG', 1, '514060', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(389, 100000, 'smkn1-1486628925.jpg', 1, '059444', 'bukti transfer untuk tim.struggle dari smkn1 cirebon..terimakasih'),
(391, 50000, 'smkn1-1486628984.jpg', 1, '013226', 'bukti transfer untuk siswa dari smkn1 yg akan mengikuti lomba cspc..'),
(392, 50000, 'sman1garut-1486630387.JPG', 1, '854780', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(394, 50000, 'sman1garut-1486630387.JPG', 1, '041477', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(395, 150000, 'smkpgrijatibarang-1486781694.jpg', 1, '204698', 'Pemabayaran Pendaftran dengan Kode 204698'),
(396, 95000, 'sman1garut-1486630387.JPG', 1, '357123', 'pembayaran  CSPC (3 siswa), PCA (6 siswa), LDG (5 siswa), LCW (2 TIM), OTIK ( 1 TIM), LCA ( 2 tim) total Rp. 1.520.000'),
(397, 95000, 'smknegeri1sumedang-1486629695.jpg', 1, '293348', 'bukti transfer pendaftaran PCA  smk negeri 1 sumedang, tanggal 9 pebruari 2017'),
(398, 50000, 'smkpgrijatibarang-1486781785.jpg', 1, '295778', 'Pemabayaran Pendaftran dengan Kode 295778'),
(399, 50000, 'smkpgrijatibarang-1486781831.jpg', 1, '700473', 'Pemabayaran Pendaftran dengan Kode 700473'),
(400, 50000, 'smkpgrijatibarang-1486781868.jpg', 1, '950992', 'Pemabayaran Pendaftran dengan Kode 950992'),
(401, 95000, 'smkpgrijatibarang-1486781747.jpg', 1, '012224', 'Pemabayaran Pendaftran dengan Kode 012224'),
(402, 95000, 'smkpgrijatibarang-1486781651.jpg', 1, '505860', 'Pemabayaran Pendaftran dengan Kode 505860'),
(404, 95000, 'smkpgrijatibarang-1486781909.jpg', 1, '232950', 'Pemabayaran Pendaftran dengan Kode 232950'),
(405, 150000, 'sman11bandung-1486652788.jpg', 1, '037063', 'Pembayaran OTIK atas nama\r\nNida Fithrotun Nisa\r\nAmelia Shafa Ath-Thaariq\r\nSalam Amaliah\r\nPada tanggal 09/02/17\r\nPukul 21:29'),
(406, 50000, 'pkbmmdc-1486635944.jpg', 1, '532651', 'Dengan ini kami lampirkan bukti pembayaran kompetisi komputer jaringan, pembayaran dilakukan tanggal 9 februari 2017. A.n doris yondra melalui rekening BRI'),
(407, 110000, 'man1kotasukabumi-1486722517.jpg', 0, '588205', 'Pembayaran Lomba Robot Line follower. Tim LiFo MAN1SI. Tanggal 10 February 2017'),
(408, 100000, 'smknegeri4bandung-1486630368.png', 1, '197736', 'Pembayaran No Rek 176.136.9429 a.n Ferry Stephanus Suwita\r\nTanggal 09-02-2017 15:57'),
(409, 50000, 'smknegeri4bandung-1486649189.png', 1, '805285', 'BCA 176.136.9429 a.n Ferry Stephanus Suwita\r\nTransfer Tanggal 09-02-2017 Pukul 21:12\r\nPembayaran 3 Peserta Rp 150.000'),
(410, 50000, 'smknegeri4bandung-1486649189.png', 1, '347214', 'BCA 176.136.9429 a.n Ferry Stephanus Suwita\r\nTransfer Tanggal 09-02-2017 Pukul 21:12\r\nPembayaran 3 Peserta Rp 150.000'),
(411, 50000, 'smknegeri4bandung-1486649189.png', 1, '987314', 'BCA 176.136.9429 a.n Ferry Stephanus Suwita\r\nTransfer Tanggal 09-02-2017 Pukul 21:12\r\nPembayaran 3 Peserta Rp 150.000'),
(412, 95000, 'smknegeri1purwakarta-1486640877.jpg', 1, '543509', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(413, 95000, 'smknegeri1purwakarta-1486640877.jpg', 1, '023410', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(414, 95000, 'smknegeri1purwakarta-1486640877.jpg', 1, '407233', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(415, 100000, 'smknegeri1purwakarta-1486640877.jpg', 1, '158059', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(416, 100000, 'smknegeri1purwakarta-1486640877.jpg', 1, '557362', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(417, 100000, 'smknegeri1purwakarta-1486640877.jpg', 1, '474318', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(420, 95000, 'smknegeri1purwakarta-1486640877.jpg', 1, '131932', 'BNI \r\nTanggal 09 Februari 2017\r\nAn. Fhajar Mohamad R'),
(422, 100000, NULL, 0, '470338', NULL),
(425, 100000, NULL, 0, '264374', NULL),
(427, 100000, NULL, 0, '639282', NULL),
(428, 50000, NULL, 0, '963960', NULL),
(429, 50000, NULL, 0, '868919', NULL),
(430, 95000, NULL, 0, '832595', NULL),
(431, 95000, NULL, 0, '173032', NULL),
(432, 95000, NULL, 0, '630174', NULL),
(433, 95000, NULL, 0, '652963', NULL),
(434, 110000, NULL, 0, '143698', NULL),
(435, 50000, NULL, 0, '501231', NULL),
(438, 50000, 'smanegeri1subang-1486649232.jpg', 1, '443485', 'Assalamualaikum ka 2 lagi nyusul'),
(439, 50000, 'smanegeri1subang-1486731139.jpg', 1, '635002', '619 sama yang ini ka. Sisanyaa nanti nyusul'),
(442, 150000, 'smksigasarpindad-1486655318.jpg', 1, '699470', 'Bukti Tranfer  SMKS IGASAR PINDAD untuk kategori OTIK kode pendaftaran : 699470'),
(443, 100000, 'smksigasarpindad-1486655102.jpg', 1, '916550', 'Bukti Transfer SMKS IGASAR PINDAD untuk kategori Lomba Cipta Web , Kode pendaftaran 916550'),
(444, 95000, NULL, 0, '117758', NULL),
(445, 95000, 'smksigasarpindad-1486655009.jpg', 1, '494930', 'Bukti Pembayaran SMKS IGASAR PINDAD untuk kategori PC Assembling dengan Kode Pendaftaran : 494930'),
(446, 100000, 'smksigasarpindad-1486656106.jpg', 1, '898421', 'Bukti Transfer SMKS IGASAR PINDAD untuk kategori Lomba Cipta Animasi , kode pendaftaran : 898421'),
(447, 50000, NULL, 0, '416284', NULL);
INSERT INTO `tb_payment` (`payment_id`, `payment_amount`, `payment_document`, `payment_status`, `payment_unique_code`, `payment_description`) VALUES
(448, 50000, NULL, 0, '673753', NULL),
(449, 100000, NULL, 0, '705936', NULL),
(450, 50000, NULL, 0, '102800', NULL),
(451, 50000, NULL, 0, '635312', NULL),
(452, 95000, NULL, 0, '848221', NULL),
(470, 95000, NULL, 0, '142262', NULL),
(472, 50000, NULL, 0, '593852', NULL),
(473, 50000, NULL, 0, '171151', NULL),
(475, 95000, NULL, 0, '443377', NULL),
(476, 95000, NULL, 0, '234336', NULL),
(477, 95000, NULL, 0, '300812', NULL),
(478, 150000, NULL, 0, '316986', NULL),
(480, 50000, NULL, 0, '694252', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- RELATIONS FOR TABLE `tb_public`:
--   `public_city_id`
--       `tb_city` -> `city_id`
--   `public_account_id`
--       `tb_account` -> `account_id`
--

--
-- Truncate table before insert `tb_public`
--

TRUNCATE TABLE `tb_public`;
--
-- Dumping data for table `tb_public`
--

INSERT INTO `tb_public` (`public_id`, `public_name`, `public_gender`, `public_address`, `public_image`, `public_contact`, `public_city_id`, `public_account_id`) VALUES
(1, 'faishol27', '', '', '', '085335984174', 388, 77),
(2, 'Dika902', '', '', '', '085105006504', 308, 78),
(3, 'anisadestiana', '', '', '', '085798466008', 105, 81),
(4, 'gitamarshelina', '', '', '', '088218682911', 18, 82),
(5, 'windafebri', '', '', '', '+6283808642969', 165, 85),
(6, 'faisalsyfl', '', '', '', '085793434357', 24, 86),
(8, 'detrihf', '', '', '', '085861250197', 24, 91),
(9, 'bellaaf', '', '', '', '089-686-932-649', 24, 92),
(10, 'faustaadp', '', '', '', '081807215030', 475, 94),
(12, 'testumum', '', '', '', '123123123', 75, 96),
(14, 'aditianovit', '', '', '', '08999245424', 144, 107),
(15, 'mashanif123', '', '', '', '085212365048', 105, 110),
(16, 'Felicia Evelin Sianturi', '', '', '', '082138331777', 151, 111),
(17, 'rafishalahudin', '', '', '', '083822523876', 24, 113),
(18, 'asdsad', '', '', '', 'dsadsad', 388, 114),
(19, 'Qushoyy', '', '', '', '08581487610', 1, 118),
(20, 'alihasanasyari', '', '', '', '085780905854', 24, 126),
(21, 'pisckipratama', '', '', '', '0895322000415', 24, 127),
(22, 'Indo', '', '', '', '0866647957', 4, 130),
(23, 'rahmi', '', '', '', '081276565290', 339, 131),
(24, 'Mohamad_zaelani', '', '', '', '085735086473', 291, 132),
(25, 'phillotunru', '', '', '', '08119581492', 432, 137),
(26, 'firdy adi', '', '', '', '08997808771', 18, 149),
(27, 'Rasyid', '', '', '', '08976456096', 105, 153),
(28, 'Alviani', '', '', '', '08999413226', 54, 155),
(29, 'iqbalifeni', '', '', '', '085721868681', 24, 159),
(30, 'Evan Agustian Lukius', '', '', '', '08817845345', 405, 168),
(31, 'mfandirudiansah', '', '', '', '089512896706', 24, 171),
(32, 'Ismayana', '', '', '', '088802312434', 104, 172),
(33, 'dwiffitriq', '', '', '', '081220021245', 24, 173),
(34, 'sheilahnuf', '', '', '', '089681823115', 24, 178),
(35, 'Budi ana', '', '', '', '082115107349', 416, 179),
(36, 'ebensantosa', '', '', '', '089689390276', 329, 184),
(37, 'Faisal', '', '', '', '085781625151', 407, 185),
(38, 'Varistya Farhan', '', '', '', '085320900074', 24, 187),
(39, 'Muhamad nopa', '', '', '', '089636390570', 24, 190),
(40, 'vincent', '', '', '', '085767290511', 24, 191),
(41, 'AiniyahPutri', '', '', '', '082168470604', 264, 200),
(42, 'visualmaven', '', '', '', '0895610361233', 104, 201),
(43, 'indrifp', '', '', '', '08156118024', 104, 203),
(44, 'Gamma Muhammad Najmudin', '', '', '', '085724786788', 407, 204),
(45, 'fandrip', '', '', '', '089527163299', 405, 211),
(46, 'yeni suhaeni', '', '', '', '085224859484', 240, 220),
(47, 'ash', '', '', '', '081277963051', 333, 223),
(48, 'irfan', '', '', '', '+62 85320745988', 24, 226),
(49, 'Diksikustik', '', '', '', '081222774303', 24, 228),
(50, 'Sakhihartanto', '', '', '', '081223662064', 24, 239),
(51, 'thaariqh', '', '', '', '082217511698', 24, 240),
(52, 'nayopa', '', '', '', '', 105, 241),
(53, 'AkbarH', '', '', '', '083820610757', 24, 242),
(54, 'asur', '', '', '', '081395115155', 23, 246),
(55, 'Bascomp', '', '', '', '089678766173', 405, 247),
(56, 'Fauzan', '', '', '', '082116308581', 122, 249),
(57, 'Lamone Sakaka Iman', '', '', '', '081320235883', 104, 259),
(58, 'Adnan Z', '', '', '', '089530495131', 24, 260),
(59, 'fahmi', '', '', '', '08112002399', 24, 286),
(60, 'Wina Yulinar', '', '', '', '089660288728', 24, 318),
(61, 'Riezaldi', '', '', '', '0895356193270', 24, 319),
(62, 'bayupandu1', '', '', '', '083123644073', 332, 322),
(63, 'sofiasoleha', '', '', '', '087874040609', 24, 332),
(64, 'DorisYondra', '', '', '', '083820670577', 104, 333),
(65, 'io', '', '', '', '085722810053', 357, 347),
(66, 'Hurin Azka Millatina', '', '', '', '089638694779', 75, 350),
(67, 'Alan Nugrohadi', '', '', '', '081320703916', 24, 366),
(68, 'Windisapitri', '', '', '', '085294642992', 24, 368),
(69, 'Ria_Haryani', '', '', '', '082214683050', 18, 370),
(70, 'fatah_isa', '', '', '', '081227186259', 329, 371),
(71, 'indrii', '', '', '', '', 104, 388),
(72, 'GIF', '', '', '', '+6281313176453', 105, 391),
(73, 'pinakestikintan', '', '', '', '083820100763', 24, 392),
(74, 'Juli', '', '', '', '085327999774', 335, 395),
(75, 'Rizki Khairun Fadhilla', '', '', '', '087774404540', 382, 405),
(76, 'Nisfy', '', '', '', '0895365818650', 18, 434),
(77, 'nickytabps', '', '', '', '083112534747', 357, 455),
(78, 'Mohamad Rafi Alfariz', '', '', '', '083824435622', 105, 555),
(79, 'renaldi budiana dwi poetra', '', '', '', '088977614158', 18, 612),
(80, 'kirato.fuyu', '', '', '', '081931223987', 104, 616),
(81, 'yoristeguh', '', '', '', '089622331287', 24, 641),
(82, 'aefs', '', '', '', '089656346749', 357, 655),
(83, 'Chandra Jumara', '', '', '', '087722119220', 23, 657),
(84, 'alfian.isnan', '', '', '', '081646910722', 407, 691),
(85, 'arz4rt', '', '', '', '085792029283', 423, 700);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pubteam`
--

DROP TABLE IF EXISTS `tb_pubteam`;
CREATE TABLE IF NOT EXISTS `tb_pubteam` (
  `pubteam_id` int(11) NOT NULL AUTO_INCREMENT,
  `pubteam_name` varchar(255) NOT NULL,
  `pubteam_instance` text,
  `pubteam_email` varchar(255) NOT NULL,
  `pubteam_contact` varchar(255) NOT NULL,
  `pubteam_file` longtext,
  `pubteam_file_log` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pubteam_public_id` int(11) NOT NULL,
  `pubteam_event_id` int(11) NOT NULL,
  `pubteam_payment_id` int(11) NOT NULL,
  PRIMARY KEY (`pubteam_id`),
  KEY `pubteam_public_id` (`pubteam_public_id`),
  KEY `pubteam_public_id_2` (`pubteam_public_id`,`pubteam_event_id`,`pubteam_payment_id`),
  KEY `pubteam_public_id_3` (`pubteam_public_id`,`pubteam_event_id`,`pubteam_payment_id`),
  KEY `pubteam_payment_id` (`pubteam_payment_id`),
  KEY `pubteam_event_id` (`pubteam_event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- RELATIONS FOR TABLE `tb_pubteam`:
--   `pubteam_public_id`
--       `tb_public` -> `public_id`
--   `pubteam_payment_id`
--       `tb_payment` -> `payment_id`
--   `pubteam_event_id`
--       `tb_event` -> `event_id`
--

--
-- Truncate table before insert `tb_pubteam`
--

TRUNCATE TABLE `tb_pubteam`;
--
-- Dumping data for table `tb_pubteam`
--

INSERT INTO `tb_pubteam` (`pubteam_id`, `pubteam_name`, `pubteam_instance`, `pubteam_email`, `pubteam_contact`, `pubteam_file`, `pubteam_file_log`, `pubteam_public_id`, `pubteam_event_id`, `pubteam_payment_id`) VALUES
(1, 'Muhammad Faishol Amirul Mukminin', '', 'faishol.amirul27@gmail.com', '085335984174', NULL, '2017-01-14 13:34:59', 1, 11, 1),
(4, 'Detri Hasna Fadhila', NULL, 'detrihf@gmail.com', '085861250197', NULL, NULL, 8, 14, 5),
(5, 'Edwina Bella Afifah', NULL, 'zathyrazarif.zk@gmail.com', '089-686-932-649', NULL, NULL, 9, 11, 6),
(7, 'GG', NULL, 'asdasd@aoign', '123123', NULL, NULL, 12, 9, 8),
(9, 'Faisal Syaiful Anwar', 'Computer Science UPI', 'faisalsyfl@gmail.com', '085793434357', NULL, NULL, 6, 11, 13),
(12, 'Inso', 'Indo', 'indo@gmail.con', '0875785875', NULL, NULL, 22, 10, 23),
(14, 'RD Moch Firdy Adi S.', 'smk', 'firdyadi@gmail.com', '08997808771', NULL, NULL, 26, 14, 34),
(15, 'Ismayana', 'SMKN 1 Cimahi', 'ismayanaa89@gmail.com', '088802312434', NULL, NULL, 32, 14, 45),
(16, 'sheilla hayatun nufus', 'sman 7 bandung', 'naichanme@gmail.com', '089681823115', NULL, NULL, 34, 9, 50),
(17, 'Mochammad Rahmat Faisal', 'STT Pelita Bangsa', 'faisalikevil@gmail.com', '085781625151', NULL, '2017-01-27 19:42:26', 37, 10, 53),
(18, 'Varistya Farhan', 'STTT', 'Varistya.f@yahoo.com', '085320900074', NULL, NULL, 38, 14, 54),
(21, 'Diksikustik', 'Pendidikan Akuntansi', 'auliaghni30@gmail.com', '081222774303', NULL, NULL, 49, 14, 78),
(23, 'thaariqh alfath', 'siswa', '', '', NULL, NULL, 51, 10, 88),
(24, 'thaariqh alfath', 'siswa', 'alfathaariqg@gmail.com', '082217511698', NULL, NULL, 51, 10, 89),
(25, 'Akbar Hidayatuloh', 'Universitas Pendidikan Indonesia', 'akbar0102@student.upi.edu', '083820610757', NULL, NULL, 53, 11, 90),
(26, 'Agus Suratna P., S.Pd.', 'SMK Negeri 1 Cimahi', 'agussuratna@gmail.com', '081395115155', NULL, NULL, 54, 10, 92),
(27, 'Az''han sastra yudha', 'Bascomp', 'itsmanda24@gmail.com', '089678766173', NULL, NULL, 55, 11, 93),
(28, 'Fauzan M.F', 'Pelajar', 'fauzanmf982@gmail.com', '082116308581', NULL, NULL, 56, 11, 94),
(29, 'Wina Yulinar', 'Universitas Pendidikan Indonesia', 'winayulinar@gmail.com', '089660288728', NULL, NULL, 60, 10, 153),
(30, 'Riezaldi muhammad isnan', 'Universitas pendidikan indonesia', 'riezaldii@gmail.com', '0895356193270', NULL, NULL, 61, 10, 154),
(31, 'Riezaldi muhammad isnan', 'Universitas pendidikan indonesia', 'riezaldii@gmail.com', '0895356193270', NULL, NULL, 61, 11, 155),
(32, 'shofiah sholehah', 'universitas pendidikan indonesia', 'shofiasoleha@gmail.com', '087874040609', NULL, NULL, 63, 10, 165),
(33, 'Hurin Azka Millatina', 'IPSE', 'hurinazka10@yahoo.com', '089638694779', NULL, NULL, 66, 10, 176),
(34, 'Alan Nugrohadi', 'UIN Syarif Hidayatullah Jakarta', 'alan.nugrohadi@gmail.com', '081320703916', NULL, NULL, 67, 10, 192),
(35, 'Windi sapitri', 'Universitas pendidikan Indonesia ', 'windisapitri@student.upi.edu', '085294642992', NULL, NULL, 68, 10, 193),
(36, 'Indri Febriana Putri', 'SMKN 1 Cimahi', 'indrifputri@gmail.com', '08156118024', NULL, NULL, 43, 11, 194),
(38, 'Indrii', 'SMKN 1 Cimahi', 'indrifp24@gmail.com', '', NULL, NULL, 71, 11, 212),
(39, 'Faisal Syaful A', 'UPI', 'faisalsyfl@gmail.com', '088888888', NULL, NULL, 6, 10, 214),
(41, '', '', '', '', NULL, NULL, 76, 9, 309),
(43, 'PSP CREW', 'SMAN 1 Padalarang', 'chandrajumara@gmail.com', '087722119220', NULL, NULL, 83, 14, 447);

-- --------------------------------------------------------

--
-- Table structure for table `tb_school`
--

DROP TABLE IF EXISTS `tb_school`;
CREATE TABLE IF NOT EXISTS `tb_school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) NOT NULL,
  `school_grade` varchar(15) NOT NULL,
  `school_web` text NOT NULL,
  `school_address` text,
  `school_image` text,
  `school_contact` varchar(20) NOT NULL,
  `school_city_id` int(11) NOT NULL,
  `school_account_id` int(11) NOT NULL,
  PRIMARY KEY (`school_id`),
  KEY `school_city_id` (`school_city_id`),
  KEY `tb_school_ibfk_2` (`school_account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- RELATIONS FOR TABLE `tb_school`:
--   `school_city_id`
--       `tb_city` -> `city_id`
--   `school_account_id`
--       `tb_account` -> `account_id`
--

--
-- Truncate table before insert `tb_school`
--

TRUNCATE TABLE `tb_school`;
--
-- Dumping data for table `tb_school`
--

INSERT INTO `tb_school` (`school_id`, `school_name`, `school_grade`, `school_web`, `school_address`, `school_image`, `school_contact`, `school_city_id`, `school_account_id`) VALUES
(1, 'Test', 'SMK', '', NULL, NULL, '123123', 75, 79),
(3, 'SMK NU Kaplongan', 'SMK', '', NULL, NULL, '085224427843', 144, 83),
(4, 'SMK PASUNDAN 3 KOTA CIMAHI', 'SMK', '', NULL, NULL, '085722622860', 104, 84),
(5, 'SMAN 24 BANDUNG', 'SMA', '', NULL, NULL, '0227800196', 24, 88),
(6, 'SMA 1 Uganda', 'SMA', '', NULL, NULL, '08888888888', 12, 89),
(8, 'SMAN 22 BANDUNG', 'SMA', '', NULL, NULL, '081931454161', 18, 99),
(9, 'Ma yi rajamandala', 'SMA', '', NULL, NULL, '085720016745', 23, 101),
(10, 'SMA NEGERI 3 CIMAHI ', 'SMA', '', NULL, NULL, '081320377251', 104, 103),
(12, 'SMA lalala', 'SMA', '', NULL, NULL, '082115093046', 23, 105),
(14, 'SMK BPI Bandung', 'SMK', '', NULL, NULL, '083821081572', 24, 109),
(16, 'SMKN 1 Cirebon', 'SMK', '', NULL, NULL, '085798466008', 105, 119),
(17, 'SMKN 1 Cimahi', 'SMK', '', NULL, NULL, '089603806762', 104, 124),
(18, 'SMAN 17 Bandung', 'SMA', '', NULL, NULL, '085780905854', 24, 125),
(19, 'SMK Angkasa 1 Margahayu', 'SMK', '', NULL, NULL, '02225416703', 24, 128),
(20, 'SMK TAKHASSUS QURAN AL - HIKMAH', 'SMK', '', NULL, NULL, '02318344860', 105, 129),
(21, 'SMA NEGERI 1 TANJUNGANOM', 'SMA', '', NULL, NULL, 'Kontak Resmi', 291, 133),
(22, 'SMAN 1 TANJUNGANOM', 'SMA', '', NULL, NULL, '', 291, 134),
(23, 'SMAK Penabur Gading Serpong', 'SMA', '', NULL, NULL, '54205137', 432, 136),
(24, 'Smak Penabur GS', 'SMA', '', NULL, NULL, '081381909100', 432, 138),
(25, 'SMA Harapan Bangsa', 'SMA', '', NULL, NULL, '081213000503', 432, 140),
(26, 'SMK BPI', 'SMK', '', NULL, NULL, '081221316680', 18, 150),
(27, 'SMK INFORMATIKA KOTA SERANG', 'SMK', '', NULL, NULL, '087774847965', 382, 151),
(28, 'SMA Negeri 1 Yogyakarta', 'SMA', '', NULL, NULL, '0274513454', 475, 156),
(29, 'SMK PGRI JATIBARANG', 'SMK', '', NULL, NULL, '083808490159', 144, 167),
(30, 'SMK Negeri 13 Bandung', 'SMK', '', NULL, NULL, '0227318960', 24, 169),
(31, 'SMK Pasundan 1 Cimahi', 'SMK', '', NULL, NULL, '082219150001', 104, 170),
(32, 'SMA Darma Yudha', 'SMA', '', NULL, NULL, '085265730395', 333, 180),
(33, 'Sma Negeri 1 PATI', 'SMA', '', NULL, NULL, '08989390276', 329, 183),
(34, 'SMK NEGERI 1 PANYINGKIRAN', 'SMK', '', NULL, NULL, '0233282985', 240, 186),
(35, 'SMKN 1 SUBANG', 'SMK', '', NULL, NULL, '0260411410', 405, 188),
(36, 'SMK PU NEGERI BANDUNG PROVINSI JAWA BARAT', 'SMK', '', NULL, NULL, '0227208317', 24, 189),
(37, 'SMK Negeri 7 Semarang', 'SMK', '', NULL, NULL, '089623535969', 379, 202),
(38, 'SMK NEGERI 1 CIMAHI', 'SMK', '', NULL, NULL, '081221800590', 104, 205),
(39, 'SMAN 2 Bekasi', 'SMA', '', NULL, NULL, '08998033777', 54, 206),
(40, 'SMA Negeri 1 Subang', 'SMA', '', NULL, NULL, '089527163299', 405, 210),
(41, 'Miftahul Huda', 'SMK', '', NULL, NULL, '02318344152', 105, 212),
(42, 'Sekolah menengah negeri 7', 'SMA', '', NULL, NULL, '081222922207', 24, 219),
(43, 'SMK NEGERI 1 PANYINGKIRAN MAJALENGKA', 'SMK', '', NULL, NULL, '0233282985', 240, 221),
(44, 'SMK NEGERI 6 GARUT', 'SMK', '', NULL, NULL, '085624601054', 122, 229),
(45, 'SMKN 2 BALEENDAH', 'SMK', '', NULL, NULL, '089526858574', 24, 230),
(46, 'SMAN 11 GARUT', 'SMA', '', NULL, NULL, '08122481734', 122, 243),
(47, 'SMK ASSALAAM BANDUNG', 'SMK', '', NULL, NULL, '08112443213', 24, 244),
(48, 'Smk 5 malang', 'SMK', '', NULL, NULL, '85649554205', 243, 248),
(49, 'SMA Negeri 6 Cimahi', 'SMA', '', NULL, NULL, '085795151196', 104, 251),
(50, 'SMKN 5', 'SMK', '', NULL, NULL, '089628060091', 24, 261),
(51, 'SMA NEGERI 1 SIDOARJO', 'SMA', '', NULL, NULL, '085257153556', 388, 280),
(52, 'SMKN 1 Garut', 'SMK', '', NULL, NULL, '085315022928', 122, 283),
(53, 'pondok modern darussalam gontor 3', 'SMA', '', NULL, NULL, '081260968002', 172, 284),
(54, 'SMKN 1 INDRAMAYU', 'SMK', '', NULL, NULL, '089626864450', 144, 288),
(55, 'SMK PU Negeri Bandung Prov.Jawa Barat', 'SMK', '', NULL, NULL, '0227208317', 24, 314),
(56, 'SMK MUHAMMADIYAH KOTA PEKALONGAN', 'SMK', '', NULL, NULL, '083123644073', 332, 323),
(57, 'SMK MUHAMMADIYAH PEKALONGAN', 'SMK', '', NULL, NULL, '083123644073', 332, 324),
(58, 'SMA Pribadi', 'SMA', '', NULL, NULL, '0227211674', 24, 334),
(59, 'SMK Taruna Mandiri', 'SMK', '', NULL, NULL, '081320730866', 104, 339),
(60, 'SMAN 9 Bandung', 'SMA', '', NULL, NULL, '0226123806', 24, 340),
(61, 'SMA N * Yogyakarta', 'SMA', '', NULL, NULL, '085878577741', 475, 341),
(62, 'SMK Negeri 4 Bandung', 'SMK', '', NULL, NULL, '0227303736', 24, 348),
(63, 'SMK INFORMATIKA AL - IRSYAD AL - ISLAMIYYAH', 'SMK', '', NULL, NULL, '0231480140', 105, 367),
(64, 'SMA ALBINAA IBS', 'SMA', '', NULL, NULL, '081394384536', 54, 369),
(65, 'SMAN 2 Labakkang Boarding School', 'SMA', '', NULL, NULL, '082291694865', 318, 389),
(66, 'SMAN 11 Bandung', 'SMA', '', NULL, NULL, '083820100763', 24, 393),
(67, 'SMA Negeri 1 Baleendah', 'SMA', '', NULL, NULL, '089634595691', 24, 394),
(68, 'SMK INFORMATIKA ', 'SMK', '', NULL, NULL, '087774404540', 382, 407),
(69, 'SMA IT AL BINAA IBS', 'SMA', '', NULL, NULL, '081394384536', 54, 413),
(70, 'SMA Plus Muthahhari ', 'SMA', '', NULL, NULL, '0227204780', 24, 425),
(71, 'SMK Informatika Sumedang', 'SMK', '', NULL, NULL, '202767', 416, 431),
(72, 'SMA Negeri 2 Cirebon', 'SMA', '', NULL, NULL, '081564648066', 105, 435),
(73, 'SMA Negeri 15 Bandung', 'SMA', '', NULL, NULL, '0222011975', 24, 456),
(74, 'SMA N 4 Bandung', 'SMA', '', NULL, NULL, '085721075933', 24, 457),
(75, 'SMKN 1 Katapang', 'SMK', '', NULL, NULL, '0225893737', 24, 475),
(76, 'SMAN 1 PARONGPONG', 'SMA', '', NULL, NULL, '0895365818650', 23, 499),
(77, 'MAN 1 Kota Sukabumi', 'SMA', '', NULL, NULL, '85721370451', 407, 500),
(78, 'SMA Al Azhar Syifa Budi Parahyangan', 'SMA', '', NULL, NULL, '085259768122', 23, 507),
(79, 'SMKN 1 MAJALENGKA', 'SMK', '', NULL, NULL, '0233282913', 240, 509),
(80, 'SMK NEGERI 1 PURWAKARTA', 'SMK', '', NULL, NULL, '083816744715', 357, 511),
(81, 'SMKN 1 SUMEDANG', 'SMK', '', NULL, NULL, '085795247061', 416, 544),
(82, 'SMAN 1 GARUT', 'SMA', '', NULL, NULL, '087718345358', 122, 558),
(83, 'SMA AL MA''SOEM', 'SMA', '', NULL, NULL, '087823947234', 18, 582),
(84, 'SMK NEGERI 1 SUMEDANG', 'SMK', '', NULL, NULL, '082115107349', 416, 591),
(85, 'SMKN 1 Malausma', 'SMK', '', NULL, NULL, '6282214370033', 240, 605),
(86, 'PKBM MDC', 'SMA', '', NULL, NULL, '083820670577', 24, 607),
(87, 'SMK NEGERI 1 LEMAHSUGIH', 'SMK', '', NULL, NULL, '085295709010', 240, 610),
(88, 'SMAIT Ihsanul Fikri Magelang ', 'SMA', '', NULL, NULL, '085727291061', 238, 645),
(89, 'SMKS IGASAR PINDAD ', 'SMK', '', NULL, NULL, '085220744582', 24, 646),
(90, 'SMAIT Ihsanul FIkri ', 'SMA', '', NULL, NULL, '08125505752', 238, 647),
(91, 'SMK Negri 1 Purwakarta', 'SMK', '', NULL, NULL, '0264200163', 357, 654),
(92, 'SMKN 4 Padalarang', 'SMK', '', NULL, NULL, '0226805406', 23, 660),
(93, 'SMAN 4 CIMAHI', 'SMA', '', NULL, NULL, '081320326052', 104, 663),
(94, 'SMAN 25 BANDUNG', 'SMA', '', NULL, NULL, '', 24, 665),
(95, 'SMK Guna Dharma Nusantara', 'SMK', '', NULL, NULL, '0227952201', 24, 667),
(97, 'SMK Pasundan 1 Kota Bandung', 'SMK', '', NULL, NULL, '085624111417', 24, 687),
(98, 'SMAN 5 Bandung', 'SMA', '', NULL, NULL, '0224206921', 423, 699);

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
  `schparticipant_email` text,
  `schparticipant_address` text,
  `schparticipant_studentid` text,
  `schparticipant_schteam_id` int(11) NOT NULL,
  PRIMARY KEY (`schparticipant_id`),
  KEY `schparticipant_schteam_id` (`schparticipant_schteam_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=665 ;

--
-- RELATIONS FOR TABLE `tb_schparticipant`:
--   `schparticipant_schteam_id`
--       `tb_schteam` -> `schteam_id`
--

--
-- Truncate table before insert `tb_schparticipant`
--

TRUNCATE TABLE `tb_schparticipant`;
--
-- Dumping data for table `tb_schparticipant`
--

INSERT INTO `tb_schparticipant` (`schparticipant_id`, `schparticipant_name`, `schparticipant_nisn`, `schparticipant_birth`, `schparticipant_gender`, `schparticipant_contact`, `schparticipant_email`, `schparticipant_address`, `schparticipant_studentid`, `schparticipant_schteam_id`) VALUES
(1, 'Ahmad Saefullah', '109281928192', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Robby Jati Almukarom', '192813718872', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'Sulaeman Hutabarat', '198281728172', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(16, 'Phillo Hambali Tunru', '0013377812', NULL, NULL, NULL, NULL, NULL, NULL, 14),
(20, 'Adinda Fitrria', '0008250932', NULL, NULL, NULL, NULL, NULL, NULL, 16),
(21, 'Sherin Devi Sutomo', '0003376497', NULL, NULL, NULL, NULL, NULL, NULL, 16),
(22, 'Agatha Maria Josephine', '0004474607', NULL, NULL, NULL, NULL, NULL, NULL, 16),
(23, 'Kevin Widjaja', '0003376519', NULL, NULL, NULL, NULL, NULL, NULL, 17),
(24, 'Vinne Shevin', 'vinnesvm@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 17),
(25, 'Reynaldi Buya Saputra', '0003091486', NULL, NULL, NULL, NULL, NULL, NULL, 17),
(26, 'Agatha Maria Josephine', '0004474607', NULL, NULL, NULL, NULL, NULL, NULL, 18),
(27, 'Vinne Shevin', '0003377467', NULL, NULL, NULL, NULL, NULL, NULL, 19),
(28, 'Adinda Fitrria', '0008250932', NULL, NULL, NULL, NULL, NULL, NULL, 20),
(29, 'Garry', '0003376497', NULL, NULL, NULL, NULL, NULL, NULL, 21),
(33, 'Danendra Lohanta', '003776498', NULL, NULL, NULL, NULL, NULL, NULL, 23),
(36, 'Giyas Fauzi Rasyid', '9995254533', NULL, NULL, NULL, NULL, NULL, NULL, 26),
(37, 'Surya Prayoga', '9984858874', NULL, NULL, NULL, NULL, NULL, NULL, 26),
(38, 'Alif Gufron', '9991645868', NULL, NULL, NULL, NULL, NULL, NULL, 27),
(39, 'Radiyansyah Hakim', '0013310777', NULL, NULL, NULL, NULL, NULL, NULL, 28),
(40, 'Alif Gufron', '9991645868', NULL, NULL, NULL, NULL, NULL, NULL, 29),
(41, 'Muhammad Izan Fauzillah', '0001005198', NULL, NULL, NULL, NULL, NULL, NULL, 30),
(42, 'Muhammad Varizki Mazaya', '001048997', NULL, NULL, NULL, NULL, NULL, NULL, 31),
(72, 'Hansen Frenico', '151610137', NULL, NULL, NULL, NULL, NULL, NULL, 48),
(73, 'Afriza Rochman', '0007709749', NULL, NULL, NULL, NULL, NULL, NULL, 49),
(76, 'Arif Handiansyah', '0001097018', NULL, NULL, NULL, NULL, NULL, NULL, 52),
(77, 'Ziyad El Bero', '9981438977', NULL, NULL, NULL, NULL, NULL, NULL, 52),
(78, 'Rahmat Nurohman', '0009512764', NULL, NULL, NULL, NULL, NULL, NULL, 53),
(79, 'Jujun Junaedi', '0005423821', NULL, NULL, NULL, NULL, NULL, NULL, 54),
(80, 'Amar Zaka Fauzi', '0002116526', NULL, NULL, NULL, NULL, NULL, NULL, 55),
(81, 'Rafi Rifarian', '0005898386', NULL, NULL, NULL, NULL, NULL, NULL, 56),
(87, 'Rizki', '0006366842', NULL, NULL, NULL, NULL, NULL, NULL, 59),
(92, 'Aris Sandiari', '0008907710', NULL, NULL, NULL, NULL, NULL, NULL, 62),
(93, 'Muhamad Duta AC Permana', '0016252864', NULL, NULL, NULL, NULL, NULL, NULL, 63),
(101, 'Nopi Latipah', '00016687451', NULL, NULL, NULL, NULL, NULL, NULL, 67),
(102, 'Dian Andria', '', NULL, NULL, NULL, NULL, NULL, NULL, 68),
(103, 'Anastasya ', '', NULL, NULL, NULL, NULL, NULL, NULL, 68),
(109, 'Arif Rahmansyah', '0006962755', NULL, NULL, NULL, NULL, NULL, NULL, 71),
(110, 'Fiqri Muhammad Azahri', '0002973321', NULL, NULL, NULL, NULL, NULL, NULL, 71),
(111, 'Raden Nicky Muhammad Rosdiansyah', '9992112689', NULL, NULL, NULL, NULL, NULL, NULL, 72),
(112, 'Surya Hadi Pratama', '0000016633', NULL, NULL, NULL, NULL, NULL, NULL, 72),
(113, 'Muhamad Syahrul Falahi', '0009173618', NULL, NULL, NULL, NULL, NULL, NULL, 73),
(114, 'Cantika Nur Puspa', '0010496874', NULL, NULL, NULL, NULL, NULL, NULL, 73),
(115, 'Ajeng Anggun Anggarsari', '0010512802', NULL, NULL, NULL, NULL, NULL, NULL, 73),
(116, 'Muhammad Rayhan Fasha Maulana', '0009232967', NULL, NULL, NULL, NULL, NULL, NULL, 74),
(117, 'Rena Rachmanda Ishak', '0012004237', NULL, NULL, NULL, NULL, NULL, NULL, 74),
(118, 'Irfan Mujiansyah', '0001643607', NULL, NULL, NULL, NULL, NULL, NULL, 74),
(139, 'M.FAHMI RIZALDY', '', NULL, NULL, NULL, NULL, NULL, NULL, 89),
(140, 'Ichsan Maulana', '', NULL, NULL, NULL, NULL, NULL, NULL, 90),
(143, 'Muhamad Fadli Winarya', '', NULL, NULL, NULL, NULL, NULL, NULL, 93),
(144, 'Muhammad Faishol Amirul Mukminin', '0013352030', NULL, NULL, NULL, NULL, NULL, NULL, 94),
(145, 'WIRANDIKA MAYZZANI HADIANA', '0012957318', NULL, NULL, NULL, NULL, NULL, NULL, 95),
(149, 'haikal luthfi nasution', '56734', NULL, NULL, NULL, NULL, NULL, NULL, 97),
(150, 'Ilham Gymnastiar', '0004574249', NULL, NULL, NULL, NULL, NULL, NULL, 98),
(151, 'Firdaus Andri Pramana', '0007476511', NULL, NULL, NULL, NULL, NULL, NULL, 99),
(152, 'Angela Novriyanti', '0012597839', NULL, NULL, NULL, NULL, NULL, NULL, 100),
(153, 'Meizia Raihan', '0014273402', NULL, NULL, NULL, NULL, NULL, NULL, 101),
(154, 'Fajar Fadil Assidiq', '0005370902', NULL, NULL, NULL, NULL, NULL, NULL, 102),
(155, 'Muhammad Harits Nurrakhman', '0017584545', NULL, NULL, NULL, NULL, NULL, NULL, 103),
(156, 'Atthariq Fachri', '0000488983', NULL, NULL, NULL, NULL, NULL, NULL, 104),
(158, 'Enggar Fahmy Al-Hikam', '9995474026', NULL, NULL, NULL, NULL, NULL, NULL, 106),
(159, 'Wahyu Ridwan Fadillah', '0009067260', NULL, NULL, NULL, NULL, NULL, NULL, 107),
(160, 'Muhammad Iqbal Ardiansyah', '0004758872', NULL, NULL, NULL, NULL, NULL, NULL, 108),
(161, 'Naurah Qurratuain', '0011071693', NULL, NULL, NULL, NULL, NULL, NULL, 109),
(162, 'Retno Jati Rahayu', '0011353023', NULL, NULL, NULL, NULL, NULL, NULL, 110),
(163, 'Oktavian Dwi Santosa', '0010933888', NULL, NULL, NULL, NULL, NULL, NULL, 111),
(164, 'Meliana Rizki', '0026654927', NULL, NULL, NULL, NULL, NULL, NULL, 112),
(165, 'Theresia Deviyana Gunawan', '0012892634', NULL, NULL, NULL, NULL, NULL, NULL, 114),
(166, 'Laela Rahmawati Dewi', '0012892626', NULL, NULL, NULL, NULL, NULL, NULL, 115),
(167, 'Restu Aditya Rachman', '0010757188', NULL, NULL, NULL, NULL, NULL, NULL, 116),
(168, 'Muhammad Ghivar', '0002189340', NULL, NULL, NULL, NULL, NULL, NULL, 117),
(169, 'Rangga Adikusuma', '0013146877', NULL, NULL, NULL, NULL, NULL, NULL, 118),
(170, 'Eurico Pratama P', '0003617148', NULL, NULL, NULL, NULL, NULL, NULL, 119),
(171, 'Vinia Nurul Nissa', '0012598520', NULL, NULL, NULL, NULL, NULL, NULL, 120),
(172, 'Prayudia Ananda', '0014273398', NULL, NULL, NULL, NULL, NULL, NULL, 121),
(174, 'Fauzan Rizki Muharam', '0004276294', NULL, NULL, NULL, NULL, NULL, NULL, 123),
(175, 'Fajar Fadil Assidiq', '0005370902', NULL, NULL, NULL, NULL, NULL, NULL, 123),
(176, 'M. Galuh Febrian', '0006921818', NULL, NULL, NULL, NULL, NULL, NULL, 123),
(177, 'Maulana Dimas Iffandi', '0000741019', NULL, NULL, NULL, NULL, NULL, NULL, 124),
(178, 'Risma Alya Noviandini', '0004779184', NULL, NULL, NULL, NULL, NULL, NULL, 124),
(179, 'Muhammad Bintang Sebastian', '0014273421', NULL, NULL, NULL, NULL, NULL, NULL, 124),
(180, 'Fauzan Rizki Muharam', '0004276294', NULL, NULL, NULL, NULL, NULL, NULL, 125),
(181, 'Ghea Graciella Juanda', '0000488853', NULL, NULL, NULL, NULL, NULL, NULL, 125),
(182, 'Amelia Laili', '9996080787', NULL, NULL, NULL, NULL, NULL, NULL, 125),
(183, 'Rivan Nur Ihsan', '0000488955', NULL, NULL, NULL, NULL, NULL, NULL, 126),
(184, 'Gustiawan Maula Rizki', '9998751392', NULL, NULL, NULL, NULL, NULL, NULL, 127),
(202, 'Rafael Galuh Setia Pradana', '151610114', NULL, NULL, NULL, NULL, NULL, NULL, 140),
(203, 'Rizal Indera', '151610084', NULL, NULL, NULL, NULL, NULL, NULL, 140),
(204, 'Faizal Hudya Rizfianto', '', NULL, NULL, NULL, NULL, NULL, NULL, 140),
(205, 'Fadhil Rasendriya Prabowo', '0003243716', NULL, NULL, NULL, NULL, NULL, NULL, 141),
(206, 'Piscki Febiryansyah Pratama', '9998996792', NULL, NULL, NULL, NULL, NULL, NULL, 142),
(207, 'Arip Rahman', '9995361192', NULL, NULL, NULL, NULL, NULL, NULL, 143),
(208, 'RAKHA FAUZI MAULANA', '999728805', NULL, NULL, NULL, NULL, NULL, NULL, 144),
(214, 'Abdul Hafizh Maulana', '', NULL, NULL, NULL, NULL, NULL, NULL, 150),
(215, 'Annisa Rahmasari', '', NULL, NULL, NULL, NULL, NULL, NULL, 151),
(217, 'Marhamdan Pramarna', '', NULL, NULL, NULL, NULL, NULL, NULL, 153),
(218, 'M. Gilang Maulana', '', NULL, NULL, NULL, NULL, NULL, NULL, 154),
(219, 'Heru Purnama', '', NULL, NULL, NULL, NULL, NULL, NULL, 155),
(220, 'Awaluddin Al-Anshori', '', NULL, NULL, NULL, NULL, NULL, NULL, 156),
(221, 'Aep Saepudin', '', NULL, NULL, NULL, NULL, NULL, NULL, 157),
(222, 'Egi Supriadi', '', NULL, NULL, NULL, NULL, NULL, NULL, 157),
(223, 'M. Davin Aghnia Jaya', '', NULL, NULL, NULL, NULL, NULL, NULL, 157),
(224, 'Irsyad Taftahani B', '0005053203', NULL, NULL, NULL, NULL, NULL, NULL, 158),
(225, 'Luis Figo Romario H', '0000488931', NULL, NULL, NULL, NULL, NULL, NULL, 159),
(226, 'Tiwa Ramdhani', '0002189354', NULL, NULL, NULL, NULL, NULL, NULL, 159),
(227, 'Dany Rahman', '0000488169', NULL, NULL, NULL, NULL, NULL, NULL, 159),
(228, 'ALGIS ALIFIAN FASYA', '9995360956', NULL, NULL, NULL, NULL, NULL, NULL, 160),
(229, 'MUHAMMAD RIDWAN ALFARISI HIZBILLAH', '0004432397', NULL, NULL, NULL, NULL, NULL, NULL, 160),
(230, 'MUHAMMAD RIVALDY FAIRUZAKI MAULANA', '9990169019', NULL, NULL, NULL, NULL, NULL, NULL, 160),
(231, 'MARSA IRFANSYAH', '0001601707', NULL, NULL, NULL, NULL, NULL, NULL, 161),
(232, 'AGUNG SULAKSANA', '0004597536', NULL, NULL, NULL, NULL, NULL, NULL, 161),
(233, 'DIFA FRANZA ALMAWIDJAYA', '0001598356', NULL, NULL, NULL, NULL, NULL, NULL, 161),
(236, 'Fajar Muhammad Fauzi', '0000016922', NULL, NULL, NULL, NULL, NULL, NULL, 163),
(238, 'Benny Herdian Hidayat', '0008691373', NULL, NULL, NULL, NULL, NULL, NULL, 165),
(240, 'Naufal Fauzi', '0002963800', NULL, NULL, NULL, NULL, NULL, NULL, 167),
(241, 'FEBRIAN SETIAJI', '0000016550', NULL, NULL, NULL, NULL, NULL, NULL, 169),
(242, 'YANDHI APRIANANDA', '0000011538', NULL, NULL, NULL, NULL, NULL, NULL, 169),
(243, 'FERDYANSYAH WICAKSONO', '0000015342', NULL, NULL, NULL, NULL, NULL, NULL, 169),
(249, 'Jani Setiwan', '0008146232', NULL, NULL, NULL, NULL, NULL, NULL, 172),
(250, 'Virza Abid Prayogo', '9993517142', NULL, NULL, NULL, NULL, NULL, NULL, 172),
(251, 'Gian Ramadhan', '0011767605	', NULL, NULL, NULL, NULL, NULL, NULL, 172),
(252, 'Adhima Rasyadani Wafa', '0006359397', NULL, NULL, NULL, NULL, NULL, NULL, 173),
(253, 'Muhammad Zidan Fauzan', '', NULL, NULL, NULL, NULL, NULL, NULL, 173),
(255, 'Muhammad Bakti Rizaldi', '0027063774', NULL, NULL, NULL, NULL, NULL, NULL, 175),
(256, 'MUHAJIR', '0002875541', NULL, NULL, NULL, NULL, NULL, NULL, 176),
(257, 'MUH. FADHIL AL-MUTHADIL', '0002002797', NULL, NULL, NULL, NULL, NULL, NULL, 176),
(258, 'AHMAR FAUZAN SIRA', '0011814064', NULL, NULL, NULL, NULL, NULL, NULL, 176),
(259, 'ABDULLAH IBNU HIBBAN', '0009089042', NULL, NULL, NULL, NULL, NULL, NULL, 177),
(260, 'CAHYA MUHAMAD IQBAL IRWAN', '0012102141', NULL, NULL, NULL, NULL, NULL, NULL, 177),
(261, 'MUHAMMAD FARIZ MAULANA', '0011258126', NULL, NULL, NULL, NULL, NULL, NULL, 177),
(264, 'Muhamad Asbi Rafi Yudin', '0013133545', NULL, NULL, NULL, NULL, NULL, NULL, 179),
(265, 'Dzikri Khairullah Amlan M', '0003518817', NULL, NULL, NULL, NULL, NULL, NULL, 180),
(268, 'GUNAWAN', '0011571304', NULL, NULL, NULL, NULL, NULL, NULL, 183),
(269, 'NUR SYARIEF ABDULLAH', '0017878179', NULL, NULL, NULL, NULL, NULL, NULL, 184),
(270, 'ADITIYA PRADESTA', '0001544428', NULL, NULL, NULL, NULL, NULL, NULL, 185),
(271, 'Fachrul Aryadi', '9991494232', NULL, NULL, NULL, NULL, NULL, NULL, 186),
(272, 'Agis  Abhi Rafdhi', '9996231162', NULL, NULL, NULL, NULL, NULL, NULL, 186),
(273, 'M Rafli Ruk''antala', '000099612', NULL, NULL, NULL, NULL, NULL, NULL, 186),
(274, 'Rizki Khairun Fadhilla', '9995838369', NULL, NULL, NULL, NULL, NULL, NULL, 187),
(275, 'Agung Pratama', '9991495855', NULL, NULL, NULL, NULL, NULL, NULL, 187),
(276, 'Feri Firmansyah', '9996219045', NULL, NULL, NULL, NULL, NULL, NULL, 187),
(277, 'AGUSTIYANA', '9992739774', NULL, NULL, NULL, NULL, NULL, NULL, 188),
(278, 'GALIH KUS INDIRWAN', '0000104315', NULL, NULL, NULL, NULL, NULL, NULL, 188),
(279, 'NAUFAL AUGUSTIN', '0004461612', NULL, NULL, NULL, NULL, NULL, NULL, 188),
(280, 'Desta Priatama Rahmansyah', '9992054209', NULL, NULL, NULL, NULL, NULL, NULL, 189),
(281, 'Dani', '0003146730', NULL, NULL, NULL, NULL, NULL, NULL, 190),
(283, 'Dani Tri Suardi', '9997091518', NULL, NULL, NULL, NULL, NULL, NULL, 192),
(284, 'Muhammad Syahroni Ramadhan', '0002440250', NULL, NULL, NULL, NULL, NULL, NULL, 192),
(286, 'Dandi Zusitama Erlangga', '0003469566', NULL, NULL, NULL, NULL, NULL, NULL, 194),
(288, 'Ferdinand Haryanto', '0026198659', NULL, NULL, NULL, NULL, NULL, NULL, 196),
(289, 'Dion Raka Ariri', '11522570', NULL, NULL, NULL, NULL, NULL, NULL, 197),
(290, 'Stefanus Adi Nugroho', '0004501593', NULL, NULL, NULL, NULL, NULL, NULL, 198),
(291, 'Deffan Febrian D', '11522521', NULL, NULL, NULL, NULL, NULL, NULL, 199),
(292, 'Ahmad Dimyati', '0008906529', NULL, NULL, NULL, NULL, NULL, NULL, 200),
(293, 'Dika Anggoro', '0001092093', NULL, NULL, NULL, NULL, NULL, NULL, 201),
(294, 'Roes Byandra', '0007183722', NULL, NULL, NULL, NULL, NULL, NULL, 202),
(295, 'Mulkin Shadra Almuntazhar', '', NULL, NULL, NULL, NULL, NULL, NULL, 203),
(300, 'INDRI FEBRIANA PUTRI', '', NULL, NULL, NULL, NULL, NULL, NULL, 206),
(301, 'TONI KURNIAWAN', '', NULL, NULL, NULL, NULL, NULL, NULL, 207),
(302, 'ALFAN BISMANTAKA', '', NULL, NULL, NULL, NULL, NULL, NULL, 208),
(303, 'RIYAN HERMAWAN', '', NULL, NULL, NULL, NULL, NULL, NULL, 209),
(304, 'Ardi Rizki Juliansyah', '0987870810', NULL, NULL, NULL, NULL, NULL, NULL, 210),
(307, 'Rizal Aldian Karim', '0988190190', NULL, NULL, NULL, NULL, NULL, NULL, 213),
(309, 'Wahyu Riady', '0988165743', NULL, NULL, NULL, NULL, NULL, NULL, 215),
(310, 'Triandi Alfianto', '0965865743', NULL, NULL, NULL, NULL, NULL, NULL, 216),
(320, 'Wahyu Riady', '0988190190', NULL, NULL, NULL, NULL, NULL, NULL, 224),
(321, 'Ardi Rizki Juliansyah', '0988165743', NULL, NULL, NULL, NULL, NULL, NULL, 224),
(322, 'Ardi Rizki Juliansyah', '0988190190', NULL, NULL, NULL, NULL, NULL, NULL, 225),
(323, 'Helmi Ahmad Mubarak', '0987186110', NULL, NULL, NULL, NULL, NULL, NULL, 225),
(324, 'Muhammad Nazeem', '0965865743', NULL, NULL, NULL, NULL, NULL, NULL, 225),
(325, 'Zulfiqar Azhari Ahmad', '0987186110', NULL, NULL, NULL, NULL, NULL, NULL, 226),
(326, 'ILYAS HARYANTO', '0005178328', NULL, NULL, NULL, NULL, NULL, NULL, 227),
(327, 'HARIS SHOBARUDDIN ROBBANI', '9988418068', NULL, NULL, NULL, NULL, NULL, NULL, 227),
(328, 'MAULANA RIZAL HILMAN', '9989839791', NULL, NULL, NULL, NULL, NULL, NULL, 227),
(329, 'Mochammad Reza Rusmawardana', '13674558', NULL, NULL, NULL, NULL, NULL, NULL, 228),
(330, 'M. Naufal Feryanto', '9990017154', NULL, NULL, NULL, NULL, NULL, NULL, 229),
(334, 'Mochamad Syarief Maulana', '0015610219', NULL, NULL, NULL, NULL, NULL, NULL, 231),
(335, 'Dafa Dhiya Ulhaq', '0003009019', NULL, NULL, NULL, NULL, NULL, NULL, 231),
(339, 'Muhammad Rizky Pratama', '0005163927', NULL, NULL, NULL, NULL, NULL, NULL, 233),
(343, 'Alfin Dwiyanto', '0012778908', NULL, NULL, NULL, NULL, NULL, NULL, 235),
(347, 'Merza Bolivar', '0011028819', NULL, NULL, NULL, NULL, NULL, NULL, 237),
(348, 'Jafar Shadiq', '', NULL, NULL, NULL, NULL, NULL, NULL, 237),
(349, 'Gulam Achmadi', '', NULL, NULL, NULL, NULL, NULL, NULL, 237),
(350, 'Alli Nur Magribi', '0004594151', NULL, NULL, NULL, NULL, NULL, NULL, 238),
(351, 'Raden Iqbal Hibatullah', '0004594386', NULL, NULL, NULL, NULL, NULL, NULL, 239),
(352, 'Alli Nur Magribi', '0004594151', NULL, NULL, NULL, NULL, NULL, NULL, 239),
(353, 'Muhammad Fadhlan', '', NULL, NULL, NULL, NULL, NULL, NULL, 239),
(354, 'Raden Fauzan Satria', '', NULL, NULL, NULL, NULL, NULL, NULL, 240),
(355, 'BRILLIAN FAHMI FAUZI PERDANA', '9995280278', NULL, NULL, NULL, NULL, NULL, NULL, 241),
(356, 'FAUZAN ABDURRAHMAN', '9995396911', NULL, NULL, NULL, NULL, NULL, NULL, 241),
(357, 'ALVAIGAN', '9998249444', NULL, NULL, NULL, NULL, NULL, NULL, 241),
(358, 'Merza Bolivar', '0011028819', NULL, NULL, NULL, NULL, NULL, NULL, 242),
(359, 'Salsabila Harnanda Dwiningtyas', '0001765552', NULL, NULL, NULL, NULL, NULL, NULL, 243),
(361, 'Farishadi Muffakir A.', '0016351661', NULL, NULL, NULL, NULL, NULL, NULL, 245),
(362, 'SENI SILVIA SATRIANI', '0008278265', NULL, NULL, NULL, NULL, NULL, NULL, 246),
(363, 'ARIL ALFAJRI NURROHMAN', '9995734898', NULL, NULL, NULL, NULL, NULL, NULL, 247),
(364, 'FAHREZA ADIFYA', '0004454328', NULL, NULL, NULL, NULL, NULL, NULL, 248),
(365, 'RIVA DIMAS PANGESTU', '0007476611', NULL, NULL, NULL, NULL, NULL, NULL, 249),
(366, 'ALYA ZENITA', '0012597573', NULL, NULL, NULL, NULL, NULL, NULL, 250),
(367, 'EVAN AGUSTIAN LUKIUS', '0000488927', NULL, NULL, NULL, NULL, NULL, NULL, 251),
(368, 'ALIFIA HAMZAH', '0004039044', NULL, NULL, NULL, NULL, NULL, NULL, 252),
(369, 'MUCHLIS CHOERUDDIN', '0020213303', NULL, NULL, NULL, NULL, NULL, NULL, 252),
(370, 'AHMAD IRFAN MAULANA', '0003841546', NULL, NULL, NULL, NULL, NULL, NULL, 252),
(372, 'MUHAMMAD NURZAMAN FIRDAUS', '0006976231', NULL, NULL, NULL, NULL, NULL, NULL, 254),
(373, 'MUHAMMAD FADHIL ABDILLAH', '0008098564', NULL, NULL, NULL, NULL, NULL, NULL, 255),
(374, 'IBNU RIZQIA RAMADAN', '9995334428', NULL, NULL, NULL, NULL, NULL, NULL, 255),
(375, 'SITI KOMARIAH', '9996375571', NULL, NULL, NULL, NULL, NULL, NULL, 255),
(378, 'DHIKA RO''ID HAKIM', '0006954816', NULL, NULL, NULL, NULL, NULL, NULL, 257),
(379, 'BENNO ALIF ANGGARA', '0006304116', NULL, NULL, NULL, NULL, NULL, NULL, 257),
(380, 'MUHAMAD HILMAN ZUCHRI', '0004913462', NULL, NULL, NULL, NULL, NULL, NULL, 257),
(381, 'ROMEO GHASSANY FABIO', '0012892617', NULL, NULL, NULL, NULL, NULL, NULL, 258),
(382, 'MUHAMAD FAHMI RIZKY RIZALDY', '0005131680', NULL, NULL, NULL, NULL, NULL, NULL, 258),
(383, 'SENDI AGUSTIAN', '0004790619', NULL, NULL, NULL, NULL, NULL, NULL, 258),
(390, 'Muhammad Sultan Pinto', '151610147', NULL, NULL, NULL, NULL, NULL, NULL, 261),
(391, 'Devita Fatimah Azzahra', '0008289272', NULL, NULL, NULL, NULL, NULL, NULL, 261),
(392, 'Abin Hernandi', '0008289257', NULL, NULL, NULL, NULL, NULL, NULL, 261),
(393, 'Primabudi', '151610034', NULL, NULL, NULL, NULL, NULL, NULL, 262),
(394, 'Salman Alfaridzi', '0002887601', NULL, NULL, NULL, NULL, NULL, NULL, 262),
(395, 'Gema Febri Alfarisi', '151610298', NULL, NULL, NULL, NULL, NULL, NULL, 262),
(396, 'Adnan Farras Suhendi', '0007509057', NULL, NULL, NULL, NULL, NULL, NULL, 263),
(397, 'Linda Afrilianti', '0006144227', NULL, NULL, NULL, NULL, NULL, NULL, 263),
(398, 'Nauval Gallant Baihaqi', '0003693519', NULL, NULL, NULL, NULL, NULL, NULL, 263),
(399, 'Gema Febri Alfarisi', '151610298', NULL, NULL, NULL, NULL, NULL, NULL, 264),
(400, 'Salman Alfaridzi', '0002887601', NULL, NULL, NULL, NULL, NULL, NULL, 265),
(401, 'Muhammad Salman Alparizzi', '151610472', NULL, NULL, NULL, NULL, NULL, NULL, 266),
(402, 'Hilmi Al-Wahid', '0010093422', NULL, NULL, NULL, NULL, NULL, NULL, 268),
(403, 'Muhammad Sultan Bani', '0006905822', NULL, NULL, NULL, NULL, NULL, NULL, 269),
(404, 'Wilman Rosadi', '9991104274', NULL, NULL, NULL, NULL, NULL, NULL, 270),
(405, 'Dede Fuji Abdul', '9987924489', NULL, NULL, NULL, NULL, NULL, NULL, 270),
(406, 'Kevin Dwi Rizky', '0004481909', NULL, NULL, NULL, NULL, NULL, NULL, 270),
(407, 'Regsinatra Muhammad Husen', '0009182843', NULL, NULL, NULL, NULL, NULL, NULL, 271),
(408, 'Wawan Febriadi', '9991104579', NULL, NULL, NULL, NULL, NULL, NULL, 271),
(409, 'Mila Melgianti', '9980564951', NULL, NULL, NULL, NULL, NULL, NULL, 271),
(410, 'Ihsan Ahmad Shiddiq', '991003980', NULL, NULL, NULL, NULL, NULL, NULL, 272),
(411, 'Fajar Kurniawan', '995373358', NULL, NULL, NULL, NULL, NULL, NULL, 272),
(412, 'Sukur Ramdan', '9991003118', NULL, NULL, NULL, NULL, NULL, NULL, 272),
(413, 'ALDY AGUSTIANSYAH', '0014612199', NULL, NULL, NULL, NULL, NULL, NULL, 273),
(414, 'Obi Ismail', '9980566065', NULL, NULL, NULL, NULL, NULL, NULL, 274),
(415, 'Deden Juliandi', '9991004943', NULL, NULL, NULL, NULL, NULL, NULL, 274),
(416, 'Resti Nurul Auliani', '9991002202', NULL, NULL, NULL, NULL, NULL, NULL, 274),
(417, 'CAHYA RAMDAN SYAH', '0011355683', NULL, NULL, NULL, NULL, NULL, NULL, 275),
(418, 'Fajar Syaipul Hijaz', '0005826518', NULL, NULL, NULL, NULL, NULL, NULL, 276),
(419, 'Firman Hidayatulloh', '9991101283', NULL, NULL, NULL, NULL, NULL, NULL, 276),
(420, 'Wisnu Nugraha Putra', '9996261344', NULL, NULL, NULL, NULL, NULL, NULL, 276),
(421, 'Koesnandar', '9991004385', NULL, NULL, NULL, NULL, NULL, NULL, 277),
(422, 'Diki Agung Setiawan', '9994695409', NULL, NULL, NULL, NULL, NULL, NULL, 277),
(423, 'Lisan Shidqi Fauzan', '9994696099', NULL, NULL, NULL, NULL, NULL, NULL, 277),
(424, 'Atep Mugni Soleh Hudin', '9984383815', NULL, NULL, NULL, NULL, NULL, NULL, 278),
(425, 'Aditya Luqman', '9991101403', NULL, NULL, NULL, NULL, NULL, NULL, 279),
(426, 'Riki Riswandi', '9980483014', NULL, NULL, NULL, NULL, NULL, NULL, 280),
(427, 'Ai Yoan Agustina', '9991104349', NULL, NULL, NULL, NULL, NULL, NULL, 281),
(428, 'Jaka Fitriansyah', '9996865130', NULL, NULL, NULL, NULL, NULL, NULL, 282),
(429, 'M Badlan Muharom', '0019382293', NULL, NULL, NULL, NULL, NULL, NULL, 283),
(437, 'DESVITA FAULINA', '101621541', NULL, NULL, NULL, NULL, NULL, NULL, 287),
(438, 'RAHMAN', '101621560', NULL, NULL, NULL, NULL, NULL, NULL, 287),
(439, 'FAJAR NUR KHOLID', '101621465', NULL, NULL, NULL, NULL, NULL, NULL, 287),
(440, 'Arya Lanang ', '101515834', NULL, NULL, NULL, NULL, NULL, NULL, 288),
(441, 'Fajar Ramdani Arifin ', '101515924', NULL, NULL, NULL, NULL, NULL, NULL, 288),
(442, 'Angga Kahaerul ', '101616019', NULL, NULL, NULL, NULL, NULL, NULL, 288),
(443, 'RIZKY PANGLUHUR IRWANA PUTRA', '0004263457', NULL, NULL, NULL, NULL, NULL, NULL, 289),
(444, 'Kristoforus Yoris Teguh Prasetyo ', '101515935', NULL, NULL, NULL, NULL, NULL, NULL, 290),
(445, 'Restu Muhammad Sidiq ', '101515887', NULL, NULL, NULL, NULL, NULL, NULL, 290),
(446, 'Ilham Ramadhan ', '101616138', NULL, NULL, NULL, NULL, NULL, NULL, 290),
(447, 'CHANDIKA NURDIANSYAH', '0004654301', NULL, NULL, NULL, NULL, NULL, NULL, 291),
(448, 'IRVAN LUTFI GUNAWAN', '0002289059', NULL, NULL, NULL, NULL, NULL, NULL, 291),
(449, 'MUHAMMAD IRFAN FAKHRI', '0002759706', NULL, NULL, NULL, NULL, NULL, NULL, 291),
(450, 'Rachmizard', '101515959', NULL, NULL, NULL, NULL, NULL, NULL, 292),
(451, 'Kristoforus Yoris Teguh Prasetyo ', '101515935', NULL, NULL, NULL, NULL, NULL, NULL, 292),
(452, 'Muhammad Taufik Zamaludin ', '101616227', NULL, NULL, NULL, NULL, NULL, NULL, 292),
(453, 'Fajar Ramdani Arifin ', '101515924', NULL, NULL, NULL, NULL, NULL, NULL, 293),
(454, 'Agung Satrio Wibowo ', '101515910', NULL, NULL, NULL, NULL, NULL, NULL, 293),
(455, 'Dhiemas Ganisha Ali Putra Perkasa ', '101616067', NULL, NULL, NULL, NULL, NULL, NULL, 293),
(456, 'Fahrul Septiana', '9990066142', NULL, NULL, NULL, NULL, NULL, NULL, 294),
(457, 'Muhammad Luthfi Hizbulloh', '0004920761', NULL, NULL, NULL, NULL, NULL, NULL, 294),
(458, 'Nadhif Akhsan Yanuar', '0008139194', NULL, NULL, NULL, NULL, NULL, NULL, 294),
(459, 'Deri Komara', '0007876502', NULL, NULL, NULL, NULL, NULL, NULL, 295),
(460, 'Muhammad Taufik Zamaludin ', '101616227', NULL, NULL, NULL, NULL, NULL, NULL, 296),
(461, 'Melvan Riansyah ', '101616170', NULL, NULL, NULL, NULL, NULL, NULL, 296),
(462, 'Zirlyan Faza Assifudin ', '101616368', NULL, NULL, NULL, NULL, NULL, NULL, 296),
(463, 'Ilham Ramadhan ', '101616138', NULL, NULL, NULL, NULL, NULL, NULL, 297),
(464, 'Muhammad Rizky Maulid ', '101616225', NULL, NULL, NULL, NULL, NULL, NULL, 297),
(465, 'Riksa Kusumah Nagara ', '101616281', NULL, NULL, NULL, NULL, NULL, NULL, 297),
(466, 'Yogi Wijaya', '0013859504', NULL, NULL, NULL, NULL, NULL, NULL, 298),
(467, 'R IHSAN FADHEL AHMAD', '0018358083', NULL, NULL, NULL, NULL, NULL, NULL, 299),
(468, 'Muhammad Rizky Maulid ', '101616225', NULL, NULL, NULL, NULL, NULL, NULL, 300),
(469, 'Aditya Raihan ', '101615981', NULL, NULL, NULL, NULL, NULL, NULL, 301),
(470, 'Adi Ahmad Fauzan ', '101515814', NULL, NULL, NULL, NULL, NULL, NULL, 302),
(471, 'Akmal Maulana ', '101515823', NULL, NULL, NULL, NULL, NULL, NULL, 303),
(472, 'Muhammad Akhmal Avshary  ', '101515870', NULL, NULL, NULL, NULL, NULL, NULL, 304),
(473, 'Graha Sabillah Tantra ', '101616115', NULL, NULL, NULL, NULL, NULL, NULL, 305),
(474, 'Adil Billa Bagy ', '101615979', NULL, NULL, NULL, NULL, NULL, NULL, 306),
(475, 'Rizkiya Abda’us Salam ', '101515898', NULL, NULL, NULL, NULL, NULL, NULL, 307),
(476, 'Muhammad Rafli Pratama ', '101616220', NULL, NULL, NULL, NULL, NULL, NULL, 308),
(479, 'APSI WIRANATA', '101621536', NULL, NULL, NULL, NULL, NULL, NULL, 311),
(480, 'Putri Rufaida Sabrina', '0003811466', NULL, NULL, NULL, NULL, NULL, NULL, 312),
(482, 'KENI ARZAINI RIZKI', '101621551', NULL, NULL, NULL, NULL, NULL, NULL, 314),
(483, 'Yusuf Supriatna', '0014981211', NULL, NULL, NULL, NULL, NULL, NULL, 315),
(484, 'Fatimah Deva Nur Intan', '0008574119', NULL, NULL, NULL, NULL, NULL, NULL, 315),
(485, 'Indah', '9994465513', NULL, NULL, NULL, NULL, NULL, NULL, 315),
(486, 'FAHRUL AGUNG ARDIAN', '101621545', NULL, NULL, NULL, NULL, NULL, NULL, 316),
(487, 'M RIDZKY FARHAN', '101621475', NULL, NULL, NULL, NULL, NULL, NULL, 317),
(488, 'MUHAMAD FIKRI', '101621480', NULL, NULL, NULL, NULL, NULL, NULL, 318),
(489, 'Dicky Setiawan', '9991003120', NULL, NULL, NULL, NULL, NULL, NULL, 319),
(490, 'Ali Wandanu', '0007081086', NULL, NULL, NULL, NULL, NULL, NULL, 319),
(491, 'Sansan Azis Gunawan', '0008935263', NULL, NULL, NULL, NULL, NULL, NULL, 319),
(495, 'AZIS NAUFAL', '0003612891', NULL, NULL, NULL, NULL, NULL, NULL, 321),
(499, 'AMILIO ARDHA MAULANA', '0008886067', NULL, NULL, NULL, NULL, NULL, NULL, 323),
(500, 'Niken Dwi Carolina Putri', '0010922584', NULL, NULL, NULL, NULL, NULL, NULL, 324),
(501, 'Muhammad Firdaus Fathurrahman T', '0002333772', NULL, NULL, NULL, NULL, NULL, NULL, 325),
(502, 'Muhammad Ilham ashshiddiqi H.', '0006974416', NULL, NULL, NULL, NULL, NULL, NULL, 327),
(503, 'Qalbu Natasya salsabila', '0016451734', NULL, NULL, NULL, NULL, NULL, NULL, 328),
(504, 'Rafiola Nursani ', '0013357390', NULL, NULL, NULL, NULL, NULL, NULL, 329),
(505, 'Syiffa Fauzyah Prastiwi', '0011288794', NULL, NULL, NULL, NULL, NULL, NULL, 329),
(506, 'Sephia Kristiani Nainggolan', '0012268112', NULL, NULL, NULL, NULL, NULL, NULL, 329),
(507, 'Rahma Erica', '0000786284', NULL, NULL, NULL, NULL, NULL, NULL, 330),
(508, 'Mohammad Rizky Maulidhan', '0019669599', NULL, NULL, NULL, NULL, NULL, NULL, 331),
(509, 'Purnajati Nugraha', '', NULL, NULL, NULL, NULL, NULL, NULL, 332),
(510, 'Aqil Mubarak Suherman', '0006325159', NULL, NULL, NULL, NULL, NULL, NULL, 332),
(511, 'Muhammad Salman Arifin', '0000635294', NULL, NULL, NULL, NULL, NULL, NULL, 332),
(515, 'Muhammad Aditya Mahardhika', '0000932195', NULL, NULL, NULL, NULL, NULL, NULL, 334),
(516, 'Syafa Khosyiah', '', NULL, NULL, NULL, NULL, NULL, NULL, 335),
(517, 'Laudy Clemencia Aretha', '0007527377', NULL, NULL, NULL, NULL, NULL, NULL, 335),
(518, 'Alya Muthia', '0005297960', NULL, NULL, NULL, NULL, NULL, NULL, 335),
(519, 'Galih M Ramdan', '0010024702', NULL, NULL, NULL, NULL, NULL, NULL, 336),
(520, 'Yogi Ihksanoga', '0000628986', NULL, NULL, NULL, NULL, NULL, NULL, 336),
(521, 'M. Ramzy Ro''if', '0016684515', NULL, NULL, NULL, NULL, NULL, NULL, 336),
(522, 'Millenian Bintang Nusantara', '0002394203', NULL, NULL, NULL, NULL, NULL, NULL, 337),
(523, 'Kevin Digo Widyadhana', '0001471105', NULL, NULL, NULL, NULL, NULL, NULL, 338),
(524, 'Farhan Fuza Anshory', '0006974389', NULL, NULL, NULL, NULL, NULL, NULL, 339),
(525, 'Gemilang Azhar Firdaus', '0011118660', NULL, NULL, NULL, NULL, NULL, NULL, 339),
(526, 'Kevin Khaedar Nuridwan Putra', '0019370622', NULL, NULL, NULL, NULL, NULL, NULL, 339),
(527, 'Muhammad Hilmi Faiz', '0007910992', NULL, NULL, NULL, NULL, NULL, NULL, 340),
(528, 'Dido Adhitya Prasetyo', '11623570', NULL, NULL, NULL, NULL, NULL, NULL, 341),
(529, 'M. Sugito', '11623534', NULL, NULL, NULL, NULL, NULL, NULL, 343),
(530, 'MUHAMMAD ADITIA FIRMANSYAH', '0016805435', NULL, NULL, NULL, NULL, NULL, NULL, 344),
(531, 'Dwitiyana Rahayu', '0014748606', NULL, NULL, NULL, NULL, NULL, NULL, 345),
(532, 'Muhammad Raishaldhy Kegart', '0014578556', NULL, NULL, NULL, NULL, NULL, NULL, 346),
(533, 'Farriz Brilliant Wichaksana', '0015991156', NULL, NULL, NULL, NULL, NULL, NULL, 347),
(534, 'ardhi bahrul mubarok', '0024923152', NULL, NULL, NULL, NULL, NULL, NULL, 348),
(535, 'Shodiq Daffa', '11522622', NULL, NULL, NULL, NULL, NULL, NULL, 349),
(536, 'Muhammad Rizki', '11522616', NULL, NULL, NULL, NULL, NULL, NULL, 349),
(537, 'Yeppy Mangun Puspitajudin', '11522631', NULL, NULL, NULL, NULL, NULL, NULL, 349),
(538, 'Dandi', '11522607', NULL, NULL, NULL, NULL, NULL, NULL, 351),
(539, 'M. ILHAM RIZKI', '', NULL, NULL, NULL, NULL, NULL, NULL, 352),
(543, 'Fauzan MM', '', NULL, NULL, NULL, NULL, NULL, NULL, 354),
(544, 'Moch Asef Saefudin', '9997384713', NULL, NULL, NULL, NULL, NULL, NULL, 355),
(545, 'Makmudin', '9990921453', NULL, NULL, NULL, NULL, NULL, NULL, 355),
(546, 'Mohamad Andi', '9988921195', NULL, NULL, NULL, NULL, NULL, NULL, 355),
(547, 'SENDI ARDIANSYAH', '', NULL, NULL, NULL, NULL, NULL, NULL, 356),
(548, 'YUSUF SUPRIATNA', '0014981211', NULL, NULL, NULL, NULL, NULL, NULL, 357),
(549, 'Gusti Alfazri Djahid', '0000103653', NULL, NULL, NULL, NULL, NULL, NULL, 358),
(550, 'Yudha Pratama', '0002275743', NULL, NULL, NULL, NULL, NULL, NULL, 359),
(551, 'Muhamad Arif Firdaus', '9990909359', NULL, NULL, NULL, NULL, NULL, NULL, 360),
(552, 'dio prasetiyo', '0008552072', NULL, NULL, NULL, NULL, NULL, NULL, 361),
(553, 'Maulana Hidayatullah', '0018456827', NULL, NULL, NULL, NULL, NULL, NULL, 362),
(557, 'Slamet Faisal', '9997754901', NULL, NULL, NULL, NULL, NULL, NULL, 364),
(558, 'Nida Fithrotun Nisa', '0008400462', NULL, NULL, NULL, NULL, NULL, NULL, 365),
(559, 'Amelia Shafa Ath-Thaariq', '0000950049', NULL, NULL, NULL, NULL, NULL, NULL, 365),
(560, 'Salma Amaliah', '0011069388', NULL, NULL, NULL, NULL, NULL, NULL, 365),
(561, 'Doris yondra setiawan', '-', NULL, NULL, NULL, NULL, NULL, NULL, 366),
(562, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, 366),
(563, 'ROMI ROBIANSAH', '9988584148', NULL, NULL, NULL, NULL, NULL, NULL, 367),
(564, 'FERDI DARMAWAN', '0014243175', NULL, NULL, NULL, NULL, NULL, NULL, 367),
(565, 'SAEPUDIN', '9995019201', NULL, NULL, NULL, NULL, NULL, NULL, 367),
(566, 'DEDE RUSLIANDI TARUNA', '9988422581', NULL, NULL, NULL, NULL, NULL, NULL, 368),
(567, 'MUHAMMAD ANGGA', '9985636865', NULL, NULL, NULL, NULL, NULL, NULL, 368),
(568, 'IVAN NAUFAL ISLAMI A', '9984871138', NULL, NULL, NULL, NULL, NULL, NULL, 368),
(569, 'RANDI ABDUL ROHMAN', '0004596917', NULL, NULL, NULL, NULL, NULL, NULL, 369),
(570, 'FARHAN ANSHARI MIRAJ', '9990466427', NULL, NULL, NULL, NULL, NULL, NULL, 370),
(571, 'ARID RAMDANI', '0003939960', NULL, NULL, NULL, NULL, NULL, NULL, 371),
(572, 'Mochamad Diyaz Fadilah', '-', NULL, NULL, NULL, NULL, NULL, NULL, 372),
(573, 'Deden Sukma Hendrawan', '-', NULL, NULL, NULL, NULL, NULL, NULL, 373),
(574, 'Dedi Suwardi', '-', NULL, NULL, NULL, NULL, NULL, NULL, 374),
(575, 'Rizal Fahlevi', '-', NULL, NULL, NULL, NULL, NULL, NULL, 375),
(576, 'Jamaludin Yassykurniam', '-', NULL, NULL, NULL, NULL, NULL, NULL, 375),
(577, 'Nikita Dolphin', '-', NULL, NULL, NULL, NULL, NULL, NULL, 376),
(578, 'Afdhal Saddam Hidayat', '-', NULL, NULL, NULL, NULL, NULL, NULL, 376),
(579, 'Muhamad Alvin', '-', NULL, NULL, NULL, NULL, NULL, NULL, 377),
(583, 'Ahmad Rizki Setiawan', '9993235072', NULL, NULL, NULL, NULL, NULL, NULL, 380),
(586, 'Ihsan Syauki Adn', '0003960497', NULL, NULL, NULL, NULL, NULL, NULL, 382),
(587, 'Sandi Maulana', '0002951177', NULL, NULL, NULL, NULL, NULL, NULL, 382),
(588, 'Bhimo Wicaksono', '', NULL, NULL, NULL, NULL, NULL, NULL, 382),
(591, 'DIVAN FADILLA', '0013450592', NULL, NULL, NULL, NULL, NULL, NULL, 385),
(592, 'FAJAR ADITYA', '0015406463', NULL, NULL, NULL, NULL, NULL, NULL, 385),
(593, 'MOHAMMAD MANZILI KURNIA', '0015268082', NULL, NULL, NULL, NULL, NULL, NULL, 385),
(597, 'AUFA TAUFIQULHAKIM', '0027555064', NULL, NULL, NULL, NULL, NULL, NULL, 387),
(598, 'ARIA DWI SAPUTRA', '0013412029', NULL, NULL, NULL, NULL, NULL, NULL, 387),
(599, 'FIKRY HANIF FAUZAN', '0016878895', NULL, NULL, NULL, NULL, NULL, NULL, 387),
(600, 'Mohammad Rizqy Pratama', '0007532900', NULL, NULL, NULL, NULL, NULL, NULL, 388),
(601, 'Mochammad Khosy Nurhayat Firdaus', '0005089834', NULL, NULL, NULL, NULL, NULL, NULL, 389),
(602, 'Muhammad Amin Aris T', '0005916535', NULL, NULL, NULL, NULL, NULL, NULL, 390),
(603, 'Herdi Syah Putra Nugraha', '0003026575', NULL, NULL, NULL, NULL, NULL, NULL, 391),
(604, 'Suryaman Sidik', '9998984588', NULL, NULL, NULL, NULL, NULL, NULL, 392),
(605, 'Fachri Afifudin', '9995294754', NULL, NULL, NULL, NULL, NULL, NULL, 393),
(606, 'FAHMI NURFAIZY GUNAWAN', '0002149770', NULL, NULL, NULL, NULL, NULL, NULL, 394),
(607, 'NUR ZAMIL', '0014967067', NULL, NULL, NULL, NULL, NULL, NULL, 394),
(608, 'DENI RIANDI', '0010085169', NULL, NULL, NULL, NULL, NULL, NULL, 394),
(609, 'Renaka Agusta', '0013350014', NULL, NULL, NULL, NULL, NULL, NULL, 395),
(613, 'Fitria Khoerun Nissa', '0020110414', NULL, NULL, NULL, NULL, NULL, NULL, 397),
(614, 'Moch Noer Yusdicio Rachman', '0000488857', NULL, NULL, NULL, NULL, NULL, NULL, 398),
(618, 'Muhammad Ari Zam-zam', '', NULL, NULL, NULL, NULL, NULL, NULL, 401),
(619, 'Yogi', '', NULL, NULL, NULL, NULL, NULL, NULL, 401),
(620, 'Rendy', '', NULL, NULL, NULL, NULL, NULL, NULL, 401),
(621, 'INDRA FIRMANSYAH', '', NULL, NULL, NULL, NULL, NULL, NULL, 402),
(622, 'RYAN FIRNANDI', '', NULL, NULL, NULL, NULL, NULL, NULL, 402),
(623, ' CHANDRA WIJAYA KUSUMAH', '', NULL, NULL, NULL, NULL, NULL, NULL, 402),
(624, 'Billy Rivaldi', '9997989760', NULL, NULL, NULL, NULL, NULL, NULL, 403),
(625, 'Thoriq', '', NULL, NULL, NULL, NULL, NULL, NULL, 404),
(626, 'NAUFAL ASSAD AL HAQ', '', NULL, NULL, NULL, NULL, NULL, NULL, 405),
(627, 'NAUAL LAUDZA MUHAMMAD. N', '', NULL, NULL, NULL, NULL, NULL, NULL, 405),
(628, 'ILYAS SAEFUL DURAHMAN', '', NULL, NULL, NULL, NULL, NULL, NULL, 405),
(629, 'Masyita Insyira', '0007895826', NULL, NULL, NULL, NULL, NULL, NULL, 406),
(630, 'Fajar Pratama Wahab', '0016767039', NULL, NULL, NULL, NULL, NULL, NULL, 407),
(631, 'Putri Wardah P.', '0016396121', NULL, NULL, NULL, NULL, NULL, NULL, 407),
(632, 'Kurnia Setyanti', '0013296998', NULL, NULL, NULL, NULL, NULL, NULL, 408),
(633, 'Fatahillah Isajati', '0007293614', NULL, NULL, NULL, NULL, NULL, NULL, 409),
(634, 'Mohammad Rizky Ramadhandy Buadianto', '0002884781', NULL, NULL, NULL, NULL, NULL, NULL, 410),
(651, 'BAYU GUSTIANA FAJAR', '101512379', NULL, NULL, NULL, NULL, NULL, NULL, 428),
(653, 'FATIH DAFFA DZAKWAN R. I.', '101512386	F', NULL, NULL, NULL, NULL, NULL, NULL, 430),
(654, 'Moch. Noor Raihan', '1415100158', NULL, NULL, NULL, NULL, NULL, NULL, 431),
(658, 'Heri Hermawan', '1516100142', NULL, NULL, NULL, NULL, NULL, NULL, 433),
(659, 'Billy Hadist Ferdiansyah', '1516100173', NULL, NULL, NULL, NULL, NULL, NULL, 434),
(660, 'Cihsan Muhamad Sadiri', '1516100073', NULL, NULL, NULL, NULL, NULL, NULL, 435),
(661, 'Moch. Dika Ridianto', '0008423228', NULL, NULL, NULL, NULL, NULL, NULL, 436),
(662, 'Rara Ayu Annisya Mawanti', '0001541174', NULL, NULL, NULL, NULL, NULL, NULL, 436),
(663, 'Christine Chiesa A.S', '0003684326', NULL, NULL, NULL, NULL, NULL, NULL, 436),
(664, 'Ahzami Fadilah Akbar', '0002738132', NULL, NULL, NULL, NULL, NULL, NULL, 437);

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
  `sch_coach_email` text,
  `schteam_file` text,
  `schteam_file_log` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `schteam_status` int(1) NOT NULL COMMENT 'Apakah tim masuk ke penjurian atau tidak',
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=438 ;

--
-- RELATIONS FOR TABLE `tb_schteam`:
--   `schteam_school_id`
--       `tb_school` -> `school_id`
--   `schteam_payment_id`
--       `tb_payment` -> `payment_id`
--   `schteam_event_id`
--       `tb_event` -> `event_id`
--   `schteam_account_id`
--       `tb_account` -> `account_id`
--

--
-- Truncate table before insert `tb_schteam`
--

TRUNCATE TABLE `tb_schteam`;
--
-- Dumping data for table `tb_schteam`
--

INSERT INTO `tb_schteam` (`schteam_id`, `schteam_name`, `schteam_coach_name`, `schteam_coach_contact`, `sch_coach_email`, `schteam_file`, `schteam_file_log`, `schteam_status`, `schteam_school_id`, `schteam_event_id`, `schteam_payment_id`, `schteam_account_id`) VALUES
(1, 'CoklatSusuKrim', 'Bambang Warsita', '0818291821728', NULL, NULL, '0000-00-00 00:00:00', 0, 6, 5, 4, 90),
(13, 'zaelani', '', '', NULL, NULL, '2017-01-18 05:19:05', 0, 22, 5, 25, 135),
(14, 'a hole.', 'Christopher Suhamdy', '08117410888', NULL, NULL, '2017-01-18 11:16:27', 0, 24, 5, 26, 139),
(16, 'SHBWEB1', 'Simon Simarmata', '081213000503', NULL, NULL, '2017-01-20 01:39:36', 0, 25, 2, 28, 142),
(17, 'SHBWEB2', 'Simon Simarmata', '081213000503', NULL, NULL, '2017-01-20 01:43:56', 0, 25, 2, 29, 144),
(18, 'SHBDG1', 'Simon Simarmata', '081213000503', NULL, NULL, '2017-01-20 01:48:09', 0, 25, 1, 30, 145),
(19, 'SHBDG2', 'Simon Simarmata', '081213000503', NULL, NULL, '2017-01-20 01:50:23', 0, 25, 1, 31, 146),
(20, 'SHBDG3', 'Simon Simarmata', '081213000503', NULL, NULL, '2017-01-20 01:52:19', 0, 25, 1, 32, 147),
(21, 'SHBPROG1', 'Simon Simarmata', '081213000503', NULL, NULL, '2017-01-20 01:54:20', 0, 25, 5, 33, 148),
(23, 'shbprog2', 'Simon Simarmata', '081213000503', NULL, NULL, '2017-01-24 00:58:52', 0, 25, 5, 36, 157),
(26, 'Animasi TKJ SMK BPI', 'Muhammad Panji Muslim, S.Pd', '081214121868', NULL, NULL, '2017-01-24 01:29:16', 0, 14, 6, 39, 161),
(27, 'DG TKJ SMK BPI', 'Rahman Taufik, S.Pd', '089628060091', NULL, NULL, '2017-01-24 01:32:12', 0, 14, 1, 40, 162),
(28, 'DG2 TKJ SMK BPI', 'Rahman Taufik, S.Pd', '089628060091', NULL, NULL, '2017-01-24 01:33:39', 0, 14, 1, 41, 163),
(29, 'PCA TKJ SMK BPI', 'Uga Nugraha S, S.Pd', '081222817751', NULL, NULL, '2017-01-24 01:35:35', 0, 14, 4, 42, 164),
(30, 'KJ TKJ SMK BPI', 'Uga Nugraha S, S.Pd', '081222817751', NULL, NULL, '2017-01-24 01:41:22', 0, 14, 8, 43, 165),
(31, 'KJ2 TKJ SMK BPI', 'Uga Nugraha S, S.Pd', '081222817751', NULL, NULL, '2017-01-24 01:46:02', 0, 14, 8, 44, 166),
(37, 'Teguh Army', '', '', NULL, NULL, '2017-01-26 12:59:35', 0, 32, 5, 52, 182),
(48, 'VENOM', '', '', NULL, NULL, '2017-01-30 02:52:03', 0, 39, 5, 65, 209),
(49, 'Mihud', 'Budi Widodo', '', NULL, NULL, '2017-01-31 01:25:03', 0, 41, 4, 66, 213),
(52, 'AbalNetwork', 'Sugeng Purwanto', '089697636267', NULL, NULL, '2017-01-31 02:19:40', 0, 31, 8, 69, 216),
(53, 'AbalWeb', 'Robi Rohmat', '082219150001', NULL, NULL, '2017-01-31 02:21:29', 0, 31, 2, 70, 217),
(54, 'AbalPC', 'Sugeng Purwanto', '089697636267', NULL, NULL, '2017-01-31 02:23:50', 0, 31, 4, 71, 218),
(55, 'SMK NEGERI 1 PANYINGKIRAN MAJALENGKA', 'M ZAENAL ISKANDAR SAHIDIN, S.Kom.', '082127648221', NULL, NULL, '2017-02-01 03:11:18', 0, 43, 8, 74, 221),
(56, 'Abal_animasi', 'Robi Rohmat', '082219150001', NULL, NULL, '2017-02-01 09:13:59', 0, 31, 6, 75, 224),
(59, 'SMKN 6 GARUT', 'Yayan Cahyana', '082121177526', NULL, NULL, '2017-02-02 03:07:21', 0, 44, 8, 79, 231),
(62, 'SMK NEGERI 6 GARUT ', 'Ipan Agus Maesa', '082121177526', NULL, NULL, '2017-02-02 06:13:21', 0, 44, 4, 82, 229),
(63, 'SATELIT 17', 'Ali Hasan Asyari', '085780905854', NULL, NULL, '2017-02-02 10:50:52', 0, 18, 4, 83, 174),
(67, 'Nopi Latipah', 'Salman Hadi', '089513388857', NULL, NULL, '2017-02-03 03:27:05', 0, 47, 1, 91, 245),
(68, 'RPL SMK BPI', 'Muhammad Panji', '081214121868', NULL, NULL, '2017-02-03 07:26:26', 0, 26, 2, 95, 250),
(71, 'PCA_SANACI_1', 'Harun Nurdin, S.Pd.', '085795151196', NULL, NULL, '2017-02-03 09:44:17', 0, 49, 4, 98, 254),
(72, 'PCA_SANACI_2', 'Harun Nurdin, S.Pd.', '085795151196', NULL, NULL, '2017-02-03 09:45:57', 0, 49, 4, 99, 255),
(73, 'LDG_Sanaci_1', 'Harun Nurdin, S.Pd.', '085795151196', NULL, NULL, '2017-02-03 09:49:17', 0, 49, 1, 100, 256),
(74, 'LDG_SANACI_2', 'Harun Nurdin, S.Pd.', '085795151196', NULL, NULL, '2017-02-03 09:55:36', 0, 49, 1, 101, 257),
(89, 'TIKOM COMMUNITY', 'BAGUS YULI SETYAWAN', '085720016745', NULL, NULL, '2017-02-03 23:57:33', 0, 9, 4, 116, 271),
(90, 'TIKOM COMMUNITY', 'BAGUS YULI SETYAWAN', '085720016745', NULL, NULL, '2017-02-03 23:58:56', 0, 9, 4, 117, 271),
(93, 'TIKOM COMMUNITY', 'BAGUS YULI SETYAWAN', '085720016745', NULL, NULL, '2017-02-04 00:03:56', 0, 9, 4, 120, 271),
(94, 'smanisda1', '', '', NULL, NULL, '2017-02-04 03:03:24', 0, 51, 5, 121, 281),
(95, 'smanisda2', '', '', NULL, NULL, '2017-02-04 03:09:50', 0, 51, 5, 122, 282),
(97, 'gigabyte', '', '', NULL, NULL, '2017-02-04 06:31:12', 0, 53, 1, 124, 287),
(98, 'Ilham Gymnastiar', 'Dimas Zulfadly', '089626864450', NULL, NULL, '2017-02-04 07:51:35', 0, 54, 1, 125, 289),
(99, 'Brainware Of Smansa - PCA 1', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 09:27:56', 0, 40, 4, 126, 290),
(100, 'Brainware Of Smansa - PCA 2', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:16:45', 0, 40, 4, 127, 291),
(101, 'Brainware Of Smansa - PCA 3', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:17:35', 0, 40, 4, 128, 292),
(102, 'Brainware Of Smansa - LDG 1', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:22:05', 0, 40, 1, 129, 293),
(103, 'Brainware Of Smansa - LDG 2', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:24:39', 0, 40, 1, 130, 294),
(104, 'Brainware Of Smansa - LDG 3', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:26:58', 0, 40, 1, 131, 295),
(106, 'Brainware Of Smansa - CSPC 1', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:40:41', 0, 40, 5, 133, 297),
(107, 'Brainware Of Smansa - LDG 5', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:41:25', 0, 40, 1, 134, 298),
(108, 'Brainware Of Smansa - CSPC 2', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:45:25', 0, 40, 5, 135, 299),
(109, 'Brainware Of Smansa - LDG 6', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:45:26', 0, 40, 1, 136, 300),
(110, 'Brainware Of Smansa - LDG 7', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:49:41', 0, 40, 1, 137, 301),
(111, 'Brainware Of Smansa - CSPC 3', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:52:07', 0, 40, 5, 138, 302),
(112, 'Brainware Of Smansa - LDG 8', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:55:15', 0, 40, 1, 139, 303),
(114, 'Brainware Of Smansa - PCA 4', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:56:29', 0, 40, 4, 141, 305),
(115, 'Brainware Of Smansa - LDG 9', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:58:21', 0, 40, 1, 142, 306),
(116, 'Brainware Of Smansa - CSPC 4', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 12:59:12', 0, 40, 5, 143, 307),
(117, 'Brainware Of Smansa - PCA 5', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 13:04:45', 0, 40, 4, 144, 308),
(118, 'Brainware Of Smansa - PCA 6', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 13:05:28', 0, 40, 4, 145, 309),
(119, 'Brainware Of Smansa - PCA 7', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 13:06:23', 0, 40, 4, 146, 310),
(120, 'Brainware Of Smansa - LDG 10', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 13:06:46', 0, 40, 1, 147, 311),
(121, 'Brainware Of Smansa - PCA 8', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 13:09:23', 0, 40, 4, 148, 312),
(123, 'Brainware Of Smansa - LCA 1', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 14:06:47', 0, 40, 6, 150, 315),
(124, 'Brainware Of Smansa - LCW 1', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 14:25:03', 0, 40, 2, 151, 316),
(125, 'Brainware Of Smansa - OTIK 1', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 14:41:13', 0, 40, 3, 152, 317),
(126, 'Brainware Of Smansa - CSPC 5', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-04 21:57:51', 0, 40, 5, 156, 320),
(127, 'Network Kaplongan', 'Sahri', '085224427843', NULL, NULL, '2017-02-05 04:39:46', 0, 3, 8, 157, 321),
(128, 'bayu aqib yahya', 'Ahmad Nizar', '', NULL, NULL, '2017-02-05 13:24:46', 0, 57, 5, 158, 325),
(140, 'RangQuman', 'Sucendi,S.Kom', '081320372512', NULL, NULL, '2017-02-06 07:18:04', 0, 60, 2, 171, 343),
(141, 'Ninja Defuse', '', '', NULL, NULL, '2017-02-06 07:38:23', 0, 61, 5, 172, 344),
(142, 'PISCKI FEBIRYANSYAH PRATAMA', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-06 07:45:59', 0, 19, 8, 173, 345),
(143, 'ARIP RAHMAN', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-06 07:46:51', 0, 19, 4, 174, 346),
(144, '', '', '', NULL, NULL, '2017-02-06 09:52:34', 0, 62, 8, 175, 262),
(150, 'ITC5 Design', 'Rahman Taufik, S.Pd', '089628060091', NULL, NULL, '2017-02-06 15:43:27', 0, 50, 1, 182, 356),
(151, 'ITC5 Design2', 'Rahman Taufik, S.Pd', '089628060091', NULL, NULL, '2017-02-06 15:43:52', 0, 50, 1, 183, 357),
(153, 'ITC5 PCA', 'Rahman Taufik, S.Pd', '089628060091', NULL, NULL, '2017-02-06 15:45:19', 0, 50, 4, 185, 359),
(154, 'ITC5 KJ', 'Rahman Taufik, S.Pd', '089628060091', NULL, NULL, '2017-02-06 15:46:21', 0, 50, 8, 186, 360),
(155, 'ITC5 KJ2', 'Rahman Taufik, S.Pd', '089628060091', NULL, NULL, '2017-02-06 15:47:35', 0, 50, 8, 187, 361),
(156, 'ITC5 PCA2', 'Rahman Taufik, S.Pd', '089628060091', NULL, NULL, '2017-02-06 15:48:23', 0, 50, 4, 188, 362),
(157, 'ITC5 LCW', 'Rahman Taufik, S.Pd', '089628060091', NULL, NULL, '2017-02-06 15:49:45', 0, 50, 2, 189, 363),
(158, 'Brainware Of Smansa - PCA 9', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-06 22:02:43', 0, 40, 4, 190, 364),
(159, 'Brainware Of Smansa - LCW 2', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-06 23:01:52', 0, 40, 2, 191, 365),
(160, 'RAR', 'RIDA MULYADI', '085793888798', NULL, NULL, '2017-02-07 06:49:41', 0, 62, 6, 195, 372),
(161, 'AMD', 'RIDA MULYADI', '085793888798', NULL, NULL, '2017-02-07 07:02:58', 0, 62, 6, 196, 373),
(163, 'fajar muhammad fauzi', 'Fajar Eko ', '081320377251', NULL, NULL, '2017-02-07 08:35:33', 0, 10, 1, 198, 375),
(165, 'Benny Herdian Hidayat', 'Fajar Eko Pratama, Mos', '081320377251', NULL, NULL, '2017-02-07 08:48:15', 0, 10, 4, 200, 377),
(167, 'Naufal Fauzi Luthfi', 'Fajar Eko Pratama, Mos', '081320377251', NULL, NULL, '2017-02-07 08:51:29', 0, 10, 4, 202, 379),
(169, 'Della Capitale', 'Fajar Eko Pratama, Mos', '081320377251', NULL, NULL, '2017-02-07 08:55:41', 0, 10, 6, 204, 381),
(172, 'Art Team Animation ', 'Mia Ira Antika', '085315022928', NULL, NULL, '2017-02-07 09:55:42', 0, 52, 6, 207, 384),
(173, 'SmeaScripter', 'Mia Ira Antika', '085315022928', NULL, NULL, '2017-02-07 10:01:17', 0, 52, 2, 208, 385),
(175, 'Muhammad Bakti Rizaldi', 'Mia Ira Antika', '085315022928', NULL, NULL, '2017-02-07 10:14:30', 0, 52, 1, 210, 387),
(176, 'SMANDALA', 'HENDRA', '082348063470', NULL, NULL, '2017-02-07 11:05:21', 0, 65, 3, 213, 390),
(177, 'Skinfa', 'Fahmi,M.Kom', '085310714071', NULL, NULL, '2017-02-07 23:53:27', 0, 63, 2, 216, 396),
(179, 'MUHAMAD ASBI RAFI YUDIN', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-08 00:45:30', 0, 19, 1, 218, 398),
(180, 'DZIKRI KHAIRULLAH AMLAN M', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-08 00:48:11', 0, 19, 8, 219, 399),
(183, 'Skinfa Networking', 'Agung Gumilar,S.ST', '081288641908', NULL, NULL, '2017-02-08 01:05:09', 0, 63, 8, 222, 402),
(184, 'Skinfa Assembli', 'Agung Gumilar,S.ST', '081288641908', NULL, NULL, '2017-02-08 01:20:57', 0, 63, 4, 223, 403),
(185, 'Skinfa Design', 'Raditia Nuzul Pradana, S.Pd', '087738954466', NULL, NULL, '2017-02-08 01:34:37', 0, 63, 1, 224, 404),
(186, 'Nusantara', 'Sabam Tua', '082210222362', NULL, 'https://drive.google.com/drive/my-drive', '2017-02-11 08:57:57', 0, 27, 3, 225, 406),
(187, 'zero 3', '', '', NULL, NULL, '2017-02-08 02:24:59', 0, 27, 3, 226, 408),
(188, 'Animatsoe', 'Dimas Zulfadly', '089626864450', NULL, NULL, '2017-02-08 04:13:56', 0, 54, 6, 227, 409),
(189, 'Desta Priatama Rahmansyah', 'Mia Ira Antika', '085315022928', NULL, NULL, '2017-02-08 04:14:26', 0, 52, 1, 228, 410),
(190, 'DANI', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-08 04:20:39', 0, 19, 4, 229, 411),
(192, 'Skyone Web Club', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-08 04:23:58', 0, 19, 2, 231, 414),
(194, 'DANDI ZUSITAMA ERLANGGA', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-08 04:25:55', 0, 19, 1, 233, 416),
(196, 'FERDINAND HARYANTO', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-08 04:27:41', 0, 19, 1, 235, 418),
(197, 'Dion Raka Ariri', 'Anisa Destiana, S.Pd', '085798466008', NULL, NULL, '2017-02-08 04:28:50', 0, 16, 4, 236, 419),
(198, 'STEFANUS ADI NUGROHO', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-08 04:29:36', 0, 19, 1, 237, 420),
(199, 'Deffa Febrian D', 'Anisa Destiana, S.Pd', '085798466008', NULL, NULL, '2017-02-08 04:30:20', 0, 16, 4, 238, 421),
(200, 'AHMAD DIMYATI', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-08 04:31:01', 0, 19, 1, 239, 422),
(201, 'DIKA ANGGORO', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-08 04:32:24', 0, 19, 1, 240, 423),
(202, 'ROES BYANDRA', 'Feriyadi, S.Pd', '081809654508', NULL, NULL, '2017-02-08 04:33:40', 0, 19, 4, 241, 424),
(203, 'SMUTH', 'Yogi Sunandar', '085720410181', NULL, NULL, '2017-02-08 06:24:54', 0, 70, 4, 242, 426),
(206, 'SMKN 1 Cimahi - 1', 'DIKY RIDWAN, S.Kom.,', '081221800590', NULL, NULL, '2017-02-08 07:00:04', 0, 38, 4, 245, 429),
(207, 'SMKN 1 Cimahi - 2', 'DIKY RIDWAN, S.Kom.,', '081221800590', NULL, NULL, '2017-02-08 07:00:48', 0, 38, 4, 246, 430),
(208, 'SMKTI PEMBANGUNAN - 1', 'DIKY RIDWAN, S.Kom.,', '081221800590', NULL, NULL, '2017-02-08 07:01:51', 0, 38, 4, 247, 432),
(209, 'SMKTI PEMBANGUNAN - 2', 'DIKY RIDWAN, S.Kom.,', '081221800590', NULL, NULL, '2017-02-08 07:02:37', 0, 38, 4, 248, 433),
(210, 'SATELIT 17', 'Ali Hasan Asyari', '085780905854', NULL, NULL, '2017-02-08 07:43:52', 0, 18, 4, 249, 174),
(213, 'SATELIT 17', 'Ali Hasan Asyari', '085780905854', NULL, NULL, '2017-02-08 07:47:41', 0, 18, 4, 252, 174),
(215, 'SATELIT 17', 'Ali Hasan Asyari', '085780905854', NULL, NULL, '2017-02-08 07:49:37', 0, 18, 1, 254, 174),
(216, 'SATELIT 17', 'Ali Hasan Asyari', '085780905854', NULL, NULL, '2017-02-08 07:50:34', 0, 18, 1, 255, 174),
(224, 'SATELITnimation', 'Ali Hasan Asyari', '085780905854', NULL, NULL, '2017-02-08 08:23:13', 0, 18, 6, 263, 450),
(225, 'SATELIT TEAM', 'Ali Hasan Asyari', '085780905854', NULL, NULL, '2017-02-08 08:26:41', 0, 18, 3, 264, 451),
(226, 'SATELIT 17', 'Ali Hasan Asyari', '085780905854', NULL, NULL, '2017-02-08 08:32:38', 0, 18, 4, 265, 174),
(227, 'Compsr', 'Fahmi,M.Kom', '085310714071', NULL, NULL, '2017-02-08 08:35:49', 0, 63, 2, 266, 453),
(228, 'SMAN 11 Bandung', '', '', NULL, NULL, '2017-02-08 08:37:10', 0, 66, 4, 267, 393),
(229, 'M. Naufal Feryanto', 'Fajar Eko Pratama, Mos', '081320377251', NULL, NULL, '2017-02-08 09:12:38', 0, 10, 1, 268, 458),
(231, 'KARBIT', 'Rizal Zamaludin', '081322023623', NULL, NULL, '2017-02-08 09:17:29', 0, 67, 2, 270, 460),
(233, 'Muhammad Rizky Pratama', 'Mia Ira Antika', '085315022928', NULL, NULL, '2017-02-08 09:35:28', 0, 52, 4, 272, 462),
(235, 'Alfin Dwiyanto', 'Mia Ira Antika', '085315022928', NULL, NULL, '2017-02-08 09:38:15', 0, 52, 4, 274, 464),
(237, 'Verified', 'Lusyana Widjaja', '', NULL, NULL, '2017-02-08 09:57:48', 0, 73, 3, 276, 466),
(238, '', 'Lusyana Widjaja', '', NULL, NULL, '2017-02-08 10:01:14', 0, 73, 5, 277, 262),
(239, 'animasi verified', 'Lusyana Widjaja', '', NULL, NULL, '2017-02-08 10:03:40', 0, 73, 6, 278, 468),
(240, '', '', '', NULL, NULL, '2017-02-08 10:05:42', 0, 73, 1, 279, 262),
(241, 'GreennoSoft', 'FERRY STEPHANUS SUWITA', '08562294222', NULL, NULL, '2017-02-08 10:06:20', 0, 62, 2, 280, 470),
(242, '', '', '', NULL, NULL, '2017-02-08 10:07:49', 0, 73, 4, 281, 262),
(243, 'KARBIT', 'Rizal Zamaludin', '081322023623', NULL, NULL, '2017-02-08 10:26:02', 0, 67, 1, 282, 460),
(245, 'KARBIT', 'Rizal Zamaludin', '081322023623', NULL, NULL, '2017-02-08 10:28:51', 0, 67, 4, 284, 460),
(246, 'SENI SILVIA SATRIANI', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-08 12:56:42', 0, 35, 1, 285, 476),
(247, 'ARIL ALFAJRI NURROHMAN', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-08 12:57:14', 0, 35, 8, 286, 477),
(248, 'FAHREZA ADIFYA', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-08 12:57:42', 0, 35, 8, 287, 478),
(249, 'RIVA DIMAS PANGESTU', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-08 12:58:12', 0, 35, 4, 288, 479),
(250, 'ALYA ZENITA', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-08 12:58:35', 0, 35, 4, 289, 480),
(251, 'EVAN AGUSTIAN LUKIUS', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-08 12:59:02', 0, 35, 5, 290, 168),
(252, 'UNITED REVOLUTION', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-08 13:00:05', 0, 35, 2, 291, 482),
(254, 'MUHAMMAD NURZAMAN FIRDAUS', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-08 13:01:18', 0, 35, 4, 293, 484),
(255, 'SI-FI', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-08 13:02:11', 0, 35, 3, 294, 485),
(257, 'CERBERUS', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-08 13:03:13', 0, 35, 2, 296, 487),
(258, 'ANDROMAEDA', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-08 13:04:03', 0, 35, 6, 297, 488),
(261, 'SEBELAS-2', 'Asep Sudrajat,S.Kom', '085223597900', NULL, NULL, '2017-02-08 14:08:05', 0, 46, 3, 300, 491),
(262, 'SMAN11GARUT', 'Asep Gumbira,M.Pd', '08122481734', NULL, NULL, '2017-02-08 14:30:09', 0, 46, 1, 301, 243),
(263, 'Sebelas-1', 'Asep Gumbira,M.Pd', '08122481734', NULL, NULL, '2017-02-08 14:39:55', 0, 46, 3, 302, 493),
(264, 'SMAN11-2', 'Asep Gumbira,M.Pd', '08122481734', NULL, NULL, '2017-02-08 14:46:42', 0, 46, 1, 303, 494),
(265, 'SMAN11-3', 'Enang Tatang,M.Pd', '085223680322', NULL, NULL, '2017-02-08 14:51:36', 0, 46, 1, 304, 495),
(266, 'SMAN11-4', 'Asep Gumbira,M.Pd', '08122481734', NULL, NULL, '2017-02-08 14:55:16', 0, 46, 1, 305, 496),
(268, 'Hilmi Al-Wahid', 'Gian Hadiansyah', '085722810002', NULL, NULL, '2017-02-09 01:30:03', 0, 66, 4, 307, 497),
(269, 'Muhammad Sultan Bani', 'Gian Hadiansyah', '085722810002', NULL, NULL, '2017-02-09 01:46:37', 0, 66, 4, 308, 501),
(270, 'ICS 24', 'Dadan Abdullah, S.Kom', '083825173218', NULL, NULL, '2017-02-09 02:12:14', 0, 71, 2, 310, 502),
(271, 'ICS 23', '', '', NULL, NULL, '2017-02-09 02:16:17', 0, 71, 2, 311, 503),
(272, 'ICS 25', '', '', NULL, NULL, '2017-02-09 02:19:03', 0, 71, 2, 312, 504),
(273, 'ALDY AGUSTIANSYAH', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-09 02:35:42', 0, 35, 4, 313, 505),
(274, 'ICS 22', '', '', NULL, NULL, '2017-02-09 02:36:27', 0, 71, 2, 314, 506),
(275, 'CAHYA RAMDAN SYAH', 'EGI NUGRAHA', '082315100494', NULL, NULL, '2017-02-09 02:37:58', 0, 35, 4, 315, 508),
(276, 'ICS 27', 'Vini Siti Yundari, S.Pd', '082217218543', NULL, NULL, '2017-02-09 02:43:24', 0, 71, 6, 316, 510),
(277, 'ICS 26', '', '', NULL, NULL, '2017-02-09 02:48:11', 0, 71, 6, 317, 512),
(278, 'ICS 28', 'Yogi Pratama, S.Kom', '082216797173', NULL, NULL, '2017-02-09 02:56:41', 0, 71, 1, 318, 513),
(279, 'ICS 29', '', '', NULL, NULL, '2017-02-09 03:03:07', 0, 71, 1, 319, 514),
(280, 'ICS 30', '', '', NULL, NULL, '2017-02-09 03:10:35', 0, 71, 1, 320, 515),
(281, 'ICS 31', 'Syafif Hidayat, S.Kom', '08812076473', NULL, NULL, '2017-02-09 03:15:10', 0, 71, 4, 321, 516),
(282, 'ICS 32', '', '', NULL, NULL, '2017-02-09 03:16:20', 0, 71, 4, 322, 517),
(283, 'ICS 33', '', '', NULL, NULL, '2017-02-09 03:18:45', 0, 71, 4, 323, 518),
(287, 'ANDIKMAN12 V.3', 'Fhajar Muhamad Ramadhan, S.Kom', '087779967441', NULL, NULL, '2017-02-09 03:26:30', 0, 80, 6, 327, 522),
(288, 'Oray''s', 'Imannudin Akbar, S.TP., M.Kom. ', '085722764666', NULL, NULL, '2017-02-09 03:29:06', 0, 30, 3, 328, 523),
(289, '', '', '', NULL, NULL, '2017-02-09 03:32:29', 0, 62, 8, 329, 262),
(290, 'Sanca''s', 'Imannudin Akbar, S.TP., M.Kom. ', '085722764666', NULL, NULL, '2017-02-09 03:33:19', 0, 30, 3, 330, 525),
(291, 'ORBIT Web Dev', 'FERRY STEPHANUS SUWITA', '08562294222', NULL, NULL, '2017-02-09 03:34:54', 0, 62, 2, 331, 526),
(292, 'YOGS RR', 'Adhi Ismail Hasan, S.Pd. ', '082216266543', NULL, NULL, '2017-02-09 03:36:50', 0, 30, 2, 332, 527),
(293, 'H2O2', 'Adhi Ismail Hasan, S.Pd. ', '082216266543', NULL, NULL, '2017-02-09 03:39:47', 0, 30, 2, 333, 528),
(294, 'ArphDez.', 'Cecep Fery Fitra Gumilar', '089699109139', NULL, NULL, '2017-02-09 03:42:23', 0, 75, 2, 334, 529),
(295, 'ArphDez.', 'Cecep Fery Fitra Gumilar', '089699109139', NULL, NULL, '2017-02-09 03:43:27', 0, 75, 5, 335, 529),
(296, 'Techno 13', 'Agit Trinadi', '08986474850', NULL, NULL, '2017-02-09 03:43:31', 0, 30, 6, 336, 531),
(297, 'Deremdem 13', 'Agit Trinadi', '08986474850', NULL, NULL, '2017-02-09 03:46:26', 0, 30, 6, 337, 532),
(298, 'ICS 34', '', '', NULL, NULL, '2017-02-09 03:48:27', 0, 71, 4, 338, 533),
(299, '', 'MUHAMMAD GILANG RAMADHAN', '08997875881', NULL, NULL, '2017-02-09 03:48:49', 0, 62, 4, 339, 262),
(300, 'Delta 13', 'Tri Hartini, S.Pd. ', '085724858514', NULL, NULL, '2017-02-09 03:52:34', 0, 30, 5, 340, 535),
(301, 'N13', 'Tri Hartini, S.Pd. ', '085724858514', NULL, NULL, '2017-02-09 03:54:44', 0, 30, 5, 341, 536),
(302, 'TCP / IP', 'Kuwat Santoso, M.Kom. ', '085723114203', NULL, NULL, '2017-02-09 03:59:21', 0, 30, 8, 342, 537),
(303, 'Uy', 'Kuwat Santoso, M.Kom. ', '085723114203', NULL, NULL, '2017-02-09 04:02:36', 0, 30, 8, 343, 538),
(304, 'CMD', 'Kuwat Santoso, M.Kom. ', '085723114203', NULL, NULL, '2017-02-09 04:04:35', 0, 30, 8, 344, 539),
(305, 'Pen Tool', 'Kania Dewi Waluya, S.ST. ', '085624667228', NULL, NULL, '2017-02-09 04:07:03', 0, 30, 1, 345, 540),
(306, 'Napskoy', 'Kania Dewi Waluya, S.ST.', '085624667228', NULL, NULL, '2017-02-09 04:08:12', 0, 30, 1, 346, 541),
(307, 'Thirteenager', 'Nogi Muharam, S.Kom. ', '081322930643', NULL, NULL, '2017-02-09 04:12:35', 0, 30, 4, 347, 542),
(308, 'Mpli Squad', 'Nogi Muharam, S.Kom. ', '081322930643', NULL, NULL, '2017-02-09 04:14:31', 0, 30, 4, 348, 543),
(311, 'ANDIKMAN12 V.1', 'Fhajar Muhamad Ramadhan, S.Kom', '087779967441', NULL, NULL, '2017-02-09 04:38:58', 0, 80, 4, 351, 547),
(312, 'Putri Rufaida Sabrina', 'Mia Ira Antika', '085315022928', NULL, NULL, '2017-02-09 04:39:18', 0, 52, 1, 352, 548),
(314, 'ANDIKMAN12 V.2', 'Fhajar Muhamad Ramadhan, S.Kom', '087779967441', NULL, NULL, '2017-02-09 04:39:57', 0, 80, 4, 354, 550),
(315, 'NEC', 'Rahmat Fadillah, S.Pd', '085795247061', NULL, NULL, '2017-02-09 04:40:13', 0, 81, 4, 355, 551),
(316, 'ANDIKMAN12 V.4', 'Oman Kusmana, S.Kom. M.M', '087779967441', NULL, NULL, '2017-02-09 04:40:39', 0, 80, 4, 356, 552),
(317, 'ANDIKMAN12 V.5', 'Oman Kusmana, S.Kom. M.M', '087779967441', NULL, NULL, '2017-02-09 04:41:08', 0, 80, 4, 357, 553),
(318, 'ANDIKMAN12 V.6', 'Oman Kusmana, S.Kom. M.M', '087779967441', NULL, NULL, '2017-02-09 04:41:37', 0, 80, 4, 358, 554),
(319, 'NEC2', 'Rahmat Fadillah, S.Pd', '085795247061', NULL, NULL, '2017-02-09 04:54:44', 0, 81, 4, 359, 556),
(321, '', 'RIN RIN NURMALASARI S.PD', '089603796012', NULL, NULL, '2017-02-09 04:59:43', 0, 62, 5, 361, 262),
(323, '', 'RIN RIN NURMALASARI S.PD', '089603796012', NULL, NULL, '2017-02-09 05:01:27', 0, 62, 5, 363, 262),
(324, 'NIKEN', 'Wahidah Halimahnur', '089610739066', NULL, NULL, '2017-02-09 05:11:42', 0, 82, 5, 364, 562),
(325, 'M FIrdaus FT', 'Wahidah Halimahnur', '089610739066', NULL, NULL, '2017-02-09 05:16:55', 0, 82, 5, 365, 563),
(327, 'M Ilham A H', 'Wahidah Halimahnur', '089610739066', NULL, NULL, '2017-02-09 05:19:16', 0, 82, 5, 367, 565),
(328, 'Qalbu Natasya Salsabila', 'Ibu Yeni Handayani', '087718345358', NULL, NULL, '2017-02-09 05:25:05', 0, 82, 1, 368, 566),
(329, 'Merdeka 91', 'Ibu Yeni Handayani', '087718345358', NULL, NULL, '2017-02-09 05:33:33', 0, 82, 6, 369, 567),
(330, 'Rahma Erica', 'Ibu Yeni Handayani', '087718345358', NULL, NULL, '2017-02-09 05:34:30', 0, 82, 1, 370, 568),
(331, 'MRM', 'Ibu Yeni Handayani', '087718345358', NULL, NULL, '2017-02-09 05:36:32', 0, 82, 1, 371, 569),
(332, 'OTIK 91', 'Dicky Nofyan', '082299560900', NULL, NULL, '2017-02-09 05:38:12', 0, 82, 3, 372, 570),
(334, 'Muhammad Aditya Mahardhika', 'Nanik Supiati', '085259768122', NULL, NULL, '2017-02-09 05:49:50', 0, 78, 4, 374, 572),
(335, 'BTA91', 'Wildan Firmansyah', '', NULL, NULL, '2017-02-09 05:50:30', 0, 82, 6, 375, 573),
(336, 'Cerberus', 'Dicky NH', '082299560900', NULL, NULL, '2017-02-09 05:51:43', 0, 82, 2, 376, 487),
(337, 'Millenian Bintang Nusantara', 'Nanik Supiati', '085259768122', NULL, NULL, '2017-02-09 05:54:45', 0, 78, 4, 377, 575),
(338, 'Kevin Digo Widyadhana', 'Nanik Supiati', '085259768122', NULL, NULL, '2017-02-09 05:57:03', 0, 78, 4, 378, 576),
(339, 'Huluk 91', 'Dicky NH', '082299560900', NULL, NULL, '2017-02-09 05:58:04', 0, 82, 2, 379, 577),
(340, 'Muhammad Hilmi Faiz', 'Nanik Supiati', '085259768122', NULL, NULL, '2017-02-09 06:00:18', 0, 78, 4, 380, 578),
(341, 'Dido Adhitya Prasetyo', 'Anisa Destiana, S.Pd', '085798466008', NULL, NULL, '2017-02-09 06:02:32', 0, 16, 1, 381, 579),
(343, 'M. Sugito', 'Anisa Destiana, S.Pd', '085798466008', NULL, NULL, '2017-02-09 06:04:20', 0, 16, 1, 383, 581),
(344, 'Pandawa 5', 'Ikeu Ratnasari S.Kom', '087718345358', NULL, NULL, '2017-02-09 06:10:02', 0, 82, 4, 384, 583),
(345, 'Pandawa 5', 'Ikeu Ratnasari S.Kom', '087718345358', NULL, NULL, '2017-02-09 06:10:13', 0, 82, 4, 385, 583),
(346, 'Pandawa 5', 'Ikeu Ratnasari S.Kom', '087718345358', NULL, NULL, '2017-02-09 06:12:27', 0, 82, 4, 386, 583),
(347, 'Pandawa 5', 'Ikeu Ratnasari S.Kom', '087718345358', NULL, NULL, '2017-02-09 06:12:51', 0, 82, 4, 387, 583),
(348, 'Pandawa 5', 'Ikeu Ratnasari S.Kom', '087718345358', NULL, NULL, '2017-02-09 06:13:22', 0, 82, 4, 388, 583),
(349, 'struggle', 'Dwi Murtikah, S.Pd', '083821808062', NULL, NULL, '2017-02-09 06:16:31', 0, 16, 2, 389, 588),
(351, 'Dandi', 'Dwi Murtikah, S.Pd', '083821808062', NULL, NULL, '2017-02-09 06:18:52', 0, 16, 5, 391, 590),
(352, 'M. ILHAM RIZKI', 'yeni handayni, S.pd. M.T.', '087718345358', NULL, NULL, '2017-02-09 07:02:31', 0, 82, 1, 392, 592),
(354, 'Fauzan MM', 'Yeni Handayani, S.pd. M.T.', '087718345358', NULL, NULL, '2017-02-09 07:03:35', 0, 82, 1, 394, 594),
(355, 'Maydas 159', '', '', NULL, NULL, '2017-02-09 07:04:32', 0, 29, 3, 395, 557),
(356, 'SENDI ARDIANSYAH', 'Yeni Handayani, S.pd., M.T.', '087718345358', NULL, NULL, '2017-02-09 07:04:41', 0, 82, 4, 396, 596),
(357, 'NESAS', 'RAHMAT', '082115107349', NULL, NULL, '2017-02-09 07:08:09', 0, 84, 4, 397, 597),
(358, 'Gusti Alfazri Djahid', '', '', NULL, NULL, '2017-02-09 07:12:36', 0, 29, 1, 398, 598),
(359, 'Yudha Pratama', '', '', NULL, NULL, '2017-02-09 07:14:40', 0, 29, 1, 399, 599),
(360, 'Muhamad Arif Firdaus', '', '', NULL, NULL, '2017-02-09 07:16:22', 0, 29, 1, 400, 600),
(361, 'dio prasetiyo', '', '', NULL, NULL, '2017-02-09 07:17:59', 0, 29, 4, 401, 601),
(362, 'Maulana Hidayatullah', '', '', NULL, NULL, '2017-02-09 07:23:02', 0, 29, 4, 402, 602),
(364, 'Slamet Faisal', '', '', NULL, NULL, '2017-02-09 07:26:30', 0, 29, 4, 404, 604),
(365, 'OTIK11', 'Gian Hadiansyah', '085722810002', NULL, NULL, '2017-02-09 08:03:48', 0, 66, 3, 405, 606),
(366, 'pkbmmdc', '-', '-', NULL, NULL, '2017-02-09 08:14:12', 0, 86, 8, 406, 607),
(367, 'LiFo MAN1SI', 'Anang Suryana, S.Pd, M.Si', '085721370451', NULL, NULL, '2017-02-09 08:21:22', 0, 77, 7, 407, 609),
(368, 'RUBIK4', 'FERRY STEPHANUS SUWITA', '08562294222', NULL, NULL, '2017-02-09 08:46:06', 0, 62, 2, 408, 611),
(369, '', '', '', NULL, NULL, '2017-02-09 09:10:46', 0, 62, 8, 409, 262),
(370, '', '', '', NULL, NULL, '2017-02-09 09:12:15', 0, 62, 8, 410, 262),
(371, '', '', '', NULL, NULL, '2017-02-09 09:14:02', 0, 62, 8, 411, 262),
(372, 'ANDIKMAN12 V.7', 'Fhajar Muhamad Ramadhan, S.Kom', '087779967441', NULL, NULL, '2017-02-09 09:44:12', 0, 80, 4, 412, 617),
(373, 'ANDIKMAN12 V.8', 'Fhajar Muhamad Ramadhan, S.Kom', '087779967441', NULL, NULL, '2017-02-09 09:45:05', 0, 80, 4, 413, 618),
(374, 'ANDIKMAN12 V.9', 'Fhajar Muhamad Ramadhan, S.Kom', '087779967441', NULL, NULL, '2017-02-09 09:46:17', 0, 80, 4, 414, 619),
(375, 'ANDIKMAN12 V.10', 'Fhajar Muhamad Ramadhan, S.Kom', '087779967441', NULL, NULL, '2017-02-09 09:47:40', 0, 80, 6, 415, 620),
(376, 'ANDIKMAN12 V.11', 'Fhajar Muhamad Ramadhan, S.Kom', '087779967441', NULL, NULL, '2017-02-09 09:48:23', 0, 80, 6, 416, 621),
(377, 'ANDIKMAN12 V.12', 'Fhajar Muhamad Ramadhan, S.Kom', '087779967441', NULL, NULL, '2017-02-09 09:49:01', 0, 80, 2, 417, 622),
(380, 'ANDIKMAN12 V.13', 'Fhajar Muhamad Ramadhan, S.Kom', '087779967441', NULL, NULL, '2017-02-09 09:54:38', 0, 80, 4, 420, 625),
(382, 'ISN Develop', '', '', NULL, NULL, '2017-02-09 10:11:07', 0, 83, 6, 422, 627),
(385, 'DIMAR', 'Ashri Dinimaharawati, S.Pd', '082218120307', NULL, NULL, '2017-02-09 10:50:27', 0, 55, 6, 425, 630),
(387, 'AUFIKAR TEAM', 'Ashri Dinimaharawati, S.Pd', '082218120307', NULL, NULL, '2017-02-09 11:31:29', 0, 55, 6, 427, 632),
(388, 'Mohammad Rizqy Pratama', 'Wildan Aprizal Arifin, S.Pd', '085353435530', NULL, NULL, '2017-02-09 11:58:42', 0, 55, 8, 428, 633),
(389, 'Mochammad Khosy Nurhayat Firdaus', 'Wildan Aprizal Arifin, S.Pd', '085353435530', NULL, NULL, '2017-02-09 12:00:09', 0, 55, 8, 429, 634),
(390, 'Muhammad Amin Aris T', 'Ashri Dinimaharawati, S.Pd', '082218120307', NULL, NULL, '2017-02-09 12:02:35', 0, 55, 4, 430, 635),
(391, 'Herdi Syah Putra Nugraha', 'Ashri Dinimaharawati, S.Pd', '082218120307', NULL, NULL, '2017-02-09 12:04:04', 0, 55, 4, 431, 636),
(392, 'Suryaman Sidik', 'Ashri Dinimaharawati, S.Pd', '082218120307', NULL, NULL, '2017-02-09 12:05:11', 0, 55, 4, 432, 637),
(393, 'Fachri Afifudin', 'Ashri Dinimaharawati, S.Pd', '082218120307', NULL, NULL, '2017-02-09 12:06:45', 0, 55, 4, 433, 638),
(394, 'robotic squad', 'Willdan Aprizal Arifin, S.Pd', '085353435530', NULL, NULL, '2017-02-09 12:15:10', 0, 55, 7, 434, 639),
(395, 'OSBIT', 'Sion Thutu Satrio S.,S.kom', '081802434559', NULL, NULL, '2017-02-09 12:19:18', 0, 33, 5, 435, 397),
(397, 'Brainware Of Smansa - LDG 11', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-09 13:49:37', 0, 40, 1, 438, 643),
(398, 'Brainware Of Smansa - LDG 12', 'Ai Komariah', '085282103885', NULL, NULL, '2017-02-09 14:11:17', 0, 40, 1, 439, 629),
(401, 'IGAPIN BANDUNG', 'Winny Febrianty Ruhimat, ST', '085220744582', NULL, NULL, '2017-02-09 14:44:59', 0, 89, 3, 442, 650),
(402, 'IGAPIN_WEB', 'Nur fauziah, S.Pd', '085624823722', NULL, NULL, '2017-02-09 14:59:45', 0, 89, 2, 443, 651),
(403, 'Billy Rivaldi', 'Gian Hadiansyah', '085722810002', NULL, NULL, '2017-02-09 15:09:59', 0, 66, 4, 444, 652),
(404, 'IGAPIN_ASSEMBLING', 'Yadi Suryadi, ST', '085320858635', NULL, NULL, '2017-02-09 15:16:35', 0, 89, 4, 445, 653),
(405, 'ANIMASI IGAPIN', 'Winny Febrianty.R, ST', '085220744582', NULL, NULL, '2017-02-09 15:56:51', 0, 89, 6, 446, 656),
(406, 'KARBIT', 'Rizal Zamaludin', '0813-2202-3623', NULL, NULL, '2017-02-09 23:22:09', 0, 67, 1, 448, 460),
(407, 'KARBIT', 'Rizal Zamaludin', '0813-2202-3623', NULL, NULL, '2017-02-09 23:24:19', 0, 67, 6, 449, 460),
(408, 'OSBIT', 'Sion Thutu Satrio S.,S.kom', '', NULL, NULL, '2017-02-10 04:41:27', 0, 33, 1, 450, 397),
(409, 'OSBIT', 'Sion Thutu Satrio S.,S.kom', '', NULL, NULL, '2017-02-10 04:44:28', 0, 33, 1, 451, 397),
(410, 'SMAPAT', 'Yusuf Nugraha', '083820895732', NULL, NULL, '2017-02-10 04:50:31', 0, 93, 4, 452, 664),
(428, 'PCA Balong Gede', 'Syaeful Malik S.Pd', '085624111417', NULL, NULL, '2017-02-10 15:04:43', 0, 97, 4, 470, 688),
(430, 'LDG Balong Gede', 'Syaeful Malik S.Pd', '085624111417', NULL, NULL, '2017-02-10 15:10:03', 0, 97, 1, 472, 690),
(431, 'SMK Guna Dharma Nusantara', 'Firman Alamsyah', '082216622374', NULL, NULL, '2017-02-11 04:42:02', 0, 95, 8, 473, 667),
(433, 'SMK Guna Dharma Nusantara A', 'Nasep Nuryadin', '082214267474', NULL, NULL, '2017-02-11 06:39:09', 0, 95, 4, 475, 694),
(434, 'SMK Guna Dharma Nusantara B', 'Nasep Nuryadin', '08221426774', NULL, NULL, '2017-02-11 06:43:22', 0, 95, 4, 476, 695),
(435, 'SMK Guna Dharma Nusantara C', 'Nasep Nuryadin', '082214267474', NULL, NULL, '2017-02-11 06:47:20', 0, 95, 4, 477, 696),
(436, 'SMANDA INTERACTIVE CLUB', 'Aris Hendaris', '081564648066', NULL, NULL, '2017-02-11 08:33:55', 0, 72, 3, 478, 697),
(437, 'SMAIT IF', 'Syaiful Habib S.Pd', '0857 1678 9471 ', NULL, NULL, '2017-02-12 03:10:20', 0, 90, 5, 480, 698);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- RELATIONS FOR TABLE `tb_score`:
--   `score_judge_id`
--       `tb_judge` -> `judge_id`
--   `score_event_id`
--       `tb_event` -> `event_id`
--   `score_schteam_id`
--       `tb_schteam` -> `schteam_id`
--

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
  `sponsor_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`sponsor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
,`pbt_instance` text
,`pbt_email` varchar(255)
,`pbt_contact` varchar(255)
,`pbt_file` longtext
,`pbt_file_log` timestamp
,`eve_name` varchar(255)
,`eve_price` double
,`pay_status` tinyint(1)
,`pay_document` varchar(255)
,`pay_id` int(11)
,`pay_unique_code` varchar(255)
,`pub_id` int(11)
,`eve_id` int(11)
,`pay_desc` text
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pub_acc`
--
DROP VIEW IF EXISTS `v_pub_acc`;
CREATE TABLE IF NOT EXISTS `v_pub_acc` (
`acc_id` int(11)
,`acc_email` varchar(255)
,`acc_username` varchar(255)
,`acc_log` timestamp
,`acc_status` tinyint(1)
,`pub_name` varchar(255)
,`pub_address` text
,`pub_contact` varchar(20)
,`sch_city` varchar(40)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_schteam_dash`
--
DROP VIEW IF EXISTS `v_schteam_dash`;
CREATE TABLE IF NOT EXISTS `v_schteam_dash` (
`sct_id` int(11)
,`sct_name` varchar(255)
,`sct_coach_name` varchar(255)
,`sct_coach_contact` varchar(20)
,`eve_name` varchar(255)
,`eve_price` double
,`pay_status` tinyint(1)
,`pay_document` varchar(255)
,`pay_id` int(11)
,`sch_id` int(11)
,`acc_id` int(11)
,`pay_unique_code` varchar(255)
,`eve_id` int(11)
,`sch_name` varchar(255)
,`pay_desc` text
,`sct_file` text
,`sct_file_log` timestamp
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_sch_acc`
--
DROP VIEW IF EXISTS `v_sch_acc`;
CREATE TABLE IF NOT EXISTS `v_sch_acc` (
`acc_id` int(11)
,`acc_email` varchar(255)
,`acc_username` varchar(255)
,`acc_log` timestamp
,`acc_status` tinyint(1)
,`sch_id` int(11)
,`sch_name` varchar(255)
,`sch_grade` varchar(15)
,`sch_web` text
,`sch_contact` varchar(20)
,`sch_city` varchar(40)
);
-- --------------------------------------------------------

--
-- Structure for view `v_cor_acc`
--
DROP TABLE IF EXISTS `v_cor_acc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cor_acc` AS select `acc`.`account_id` AS `acc_id`,`cor`.`coordinator_id` AS `cor_id`,`cat`.`category_name` AS `cat_name`,`acc`.`account_username` AS `cor_username`,`cor`.`coordinator_name` AS `cor_name`,`acc`.`account_email` AS `cor_email`,`acc`.`account_category_id` AS `cor_category`,`acc`.`account_image` AS `cor_image`,`cor`.`coordinator_event_id` AS `cor_event`,`eve`.`event_name` AS `eve_event_name` from (((`tb_account` `acc` join `tb_coordinator` `cor`) join `tb_category` `cat`) join `tb_event` `eve` on(((`acc`.`account_id` = `cor`.`coordinator_account_id`) and (`eve`.`event_id` = `cor`.`coordinator_event_id`) and (`cat`.`category_id` = `acc`.`account_category_id`))));

-- --------------------------------------------------------

--
-- Structure for view `v_pubteam_dash`
--
DROP TABLE IF EXISTS `v_pubteam_dash`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pubteam_dash` AS select `pbt`.`pubteam_id` AS `pbt_id`,`pbt`.`pubteam_name` AS `pbt_name`,`pbt`.`pubteam_instance` AS `pbt_instance`,`pbt`.`pubteam_email` AS `pbt_email`,`pbt`.`pubteam_contact` AS `pbt_contact`,`pbt`.`pubteam_file` AS `pbt_file`,`pbt`.`pubteam_file_log` AS `pbt_file_log`,`eve`.`event_name` AS `eve_name`,`eve`.`event_price` AS `eve_price`,`pay`.`payment_status` AS `pay_status`,`pay`.`payment_document` AS `pay_document`,`pay`.`payment_id` AS `pay_id`,`pay`.`payment_unique_code` AS `pay_unique_code`,`pub`.`public_id` AS `pub_id`,`eve`.`event_id` AS `eve_id`,`pay`.`payment_description` AS `pay_desc` from (((`tb_pubteam` `pbt` join `tb_public` `pub`) join `tb_event` `eve`) join `tb_payment` `pay` on(((`pbt`.`pubteam_public_id` = `pub`.`public_id`) and (`pbt`.`pubteam_event_id` = `eve`.`event_id`) and (`pbt`.`pubteam_payment_id` = `pay`.`payment_id`))));

-- --------------------------------------------------------

--
-- Structure for view `v_pub_acc`
--
DROP TABLE IF EXISTS `v_pub_acc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pub_acc` AS select `acc`.`account_id` AS `acc_id`,`acc`.`account_email` AS `acc_email`,`acc`.`account_username` AS `acc_username`,`acc`.`account_log` AS `acc_log`,`acc`.`account_status` AS `acc_status`,`pub`.`public_name` AS `pub_name`,`pub`.`public_address` AS `pub_address`,`pub`.`public_contact` AS `pub_contact`,`city`.`city_name` AS `sch_city` from ((`tb_account` `acc` join `tb_public` `pub`) join `tb_city` `city` on(((`pub`.`public_account_id` = `acc`.`account_id`) and (`pub`.`public_city_id` = `city`.`city_id`))));

-- --------------------------------------------------------

--
-- Structure for view `v_schteam_dash`
--
DROP TABLE IF EXISTS `v_schteam_dash`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_schteam_dash` AS select `sct`.`schteam_id` AS `sct_id`,`sct`.`schteam_name` AS `sct_name`,`sct`.`schteam_coach_name` AS `sct_coach_name`,`sct`.`schteam_coach_contact` AS `sct_coach_contact`,`eve`.`event_name` AS `eve_name`,`eve`.`event_price` AS `eve_price`,`pay`.`payment_status` AS `pay_status`,`pay`.`payment_document` AS `pay_document`,`pay`.`payment_id` AS `pay_id`,`sch`.`school_id` AS `sch_id`,`acc`.`account_id` AS `acc_id`,`pay`.`payment_unique_code` AS `pay_unique_code`,`eve`.`event_id` AS `eve_id`,`sch`.`school_name` AS `sch_name`,`pay`.`payment_description` AS `pay_desc`,`sct`.`schteam_file` AS `sct_file`,`sct`.`schteam_file_log` AS `sct_file_log` from ((((`tb_schteam` `sct` join `tb_school` `sch`) join `tb_event` `eve`) join `tb_payment` `pay`) join `tb_account` `acc` on(((`sct`.`schteam_school_id` = `sch`.`school_id`) and (`sct`.`schteam_event_id` = `eve`.`event_id`) and (`sct`.`schteam_payment_id` = `pay`.`payment_id`) and (`sct`.`schteam_account_id` = `acc`.`account_id`))));

-- --------------------------------------------------------

--
-- Structure for view `v_sch_acc`
--
DROP TABLE IF EXISTS `v_sch_acc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sch_acc` AS select `acc`.`account_id` AS `acc_id`,`acc`.`account_email` AS `acc_email`,`acc`.`account_username` AS `acc_username`,`acc`.`account_log` AS `acc_log`,`acc`.`account_status` AS `acc_status`,`sch`.`school_id` AS `sch_id`,`sch`.`school_name` AS `sch_name`,`sch`.`school_grade` AS `sch_grade`,`sch`.`school_web` AS `sch_web`,`sch`.`school_contact` AS `sch_contact`,`city`.`city_name` AS `sch_city` from ((`tb_account` `acc` join `tb_school` `sch`) join `tb_city` `city` on(((`sch`.`school_account_id` = `acc`.`account_id`) and (`sch`.`school_city_id` = `city`.`city_id`))));

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
