-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2018 at 08:48 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sespim`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_categories`
--

CREATE TABLE `academic_categories` (
  `academic_category_id` int(11) NOT NULL,
  `academic_title` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_categories`
--

INSERT INTO `academic_categories` (`academic_category_id`, `academic_title`, `createdAt`, `updatedAt`) VALUES
(1, 'NKP', '2018-05-08 09:00:00', '2018-05-08 09:00:00'),
(2, 'NKK HPL', '2018-05-08 09:00:00', '2018-05-08 09:00:00'),
(3, 'NKK KKL', '2018-05-08 09:00:00', '2018-05-08 09:00:00'),
(4, 'Lapgas', '2018-05-11 10:00:00', '2018-05-11 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `academic_scores`
--

CREATE TABLE `academic_scores` (
  `academic_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `academic_category_id` int(11) NOT NULL,
  `file_url` varchar(250) NOT NULL,
  `file_loc` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `activities_scores`
--

CREATE TABLE `activities_scores` (
  `activities_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `file_url` text NOT NULL,
  `file_loc` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activities_scores`
--

INSERT INTO `activities_scores` (`activities_id`, `title`, `file_url`, `file_loc`, `status`, `updatedAt`, `createdAt`) VALUES
(4, 'NILAI PRE TEST', 'http://45.76.184.245/assets/images/kegiatan_khusus/1526614852NILAI PREE TEST.pdf', '1526614852NILAI PREE TEST.pdf', 0, '2018-05-18 03:40:52', '2018-05-18 03:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `first_name`, `last_name`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'Rendi', 'Simamora', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Ari', 'Cahyadi', 'cahyadiari', '296818253cbd48e3dad3982a159acf47ee3cbe50', '2018-05-07 05:10:48', '2018-05-07 05:10:48'),
(8, 'Diki', 'Riyadi', 'Laruku', '048accef88e2019b36ab7da9017fd053badc551e', '2018-05-08 12:41:51', '2018-05-08 12:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) NOT NULL,
  `announcement` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `announcement`, `createdAt`, `updatedAt`) VALUES
(21, 'pengumpulan judul naskap.\r\nagar setiap pokjar mengumpulkan softcopy dan hardcopynya judul naskap ke bag Bindik.\r\nditunggu hari ini. terima kasih.\r\n', '2018-05-25 01:36:01', '2018-05-25 01:36:01'),
(22, 'pengumpulan nkp 3. batas akhir pukul 14.00\r\n', '2018-05-28 05:27:10', '2018-05-28 05:27:10'),
(23, 'Jadwal ujian sudah dipublish', '2018-05-30 10:59:32', '2018-05-30 10:59:32'),
(24, 'Jadwal ujian sudah dipublish', '2018-06-04 10:53:24', '2018-06-04 10:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banner_id` int(11) NOT NULL,
  `banner_url` text NOT NULL,
  `banner_loc` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banner_id`, `banner_url`, `banner_loc`, `createdAt`, `updatedAt`) VALUES
(7, 'https://res.cloudinary.com/nandonrp/image/upload/v1522648782/Sespim-Banner-3_soivb6.jpg', 'a', '2018-04-04 00:00:00', '2018-04-04 00:00:00'),
(8, 'https://res.cloudinary.com/nandonrp/image/upload/v1522648782/Sespim-Banner-2_yzuflc.jpg', 'b', '2018-04-04 00:00:00', '2018-04-04 00:00:00'),
(9, 'https://res.cloudinary.com/nandonrp/image/upload/v1522648782/Sespim-Banner-1_wgcyca.jpg', 'c', '2018-04-04 00:00:00', '2018-04-04 00:00:00'),
(10, 'http://45.76.184.245/assets/images/banners/1522914500WhatsApp Image 2018-03-29 at 13.15.23 (1).jpeg', '1522914500WhatsApp Image 2018-03-29 at 13.15.23 (1).jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'http://45.76.184.245/assets/images/banners/1522914587WhatsApp Image 2018-03-29 at 13.13.32 (7).jpeg', '1522914587WhatsApp Image 2018-03-29 at 13.13.32 (7).jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'http://45.76.184.245/assets/images/banners/1522914635WhatsApp Image 2018-03-29 at 13.13.32 (4).jpeg', '1522914635WhatsApp Image 2018-03-29 at 13.13.32 (4).jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'http://45.76.184.245/assets/images/banners/1522914721WhatsApp Image 2018-03-29 at 13.13.32 (5).jpeg', '1522914721WhatsApp Image 2018-03-29 at 13.13.32 (5).jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'http://45.76.184.245/assets/images/banners/152420990400001.jpeg', '152420990400001.jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'http://45.76.184.245/assets/images/banners/15242100340002.jpeg', '15242100340002.jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `document_id` int(11) NOT NULL,
  `document_title` varchar(255) DEFAULT NULL,
  `document_url` varchar(255) DEFAULT NULL,
  `document_loc` varchar(255) NOT NULL,
  `document_type` enum('standar-kompetensi','data-serdik','handbook','info-sespimmen') DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`document_id`, `document_title`, `document_url`, `document_loc`, `document_type`, `admin_id`, `createdAt`, `updatedAt`) VALUES
(1, NULL, 'https://res.cloudinary.com/rendisimamora/image/upload/v1524735403/1524017606KURIKULUM_SESPIMMEN_58_gjynah.pdf', '1524017606KURIKULUM SESPIMMEN 58.pdf', 'standar-kompetensi', 1, '2018-03-04 12:58:29', '2018-04-18 02:13:26'),
(39, 'Denah Ujian', 'http://45.76.184.245/assets/images/documents/1526003691DENAH RUANG UJIAN NKP.pdf', '1526003691DENAH RUANG UJIAN NKP.pdf', 'info-sespimmen', 1, '2018-04-04 00:00:00', '2018-05-11 01:54:51'),
(44, 'Kaldik Reguler', 'http://45.76.184.245/assets/images/documents/1523409949KALENDER-PENDIDIKAN REGULER.pdf', '1523409949KALENDER-PENDIDIKAN REGULER.pdf', 'handbook', 0, '2018-04-11 01:25:49', '2018-04-11 01:25:49'),
(45, 'Kalender Pendidikan matrikulasi', 'http://45.76.184.245/assets/images/documents/1523951849KALENDER PENDIDIKAN MATRIKULASI..pdf', '1523951849KALENDER PENDIDIKAN MATRIKULASI..pdf', 'handbook', 0, '2018-04-17 07:57:29', '2018-04-17 07:57:29'),
(46, 'PEDOMAN PENUGASAN 58', 'http://45.76.184.245/assets/images/documents/1523951887PEDOMAN-PENUGASAN-58-_26-03-2018_.pdf', '1523951887PEDOMAN-PENUGASAN-58-_26-03-2018_.pdf', 'handbook', 0, '2018-04-17 07:58:07', '2018-04-17 07:58:07'),
(47, 'PERSUS SESPIMMEN 58', 'http://45.76.184.245/assets/images/documents/1523951918PERSUS 2018.pdf', '1523951918PERSUS 2018.pdf', 'handbook', 0, '2018-04-17 07:58:38', '2018-04-17 07:58:38'),
(48, 'Data Serdik Reguler 58', 'http://45.76.184.245/assets/images/documents/1525835540DATA SERDIK REGULER 58.output.pdf', '1525835540DATA SERDIK REGULER 58.output.pdf', 'data-serdik', 0, '2018-04-17 07:59:13', '2018-05-09 03:12:20'),
(52, 'PPKTI SESPIMMEN DIKREG KE-58 T.A. 2018', 'http://45.76.184.245/assets/images/documents/1524017766PPKTI SESPIMMEN DIKREG KE-58 T.A. 2018_OK.pdf', '1524017766PPKTI SESPIMMEN DIKREG KE-58 T.A. 2018_OK.pdf', 'handbook', 0, '2018-04-18 02:16:06', '2018-04-18 02:16:06'),
(53, 'PEDOMAN PENILAIAN SESPIMMEN 58', 'http://45.76.184.245/assets/images/documents/1524017899PEDOMAN PENILAIAN DIKREG 58 2018_ok.pdf', '1524017899PEDOMAN PENILAIAN DIKREG 58 2018_ok.pdf', 'handbook', 0, '2018-04-18 02:18:19', '2018-04-18 02:18:19'),
(54, 'data serdik matrikulasi', 'http://45.76.184.245/assets/images/documents/1524465999serdik matrikulasi.pdf', '1524465999serdik matrikulasi.pdf', 'data-serdik', 0, '2018-04-23 06:46:39', '2018-04-23 06:46:39'),
(63, 'pedoman Mekanisme Ujian 58', 'http://45.76.184.245/assets/images/documents/1524531380PEDOMAN-MEKANISME-UJIAN-58..pdf', '1524531380PEDOMAN-MEKANISME-UJIAN-58..pdf', 'handbook', 0, '2018-04-24 12:56:20', '2018-04-24 12:56:20'),
(64, 'FORMAT PENGAJUAN JUDUL NASKAP', 'http://45.76.184.245/assets/images/documents/1526284450FORMAT PENGAJUAN JUDUL NASKAP.pdf', '1526284450FORMAT PENGAJUAN JUDUL NASKAP.pdf', 'handbook', 0, '2018-05-14 07:54:10', '2018-05-14 07:54:10'),
(65, 'FORMAT PERUBAHAN JUDUL NASKAP', 'http://45.76.184.245/assets/images/documents/1526284530FORMAT PERUBAHAN JUDUL NASKAP.pdf', '1526284530FORMAT PERUBAHAN JUDUL NASKAP.pdf', 'handbook', 0, '2018-05-14 07:55:30', '2018-05-14 07:55:30'),
(66, 'FORMAT KONSULTASI NASKAP', 'http://45.76.184.245/assets/images/documents/1526284557FORMAT KONSULTASI NASKAP.pdf', '1526284557FORMAT KONSULTASI NASKAP.pdf', 'handbook', 0, '2018-05-14 07:55:57', '2018-05-14 07:55:57'),
(67, 'RGB PKB JUANG', 'http://45.76.184.245/assets/images/documents/1526445382RGB PKB Juang-Paparan Kasespimmen.pdf', '1526445382RGB PKB Juang-Paparan Kasespimmen.pdf', 'handbook', 0, '2018-05-16 04:36:22', '2018-05-16 04:36:22'),
(68, 'LAMPIRAN 17 RUMUSAN GRAND STRATEGY', 'http://45.76.184.245/assets/images/documents/1527066952LAMPIRAN 17 RUMUSAN GRAND STRATEGY-1.pdf', '1527066952LAMPIRAN 17 RUMUSAN GRAND STRATEGY-1.pdf', 'handbook', 0, '2018-05-23 09:15:52', '2018-05-23 09:15:52'),
(69, 'kaldik reguler revisi cuti bersama', 'http://45.76.184.245/assets/images/documents/1527730514KALENDER PENDIDIKAN cuti bersama.pdf', '1527730514KALENDER PENDIDIKAN cuti bersama.pdf', 'handbook', 0, '2018-05-31 01:35:14', '2018-05-31 01:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `thumbnail_loc` text NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `place` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `admin_id` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `thumbnail_url`, `thumbnail_loc`, `title`, `description`, `place`, `date`, `time_start`, `time_end`, `admin_id`, `createdAt`, `updatedAt`) VALUES
(21, NULL, '', 'UPC BUKA DIK = 2 JP', '', '', '2018-03-27', '00:00:00', '00:00:00', '1', '2018-03-27 01:28:06', '2018-03-27 01:28:06'),
(22, NULL, '', 'PANITIA BUKA DIK KA KORSIS', '', '', '2018-03-27', '00:00:00', '00:00:00', '1', '2018-03-27 01:59:34', '2018-03-27 01:59:34'),
(23, NULL, '', 'ORIENTASI LINGKUNGAN = 8 JP KAKORSIS', '', '', '2018-03-27', '00:00:00', '00:00:00', '1', '2018-03-27 01:59:45', '2018-03-27 01:59:45'),
(24, NULL, '', 'PENJELASAN BID KUMDANG =  2 JP', '', '', '2018-03-29', '08:00:00', '09:30:00', '1', '2018-03-27 01:59:57', '2018-03-29 02:57:54'),
(25, NULL, '', 'PENJELASAN BID PROFTEK = 2 JP', '', '', '2018-03-29', '09:45:00', '11:15:00', '1', '2018-03-27 02:00:19', '2018-03-29 02:58:31'),
(26, NULL, '', 'PENJELASAN BID MANAJEMEN  = 2 JP', '', '', '2018-03-29', '11:15:00', '13:45:00', '1', '2018-03-27 02:00:39', '2018-03-29 03:00:18'),
(28, NULL, '', 'PENJELASAN BID PENGSOS = 2 JP', '', '', '2018-03-29', '14:30:00', '15:45:00', '1', '2018-03-27 02:01:19', '2018-03-29 03:00:48'),
(29, NULL, '', 'PENJELASAN BID STRATEGI = 2 JP', '', '', '2018-03-29', '15:45:00', '17:00:00', '1', '2018-03-27 02:01:36', '2018-03-29 03:01:12'),
(31, NULL, '', 'PEMILIHAN SENAT (KA KORSIS)', '', '', '2018-03-31', '00:00:00', '00:00:00', '1', '2018-03-27 02:02:10', '2018-03-27 14:04:52'),
(32, NULL, '', 'pembekalan kasespimpolri= 5 jp', '', 'KELAS BESAR SESPIMMEN', '2018-03-28', '08:00:00', '12:00:00', '1', '2018-03-28 01:59:10', '2018-03-28 01:59:10'),
(33, NULL, '', 'PEMBEKALAN KASESPIMMEN = 5 JP', 'PENJELASAN TENTANG PROGRAM PENDIDIKAN SESPIMMEN POLRI DIKREG 58', 'KELAS BESAR SESPIMMEN', '2018-03-28', '13:00:00', '17:00:00', '1', '2018-03-28 02:25:26', '2018-03-28 02:25:26'),
(34, NULL, '', 'Pelantikan senat', 'kakorsis\r\n', 'Gedung Utaryo', '2018-04-02', '08:00:00', '08:45:00', '1', '2018-03-31 12:41:02', '2018-03-31 12:47:04'),
(35, NULL, '', 'Penjelasan opsnaljarlat dan tatib', 'Kabag Jarlat dan Kakorsis', 'Kelas Besar', '2018-04-02', '08:45:00', '13:45:00', '1', '2018-03-31 12:42:16', '2018-03-31 12:46:18'),
(36, NULL, '', 'Pre test', 'Kabag Bindik', 'Kelas Besar', '2018-04-02', '13:45:00', '15:15:00', '1', '2018-03-31 12:44:28', '2018-03-31 12:45:56'),
(37, NULL, '', 'Survey Awal', 'kabag jianbang', 'Kelas Besar', '2018-04-02', '15:30:00', '17:00:00', '1', '2018-03-31 12:45:19', '2018-03-31 12:45:38'),
(38, NULL, '', 'Evaluasi dan Kendali Strategi', '', 'Kelas Besar', '2018-04-09', '08:00:00', '12:00:00', '1', '2018-04-09 12:50:58', '2018-04-09 12:50:58'),
(39, NULL, '', 'Futurologi', '', 'Kelas Besar', '2018-04-09', '13:00:00', '17:00:00', '1', '2018-04-09 12:51:51', '2018-04-10 07:52:54'),
(40, NULL, '', 'Senam Pagi', '', 'lapangan jayusman', '2018-04-10', '05:00:00', '06:00:00', '1', '2018-04-09 12:54:39', '2018-04-10 07:52:47'),
(41, NULL, '', 'pengasuhan', '', 'kelas sindikat', '2018-04-10', '07:15:00', '08:00:00', '1', '2018-04-09 01:04:03', '2018-04-09 01:04:03'),
(42, NULL, '', 'Public Speking', 'Dosen: DR.Dadang Rahmat, Ssos, SH, M.SI.\r\nDosen 2: Kombes Pol. Drs.  M. Akmil.', 'Kelas Besar', '2018-04-10', '08:00:00', '17:00:00', '1', '2018-04-09 01:08:16', '2018-04-09 01:08:16'),
(43, NULL, '', 'Olahraga Pagi', 'pembina olah raga pagi', 'lapangan jayusman', '2018-04-11', '05:00:00', '06:00:00', '1', '2018-04-09 01:17:55', '2018-04-10 07:52:35'),
(44, NULL, '', 'Public Speking', 'Dosen: DR.Dadang Rahmat, Ssos, SH, M.SI.\r\nDosen 2: Kombes Pol. Drs.  M. Akmil.', 'Kelas Besar', '2018-04-11', '08:00:00', '17:00:00', '1', '2018-04-09 01:18:48', '2018-04-09 01:18:48'),
(45, NULL, '', 'Pengasuhan', '', 'Kelas Sindikat', '2018-04-12', '07:15:00', '08:00:00', '1', '2018-04-09 01:19:36', '2018-04-10 07:52:27'),
(46, NULL, '', 'Analisa SWOT', 'Dosen : DR. Setyo Riyanto, SE, MM.\r\nDosen 2: Kombes POl. M. Syripudin.', 'Kelas Besar', '2018-04-12', '08:00:00', '17:00:00', '1', '2018-04-09 01:28:40', '2018-04-09 01:28:40'),
(47, NULL, '', 'Olahraga Pagi', '', 'lapangan jayusman', '2018-04-13', '05:00:00', '06:00:00', '1', '2018-04-09 01:29:14', '2018-04-10 07:52:14'),
(48, NULL, '', 'Analisa SWOT', 'Dosen : DR. Setyo Riyanto, SE, MM.\r\nDosen 2: Kombes POl. M. Syripudin.', 'Kelas Besar', '2018-04-13', '08:00:00', '17:00:00', '1', '2018-04-09 01:29:52', '2018-04-09 01:29:52'),
(70, NULL, '', 'manajemen perubahan', 'Dosen: Prof. DR. Sucherly. SE, MS\r\nDosen 2 : KBP. Drs. M. Akmil', 'Kelas Besar', '2018-04-16', '08:00:00', '12:00:00', '1', '2018-04-18 12:31:16', '2018-04-18 12:31:16'),
(71, NULL, '', 'Analitical Hierarchy Proses', 'Dosen : Kbp. M Syripudin\r\nDosen 2: Kbp Drs. Dedi Permadi', 'Kelas Besar', '2018-04-16', '13:00:00', '17:00:00', '1', '2018-04-18 12:33:23', '2018-04-18 12:33:23'),
(72, NULL, '', 'olah raga pagi', '', 'lapangan jayusman', '2018-04-17', '05:00:00', '06:00:00', '1', '2018-04-18 12:34:43', '2018-04-18 12:34:43'),
(73, NULL, '', 'pengasuhan', 'Para Paping Pokjar\r\n', 'kelas sindikat', '2018-04-17', '07:15:00', '08:00:00', '1', '2018-04-18 12:36:35', '2018-04-18 12:36:35'),
(74, NULL, '', 'Manajemen Strategik', 'Dosen : Kbp Drs. Giri Purwanto\r\nDosen 2: Kbp. M. Syaripudin', 'Kelas Besar', '2018-04-17', '08:00:00', '17:00:00', '1', '2018-04-18 12:39:05', '2018-04-18 12:39:05'),
(75, NULL, '', 'Manajemen Strategik', 'Dosen : Kbp Drs. Giri Purwanto\r\nDosen 2: Kbp. M. Syaripudin', 'Kelas Besar', '2018-04-17', '08:00:00', '17:00:00', '1', '2018-04-18 12:39:08', '2018-04-18 12:39:08'),
(76, NULL, '', 'MANAJEMEN COURSE (MC) III', 'Dosen: WIDYA ISWARA SESPIMMEN\r\nDosen 2 : KABAG JARLAT', 'kelas sindikat', '2018-04-18', '08:00:00', '17:00:00', '1', '2018-04-18 12:41:17', '2018-04-18 01:58:37'),
(77, NULL, '', 'olah raga pagi', '', 'lapangan jayusman', '2018-04-18', '05:00:00', '06:00:00', '1', '2018-04-18 12:41:57', '2018-04-18 12:41:57'),
(78, NULL, '', 'pengasuhan', 'PARA PAPING POKJAR', 'kelas sindikat', '2018-04-19', '07:15:00', '08:00:00', '1', '2018-04-18 12:42:48', '2018-04-18 12:42:48'),
(79, NULL, '', 'MANAJEMEN COURSE (MC) III', 'Dosen: WIDYA ISWARA SESPIMMEN\r\nDosen 2 : KABAG JARLAT', 'kelas sindikat', '2018-04-19', '08:00:00', '17:00:00', '1', '2018-04-18 12:43:29', '2018-04-18 02:10:32'),
(80, NULL, '', 'olah raga pagi', '', 'lapangan jayusman', '2018-04-20', '05:00:00', '06:00:00', '1', '2018-04-18 02:09:42', '2018-04-18 02:09:42'),
(81, NULL, '', 'MANAJEMEN COURSE (MC) III', 'Dosen: WIDYA ISWARA SESPIMMEN\r\nDosen 2 : KABAG JARLAT', 'kelas sindikat', '2018-04-20', '08:00:00', '17:00:00', '1', '2018-04-18 02:11:11', '2018-04-18 02:11:11'),
(82, NULL, '', 'MANAJEMEN COURSE (MC) III (PERSIAPAN PENELITIAN KE POLRES)', 'Dosen: WIDYA ISWARA SESPIMMEN\r\nDosen 2 : KABAG JARLAT', 'kelas sindikat / POKJAR', '2018-04-23', '08:00:00', '17:00:00', '1', '2018-04-20 07:34:00', '2018-04-20 07:34:20'),
(83, NULL, '', 'MANAJEMEN COURSE (MC) III', 'Dosen: WIDYA ISWARA SESPIMMEN\r\nDosen 2 : KABAG JARLAT', 'POLRES WILAYAH PENELITIAN', '2018-04-24', '08:00:00', '17:00:00', '1', '2018-04-20 07:35:11', '2018-04-20 07:35:11'),
(84, NULL, '', 'olah raga pagi', 'PEMBINA OLAHRAGA PAGI', 'lapangan jayusman', '2018-04-25', '05:00:00', '06:00:00', '1', '2018-04-20 07:36:24', '2018-04-20 07:36:24'),
(85, NULL, '', 'MANAJEMEN COURSE (MC) III', 'Dosen: WIDYA ISWARA SESPIMMEN\r\nDosen 2 : KABAG JARLAT', 'kelas sindikat / POKJAR', '2018-04-25', '08:00:00', '17:00:00', '1', '2018-04-20 07:37:01', '2018-04-20 07:37:01'),
(86, NULL, '', 'MANAJEMEN COURSE (MC) III', 'Dosen: WIDYA ISWARA SESPIMMEN\r\nDosen 2 : KABAG JARLAT', 'kelas sindikat / POKJAR', '2018-04-26', '08:00:00', '17:00:00', '1', '2018-04-25 12:40:22', '2018-04-25 12:40:22'),
(87, NULL, '', 'pengasuhan', '', 'kelas sindikat / POKJAR', '2018-04-26', '07:00:00', '08:00:00', '1', '2018-04-25 12:41:11', '2018-04-25 12:41:11'),
(88, NULL, '', 'olah raga pagi', 'pendamping olah raga pagi', 'lapangan jayusman', '2018-04-27', '05:00:00', '06:00:00', '1', '2018-04-25 12:42:36', '2018-04-25 12:42:36'),
(89, NULL, '', 'MANAJEMEN COURSE (MC) III', 'Dosen: WIDYA ISWARA SESPIMMEN\r\nDosen 2 : KABAG JARLAT', 'kelas sindikat / POKJAR', '2018-04-27', '08:00:00', '17:00:00', '1', '2018-04-25 12:43:17', '2018-04-25 12:43:17'),
(90, 'http://45.76.184.245/assets/images/events/1524718944BERPIKIR.jpg', '1524718944BERPIKIR.jpg', 'Berpikir Sistem', 'Dosen: Ir. Nursyirwan Zen\r\nDosen 2: KBP Drs. Suharjimantoro, S.I.K., M.H.', 'Kelas Besar', '2018-04-30', '08:00:00', '17:00:00', '1', '2018-04-25 12:45:42', '2018-04-26 05:02:24'),
(91, 'http://45.76.184.245/assets/images/events/1524718215hari buruh.jpg', '1524718215hari buruh.jpg', 'hari buruh', 'Libur', '', '2018-05-01', '00:00:00', '00:00:00', '1', '2018-04-26 04:50:15', '2018-04-26 04:50:15'),
(92, 'http://45.76.184.245/assets/images/events/1524718779OLAH RAGA PAGI.jpg', '1524718779OLAH RAGA PAGI.jpg', 'olah raga pagi', 'PEMBINA OLAH RAGA PAGI', 'lapangan jayusman', '2018-05-02', '05:00:00', '06:00:00', '1', '2018-04-26 04:59:39', '2018-04-26 04:59:39'),
(93, 'http://45.76.184.245/assets/images/events/1524718883SMART.png', '1524718883SMART.png', 'BRAIN SMART MAPPING', 'DOSEN    ; GANIS FITRIA, Ph,D\r\nDOSEN 2 :  KBP. M. SYARIPUDIN', 'Kelas Besar', '2018-05-02', '08:00:00', '17:00:00', '1', '2018-04-26 05:01:23', '2018-04-26 05:01:23'),
(94, 'http://45.76.184.245/assets/images/events/1524719220TUTOR.png', '1524719220TUTOR.png', 'PENGASUHAN', 'PARA PAPING POKJAR', 'kelas sindikat / POKJAR', '2018-05-03', '06:45:00', '07:45:00', '1', '2018-04-26 05:07:00', '2018-04-26 05:07:00'),
(95, 'http://45.76.184.245/assets/images/events/1524720263SOSIOMETRI PDF.png', '1524720263SOSIOMETRI PDF.png', 'SOSIOMETRI TAHAP I', 'KABAG JIANBANG', 'Kelas Besar', '2018-05-03', '08:00:00', '12:00:00', '1', '2018-04-26 05:21:27', '2018-04-26 05:24:23'),
(96, 'http://45.76.184.245/assets/images/events/1524720827PPKTI.png', '1524720827PPKTI.png', 'PENJELASAN PPKTI DAN PENILAIAN', 'KABAG BINDIK', 'Kelas Besar', '2018-05-03', '13:00:00', '17:00:00', '1', '2018-04-26 05:33:47', '2018-04-26 05:33:47'),
(97, 'http://45.76.184.245/assets/images/events/1524721084OLAH RAGA PAGI.jpg', '1524721084OLAH RAGA PAGI.jpg', 'olah raga pagi', 'PEMBINA OLAHRAG PAGI', 'lapangan jayusman', '2018-05-04', '05:00:00', '06:00:00', '1', '2018-04-26 05:38:04', '2018-04-26 05:38:04'),
(98, 'http://45.76.184.245/assets/images/events/1524721486TEKNIK.png', '1524721486TEKNIK.png', 'TEKNIK PENULISAN KARYA ILMIAH', 'DOSEN ; DR. YETI MULYATI, P.Pd\r\nDOSEN2: KBP Drs. ABDUL HAKIM MUNSYARIF', 'Kelas Besar', '2018-05-04', '08:00:00', '17:00:00', '1', '2018-04-26 05:44:46', '2018-04-26 05:44:46'),
(99, 'http://45.76.184.245/assets/images/events/1525048873KOMJEN UNGGUNG.jpg', '1525048873KOMJEN UNGGUNG.jpg', 'MP. Pendidikan Karakter Berkeunggulan', 'Dosen utama: Komjen Pol. Drs. Unggung Cahyono\r\nDosen 2: Kbp. Drs M. Akmil', 'Kelas Besar', '2018-05-07', '08:00:00', '12:00:00', '1', '2018-04-30 12:41:13', '2018-04-30 12:41:13'),
(100, 'http://45.76.184.245/assets/images/events/1525049367KOMISIONER KPK.jpg', '1525049367KOMISIONER KPK.jpg', 'MP. Membangun Budaya Anti Korupsi', 'Dosen Utama: Komisioner KPK\r\nDosen 2: Kbp. Suharjimantoro,  S.I.K, M.H.', 'Kelas Besar', '2018-05-07', '13:00:00', '17:00:00', '1', '2018-04-30 12:49:27', '2018-04-30 12:49:27'),
(101, 'http://45.76.184.245/assets/images/events/1525052148senam pagi.jpg', '1525052148senam pagi.jpg', 'Senam Pagi', 'Pembina Olah Raga Pagi', 'lapangan jayusman', '2018-05-08', '05:00:00', '06:00:00', '1', '2018-04-30 01:35:48', '2018-04-30 01:35:48'),
(102, 'http://45.76.184.245/assets/images/events/1525066473revolusi.jpg', '1525066473revolusi.jpg', 'MP. Revolusi Mental Kepemimpinan Polri', 'Dosen Utama: Irjen Pol Drs. Ghufron, MM, M.Si\r\nDosen 2: KBP. Drs. M. Akmil', 'Kelas Besar', '2018-05-08', '08:00:00', '17:00:00', '1', '2018-04-30 05:34:33', '2018-04-30 05:34:33'),
(103, 'http://45.76.184.245/assets/images/events/1525066563OLAH RAGA PAGI.jpg', '1525066563OLAH RAGA PAGI.jpg', 'olah raga pagi', 'Pembina Olah Raga Pagi', 'lapangan jayusman', '2018-05-09', '05:00:00', '06:00:00', '1', '2018-04-30 05:36:03', '2018-04-30 05:36:03'),
(104, 'http://45.76.184.245/assets/images/events/1525071840motivasi.jpg', '1525071840motivasi.jpg', 'MP. Motivasi Dalam kepemimpinan', 'Dosen Utama: Jend (P) Agum Gumelar\r\nDosen 2: Kbp Drs. Herman Agus P', 'Kelas Besar', '2018-05-09', '08:00:00', '12:00:00', '1', '2018-04-30 07:04:00', '2018-04-30 07:04:00'),
(105, 'http://45.76.184.245/assets/images/events/1525072316TUTOR.png', '1525072316TUTOR.png', 'pengasuhan', 'para pendamping pokjar', 'kelas sindikat', '2018-05-09', '07:00:00', '08:00:00', '1', '2018-04-30 07:11:56', '2018-04-30 07:11:56'),
(106, 'http://45.76.184.245/assets/images/events/1525073145dai.jpg', '1525073145dai.jpg', 'MP. Kepemimpinan Tribrata Yang Visioner&Beretika', 'Dosen Utama: Jend Pol (P) Da\"i Bachtiar\r\nDosen 2: Kbp Drs. Syahar Diantono, M.Si', 'Kelas Besar', '2018-05-09', '13:00:00', '17:00:00', '1', '2018-04-30 07:25:45', '2018-04-30 07:25:45'),
(107, 'http://45.76.184.245/assets/images/events/1525073367kenaikan.jpg', '1525073367kenaikan.jpg', 'Kenaikan Isa Almasih', '', '', '2018-05-10', '00:00:00', '00:00:00', '1', '2018-04-30 07:29:27', '2018-04-30 07:29:27'),
(108, 'http://45.76.184.245/assets/images/events/1525073784OLAH RAGA PAGI.jpg', '1525073784OLAH RAGA PAGI.jpg', 'Test Kesamaptaan Jasmani', '', 'lapangan olahraga', '2018-05-11', '06:00:00', '17:00:00', '1', '2018-04-30 07:36:24', '2018-04-30 07:36:24'),
(110, 'http://45.76.184.245/assets/images/events/1525756289pancasila.jpg', '1525756289pancasila.jpg', 'Implentasi Nilai Pancasila dan UUD45 dalam Bentuk Karakter Bangsa', 'Dosen Utama: Prof .Dr. H. Suwarna Al Muchtar, SH, MPd.\r\nDosen 2: Kbp Drs, Rahadi Mulyanto', 'Kelas Besar', '2018-05-14', '08:00:00', '12:00:00', '8', '2018-05-08 05:11:29', '2018-05-08 07:18:23'),
(111, 'http://45.76.184.245/assets/images/events/1525764120pak kabag.jpg', '1525764120pak kabag.jpg', 'Bimbingan Naskap', 'Kabag Bindik Sepimmen', 'Kelas Besar', '2018-05-14', '13:00:00', '17:00:00', '8', '2018-05-08 07:22:00', '2018-05-08 07:22:00'),
(112, 'http://45.76.184.245/assets/images/events/1525765180democratic.jpg', '1525765180democratic.jpg', 'Democratic Policing', 'Dosen Utama: Prof. DrHermawan Sulistyo\r\nDosen 2: Kbp. R. Wawan Wirawan.', 'Kelas Besar', '2018-05-15', '08:00:00', '17:00:00', '8', '2018-05-08 07:39:40', '2018-05-08 07:46:00'),
(113, 'http://45.76.184.245/assets/images/events/1525765327senam.png', '1525765327senam.png', 'senam pagi', 'Pembina Olah Raga', 'Lapangan Jayusman', '2018-05-15', '05:00:00', '06:00:00', '8', '2018-05-08 07:42:07', '2018-05-08 07:42:07'),
(114, 'http://45.76.184.245/assets/images/events/1525765468mentor.jpg', '1525765468mentor.jpg', 'mentorship', 'Para Paping Pokjar', 'Kelas Sindikat', '2018-05-15', '07:00:00', '08:00:00', '8', '2018-05-08 07:44:28', '2018-05-08 07:45:20'),
(115, 'http://45.76.184.245/assets/images/events/1525830319lari pagi.jpg', '1525830319lari pagi.jpg', 'Lari Pagi', 'Patun Olah Raga Pagi', 'Lapangan Jayusman', '2018-05-16', '05:00:00', '06:00:00', '8', '2018-05-09 01:41:06', '2018-05-09 01:45:19'),
(116, 'http://45.76.184.245/assets/images/events/1525830647democratic.png', '1525830647democratic.png', 'Implementasi Democratic Policing Dalam Tindakan Kepolisian', 'Dosen Utama:  Prof Dr. Hermawan Sulistyo\r\nDosen 2: Kbp Drs. Wawan Wirawan, SH', 'Kelas Besar', '2018-05-16', '08:00:00', '17:00:00', '8', '2018-05-09 01:50:47', '2018-05-09 01:50:47'),
(117, 'http://45.76.184.245/assets/images/events/1526020563mentor.jpg', '1526020563mentor.jpg', 'Pengasuhan', 'Paping Pokjar', 'Kelas Sindikat', '2018-05-17', '07:00:00', '08:00:00', '8', '2018-05-11 06:36:03', '2018-05-11 06:36:21'),
(118, 'http://45.76.184.245/assets/images/events/1526020836anggaran.jpg', '1526020836anggaran.jpg', 'Manajemen Perencanaan dan Anggaran POLRI', 'Dosen Utama: ASRENA KAPOLRI\r\nDosen 2: KBP Drs. RIO PERMANA S', 'Kelas Besar', '2018-05-17', '08:00:00', '12:00:00', '8', '2018-05-11 06:40:36', '2018-05-11 07:02:08'),
(119, 'http://45.76.184.245/assets/images/events/1526021066BAPPENAS.png', '1526021066BAPPENAS.png', 'Manajemen Perencanaan dan Anggaran', 'Dosen Utama: BAPPENAS\r\nDosen 2: KBP Drs. RIO P SOERATNO', 'Kelas Besar', '2018-05-17', '13:00:00', '17:00:00', '8', '2018-05-11 06:42:41', '2018-05-11 06:44:26'),
(121, 'http://45.76.184.245/assets/images/events/1526021852SISRENSTRA.png', '1526021852SISRENSTRA.png', 'SISRENSTRA, RENSTRA, RENJA, LAKIP', 'DOSEN UTAMA: KARO JAKSTRA SRENA POLRI\r\nDOSEN 2: KBP. ADHITYA WIRATAMA, SH', 'Kelas Besar', '2018-05-18', '08:00:00', '12:00:00', '8', '2018-05-11 06:57:32', '2018-05-11 06:57:49'),
(122, 'http://45.76.184.245/assets/images/events/1526022028DIPA.jpg', '1526022028DIPA.jpg', 'SUN DIPA RKA KL', 'DOSEN UTAMA: KARO JEMENGAR SRENA POLRI\r\nDOSEN 2: kBP. ADHITYA WIRATAMA, SH', 'Kelas Besar', '2018-05-18', '13:00:00', '17:00:00', '8', '2018-05-11 07:00:28', '2018-05-11 07:00:28'),
(123, NULL, '', 'PERKEMBANGAN POLITIK&DEMOKRASI DI INDONESIA, REGIONAL DAN GLOBAL ', 'DOSEN UTAMA: PROF DR. KACUNG MARIJAN\r\nDOSEN 2: KBP. DWI SULISTIONO ', 'Kelas Besar', '2018-05-21', '08:00:00', '12:00:00', '8', '2018-05-21 04:14:17', '2018-05-21 04:14:33'),
(124, 'http://45.76.184.245/assets/images/events/1526877869RBP.jpg', '1526877869RBP.jpg', 'REFORMASI BIROKRASI POLRI', 'DOSEN UTAMA: KARO RBP SSRENA POLRI\r\nDOSEN 2: KBP TAUFIK RH', 'Kelas Besar', '2018-05-21', '13:00:00', '17:00:00', '8', '2018-05-21 04:16:21', '2018-05-21 04:44:29'),
(125, 'http://45.76.184.245/assets/images/events/1526876258mentor.jpg', '1526876258mentor.jpg', 'Pengasuhan', 'PAPING POKJAR', 'Kelas Sindikat', '2018-05-22', '07:00:00', '08:00:00', '8', '2018-05-21 04:17:38', '2018-05-21 04:17:38'),
(126, 'http://45.76.184.245/assets/images/events/1526876791images.jpg', '1526876791images.jpg', 'UJIAN NKP 1', 'PARA PENGUJI', 'Kelas Sindikat', '2018-05-22', '08:00:00', '17:00:00', '8', '2018-05-21 04:19:13', '2018-05-21 04:26:31'),
(127, 'http://45.76.184.245/assets/images/events/1526877180SDM.jpg', '1526877180SDM.jpg', 'implementasi sdm polri', 'DOSEN UTAMA: KARO JIANSTRA SSDM POLRI\r\nDOSEN 2: KBP Drs. PUDJI PRASETIJANTO HADI', 'Kelas Besar', '2018-05-23', '08:00:00', '12:00:00', '8', '2018-05-21 04:33:00', '2018-05-21 04:33:00'),
(128, 'http://45.76.184.245/assets/images/events/1526877287SDM.jpg', '1526877287SDM.jpg', 'MANAJEMEN SDM POLRI', 'DOSEN UTAMA: AS SDM KAPOLRI\r\nDOSEN 2: KBP Drs. PUDJI PRASETIJANTO HADI', 'Kelas Besar', '2018-05-23', '13:00:00', '17:00:00', '8', '2018-05-21 04:34:47', '2018-05-21 04:34:47'),
(129, 'http://45.76.184.245/assets/images/events/1526877347mentor.jpg', '1526877347mentor.jpg', 'Pengasuhan', 'PARA PAPING POKJAR', 'Kelas Sindikat', '2018-05-24', '07:00:00', '08:00:00', '8', '2018-05-21 04:35:47', '2018-05-21 04:35:47'),
(130, 'http://45.76.184.245/assets/images/events/1526877419images.jpg', '1526877419images.jpg', 'UJIAN NKP 2', 'PARA PENGUJI', 'Kelas Sindikat', '2018-05-24', '08:00:00', '17:00:00', '8', '2018-05-21 04:36:59', '2018-05-21 04:36:59'),
(131, 'http://45.76.184.245/assets/images/events/1526877617logistik polri.png', '1526877617logistik polri.png', 'MANAJEMEN LOGISTIK POLRI', 'DOSEN UTAMA; AS LOG KAPOLRI\r\nDOSEN 2: KBP Drs. HERMAN AGUS PURNOMO', 'Kelas Besar', '2018-05-25', '08:00:00', '00:00:00', '8', '2018-05-21 04:40:17', '2018-05-21 04:40:17'),
(132, 'http://45.76.184.245/assets/images/events/1526877772SIMAK.jpg', '1526877772SIMAK.jpg', 'SIMAK BMN', 'DOSEN UTAMA; KARO JIANSTRA SLOG POLRI\r\nDOSEN 2: KBP Drs. ABDUL HAKIM MUNSYARIF', 'Kelas Besar', '2018-05-25', '13:00:00', '17:00:00', '8', '2018-05-21 04:42:52', '2018-05-21 04:42:52'),
(133, 'http://45.76.184.245/assets/images/events/1527059362LPSE.png', '1527059362LPSE.png', 'LPSE', 'DOSEN UTAMA: KARO JIANSTRA SLOG POLRI\r\nDOSEN 2: KBP Drs. ABDUL HAKIM MUNSYARIF', 'Kelas Besar', '2018-05-28', '08:00:00', '12:00:00', '8', '2018-05-23 07:09:22', '2018-05-23 07:09:22'),
(134, 'http://45.76.184.245/assets/images/events/1527059463PENGADAAN.jpg', '1527059463PENGADAAN.jpg', 'PENGADAAN BARANG DAN JASA PEMERINTAH', 'DOSEN UTAMA: AKBP. I WAYAN KRESNA\r\nDOSEN 2: AKBP. EKA DJUNAEDI,S.Sos, SIK', 'Kelas Besar', '2018-05-28', '13:00:00', '17:00:00', '8', '2018-05-23 07:11:03', '2018-05-23 07:11:03'),
(135, 'http://45.76.184.245/assets/images/events/1527059515WAISAK.jpg', '1527059515WAISAK.jpg', 'HARI RAYA WAISAK', '', '', '2018-05-29', '00:00:00', '00:00:00', '8', '2018-05-23 07:11:55', '2018-05-23 07:11:55'),
(136, 'http://45.76.184.245/assets/images/events/1527059680download.jpg', '1527059680download.jpg', 'MANAJEMEN PENGAWASAN POLRI', 'DOSEN UTAMA: IRWASUM POLRI\r\nDOSEN 2: KBP. FERI HANDOKO SOEMARSO, SH, SIK.', 'Kelas Besar', '2018-05-30', '07:00:00', '12:00:00', '8', '2018-05-23 07:14:40', '2018-05-23 07:14:40'),
(137, 'http://45.76.184.245/assets/images/events/1527059780PENGAWASAN.jpg', '1527059780PENGAWASAN.jpg', 'IMPLEMENTASI PENGAWASAN INTERNAL POLRI', 'DOSEN UTAMA: ITWIL V ITWASUM POLRI\r\nDOSEN 2: KBP. FERI HANDOKO SOEMARSO, SH, SIK.', 'Kelas Besar', '2018-05-30', '13:00:00', '17:00:00', '8', '2018-05-23 07:16:20', '2018-05-23 07:16:20'),
(138, 'http://45.76.184.245/assets/images/events/1527060049images.jpg', '1527060049images.jpg', 'UJIAN NKP 3', 'PARA PENGUJI', 'Kelas Sindikat', '2018-05-31', '08:00:00', '17:00:00', '8', '2018-05-23 07:20:49', '2018-05-23 07:22:12'),
(139, 'http://45.76.184.245/assets/images/events/1528207753PROPAM.jpg', '1528207753PROPAM.jpg', 'PENEGAKAN ETIKA PROFESI POLRI', 'DOSEN UTAMA: KADIV PROPAM POLRI\r\nDOSEN 2: KBP Drs. DEDI PERMADI', 'Kelas Besar', '2018-06-06', '08:00:00', '12:00:00', '1', '2018-06-05 02:09:13', '2018-06-05 02:09:13'),
(140, 'http://45.76.184.245/assets/images/events/1528208063PEMILU.jpg', '1528208063PEMILU.jpg', 'PENYELENGGARAAN PEMILU & STRATEGI PENINGKATAN PARTISIPASI MASYARAKAT', 'DOSEN UTAMA: DR. CAROLINE PASKARINA, SIP, MSi\r\nDOSEN 2: KBP Drs. NURULLAH, SH', 'Kelas Besar', '2018-06-06', '13:00:00', '17:00:00', '1', '2018-06-05 02:14:23', '2018-06-05 02:14:23'),
(141, 'http://45.76.184.245/assets/images/events/1528208197MENTOR.jpg', '1528208197MENTOR.jpg', 'MENTORSIP', 'PARA PAPING POKJAR', 'Kelas Sindikat', '2018-06-07', '07:00:00', '08:00:00', '1', '2018-06-05 02:16:37', '2018-06-05 02:16:37'),
(142, 'http://45.76.184.245/assets/images/events/1528208272images.jpg', '1528208272images.jpg', 'UJIAN NKP 5', 'PARA PENGUJI', 'Kelas Sindikat', '2018-06-07', '08:00:00', '12:00:00', '1', '2018-06-05 02:17:52', '2018-06-05 02:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `gabungan_scores`
--

CREATE TABLE `gabungan_scores` (
  `gabungan_id` int(11) NOT NULL,
  `tipe` varchar(250) NOT NULL,
  `file_url` text NOT NULL,
  `file_loc` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `health_scores`
--

CREATE TABLE `health_scores` (
  `health_id` int(11) NOT NULL,
  `tipe` varchar(250) NOT NULL,
  `file_url` text NOT NULL,
  `file_loc` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_scores`
--

INSERT INTO `health_scores` (`health_id`, `tipe`, `file_url`, `file_loc`, `status`, `updatedAt`, `createdAt`) VALUES
(2, 'TAHAP 1', 'http://45.76.184.245/assets/images/kesehatan/1526614897nilai samapta tahap 1.pdf', '1526614897nilai samapta tahap 1.pdf', 1, '2018-05-21 04:07:57', '2018-05-18 03:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `interviewees`
--

CREATE TABLE `interviewees` (
  `interviewee_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kodenaskah`
--

CREATE TABLE `kodenaskah` (
  `kode_naskah_id` int(11) NOT NULL,
  `kode_naskah` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kodenaskah`
--

INSERT INTO `kodenaskah` (`kode_naskah_id`, `kode_naskah`, `id`) VALUES
(250, 141, 13),
(251, 120, 14),
(252, 70, 16),
(253, 13, 17),
(254, 28, 18),
(255, 30, 19),
(256, 7, 20),
(257, 60, 21),
(258, 144, 23),
(259, 82, 25),
(260, 59, 26),
(261, 80, 27),
(262, 86, 30),
(263, 148, 31),
(264, 65, 32),
(265, 76, 33),
(266, 16, 36),
(267, 74, 37),
(268, 21, 38),
(269, 121, 39),
(270, 122, 40),
(271, 33, 41),
(272, 36, 42),
(273, 79, 43),
(274, 57, 44),
(275, 116, 45),
(276, 4, 47),
(277, 100, 59);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `type` enum('comment','event','announcement') NOT NULL,
  `content` text,
  `myid` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `announcement_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `type`, `content`, `myid`, `post_id`, `event_id`, `announcement_id`, `id`, `createdAt`, `updatedAt`) VALUES
(20, 'announcement', NULL, NULL, NULL, NULL, 21, NULL, '2018-05-25 01:36:01', '2018-05-25 01:36:01'),
(21, 'announcement', NULL, NULL, NULL, NULL, 22, NULL, '2018-05-28 05:27:10', '2018-05-28 05:27:10'),
(22, 'announcement', NULL, NULL, NULL, NULL, 23, NULL, '2018-05-30 10:59:32', '2018-05-30 10:59:32'),
(23, 'announcement', NULL, NULL, NULL, NULL, 24, NULL, '2018-06-04 10:53:24', '2018-06-04 10:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `onesignal`
--

CREATE TABLE `onesignal` (
  `onesignal_id` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `onesignal`
--

INSERT INTO `onesignal` (`onesignal_id`, `id`, `createdAt`, `updatedAt`) VALUES
('', 29, '2018-04-18 02:16:42', '2018-04-18 02:16:42'),
('0201c5e1-524e-4572-ba21-beec926364c8', 66, '2018-05-11 07:13:44', '2018-05-11 07:13:44'),
('02ecf78d-05a5-46d9-ad84-4b7f70757810', 56, '2018-04-05 09:34:53', '2018-04-05 09:34:53'),
('034a6184-ac03-4c19-a2c8-92fa2305c7b5', 116, '2018-05-31 04:00:07', '2018-05-31 04:00:07'),
('03bcd750-1de0-4dd9-ad4b-f945f200f76a', 133, '2018-05-08 05:25:53', '2018-05-08 05:25:53'),
('03e7e44c-7f09-4b34-ba14-cf76f7aeec6f', 169, '2018-05-14 03:37:56', '2018-05-14 03:37:56'),
('060f79d1-f555-46e6-ae09-2ca70e8e73bb', 59, '2018-04-10 01:14:04', '2018-04-10 01:14:04'),
('074769b8-5218-4b23-97f1-997fc9cc633a', 207, '2018-05-08 13:20:17', '2018-05-08 13:20:17'),
('074fda14-dfb4-49b7-a04c-e7d9367b3118', 155, '2018-05-03 05:38:36', '2018-05-03 05:38:36'),
('0a497b8f-73be-4dab-b9fc-205b9a50f2c0', 109, '2018-05-04 04:05:18', '2018-05-04 04:05:18'),
('0e60895d-0bab-40ae-9ee5-1896e8da041f', 39, '2018-04-02 05:58:18', '2018-04-02 05:58:18'),
('0f17145a-c9e1-49f5-a0ec-6f4bf277b14b', 100, '2018-05-03 06:16:06', '2018-05-03 06:16:06'),
('0f20bf76-f3c8-4faa-a224-53c11d9c199f', 125, '2018-05-08 06:16:41', '2018-05-08 06:16:41'),
('0fe73045-eeed-4828-a9e0-c534f3aaaf85', 76, '2018-05-02 02:59:38', '2018-05-02 02:59:38'),
('14c66aec-1c9c-4205-8827-73bd2f2b5de1', 164, '2018-05-03 06:40:43', '2018-05-03 06:40:43'),
('160c1a2e-5d6a-4cac-9563-628601841215', 29, '2018-04-10 03:10:46', '2018-04-10 03:10:46'),
('1704b9fc-878d-432b-a4cb-9482dc6e7594', 66, '2018-05-15 12:16:48', '2018-05-15 12:16:48'),
('19249d64-f8e4-4001-8fb4-7415a4838430', 246, '2018-05-09 03:38:58', '2018-05-09 03:38:58'),
('19629708-32b8-4edf-89b8-1f3cb75398ee', 201, '2018-05-07 06:06:52', '2018-05-07 06:06:52'),
('1adef7c5-f048-4168-9c42-49ae3371200f', 91, '2018-05-02 04:11:35', '2018-05-02 04:11:35'),
('21c76ede-f203-4384-aa4c-52e3a8cb2946', 65, '2018-04-11 13:05:13', '2018-04-11 13:05:13'),
('27e0ede6-2794-4205-9972-6c21b69fc4a7', 144, '2018-05-03 05:57:18', '2018-05-03 05:57:18'),
('28c6367f-af3a-4654-8b79-9c05f7dc6f8d', 62, '2018-04-11 04:18:46', '2018-04-11 04:18:46'),
('2acaf532-29eb-47bf-855e-7ac8ab2840a1', 105, '2018-05-02 07:55:40', '2018-05-02 07:55:40'),
('2cf8d82e-8b83-40ca-a78e-6f2ae0670843', 186, '2018-05-16 10:37:27', '2018-05-16 10:37:27'),
('2dab304c-bc7a-4889-8bac-401700be4575', 75, '2018-05-02 02:24:32', '2018-05-02 02:24:32'),
('2ea172c3-bec8-4fe2-90a5-d4103a30b7ca', 66, '2018-04-17 07:43:20', '2018-04-17 07:43:20'),
('2f9291c4-9a4b-4a60-94ad-48489ee4fcc3', 138, '2018-05-03 10:47:49', '2018-05-03 10:47:49'),
('30aa4754-42e9-426a-a4a2-a74c84e58bc4', 200, '2018-05-04 08:54:35', '2018-05-04 08:54:35'),
('32753759-3df3-45f4-a297-685308d96ce3', 157, '2018-05-03 06:08:36', '2018-05-03 06:08:36'),
('3425909f-78cb-456f-9014-9adf042dc66a', 207, '2018-05-04 08:44:59', '2018-05-04 08:44:59'),
('34277e5e-53bf-4b86-a72e-26ed6384d242', 41, '2018-04-03 04:37:20', '2018-04-03 04:37:20'),
('349987f6-b46b-4de0-a622-f609a374e1d1', 40, '2018-05-16 05:47:54', '2018-05-16 05:47:54'),
('34af26a0-b4a2-4321-83a7-cc3b9b4b3131', 97, '2018-05-04 09:28:07', '2018-05-04 09:28:07'),
('34e95e27-04c5-4a2d-adca-d023b19fe4f9', 93, '2018-05-09 04:54:53', '2018-05-09 04:54:53'),
('35175a73-8f4e-4cb0-b0d3-aa0b293f5b98', 202, '2018-05-09 11:34:08', '2018-05-09 11:34:08'),
('35e3ff90-fa37-4122-8bec-4fc983123ced', 159, '2018-05-16 10:45:42', '2018-05-16 10:45:42'),
('397b7cd4-d575-4b19-bed8-31dfee00051b', 22, '2018-03-31 14:13:51', '2018-03-31 14:13:51'),
('3afdc062-f73d-4efb-a399-c096031f383d', 13, '2018-04-04 08:32:13', '2018-04-04 08:32:13'),
('3c3ff70b-0be0-4502-a104-255587c22e5f', 198, '2018-05-04 05:37:43', '2018-05-04 05:37:43'),
('3cde4eb3-1089-4c03-b54a-aeac762fb2e1', 248, '2018-05-16 01:34:34', '2018-05-16 01:34:34'),
('3cf10952-afa4-46bc-ac44-dbb9f5b8cb50', 179, '2018-05-04 04:19:36', '2018-05-04 04:19:36'),
('3e442a4f-de38-4a10-947d-7f7becf6aa54', 154, '2018-05-04 21:41:21', '2018-05-04 21:41:21'),
('4157bf3f-3fd4-42f6-b166-0e0c7eacab2d', 89, '2018-05-02 04:40:04', '2018-05-02 04:40:04'),
('41e2e32c-9b89-4769-a981-ee066092809a', 169, '2018-05-21 06:50:12', '2018-05-21 06:50:12'),
('42fc2f54-639c-4565-91e2-d441ac4ee252', 146, '2018-05-03 05:56:32', '2018-05-03 05:56:32'),
('461ea8c2-4fcd-42a3-b75f-03218678de66', 153, '2018-05-03 06:41:10', '2018-05-03 06:41:10'),
('479398ac-09bc-43c2-af48-99379348f395', 205, '2018-05-04 04:31:24', '2018-05-04 04:31:24'),
('4873f50f-c7af-4f67-a1fc-43d58ebaa4db', 147, '2018-05-04 10:24:19', '2018-05-04 10:24:19'),
('4eb8ef09-6dab-4b8e-88a4-a4f18dd6f5b7', 163, '2018-05-08 04:03:19', '2018-05-08 04:03:19'),
('4f71e493-03e7-49be-ba5b-a31fa6012832', 230, '2018-05-23 16:19:00', '2018-05-23 16:19:00'),
('4fd25475-04c5-4b9c-96a1-b0ffa6e4e0af', 176, '2018-05-04 04:26:48', '2018-05-04 04:26:48'),
('51225ca2-a6cf-4a8f-b75b-cf4dd97e2cfc', 156, '2018-05-03 05:31:54', '2018-05-03 05:31:54'),
('546fab7b-2e28-4d8e-b6d0-65ae79b330b1', 39, '2018-05-04 04:25:22', '2018-05-04 04:25:22'),
('60367e95-5882-4f6d-86e5-c012402d2af2', 240, '2018-05-05 14:50:27', '2018-05-05 14:50:27'),
('621986bf-44c7-422b-bd44-116791249420', 66, '2018-05-23 13:41:15', '2018-05-23 13:41:15'),
('6299e997-bc96-43ba-ba84-0bc4ba21c7d6', 187, '2018-05-14 05:51:18', '2018-05-14 05:51:18'),
('62cc3b3f-7abc-4fcb-bd30-413f436d984f', 191, '2018-05-05 11:56:49', '2018-05-05 11:56:49'),
('62e8c43b-68e4-4258-b355-7a064b03f685', 230, '2018-05-04 14:56:54', '2018-05-04 14:56:54'),
('62f07bbd-0214-4929-8b44-6d92e0b962fd', 178, '2018-05-08 03:55:28', '2018-05-08 03:55:28'),
('672c7d01-840b-406f-8f0a-6d6b41f8f063', 46, '2018-04-02 00:58:01', '2018-04-02 00:58:01'),
('6735e253-2b5f-4690-8234-047c1beab15e', 222, '2018-05-04 14:49:27', '2018-05-04 14:49:27'),
('67c9a563-98e5-41c8-bba1-43f9b2dd5013', 58, '2018-05-03 14:48:18', '2018-05-03 14:48:18'),
('68f21bd1-01ab-449c-9f3b-be5403107ced', 47, '2018-04-18 01:58:09', '2018-04-18 01:58:09'),
('6b7e81a9-86e9-41ef-9c3f-f7ecd236034f', 47, '2018-04-29 03:08:24', '2018-04-29 03:08:24'),
('6b882423-9557-49df-87fc-470e5441da1c', 52, '2018-04-04 02:15:45', '2018-04-04 02:15:45'),
('6f291725-cc3b-476f-bfca-3d891974a51f', 217, '2018-05-23 05:17:37', '2018-05-23 05:17:37'),
('70128184-23bb-4578-a442-32635fefce6f', 130, '2018-05-03 01:46:22', '2018-05-03 01:46:22'),
('727b7e89-5eda-42e7-8dd9-d8a4a3348a86', 108, '2018-05-09 08:35:42', '2018-05-09 08:35:42'),
('73235cc2-bdfa-4971-86b9-ef4a9e9a4743', 216, '2018-05-12 03:17:25', '2018-05-12 03:17:25'),
('7332ee7b-f978-4aa5-b098-1973e5f8b4c4', 212, '2018-05-04 04:36:45', '2018-05-04 04:36:45'),
('737edec9-3143-49d3-bbbf-baea7d78ac67', 47, '2018-03-31 16:23:23', '2018-03-31 16:23:23'),
('74894098-bb29-40d2-a4ae-59a53392e9de', 73, '2018-04-30 06:16:28', '2018-04-30 06:16:28'),
('757f2c5c-cae3-4fcb-9b84-b336bac7d98c', 136, '2018-05-03 04:33:58', '2018-05-03 04:33:58'),
('769cad5e-6a79-4e7a-9f29-c0fc52610225', 21, '2018-03-30 14:22:12', '2018-03-30 14:22:12'),
('77843e69-4f18-40ee-89d9-448ad2b71471', 49, '2018-04-03 05:44:14', '2018-04-03 05:44:14'),
('7d3ad3a4-9481-4e70-93c4-7ad0070a898c', 224, '2018-05-08 12:00:20', '2018-05-08 12:00:20'),
('80f11ba7-507d-4301-a145-f70f3ef64227', 18, '2018-04-06 03:51:17', '2018-04-06 03:51:17'),
('831ca54a-0c19-432a-b56c-84128e4c469c', 127, '2018-05-14 00:28:19', '2018-05-14 00:28:19'),
('841efada-4a38-4fcd-bdbc-da304cba83b2', 94, '2018-05-02 12:49:32', '2018-05-02 12:49:32'),
('84464177-39a1-4cb3-be79-0ceb2c92011f', 124, '2018-05-04 00:17:27', '2018-05-04 00:17:27'),
('867bfb2a-6e84-4ef3-9dfc-ee53a6a1bbf8', 77, '2018-05-02 02:52:53', '2018-05-02 02:52:53'),
('8730a0b3-517e-46e2-b456-8ae27b32c9fc', 23, '2018-03-31 09:54:41', '2018-03-31 09:54:41'),
('8a8c26e0-5e5e-4d7e-a6c8-eb285269c40d', 111, '2018-05-02 07:42:06', '2018-05-02 07:42:06'),
('8b5e2263-805c-4af3-bf78-d2f33576cfa5', 126, '2018-05-03 02:59:52', '2018-05-03 02:59:52'),
('8bcdc0e9-e327-4a9c-bfa8-6a315e94cf3b', 225, '2018-05-08 05:58:16', '2018-05-08 05:58:16'),
('8da3d864-0c69-4841-abd5-d6b675e0fe62', 177, '2018-05-08 04:00:46', '2018-05-08 04:00:46'),
('92ab9f5e-a27c-4b0c-a66f-c2a819e3baa0', 119, '2018-05-03 02:37:22', '2018-05-03 02:37:22'),
('94bdc485-7203-4b8e-a390-96fc66181e24', 47, '2018-06-01 21:58:17', '2018-06-01 21:58:17'),
('94e5b3d3-0bc3-4673-8b20-1560c56c5760', 230, '2018-05-23 01:37:04', '2018-05-23 01:37:04'),
('95e4e0a6-17b6-446d-a371-6572d269eced', 143, '2018-05-03 07:25:34', '2018-05-03 07:25:34'),
('994bed86-5988-4fa7-a277-f6be553a162a', 80, '2018-05-02 03:48:41', '2018-05-02 03:48:41'),
('9a547c7f-eb7a-4d33-87e6-3b43dc7e9614', 86, '2018-05-02 04:34:59', '2018-05-02 04:34:59'),
('9a90e364-fb50-46b8-9446-37d99a876096', 167, '2018-05-03 07:14:17', '2018-05-03 07:14:17'),
('9e58af8e-f76e-4be0-917d-487ef058c205', 175, '2018-05-14 12:48:31', '2018-05-14 12:48:31'),
('a1f3efa1-bfbd-48eb-8f61-a90ad24c8fc0', 181, '2018-05-04 04:25:55', '2018-05-04 04:25:55'),
('a7aa411e-0c4d-469b-8dc1-3e32f38efa95', 96, '2018-05-03 06:04:10', '2018-05-03 06:04:10'),
('a93d96bd-b22c-42fe-badb-6dadb8344957', 116, '2018-05-20 23:38:43', '2018-05-20 23:38:43'),
('aa3258e3-6493-416b-8939-0d06f09d02d9', 199, '2018-05-04 08:55:21', '2018-05-04 08:55:21'),
('b025f2d2-1566-4386-895f-3bc4b46fb50d', 84, '2018-05-02 03:02:53', '2018-05-02 03:02:53'),
('b02bd060-6941-4a3d-a431-0b58be0cc498', 197, '2018-05-08 05:32:36', '2018-05-08 05:32:36'),
('b05ad254-2064-4d43-bc9f-e3216bddb5aa', 175, '2018-05-13 23:57:37', '2018-05-13 23:57:37'),
('b296391f-6927-4595-a754-4078cbeaec80', 19, '2018-03-31 05:05:55', '2018-03-31 05:05:55'),
('b2ebed00-3414-4f17-814d-1f18ff070513', 25, '2018-04-18 14:27:43', '2018-04-18 14:27:43'),
('b92ee7bb-28bd-4d0f-8403-12c0cce903f7', 190, '2018-05-04 05:05:43', '2018-05-04 05:05:43'),
('ba24e81d-9227-49c7-ba70-8597d9734898', 185, '2018-05-04 03:58:14', '2018-05-04 03:58:14'),
('ba809155-f0ba-445f-be80-f8a53562a1e9', 142, '2018-05-03 07:38:57', '2018-05-03 07:38:57'),
('bb5dd63a-03f2-4ff8-ab93-539aae56ead2', 24, '2018-04-03 01:55:16', '2018-04-03 01:55:16'),
('bb89f6f6-fe45-46bd-986f-2cef9f285e6d', 14, '2018-04-06 04:38:40', '2018-04-06 04:38:40'),
('be4a2593-ae17-4a49-add9-381e5b70ee61', 168, '2018-05-07 09:18:51', '2018-05-07 09:18:51'),
('be530545-97f7-4ef1-8d65-108e995641cb', 131, '2018-05-03 03:26:15', '2018-05-03 03:26:15'),
('c09090f6-6852-42b5-91f5-5b54606431cf', 213, '2018-05-12 03:23:57', '2018-05-12 03:23:57'),
('c40135af-2a8a-4db6-807c-313e302c4044', 44, '2018-04-01 07:13:24', '2018-04-01 07:13:24'),
('c53f7caf-73d2-486d-8b85-3834b8fbff62', 28, '2018-04-07 00:53:39', '2018-04-07 00:53:39'),
('c6aa01c2-c815-42a5-ae16-1da278eca25e', 13, '2018-03-30 11:01:00', '2018-03-30 11:01:00'),
('c6b9b7ce-f20c-4a1e-81c6-9690ef94a199', 189, '2018-05-14 05:55:25', '2018-05-14 05:55:25'),
('c8953eed-cfa0-46a4-8b41-9c7ee31fac30', 13, '2018-04-09 11:30:38', '2018-04-09 11:30:38'),
('c8981197-7570-48a4-9882-c77a21a71500', 150, '2018-05-03 05:40:33', '2018-05-03 05:40:33'),
('cab43332-ee9f-43db-9ad3-533765b0b0ac', 43, '2018-04-05 10:24:36', '2018-04-05 10:24:36'),
('cb57b60e-94fa-4e53-ab1d-4c1ca9e50a38', 57, '2018-04-04 05:50:48', '2018-04-04 05:50:48'),
('cd543e30-be1e-4843-95c8-94b91992aade', 194, '2018-05-14 06:23:45', '2018-05-14 06:23:45'),
('cf09c4fa-7150-4aff-8191-7a7ddf9865ef', 98, '2018-05-05 07:52:04', '2018-05-05 07:52:04'),
('d156daf8-522e-448c-a6fd-afaff57e3525', 173, '2018-05-06 09:55:16', '2018-05-06 09:55:16'),
('d23e28fe-b83c-4f21-82a9-404dde3c4da5', 32, '2018-04-14 07:30:14', '2018-04-14 07:30:14'),
('d339ce2b-b27d-44cf-997e-37e4e0acf9eb', 220, '2018-05-04 13:28:59', '2018-05-04 13:28:59'),
('d3b759e3-a8f1-4624-bc78-63334fcaa58e', 51, '2018-04-05 12:55:23', '2018-04-05 12:55:23'),
('d4f99732-1e4e-46e4-b3f6-05dd221444dd', 27, '2018-04-05 10:25:51', '2018-04-05 10:25:51'),
('d66268d3-1986-4e04-964f-988ba70c5e00', 151, '2018-05-03 04:18:58', '2018-05-03 04:18:58'),
('d682b6d8-f469-417b-9420-ed39c3defb3d', 80, '2018-05-15 13:09:00', '2018-05-15 13:09:00'),
('d6ae4ca0-de47-4d8e-9345-8d459e04e3f1', 37, '2018-04-05 11:46:13', '2018-04-05 11:46:13'),
('d72cf5bd-9af8-41c9-8d55-3e60645c0f28', 53, '2018-04-03 12:12:15', '2018-04-03 12:12:15'),
('daa18320-9c16-4a21-835f-aa053d7f7dea', 63, '2018-04-11 02:40:26', '2018-04-11 02:40:26'),
('dc9d642a-89f9-4e05-9f0d-5d087fe2ae36', 66, '2018-05-02 05:45:04', '2018-05-02 05:45:04'),
('ded004d4-ed8b-48e1-8556-028bb1e52bc4', 186, '2018-05-04 03:57:41', '2018-05-04 03:57:41'),
('e182a036-de21-4e9a-bf37-71ea257db7a6', 30, '2018-04-05 09:19:04', '2018-04-05 09:19:04'),
('e2749c65-3db1-48b4-88d0-e55c09700307', 230, '2018-05-30 21:54:16', '2018-05-30 21:54:16'),
('e3df6527-866b-4706-9e29-f467c2c220cb', 68, '2018-04-18 13:52:19', '2018-04-18 13:52:19'),
('ec5b150d-3dd1-4889-973e-b7d8f08d1e21', 253, '2018-05-25 02:38:53', '2018-05-25 02:38:53'),
('ecfd6684-c168-4a3a-a15f-38738baa21a6', 45, '2018-04-09 14:48:08', '2018-04-09 14:48:08'),
('f0154b18-6792-49af-b2bf-bc6168ad0123', 93, '2018-05-05 14:17:30', '2018-05-05 14:17:30'),
('f01f8417-410c-4c50-bdab-166b4753f563', 48, '2018-04-02 06:51:36', '2018-04-02 06:51:36'),
('f043fcbc-709f-4fe6-8c26-ffb3e9fe0de8', 103, '2018-05-02 08:51:55', '2018-05-02 08:51:55'),
('f081f7c2-23f7-4ed1-951d-85d6177bc7c5', 82, '2018-05-09 04:20:37', '2018-05-09 04:20:37'),
('f10670b7-0042-4b2f-9805-9d2adbd667a3', 202, '2018-05-04 08:52:34', '2018-05-04 08:52:34'),
('f11ef443-8f23-4430-8acf-cd8b5d1f8e1a', 116, '2018-05-14 01:21:07', '2018-05-14 01:21:07'),
('f13868a8-a78d-416b-9707-39e42a330691', 50, '2018-04-06 10:18:21', '2018-04-06 10:18:21'),
('f20d7951-4a66-49fc-9271-a9668ad518c3', 47, '2018-05-18 12:16:55', '2018-05-18 12:16:55'),
('f3668287-54ef-4ab7-bf1a-2e09b475beb1', 104, '2018-05-02 07:53:16', '2018-05-02 07:53:16'),
('f670128e-54f6-4cce-9504-a19c102d12e9', 180, '2018-05-04 04:24:29', '2018-05-04 04:24:29'),
('f7e70b5b-2f04-4b57-9bb4-35117b28f9ee', 54, '2018-04-03 04:02:52', '2018-04-03 04:02:52'),
('f9710170-b60d-4f3a-a7b3-a0edb62b2ec6', 47, '2018-05-12 05:31:07', '2018-05-12 05:31:07'),
('fbffb4db-aef1-4d54-9abd-0848aeaf9ed8', 82, '2018-05-08 03:52:15', '2018-05-08 03:52:15'),
('fd1af630-5959-431a-82b1-e83acfc67aea', 114, '2018-05-02 08:02:59', '2018-05-02 08:02:59'),
('ff4fbfb4-67af-4821-a911-d2e552ace4c6', 182, '2018-05-04 04:21:40', '2018-05-04 04:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `personalities_scores`
--

CREATE TABLE `personalities_scores` (
  `personality_id` int(11) NOT NULL,
  `tipe` varchar(250) NOT NULL,
  `file_url` text NOT NULL,
  `file_loc` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalities_scores`
--

INSERT INTO `personalities_scores` (`personality_id`, `tipe`, `file_url`, `file_loc`, `status`, `createdAt`, `updatedAt`) VALUES
(5, 'KEPRIBADIAN SAMPAI 14 MEI BARU', 'http://45.76.184.245/assets/images/kepribadian/1526955697KEPRIBADIAN SAMPAI 14 MEI BARU.pdf', '1526955697KEPRIBADIAN SAMPAI 14 MEI BARU.pdf', 1, '2018-05-22 02:21:37', '2018-05-22 02:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `pokuji_documents`
--

CREATE TABLE `pokuji_documents` (
  `pokuji_document_id` int(11) NOT NULL,
  `document_title` varchar(255) NOT NULL,
  `document_url` text NOT NULL,
  `document_loc` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pok_uji`
--

CREATE TABLE `pok_uji` (
  `pok_uji_id` int(11) NOT NULL,
  `pok_uji` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post`, `id`, `createdAt`, `updatedAt`) VALUES
(1, 'Kegiatan Serdik di Polres', 66, '2018-03-27 14:37:01', '2018-03-27 14:37:01'),
(2, 'Kegiatan Serdik di Polres', 66, '2018-03-27 14:37:01', '2018-03-27 14:37:01'),
(3, 'Kegiatan Serdik di Polres', 66, '2018-03-27 14:37:01', '2018-03-27 14:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `post_comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`post_comment_id`, `comment`, `post_id`, `id`, `createdAt`, `updatedAt`) VALUES
(1, 'Sangat Luar Biasa', 1, 58, '2018-04-26 10:15:27', '2018-04-26 10:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `score_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `akademik_url` text NOT NULL,
  `akademik_loc` text NOT NULL,
  `kepribadian_url` text NOT NULL,
  `kepribadian_loc` text NOT NULL,
  `kesehatan_url` text NOT NULL,
  `kesehatan_loc` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`score_id`, `title`, `akademik_url`, `akademik_loc`, `kepribadian_url`, `kepribadian_loc`, `kesehatan_url`, `kesehatan_loc`, `status`, `createdAt`, `updatedAt`) VALUES
(9, 'NILAI AKADEMIK SESPIMMEN 58', 'http://45.76.184.245/assets/images/scores/1524032455NILAI-HASIL-PRE-TEST-SERDIK-SESPIMMEN-58.pdf', '1524032455NILAI-HASIL-PRE-TEST-SERDIK-SESPIMMEN-58.pdf', 'http://45.76.184.245/assets/images/scores/1525827477DATA NILAI kepribadian bulan april SERDIK 58.pdf', '1525827477DATA NILAI kepribadian bulan april SERDIK 58.pdf', 'http://45.76.184.245/assets/images/scores/1525750747nilai samapta tahap 1.pdf', '1525750747nilai samapta tahap 1.pdf', 1, '2018-04-18 06:20:55', '2018-05-09 12:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `thumbnail_id` int(11) NOT NULL,
  `thumbnail_url` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` (`thumbnail_id`, `thumbnail_url`, `post_id`, `createdAt`, `updatedAt`) VALUES
(1, 'https://res.cloudinary.com/nandonrp/image/upload/v1522650813/example-post-1_tfmrg5.jpg', 1, '2018-03-27 14:37:02', '2018-03-27 14:37:02'),
(2, 'https://res.cloudinary.com/nandonrp/image/upload/v1522650813/example-post-2_voqc6u.jpg', 2, '2018-03-27 14:37:02', '2018-03-27 14:37:02'),
(3, 'https://res.cloudinary.com/nandonrp/image/upload/v1522650813/example-post-3_vdi87n.jpg', 3, '2018-03-28 07:52:00', '2018-03-28 07:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `topic`, `id`) VALUES
(140, '2', 14),
(141, '5', 16),
(142, '2', 17),
(143, '4', 18),
(144, '4', 19),
(145, '2', 20),
(146, '4', 21),
(147, '4', 23),
(148, '4', 25),
(149, '5', 26),
(150, '1', 27),
(151, '2', 30),
(152, '2', 31),
(153, '3', 32),
(154, '5', 33),
(155, '5', 36),
(156, '2', 37),
(157, '4', 38),
(158, '2', 39),
(159, '5', 40),
(160, '1', 41),
(161, '2', 42),
(162, '2', 43),
(163, '3', 44),
(164, '5', 45),
(165, '2', 47),
(166, '5', 59);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `no_serdik` int(255) NOT NULL,
  `nrp` int(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `bod` datetime DEFAULT NULL,
  `bop` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `force_of` int(11) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `no_serdik`, `nrp`, `first_name`, `last_name`, `email`, `password`, `phone`, `bod`, `bop`, `gender`, `avatar_url`, `force_of`, `verified`, `createdAt`, `updatedAt`) VALUES
(14, 105, 76120659, 'Aria', 'Sandy', 'ariasandy98@gmail.com', '$2a$12$jq0htagup17hR0d9.lW4k.WEMQUJA7i.C8Wx9N0z72VIJS9Jn3QGa', '081349560598', '1976-12-09 15:36:00', 'Makassar', NULL, '', 58, 1, '2018-03-28 09:09:53', '2018-04-18 15:39:51'),
(16, 12, 81020628, 'Egia', 'Kusumawiatmaja', 'e.kusumawiatmaja@gmail.com', '$2a$12$Xc7C21LfHdWDhXQVyefcuegRyal5aKVl8M/SVHjexj/HVEgKS04Uq', '08115499168', NULL, NULL, NULL, NULL, 58, 1, '2018-03-28 22:19:16', '2018-03-28 22:19:16'),
(18, 114, 77090906, 'Wuryantono', 'Tono', 'wuryantono52@gmail.com', '$2a$12$s6ELp0mgpCPmInSDfrqYA.8IeL4.j//tE7nBo/CLgYg67GzA.2koG', '085257022299', NULL, NULL, NULL, NULL, 58, 1, '2018-03-28 22:38:14', '2018-03-28 22:38:14'),
(19, 124, 79070819, 'Eko', 'Wimpiyanto', 'Wimpiyantoss@gmail.com', '$2a$12$S0/Vl7kY5e9SwDc405dSw.n1QVYhDGb3mInZVyF05unTY8xh6RDqa', '081212212000', '1979-07-02 13:56:00', 'Semarang', NULL, NULL, 58, 1, '2018-03-28 22:44:50', '2018-04-17 13:59:11'),
(20, 128, 79071555, 'Dedy', 'Darmawansyah ', 'Darmawansyah.dedy@gmail.com', '$2a$12$lpP/7Kl02e/pszXEza0oveRROFNU9gw.ccCjIUFt8NpC4ZgCkdYGG', '081390545679', NULL, NULL, NULL, 'http://45.77.45.112/files/users/avatars/40dba572176b8ecb8e834c99a3ffa83aca3e3bfdf34b85e664c664b24d912f11.png', 58, 1, '2018-03-28 23:07:13', '2018-03-29 06:22:16'),
(21, 56, 80021049, 'Dax Emmanuelle', 'Samson Manuputty, S.I.K', 'dax.emmanuelle@gmail.com', '$2a$12$aWJB4boMqmog3BVOaXRgMeBz1UD6SEFhIkUn4CkYga1rbm9Wm1eki', '082136822003', '1980-02-15 13:45:00', 'Semarang', NULL, NULL, 58, 1, '2018-03-28 23:08:03', '2018-04-20 08:35:07'),
(23, 94, 81111052, 'Muharman', 'Arta', 'muharmanarta@yahoo.com', '$2a$12$zFMOJFvaykIZtpaNcgdxAucq3ci9NHDGzpYu3L9abrtNI1rtIYmCy', '082156411981', '1981-11-18 15:13:00', 'Jakarta', NULL, 'http://45.77.45.112/files/users/avatars/627039d59682feb66f7a5d318c426c393c6877af7bcf9d0e743ed326f98a438f.png', 58, 1, '2018-03-28 23:38:34', '2018-04-09 11:29:02'),
(24, 70010196, 70010196, 'Pahala HM', 'Panjaitan', 'Pahala1991@gmail.com', '$2a$12$WE7b8AEqLZuDZLMKCGImA.85.pVlvuhFWtqBhbYpxtkY6y1ORDqfy', '081380821991', NULL, 'Banda Aceh', NULL, 'http://45.77.45.112/files/users/avatars/f6b95fa74fe7bb15c562dd42edf5cf2385b76e675b355d304a9e21429fcd9114.png', 48, 1, '2018-03-28 23:55:26', '2018-04-03 02:42:12'),
(25, 174, 81021018, 'Febri', 'Isman jaya', 'febriismanjaya@gmail.com', '$2a$12$qPuDm8Lz4MiTvL12CGNEwuJ2JiB/z2DfIOFafOKHENd7XIhxjKtd2', '082211742381', '1981-02-10 14:27:00', 'Raha ', NULL, NULL, 58, 1, '2018-03-29 00:40:48', '2018-04-18 14:38:37'),
(26, 126, 78050944, 'Gunawan', 'Tri Laksono S.Ik', 'gunawantrilaksono@gmail.com', '$2a$12$7GKehJK4J1e9xHVlobD9MextdwpRVYf9UEX4LTl4UO2tKyJ8YbXhy', '085281624499', NULL, NULL, NULL, NULL, 58, 1, '2018-03-29 00:45:03', '2018-03-29 00:45:03'),
(27, 72, 77040997, 'Norhayat', 'Sahmad', 'cahayahirup@gmail.com', '$2a$12$cIHdss4UFD2S/81TAR9EwuLOMjXtw2rZ.oRcLZ087qMzOt.7NvpN2', '085216044649', '1977-04-28 10:25:00', ' Bandung', 1, NULL, 58, 1, '2018-03-29 00:45:21', '2018-04-05 10:32:56'),
(28, 1, 84253774, 'Diki Riyadi', 'Suhendi', 'diki.riyadi.suhendi@gmail.com', '$2a$12$D7f.FBu0iWYcxocz0im2ZObzou9sFe0U/RG5GbPshNr9QT9Pd/HKG', '085222002635', '1984-12-14 07:17:00', 'Bandung barat', NULL, 'http://45.77.45.112/files/users/avatars/c40b61d87c1b6ee5c6751f5defa60466a22217c7521a3fea50d73066d7a17ea4.png', 55, 1, '2018-03-29 00:45:22', '2018-05-08 07:23:58'),
(29, 2, 77041999, 'Ari', 'Cahyadi', 'cahyadiari@gmail.com', '$2a$12$jMnxfJDrpq3S9gSaYSnpt.OhJB2bcOQAfgvh2QmhALjGdxX0UFZXW', '08187194299', NULL, NULL, NULL, NULL, 99, 1, '2018-03-29 00:48:28', '2018-03-29 00:50:52'),
(30, 994958, 77040951, 'JAROT', 'YUSVIQ ANDITO', 'jarotyusviqandito1999@gmail.com', '$2a$12$WEz9NShNQ0QrBoel9jk47erFRbCnwK5NvQToOkZG0rJxA8k57XqBm', '081347757784', '1977-04-15 09:18:00', 'Sleman', NULL, NULL, 58, 1, '2018-03-29 00:54:38', '2018-04-18 10:51:14'),
(31, 192, 81050818, 'Handri', 'Suriyana', 'handriwira@gmail.com', '$2a$12$H4isSUUqiaAXPkXpEi1x.On5ZT4syYfdKIjsNPEf5NLeZkuIex2u6', '081382402002', '1981-05-17 12:03:00', 'Trenggalek ', NULL, 'http://45.77.45.112/files/users/avatars/ea7a540ee452a8b41846ba4113e8190fc55e5728e85d6af784f49f5091de978a.png', 58, 1, '2018-03-29 01:01:11', '2018-04-18 13:58:22'),
(32, 79, 81050819, 'Tedy Arief', 'Soelistiyo', 'Tedyarief02@gmail.com', '$2a$12$if1kF5t/uPEhrI6s7I0o0.wnVaEIhACLrS7peTf0ajTpXPs2HNegO', '08170192002', NULL, NULL, NULL, NULL, 58, 1, '2018-03-29 01:11:53', '2018-03-29 01:11:53'),
(33, 12, 81031245, 'Teguh', 'Nugroho', 'Tsaqib2003@gmail.com', '$2a$12$6SWG9q/3MvnqvOrnZU.AEuOn69T6oEcRyHvQcZ/4INL2xjL/tuEFe', '0817176789', NULL, NULL, NULL, NULL, 58, 1, '2018-03-29 01:33:37', '2018-03-29 01:33:37'),
(34, 2222222, 2222222, 'Reinal', 'Test', 'Reinaldy.agung@gmail.com', '$2a$12$xZq9e5GkMzonhb2tnlpm4.Qh8u8eEjYaMvp8ojMKC..5hDLOuplLu', '082115601414', NULL, NULL, NULL, NULL, 0, 1, '2018-03-29 02:04:08', '2018-03-29 02:04:08'),
(35, 167, 77020505, 'handoyo', 'santoso', 'Handoyosan235@yahoo.com', '$2a$12$4WvZm7hgnl6wThve.K8Sx.lhDxZSoaxfuG9WkbfyEd70LDvNLZniS', '081317592020', NULL, NULL, NULL, NULL, 1998, 1, '2018-03-29 02:59:11', '2018-03-29 02:59:11'),
(36, 92, 78081567, 'Reja', 'Simanjuntak', 'rezanth2001@gmail.com', '$2a$12$XY92HoV.6bXWBnljsq27j.3fntVgn0yZBtLs48EaOi5S6RFz7ziq.', '081250239777', NULL, 'Medan', NULL, 'http://45.77.45.112/files/users/avatars/f68f972190b2671561939584bafdee58c1fd2ba03f349e37abb8de5126653040.png', 58, 1, '2018-03-29 04:14:10', '2018-05-06 14:16:11'),
(37, 9, 77030897, 'aditya', 'laksimada', 'adityalaksimada@ymail.com', '$2a$12$pzG4DclRNlH8TloVC1io1epqzuZvdw7QgCCH07DxN6Ov006XxjdrO', '082174311977', NULL, 'Semarang', 1, 'http://45.77.45.112/files/users/avatars/bf8e8a7efe5632302fed09df1de61012dd469372dc0dd126ec3f2998edb24a6b.png', 58, 1, '2018-03-29 04:18:59', '2018-05-15 09:47:20'),
(38, 29, 80110837, 'Leo', 'Dedy', 'Leodeddy80@gmail.com', '$2a$12$36USCA3NAu5gdBzYNH9gYu73XZY7f7X6wLMPSSKlixHsA3CrrdiEi', '081354847590', NULL, NULL, NULL, NULL, 58, 1, '2018-03-29 05:47:36', '2018-03-29 05:47:36'),
(39, 2018, 75091070, 'Vero Aria ', 'R', 'vero.ak2000@gmail.com', '$2a$12$QKr699/bQlCiFgZwdr26luuz6gOAwZnrInuBPWX7R.Hpuk39Bm2NS', '081323462000', NULL, 'Yapen Waropen', NULL, NULL, 58, 1, '2018-03-29 06:05:06', '2018-04-30 03:53:25'),
(40, 29, 80110837, 'Leo', 'Dedy deFretes SH, SIK, MH.', 'Serdik4407@gmail.com', '$2a$12$Xe6GQXIxH10MtcVbGPg4qewgeGeCQO7fz.uS1s1PV7DYTXwQUYkde', '081398763508', '1980-11-25 14:28:00', 'Jakarta', 1, 'http://45.77.45.112/files/users/avatars/3ccf9efdbcb76847a337e8bbc97c7e23d6c6dd94775ebc25a4c248486e387244.png', 58, 1, '2018-03-29 06:13:29', '2018-05-15 09:54:03'),
(41, 109, 78061019, 'Welly', 'Abdillah', 'wey.abdi.99@gmail.com', '$2a$12$CKf6CBG/kKc4m8Be17au0uRB0TxEpmAt3/Yc3NC.N.MU0j6P4I6jS', '08126049020', '1978-06-27 04:36:00', 'Lirik - Riau', NULL, NULL, 58, 1, '2018-03-29 06:19:41', '2018-04-03 04:46:04'),
(42, 97, 76061081, 'Qori', 'Wicaksono', 'qoriwicaksono@gmail.com', '$2a$12$gdCAe5t9m9WdXO7SiLDuhe.tu8FuXMYwm4QB5vBhcfsvBdw5WDKNO', '085241482001', NULL, NULL, NULL, NULL, 58, 1, '2018-03-29 07:26:32', '2018-03-29 07:26:32'),
(43, 142, 80041235, 'Gunarko', 'Gunarko', 'Gunarko2001@gmail.com', '$2a$12$lAWILxVu4euiubECnoRxru0y8Cq5iLexypBl3tuh/ZdC77y6HadV6', '081381412001', '1980-04-05 10:17:00', 'Bantul', NULL, NULL, 58, 1, '2018-03-29 08:08:03', '2018-06-05 04:31:26'),
(44, 112, 76071072, 'Dewa Made', 'Palguna', 'dewamadepalguna@gmail.com', '$2a$12$aWREoYKWO8L1sfvaximd2uuciu4Um5FtlxfT2aFVzQtUSQhD2QSpK', '081237323076', '1976-07-24 07:12:00', 'DusuN buduk', NULL, 'http://45.77.45.112/files/users/avatars/9a39ae79e92921d0aec321a383970cef4f8faf9529402d94ddd4f3e339f50ce4.png', 58, 1, '2018-03-29 09:23:59', '2018-04-01 09:33:15'),
(45, 41, 76040542, 'Aap', 'Sinwan yasin,  SIK, MH', 'aapsinwanyasin@gmail.com', '$2a$12$aWb6rxP2RN9VYgOkGwasBukuXMlSAd55enmnSqLa19.6/prTw7MG2', '085385777797', '1976-04-02 14:43:00', 'Lamongan', 1, 'http://45.77.45.112/files/users/avatars/de4e17f137bf70fcf7df9ccb39ec8810a14b96ba5c77605852ec890023bd9050.png', 58, 1, '2018-03-29 15:48:57', '2018-05-08 12:59:16'),
(46, 185, 81021019, 'Christian', 'Aer', 'aer_christian@yahoo.co.id', '$2a$12$MlwVI/D11e3h2oSe7mxamu4pK5iKoBfk6TXYdx2are56BRyJaONTi', '085290006400', '1981-02-17 15:14:00', 'Denpasar', NULL, NULL, 2003, 1, '2018-03-30 23:15:34', '2018-05-01 15:15:17'),
(47, 116, 83021080, 'Putu Kholis', 'Aryana', 'pukhola@gmail.com', '$2a$12$7rImnAAYwI86O208dH3HyeFYz.O3l5DsqfBXqRfFrF6ueiEPV3Uc2', '081335812004', '1983-02-09 16:22:00', 'Semarang', 1, NULL, 58, 1, '2018-03-31 08:07:53', '2018-05-02 14:10:41'),
(49, 1996, 65060741, 'Chevy', 'Achmad Sopari', 'ch3vy65@gmail.com', '$2a$12$sNV.RkeQDOJF1BIVarsClOABjkeWl3M54B4xoLPfK5BUU6h2n8FkC', '081247016606', NULL, NULL, NULL, NULL, 42, 1, '2018-04-03 02:14:38', '2018-04-03 02:14:38'),
(50, 72090379, 72090379, 'Rifki', 'Piliang', 'rifkiden47@gmail.com', '$2a$12$jOOvulhQ0Z9MOy.nlhF5OeJAYMvL85x5qz5Y/gAqvy7usK6qNEPNe', '082227181994', NULL, 'Padang', NULL, 'http://45.77.45.112/files/users/avatars/5dd9a01c8c4bdff516b624fe2f46177135211c1d1a88419802887fbf2a7fe28e.png', 49, 1, '2018-04-03 02:39:28', '2018-04-08 04:27:54'),
(51, 67030420, 67030420, 'Giri', 'Purwanto', 'giri.purwanto@yahoo.com', '$2a$12$oSjKjfxKxupaxbrptfIO1emh8gIzIUFNvDHPEvAfXnHaiDCMIhJ5a', '0811115001', '2018-03-29 03:25:00', 'Medan', 1, NULL, 43, 1, '2018-04-03 02:39:57', '2018-04-06 03:30:25'),
(52, 69050331, 69050331, 'Mohamad', 'Syaripudin', 'mohamadsyaripudin@gmail.com', '$2a$12$hS4wdzH.RwNJ8nDJn4kdjOUtS.Iaa2hQXdPch9uH0QHCS2rK4ItXy', '085243450890', '1969-05-27 02:15:00', 'Garut', 1, 'http://45.77.45.112/files/users/avatars/dcab60128710367d5226e292fddf5a493638e051fe7b604294ddfe8c2ee36344.png', 45, 1, '2018-04-03 02:41:31', '2018-04-15 14:43:36'),
(53, 68060363, 68060363, 'Wayan', 'Supartha', 'Yanspartha@gmail.com', '$2a$12$Pq4l3hNbWtaAjx977SkSwe9q7xNB2napEV7QqxQ7/V/8U4ZGaJe5S', '081294378768', NULL, NULL, NULL, NULL, 41, 1, '2018-04-03 02:41:48', '2018-04-03 02:41:48'),
(54, 65110317, 65110317, 'Adhitya', 'Wiratama', 'adhityawira087@gmail.com', '$2a$12$y9nAkeexo5aBLkJHMT81iOPc0yV47lQMoXmfJJHa3fROdiU3996RG', '081394662066', NULL, NULL, NULL, NULL, 39, 1, '2018-04-03 02:50:00', '2018-04-05 09:23:31'),
(55, 70020282, 70020282, 'Gatot', 'Purbaya', 'garispurbaya.trakos@gmail.com', '$2a$12$ebgiJLw7lt/ApKwaNdPsNur..Kx27jxRakMKOG8OpAJnwphN7rVXO', '0811483443', NULL, NULL, NULL, NULL, 45, 1, '2018-04-04 01:50:19', '2018-04-04 01:50:19'),
(56, 68120537, 68120537, 'Fauza', 'Barito', 'Fauzabarito92pw@gmail.com', '$2a$12$g5h5dzqAc4UKfkALSwCzAubtpq9/EWWXRZOl4nbyHrGeGQr3vhPj.', '081215266692', NULL, NULL, NULL, NULL, 47, 1, '2018-04-04 02:17:46', '2018-04-04 02:17:46'),
(57, 66020556, 66020556, 'Olga', 'Sandah', 'olgasandah66@gmail.com', '$2a$12$kGgBNvkAoTU.IytymBinfOc1fB10hxy4AoZWU3ume.N6.3wkZbDuW', '082117172766', NULL, NULL, NULL, NULL, 1, 1, '2018-04-04 05:45:22', '2018-04-04 05:45:22'),
(58, 155151, 15518, 'Admin', 'Sipamen', 'Rendisimamora7127@gmail.com', '$2a$12$y1KIogD9n/ACVsEqfEz3OONWuheAlAoheaNMpaHtNO6GTyA8D8OJ6', '84845454', '2018-04-16 05:49:00', 'Bogor', 1, NULL, 1, 1, '2018-04-04 13:51:59', '2018-05-11 09:02:48'),
(59, 19, 76100865, 'Andi', 'Sophian', 'andisophian70@gmail.com', '$2a$12$xFbz/qhOEuRgJf58QS2YV.iA5LGcKVoepzovYCiB8qP07YxPUgUf.', '085216031007', NULL, NULL, NULL, NULL, 58, 1, '2018-04-09 05:23:17', '2018-04-09 05:23:17'),
(60, 2, 1234567, 'Ari', 'Ys', 'aryoren23@gmail.com', '$2a$12$e7gUe5KyRSH2/ocFcADyXu0VWtROxcIAnIREDC8Zz3ZGp/7c7QZ1u', '081910076500', NULL, NULL, NULL, NULL, 12, 1, '2018-04-10 02:45:59', '2018-04-10 02:45:59'),
(62, 71030331, 71030331, 'Feri', 'Handoko', 'ferihs9393@gmail.com', '$2a$12$9wNgfRK422Lu5YJ/CxXmQO1toh7pnqv47AaZho/dv4TQ/UpH9wT/.', '088218180759', '2018-04-26 01:17:00', 'Tanjung Pinang', NULL, NULL, 45, 1, '2018-04-11 00:48:05', '2018-04-15 01:22:39'),
(63, 68110405, 68110405, 'Taufik', 'Rocmat', 'taufik.r.h.sespimmen@gmail.com', '$2a$12$1WhvItT8rDWK8Rdy/IkuzuAbeZgFEd5LxXrcxO2PMpMWR9W2zfCr.', '081284737883', NULL, NULL, NULL, NULL, 1, 1, '2018-04-11 02:39:29', '2018-04-11 02:39:29'),
(64, 71030331, 71030331, 'Feri', 'Handoko', 'ferihs9393@gmail.com', '$2a$12$1vS1SwQzAaeOIU9zkV2bA.tfQHnaxs36NPyuWRANMzLqyhkQ23fGu', '088218180759', NULL, NULL, NULL, NULL, 45, 1, '2018-04-11 03:46:58', '2018-04-11 03:46:58'),
(66, 124214214, 21312424, 'Rendi', 'Simamora', 'kevinhermawanx@gmail.com', '$2a$12$cx0uFzye97wtP08SChoYfOd2evsdo2dYfwkjcXAgB2MbiEEgRHwFO', '083925835', '1999-06-06 06:26:00', 'Bogor', 1, NULL, 2017, 1, '2018-04-17 07:29:37', '2018-05-02 06:27:06'),
(69, 201803, 78061019, 'Welly', 'Abdillah', 'wey.abdi.99@gmail.com', '$2a$12$zuq2S68TRsXCYjJ0fR0mt.PXiDQWtPdqxARbIXmUIdJmVemzWSWbC', '08126049020', NULL, NULL, NULL, NULL, 58, 1, '2018-04-19 05:52:45', '2018-04-19 05:52:45'),
(73, 2162, 77051090, 'Wadi', 'Sabani', 'wadi_ts@yahoo.co.id', '$2a$12$FspP5gmgkDorB6h3fPdZ2OCLS.T6N5wa4WJxPY4hQ757oTZ/NFDQG', '081322202003', NULL, NULL, NULL, NULL, 58, 1, '2018-04-30 04:26:34', '2018-04-30 04:26:34'),
(75, 2065, 75061004, 'Erick', 'Marbun', 'ericksmarbun@gmail.com', '$2a$12$oMAHYtFqH/t.7pWic87X5O.uWMKEG9zu4FcgyelE4K2ICHREG1fpK', '081245615555', NULL, NULL, NULL, NULL, 58, 1, '2018-04-30 05:51:45', '2018-04-30 05:51:45'),
(76, 2120, 79030896, 'Nico', 'Andreano Setiawan', 'farrel.akpol@gmail.com', '$2a$12$yXmXZy1zxDlXqDEq7nAl8O76OerPynHx5LSCIYZLdu7bQ5yvspGVW', '087871092000', '1979-03-25 02:59:00', 'Bandung', 1, NULL, 58, 1, '2018-05-02 01:48:09', '2018-05-02 03:06:05'),
(77, 2137, 80120884, 'Ronald Fredy', 'Christian Sipayung', 'ronald_pay@yahoo.com', '$2a$12$Vpm1RfiMs8oD5tySPgGCHewRcl4FtzKMRkYV/uIZBemZJpNXgefF2', '082277235246', NULL, NULL, NULL, 'http://45.77.45.112/files/users/avatars/7e79e86828e0f65b8dccb4ab6fac3e9f5f3364c627f5a33480d39018f65bdbd3.png', 58, 1, '2018-05-02 01:56:42', '2018-05-04 04:58:58'),
(78, 2028, 77081070, 'Anuardi', 'S.i.k', 'anuardied@gmail.com', '$2a$12$wyPyW.MDCLhM/fpkDgN//eD1kbR08E5XKUm7fKLn5VNUQ5F/3W12q', '081276001999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 02:00:17', '2018-05-02 02:00:17'),
(79, 2002, 78020892, 'Achmad', 'Fathul Ulum', 'fathul.ulum1202@gmail.com', '$2a$12$hK76WpEdD6OKaaHZsiDc8u4Me.qr4YrJY4e2mg5uLjRlGIYqYORZ2', '085280801023', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 02:06:41', '2018-05-02 02:06:41'),
(80, 2025, 76060592, 'Anjas Gautama', 'Putra', 'anjaswepe@gmail.com', '$2a$12$319DTgD9YQWPqOvKU/trweAIi/xcZeorO8Fhhu53sM22BO/xP65.q', '082244585897', '1976-06-29 07:31:00', 'Watampone', 1, 'http://45.77.45.112/files/users/avatars/ddc226fe6fda28a84775d9474ab3c55a1e18c007bc00b4ffd50d69ae2b990847.png', 58, 1, '2018-05-02 02:09:26', '2018-05-07 07:35:55'),
(81, 2176, 77060649, 'Yudhi', 'Suhariyadi', 'yudhi.ps98@yahoo.co.id', '$2a$12$vvm917RnXfEf4CzS/uFfZuuW61V46bl.p5Xz3odkAiGBovB8xoYdG', '081350409999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 02:12:26', '2018-05-02 02:12:26'),
(82, 2055, 76110894, 'Dodik', 'Susianto', 'dodik.ts2003@gmail.com', '$2a$12$3Bm3pk0v6hAuy12Fm.py0ufN8CpC9MPkyLQnmBF3v2DqMPu.DT.zK', '082192102003', '2018-05-19 22:25:00', 'Probolinggo', NULL, NULL, 58, 1, '2018-05-02 02:16:23', '2018-05-16 22:30:06'),
(83, 2174, 81111053, 'Yogie', 'Hardiman', 'yogiewidhiazahra@yahoo.com', '$2a$12$GmqaWl/dejSgGDz8DGspEO7qUra8FoOGaBLgLW05eilY/2giyO6MO', '085267014131', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 02:32:33', '2018-05-02 02:32:33'),
(84, 2097, 80041234, 'Irwan', 'Andy Purnamawan', 'irwanandypurnamawan2001@gmail.com', '$2a$12$TMACm46VLdGkUZDgFP/a1.DcvQMGrTdWNZIBvvx0lWoOl0Iywhiby', '081245871234', '1980-04-01 03:01:00', 'Bangkalan', 1, 'http://45.77.45.112/files/users/avatars/e8e2d717cefaf2d2cab89ca031425850f14c02835beadc92d9b935838db79072.png', 58, 1, '2018-05-02 02:39:02', '2018-05-16 07:58:55'),
(86, 2039, 82030991, 'Belny', 'Warlansyah sh sik mh', 'Belni555@yahoo.com', '$2a$12$kTKNRsosp.Wvqadjf8JQH.BUdtKSkek95frpFIEFdVLW1yS80IQyi', '081383511179', '1982-03-29 04:45:00', 'Sabang', 1, NULL, 58, 1, '2018-05-02 02:56:32', '2018-05-05 04:51:39'),
(87, 2166, 77010820, 'Wasis', 'Santoso', 'wasissantoso@ymail.com', '$2a$12$c.VujMia/axLbkqLWj6Zl.8xN5kkfOz7d.Si6Jaq9yeALa7NadYFu', '081271001999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 02:59:42', '2018-05-02 02:59:42'),
(88, 2178, 77101036, 'Zulkarnain', 'Harahap', 'zulkarnainharahap1977@gmail.com', '$2a$12$iv2AUXpYhquAZidbC85PMetNXjZuABFedI9WsUA/tDtLJZBG3oUqa', '08112272000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 03:07:04', '2018-05-02 03:07:04'),
(89, 2132, 78070866, 'Riki', 'Kurniawan', 'rikurn7899@gmail.com', '$2a$12$OmCtuxHxFynC3jBtOnw7JOrlrLWtIVWzlSOJ5TXz7wL.7GFQWoOBO', '085369791999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 03:19:46', '2018-05-02 03:19:46'),
(90, 2185, 77030908, 'Horas Tua', 'Silalahi', 'horastuasilalahi313@gmail.com', '$2a$12$VYbAC0kNWlrx4mLSBwgZk.KlMKunF0MLStrjUklHDim4Bv5YMhuPG', '081251620077', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 03:25:18', '2018-05-02 03:25:18'),
(91, 2094, 77051044, 'Indra', 'Widyatmoko', 'indrakacongmeduro90936@gmail.com', '$2a$12$BYIXF4doan/POmmgqYH/v.6PEfKdzxhgr73vDF5yesS8urNGkBDOy', '082371681999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 03:35:34', '2018-05-08 05:05:35'),
(92, 2024, 79052175, 'Andy', 'Rahmansyah', 'andyrahmansyahwl2002@gmail.com', '$2a$12$Hawslk5/G8Gi0UUODY9vIuqBUIf6LPscl3Scs8lpWDpHeeen/wF9.', '08126986604', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 04:00:56', '2018-05-02 04:00:56'),
(93, 2155, 81061301, 'Tommy', 'Bambang Souissa', 'tommybambangsouissa@gmail.com', '$2a$12$TKwyC.3i2tF4zcyD8Wn6/esexXs1jOGsVDCtXNA3ATJ8AjdD7GciG', '08117881861', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 04:12:06', '2018-05-02 04:12:06'),
(94, 2085, 79061539, 'Hendra ', 'Irawan', 'piliang1979@gmail.com', '$2a$12$3L8wQWMZCoqt5PzvAFlaROM3BJ6Kh91YHoXDi7xokTKu/5HNZFyyu', '085260759999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 04:15:41', '2018-05-02 04:15:41'),
(95, 2011, 76110893, 'Agus', 'Puryadi', 'aguspuryadi595@gmail.com', '$2a$12$vkI38kVWraDeyfiJXho7EuqY32FEk0FcEUmj6fh5aimR76i0FrEZi', '081286789003', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 04:19:05', '2018-05-02 04:19:05'),
(96, 2071, 77040989, 'Ferikson', 'Tampubolon', 'farreltandhira77@gmail.com', '$2a$12$DKCOMpgl1r8ClRXv4nxIp.W1MuyVo9JkLPr2BJzpfrSVh/eiPI5FG', '081339454094', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 04:25:08', '2018-05-16 07:17:33'),
(97, 2114, 76061071, 'Muhammad', 'Nasution', 'nasution58sespimmen@gmail.com', '$2a$12$nsRKvEVJFE3iXqrr8dOZDO1dMy691S9fajojQ6ofBgJtkVSWbg0BG', '081237320999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 04:29:41', '2018-05-02 04:29:41'),
(98, 2137, 80041273, 'Sofyan', 'Arief', 'sofyanarief017@gmail.com', '$2a$12$KjY/7zwlXDtfERrslG65y.WrefSNSgJhwvUbRdL066TN.OoDLQpBu', '081213552002', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 04:35:39', '2018-05-02 04:35:39'),
(99, 2119, 76061069, 'Murjatmo', 'Edi', 'murjat76@gmail.com', '$2a$12$a30PwLFAQDe7r4vzDaP2jeeC.UGEj0dHCFMO1SiWHYIT54qHGPLeS', '081312286788', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 04:40:51', '2018-05-02 04:40:51'),
(100, 2068, 77020772, 'Fannky', 'Ani Sugiharto', 'fannkysugiharto@gmail.com', '$2a$12$bxM47kd0cIa.000vaR3YlOz5UtPqrze1nmqtvSufLa4Mt3wgI9/XS', '085254348888', '2018-02-27 05:46:00', 'Salatiga', NULL, NULL, 58, 1, '2018-05-02 04:44:48', '2018-05-07 05:51:40'),
(101, 2188, 79121331, 'Kurniawan', 'Ismail', 'kurniawan.i2002@gmail.com', '$2a$12$rRh1f/0SkH5J2.uMHv2k3OsVbM0wU5ushXYe5b8atR1k/dpi7VyqS', '081228562002', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 04:49:39', '2018-05-02 04:49:39'),
(102, 2106, 76070946, 'Leo', 'H. Siagian', 'leo.hsiagian@gmail.com', '$2a$12$IZ11yRFV0.AgqaNzaiAxv.KOxb5/6Zctq.uBPPJ3mYzWe5pjdt26G', '08123697398', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 04:54:31', '2018-05-02 04:54:31'),
(103, 2081, 77020505, 'Handoyo', 'Santoso', 'handoyosantoso53@gmail.com', '$2a$12$PmHl6oyyLYfC7IfRew4Ox.9NhUzD8MLSjTS/oXgCPeSSr6yvs/GGm', '08159757435', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 04:59:48', '2018-05-02 04:59:48'),
(104, 2165, 76010875, 'Wanito', 'Eko Sulistyo', 'westy_qq@yahoo.co.id', '$2a$12$n8H2lr/fv0GKcr4NfwBOBeqkei9ASJcd2LoNH4xhAKpdIKBTi76.6', '082362371998', NULL, 'Tegal', 1, 'http://45.77.45.112/files/users/avatars/976cbe82ffaf3760e0303da3424e74617da04a2c547f6223f339df2849d337b0.png', 58, 1, '2018-05-02 06:04:50', '2018-05-21 13:31:57'),
(105, 2064, 78050945, 'Endon', 'Nurcahyo', 'endontrie@gmail.com', '$2a$12$1uYJIMkhe/4UpPoWlTV0MeqEYzFsGcz5uWdNc3dBO62KMCTseFEgW', '082117808199', '1978-05-20 07:55:00', 'Probolinggo', NULL, NULL, 58, 1, '2018-05-02 06:09:01', '2018-05-02 07:57:03'),
(106, 2034, 79111154, 'Arief', 'Doddy Suryawan', 'ariefdoddy2002@gmail.com', '$2a$12$tZwnoaN4kor1iuvkDSH7sO/.2ww/Cbajl3HiIWP6twDczjZfPQKIy', '085214362002', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 06:30:46', '2018-05-02 06:30:46'),
(107, 2003, 76110863, 'Achmad', 'Muhaimin', 'achmadmm13@gmail.com', '$2a$12$vKcXY.1mlPokpmHirzJy6ueGpucCrEsVHBlmscnZclRC69jOEMlMW', '081229732000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 06:37:26', '2018-05-02 06:37:26'),
(108, 2088, 76030911, 'Hidayat', 'Sh.sik.', 'hidayat2000ss@gmail.com', '$2a$12$fd1AtWHb0FvPpmJw8fYsyO7h.gKjhBvvvNYThL76UbtniUiOj7m1i', '081340432763', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 06:49:57', '2018-05-02 06:49:57'),
(109, 2175, 82041130, 'Yovan', 'Fatika', 'tishasupraba@gmail.com', '$2a$12$mAQrEt22OV.J8UXu7ChW9eIyeyTzn9aMFlgeN0H4CgOoJETlR5Pi2', '081379230003', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 06:59:54', '2018-05-08 13:16:51'),
(110, 2168, 79031369, 'Widi', 'Haryawan', 'diwa238@gmail.com', '$2a$12$Def8K.bLMSTlTi3KwgSyW.iAV857Fl.Il4eZCvkvysg0.0yDm9l6.', '081228311312', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 07:01:46', '2018-05-02 07:01:46'),
(111, 2163, 82080882, 'Wahyu', 'Indrajaya', 'indrajayawahyu@gmail.com', '$2a$12$qU0mwnbFCNSsMMT8XRg4ae/L90ZZcggJYEzQ5ckf2R5iMsiKPvFCy', '081297022003', NULL, 'Yogyakarta', 1, NULL, 58, 1, '2018-05-02 07:08:15', '2018-05-02 07:51:00'),
(112, 2190, 75111013, 'Mochamad', 'Rifai', 'macpay2000@gmail.com', '$2a$12$qwaurPjCcQF4xZDoAIPM0uB8TgUPJUs00rZ7K/ygCPVmjx.Rgc7Ou', '081383570777', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 07:10:53', '2018-05-02 07:10:53'),
(113, 2130, 82060957, 'Reinard Habonaran', 'Nainggolan', 'reinhard.polri@gmail.com', '$2a$12$D.U8QeAqmZWwKJ3oxVVm9u/QAplJQPxM6tbv6MRxeEEcnpX4uhcli', '0811787003', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 07:13:08', '2018-05-02 07:13:08'),
(114, 2027, 82030988, 'Anton ', 'Prasetyo', 'antonprasetyo.170809@gmail.com', '$2a$12$wdpKSUwup7XAPLSO/dMUeu6ijyDAIEW/66cTlg03AuJuLlOaKLsse', '082367772003', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 07:14:58', '2018-05-02 08:04:04'),
(115, 2093, 78011011, 'Indra', 'Pramana Hidayat', 'indrapramanahidayat@gmail.com', '$2a$12$x6XXo/I3MbBtq6HJzAuLFODYV7MAjG4xtMJzvi12QcZo8ojcUjoPS', '08124426328', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 07:20:24', '2018-05-02 07:20:24'),
(116, 2009, 75070950, 'Agung Wahyu', 'Nugroho', 'Agungwahyu99@gmail.com', '$2a$12$ej4gx7tPbkK/0I9nNuH/qeOvHo9N3eJiT.w279/ZmJOCtyhOG2Tr6', '081366511999', NULL, 'Kediri', NULL, NULL, 58, 1, '2018-05-02 07:36:02', '2018-05-31 06:22:59'),
(117, 2096, 79101208, 'Irham', 'Halid', 'irham2710@yahoo.com', '$2a$12$SsVq26vIIFtsUlKxRm48KOfWgzYHp.JrekYLBCRXwgVAdyKUhxdwK', '081399429857', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 07:38:46', '2018-05-02 07:38:46'),
(119, 2170, 79051483, 'Wirasto', 'Adi Nugroho', 'wir2000ss@gmail.com', '$2a$12$O8To7vhkQjxhCcbXd0Y0Y.h6Lc5WXnoJ1Rz7fSoWVx7dVwiihtbga', '081352099818', '2018-05-12 02:32:00', 'Pemalang', NULL, 'http://45.77.45.112/files/users/avatars/ce0ec19b759b84d1ea542ea75cf6e01e2cf9fc2e88faff6297b95be675fc0b38.png', 58, 1, '2018-05-02 07:48:25', '2018-05-22 07:14:29'),
(120, 2021, 76070944, 'Andjas', 'Adipermana', 'andjas98@gmail.com', '$2a$12$3r9g8swEQ5PaRNIqimUZjOEqKpqkVpXyuRhc3pJ/6N2IH4WZOynzK', '081341026480', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 07:52:00', '2018-05-02 07:52:00'),
(121, 2147, 75020638, 'Samsul', 'Priasmoro', 'samsul_wp97@yahoo.co.id', '$2a$12$mVGuUtzdKtfsE21TAdOtSu8o1i2T/aKR5/q/..05ZMD/kR4NQoGem', '085266661997', NULL, NULL, NULL, NULL, 58, 1, '2018-05-02 07:57:21', '2018-05-02 07:57:21'),
(124, 2086, 78071381, 'Hendri', 'Yulianto', 'hendribatang58@gmail.com', '$2a$12$BDllsDgKzuEZgsbqY0zGTu1XUtUfrNLEEiRw2ze7XD6oil/T2tHNW', '081234567', '2018-05-10 03:11:00', 'Banyuwangi ', NULL, NULL, 58, 1, '2018-05-03 00:34:43', '2018-05-10 03:34:48'),
(125, 2067, 81121066, 'Faisal', 'Rahmat Hs', 'faisalrahmat006@gmail.com', '$2a$12$1m9MRcA8cyZI7KjUpX0GwOcB0wr5axxeazip56v84oEIduqWaXQqm', '085265208087', '1981-12-15 02:58:00', 'Kabanjahe', NULL, NULL, 58, 1, '2018-05-03 00:45:48', '2018-05-22 00:57:59'),
(126, 2090, 78061014, 'Ichsan', 'Nur', 'aceh99ed@gmail.com', '$2a$12$rwcWlnsP1R921PBBnJCaGO0VkZMUplU3Ialy9PDqgGCo85cu7z0PK', '081396631999', '1978-06-21 02:58:00', 'Banda Aceh ', 1, 'http://45.77.45.112/files/users/avatars/1b750f54abb9cef79c8a6b2653c040bb9005f0d88bc435d55e5b8d7fd783ad92.png', 58, 1, '2018-05-03 00:50:23', '2018-05-25 03:19:40'),
(127, 2078, 76051008, 'Gregorius', 'Liliek Tribhawono Iryanto', 'gregorius.lilik@gmail.com', '$2a$12$hlCP7gA8yWtQSswe87ikz.zNJDX0iHb/KundAvLah1foM1I/E26qi', '081575689332', '2018-05-25 12:32:00', 'Manukwari', NULL, NULL, 58, 1, '2018-05-03 01:09:23', '2018-05-15 13:20:25'),
(128, 2013, 77030935, 'Agus', 'Waluyo', 'aguswaluyo2003@gmail.com', '$2a$12$lWUFlKeWoxN1sO7JvtcXIe1jm5MoRfkOTRoMBmPJzr8C3pepNRe3O', '082110092003', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 01:13:47', '2018-05-03 01:13:47'),
(129, 2196, 81101066, 'Ujang', 'Darmawan Hadi Saputra', 'ujangdarmawan@gmail.com', '$2a$12$Gdz.z7J.FlUq5LpF80SpuOT47dp0W1qHULi/VsleOMfNT83MOUKZ2', '085241482003', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 01:20:17', '2018-05-03 01:20:17'),
(130, 2177, 81030743, 'Yuyan', 'Priatmaja', 'yp1689@gmail.com', '$2a$12$kHjAmgurjHavQ1fqin58keoBEO2wEVW/fEsYvnzPcKarehZlHI4lu', '081317363100', NULL, 'Mojokerto', NULL, 'http://45.77.45.112/files/users/avatars/a738ad5af828e69dcf234037e1a2171623c8c34a2e700361765b8a14301df709.png', 58, 1, '2018-05-03 01:35:28', '2018-05-03 04:37:07'),
(131, 2077, 77030934, 'Gede Pasek', 'Muliatnyana', 'pasekm77@gmail.com', '$2a$12$0fF8vbXbPOLPzTYvUDQnleDYU0Wy14uSEf/X9pDvQqUsQhZUSICIS', '085220027218', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 01:37:54', '2018-05-03 01:37:54'),
(132, 2047, 79052139, 'Deden', 'Heksaputra', 'deksa.putera@yahoo.com', '$2a$12$dt1cUxWV5XxSvykJv985ne9ovUSoXcZfY/ZPDYkxagYHdU8vtKmg2', '082115202001', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 01:42:28', '2018-05-03 01:42:28'),
(133, 2006, 77030901, 'Adi', 'Witanto', 'adi_ricat@yahoo.com', '$2a$12$Wi6/WAPavl34hCUPCFEXreRl66D4ZMJPFbnnMdgoATAL3JzBvxBXG', '081286013235', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 01:45:34', '2018-05-03 01:45:34'),
(134, 2118, 77091081, 'Mulkaifin', 'Sik', 'mulkaifin@gmail.com', '$2a$12$YMgWd.XluFwU5PvAX0Hj6ODlgBiVY2kZGijpWdgnOMhtx/zk7pXFO', '082254625007', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 01:48:53', '2018-05-03 01:48:53'),
(135, 2099, 79071514, 'Irwan Yuli', 'Prasetyo', 'irw4nyp@yahoo.co.id', '$2a$12$cLegTXV1iAjchaUh1/JCAOBVYPWi6Jx9SrbwewxXcsWmW/wMsRnCy', '081379072001', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 01:52:45', '2018-05-03 01:52:45'),
(136, 2138, 75081007, 'Ronalzie', 'Agus', 'ronalzie@gmail.com', '$2a$12$wTJEz9Giuh8FHs.bT2RCqulCb63k9xsx04/J3IZd/LXzTEzrvRoPK', '081222399797', NULL, 'Padang', NULL, NULL, 58, 1, '2018-05-03 02:05:36', '2018-05-23 00:28:39'),
(137, 2008, 75010860, 'Agung', 'Riyanto', 'agung_riyanto30@yahoo.co.id', '$2a$12$7t13kGOtBqc7NkGV3ZPZU.03s.nsoFGccUiUhJmTqYfRH.llZoy/e', '081341810000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 02:09:47', '2018-05-03 02:09:47'),
(138, 2095, 77030907, 'Indratmoko', '', 'moxz2000@yahoo.com', '$2a$12$S2NYrdWFhWJSHfW.g/ZV/eA3X2KEmKoil7Xm2z.UTAZalRazkRIS2', '08115823017', '1977-03-23 10:47:00', 'Bogor', 1, 'http://45.77.45.112/files/users/avatars/fbf3de7856b35416db2678516caf6151879e0fcc36fc1b637e7d473d71c2acc3.png', 58, 1, '2018-05-03 02:16:32', '2018-05-03 10:58:55'),
(139, 2193, 76090970, 'Saiful', 'Mustofa', 'saifulmustofa1977@gmail.com', '$2a$12$fGsRxu3ihJSao6RzeFV0OOteD69JoyICq0xu4.B0CKhYAVQ4Jru7q', '081315503775', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 02:33:40', '2018-05-03 02:33:40'),
(140, 2102, 78051228, 'Jimmy', 'Tana', 'jimmy_tana78@yahoo.co.id', '$2a$12$ny6/NbP5syK8YXjLapznCuvGEoZk5dPnivJX3fAASReA.syonw3dS', '087899304906', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 02:37:54', '2018-05-03 02:37:54'),
(141, 2073, 80031090, 'Fredrickus', 'Williamson Agusthinus Maclarimboen', 'fredrickusmc@yahoo.co.id', '$2a$12$uMmNh1qMhSmycoiAM/rSj.r31/OplTERN.UDpRWYDwYDYlUgfZvG6', '081340323980', NULL, 'Serui', NULL, NULL, 58, 1, '2018-05-03 03:15:43', '2018-05-04 22:56:33'),
(142, 2054, 75121169, 'Djoko', 'Lestari', 'djokoles@gmail.com', '$2a$12$5oTHoqaq6b67Iby.e8swr.YBNVphNn26hTQkni2Y8fgACxKZeh0R6', '081373679200', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 03:20:32', '2018-05-03 03:20:32'),
(143, 2016, 76030824, 'Alfred', 'Ramses Sianipar', 'ramses98.alfred@yahoo.co.id', '$2a$12$Uxb5/AXykWvx78W6xtIW7uTxL56TOSnpj0ig1QBX3JBxItUBka2ri', '081319552503', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 03:23:08', '2018-05-03 03:23:08'),
(144, 2037, 76110892, 'Bayu', 'Catur Prabowo', 'bayu.qqrfrs@gmail.com', '$2a$12$Br4/lCP.LtFNNysU77w/uO/gLCLGX5Jxz65QzO9uFBq7AQ2sIYfki', '08117300166', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 03:25:46', '2018-05-03 08:01:49'),
(145, 2058, 78081571, 'Rudi', 'Hartono', 'masroedih@yahoo.com', '$2a$12$QkI3M3ajS9awuzKMXGwhTOrFB0beyHMvZZ8erNRqH/pMhZEqy9GQO', '08112799999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 03:30:01', '2018-05-03 03:30:01'),
(146, 2012, 79030823, 'Agus', 'Siswanto', 'agussiswanto820@gmail.com', '$2a$12$CGBmgP4lg0DtZpkEJHcHX.53CNqacS5hPqBNUXtQXeTTcsfxOj24m', '0812574873165', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 03:32:36', '2018-05-03 05:58:28'),
(147, 2142, 77040946, 'Sajimin', 'Sik', 'sajimin7704@gmail.com', '$2a$12$brtCFu0jX9U7truI3SWWcOsfxVsZ.Y89ohAgpeN0vbdpHPy1QNY.W', '081388473270', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 03:34:56', '2018-05-03 03:34:56'),
(148, 2074, 76071045, 'Fx. Irwan', 'Arianto', 'fxirone@gmail.com', '$2a$12$Lhha4D9iETzEQqZWtptDuuSMqIvoDDnt5Jdgry9ViBzftHT8yOIlC', '081344766463', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 03:38:38', '2018-05-03 03:38:38'),
(149, 2135, 79070900, 'Romadhoni', 'Sutardjo', 'romadhoni2000@gmail.com', '$2a$12$FAxUYygWsVG9sNLNwD5zTugYNXcjK1DxuQSduJdyjeUng2qJjfUtK', '085252952000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 03:43:07', '2018-05-03 03:43:07'),
(150, 2171, 81111048, 'Wisnu', 'Wibowo', 'wisnu.wibowo1981@gmail.com', '$2a$12$6EI0KXIHEssM5F.kR5eg.OvAy8dv6H0vdoUmoETURxFLS8XbfTeOG', '081249448588', '1981-11-12 05:40:00', 'Bandung', 1, NULL, 58, 1, '2018-05-03 03:51:03', '2018-05-03 05:58:05'),
(151, 2022, 77060650, 'Andre Julius', 'Willem Manuputty', 'andremanuputty@gmail.com', '$2a$12$7jSuxYqaCET8qQfmEx8ex..yMIJOtiFRirMRxK6wC4/aG0KQiWPXK', '082313989898', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 04:02:20', '2018-05-03 04:02:20'),
(152, 2179, 82010931, 'Agung', 'Nugroho', 'agungamialiadam@gmail.com', '$2a$12$bf9k/Rx/f/dpOSEzytsLjuvzROFX7wXdZ6Ry4e1GHgSGC5CLs2f/G', '085267407675', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 04:16:19', '2018-05-03 04:16:19'),
(153, 2018, 81021017, 'Andi Muhammad Indra', 'Waspada Amirullah', 'Papi_calluella@yahoo.com', '$2a$12$FoizQBZr1RNc5qafPh5MhO4B5PPGdsJ///WjrBa/bpIC8lSg8WIdi', '081220032003', '1981-02-03 06:40:00', 'Makassar ', NULL, NULL, 58, 1, '2018-05-03 04:22:38', '2018-05-03 06:54:57'),
(154, 2015, 77020778, 'Alfian', 'Nurnas', 'alfiano_27@yahoo.com', '$2a$12$zb.VqoG1H/1Gbuxp8WzxKOOXWvle45q9VYy66zIYfY2y98dolv5R.', '085252882000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 04:26:57', '2018-05-04 21:44:19'),
(155, 2156, 81091016, 'Tony Prasetyo', 'Yudhangkoro', 'tonyprasetyo150981@gmail.com', '$2a$12$BRNqkfstSxPxw.4SH36nW.9NIm30L9nzoququlIBY0oPoT.gcvB0q', '081259989981', NULL, 'Kupang', NULL, NULL, 58, 1, '2018-05-03 04:34:04', '2018-05-03 05:40:14'),
(156, 2173, 76030005, 'Yessi', 'Kurniati', 'yessikurniati@ymail.com', '$2a$12$5BfCv2C.FWiUqDRGy3EE.u5E1HZvzKuSrKjDYGKGFZ6x.TFqAUo8S', '081266316593', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 04:38:35', '2018-05-03 04:38:35'),
(157, 2134, 75091067, 'Robertus', 'B Herry AP.', 'rb99herry@gmail.com', '$2a$12$limXuQIDXwgRFDIQ41J3TuZTUO26tBa/bBhZEI.yI.qjgKG1RChyG', '082160711999', '1975-09-15 06:35:00', 'Malang', 1, NULL, 58, 1, '2018-05-03 04:44:42', '2018-05-07 06:18:37'),
(158, 2087, 83020616, 'Herbin Garda', 'Wiyata Jaya Sianipar', 'herbinsianipar@gmail.com', '$2a$12$zq4/9AknWP1KE3n/dp0O5O.N8yn37LgJx04edg9p7L6oeSmGXDLXW', '08127562003', NULL, 'Jakarta', NULL, NULL, 58, 1, '2018-05-03 04:47:32', '2018-05-03 05:34:42'),
(159, 2056, 81020632, 'Doffie Fahlevi', 'Sanjaya', 'doffie.sespim58@gmail.com', '$2a$12$5CNS8gG.wEifj6OKGqqZ/uBGzwpgE/ALofx6aRxXP8.hU0lre.pXm', '08179882002', '1981-02-26 11:53:00', 'Jakarta', NULL, 'http://45.77.45.112/files/users/avatars/d20a0fb64fb5426698667aa292736a4d01cd65a12dca25a25a0153c54bfce7c0.png', 58, 1, '2018-05-03 04:53:45', '2018-05-16 10:58:05'),
(160, 2100, 81011252, 'Jaka', 'Wahyudi', 'jakawahyudi81@gmail.com', '$2a$12$FsKmKhXM2IbTgcnw88jt1uVDkjRyIx4hcciDE00iRFmxC98VSJtsC', '081326496774', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 04:56:02', '2018-05-03 04:56:02'),
(161, 2187, 77071247, 'Kurnia', 'Hadi', 'hadi.kurnia3@gmail.com', '$2a$12$adbpdhoFFrqgJq5NqfiqU.QILaI9Xx/qESLErFPRlholMTjxN1osy', '089643821999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 04:58:15', '2018-05-03 04:58:15'),
(162, 2010, 77081076, 'Agus', 'Nugraha', 'agoesnugraha58@gmail.com', '$2a$12$6LC7JIgMhVp7lSIVWPxAie7NWSTTrmzgbj3w6oGPIypwIwI60BKTy', '081282761999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 05:03:21', '2018-05-03 05:03:21'),
(163, 2152, 78041233, 'Teddy', 'Chandra', 'teddychandra.wl@gmail.com', '$2a$12$ZAgx.0oP8odd4nJCw8L5juTKdi/.YtMaQpBmL065ayDZsZrkXFyZu', '081344838177', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 05:08:53', '2018-05-03 05:08:53'),
(164, 2049, 76051021, 'Dermawan', 'Marpaung', 'dermawanmarpaung160576@gmail.com', '$2a$12$YU8nWpAPzajL.DxRxTNFee5g6J2a1xXxvB6j9Z9TNJTwdDvROu9WW', '081348301727', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 05:13:21', '2018-05-03 05:13:21'),
(165, 2035, 76081027, 'Arif', 'Hidayat Ritonga', 'arifhidayat.r99@gmail.com', '$2a$12$4ySaK1uZDZIkYSEruno78ep.OSrkiXXD7F8lmxfIvxdXvHkAARi62', '081378551999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 05:17:51', '2018-05-03 05:17:51'),
(166, 2169, 78121238, 'Wimboko', 'Sik', 'wimboko@gmail.com', '$2a$12$QWHtzmacbfmP9pMEBGyChOtnWHs4UguOovtKSMZSp7irm26K15LKW', '081378886789', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 07:00:39', '2018-05-03 07:00:39'),
(167, 2051, 80041275, 'Dhani', 'Catra Nugraha', 'dhani.nugraha007@gmail.com', '$2a$12$6upR/W5SY2JEpzEFCuXOcOzSddOj7okmkQsJVpBKh2b5bomY8OHvq', '08115632001', '1980-04-24 12:26:00', 'Jakarta', NULL, NULL, 58, 1, '2018-05-03 07:03:21', '2018-05-30 13:07:13'),
(168, 2146, 77090908, 'Siswoyo', 'Adi Wijaya', 'wijaya99.SAW@gmail.com', '$2a$12$2XoF8nJpePoYbD16MWwF6ucXaHVDHUdyVw5v.et1ip9jfUkrXoAqG', '085340768999', NULL, 'Jakarta', 1, NULL, 58, 1, '2018-05-03 07:06:35', '2018-05-27 16:54:54'),
(169, 2104, 79030908, 'Kayusman', 'Tri Panungko', 'panungko1979@gmail.com', '$2a$12$/FGIhTjDQvhHNgLN1RtIHu.YiINh7tWUm8B5fZ5LDSHbv7emvFWYm', '087851742000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 07:09:40', '2018-05-03 07:09:40'),
(170, 2145, 76090971, 'Sigit', 'Hariyadi', 'sigith9900@gmail.com', '$2a$12$NcoINzLnx9vf49NIP83R8uOQ9pH5WSz3QN2zDvKCLq8qc.Hmgi6b2', '08773848300', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 07:12:48', '2018-05-03 07:12:48'),
(171, 2092, 79081489, 'Indra Arya', 'Yudha', 'tambunkapolsek@yahoo.com', '$2a$12$ZnqqXf7FGJUsyRwIZYx9cOffVdxBwd1JTldpV58n2/ss.aMepuKXO', '08128818727', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 07:15:40', '2018-05-03 07:15:40'),
(172, 2026, 78081198, 'Anton', 'Firmanto', 'firmantoanton78@gmail.com', '$2a$12$akOIxhkO3lM2DWACShs9TOA04SURo38xUJmhpPuyykHALV6bUG9Ae', '081220517171', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 07:19:13', '2018-05-03 07:19:13'),
(173, 2110, 81101062, 'Mochammad', 'Sajarod Zakun', 'msajarodz@gmail.com', '$2a$12$wy88p5iZMbCzdUGaAsxe1.jOsTq2n7/f4F.EaQtfFiobfu0/2ToyO', '08133330200', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 07:23:14', '2018-05-03 07:23:14'),
(174, 2125, 82030987, 'Oxy Yudha', 'Pratesta', 'ocky_police@yahoo.com', '$2a$12$fNLBZhfMGqCCWjU/OsQMe.7ObypP242Q.Vdn2AmPhT1nV5KlZMFZy', '08138346200', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 07:28:41', '2018-05-03 07:28:41'),
(175, 2133, 79061544, 'Riza', 'Muttaqin', 'riza.muttaqin03@gmail.com', '$2a$12$XUJwMRSCGI15BdYRlNm4eOdcjbC8lB0surXHzReINr9tL52jVdHtG', '085247489063', NULL, NULL, NULL, NULL, 58, 1, '2018-05-03 07:31:59', '2018-05-03 07:31:59'),
(176, 2149, 77100890, 'Syamsurijal', 'Sik', 'rijal.ed17@gmail.com', '$2a$12$qEP.j0mjzaIRdeF91OTj.Ow3Wp1Zi/a9nFVSL5PJPAblhitUr2TQO', '087783331228', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 01:18:17', '2018-05-04 01:18:17'),
(177, 2117, 75100658, 'Muji', 'Supriyanto', 'muji_974158@yahoo.com', '$2a$12$gKmhAX0lemGANBfNLTnLye92WMvSKzeHPUvVjeLqGanQXBVosYfAG', '0811761997', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 01:21:05', '2018-05-04 01:21:05'),
(178, 2038, 82030984, 'Benny', 'Prasetya', 'benny.benox@gmail.com', '$2a$12$zMZv4ssqQ2jXXjibJ8uEBeT61kmGf1NWnNVf846HRVbavXltPdjsm', '081325017774', NULL, 'Tanjung karang', NULL, NULL, 58, 1, '2018-05-04 01:28:16', '2018-05-12 00:26:03'),
(179, 2052, 79040919, 'Dieno', 'Hendro Widodo', 'dienohw58@gmail.com', '$2a$12$/ATRuJXm6SLzUHgl7kfjge.kPdyj5cIB/e4xo.DZKkw3gU2pKikXG', '081376002000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 01:31:12', '2018-06-04 23:25:00'),
(180, 2089, 78061319, 'I Nyoman', 'Sudama', 'man_dama@yahoo.com', '$2a$12$YsBfz2d351ngzb5w3aGmGO8QgpBDAKvoqWm6tKJl9Imd5ne4AhqA6', '082113052503', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 01:32:28', '2018-05-04 01:32:28'),
(181, 2040, 79061509, 'Boy', 'Sutan Binanga Siregar', 'boysiregar2001@yahoo.com', '$2a$12$ptTITs6GlC98GkqnhPegf.t1Y9VC4ZrEdDgDLRbD1Yzxvp1H4Vyl2', '0821223522001', '2018-06-01 04:25:00', 'Jakarta', 1, NULL, 58, 1, '2018-05-04 01:34:02', '2018-05-04 04:37:59'),
(182, 2083, 79100678, 'Handrio', 'Wicaksono', 'handriowicaksono@yahoo.com', '$2a$12$5tsSwTaHXIiG1.JhVC06XOtBUtBOHSg4B4aHNdWSmHRuOZkp3Ye9W', '081348552000', '1979-10-08 04:21:00', 'Balikpapan', 1, 'http://45.77.45.112/files/users/avatars/dab01b21510091dfe1979155a58be835d626b02607e9314f60cc6d5a58b58fd7.png', 58, 1, '2018-05-04 01:35:21', '2018-05-04 04:32:16'),
(183, 2180, 76030954, 'Bambang Yudho', 'Martono', 'bambangyudo99@yahoo.com', '$2a$12$F0Tw1N9pLiESi4i39ZcCTe3VuhGQOVl8olqpeXltGCYxQNBTHY3HS', '081269951999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 01:37:39', '2018-05-04 01:37:39'),
(184, 2126, 76110854, 'Puji', 'Prayitno', '99den.bagus@gmail.com', '$2a$12$OsUIXxw2BS9kwfn7qF47f.3ToKiMc4di0JHlPiW/U0AqWOZwL5PFK', '082192082880', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:01:22', '2018-05-04 02:01:22'),
(185, 2151, 79081439, 'Taufik Noor', 'Isya', 'taufiknoorisya2001@gmail.com', '$2a$12$A6FMbtYJUjFc/f6Hkid3J.vbLO1ezoExkJkWUWivAQsj6Q53BPeHq', '087882289411', NULL, 'Subang', 1, NULL, 58, 1, '2018-05-04 02:04:28', '2018-05-07 10:31:25'),
(186, 2148, 77110842, 'Swittanto', 'Prasetyo', 'switprasetyo@gmail.com', '$2a$12$Oi4mEN5U87AHxSN/6stA8uG4NRjJ0Sa6xseIoLn8lRxWCwMhRgprG', '081274040499', NULL, 'Sidoarjo', NULL, NULL, 58, 1, '2018-05-04 02:08:15', '2018-05-04 03:59:43'),
(187, 2020, 81121060, 'Andi', 'Supriadi', 'supriadiandi2003@gmail.com', '$2a$12$FuuJC0c62jEuZti0jLPVkuxBx9MRLBBSztnqi43v.UyifYv.7EQtS', '082180377781', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:10:29', '2018-05-04 02:10:29'),
(188, 2044, 75111015, 'Danang ', 'Sarifudin', 'syarifalvisyar@gmail.com', '$2a$12$4J/LRDU8mMAjBANFulTYtOZv5TfTJx.D05R.l/28NE.jKHI0Ci6xe', '081251779119', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:12:31', '2018-05-04 02:12:31'),
(189, 2113, 80041300, 'Muh Yusuf', 'Usman', 'myusuf.3204@gmail.com', '$2a$12$MWy4t3qSNHT/x6kvW6Y3Y.QaryIchnEHxykbH/sbNDDsA/EzB1qaa', '081343882003', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:14:41', '2018-05-04 02:14:41'),
(190, 2144, 81121061, 'Setiyawan', 'Eko Prasetiya', 'stiaone.2003@gmail.com', '$2a$12$sMVXY27xn8mz5KG7hqI.fu6LAgMQbISacJEIw7cY2np/lLFoNe5NO', '08127582003', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:16:35', '2018-05-04 02:16:35'),
(191, 2112, 78081263, 'Mohammad', 'Kholid', 'kholidangel.2000@gmail.com', '$2a$12$ejeUpe2r2j5HdxtDOGOiRutvnhY8wJ9KF.o.i38sfBbJPx.y4A4ye', '082225555667', '1978-08-19 11:56:00', 'Pemalang', NULL, NULL, 58, 1, '2018-05-04 02:19:47', '2018-05-16 12:52:12'),
(192, 2076, 78071117, 'Gatot', 'Yulianto', 'gatotyulianto2000@gmail.com', '$2a$12$zOGIRJdEOdOT8HLhYO8J2O/LT6tRO0vm/Wq7g6yLRmGK5hO1fS0P6', '08115422226', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:21:42', '2018-05-04 02:21:42'),
(193, 2030, 76030841, 'Ardi', 'Sutriono', 'ardiboa@yahoo.com', '$2a$12$oj5LfyqJeVBHIn9KNITDUug6HHNkiAMqSyzLmh7o6CpUyL1VVG4rq', '081337331914', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:23:41', '2018-05-04 02:23:41'),
(194, 2041, 76101145, 'Bronto', 'Budiono', 'bintangmuhammad828@yahoo.com', '$2a$12$VYVw2bZ4CezyiG5niOQojOHEfb5vfMfkOwo2Jwr7C6MPio8zW9iAO', '081282681976', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:27:42', '2018-05-04 02:27:42'),
(195, 2157, 78101245, 'Tri', 'Hambodo', 'trihambodo.2002@gmail.com', '$2a$12$hov8uNc/KjhkcNIT1mHqtOcWaqGQFmNsqtuNKxBjz3GfzGFJ4J5ZW', '082117165533', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:37:50', '2018-05-04 02:37:50'),
(196, 2042, 79041533, 'Choiruddin', 'Wachid', 'choiruddinwachid@gmail.com', '$2a$12$AWFsKfW2yvSfW2Jf9h7/RuIJrPSicrSizYAYwGezpGKbrBkKow6B6', '081241192003', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:40:21', '2018-05-04 02:40:21'),
(197, 2014, 12345678, 'Albino', 'Mauzino', 'albino.mauzino@gmail.com', '$2a$12$qqsRUKV5uNIIzjhH4qUHxeCT9rBS1R1/8Y3ZdBc2rqHF/7eWixbz.', '08568245260', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:42:23', '2018-05-04 02:42:23'),
(198, 2060, 79020785, 'Dwi Nur', 'Setiawan', 'dwinur_setiawan@yahoo.com', '$2a$12$CXWtW33vASdsE9jklH1RrOsTOzuAlLX2m19VbzcLmZwzrFVxKWwAu', '081235018888', '1979-02-28 05:37:00', 'Kebumen', NULL, NULL, 58, 1, '2018-05-04 02:44:23', '2018-05-08 06:14:56'),
(199, 2160, 77010816, 'Trisno', 'Eko Santoso', 'trisno.eko1999@gmail.com', '$2a$12$7BaPnxPITDAt7VyUuc.RUOVeUFHTtsCMWuZrynWOoOJCmhBF3HYVG', '08126714151', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:46:09', '2018-05-04 08:56:01'),
(200, 2121, 76110852, 'Nono', 'Suryanto', 'Sespimmen99ed@gmail.com', '$2a$12$U4cTEh0y9.pVrn9iKvfPzuB88.7I4VtZcaHsZqcG/mIhoH0Bgl5Ju', '081319961999', '1976-11-14 00:24:00', 'Bondowoso', 1, 'http://45.77.45.112/files/users/avatars/23786811f8bbc5347bdeb154724c65b6bdd8b1a4220ce442abb9db5c6e2547f3.png', 58, 1, '2018-05-04 02:48:35', '2018-05-06 00:33:32'),
(201, 2061, 82041132, 'Edo', 'Satya Kentriko', 'edokentriko@gmail.com', '$2a$12$4G47n3VqAZPzLfjt6iYAl.qFfWL.XY7s907/ScuT8/KUCiXXmkYu.', '085298561992', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:50:08', '2018-05-04 02:50:08'),
(202, 2150, 76101103, 'Syarif', 'Hidayat', 'syarif_ed99@yahoo.com', '$2a$12$4kTu/2y0sEZches.R66gROuDz1jUQ6o8szAyMVI3JPwOK635L20ru', '085357611999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:52:16', '2018-05-04 02:52:16'),
(203, 2189, 81020631, 'Makung', 'Ismoyo Jati', 'makungis@gmail.com', '$2a$12$QSQYS5MZf2hkfe6PCTEDheDH6u7FUmOmeTeEThyokhwNPYGF4r2am', '081357015701', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 02:58:43', '2018-05-04 02:58:43'),
(204, 2111, 12345678, 'Mohamad', 'Firdaus', 'mfirdaus76@gmail.com', '$2a$12$iMWy.34kYlp8B0rQ0dXJveK1RdAB69g4XDwVYytjvQUhb9LlwXfSO', '087782880154', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 03:00:25', '2018-05-04 03:00:25'),
(205, 2069, 79030875, 'Fauzan', 'Sukmawansyah', 'Fdzans@gmail.com', '$2a$12$RmtRQT1799p4nRxX5y2Mb.Fx2K1qBRvV/Q7gii256S9YKZ7y9DnRq', '081333008681', '1979-03-18 14:39:00', 'Bandung', NULL, 'http://45.77.45.112/files/users/avatars/c69177b326db2a1a75c2b74b65a5c53b5d6a1b47ea1a999ba080c723a9c54be2.png', 58, 1, '2018-05-04 03:08:13', '2018-06-04 14:43:02'),
(206, 2158, 79101234, 'Tri Okta', 'Hendriyanto', 'triokta79@yahoo.com', '$2a$12$9befI.T5Z448wBHbGQ5FgeECDKYa3ZKfYChpd.mUHRZA0JD2Ldhu6', '081245012002', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 03:10:01', '2018-05-04 03:10:01'),
(207, 2029, 79041529, 'Apri', 'Wibowo', 'apriwibowo.wl@gmail.com', '$2a$12$v98tspX4FYqkh9LlVEVrb.N52R32w42yhn8nbqoEwRHETHl2R0n/K', '082346462002', NULL, 'Bandung', NULL, NULL, 58, 1, '2018-05-04 03:11:43', '2018-05-07 05:58:43'),
(208, 2017, 79030904, 'Andi Batara', 'Purwacaraka', 'btsssss2000@gmail.com', '$2a$12$2iJRABsj/6FBygF/DWZHiu/FQnWtI/6vzmbJqjGk2imb2.AQyUzkS', '081321712000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 03:18:13', '2018-05-04 03:18:13'),
(209, 2079, 76030844, 'Gunawan', 'Tri Hatmoyo', 'gunawan.tri.hatmoyo.99ed@gmail.com', '$2a$12$jW8u9pQjYoZ2oEEC8Un8cexAg/zyYXJMagG3YATLWnTitReuMFunG', '082351965652', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 03:20:16', '2018-05-04 03:20:16'),
(210, 2070, 77020766, 'Fedriansyah', 'Sik', 'fedriansyah@ymail.com', '$2a$12$gLmg0AxSfpYJNnfLbPr/PORvTYs.1Dhk/8O.aRWvJ7.p.y9L1IsXK', '08118561999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 03:22:12', '2018-05-04 03:22:12'),
(211, 2031, 77080214, 'Ardiyaningsih', 'Sik', 'ardyardend@gmail.com', '$2a$12$xRimbo689FuBdihUALpwfOS/H6cXXpMs.Os2Qi7rhIu7JpfQ/7mHa', '081290217087', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 03:29:04', '2018-05-04 03:29:04'),
(212, 2091, 79101205, 'Ihsan', 'Sik', 'ihsankasatresta@gmail.com', '$2a$12$HJkq.KsJYIXK9e/6eqk04uSRLYh.l.B/A3iobvVcwDo5/U4FGb.9C', '081352782001', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 03:30:38', '2018-05-04 03:30:38'),
(213, 2066, 78100876, 'Esty', 'Setyo Nugroho', 'esty.ss00@gmail.com', '$2a$12$YqCj/gTWS0uqbYJjwFNh7es9..2Q/nvqm8a9nLnLjfaMlB1jje8ia', '081316752000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 04:28:38', '2018-05-04 04:28:38'),
(214, 2140, 78100906, 'Rudi', 'Hartono', 'rudi_hr@ymail.com', '$2a$12$uqeEWmpNuNllu6IxuyqNLO1HMRAfmDc7gEF2jajnJwXelufpHEZMi', '085266162000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 04:30:31', '2018-05-04 04:30:31'),
(215, 2057, 76090991, 'Dony Setyawan', 'Handakha', 'nibel.dichi@gmail.com', '$2a$12$rgsMTFwncAN.K9OMnhKJoer03F/Pad9TtL9p/CRvdWox./3YFRgCK', '082146462001', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 04:32:25', '2018-05-04 04:32:25'),
(216, 2075, 80031063, 'Galih', 'Indragiri', 'galih_indragiri@yahoo.com', '$2a$12$OL7DEbiw1VCSBQBeOiHTQeAUdBCZQyspK089e6ouzbXv/ZC3aCaWS', '082146462001', NULL, 'Magelang', NULL, 'http://45.77.45.112/files/users/avatars/15ed97befcbacf90702d796dc30144b96058417b5dfc6c6157de9633700b2775.png', 58, 1, '2018-05-04 06:30:33', '2018-05-16 07:56:51'),
(217, 2107, 12345678, 'Luis', 'Da Silva', 'dasilvaluis301@gmail.com', '$2a$12$tJqxyenUuvz73ucBS.4lIOLR0vf4EcI59UrAyKT7Era0ePapOqTgG', '082317817339', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 06:32:22', '2018-05-04 06:32:22'),
(218, 2159, 79111130, 'Tris Lesmana', 'Zeviansyah', 'tris.zevi@gmail.com', '$2a$12$6UOuLnQANuPqLK19CxvgDOdQze.HOiwXFTulWbqeXRIYEKA11Xpve', '081390362001', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 06:34:33', '2018-05-04 06:34:33'),
(219, 2059, 80031093, 'Dwi', 'Budi', 'dwibudi2002@gmail.com', '$2a$12$xv8kl1mCXBeTWHzT5nkWHeTqEGGxcLIB5Rb9DcTwxAwCyraG7s3WO', '08115757080', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 06:36:32', '2018-05-04 06:36:32'),
(220, 2063, 81111051, 'Endang', 'Tri Purwanto', 'tripurwanto2003@gmail.com', '$2a$12$wq94dtxcnx9T7i0a/aj34eSkOXKmSY6el0B/anlOIU29dhqq0Z/2e', '081901002003', '1981-11-18 09:08:00', 'Purbalingga', 1, 'http://45.77.45.112/files/users/avatars/dc66f3189c2b2fa5a3f144af50fb08ee1f90747d15058535eb106644fbde15d7.png', 58, 1, '2018-05-04 06:39:24', '2018-05-23 02:43:01'),
(221, 2197, 79080795, 'Ventie', 'Bernard Musak', 'ventiemusak@gmail.com', '$2a$12$W9JOrb3jRlANkL/OIHxiveixndzr6H16NzsR12SJna00hAFnPPuTW', '082147122000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 06:41:00', '2018-05-04 06:41:00'),
(222, 2023, 81101061, 'Andrian', 'Pramudianto', 'tantya.2003@gmail.com', '$2a$12$l/.SEbOKFVQa2/FVUaUSGOarA.j4s49XwZCGb8AIa7UYzDoIhRs.S', '081337838883', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 06:45:52', '2018-05-04 06:45:52'),
(223, 2053, 79071509, 'Dili', 'Yanto', 'diliyanto63@gmail.com', '$2a$12$XAb0t6R0xNF0/I25grbBvu6lDm/0S/T4yuDXDA4/Oq7dGLaRdla/G', '085240583169', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 06:47:26', '2018-05-04 06:47:26'),
(224, 2186, 82070989, 'I Dewa', 'Gde Juliana', 'dewajuliana2003@gmail.com', '$2a$12$01QH6ATWtRH2TiFU7EZqdeikj5ahqQqNIr3HwVGocYL9brGQ3tY3W', '082210032003', NULL, NULL, NULL, 'http://45.77.45.112/files/users/avatars/9e59c402efcd7ee322e178a1a166bfa58420844e8559fe6ca9ffd3cd23e4c1f6.png', 58, 1, '2018-05-04 06:51:04', '2018-05-08 12:11:43'),
(225, 2115, 81071237, 'Muhammad', 'Rano Hadiyanto', 'ranohadiyanto2003@gmail.com', '$2a$12$Lc/KjILnbVxaN.3Inx.qHuLZwoyG0TA6Uwvus1hB80DRXGaprnc1K', '08127582594', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 06:58:54', '2018-05-04 06:58:54'),
(226, 2109, 77040965, 'Moch Risya', 'Mustario', 'risyamustario@gmail.com', '$2a$12$5omst/VtIj4AI3nyiDtQE.qhxOF5bkUpn7izK7mN3dOSM9zm9/4Te', '082365642000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:00:42', '2018-05-04 07:00:42'),
(227, 2194, 82090780, 'Satria', 'Permana', 'satria_permana25@yahoo.com', '$2a$12$ftd/PH8N4YOcpvn0rdQfoevVCc94RiXwuM76UWPpayPPxID4iDXyK', '08122562756', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:03:11', '2018-05-04 07:03:11'),
(228, 2136, 78081258, 'Ronald', 'Ardiyanto Purba', 'ronald.pur78@gmail.com', '$2a$12$ci3Ih430nQ7IRQqt2PNJ5u4iCFezZzOCYX/SZlbS95FuQI09g649a', '081390662000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:04:53', '2018-05-04 07:04:53'),
(229, 2004, 82120744, 'Adanan', 'Mangopang', 'macmango03@gmail.com', '$2a$12$JBPd99czFO2mZyzyicMYPOmHT8P9Bd.ZxZazp7oObYBC6UpqnJrtC', '081275532003', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:13:13', '2018-05-04 07:13:13');
INSERT INTO `users` (`id`, `no_serdik`, `nrp`, `first_name`, `last_name`, `email`, `password`, `phone`, `bod`, `bop`, `gender`, `avatar_url`, `force_of`, `verified`, `createdAt`, `updatedAt`) VALUES
(230, 2141, 77010546, 'Rudi', 'Setiawan', 'danyonbpelopor@gmail.com', '$2a$12$uqeEWmpNuNllu6IxuyqNLO1HMRAfmDc7gEF2jajnJwXelufpHEZMi', '08112881998', '1977-01-17 14:56:00', 'Pati', NULL, 'http://45.77.45.112/files/users/avatars/1867a55386041b43d0cd7fe102d94bee18c6cb8f73b4b9f4e2092e5a96d045ad.png', 58, 1, '2018-05-04 07:14:51', '2018-05-04 15:04:00'),
(231, 2127, 76050987, 'Puji Saputro', 'Bowo Leksono', 'pj98saputro@gmail.com', '$2a$12$165QoPwlll4uDVq46kpB8uEL0fri1DMpoZjsbz22hQ2IpTS4IcIpK', '08117321998', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:16:51', '2018-05-04 07:16:51'),
(232, 2123, 77040062, 'Nunuk', 'Setiyowati', 'nunuksetiyowati@yahoo.com', '$2a$12$hDyyIsplj/FiwODZoyZYuO5LMLUVj2is1EbNxb2IVvRuRlBzh9tdG', '081260111977', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:19:09', '2018-05-04 07:19:09'),
(233, 2103, 77051089, 'Kade', 'Budiyarta', 'andrew.dewa15@yahoo.com', '$2a$12$g/F0L8dR2Rr2KjoIYQThiOmu0j8kDGYmOC4CDVXgXZXLk5Us5acnK', '081398142003', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:22:19', '2018-05-04 07:22:19'),
(234, 2191, 79040957, 'R.fidelis', 'Purna Timoranto', 'fidelispurnatimoranto_2000@yahoo.co.id', '$2a$12$b2Uvy735g3BGygZj8TB2bOsxsEwvmcYHTfNF0My2/zyGMgtCVjZum', '081315123189', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:25:02', '2018-05-04 07:25:02'),
(235, 2005, 81040857, 'Adhitya', 'Panji Anom', 'adhityapanji190507@gmail.com', '$2a$12$vtZUVzP78b.KnTMKilmUT.3jF3XbZ1xcHX9jgzbisxqb/SApaiRQK', '0811438437', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:26:45', '2018-05-04 07:26:45'),
(237, 2032, 80111075, 'Ardyansyah', 'Sik', 'ardiansyah_2003@yahoo.com', '$2a$12$hlo4WnuhHeixJAoazga9XOvp6YVq3AkuepwA6CxaSs.HoMyEVqFF6', '0811146833', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:30:49', '2018-05-04 07:30:49'),
(238, 2045, 82070987, 'Danny', 'Yulianto', 'danny2003_99n@yahoo.com', '$2a$12$7MLrEkVIbFIq/CDXd2wiveG7ZmbzjGSH8Oz4.ugQuC8pmzmLpHwpK', '081311303919', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:32:49', '2018-05-04 07:32:49'),
(239, 2098, 75050934, 'Irwan', 'Masulin Ginting', 'irwan99ginting@gmail.com', '$2a$12$V.8cYLEFH7.712UDHIsGM.mUzAnxaJA8mg5FGiiKCsNl2hjT8Z2TS', '081377571999', NULL, NULL, NULL, NULL, 58, 1, '2018-05-04 07:38:13', '2018-05-04 07:38:13'),
(240, 2036, 76101140, 'Aszhari', 'Kurniawan', 'aszharik@gmail.com', '$2a$12$RGLZRoiOj6zhK7ijgmZqeuLO8QZ23jVMKwMIxWgtKLj6Bii9bPcp6', '08122222003', '1976-10-06 04:48:00', 'Gunungkidul', NULL, NULL, 58, 1, '2018-05-05 08:53:15', '2018-05-10 04:55:22'),
(246, 2139, 76090116, 'Rositah', 'Umasugi', 'itaumasugi76@gmail.com', '$2a$12$rLygMsF4xzKXlvNMeQCMiOi4pgEaM6PqbrwTT0py7rIAPJ35MI5P6', '081388902830', NULL, NULL, NULL, NULL, 58, 1, '2018-05-09 03:22:13', '2018-05-09 03:22:13'),
(247, 81031242, 81031242, 'zainal ', 'abidin', 'syarif.zainal.abidin@gmail.com', '$2a$12$EDX/GXddR9dBopGZqFeRSe85brTyqlYsPRo4ZURa4Mw5Z2bQWqkbu', '081328807925', NULL, NULL, NULL, NULL, 57, 1, '2018-05-14 04:44:55', '2018-05-14 04:44:55'),
(248, 71110414, 71110414, 'Beny', 'Arjanto', 'benyarjanto94@gmail.com', '$2a$12$771y7.TSKvF7YCHyn/gR9.q33/M3OMvzlQOdG79oSVVYYtYl13TJW', '08113809494', NULL, NULL, NULL, NULL, 48, 1, '2018-05-15 23:54:57', '2018-05-16 06:49:41'),
(249, 200, 76110863, 'Achmad', 'Muhaimin', 'achmadmm13@gmail.com', '$2a$12$oxA.XYDrVujiAAAtAK0Z2eEQAUGyxguVwg3gy3PnajL/34NrZKV/S', '085710052000', NULL, NULL, NULL, NULL, 58, 1, '2018-05-18 16:11:48', '2018-05-18 16:11:48'),
(252, 2124, 78101248, 'Oki', 'ahadian', 'okiahadian2003@gmail.com', '$2a$12$XpswyV5Z7w41E9Zpd4.BoeIhIJD1Vam8GxqKo.L.QLDr5i4xsTtQ.', '082333883331', NULL, NULL, NULL, NULL, 58, 1, '2018-05-23 08:01:50', '2018-05-23 08:01:50'),
(253, 78030778, 78030778, 'Ali ', 'Nurdin', 'alinurdin7803@gmail.com', '$2a$12$QcI.2RtQaO8V7DgCSMgKp.P3ilBcf9e2qfGcEZYWsb3ud/JsoYnSu', '082115091426', NULL, NULL, NULL, NULL, 48, 1, '2018-05-25 02:35:47', '2018-05-25 02:35:47'),
(256, 81080646, 81080646, 'doni', 'hermawan', 'doniwl02@gmail.com', '$2a$12$y6IKuAuKEiE5BuYgkVuzs.tbg9QvHQ41ZJL/QWuGB29M7cPaBd/jq', '081289092002', NULL, NULL, NULL, NULL, 57, 1, '2018-06-05 05:49:42', '2018-06-05 05:49:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_categories`
--
ALTER TABLE `academic_categories`
  ADD PRIMARY KEY (`academic_category_id`);

--
-- Indexes for table `academic_scores`
--
ALTER TABLE `academic_scores`
  ADD PRIMARY KEY (`academic_id`);

--
-- Indexes for table `activities_scores`
--
ALTER TABLE `activities_scores`
  ADD PRIMARY KEY (`activities_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `gabungan_scores`
--
ALTER TABLE `gabungan_scores`
  ADD PRIMARY KEY (`gabungan_id`);

--
-- Indexes for table `health_scores`
--
ALTER TABLE `health_scores`
  ADD PRIMARY KEY (`health_id`);

--
-- Indexes for table `interviewees`
--
ALTER TABLE `interviewees`
  ADD PRIMARY KEY (`interviewee_id`);

--
-- Indexes for table `kodenaskah`
--
ALTER TABLE `kodenaskah`
  ADD PRIMARY KEY (`kode_naskah_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `onesignal`
--
ALTER TABLE `onesignal`
  ADD PRIMARY KEY (`onesignal_id`);

--
-- Indexes for table `personalities_scores`
--
ALTER TABLE `personalities_scores`
  ADD PRIMARY KEY (`personality_id`);

--
-- Indexes for table `pokuji_documents`
--
ALTER TABLE `pokuji_documents`
  ADD PRIMARY KEY (`pokuji_document_id`);

--
-- Indexes for table `pok_uji`
--
ALTER TABLE `pok_uji`
  ADD PRIMARY KEY (`pok_uji_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`post_comment_id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`score_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`thumbnail_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_categories`
--
ALTER TABLE `academic_categories`
  MODIFY `academic_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `academic_scores`
--
ALTER TABLE `academic_scores`
  MODIFY `academic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activities_scores`
--
ALTER TABLE `activities_scores`
  MODIFY `activities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `gabungan_scores`
--
ALTER TABLE `gabungan_scores`
  MODIFY `gabungan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `health_scores`
--
ALTER TABLE `health_scores`
  MODIFY `health_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `interviewees`
--
ALTER TABLE `interviewees`
  MODIFY `interviewee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kodenaskah`
--
ALTER TABLE `kodenaskah`
  MODIFY `kode_naskah_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personalities_scores`
--
ALTER TABLE `personalities_scores`
  MODIFY `personality_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pokuji_documents`
--
ALTER TABLE `pokuji_documents`
  MODIFY `pokuji_document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pok_uji`
--
ALTER TABLE `pok_uji`
  MODIFY `pok_uji_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `post_comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `thumbnail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
