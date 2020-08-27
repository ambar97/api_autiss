-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2020 at 07:34 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gangguan`
--

-- --------------------------------------------------------

--
-- Table structure for table `aturan`
--

CREATE TABLE `aturan` (
  `idaturan` int(11) NOT NULL,
  `idgejala` int(11) NOT NULL,
  `idpenyakit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aturan`
--

INSERT INTO `aturan` (`idaturan`, `idgejala`, `idpenyakit`) VALUES
(1, 9, 1),
(2, 15, 1),
(3, 18, 1),
(4, 23, 1),
(5, 24, 1),
(6, 3, 2),
(7, 14, 2),
(8, 17, 2),
(9, 19, 2),
(10, 22, 2),
(11, 12, 2),
(12, 1, 3),
(13, 4, 3),
(14, 11, 3),
(15, 20, 3),
(16, 1, 4),
(17, 4, 4),
(18, 6, 4),
(19, 9, 4),
(20, 10, 4),
(21, 13, 4),
(22, 16, 4),
(23, 1, 5),
(24, 2, 5),
(25, 5, 5),
(26, 7, 5),
(27, 8, 5),
(28, 12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `idgejala` int(11) NOT NULL,
  `namagejala` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`idgejala`, `namagejala`) VALUES
(1, 'Kesulitan Tidur'),
(2, 'Mendengar Suara Aneh'),
(3, 'Sering atau mudah menangis'),
(4, 'Kehilangan Minat Untuk Melakukan Aktivitas'),
(5, 'Emosi Menjadi Datar'),
(6, 'Ingatan Terganggu'),
(7, 'Menjauh Dari Lingkungan sekolah'),
(8, 'Pikiran dan Berbicara Kacau'),
(9, 'Rasa Takut dan Khawatir Berlebihan'),
(10, 'Mimpi Buruk'),
(11, 'Sering merasa sedih'),
(12, 'Mempercayai sesuatu yang tidak nyata'),
(13, 'Sulit mengendalikan emosi'),
(14, 'Diliputi perasaan bersalah berlebihan'),
(15, 'perasaan bermusuhan'),
(16, 'menghindari sebuah Objek atau Tempat'),
(17, 'Kehilangan Motivasi'),
(18, 'Sering Cemas'),
(19, 'Moody'),
(20, 'Perasaan Putus Asa'),
(21, 'Kurangnya Daya Ingat'),
(22, 'Bicara Terlalu Cepat'),
(23, 'Gangguan Pernafasan'),
(24, 'Gerakan Tubuh dan Pikiran yang lamban');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `idpenyakit` int(11) NOT NULL,
  `namapenyakit` varchar(99) NOT NULL,
  `keteranganpenyakit` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`idpenyakit`, `namapenyakit`, `keteranganpenyakit`, `gambar`) VALUES
(1, 'Paranoid', 'Gangguan kepribadian paranoid (GKP) atau paranoia adalah salah satu jenis?kelainan kepribadian?yang memengaruhi pola pikir, fungsi, dan perilaku penderitanya. Penderita kondisi ini umumnya mengalami kesulitan memahami dan berhubungan dengan situasi tertentu dan orang lain.\\n\\n\\t\\t\\t\\t\\tAkibatnya, penderita memiliki rasa curiga dan tidak percaya berlebihan secara terus menerus terhadap orang lain. Tanda-tanda lain dari kondisi ini termasuk keengganan untuk bercerita pada orang lain, menyimpan dendam, dan meyakini bahwa semua orang atau peristiwa selalu ?mengancam? atau ?merendahkan? dirinya.\\n\\n\\t\\t\\t\\t\\tKarena pola pikir dan perilaku tersebut, penderita gangguan ini sering mudah marah dan tidak bersahabat dengan orang lain. Hal ini menyebabkan penderita sulit menjalani kegiatan sosial, kerja, dan sekolah dengan normal.\\n\\n\\t\\t\\t\\t\\tGangguan ini dapat berkembang menjadi?delusi?jika pemikiran dan keyakinan yang tidak rasional tersebut dipertahankan secara terus menerus. Pada akhirnya, tidak ada yang dapat meyakinkan orang tersebut bahwa apa yang mereka pikirkan atau rasakan tidaklah benar.\\n\\n\\t\\t\\t\\t\\tKetika seseorang memiliki paranoia atau delusi, tetapi tidak memiliki gejala lainnya (seperti mendengar atau melihat hal yang tidak nyata), kemungkinan mereka memiliki apa yang disebut dengan gangguan delusional.\\n\\n\\t\\t\\t\\t\\tKarena hanya pikiran yang terkena dampak, seseorang dengan gangguan delusional biasanya dapat bekerja dan berfungsi dalam kehidupan sehari-hari. Namun, kehidupan mereka mungkin terbatas dan terisolasi', 'paranoia'),
(2, 'Bipolar', 'Bipolar adalah gangguan mental yang ditandai dengan perubahan emosi yang drastis. Seseorang yang menderita bipolar dapat merasakan gejala mania (sangat senang) dan depresif (sangat terpuruk).\\n\\n\\t\\t\\t\\t\\tGangguan bipolar umumnya ditandai dengan perubahan emosi yang drastis, seperti:\\n\\t\\t\\t\\t\\t-\\t\\tDari sangat bahagia menjadi sangat sedih.\\n\\t\\t\\t\\t\\t-\\t\\tDari percaya diri menjadi pesimis.\\n\\t\\t\\t\\t\\t-\\t\\tDari bersemangat menjadi malas beraktivitas.\\n\\n\\t\\t\\t\\t\\tSetiap fase emosi dapat berlangsung dalam hitungan minggu atau bulan. Bukan hanya pada orang dewasa, gangguan bipolar juga bisa terjadi pada?anak', 'bipolar'),
(3, 'Depresi', 'Depresi adalah gangguan suasana hati (mood) yang ditandai dengan perasaan sedih yang mendalam dan rasa tidak peduli. Semua orang pasti pernah merasa sedih atau murung. Seseorang dinyatakan mengalami depresi jika sudah 2 minggu?merasa sedih, putus harapan, atau tidak berharga.\\n\\n\\t\\t\\t\\t\\tDepresi yang dibiarkan berlanjut dan tidak mendapatkan penanganan bisa menyebabkan terjadinya penurunan produktifitas kerja, gangguan hubungan sosial , hingga munculnya keinginan untuk?bunuh diri.\\n\\n\\t\\t\\t\\t\\tDepresi bisa menyerang siapa saja, termasuk wanita. Depresi pada wanita sering dikaitkan dengan perubahan hormonal, termasuk menstruasi, kehamilan, setelah kehamilan, atau menopause. Namun, sampai saat ini belum ada penelitian yang memastikan penyebab lebih seringnya depresi terjadi pada wanita.', 'depresi'),
(4, 'Post Traumatic Stress Disorder', 'Paskatrauma atau Posttraumatic Stress Disorder?(PTSD) merupakan gangguan yang terjadi pada seseorang setelah mengalami atau menyaksikan kejadian mengerikan, mengejutkan atau berbahaya.\\n\\n\\t\\t\\t\\t\\tPTSD tidak seperti ketakutan biasa yang dialami seseorang ketika mengalami atau menyaksikan kejadian traumatis. Akan tetapi, orang yang mengalami PTSD akan merasakan reaksi negatif yang dapat bertahan hingga 1 bulan lamanya setelah mengalami atau menyaksikan kejadian traumatis tersebut. Mengetahui kerabat dekat mengalami kekerasan atau meninggal secara tiba-tiba atau terpapar berulang-ulang pada rincian kejadian traumatis juga dapat mengalami PTSD.', 'ptsd'),
(5, 'Skizofrenia', 'Skizofrenia paranoid merupakan jenis?skizofrenia?yang paling umum terjadi di masyarakat.\\n\\n\\t\\t\\t\\t\\tSkizofrenia sendiri merupakan penyakit gangguan otak yang menyebabkan penderitanya mengalami kelainan dalam berpikir, serta kelainan dalam merasakan atau mempersepsikan lingkungan sekitarnya.\\n\\n\\t\\t\\t\\t\\tPrinsip singkatnya, penderita skizofrenia memiliki kesulitan dalam menyesuaikan pikirannya dengan realita yang ada.\\n\\n\\t\\t\\t\\t\\tPada dasarnya,?paranoid merupakan salah satu gejala yang dapat muncul pada penderita skizofrenia. Oleh karena itu, beberapa institusi tidak memisahkan antara skizofrenia dan skizofrenia paranoid. Meski demikian, tidak semua penderita skizofrenia mengalami paranoid.\\n\\n\\t\\t\\t\\t\\tPada penderitanya, skizofrenia biasanya muncul pada masa remaja akhir hingga dewasa. Meskipun skizofrenia merupakan penyakit yang diderita seumur hidup, dengan bantuan obat-obatan tertentu, gejala skizofrenia dapat diredakan dan penderitanya dapat lebih mudah untuk beraktivitas.', 'skizofrenia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`idaturan`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`idgejala`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`idpenyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aturan`
--
ALTER TABLE `aturan`
  MODIFY `idaturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `idgejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `idpenyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
