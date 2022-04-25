-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 11:38 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `articles`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `author` varchar(40) COLLATE utf16_lithuanian_ci NOT NULL,
  `shortContent` varchar(200) COLLATE utf16_lithuanian_ci NOT NULL,
  `content` text COLLATE utf16_lithuanian_ci NOT NULL,
  `publishDate` date NOT NULL,
  `type` varchar(40) COLLATE utf16_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_lithuanian_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `author`, `shortContent`, `content`, `publishDate`, `type`) VALUES
(0, 'auotritetas', 'trumpesnis turinys', 'tiesiog turinys', '2021-01-28', 'ShortArticle'),
(1, 'John Doe', 'Shorty Shorts', 'Very shorty shorts were found', '2020-04-01', 'NewsArticle'),
(2, 'Jonas Jon', 'trumptext', 'ilgesnis tekstukas', '2020-04-02', 'ShortArticle'),
(3, 'PetrPetras', 'velgi trumpas', 'tekstas nedidelis', '2020-04-03', 'PhotoArticle'),
(4, 'Vardenis su Pavarde', 'nebeturiu ideju', 'ilgiausias straipsnis ilgiausias straipsnis ilgiausias straipsnis ilgiausias straipsnis ilgiausias straipsnis ilgiausias straipsnis ilgiausias straipsnis ', '2020-04-06', 'NewsArticle'),
(5, 'Betkas', 'bla', 'blabla', '2020-05-04', 'NewsArticle'),
(6, 'Veikejas', 'trumpulis', 'Ilgas tekstas', '2020-05-25', 'NewsArticle'),
(7, 'Naujokas', 'Nesukūriau', 'taip, turinys', '2021-03-01', 'ShortArticle'),
(20, 'Petras', 'Turinukas', 'Turinesnis', '0000-00-00', 'ShortArticle');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(15) NOT NULL,
  `straipsnio_id` int(10) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `straipsnio_id`, `link`) VALUES
(1, 1, 'https://images.ctfassets.net/hrltx12pl8hq/4plHDVeTkWuFMihxQnzBSb/aea2f06d675c3d710d095306e377382f/shutterstock_554314555_copy.jpg'),
(2, 1, 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg'),
(3, 1, 'https://www.searchenginejournal.com/wp-content/uploads/2018/10/How-to-Boost-Your-Images%E2%80%99-Visibility-on-Google-Images-760x400.png'),
(4, 2, 'https://media3.s-nbcnews.com/j/newscms/2019_41/3047866/191010-japan-stalker-mc-1121_06b4c20bbf96a51dc8663f334404a899.fit-760w.JPG'),
(5, 2, 'https://www.freedigitalphotos.net/images/img/homepage/394230.jpg'),
(6, 2, 'https://image.shutterstock.com/image-photo/ancient-temple-ruins-gadi-sagar-260nw-786126286.jpg'),
(7, 2, 'https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg'),
(8, 3, 'https://s23527.pcdn.co/wp-content/uploads/2020/01/100k-moon.jpg.optimal.jpg'),
(9, 3, 'https://static.toiimg.com/photo/msid-67868104/67868104.jpg?1368689'),
(10, 3, 'https://www.nhm.ac.uk/content/dam/nhmwww/discover/wpy-2020-winning-images/wpy-winning-image-full-width.jpg'),
(11, 3, 'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg'),
(12, 3, 'https://killerattitudestatus.in/wp-content/uploads/2019/12/gud-night-images.jpg'),
(13, 4, 'https://www.w3schools.com/w3css/img_lights.jpg'),
(14, 5, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png'),
(15, 5, 'https://www.gettyimages.com/gi-resources/images/frontdoor/editorial/Velo/GettyImages-Velo-1088643550.jpg'),
(16, 6, 'https://static.toiimg.com/thumb/msid-66476517,imgsize-196276,width-800,height-600,resizemode-75/66476517.jpg'),
(17, 6, 'https://images.ctfassets.net/hrltx12pl8hq/1zlEl4XHkxeDuukJUJyQ7Y/a149a908727e2084d503dc103a620d7f/lohp-image-img-3.jpg?fit=fill&w=480&h=270'),
(18, 6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiT9E-DFBokH8-idRbxYheI-3Bjutkry8_Uw&usqp=CAU'),
(19, 0, 'https://researchdigest.files.wordpress.com/2020/10/gettyimages-923494284.jpg?w=788'),
(20, 0, 'https://www.w3schools.com/howto/img_snow.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `straipsniai_temos`
--

CREATE TABLE `straipsniai_temos` (
  `straipsnio_id` int(11) NOT NULL,
  `temos_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `straipsniai_temos`
--

INSERT INTO `straipsniai_temos` (`straipsnio_id`, `temos_id`) VALUES
(0, 1),
(0, 3),
(0, 4),
(1, 2),
(1, 5),
(2, 4),
(2, 1),
(2, 3),
(2, 6),
(3, 3),
(4, 2),
(4, 3),
(4, 6),
(5, 2),
(5, 4),
(5, 5),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `temos`
--

CREATE TABLE `temos` (
  `id` int(15) NOT NULL,
  `pavadinimas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temos`
--

INSERT INTO `temos` (`id`, `pavadinimas`) VALUES
(1, 'Kriminalai'),
(2, 'Lietuva'),
(3, 'Uzsienis'),
(4, 'Sportas'),
(5, 'Verslas'),
(6, 'Orai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `straipsnio_id` (`straipsnio_id`);

--
-- Indexes for table `straipsniai_temos`
--
ALTER TABLE `straipsniai_temos`
  ADD KEY `straipsnio_id` (`straipsnio_id`),
  ADD KEY `temos_id` (`temos_id`);

--
-- Indexes for table `temos`
--
ALTER TABLE `temos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `temos`
--
ALTER TABLE `temos`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`straipsnio_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `straipsniai_temos`
--
ALTER TABLE `straipsniai_temos`
  ADD CONSTRAINT `straipsniai_temos_ibfk_1` FOREIGN KEY (`temos_id`) REFERENCES `temos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `straipsniai_temos_ibfk_2` FOREIGN KEY (`straipsnio_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
