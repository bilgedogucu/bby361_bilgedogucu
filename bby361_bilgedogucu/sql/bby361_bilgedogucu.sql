-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 09:53 PM
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
-- Database: `bby361_bilgedogucu`
--

-- --------------------------------------------------------

--
-- Table structure for table `eser`
--

CREATE TABLE `eser` (
  `eserID` int(1) NOT NULL,
  `eserISBN` bigint(13) DEFAULT NULL,
  `yazarID` int(1) DEFAULT NULL,
  `eserAdi` varchar(35) DEFAULT NULL,
  `eserBasimYeri` varchar(8) DEFAULT NULL,
  `eserBasimTarihi` varchar(10) DEFAULT NULL,
  `eserSayfaSayisi` int(3) DEFAULT NULL,
  `eserDili` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `eser`
--

INSERT INTO `eser` (`eserID`, `eserISBN`, `yazarID`, `eserAdi`, `eserBasimYeri`, `eserBasimTarihi`, `eserSayfaSayisi`, `eserDili`) VALUES
(1, 9786057762931, 1, 'Akhilleus\'un Şarkısı', 'İstanbul', '2022-04-01', 370, 'TR'),
(2, 9789750822971, 2, 'Piraye\'ye Mektuplar', 'İstanbul', '2017-03-01', 772, 'TR'),
(3, 9789754583205, 3, 'Kimi Sevsem Sensin', 'İstanbul', '2016-05-01', 126, 'TR'),
(4, 9786059144964, 4, 'Genç Werther\'in Acıları', 'İstanbul', '2017-06-01', 160, 'TR'),
(5, 9786052237496, 5, 'Jane Eyre', 'Ankara', '1905-07-10', 576, 'TR'),
(6, 9789752123267, 6, 'Başlangıç', 'İstanbul', '2017-10-01', 535, 'TR'),
(7, 9799756870340, 7, 'Monte Kristo Kontu', 'İstanbul', '1905-06-27', 606, 'TR'),
(8, 9786055134105, 8, 'Bakırköy akıl Hastanesi\'nden Anılar', 'İstanbul', '2013-04-01', 223, 'TR'),
(9, 9789752430297, 9, 'Gazi Mustafa Kemal Atatürk', 'İstanbul', '2018-01-01', 480, 'TR');

-- --------------------------------------------------------

--
-- Table structure for table `konu_alt`
--

CREATE TABLE `konu_alt` (
  `konuID` int(2) NOT NULL,
  `konuAlt` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `konu_alt`
--

INSERT INTO `konu_alt` (`konuID`, `konuAlt`) VALUES
(1, 'Macera'),
(2, 'Tarihi'),
(3, 'Romantik'),
(4, 'Bilim Kurgu/Fantastik'),
(5, 'Gizem/Polisiye/Gerilim'),
(6, 'Psikolojik'),
(7, 'Distopya'),
(8, 'Genç Yetişkin'),
(9, 'Dünya Klasikleri'),
(10, 'Yerel Klasikler'),
(11, 'Lirik Şiir'),
(12, 'Epik Şiir'),
(13, 'Halk Şiiri'),
(14, 'Tragedya'),
(15, 'Komedi'),
(16, 'Monologlar'),
(17, 'Biyografi'),
(18, 'Otobiyografi'),
(19, 'Anı'),
(20, 'Deneme'),
(21, 'Popüler Bilim'),
(22, 'Teknoloji ve Bilgisayar'),
(23, 'Resim ve Görsel Sanatlar'),
(24, 'Müzik Tarihi'),
(25, 'Sanat Teorisi'),
(26, 'Dünya Tarihi'),
(27, 'İnsanlık Tarihi'),
(28, 'Savaş Tarihi'),
(29, 'Türkiye Tarihi'),
(30, 'Din Kitapları'),
(31, 'Felsefe Kitapları'),
(32, 'Çocuk Kitapları'),
(33, 'Gençlik Kitapları'),
(34, 'Masal'),
(35, 'Seyehat Rehberleri');

-- --------------------------------------------------------

--
-- Table structure for table `konu_genel`
--

CREATE TABLE `konu_genel` (
  `konuID` int(2) NOT NULL,
  `konuGenel` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `konu_genel`
--

INSERT INTO `konu_genel` (`konuID`, `konuGenel`) VALUES
(1, 'Roman'),
(2, 'Şiir'),
(3, 'Öykü'),
(4, 'Ansiklopedi'),
(5, 'Tiyatro'),
(6, 'Kurgusal Olmayan'),
(7, 'Bilim ve Teknoloji'),
(8, 'Sanat ve Müzik'),
(9, 'Tarih'),
(10, 'Din ve Felsefe'),
(11, 'Çocuk ve Gençlik');

-- --------------------------------------------------------

--
-- Table structure for table `yayinevi`
--

CREATE TABLE `yayinevi` (
  `yayineviID` int(1) NOT NULL,
  `yayineviAdi` varchar(35) DEFAULT NULL,
  `yayineviAdresi` varchar(9) DEFAULT NULL,
  `yayineviKurulusTarihi` varchar(4) DEFAULT NULL,
  `yayineviURL` varchar(24) DEFAULT NULL,
  `yayineviTelefon` bigint(10) DEFAULT NULL,
  `yayineviYayineviE-posta` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `yayinevi`
--

INSERT INTO `yayinevi` (`yayineviID`, `yayineviAdi`, `yayineviAdresi`, `yayineviKurulusTarihi`, `yayineviURL`, `yayineviTelefon`, `yayineviYayineviE-posta`) VALUES
(1, 'İthaki Yayınları', 'İstanbul', '1997', 'www.ithaki.com.tr', 2163483697, 'editor@ithaki.com.tr'),
(2, 'Yapı Kredi Yayınları', 'İstanbul', '2011', 'www.ykykultur.com.tr', 2122524700, 'ykykultur@ykykultur.com.tr'),
(3, 'Türkiye İş Bankası Kültür Yayınları', 'İstanbul', '2002', 'www.iskultur.com.tr', 2122523991, 'info@iskultur.com.tr'),
(4, 'İndigo Kitap', 'İstanbul', '2015', 'www.indigokitap.com', 2124381783, 'info@indigokitap.com'),
(5, 'Dorlion Yayınları', 'Eskişehir', '2017', 'dorlionyayinlari.com', 2222338264, 'dorlionyayinleri@gmail.com'),
(6, 'Altın Kitaplar Yayınevi', 'İstanbul', '1959', 'www.altinkitaplar.com.tr', 2124463888, 'info@altinkitaplar.com.tr'),
(7, 'Antik Kitap', 'İstanbul', 'Yok', 'Yok', 2125138415, 'karizma@antikkitap.com'),
(8, 'Okuyan Us Yayınları', 'İstanbul', '1998', 'www.okuyanus.com.tr', 2122722085, 'okuyanus@okuyanus.com.tr'),
(9, 'Kronik Yayıncılık', 'İstanbul', '2016', 'www.kronikkitap.com', 2122431323, 'kronik@kronikkitap.com');

-- --------------------------------------------------------

--
-- Table structure for table `yazar`
--

CREATE TABLE `yazar` (
  `yazarID` int(1) NOT NULL,
  `yazarAdi` varchar(19) DEFAULT NULL,
  `yazarSoyadi` varchar(7) DEFAULT NULL,
  `yazarDogumTarihi` int(4) DEFAULT NULL,
  `yazarCinsiyeti` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `yazar`
--

INSERT INTO `yazar` (`yazarID`, `yazarAdi`, `yazarSoyadi`, `yazarDogumTarihi`, `yazarCinsiyeti`) VALUES
(1, 'Madeline', 'Miller', 1978, 'K'),
(2, 'Nazım', 'Hikmet', 1902, 'E'),
(3, 'Atilla', 'İlhan', 1925, 'E'),
(4, 'Johann Wolfgang von', 'Goethe', 1749, 'E'),
(5, 'Charlotte', 'Bronte', 1816, 'K'),
(6, 'Dan', 'Brown', 1964, 'E'),
(7, 'Alexandre', 'Dumas', 1802, 'E'),
(8, 'Latif Ruhşat', 'Alpkan', 1950, 'E'),
(9, 'İlber', 'Ortaylı', 1947, 'E');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eser`
--
ALTER TABLE `eser`
  ADD PRIMARY KEY (`eserID`);

--
-- Indexes for table `konu_alt`
--
ALTER TABLE `konu_alt`
  ADD PRIMARY KEY (`konuID`);

--
-- Indexes for table `konu_genel`
--
ALTER TABLE `konu_genel`
  ADD PRIMARY KEY (`konuID`);

--
-- Indexes for table `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`yayineviID`);

--
-- Indexes for table `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eser`
--
ALTER TABLE `eser`
  MODIFY `eserID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `konu_alt`
--
ALTER TABLE `konu_alt`
  MODIFY `konuID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `konu_genel`
--
ALTER TABLE `konu_genel`
  MODIFY `konuID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `yayineviID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
