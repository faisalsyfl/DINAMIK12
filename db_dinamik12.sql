-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2016 at 04:00 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `tb_account`
--

CREATE DATABASE IF NOT EXISTS `db_dinamik12` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_dinamik12`;


CREATE TABLE IF NOT EXISTS `tb_account` (
  `account_id` varchar(10) NOT NULL DEFAULT '',
  `account_email` varchar(255) NOT NULL,
  `account_username` varchar(16) NOT NULL,
  `account_password` varchar(255) NOT NULL,
  `account_log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account_category_id` varchar(10) NOT NULL
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
-- Table structure for table `tb_city`
--

CREATE TABLE IF NOT EXISTS `tb_city` (
  `city_id` int(11) NOT NULL DEFAULT '0',
  `city_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `coordinator_event_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_event`
--

CREATE TABLE IF NOT EXISTS `tb_event` (
  `event_id` varchar(10) NOT NULL DEFAULT '',
  `event_category` varchar(10) NOT NULL,
  `event_name` varchar(255) NOT NULL,
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
  `judge_event_id` varchar(10) NOT NULL
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
  `news_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_participant`
--

CREATE TABLE IF NOT EXISTS `tb_participant` (
  `participant_id` varchar(10) NOT NULL DEFAULT '',
  `participant_name` varchar(255) NOT NULL,
  `participant_nisn` varchar(20) NOT NULL,
  `participant_birth` date NOT NULL,
  `participant_gender` char(1) NOT NULL,
  `participant_contact` varchar(20) NOT NULL,
  `participant_address` text NOT NULL,
  `participant_team_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment`
--

CREATE TABLE IF NOT EXISTS `tb_payment` (
  `payment_id` varchar(10) NOT NULL DEFAULT '',
  `payment_amount` double NOT NULL,
  `payment_document` varchar(255) NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_school`
--

CREATE TABLE IF NOT EXISTS `tb_school` (
  `school_id` varchar(10) NOT NULL DEFAULT '',
  `school_name` varchar(255) NOT NULL,
  `school_address` text NOT NULL,
  `school_contact` varchar(20) NOT NULL,
  `school_email` varchar(255) NOT NULL,
  `school_city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_scoredetail`
--

CREATE TABLE IF NOT EXISTS `tb_scoredetail` (
  `scoredetail_id` varchar(10) NOT NULL,
  `scoredetail_score` varchar(10) NOT NULL,
  `scoredetail_judge` varchar(10) NOT NULL,
  `scoredetail_scoretotal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_scoretotal`
--

CREATE TABLE IF NOT EXISTS `tb_scoretotal` (
  `scoretotal_id` varchar(10) NOT NULL DEFAULT '',
  `scoretotal_score_total` int(11) NOT NULL,
  `scoretotal_event_id` varchar(10) NOT NULL,
  `scoretotal_team_id` varchar(10) NOT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `tb_team`
--

CREATE TABLE IF NOT EXISTS `tb_team` (
  `team_id` varchar(10) NOT NULL DEFAULT '',
  `team_name` varchar(255) NOT NULL,
  `team_coach_name` varchar(255) DEFAULT NULL,
  `team_coach_contact` varchar(20) DEFAULT NULL,
  `team_school_id` varchar(10) NOT NULL,
  `team_event_id` varchar(10) NOT NULL,
  `team_payment_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_account`
--
ALTER TABLE `tb_account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `account_category_id` (`account_category_id`);

--
-- Indexes for table `tb_bazaar`
--
ALTER TABLE `tb_bazaar`
  ADD PRIMARY KEY (`bazaar_id`);

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
  ADD KEY `coordinator_event_id` (`coordinator_event_id`);

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
  ADD KEY `judge_event_id` (`judge_event_id`);

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tb_participant`
--
ALTER TABLE `tb_participant`
  ADD PRIMARY KEY (`participant_id`),
  ADD KEY `participant_team_id` (`participant_team_id`);

--
-- Indexes for table `tb_payment`
--
ALTER TABLE `tb_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tb_school`
--
ALTER TABLE `tb_school`
  ADD PRIMARY KEY (`school_id`),
  ADD KEY `school_city_id` (`school_city_id`);

--
-- Indexes for table `tb_scoredetail`
--
ALTER TABLE `tb_scoredetail`
  ADD PRIMARY KEY (`scoredetail_id`);

--
-- Indexes for table `tb_scoretotal`
--
ALTER TABLE `tb_scoretotal`
  ADD PRIMARY KEY (`scoretotal_id`),
  ADD KEY `score_event_id` (`scoretotal_event_id`,`scoretotal_team_id`);

--
-- Indexes for table `tb_sponsor`
--
ALTER TABLE `tb_sponsor`
  ADD PRIMARY KEY (`sponsor_id`);

--
-- Indexes for table `tb_team`
--
ALTER TABLE `tb_team`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `team_school_id` (`team_school_id`),
  ADD KEY `team_school_id_2` (`team_school_id`,`team_event_id`,`team_payment_id`),
  ADD KEY `team_school_id_3` (`team_school_id`,`team_event_id`,`team_payment_id`),
  ADD KEY `team_payment_id` (`team_payment_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
