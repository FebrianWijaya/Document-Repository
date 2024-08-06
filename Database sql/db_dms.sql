-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 16, 2024 at 04:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dms`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_users`
--

CREATE TABLE `client_users` (
  `id` int(11) NOT NULL,
  `no_induk` varchar(10) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `perusahaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_users`
--

INSERT INTO `client_users` (`id`, `no_induk`, `nama_depan`, `nama_belakang`, `username`, `password`, `perusahaan`) VALUES
(1, '001', 'test', 'test', 'PT.A', 'a', 'PT.A'),
(3, '002', 'jack', 'tan', 'PT.C', 'password', 'PT.C');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` int(11) NOT NULL,
  `division` varchar(255) NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `years` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `division`, `document_type`, `file_type`, `company_name`, `years`, `folder_name`, `created_at`) VALUES
(129, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.A', 2019, 'Transaksi Perusahaan_PT.A_2019', '2024-01-02 07:38:08'),
(130, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.A', 2020, 'Transaksi Perusahaan_PT.A_2020', '2024-01-02 07:38:17'),
(131, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.A', 2021, 'Transaksi Perusahaan_PT.A_2021', '2024-01-02 07:38:31'),
(132, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.A', 2022, 'Transaksi Perusahaan_PT.A_2022', '2024-01-02 07:38:43'),
(133, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.A', 2023, 'Transaksi Perusahaan_PT.A_2023', '2024-01-02 07:38:50'),
(134, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.B', 2019, 'Transaksi Perusahaan_PT.B_2019', '2024-01-02 07:39:00'),
(135, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.B', 2020, 'Transaksi Perusahaan_PT.B_2020', '2024-01-02 07:39:09'),
(136, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.B', 2021, 'Transaksi Perusahaan_PT.B_2021', '2024-01-02 07:39:19'),
(137, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.B', 2022, 'Transaksi Perusahaan_PT.B_2022', '2024-01-02 07:39:38'),
(138, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.B', 2023, 'Transaksi Perusahaan_PT.B_2023', '2024-01-02 07:39:44'),
(139, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.C', 2019, 'Transaksi Perusahaan_PT.C_2019', '2024-01-02 07:39:52'),
(140, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.C', 2020, 'Transaksi Perusahaan_PT.C_2020', '2024-01-02 07:40:00'),
(141, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.C', 2021, 'Transaksi Perusahaan_PT.C_2021', '2024-01-02 07:40:07'),
(142, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.C', 2022, 'Transaksi Perusahaan_PT.C_2022', '2024-01-02 07:40:22'),
(143, 'admin dan finance', 'Transaksi Perusahaan', 'Transaksi Perusahaan', 'PT.C', 2023, 'Transaksi Perusahaan_PT.C_2023', '2024-01-02 07:40:32'),
(145, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.A', 2020, 'Surat Perikatan_PT.A_2020', '2024-01-02 07:48:42'),
(146, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.A', 2021, 'Surat Perikatan_PT.A_2021', '2024-01-02 07:48:48'),
(147, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.A', 2022, 'Surat Perikatan_PT.A_2022', '2024-01-02 07:49:00'),
(148, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.A', 2023, 'Surat Perikatan_PT.A_2023', '2024-01-02 07:49:09'),
(149, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.A', 2019, 'Surat Penawaran_PT.A_2019', '2024-01-02 07:49:20'),
(150, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.A', 2020, 'Surat Penawaran_PT.A_2020', '2024-01-02 07:49:27'),
(151, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.A', 2021, 'Surat Penawaran_PT.A_2021', '2024-01-02 07:49:39'),
(152, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.A', 2022, 'Surat Penawaran_PT.A_2022', '2024-01-02 07:49:44'),
(153, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.A', 2023, 'Surat Penawaran_PT.A_2023', '2024-01-02 07:49:49'),
(154, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.B', 2019, 'Surat Penawaran_PT.B_2019', '2024-01-02 07:49:58'),
(155, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.B', 2020, 'Surat Penawaran_PT.B_2020', '2024-01-02 07:50:05'),
(156, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.B', 2021, 'Surat Penawaran_PT.B_2021', '2024-01-02 07:50:11'),
(157, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.B', 2022, 'Surat Penawaran_PT.B_2022', '2024-01-02 07:50:19'),
(158, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.B', 2023, 'Surat Penawaran_PT.B_2023', '2024-01-02 07:50:24'),
(159, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.B', 2019, 'Surat Perikatan_PT.B_2019', '2024-01-02 07:50:32'),
(160, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.B', 2020, 'Surat Perikatan_PT.B_2020', '2024-01-02 07:50:39'),
(161, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.B', 2022, 'Surat Perikatan_PT.B_2022', '2024-01-02 07:51:05'),
(162, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.B', 2021, 'Surat Perikatan_PT.B_2021', '2024-01-02 07:51:11'),
(163, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.B', 2023, 'Surat Perikatan_PT.B_2023', '2024-01-02 07:51:33'),
(164, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.C', 2019, 'Surat Perikatan_PT.C_2019', '2024-01-02 07:52:04'),
(165, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.C', 2020, 'Surat Perikatan_PT.C_2020', '2024-01-02 07:52:11'),
(166, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.C', 2021, 'Surat Perikatan_PT.C_2021', '2024-01-02 07:52:18'),
(167, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.C', 2022, 'Surat Perikatan_PT.C_2022', '2024-01-02 07:52:24'),
(168, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.C', 2023, 'Surat Perikatan_PT.C_2023', '2024-01-02 07:52:29'),
(169, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.C', 2019, 'Surat Penawaran_PT.C_2019', '2024-01-02 07:52:42'),
(170, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.C', 2020, 'Surat Penawaran_PT.C_2020', '2024-01-02 07:52:47'),
(171, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.C', 2021, 'Surat Penawaran_PT.C_2021', '2024-01-02 07:52:54'),
(172, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.C', 2022, 'Surat Penawaran_PT.C_2022', '2024-01-02 07:52:59'),
(173, 'admin dan finance', 'surat', 'Surat Penawaran', 'PT.C', 2023, 'Surat Penawaran_PT.C_2023', '2024-01-02 07:53:05'),
(174, 'audit', 'surat', 'Surat Pernyataan kas', 'PT.A', 2019, 'Surat Pernyataan kas_PT.A_2019', '2024-01-02 12:18:24'),
(175, 'audit', 'surat', 'Surat Pernyataan kas', 'PT.A', 2020, 'Surat Pernyataan kas_PT.A_2020', '2024-01-02 12:18:33'),
(176, 'audit', 'surat', 'Surat Pernyataan kas', 'PT.A', 2021, 'Surat Pernyataan kas_PT.A_2021', '2024-01-02 12:18:43'),
(178, 'audit', 'surat', 'Surat Permintaan Data', 'PT.A', 2020, 'Surat Permintaan Data_PT.A_2020', '2024-01-02 12:19:13'),
(179, 'audit', 'surat', 'Surat Permintaan Data', 'PT.A', 2019, 'Surat Permintaan Data_PT.A_2019', '2024-01-02 12:19:29'),
(180, 'audit', 'surat', 'Surat Permintaan Data', 'PT.A', 2021, 'Surat Permintaan Data_PT.A_2021', '2024-01-02 12:19:37'),
(181, 'audit', 'surat', 'Surat Pernyataan Direksi Atas Laporan Keuangan', 'PT.A', 2019, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.A_2019', '2024-01-02 12:22:30'),
(182, 'audit', 'surat', 'Surat Pernyataan Direksi Atas Laporan Keuangan', 'PT.A', 2020, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.A_2020', '2024-01-02 12:22:37'),
(183, 'audit', 'surat', 'Surat Pernyataan Direksi Atas Laporan Keuangan', 'PT.A', 2021, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.A_2021', '2024-01-02 12:22:44'),
(184, 'audit', 'surat', 'Surat Persetujuan Publikasi', 'PT.A', 2019, 'Surat Persetujuan Publikasi_PT.A_2019', '2024-01-02 12:23:09'),
(185, 'audit', 'surat', 'Surat Persetujuan Publikasi', 'PT.A', 2020, 'Surat Persetujuan Publikasi_PT.A_2020', '2024-01-02 12:23:14'),
(186, 'audit', 'surat', 'Surat Persetujuan Publikasi', 'PT.A', 2021, 'Surat Persetujuan Publikasi_PT.A_2021', '2024-01-02 12:23:21'),
(187, 'audit', 'surat', 'Surat Tugas', 'PT.A', 2019, 'Surat Tugas_PT.A_2019', '2024-01-02 12:23:44'),
(188, 'audit', 'surat', 'Surat Tugas', 'PT.A', 2020, 'Surat Tugas_PT.A_2020', '2024-01-02 12:23:51'),
(189, 'audit', 'surat', 'Surat Tugas', 'PT.A', 2021, 'Surat Tugas_PT.A_2021', '2024-01-02 12:23:58'),
(190, 'audit', 'surat', 'Surat Pernyataan kas', 'PT.B', 2019, 'Surat Pernyataan kas_PT.B_2019', '2024-01-02 12:24:18'),
(191, 'audit', 'surat', 'Surat Pernyataan kas', 'PT.B', 2020, 'Surat Pernyataan kas_PT.B_2020', '2024-01-02 12:24:26'),
(192, 'audit', 'surat', 'Surat Pernyataan kas', 'PT.B', 2021, 'Surat Pernyataan kas_PT.B_2021', '2024-01-02 12:24:31'),
(193, 'audit', 'surat', 'Surat Permintaan Data', 'PT.B', 2019, 'Surat Permintaan Data_PT.B_2019', '2024-01-02 12:24:52'),
(194, 'audit', 'surat', 'Surat Permintaan Data', 'PT.B', 2020, 'Surat Permintaan Data_PT.B_2020', '2024-01-02 12:24:58'),
(195, 'audit', 'surat', 'Surat Permintaan Data', 'PT.B', 2021, 'Surat Permintaan Data_PT.B_2021', '2024-01-02 12:25:03'),
(196, 'audit', 'surat', 'Surat Pernyataan Direksi Atas Laporan Keuangan', 'PT.B', 2019, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.B_2019', '2024-01-02 12:25:13'),
(197, 'audit', 'surat', 'Surat Pernyataan Direksi Atas Laporan Keuangan', 'PT.B', 2020, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.B_2020', '2024-01-02 12:25:18'),
(198, 'audit', 'surat', 'Surat Pernyataan Direksi Atas Laporan Keuangan', 'PT.B', 2021, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.B_2021', '2024-01-02 12:25:23'),
(199, 'audit', 'surat', 'Surat Persetujuan Publikasi', 'PT.B', 2019, 'Surat Persetujuan Publikasi_PT.B_2019', '2024-01-02 12:25:33'),
(200, 'audit', 'surat', 'Surat Persetujuan Publikasi', 'PT.B', 2020, 'Surat Persetujuan Publikasi_PT.B_2020', '2024-01-02 12:25:37'),
(201, 'audit', 'surat', 'Surat Persetujuan Publikasi', 'PT.B', 2021, 'Surat Persetujuan Publikasi_PT.B_2021', '2024-01-02 12:25:43'),
(202, 'audit', 'surat', 'Surat Tugas', 'PT.B', 2019, 'Surat Tugas_PT.B_2019', '2024-01-02 12:25:57'),
(203, 'audit', 'surat', 'Surat Tugas', 'PT.B', 2020, 'Surat Tugas_PT.B_2020', '2024-01-02 12:26:02'),
(204, 'audit', 'surat', 'Surat Tugas', 'PT.B', 2021, 'Surat Tugas_PT.B_2021', '2024-01-02 12:26:07'),
(206, 'audit', 'surat', 'Surat Pernyataan kas', 'PT.C', 2020, 'Surat Pernyataan kas_PT.C_2020', '2024-01-02 12:28:34'),
(207, 'audit', 'surat', 'Surat Pernyataan kas', 'PT.C', 2021, 'Surat Pernyataan kas_PT.C_2021', '2024-01-02 12:28:39'),
(208, 'audit', 'surat', 'Surat Pernyataan kas', 'PT.C', 2019, 'Surat Pernyataan kas_PT.C_2019', '2024-01-02 12:28:52'),
(210, 'audit', 'surat', 'Surat Permintaan Data', 'PT.C', 2019, 'Surat Permintaan Data_PT.C_2019', '2024-01-02 12:29:25'),
(211, 'audit', 'surat', 'Surat Permintaan Data', 'PT.C', 2020, 'Surat Permintaan Data_PT.C_2020', '2024-01-02 12:29:29'),
(212, 'audit', 'surat', 'Surat Permintaan Data', 'PT.C', 2021, 'Surat Permintaan Data_PT.C_2021', '2024-01-02 12:29:34'),
(213, 'audit', 'surat', 'Surat Pernyataan Direksi Atas Laporan Keuangan', 'PT.C', 2019, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.C_2019', '2024-01-02 12:29:52'),
(214, 'audit', 'surat', 'Surat Pernyataan Direksi Atas Laporan Keuangan', 'PT.C', 2020, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.C_2020', '2024-01-02 12:29:56'),
(215, 'audit', 'surat', 'Surat Pernyataan Direksi Atas Laporan Keuangan', 'PT.C', 2021, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.C_2021', '2024-01-02 12:30:02'),
(216, 'audit', 'surat', 'Surat Persetujuan Publikasi', 'PT.C', 2019, 'Surat Persetujuan Publikasi_PT.C_2019', '2024-01-02 12:30:23'),
(217, 'audit', 'surat', 'Surat Persetujuan Publikasi', 'PT.C', 2020, 'Surat Persetujuan Publikasi_PT.C_2020', '2024-01-02 12:30:29'),
(218, 'audit', 'surat', 'Surat Persetujuan Publikasi', 'PT.C', 2021, 'Surat Persetujuan Publikasi_PT.C_2021', '2024-01-02 12:30:34'),
(219, 'audit', 'surat', 'Surat Tugas', 'PT.C', 2019, 'Surat Tugas_PT.C_2019', '2024-01-02 12:30:46'),
(220, 'audit', 'surat', 'Surat Tugas', 'PT.C', 2020, 'Surat Tugas_PT.C_2020', '2024-01-02 12:30:50'),
(221, 'audit', 'surat', 'Surat Tugas', 'PT.C', 2021, 'Surat Tugas_PT.C_2021', '2024-01-02 12:30:58'),
(222, 'audit', 'dokumen', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap', 'PT.A', 2019, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.A_2019', '2024-01-02 12:31:44'),
(223, 'audit', 'dokumen', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap', 'PT.A', 2020, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.A_2020', '2024-01-02 12:31:51'),
(224, 'audit', 'dokumen', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap', 'PT.A', 2021, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.A_2021', '2024-01-02 12:31:57'),
(225, 'audit', 'dokumen', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap', 'PT.B', 2019, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.B_2019', '2024-01-02 12:32:06'),
(226, 'audit', 'dokumen', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap', 'PT.B', 2020, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.B_2020', '2024-01-02 12:32:12'),
(227, 'audit', 'dokumen', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap', 'PT.B', 2021, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.B_2021', '2024-01-02 12:32:18'),
(228, 'audit', 'dokumen', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap', 'PT.C', 2019, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.C_2019', '2024-01-02 12:32:26'),
(229, 'audit', 'dokumen', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap', 'PT.C', 2020, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.C_2020', '2024-01-02 12:32:31'),
(230, 'audit', 'dokumen', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap', 'PT.C', 2021, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.C_2021', '2024-01-02 12:32:36'),
(231, 'audit', 'dokumen', 'Dokumen Legal Perusahaan Klien', 'PT.A', 2019, 'Dokumen Legal Perusahaan Klien_PT.A_2019', '2024-01-02 12:33:12'),
(232, 'audit', 'dokumen', 'Dokumen Legal Perusahaan Klien', 'PT.A', 2020, 'Dokumen Legal Perusahaan Klien_PT.A_2020', '2024-01-02 12:33:17'),
(233, 'audit', 'dokumen', 'Dokumen Legal Perusahaan Klien', 'PT.A', 2021, 'Dokumen Legal Perusahaan Klien_PT.A_2021', '2024-01-02 12:33:23'),
(234, 'audit', 'dokumen', 'Dokumen Legal Perusahaan Klien', 'PT.B', 2019, 'Dokumen Legal Perusahaan Klien_PT.B_2019', '2024-01-02 12:33:31'),
(235, 'audit', 'dokumen', 'Dokumen Legal Perusahaan Klien', 'PT.B', 2020, 'Dokumen Legal Perusahaan Klien_PT.B_2020', '2024-01-02 12:33:37'),
(236, 'audit', 'dokumen', 'Dokumen Legal Perusahaan Klien', 'PT.B', 2021, 'Dokumen Legal Perusahaan Klien_PT.B_2021', '2024-01-02 12:33:43'),
(237, 'audit', 'dokumen', 'Dokumen Legal Perusahaan Klien', 'PT.C', 2019, 'Dokumen Legal Perusahaan Klien_PT.C_2019', '2024-01-02 12:33:50'),
(238, 'audit', 'dokumen', 'Dokumen Legal Perusahaan Klien', 'PT.C', 2020, 'Dokumen Legal Perusahaan Klien_PT.C_2020', '2024-01-02 12:33:56'),
(239, 'audit', 'dokumen', 'Dokumen Legal Perusahaan Klien', 'PT.C', 2021, 'Dokumen Legal Perusahaan Klien_PT.C_2021', '2024-01-02 12:34:00'),
(240, 'audit', 'dokumen', 'Kertas Kerja', 'PT.A', 2019, 'Kertas Kerja_PT.A_2019', '2024-01-02 12:34:19'),
(241, 'audit', 'dokumen', 'Kertas Kerja', 'PT.A', 2020, 'Kertas Kerja_PT.A_2020', '2024-01-02 12:34:24'),
(242, 'audit', 'dokumen', 'Kertas Kerja', 'PT.A', 2021, 'Kertas Kerja_PT.A_2021', '2024-01-02 12:34:29'),
(243, 'audit', 'dokumen', 'Kertas Kerja', 'PT.B', 2019, 'Kertas Kerja_PT.B_2019', '2024-01-02 12:34:35'),
(244, 'audit', 'dokumen', 'Kertas Kerja', 'PT.B', 2020, 'Kertas Kerja_PT.B_2020', '2024-01-02 12:34:40'),
(245, 'audit', 'dokumen', 'Kertas Kerja', 'PT.B', 2021, 'Kertas Kerja_PT.B_2021', '2024-01-02 12:34:46'),
(246, 'audit', 'dokumen', 'Kertas Kerja', 'PT.C', 2019, 'Kertas Kerja_PT.C_2019', '2024-01-02 12:34:54'),
(247, 'audit', 'dokumen', 'Kertas Kerja', 'PT.C', 2020, 'Kertas Kerja_PT.C_2020', '2024-01-02 12:34:59'),
(248, 'audit', 'dokumen', 'Kertas Kerja', 'PT.C', 2021, 'Kertas Kerja_PT.C_2021', '2024-01-02 12:35:03'),
(249, 'audit', 'dokumen', 'Konfirmasi Audit', 'PT.A', 2019, 'Konfirmasi Audit_PT.A_2019', '2024-01-02 12:35:22'),
(250, 'audit', 'dokumen', 'Konfirmasi Audit', 'PT.A', 2020, 'Konfirmasi Audit_PT.A_2020', '2024-01-02 12:35:28'),
(251, 'audit', 'dokumen', 'Konfirmasi Audit', 'PT.A', 2021, 'Konfirmasi Audit_PT.A_2021', '2024-01-02 12:35:37'),
(252, 'audit', 'dokumen', 'Konfirmasi Audit', 'PT.B', 2019, 'Konfirmasi Audit_PT.B_2019', '2024-01-02 12:35:42'),
(253, 'audit', 'dokumen', 'Konfirmasi Audit', 'PT.B', 2020, 'Konfirmasi Audit_PT.B_2020', '2024-01-02 12:35:49'),
(254, 'audit', 'dokumen', 'Konfirmasi Audit', 'PT.B', 2021, 'Konfirmasi Audit_PT.B_2021', '2024-01-02 12:35:57'),
(255, 'audit', 'dokumen', 'Konfirmasi Audit', 'PT.C', 2019, 'Konfirmasi Audit_PT.C_2019', '2024-01-02 12:36:07'),
(256, 'audit', 'dokumen', 'Konfirmasi Audit', 'PT.C', 2020, 'Konfirmasi Audit_PT.C_2020', '2024-01-02 12:36:13'),
(257, 'audit', 'dokumen', 'Konfirmasi Audit', 'PT.C', 2021, 'Konfirmasi Audit_PT.C_2021', '2024-01-02 12:36:20'),
(259, 'audit', 'surat', 'Surat Tugas', 'PT.D', 2019, 'Surat Tugas_PT.D_2019', '2024-01-04 16:59:28'),
(261, 'admin dan finance', 'surat', 'Surat Perikatan', 'PT.A', 2019, 'Surat Perikatan_PT.A_2019', '2024-01-07 10:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_files`
--

CREATE TABLE `uploaded_files` (
  `id` int(11) NOT NULL,
  `folder_name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploaded_files`
--

INSERT INTO `uploaded_files` (`id`, `folder_name`, `file_name`, `company_name`, `upload_date`, `version`, `comment`, `division`, `file_type`, `publisher`) VALUES
(143, 'Transaksi Perusahaan_PT.A_2019', 'Transaksi Perusahaan_PT.A_2019_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(144, 'Transaksi Perusahaan_PT.A_2020', 'Transaksi Perusahaan_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(145, 'Transaksi Perusahaan_PT.A_2021', 'Transaksi Perusahaan_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(146, 'Transaksi Perusahaan_PT.A_2022', 'Transaksi Perusahaan_PT.A_2022_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(147, 'Transaksi Perusahaan_PT.A_2023', 'Transaksi Perusahaan_PT.A_2023_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(148, 'Transaksi Perusahaan_PT.B_2019', 'Transaksi Perusahaan_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(149, 'Transaksi Perusahaan_PT.B_2020', 'Transaksi Perusahaan_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(150, 'Transaksi Perusahaan_PT.B_2021', 'Transaksi Perusahaan_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(151, 'Transaksi Perusahaan_PT.B_2022', 'Transaksi Perusahaan_PT.B_2022_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1\r\n', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(152, 'Transaksi Perusahaan_PT.B_2023', 'Transaksi Perusahaan_PT.B_2023_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1\r\n', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(153, 'Transaksi Perusahaan_PT.C_2019', 'Transaksi Perusahaan_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(154, 'Transaksi Perusahaan_PT.C_2020', 'Transaksi Perusahaan_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(155, 'Transaksi Perusahaan_PT.C_2021', 'Transaksi Perusahaan_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(156, 'Transaksi Perusahaan_PT.C_2022', 'Transaksi Perusahaan_PT.C_2022_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(157, 'Transaksi Perusahaan_PT.C_2023', 'Transaksi Perusahaan_PT.C_2023_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'Transaksi Perusahaan', '1'),
(159, 'Surat Perikatan_PT.A_2020', 'Surat Perikatan_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(160, 'Surat Perikatan_PT.A_2021', 'Surat Perikatan_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(161, 'Surat Perikatan_PT.A_2022', 'Surat Perikatan_PT.A_2022_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(162, 'Surat Perikatan_PT.A_2023', 'Surat Perikatan_PT.A_2023_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(163, 'Surat Perikatan_PT.B_2019', 'Surat Perikatan_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(164, 'Surat Perikatan_PT.B_2020', 'Surat Perikatan_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(165, 'Surat Perikatan_PT.B_2022', 'Surat Perikatan_PT.B_2022_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(166, 'Surat Perikatan_PT.B_2021', 'Surat Perikatan_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(167, 'Surat Perikatan_PT.B_2023', 'Surat Perikatan_PT.B_2023_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(168, 'Surat Perikatan_PT.C_2019', 'Surat Perikatan_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(169, 'Surat Perikatan_PT.C_2020', 'Surat Perikatan_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(170, 'Surat Perikatan_PT.C_2021', 'Surat Perikatan_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(171, 'Surat Perikatan_PT.C_2022', 'Surat Perikatan_PT.C_2022_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(172, 'Surat Perikatan_PT.C_2023', 'Surat Perikatan_PT.C_2023_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(173, 'Surat Penawaran_PT.C_2019', 'Surat Penawaran_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(174, 'Surat Penawaran_PT.C_2020', 'Surat Penawaran_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(175, 'Surat Penawaran_PT.C_2021', 'Surat Penawaran_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(176, 'Surat Penawaran_PT.C_2022', 'Surat Penawaran_PT.C_2022_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(177, 'Surat Penawaran_PT.C_2023', 'Surat Penawaran_PT.C_2023_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(178, 'Surat Penawaran_PT.B_2019', 'Surat Penawaran_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(179, 'Surat Penawaran_PT.B_2020', 'Surat Penawaran_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(180, 'Surat Penawaran_PT.B_2021', 'Surat Penawaran_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(181, 'Surat Penawaran_PT.B_2022', 'Surat Penawaran_PT.B_2022_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(182, 'Surat Penawaran_PT.B_2023', 'Surat Penawaran_PT.B_2023_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(183, 'Surat Penawaran_PT.A_2019', 'Surat Penawaran_PT.A_2019_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(184, 'Surat Penawaran_PT.A_2020', 'Surat Penawaran_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(185, 'Surat Penawaran_PT.A_2021', 'Surat Penawaran_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(186, 'Surat Penawaran_PT.A_2022', 'Surat Penawaran_PT.A_2022_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(187, 'Surat Penawaran_PT.A_2023', 'Surat Penawaran_PT.A_2023_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Sample Draft 1', 'Admin dan Finance', 'surat', '1'),
(189, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.A_2019', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.A_2019_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(190, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.A_2020', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(191, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.A_2021', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(192, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.B_2019', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(193, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.B_2020', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(194, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.B_2021', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(195, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.C_2019', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(196, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.C_2020', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(197, 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.C_2021', 'Berita Acara Pemeriksaan Fisik Persediaan Dan Aset Tetap_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(198, 'Dokumen Legal Perusahaan Klien_PT.A_2019', 'Dokumen Legal Perusahaan Klien_PT.A_2019_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(199, 'Dokumen Legal Perusahaan Klien_PT.A_2020', 'Dokumen Legal Perusahaan Klien_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(200, 'Dokumen Legal Perusahaan Klien_PT.A_2021', 'Dokumen Legal Perusahaan Klien_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(201, 'Dokumen Legal Perusahaan Klien_PT.B_2019', 'Dokumen Legal Perusahaan Klien_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(202, 'Dokumen Legal Perusahaan Klien_PT.B_2020', 'Dokumen Legal Perusahaan Klien_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files\r\n', 'Auditor', 'document', '1'),
(203, 'Dokumen Legal Perusahaan Klien_PT.B_2021', 'Dokumen Legal Perusahaan Klien_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(204, 'Dokumen Legal Perusahaan Klien_PT.C_2019', 'Dokumen Legal Perusahaan Klien_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(205, 'Dokumen Legal Perusahaan Klien_PT.C_2020', 'Dokumen Legal Perusahaan Klien_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(206, 'Dokumen Legal Perusahaan Klien_PT.C_2021', 'Dokumen Legal Perusahaan Klien_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files\r\n', 'Auditor', 'document', '1'),
(207, 'Kertas Kerja_PT.A_2019', 'Kertas Kerja_PT.A_2019_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(208, 'Kertas Kerja_PT.A_2020', 'Kertas Kerja_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(209, 'Kertas Kerja_PT.A_2021', 'Kertas Kerja_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(210, 'Kertas Kerja_PT.B_2019', 'Kertas Kerja_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(211, 'Kertas Kerja_PT.B_2020', 'Kertas Kerja_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(212, 'Kertas Kerja_PT.B_2021', 'Kertas Kerja_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files\r\n', 'Auditor', 'document', '1'),
(213, 'Kertas Kerja_PT.C_2019', 'Kertas Kerja_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(214, 'Kertas Kerja_PT.C_2020', 'Kertas Kerja_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(215, 'Kertas Kerja_PT.C_2021', 'Kertas Kerja_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(216, 'Konfirmasi Audit_PT.A_2019', 'Konfirmasi Audit_PT.A_2019_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(217, 'Konfirmasi Audit_PT.A_2020', 'Konfirmasi Audit_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(218, 'Konfirmasi Audit_PT.A_2021', 'Konfirmasi Audit_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(219, 'Konfirmasi Audit_PT.B_2019', 'Konfirmasi Audit_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(220, 'Konfirmasi Audit_PT.B_2020', 'Konfirmasi Audit_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(221, 'Konfirmasi Audit_PT.B_2021', 'Konfirmasi Audit_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(222, 'Konfirmasi Audit_PT.C_2019', 'Konfirmasi Audit_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(223, 'Konfirmasi Audit_PT.C_2020', 'Konfirmasi Audit_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'document', '1'),
(224, 'Konfirmasi Audit_PT.C_2021', 'Konfirmasi Audit_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files\r\n', 'Auditor', 'document', '1'),
(225, 'Surat Pernyataan kas_PT.A_2019', 'Surat Pernyataan kas_PT.A_2019_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(226, 'Surat Pernyataan kas_PT.A_2020', 'Surat Pernyataan kas_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(227, 'Surat Pernyataan kas_PT.A_2021', 'Surat Pernyataan kas_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(228, 'Surat Pernyataan kas_PT.B_2019', 'Surat Pernyataan kas_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(229, 'Surat Pernyataan kas_PT.B_2020', 'Surat Pernyataan kas_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(230, 'Surat Pernyataan kas_PT.B_2021', 'Surat Pernyataan kas_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files\r\n', 'Auditor', 'surat', '1'),
(231, 'Surat Pernyataan kas_PT.C_2020', 'Surat Pernyataan kas_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(232, 'Surat Pernyataan kas_PT.C_2021', 'Surat Pernyataan kas_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(233, 'Surat Pernyataan kas_PT.C_2019', 'Surat Pernyataan kas_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files\r\n', 'Auditor', 'surat', '1'),
(234, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.A_2019', 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.A_2019_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(235, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.A_2020', 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(236, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.A_2021', 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(237, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.B_2019', 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(238, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.B_2020', 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(239, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.B_2021', 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(240, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.C_2019', 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(241, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.C_2020', 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(242, 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.C_2021', 'Surat Pernyataan Direksi Atas Laporan Keuangan_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(243, 'Surat Permintaan Data_PT.A_2020', 'Surat Permintaan Data_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(244, 'Surat Permintaan Data_PT.A_2019', 'Surat Permintaan Data_PT.A_2019_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(245, 'Surat Permintaan Data_PT.A_2021', 'Surat Permintaan Data_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(246, 'Surat Permintaan Data_PT.B_2019', 'Surat Permintaan Data_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(247, 'Surat Permintaan Data_PT.B_2020', 'Surat Permintaan Data_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(248, 'Surat Permintaan Data_PT.B_2021', 'Surat Permintaan Data_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(249, 'Surat Permintaan Data_PT.C_2019', 'Surat Permintaan Data_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(250, 'Surat Permintaan Data_PT.C_2020', 'Surat Permintaan Data_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(251, 'Surat Permintaan Data_PT.C_2021', 'Surat Permintaan Data_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(252, 'Surat Persetujuan Publikasi_PT.A_2019', 'Surat Persetujuan Publikasi_PT.A_2019_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(253, 'Surat Persetujuan Publikasi_PT.A_2020', 'Surat Persetujuan Publikasi_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(254, 'Surat Persetujuan Publikasi_PT.A_2021', 'Surat Persetujuan Publikasi_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(255, 'Surat Persetujuan Publikasi_PT.B_2019', 'Surat Persetujuan Publikasi_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(256, 'Surat Persetujuan Publikasi_PT.B_2020', 'Surat Persetujuan Publikasi_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(257, 'Surat Persetujuan Publikasi_PT.B_2021', 'Surat Persetujuan Publikasi_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(258, 'Surat Persetujuan Publikasi_PT.C_2019', 'Surat Persetujuan Publikasi_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(259, 'Surat Persetujuan Publikasi_PT.C_2020', 'Surat Persetujuan Publikasi_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(260, 'Surat Persetujuan Publikasi_PT.C_2021', 'Surat Persetujuan Publikasi_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(261, 'Surat Tugas_PT.A_2019', 'Surat Tugas_PT.A_2019_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(262, 'Surat Tugas_PT.A_2020', 'Surat Tugas_PT.A_2020_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(263, 'Surat Tugas_PT.A_2021', 'Surat Tugas_PT.A_2021_ver.1.pdf', 'PT.A', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(264, 'Surat Tugas_PT.B_2019', 'Surat Tugas_PT.B_2019_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(265, 'Surat Tugas_PT.B_2020', 'Surat Tugas_PT.B_2020_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(266, 'Surat Tugas_PT.B_2021', 'Surat Tugas_PT.B_2021_ver.1.pdf', 'PT.B', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(267, 'Surat Tugas_PT.C_2019', 'Surat Tugas_PT.C_2019_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(268, 'Surat Tugas_PT.C_2020', 'Surat Tugas_PT.C_2020_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(269, 'Surat Tugas_PT.C_2021', 'Surat Tugas_PT.C_2021_ver.1.pdf', 'PT.C', '2024-01-02', '1', 'Draft 1 Sample Files', 'Auditor', 'surat', '1'),
(350, 'Surat Perikatan_PT.A_2019', 'Surat Perikatan_PT.A_20240107_ver.1.a.pdf', 'PT.A', '2024-01-07', '1.a', '\r\n', 'Admin dan Finance', 'surat', '1'),
(351, 'Surat Perikatan_PT.A_2019', 'Surat Perikatan_PT.A_20240107_ver.1.b.pdf', 'PT.A', '2024-01-07', '1.b', 'k', 'Admin dan Finance', 'surat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `no_induk` varchar(10) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `no_induk`, `nama_depan`, `nama_belakang`, `username`, `password`, `divisi`, `jabatan`) VALUES
(26, '001', 'Febrian', 'Wijaya', '1', '1', 'Administrator', 'Super Admin'),
(28, '002', 'dony', 'yen', '2', '2', 'Auditor', 'Manager'),
(29, '003', 'iyang', 'wiwi', '3', '3', 'Admin dan Finance', 'Supervisor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_users`
--
ALTER TABLE `client_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_induk` (`no_induk`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client_users`
--
ALTER TABLE `client_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
