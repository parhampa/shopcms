-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2019 at 03:30 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zendegino`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `family` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `mob` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `addres` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user`, `pass`, `name`, `family`, `email`, `mob`, `tel`, `addres`) VALUES
('admin', '44332211', 'admin', 'admin', 'parhamtrojan@hotmail.com', '09155630215', '', ''),
('zendeg16', 'qwerewq', 'fatemeh', 'Ø­Ø³ÛŒÙ†ÛŒ', 'ftm.ho33eini@gmail.com', '09370088389', '32718962', 'sajad'),
('zendeg20', 'qqqqq', 'atrf', 'Ù†Ø±ÛŒÙ…Ø§Ù†', 'FIKERF', '09370088389', '36223661', 'Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ Ø¨ÛŒÙ† ÙØ±Ø¯ÙˆØ³ÛŒ 20 Ùˆ 22 Ù¾Ù„Ø§Ú© 456'),
('zendegino', '6666666', 'fatemeh', 'Ø­Ø³ÛŒÙ†ÛŒ', 'Ø­Ø®ØªØ­Ø®', '09104119279', '36223661', 'Ø´Ø´Ø´Ø´mashad');

-- --------------------------------------------------------

--
-- Table structure for table `aghsat`
--

CREATE TABLE `aghsat` (
  `id` int(11) NOT NULL,
  `Pid` int(11) NOT NULL,
  `price1` decimal(10,0) NOT NULL,
  `price2` decimal(10,0) NOT NULL,
  `month1` int(11) NOT NULL,
  `month2` int(11) NOT NULL,
  `ty` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `aghsat`
--

INSERT INTO `aghsat` (`id`, `Pid`, `price1`, `price2`, `month1`, `month2`, `ty`) VALUES
(4, 24, '100', '8000', 1, 2, b'0'),
(5, 24, '10000', '50000', 1, 33, b'0'),
(6, 23, '50000000', '60000000', 2, 5, b'1'),
(7, 24, '10000', '2000', 2, 33, b'1'),
(8, 23, '5000', '34234', 5, 6, b'1'),
(9, 22, '400', '555', 4, 6, b'1'),
(10, 21, '452545', '10111111', 5, 6, b'1'),
(11, 20, '333333', '4444', 2, 6, b'1'),
(12, 19, '100', '666', 6, 7, b'1'),
(13, 18, '5000', '66666', 1, 18, b'1'),
(14, 17, '10000000', '2200000', 1, 6, b'1'),
(15, 16, '10000', '50000', 2, 33, b'1'),
(16, 24, '10000', '222222', 2, 36, b'0'),
(17, 23, '5000', '2200000', 6, 36, b'0'),
(18, 22, '10000', '50000', 1, 36, b'0'),
(19, 21, '10000', '50000', 1, 36, b'0'),
(20, 20, '10000', '50000', 1, 36, b'0'),
(21, 19, '10000', '50000', 1, 36, b'0'),
(22, 18, '10000', '2200000', 6, 5, b'0'),
(23, 17, '10000', '123', 6, 5, b'0'),
(24, 16, '100', '123', 2, 36, b'0'),
(25, 15, '10000', '2200000', 2, 36, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `asnaf`
--

CREATE TABLE `asnaf` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `pic` text COLLATE utf8_persian_ci NOT NULL,
  `father` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `asnaf`
--

INSERT INTO `asnaf` (`id`, `title`, `pic`, `father`, `type`) VALUES
(1, 'Ø³Ø§Ù„Ù† Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø¹Ø±ÙˆØ³', '../uploads/7ed31ba79bd3f67cc931858a9b4a8299salone-zibaee-aroos.png', 0, 0),
(2, 'Ø³Ø§Ù„Ù† ØªØ®ØµØµÛŒ Ø§Ù¾ÛŒÙ„Ø§Ø³ÛŒÙˆÙ†', '../uploads/7a103356b4d40722832557f002d69375waxing.png', 1, 0),
(3, 'Ù†Ø§Ø®Ù†', '../uploads/7d64c94ca90104e8810a9ecf636bbe32nakhon.png', 1, 0),
(4, 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ùˆ Ø¢ØªÙ„ÛŒÙ‡', '../uploads/4b339fbe927c23c9860ef955229c3273058-studio.png', 0, 0),
(5, 'Ø¢ØªÙ„ÛŒÙ‡ Ú©ÙˆØ¯Ú©', '../uploads/287f875583d0c8ac063769904bc1efffatoliye-koodak.png', 4, 0),
(6, 'Ù…Ø²ÙˆÙ† Ù„Ø¨Ø§Ø³ Ø¹Ø±ÙˆØ³', '../uploads/be519fc52fc945917f49bd0e78a0feb1062-mezone-lebase-aroos.png', 0, 0),
(7, 'Ù…Ø²ÙˆÙ† Ù„Ø¨Ø§Ø³ Ø´Ø¨', '../uploads/73c7f982a6440d178eb64f2771fd042b063-mezone-lebase-shab.png', 6, 0),
(8, 'Ø³ÙØ±Ù‡ Ø¹Ù‚Ø¯', '../uploads/fbb3d03378b0a2cd5f9c79fb6ccfef3fsofre-aghd.png', 6, 0),
(9, 'Ø®Ø¯Ù…Ø§Øª Ù†Ø§Ù…Ø²Ø¯ÛŒ', '../uploads/201e1b9a20924188d64c22b424e900bd059-khadamete-namzadi.png', 6, 0),
(11, 'Ù…Ø¨Ù„Ù…Ø§Ù† Ùˆ ØµÙ†Ø§ÛŒØ¹ Ú†ÙˆØ¨', '../uploads/7d834db2d750e1f193ac57e8bd1cedc9mobleman.png', 0, 1),
(12, 'ØªØ§Ù„Ø§Ø± Ø¹Ø±ÙˆØ³ÛŒ', '../uploads/5546e392ba9fb81cac0ba106225c4365talare-aroosi.png', 0, 0),
(13, 'Ø¨Ø§Øº ØªØ§Ù„Ø§Ø±', '../uploads/f0d362edab593495401c82b6ed4ac561021-bagh-talar.png', 0, 0),
(14, 'Ø¨Ø§Øº Ø¹Ø±ÙˆØ³ÛŒ', '../uploads/9a03ae7de4abe31bb97953fcdc333073baghe-aroosi.png', 13, 0),
(15, 'ØªØ´Ø±ÛŒÙØ§Øª Ø¹Ø±ÙˆØ³ÛŒ', '../uploads/df95681ec0ff4becb1cfe44b194a5785tashrifate-aroosi.png', 0, 0),
(16, 'Ù„Ø¨Ø§Ø³ Ø¯Ø§Ù…Ø§Ø¯', '../uploads/410d42feaa7aa9edce729ffc8e27c90b068-lebase-damad.png', 0, 0),
(17, 'Ù¾ÛŒØ±Ø§ÛŒØ´ Ùˆ Ú¯Ø±ÛŒÙ… Ø¯Ø§Ù…Ø§Ø¯', '../uploads/7b08eaaf5bd0789a7e748b50ee5c866a031-pirayesh-va-grim-damad.png', 0, 0),
(18, 'Ú©Ø§Ø±Øª Ø¹Ø±ÙˆØ³ÛŒ', '../uploads/82ab93601972ed76cbad5f459ad37373048-karte-aroosi.png', 0, 0),
(19, 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø³Ø±Ø§', '../uploads/60d51a059bde5b8b2096f8ea1250593f012-shirini-sara.png', 0, 0),
(20, 'Ú¯Ù„ ÙØ±ÙˆØ´ÛŒ', '../uploads/6852ed395efb5ab92990c073c1a054d9007-gol-froshi.png', 0, 0),
(21, 'Ú¯Ø±ÙˆÙ‡ Ù…ÙˆØ³ÛŒÙ‚ÛŒ', '../uploads/48c83670fd021c8a52fb6bb8b1f3897f049-music.png', 0, 0),
(22, 'Ø§Ø¬Ø§Ø±Ù‡ Ù…Ø§Ø´ÛŒÙ† Ø¹Ø±ÙˆØ³', '../uploads/28abdef5097bbbe4773b0b4a548281c9061-ejare-mashin-aroos.png', 0, 0),
(23, 'Ù‡ØªÙ„', '../uploads/c3cc8cb1e3053baf4a2dfd0a878bdda6hotel.png', 0, 0),
(24, 'Ú©ØªØ±ÛŒÙ†Ú¯ Ùˆ Ø±Ø³ØªÙˆØ±Ø§Ù†', '../uploads/ea407988f79dec5a4f3374b02becb140027-resturant.png', 0, 0),
(25, 'Ù…Ø­Ø¶Ø± Ø§Ø²Ø¯ÙˆØ§Ø¬', '../uploads/29c81a25dcceeb11908947d54ee8925c046-mahzar.png', 0, 0),
(26, 'Ø¢Ú˜Ø§Ù†Ø³ Ù…Ø³Ø§ÙØ±ØªÛŒ', '../uploads/ca093f8a211b2802eeae7a6b4aa2e30c039-azhanse-mosaferati.png', 0, 0),
(27, 'Ú©Ù„ÛŒÙ†ÛŒÚ© Ù¾ÙˆØ³Øª Ùˆ Ù…Ùˆ Ùˆ Ø²ÛŒØ¨Ø§ÛŒÛŒ', '../uploads/9c605e10a342e2eaefa5fe9b88f7d64dclinic-poost-moo-zibaee.png', 0, 0),
(28, 'Ù„ÙˆØ§Ø²Ù… Ø®Ø§Ù†Ú¯ÛŒ', '../uploads/943b40fa97789bfb54deb1e5305507d6lavazeme-khanegi.png', 0, 1),
(29, 'ØµÙˆØª Ùˆ ØªØµÙˆÛŒØ±', '../uploads/cb70a9a0af65fe4f77419fb8423f702bsout-va-tasvir.png', 28, 1),
(30, 'Ù„ÙˆØ§Ø²Ù… Ø¢Ø´Ù¾Ø²Ø®Ø§Ù†Ù‡', '../uploads/ab326aef40a97e13c296b220ea206829lavazem-ashpazkhane.png', 28, 1),
(31, 'Ú†ÛŒÙ†ÛŒ Ùˆ Ø¨Ù„ÙˆØ±ÛŒØ¬Ø§Øª', '../uploads/39da44f01eb263812365f9dba7d2548cbolurijat.png', 28, 1),
(32, 'Ù¾Ù„Ø§Ø³ØªÛŒÚ©', '../uploads/a0dba93b44ada25ad23b25e360785ac7plastic.png', 28, 1),
(33, 'Ù¾Ø±Ø¯Ù‡', '../uploads/58b02293cf1ad079eebc9e9aa60f6b35parde.png', 0, 1),
(34, 'Ù„ÙˆÚ©Ø³ Ùˆ Ù„ÙˆØ³ØªØ±', '../uploads/8a967b3bb89895fd72f38ab2639017c7looster.png', 0, 1),
(35, 'Ø¯Ú©ÙˆØ±ÛŒ Ùˆ Ú©Ø§Ø¯ÙˆÛŒÛŒ', '../uploads/247dfa039914ddc98ce7d411b96dbeecdekori-kadooee.png', 34, 1),
(36, 'ÙØ±Ø´', '../uploads/e53ad79003bdff4bbd391458483dbbadfarsh.png', 0, 1),
(37, 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨', '../uploads/e0697a7c4999f68467bdef3fe3b50b15003-kalaye-khab.png', 0, 1),
(38, 'Ø·Ù„Ø§ Ùˆ Ø¬ÙˆØ§Ù‡Ø±', '../uploads/0a99c9b0737651852f21c398e31b813c065-tala-javaher.png', 0, 1),
(39, 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ùˆ Ø¨Ù‡Ø¯Ø§Ø´ØªÛŒ', '../uploads/80b1b2d26a627aa2c2e0815f630b4b18arayeshi-behdashti.png', 0, 1),
(40, 'Ú©ÛŒÙ Ùˆ Ú©ÙØ´', '../uploads/b8b258f0c7964b004b5046be22455763001-kifo-kafsh.png', 0, 1),
(41, 'Ø³Ø§Ø¹Øª', '../uploads/22ae026a7c494fb04e40482a07b911f8saat.png', 0, 1),
(42, 'Ø¢ÛŒÛŒÙ†Ù‡ Ùˆ Ø´Ù…Ø¹Ø¯Ø§Ù†', '../uploads/ae2c83456dc0acdb1583f5a589952116060-ayne-shamdan.png', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `link` text COLLATE utf8_persian_ci NOT NULL,
  `pic` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `link`, `pic`) VALUES
(6, 'Ø¨Ù†Ø± Ø´Ù…Ø§Ø±Ù‡ 1', '', '../uploads/64646792d789ec259caddc057b1f6908ft.jpg'),
(7, 'Ø¨Ù†Ø± Ø´Ù…Ø§Ø±Ù‡ 2', '', '../uploads/fa8ff0ce00eb30a537b4fe56e7043f56ft2.jpg'),
(8, 'Ø¨Ù†Ø± Ø´Ù…Ø§Ø±Ù‡ 3', '', '../uploads/bef1f388f641b8a141fdeded0f1d0aa2ft3.jpg'),
(9, 'Ø¨Ù†Ø± Ø´Ù…Ø§Ø±Ù‡ 4', '', '../uploads/993ebf17a455f207c42af89f23a0d393ft4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bazaryab`
--

CREATE TABLE `bazaryab` (
  `user` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `family` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `mob` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `addres` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `bazaryab`
--

INSERT INTO `bazaryab` (`user`, `pass`, `name`, `family`, `mob`, `tel`, `addres`) VALUES
('test', '123', 'ali', 'hasani', '09155630215', '0561', 'mashhad');

-- --------------------------------------------------------

--
-- Table structure for table `comment_user`
--

CREATE TABLE `comment_user` (
  `id` int(11) NOT NULL,
  `name` varchar(600) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(600) COLLATE utf8_persian_ci NOT NULL,
  `txt` text COLLATE utf8_persian_ci NOT NULL,
  `tarikh` date NOT NULL,
  `saat` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `rep` int(11) DEFAULT NULL,
  `user` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `visit` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `comment_user`
--

INSERT INTO `comment_user` (`id`, `name`, `email`, `txt`, `tarikh`, `saat`, `rep`, `user`, `visit`) VALUES
(3, 'dfgdfgdfg', 'dfgdfg@sadfasdcxv.dsad', 'sdfdsfsdfsdf\r\nsdfsdfsdf\r\nsdfsdfsdf\r\nsdfsdfsdf\r\nsdsdf\r\ndsfsdf', '2019-02-06', '12:22', NULL, '_gallery_nikfarjam', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `tarikh` date NOT NULL,
  `short_content` text COLLATE utf8_persian_ci NOT NULL,
  `long_content` text COLLATE utf8_persian_ci NOT NULL,
  `pic` text COLLATE utf8_persian_ci NOT NULL,
  `keywords` text COLLATE utf8_persian_ci NOT NULL,
  `category` varchar(500) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `tarikh`, `short_content`, `long_content`, `pic`, `keywords`, `category`) VALUES
(1, 'Ù…Ø·Ù„Ø¨1', '0000-00-00', 'Ø¨Ù†Ø§Ù… Ø®Ø¯Ø§', 'Ø¨Ù†Ø§Ù… Ø®Ø¯Ø§', '../uploads/6f7d29184db1cb343c1091bcd2462e86Penguins.jpg', 'Ù…Ø·Ù„Ø¨ØŒØ§ÙˆÙ„', '6'),
(2, 'Ù…Ø·Ù„Ø¨2', '0000-00-00', 'Ù†Ù…ÛŒØ¨Ø¨Ù…Ù†Ø¨Ø±', 'ÛŒØ¨ØªÙ„Ù‡ÛŒÙ‚Ù„Ø§Ù‡Ø³Ø«Ù‚Ù„Ø¯Ø±Ù…Ù†ÛŒØ¨Ù„Ø°ÛŒØ¨Ù†Ù„', '../uploads/8ac784e91e0b68876aec049cbed34717Chrysanthemum.jpg', 'Ù„ÙÙ‚Ù„Ø«Ø´Ù‚Ù„', '11'),
(3, 'Ù…Ø·Ù„Ø¨3', '0000-00-00', 'jgfcjgcjgh', 'jhfjhfjhcgcbcnbn', '../uploads/40a4051aed9ac5fadf2da02faa5a179aJellyfish.jpg', 'kjgkgyhg', '9'),
(4, 'Ù…Ø·Ù„Ø¨4', '0000-00-00', 'kghj', 'ikkk', '../uploads/53319281ae9d47c6a51c6eedb5704d79Desert.jpg', 'ooooo', '10'),
(5, 'Ù…Ø·Ù„Ø¨5', '0000-00-00', 'kghj', 'ikkk', '../uploads/77b0a6e0913f59ebb6d419a89a06b024Penguins.jpg', 'ooooo', '10'),
(8, 'Ù…Ø·Ù„Ø¨5', '2019-02-12', '                                kghj                            ', '                                ikkk                            ', '', 'ooooo', '6'),
(9, 'Ù…Ø·Ù„Ø¨44', '2019-02-12', 'kghjgrrrgrgkghjgrrrgrg', 'ikkkrthdrghbtghbrtgbnhrthsdrthkkkrthdrghbtghbrtgbnhrthsdrth', '', 'ooooorthrthxxxx', '11');

-- --------------------------------------------------------

--
-- Table structure for table `content_cat`
--

CREATE TABLE `content_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `Fid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `content_cat`
--

INSERT INTO `content_cat` (`id`, `name`, `Fid`) VALUES
(4, 'Ø²Ù…Ø§Ù† Ù‚Ø§Ø¬Ø§Ø±', 3),
(5, 'ÙˆØ§Ù„ÛŒØ¨Ø§Ù„', 1),
(6, 'Ø±ÙˆØ§Ù†Ø´Ù†Ø§Ø³ÛŒ', 0),
(8, 'Ø®ÙˆØ¯Ø´Ù†Ø§Ø³ÛŒ Ù¾ÛŒØ´Ø±ÙØªÙ‡1', 6),
(9, 'Ø¹Ù„Ù…ÛŒ', 0),
(10, 'Ø®ÙˆØ¯Ø´Ù†Ø§Ø³ÛŒ Ù¾ÛŒØ´Ø±ÙØªÙ‡', 6),
(11, 'Ù†Ø¬ÙˆÙ…', 9);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(250) CHARACTER SET utf32 COLLATE utf32_persian_ci NOT NULL,
  `user` varchar(500) CHARACTER SET utf16 COLLATE utf16_persian_ci NOT NULL,
  `pic` text CHARACTER SET utf32 COLLATE utf32_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `user`, `pic`) VALUES
(1, 'dsfsdf', 'roshanbin', '../uploads/37b681a6a2586118e1353bbf84577a68Chrysanthemum.jpg'),
(2, 'ddd', 'roshanbin', '../uploads/2eb14c9547803bdac83e910db29b5394photo_2019-02-12_16-49-39.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `item_menu`
--

CREATE TABLE `item_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `order_s` int(11) NOT NULL DEFAULT '0',
  `link` text COLLATE utf8_persian_ci NOT NULL,
  `logo` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `item_menu`
--

INSERT INTO `item_menu` (`id`, `title`, `order_s`, `link`, `logo`) VALUES
(1, 'Ú©Ø§Ù„Ø§ÛŒØ§Ø¨', 0, 'list-kala.php', '../uploads/060c094f738d6a2406bfc1998bc2bc9ekalayab.png'),
(2, 'Ø§Ù‚Ø³Ø§Ø·ÛŒÙ†Ùˆ', 1, 'aghsat.php', '../uploads/a75543529bfd0b09930246bfba6b8483aghsatino.png'),
(3, 'Ù‡Ù…Ù‡ Ú†ÛŒ Ø¨Ø§ Ù…Ø§', 2, 'pack.php', '../uploads/829c4a7560b5c8d4f4b81c26cc14f086hame-chi-ba-ma.png'),
(4, 'Ù…Ø§Ù‡ Ø¹Ø³Ù„', 3, '#', '../uploads/1445456e8d47a2131578d3a6b6159939honymoon.png'),
(5, 'Ù…Ø­Ø§Ø³Ø¨Ù‡ Ú¯Ø±', 4, '#', '../uploads/a44a23d2f5912026a818cc81d4fd7c8bmohasebegar.png'),
(6, 'Ø³ØªØ§Ø¯ Ø§Ø²Ø¯ÙˆØ§Ø¬', 5, '#', '../uploads/991498eb474328a58b7a6ddc7f23cd31icons8-two-hearts-90.png'),
(7, 'Ø±ÛŒÙ„Ú©Ø³ÛŒÙ†Ùˆ', 6, '#', '../uploads/fe86fcf07827b0a60de54faa0fd6c60dicons8-romance-filled-50.png'),
(8, 'Ø²Ù†Ø¯Ú¯ÛŒÙ†ÙˆÙ¾Ù„Ø§Ø³', 7, '#', '../uploads/f24b6c1590777d5394298e8e696631cczendegino-plus.png'),
(9, 'Ù¾ÛŒØ´Ù†Ù‡Ø§Ø¯ ÙˆÛŒÚ˜Ù‡', 8, 'offer.php', '../uploads/604609d94b43c905dd7b0f3b78f51232icons8-fire-filled-90.png'),
(10, 'Ø§Ø³ØªØ§ÛŒÙ„ÛŒØ³Øª', 9, '#', '../uploads/8013957fc84fe584c2e150d0eb21cc04laundry.png'),
(11, 'Ø¬Ø´Ù†ÙˆØ§Ø±Ù‡', 10, 'festival.php', '../uploads/41368e32f43ef6fdb467f7859d1ab3ccicons8-event-accepted-filled-50 .png'),
(12, 'Ø±Ø²Ø±Ùˆ Ø¢Ù†Ù„Ø§ÛŒÙ†', 11, '#', '../uploads/217c15d2120fbdba644ee6e2538d3ec9timetable.png');

-- --------------------------------------------------------

--
-- Table structure for table `jashnvare`
--

CREATE TABLE `jashnvare` (
  `id` int(11) NOT NULL,
  `user` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `percent` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `jashnvare`
--

INSERT INTO `jashnvare` (`id`, `user`, `start_date`, `end_date`, `percent`) VALUES
(3, 'asre_jadid', '2019-03-17', '2019-06-25', '20'),
(5, '_gallery_nikfarjam', '2019-01-01', '2019-03-03', '21'),
(7, 'abtin_seirtos', '2019-01-02', '2019-03-05', '21'),
(8, 'arayesh_ario', '2019-01-02', '2019-03-05', '20'),
(9, 'arayesh_mani', '2019-01-02', '2019-03-05', '20'),
(10, 'arayesh_mobiform', '2019-01-02', '2019-03-05', '20'),
(11, 'arayesh_moeen', '2019-01-02', '2019-03-05', '20'),
(12, 'roshanbin', '2019-01-02', '2019-03-05', '20'),
(13, 'arayesh_rad', '2019-01-02', '2019-03-05', '20'),
(14, 'arayesh_royal', '2019-01-02', '2019-03-05', '20'),
(15, 'arayesh_saeed', '2019-01-02', '2019-03-05', '20'),
(16, 'arayesh_sharpfid', '2019-01-02', '2019-03-05', '20'),
(17, 'arayesh_siyavash', '2019-01-02', '2019-03-05', '20'),
(18, 'arayeshi_2negah', '2019-01-02', '2019-03-05', '20'),
(19, 'arayeshi_baran', '2019-01-02', '2019-03-05', '20'),
(20, 'arayeshi_cheshmak', '2019-01-02', '2019-03-05', '20'),
(21, 'arayeshi_daryush', '2019-01-02', '2019-03-05', '20');

-- --------------------------------------------------------

--
-- Table structure for table `jashnvare_slider`
--

CREATE TABLE `jashnvare_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `pic` text COLLATE utf8_persian_ci NOT NULL,
  `link` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `jashnvare_slider`
--

INSERT INTO `jashnvare_slider` (`id`, `title`, `pic`, `link`) VALUES
(2, 'Ø§Ø³Ù„Ø§ÛŒØ¯ 1', '../uploads/2d8b4c41220a6ee3c8e6005322d12162slide1-2.jpg', '#'),
(3, 'Ø§Ø³Ù„Ø§ÛŒØ¯2', '../uploads/291be24f75e071615af810351978093bslide2-2.jpg', '#');

-- --------------------------------------------------------

--
-- Table structure for table `kala`
--

CREATE TABLE `kala` (
  `id` int(11) NOT NULL,
  `user` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `title` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `brand` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `describ` text COLLATE utf8_persian_ci NOT NULL,
  `model` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `pic` text COLLATE utf8_persian_ci,
  `tarikh` date NOT NULL,
  `colors` text COLLATE utf8_persian_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `kala`
--

INSERT INTO `kala` (`id`, `user`, `title`, `brand`, `describ`, `model`, `price`, `pic`, `tarikh`, `colors`) VALUES
(2, 'abtin_seirtos', 'ÛŒØ®Ú†Ø§Ù„', 'Ø§Ù„Ú©ØªØ±ÙˆØ§Ø³ØªÛŒÙ„', '\r\n                        ', 'ABC', '800', '', '2019-02-17', NULL),
(3, 'abtin_seirtos', 'ØªÛŒ ÙˆÛŒ', 'Ø§Ù„ Ø¬ÛŒ', '\r\n                        ', 'ABC', '100', '', '2019-02-17', NULL),
(4, 'roshanbin', 'ÛŒØ®Ú†Ø§Ù„ Ø³Ø§ÛŒØ¯ Ø¨Ø§ÛŒ Ø³Ø§ÛŒØ¯', 'Ø¯ÙˆÙˆ', 'Ø¯Ø± Ø¨Ø§Ø± Ø¯Ø§Ø±Ø¯', 'B121', '14500000', '', '2019-02-17', NULL),
(5, '_gallery_nikfarjam', 'Ú©Ø§Ù„Ø§ÛŒ Ø´Ù…Ø§Ø±Ù‡1', 'Ø§Ù„ Ø¬ÛŒ', '\r\n                        ', '34jdf', '1000000', '', '2019-02-17', NULL),
(6, 'roshanbin', 'ÛŒØ®Ú†Ø§Ù„ ÙØ±ÛŒØ²Ø±', 'Ø§Ù„Ú©ØªØ±Ùˆ Ø§Ø³ØªÛŒÙ„', 'Ø¨Ø§ Ø¨Ø±ÙÚ©', '504', '4500000', '', '2019-02-17', NULL),
(7, 'roshanbin', 'Ø§Ø¬Ø§Ù‚ Ú¯Ø§Ø² ÙØ±Ø¯Ø§Ø±', 'Ù†ÙˆÚ˜Ù‡', 'ÙÙ†Ø¯Ú© Ø³Ø± Ø®ÙˆØ¯\r\nØ³Ø± Ø´Ø¹Ù„Ù‡ Ø³Ø§Ø¨Ø§Ù\r\nØ±ÙˆÛŒÙ‡ Ø§Ø³ØªÛŒÙ„\r\nÙ¾Ø§ÛŒÙ‡ Ù‚Ø§Ø¨Ù„ ØªÙ†Ø¸ÛŒÙ…\r\nÙ„Ø¹Ø§Ø¨ Ú©ÙˆØ±Ù‡ Ø§ÛŒ..Ø¨Ø§ Ø¨Ø³ØªÙ‡ Ø¨Ù†Ø¯ÛŒ Ù…Ø·Ù…Ø¦Ù† Ùˆ Ø®Ø¯Ù…Ø§Øª Ù¾Ø³ ÙØ±ÙˆØ´', 'Ø¬Ú© Ø¯Ø§Ø±', '14000000', '', '2019-02-18', NULL),
(8, 'roshanbin', 'ØªÙ„ÙˆÛŒØ²ÛŒÙˆÙ† Ø§Ù„ Ø§ÛŒ Ø¯ÛŒ', 'LG', 'Ø¨Ø§ Ø¶Ù…Ø§Ù†Øª 2 Ø³Ø§Ù„Ù‡', '2Bsss', '1000000', '', '2019-02-20', NULL),
(9, 'roshanbin', 'ØªÙ„ÙˆÛŒØ²ÛŒÙˆÙ† Ø§Ù„ Ø§ÛŒ Ø¯ÛŒ', 'Ø³Ø§Ù…Ø³ÙˆÙ†Ú¯', 'Ø¨Ø§ Ø¶Ù…Ø§Ù†Øª 2 Ø³Ø§Ù„Ù‡', 'jseif', '2000000', '', '2019-02-20', NULL),
(10, 'roshanbin', 'ØªÙ„ÙˆÛŒØ²ÛŒÙˆÙ† Ø§Ù„ Ø§ÛŒ Ø¯ÛŒ', 'Ø³ÙˆÙ†ÛŒ', 'Ø¨Ø§ Ø¶Ù…Ø§Ù†Øª Ø¯Ùˆ Ø³Ø§Ù„Ù‡', 'iuthtj', '10000000', '', '2019-02-20', NULL),
(11, 'roshanbin', 'Ù…Ø§Ø´ÛŒÙ† Ù„Ø¨Ø§Ø³Ø´ÙˆÛŒÛŒ 6 Ú©ÛŒÙ„ÛŒÙˆÛŒÛŒ', 'LG', 'Ø¨Ø§ Ø¶Ù…Ø§Ù†Øª 2 Ø³Ø§Ù„Ù‡', 'ererej', '50000000', '', '2019-02-20', NULL),
(12, 'roshanbin', 'Ù…Ø§Ø´ÛŒÙ† Ù„Ø¨Ø§Ø³Ø´ÙˆÛŒÛŒ 8 Ú©ÛŒÙ„ÛŒÙˆÛŒÛŒ', 'Ø³Ø§Ù…Ø³ÙˆÙ†Ú¯', 'dgvdfg', 'Erer', '8000000', '', '2019-02-20', NULL),
(13, 'roshanbin', 'Ù…Ø§Ø´ÛŒÙ† Ø¸Ø±Ù Ø´ÙˆÛŒÛŒ', 'LG', 'Ù„Ø°ÛŒÙ†ØªÙ‚Ø°Ù„Ø¨Ù‚Ø¹Ù„Ø±', '34jdf', '800', '', '2019-02-20', NULL),
(14, 'roshanbin', 'Ù…Ø§Ø´ÛŒÙ† Ø¸Ø±Ù Ø´ÙˆÛŒÛŒ', 'Ø³ÙˆÙ†ÛŒ', 'Ù‚Ù„ØºØ¨Ø°Ø´Ù‚ÛŒØ³Ø¨Ø¹', 'ABC2019', '6200000', '', '2019-02-20', NULL),
(15, 'roshanbin', 'Ù…Ø§ÛŒÚ©Ø±ÙˆÙØ±', 'Ø§Ù„Ú©ØªØ±ÙˆØ§Ø³ØªÛŒÙ„', 'Ø¹Ù„Ù‡Ø¹Ù„Ù‡ØºÙ„', 'ABC', '1100', '', '2019-02-20', NULL),
(16, 'roshanbin', 'ØºØ°Ø§Ø³Ø§Ø²', 'Ù…ÙˆÙ„ÛŒÙ†Ú©Ø³', 'Ù‚Ù„Ù‚Ù„Ù‚Ù„', 'iuthtj', '2000000', '', '2019-02-20', NULL),
(17, 'roshanbin', 'Ø¢Ø¨Ù…ÛŒÙˆÙ‡ Ú¯ÛŒØ±ÛŒ', 'ÙÛŒÙ„ÛŒÙ¾Ø³', 'Ø³Ù‚Ø¨Ø«Ù‚Ø¨Ø«Ø¨', 'iuthtj', '1000000', '', '2019-02-20', NULL),
(18, 'roshanbin', 'Ø¬Ø§Ø±ÙˆØ¨Ø±Ù‚ÛŒ', 'Ø³Ø§Ù…Ø³ÙˆÙ†Ú¯', '1500ÙˆØ§Øª', 'hkjtik', '1300000', '', '2019-02-20', NULL),
(19, 'roshanbin', 'Ø¬Ø§Ø±ÙˆØ¨Ø±Ù‚ÛŒ', 'LG', 'rklgnrlkgn', 'tkgotkt', '1500000', '', '2019-02-20', NULL),
(20, 'roshanbin', 'Ø¬Ø§Ø±ÙˆØ¨Ø±Ù‚ÛŒ', 'Ø³ÙˆÙ†ÛŒ', 'ythtyhn', 'rgjrne', '3000000', '', '2019-02-20', NULL),
(21, 'roshanbin', 'Ù…Ø§ÛŒÚ©Ø±ÙˆÙØ±', 'Ø§Ù„ Ø¬ÛŒ', 'yguhjtyu', 'sdg', '3500000', '', '2019-02-20', NULL),
(22, 'roshanbin', 'Ø§Ø¬Ø§Ù‚ Ú¯Ø§Ø² ÙØ±Ø¯Ø§Ø±', 'Ù¾Ø§Ø¯ÛŒØ³Ø§Ù†', 'dkgnmjkrng', 'drgndkgn', '20000000', '', '2019-02-20', NULL),
(23, 'roshanbin', 'ÛŒØ®Ú†Ø§Ù„ ÙØ±ÛŒØ²Ø±', 'eleto', 'thtfghth', 'ABC', '6100000', '', '2019-02-20', NULL),
(24, 'roshanbin', 'Ù…Ø§Ø´ÛŒÙ† Ù„Ø¨Ø§Ø³Ø´ÙˆÛŒÛŒ 7 Ú©ÛŒÙ„ÛŒÙˆÛŒÛŒ', 'vestle', 'sedwefwef', 'ABC', '5100000', '', '2019-02-20', NULL),
(25, '_gallery_nikfarjam', 'ØªØ³Øª', 'ØªØ³Øª', 'ÛŒØ¨Ø³ÛŒØ¨Ø²Ø±\r\n                        ', 'ØªØ³Øª', '1000', '', '2019-03-02', ''),
(26, '_gallery_nikfarjam', 'ÛŒÛŒÛŒÛŒ', 'ÛŒÛŒÛŒÛŒÛŒ', 'Ø¨Ø³ÛŒØ¨Ø³ÛŒØ¨\r\n                        ', 'ÛŒÛŒÛŒÛŒ', '2222', '', '2019-03-02', ''),
(27, '_gallery_nikfarjam', 'Ø³ÛŒØ¨ÛŒØ³', 'Ø³ÛŒÛŒØ³Ø¨Ø³ÛŒØ¨', 'Ø³ÛŒØ¨Ø³ÛŒØ¨\r\n                        ', 'Ø³ÛŒØ¨Ø³ÛŒØ¨', '3331', '', '2019-03-02', 'Ø³ÛŒØ¨ÛŒØ³Ø¨Ø³ÛŒØ¨Ø³ÛŒØ¨222');

-- --------------------------------------------------------

--
-- Table structure for table `khadamat`
--

CREATE TABLE `khadamat` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `discrib` text COLLATE utf8_persian_ci,
  `pic` text COLLATE utf8_persian_ci,
  `tarikh` date NOT NULL,
  `user` varchar(250) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `khadamat`
--

INSERT INTO `khadamat` (`id`, `title`, `price`, `discrib`, `pic`, `tarikh`, `user`) VALUES
(1, 'Ø®Ø¯Ù…Øª11', '1100', '                                 1                       Ø§ÛŒÙ† Ø®Ø¯Ù…Øª Ø¨Ø±Ø§ÛŒ Ù…Ø´ØªØ±ÛŒØ§Ù† Ø§Ø±Ø§Ø¦Ù‡ Ù…ÛŒ Ø´ÙˆØ¯.\r\n                                                                        ', '', '2019-02-17', 'abtin_seirtos'),
(2, 'Ø´Ù†ÛŒÙˆÙ† Ø¹Ø±ÙˆØ³', '800', 'Ù‡Ù…Ø±Ø§Ù‡ Ø¨Ø§ Ú©Ø§Ø´Øª Ù†Ø§Ø®Ù†\r\n                        ', '', '2019-02-17', 'abtin_seirtos'),
(3, 'Ø®Ø¯Ù…Øª Ø´Ù…Ø§Ø±Ù‡ 1', '5000000', 'Ù‚ÙØºØ³Ù‚ÙØºØ§\r\n                     ', '', '2019-02-17', 'abtin_seirtos'),
(4, 'Ø±Ù†Ú¯ Ù…Ùˆ', '850000', 'Ø·Ù„Ø§ÛŒÛŒ...Ù†Ù‚Ø±Ù‡ Ø§ÛŒÛŒ', '', '2019-02-18', 'roshanbin'),
(5, 'Ú¯Ø±ÛŒÙ… Ø¹Ø±ÙˆØ³', '300000', 'Ø¨Ø§ Ø¨Ù‡ØªØ±ÛŒÙ† Ù…ÙˆØ§Ø¯', '', '2019-02-20', 'roshanbin'),
(6, 'Ú©Ø§Ø´Øª Ù†Ø§Ø®Ù†', '150000', 'Ø¨Ø§ ØªØ±Ù…ÛŒÙ… Ø±Ø§ÛŒÚ¯Ø§Ù† Ø¨Ù‡ Ù…Ø¯Øª ÛŒÚ© Ù…Ø§Ù‡', '', '2019-02-20', 'roshanbin'),
(7, 'Ø´Ù†ÛŒÙˆÙ†', '700000', 'Ø¨Ø§ ÛŒÚ© Ù†ÙØ± Ù‡Ù…Ø±Ø§Ù‡', '', '2019-02-20', 'roshanbin'),
(8, 'ØªØ²Ø¦ÛŒÙ† Ø³ÙØ±Ù‡ Ø¹Ù‚Ø¯', '300000', 'Ø¨Ø§ Ø¢ÛŒÙ†Ù‡ Ùˆ Ø´Ù…Ø¹Ø¯Ø§Ù†', '', '2019-02-20', 'roshanbin'),
(9, 'Ø§Ù¾ÛŒÙ„Ø§Ø³ÛŒÙˆÙ†', '70000', '', '', '2019-02-20', 'roshanbin'),
(10, 'Ú¯Ù„ Ø¢Ø±Ø§ÛŒÛŒ Ø³ÙØ±Ù‡ Ø¹Ù‚Ø¯', '450000', '', '', '2019-02-20', 'roshanbin'),
(11, 'Ú¯Ù„ Ø¢Ø±Ø§ÛŒÛŒ Ù„Ø¨Ø§Ø³ Ø¹Ø±ÙˆØ³', '1200000', 'ØªØ²Ø¦ÛŒÙ† Ù„Ø¨Ø§Ø³ Ø¹Ø±ÙˆØ³ Ø¨Ø§ Ú¯Ù„ Ù‡Ø§ÛŒ Ø·Ø¨ÛŒØ¹ÛŒ', '', '2019-02-20', 'roshanbin'),
(12, 'Ø¢Ø±Ø§ÛŒØ´ Ø§Ø³Ù¾ÙˆØ±Øª Ø¹Ø±ÙˆØ³', '800000', 'Ø¨Ø±Ø§ÛŒ Ú¯Ø±ÙØªÙ† Ø¹Ú©Ø³ Ù‡Ø§ÛŒ Ø§Ø³Ù¾ÙˆØ±Øª Ø¯Ø± Ø¢Ù„Ø¨ÙˆÙ…', '', '2019-02-20', 'roshanbin'),
(13, 'ØªØµÙˆÛŒØ±Ø¨Ø±Ø¯Ø§Ø±ÛŒ Ø¯Ø± ÙØ¶Ø§ÛŒ Ø¨Ø§Ø²', '2000000', '', '', '2019-02-20', 'roshanbin'),
(14, 'Ø±Ù†Ú¯ Ùˆ Ù…Ø´ Ù…Ùˆ', '1000000', '', '', '2019-02-20', 'roshanbin'),
(15, 'Ù‡Ø§ÛŒÙ„Ø§ÛŒØª Ù…Ùˆ', '200000', '', '', '2019-02-20', 'roshanbin'),
(16, 'Ù„ÛŒÙØª Ùˆ Ù„Ù…ÛŒÙ†Øª Ù…Ú˜Ù‡', '100000', '', '', '2019-02-20', 'roshanbin'),
(17, 'Ú©Ø§Ø´Øª Ù…Ú˜Ù‡', '300000', '', '', '2019-02-20', 'roshanbin'),
(18, 'Ù‡Ø§Ø´ÙˆØ± Ø§Ø¨Ø±Ùˆ', '100000', '', '', '2019-02-20', 'roshanbin'),
(19, 'ØªØªÙˆ Ø§Ø¨Ø±Ùˆ', '2000000', '', '', '2019-02-20', 'roshanbin'),
(20, 'ÙˆÚ©Ø³ÛŒÙ†Ú¯ ØµÙˆØ±Øª', '15000', '', '', '2019-02-20', 'roshanbin'),
(21, 'Ù¾Ø§Ú©Ø³Ø§Ø²ÛŒ ØµÙˆØ±Øª', '30000', '', '', '2019-02-20', 'roshanbin'),
(22, 'Ù„Ø§ÛŒÙ‡ Ø¨Ø±Ø¯Ø§Ø±ÛŒ Ù¾ÙˆØ³Øª', '50000', '', '', '2019-02-20', 'roshanbin'),
(23, 'Ú©Ø§Ø¯Ø± Ø®Ø¯Ù…Ø§Øª ', '1000000', 'ØªØ¹Ø¯Ø§Ø¯ÛŒ Ø®Ø¯Ù…Ù‡ Ø¨Ø±Ø§ÛŒ Ù¾Ø°ÛŒØ±Ø§ÛŒÛŒ Ø§Ø² Ù…Ù‡Ù…Ø§Ù†Ø§Ù† Ø´Ù…Ø§', '', '2019-02-20', 'roshanbin'),
(24, 'sadsadsad', '1000', 'dfgdfgdfg', '', '2019-02-23', 'roshanbin');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `order_s` int(11) NOT NULL DEFAULT '0',
  `link` text COLLATE utf8_persian_ci NOT NULL,
  `fico` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `order_s`, `link`, `fico`) VALUES
(1, 'Ø®Ø§Ù†Ù‡', 0, 'index.php', 'fa-home'),
(2, 'Ø§ØµÙ†Ø§Ù Ø¬Ù‡ÛŒØ²ÛŒÙ‡', 1, 'jahiziye.php', 'fa-list-ul'),
(3, 'Ø§ØµÙ†Ø§Ù ØªØ´Ø±ÛŒÙØ§Øª', 3, 'tashrifat.php', 'fa-list-ul'),
(4, 'Ø¯Ø±Ø¨Ø§Ø±Ù‡ Ù…Ø§', 4, '#abut', 'fa-sticky-note'),
(5, 'ØªÙ…Ø§Ø³ Ø¨Ø§ Ù…Ø§', 5, 'contact.php', 'fa-phone-volume');

-- --------------------------------------------------------

--
-- Table structure for table `offer_product`
--

CREATE TABLE `offer_product` (
  `id` int(11) NOT NULL,
  `Pid` int(11) NOT NULL,
  `type` bit(1) NOT NULL DEFAULT b'0',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `percent` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `offer_product`
--

INSERT INTO `offer_product` (`id`, `Pid`, `type`, `start_date`, `end_date`, `percent`) VALUES
(8, 24, b'1', '2019-01-02', '2019-03-05', '20'),
(9, 9, b'0', '2019-01-02', '2019-03-05', '20'),
(10, 2, b'0', '2019-01-02', '2019-03-05', '20'),
(11, 3, b'0', '2019-01-02', '2019-03-05', '20'),
(12, 4, b'0', '2019-01-02', '2019-03-05', '20'),
(13, 5, b'0', '2019-01-02', '2019-03-05', '20'),
(14, 6, b'0', '2019-01-02', '2019-03-05', '20'),
(15, 7, b'0', '2019-01-02', '2019-03-05', '20'),
(16, 10, b'0', '2019-01-02', '2019-03-05', '20'),
(17, 11, b'0', '2019-01-02', '2019-03-05', '20'),
(18, 12, b'0', '2019-01-02', '2019-03-05', '20'),
(19, 8, b'0', '2019-01-02', '2019-03-05', '20'),
(20, 13, b'0', '2019-01-02', '2019-03-05', '20'),
(21, 14, b'0', '2019-01-02', '2019-03-05', '20'),
(22, 15, b'0', '2019-01-02', '2019-03-05', '20'),
(23, 16, b'0', '2019-01-02', '2019-03-05', '20'),
(24, 17, b'0', '2019-01-02', '2019-03-05', '20'),
(25, 18, b'0', '2019-01-02', '2019-03-05', '20'),
(26, 19, b'0', '2019-01-02', '2019-03-05', '20'),
(27, 20, b'0', '2019-01-02', '2019-03-05', '20'),
(28, 21, b'0', '2019-01-02', '2019-03-05', '20'),
(29, 22, b'0', '2019-01-02', '2019-03-05', '20'),
(30, 23, b'0', '2019-01-02', '2019-03-05', '20'),
(31, 24, b'0', '2019-01-02', '2019-03-05', '20'),
(32, 1, b'1', '2019-01-02', '2019-03-05', '20'),
(33, 2, b'1', '2019-01-02', '2019-03-05', '20'),
(34, 3, b'1', '2019-01-02', '2019-03-05', '20'),
(35, 4, b'1', '2019-01-02', '2019-03-05', '20'),
(36, 5, b'1', '2019-01-02', '2019-03-05', '20'),
(37, 6, b'1', '2019-01-02', '2019-03-05', '20'),
(38, 7, b'1', '2019-01-02', '2019-03-05', '20'),
(39, 8, b'1', '2019-01-02', '2019-03-05', '20'),
(40, 9, b'1', '2019-01-02', '2019-03-05', '20');

-- --------------------------------------------------------

--
-- Table structure for table `pack`
--

CREATE TABLE `pack` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `user` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `pic` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `pack`
--

INSERT INTO `pack` (`id`, `title`, `price`, `user`, `pic`) VALUES
(3, 'ØªØ³Øª', '30310000', 'roshanbin', ''),
(4, 'Ø³ÛŒØ¨ÛŒØ³Ø¨', '31400000', 'roshanbin', ''),
(5, 'Ø³Ø´Ø´ÛŒØ´Ø³ÛŒ', '510000', 'roshanbin', ''),
(6, 'Ø³ÛŒØ¨Ø³ÛŒØ¨', '960000', 'roshanbin', ''),
(7, '22445452', '5555', 'roshanbin', ''),
(8, '452452', '555', 'roshanbin', ''),
(9, '524542', '555', 'roshanbin', ''),
(10, '555', '555', 'roshanbin', ''),
(11, '5757', '55', 'roshanbin', '../uploads/89ddd378f1c2de3953b4753398214370araysh.jpg'),
(12, 'Ø¨ÛŒÙ„Ø¨ÛŒÙ„', '555', 'roshanbin', ''),
(13, '45654', '555', 'roshanbin', ''),
(14, '4545', '555', 'roshanbin', ''),
(15, '4545', '4545', 'roshanbin', ''),
(16, 'ØªØ³Øª', '150000', 'roshanbin', '');

-- --------------------------------------------------------

--
-- Table structure for table `packrow`
--

CREATE TABLE `packrow` (
  `id` int(11) NOT NULL,
  `Pid` int(11) NOT NULL,
  `PAid` int(11) NOT NULL,
  `type` bit(1) NOT NULL,
  `user` varchar(250) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `packrow`
--

INSERT INTO `packrow` (`id`, `Pid`, `PAid`, `type`, `user`) VALUES
(104, 24, 3, b'0', 'roshanbin'),
(105, 22, 3, b'0', 'roshanbin'),
(106, 9, 3, b'0', 'roshanbin'),
(107, 21, 3, b'1', 'roshanbin'),
(108, 13, 3, b'1', 'roshanbin'),
(109, 11, 3, b'1', 'roshanbin'),
(110, 24, 4, b'0', 'roshanbin'),
(111, 23, 4, b'0', 'roshanbin'),
(112, 22, 4, b'0', 'roshanbin'),
(113, 5, 4, b'1', 'roshanbin'),
(114, 24, 5, b'0', 'roshanbin'),
(115, 23, 6, b'0', 'roshanbin'),
(116, 21, 6, b'0', 'roshanbin'),
(117, 24, 7, b'0', 'roshanbin'),
(118, 24, 8, b'0', 'roshanbin'),
(119, 24, 9, b'0', 'roshanbin'),
(120, 24, 10, b'0', 'roshanbin'),
(121, 24, 11, b'0', 'roshanbin'),
(122, 24, 12, b'0', 'roshanbin'),
(123, 4, 13, b'1', 'roshanbin'),
(124, 24, 14, b'0', 'roshanbin'),
(125, 24, 15, b'0', 'roshanbin'),
(126, 24, 16, b'0', 'roshanbin'),
(127, 23, 16, b'0', 'roshanbin'),
(128, 21, 16, b'0', 'roshanbin'),
(129, 24, 16, b'1', 'roshanbin'),
(130, 21, 16, b'1', 'roshanbin');

-- --------------------------------------------------------

--
-- Table structure for table `public_user`
--

CREATE TABLE `public_user` (
  `user` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `family` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `mob` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `addres` text COLLATE utf8_persian_ci NOT NULL,
  `postal_code` varchar(50) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `public_user`
--

INSERT INTO `public_user` (`user`, `pass`, `name`, `family`, `email`, `mob`, `tel`, `addres`, `postal_code`) VALUES
('username1', '124235', 'hosseini', 'hoseini', 'guhu@yahoo.com', '09285644778', '3345677', 'Ù‚Ù‚ÛŒÙ„Ù‚Ø«Ù„', '9835729364');

-- --------------------------------------------------------

--
-- Table structure for table `related_links`
--

CREATE TABLE `related_links` (
  `id` int(11) NOT NULL,
  `order_s` int(11) NOT NULL DEFAULT '0',
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `pic` text COLLATE utf8_persian_ci NOT NULL,
  `link` text COLLATE utf8_persian_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `pic`, `link`) VALUES
(5, 'Ø§Ø³Ù„Ø§ÛŒØ¯1', '../uploads/8b1c026b02c2e79e7cf5bb4bc2ddc0cet1.jpg', '#'),
(6, 'Ø§Ø³Ù„Ø§ÛŒØ¯2', '../uploads/31da7671efdc6ad3c8f19e67db780c66t2.jpg', '#'),
(7, 'Ø§Ø³Ù„Ø§ÛŒØ¯3', '../uploads/5b6bfa7c92b1d6aa459ee4b5fcd515b2t3.jpg', '#'),
(8, 'Ø§Ø³Ù„Ø§ÛŒØ¯4', '../uploads/b955b1371a6710bc3c9b43c6d6871e03t4.jpg', '#');

-- --------------------------------------------------------

--
-- Table structure for table `sub_senf`
--

CREATE TABLE `sub_senf` (
  `id` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `senfid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `sub_senf`
--

INSERT INTO `sub_senf` (`id`, `user`, `senfid`) VALUES
(3, 'test', 2),
(4, 'test', 3),
(5, 'test', 2),
(6, 'test', 3),
(7, 'gallery_maroj', 35),
(8, 'gallery_stil', 35),
(9, 'gallery_pazel', 35),
(10, 'gallery_toosi', 35),
(11, 'gallery_armani', 35),
(12, 'noor_taban', 35),
(13, 'gallery_shayn', 35),
(14, 'gallery_nikafrooz', 35),
(15, 'gallery_disign', 35),
(16, 'gallery_akhavi', 35),
(17, 'ghasr_suzan', 35),
(18, 'pars_gallery', 35),
(19, 'gallery_entekhab', 35),
(20, 'khane_noor', 35),
(21, 'nika_noor', 35),
(22, 'khane_behtar', 35),
(23, 'nik_loster', 35),
(24, 'honary_rezayi', 35),
(25, 'gallery_kado', 35),
(26, 'pars_loster', 35),
(27, 'Zendegino', 2),
(28, 'Zendegino', 3),
(29, 'gallery_ashrafzade', 35),
(30, 'bazargani_percian', 35),
(31, 'gallery_hormozzade', 35),
(32, 'khane_ziba', 35),
(33, 'tavana', 35),
(34, 'gallery_korosh', 35),
(35, 'gallery_adli', 35),
(36, 'sanaye_roshanayi_hooran', 35),
(37, 'gallery_frin', 35),
(38, 'virakish', 35),
(39, 'dolphin_talayi', 35),
(40, 'iran_italia', 35),
(41, 'sarzamin_ayne', 35),
(42, 'sohrabi', 35),
(43, 'Bahar', 29),
(44, 'Bahar', 31),
(45, 'Bahar', 32),
(46, 'pars_pelast', 32),
(47, 'ladan_pelast', 32),
(48, 'khaneh_behtar', 32),
(49, 'tanc_toni', 32),
(50, 'foroshgah_maghsod', 32),
(51, 'foroshgah_karaja', 32),
(52, 'khaneh_sefid', 32),
(53, 'sabk_khaneh', 32),
(54, 'foroshgah_korkmaz', 32),
(55, 'barge_sabz', 32),
(56, 'gallery_diaco', 32),
(57, 'foroshgah_tefal', 32),
(58, 'cristal_masoud', 32),
(59, 'kadoe_shamdoni', 32),
(60, 'kish_cala', 32),
(61, 'studio_avanoor', 5),
(62, 'kadoe_amir', 32),
(63, 'khaneh_lux', 32),
(64, 'pelastic_mahdis', 32),
(65, 'armaghan_beheshti', 32),
(66, 'cristal_kaktos', 32),
(67, 'gallery_morvarid', 32),
(68, 'gallery_venus', 32),
(69, 'cristal_nik', 32),
(70, 'gallery_navid', 32),
(71, 'gallery_vranda', 32),
(72, 'beauty_hasti', 3),
(73, 'faeze', 8),
(74, 'faeze', 9),
(75, 'faeze', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `pass` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `mob` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `mob2` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `tel2` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `title` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `logo` text COLLATE utf8_persian_ci,
  `header` text COLLATE utf8_persian_ci,
  `addres` text COLLATE utf8_persian_ci NOT NULL,
  `senfid` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `famili` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `describ` text COLLATE utf8_persian_ci,
  `u_bazaryab` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `introduction` text COLLATE utf8_persian_ci NOT NULL,
  `telegram` text COLLATE utf8_persian_ci NOT NULL,
  `instagram` text COLLATE utf8_persian_ci NOT NULL,
  `LinkedIn` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user`, `pass`, `mob`, `mob2`, `tel`, `tel2`, `title`, `logo`, `header`, `addres`, `senfid`, `name`, `famili`, `describ`, `u_bazaryab`, `introduction`, `telegram`, `instagram`, `LinkedIn`) VALUES
('_gallery_nikfarjam', '38434000', '-', NULL, '38434000', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù†ÛŒÚ© ÙØ±Ø¬Ø§Ù…', '../uploads/7cf57c9fabf936ce63b1cf982107e2eanikfarjam.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ø¹Ø¯ Ø§Ø² Ø³Ù„Ù…Ø§Ù† 2', 34, '-', 'Ù†ÛŒÚ© ÙØ±Ø¬Ø§Ù…', '', '', '', '', '', ''),
('abtin_seirtos', '37600540', '09304552752', '', '37600540', '', 'Ø¢Ø¨ØªÛŒÙ† Ø³ÛŒØ±ØªÙˆØ³', '../uploads/f688d05be9011be86f15d99d4d121060abtin-seir-tos.jpg', '', 'Ø¨ÛŒÙ† Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±Ø¬Ù†ÙˆØ¨ÛŒ 9 Ùˆ 11 Ù†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¬Ø§Ù…ÛŒ', 26, '-', 'Ø§Ù‚Ø¨Ø§Ù„', '', '', '', '', '', ''),
('adam_barfi', '37680873', '09153013998', NULL, '37680873', '', 'Ú©Ø§ÙÙ‡ Ù‚Ù†Ø§Ø¯ÛŒ Ø¢Ø¯Ù… Ø¨Ø±ÙÛŒ', '../uploads/403b1f1b35555ba24257e38f234b10e3adam-barfi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ù… 10-Ø§ÙˆÙ„ Ø²Ù†Ø¨Ù‚', 19, '-', 'Ø±Ø­ÛŒÙ… Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('adamo_hava', '38434304', '-', NULL, '38434304', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¢Ø¯Ù… Ùˆ Ø­ÙˆØ§', '../uploads/17c74c86e92b77b57cd541635a192a6eadamo-hava.jpg', '', 'Ù†Ø¨Ø´ Ø§Ø¨Ù† Ø³ÛŒÙ†Ø§ 8', 16, '-', '-', '', '', '', '', '', ''),
('aghayan_ataman', '38475295', '09155104531', NULL, '38475295', '', 'Ù¾ÙˆØ´Ø§Ú© Ø¢Ù‚Ø§ÛŒØ§Ù† Ø§ØªØ§ Ù…Ù†', '../uploads/ba6700bd5f8886038f037d73a1da4ee8ata-man.jpg', '', 'Ù†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 38', 16, '-', '-', '', '', '', '', '', ''),
('aghaye_arayeshgar', '09152013832', '09152013832', NULL, '-', '', 'Ø¢Ù‚Ø§ÛŒ Ø¢Ø±Ø§ÛŒØ´Ú¯Ø±', '../uploads/fade477d3e2c97366b691a0d1e3d4831aghae-arayeshgar.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ ØµÛŒØ§Ø¯ 44', 17, '-', '-', '', '', '', '', '', ''),
('akhavan_hoseini', '36046851', '-', NULL, '36046851', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø§Ø®ÙˆØ§Ù† Ø­Ø³ÛŒÙ†ÛŒ', '../uploads/cfabf14cc6fc007455d559d36b4c02e0akhavane-hoseini.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 1Ùˆ3', 38, '-', 'Ø§Ø®ÙˆØ§Ù† Ø­Ø³ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('alereza', '37610400', '09151110558', NULL, '37616290', '', 'Ø¸Ø±ÙˆÙ Ú©Ø±Ø§ÛŒÙ‡ Ø¢Ù„ Ø±Ø¶Ø§', '../uploads/9319a1bf5560e527e0df3af5bfaf01b5ale-reza.jpg', '', 'Ø³Ù‡ Ø±Ø§Ù‡ ÙÙ„Ø³Ø·ÛŒÙ† Ù…Ù‚Ø§Ø¨Ù„ ÙÙ„Ø³Ø·ÛŒÙ† 31', 15, '-', 'Ø®ÙˆØ´Ø¯Ù„', '', '', '', '', '', ''),
('amiran', '38709380', '-', NULL, '38709380', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø§Ù…ÛŒØ±Ø§Ù†', '../uploads/cc7dc67e796bad131e71991d909862cdamiran.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 10 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø®Ø§Ù„Ù‚ÛŒ', 16, '-', '-', '', '', '', '', '', ''),
('antonio', '38425455', '09153105243', NULL, '38425455', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¢Ù†ØªÙˆÙ†ÛŒÙˆ', '../uploads/3c096dcfb4f2208849ff44e135b23535antonio.jpg', '', 'Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ù…Ù‚Ø§Ø¨Ù„ Ù‡ØªÙ„ Ù‡Ù…Ø§', 16, '-', 'Ù…ÛŒØ±Ù…Ù†ØªØ¸Ù…ÛŒ', '', '', '', '', '', ''),
('antoriom', '36040233', '09151077472', NULL, '36040233', '', 'Ú¯Ù„ Ø¢Ù†ØªÙˆØ±ÛŒÙˆÙ…', '../uploads/142e644d1a34e8d744afc0cd5eab7e1aantorriom.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØªÙ‚Ø§Ø·Ø¹ ÙØ±Ø§Ù…Ø±Ø²Ø¹Ø¨Ø§Ø³ÛŒ', 20, '-', 'ØµÙÙˆÛŒ', '', '', '', '', '', ''),
('arad_shargh', '37664113', '-', NULL, '37664113', '', 'Ø¢Ø±Ø§Ø¯ Ø´Ø±Ù‚', '../uploads/3fbf50e890259fab807f6e8a8943b0efarad-shargh.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø®ÛŒØ§Ù…-Ø®ÛŒØ§Ù…11-Ù¾Ù„Ø§Ú©87', 27, '-', '-', '', '', '', '', '', ''),
('arayesh_20', '09392498892', '09392498892', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ 20', '../uploads/b2eb3a2b024c244888c6c9c3c97a491e20.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ ØµÛŒØ§Ø¯ 25', 17, '-', 'Ø­Ø³ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('arayesh_afshar', '09126121698', '09126121698', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ø§ÙØ´Ø§Ø±', '../uploads/732f5cecf296e3e16e92bd3e61cb9a06afshar.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒØ­Ø§Ù…Ø¯ 12ØŒÙ¾Ù„Ø§Ú© 144', 17, '-', 'Ø§ÙØ´Ø§Ø±', '', '', '', '', '', ''),
('arayesh_akhavan', '38682735', '-', NULL, '38682735', '', 'Ø¢Ø±Ø§ÛŒØ´ Ø§Ø®ÙˆØ§Ù†', '../uploads/ac3fc35c7566853caac97ab6834f45abakhavan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ Ø¨Ù„ÙˆØ§Ø± Ø´Ù‡ÛŒØ¯ Ù‚Ø§Ù†Ø¹ØŒÙ†Ø¨Ø´ Ù‚Ø§Ù†Ø¹ 8', 17, '-', 'Ø§Ø®ÙˆØ§Ù†', '', '', '', '', '', ''),
('arayesh_alas', '37664955', '09159156721', NULL, '37664955', '', 'Ø¢Ø±Ø§ÛŒØ´ Ø¢Ù„Ø§Ø³', '../uploads/2eba18968b51fef0dee0f13a00b81caealas.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ³Ø¬Ø§Ø¯ØŒØ¨Ù‡Ø§Ø±Ø³ØªØ§Ù† 9ØŒÙ…Ù‚Ø§Ø¨Ù„ Ù¾Ø§Ø±Ú© Ø¨Ù†ÙØ´Ù‡', 17, '-', '-', '', '', '', '', '', ''),
('arayesh_arian', '09356391818', '09356391818', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ø¢Ø±ÛŒÙ†', '../uploads/3e6b83204f794f4599ba42997173d002arian.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¯Ø§Ù†Ø´Ø¬Ùˆ 4 Ù¾Ù„Ø§Ú© 14', 17, '-', 'Ø¢Ø±ÛŒÙ†', '', '', '', '', '', ''),
('arayesh_ario', '09157777487', '09157777487', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ø¢Ø±ÛŒÙˆ', '../uploads/e10c990f199ab5114b53c3dfa8176cd7ario.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ³Ø¬Ø§Ø¯ 8 Ø®ÛŒØ§Ø¨Ø§Ù† Ù„Ø§Ù„Ù‡', 17, '-', 'Ø¢Ø±ÛŒÙˆ', '', '', '', '', '', ''),
('arayesh_fardin', '09159759020', '09159759020', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ ÙØ±Ø¯ÛŒÙ†', '../uploads/a63822f9026310068632665f868fc145fardin.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ØµÛŒØ§Ø¯ 39 Ùˆ 37', 17, '-', 'ÙØ±Ø¯ÛŒÙ†', '', '', '', '', '', ''),
('arayesh_mani', '09153130117', '09153130117', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ù…Ø§Ù†ÛŒ', '../uploads/4161e93fd489e9269c1bc5da03c51edamani.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒØ­Ø§Ù…Ø¯ 12&#40;Ø¬Ø§Ù…ÛŒ&#41;Ø¬Ù†Ø¨ Ù¾Ø§Ø±Ú©', 17, '-', 'Ù…ÛŒØ«Ù…', '', '', '', '', '', ''),
('arayesh_mobiform', '09366019399', '09366019399', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ù…ÙˆØ¨ÛŒ ÙØ±Ù…', '../uploads/85f326c213feafd58c1526bff344e0bcmobi-fom.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ØµÛŒØ§Ø¯ 24 Ùˆ 26', 17, '-', 'Ù†ÛŒØ±ÙˆØ§Ù†ÛŒ', '', '', '', '', '', ''),
('arayesh_moeen', '09355303529', '09355303529', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ù…Ø¹ÛŒÙ†', '../uploads/51378b5cdd1976a298bb858e6aff9c5amoein.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ØµÛŒØ§Ø¯ 21 Ùˆ 23', 17, '-', 'Ø­Ø³ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('arayesh_perfect', '09399278036', '09399278036', NULL, '-', '', ' Ø¢Ø±Ø§ÛŒØ´ Ù¾Ø±ÙÚ©Øª', '../uploads/5779b75b687016d58ec957db1493e602perfect.jpg', '', 'Ù…Ø´Ù‡Ø¯ ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 27 Ù¾Ù„Ø§Ú© 7', 17, '-', 'Ù…ÛŒÙ„Ø§Ø¯Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('arayesh_rad', '09354338933', '09354338933', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ø±Ø§Ø¯', '../uploads/e646f6ba399b003bf5a49f5a819d655crad.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ø¨ÛŒÙ† ØµØ¯Ù 9 Ùˆ 11', 17, '-', 'Ø±Ø§Ø¯', '', '', '', '', '', ''),
('arayesh_royal', '09152000830', '09152000830', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ø±ÙˆÛŒØ§Ù„', '../uploads/afddfef9597813cb183f30c40408bc06royal.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒÙ†Ø¨Ø´ Ø²Ù†Ø¨Ù‚ 3', 17, 'Ù…Ø­Ù…Ø¯', '-', '', '', '', '', '', ''),
('arayesh_saeed', '09155011757', '09155011757', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´Ú¯Ø§Ù‡ Ø³Ø¹ÛŒØ¯', '../uploads/5b01f3fa5deae07e05c3034b5be07af4saed.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ…ÛŒØ¯Ø§Ù† Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ØŒÙ†Ø¨Ø´ Ø·Ø§Ù„Ù‚Ø§Ù†ÛŒ', 17, 'Ø­Ù…ÛŒØ¯', 'ØµÙØ§ÛŒÛŒ', '', '', '', '', '', ''),
('arayesh_sharpfid', '09151383828', '09151383828', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ø´Ø§Ø±Ù¾ÙÛŒØ¯', '../uploads/b71ae72b861e454bf8823fd9bfdcd575sharpfid.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ ØŒ Ù†Ø¨Ø´ Ú¯ÙˆÛŒØ§ 1', 17, '-', 'Ù…ÛŒÙ„Ø§Ø¯', '', '', '', '', '', ''),
('arayesh_siyavash', '09358668036', '09358668036', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ø³ÛŒØ§ÙˆØ´', '../uploads/1349774f7cb608f843886dab865a7e11siavash.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ØŒØ±Ùˆ Ø¨Ù‡ Ø±ÙˆÛŒ Ø¯Ø§Ù†Ø´Ø³Ø±Ø§', 17, 'Ø³ÛŒØ§ÙˆØ´', '-', '', '', '', '', '', ''),
('arayeshi_2negah', '36041282', '09353422266', NULL, '051-36041282', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ø¯ÙˆÙ†Ú¯Ø§Ù‡', '', '', 'Ø¨ÛŒÙ† ÙØ±Ù‡Ù†Ú¯ 19 Ùˆ 21 Ù¾Ù„Ø§Ú© 275', 39, 'Ù…Ù‡Ø¯ÛŒ', 'Ø¹Ø¨Ø§Ø³ Ø²Ø§Ø¯Ù‡', '', 'test', '', '', '', ''),
('arayeshi_baran', '38697208', '09354776360', NULL, '38697208', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ø¨Ø§Ø±Ø§Ù†', '../uploads/23ef6143137ad5ceaa22c1c948d25da5baran.jpg', '', 'Ø¯Ø§Ù†Ø´Ø¬Ùˆ 6', 39, '-', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ', '', '', '', '', '', ''),
('arayeshi_cheshmak', '36040626', '09157071516', NULL, '36040626', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ú†Ø´Ù…Ú©', '../uploads/c3bf749a6a52074e2b54636046e89993cheshmak.jpg', '', 'Ø§Ù…Ø§Ù…Øª ØŒÙ¾Ø§Ø³Ø§Ú˜ Ø¹Ù…Ø§Ø±Øª', 39, '-', 'Ø·Ø§Ù‡Ø±ÛŒ Ø§Ù‡ÙˆØ§Ø²ÛŒ', '', '', '', '', '', ''),
('arayeshi_daryush', '09120745742', '09120745742', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ø¯Ø§Ø±ÛŒÙˆØ´', '', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ Ù…Ø¬ØªÙ…Ø¹ Ø¢Ø¨Ø§Ù† Ù¾Ù„Ø§Ú© 115', 39, '-', '-', '', '', '', '', '', ''),
('arayeshi_jigh', '38938311', '09158199822', NULL, '38938311', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ø¬ÛŒØº', '../uploads/a7b9be358c8b5bf88741aff56b99a94cjigh.jpg', '', 'Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ 15 Ùˆ 17', 39, 'Ù‡Ø§Ø¯ÛŒ', 'Ø±Ø­ÛŒÙ…ÛŒ', '', 'test', '', '', '', ''),
('arayeshi_kamand', '36057804', '-', NULL, '36057804', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ú©Ù…Ù†Ø¯', '../uploads/547226057823ac4799b049aec81ade14kamand.jpg', '', 'Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 10 Ùˆ 12', 39, '-', 'Ú©ÛŒÙˆØ§Ù† ÙØ±Ø¯', '', '', '', '', '', ''),
('arayeshi_ladan', '38690566', '-', NULL, '38690566', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ù„Ø§Ø¯Ù†', '../uploads/b23ea824bf4e1d3d232232872d28b38bladan.jpg', '', 'Ù†Ø¨Ø´ Ø¯Ø§Ù†Ø´Ø¬Ùˆ 8', 39, 'Ø±Ø¶Ø§', 'Ù…Ø±Ø§Ø¯ÛŒ', '', '', '', '', '', ''),
('arayeshi_mahbano', '38437686', '09365719398', NULL, '38437686', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ù…Ø§Ù‡ Ø¨Ø§Ù†Ùˆ', '../uploads/5cfb24e9c6ad53e2f915b66d254e9d5emah-bano.jpg', '', 'Ø¯Ø§Ø®Ù„ Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ 12', 39, '-', 'Ø³Ø§Ø¯Ø§Øª', '', '', '', '', '', ''),
('arayeshi_mersede', '38781979', '09152500893', NULL, '38781979', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ù…Ø±Ø³Ø¯Ù‡', '../uploads/858ae261302c9ca624a00d140c181772mersede.jpg', '', 'Ø¨ÛŒÙ† Ø±Ø¶ÙˆÛŒ 25 Ùˆ 27', 39, '-', '-', '', '', '', '', '', ''),
('arayeshi_paradais', '36054359', '09308002290', NULL, '36054359', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ù¾Ø§Ø±Ø§Ø¯Ø§ÛŒØ³', '../uploads/8a25f397bb93f6e841b3a602f71cd362paradais.jpg', '', 'Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 9 Ùˆ 11', 39, '-', 'Ø­Ø³ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('arayeshi_parastu', '38922256', '09127109060', NULL, '38922256', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ù¾Ø±Ø³ØªÙˆ', '../uploads/99bcdea8f0e00316b22da0976718e2e3parasto.jpg', '', 'Ù†Ø¨Ø´ Ø¯Ø§Ù†Ø´Ø¬Ùˆ 23', 39, '-', 'Ù†Ø¬ÙÛŒ', '', '', '', '', '', ''),
('arayeshi_payon', '09156991004', '09156991004', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ù¾Ø§ÛŒÙˆÙ†', '../uploads/cd47b35a5842ab247b6f926e4881ee26payon.jpg', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ 17 Ø³Ø§Ù…Ø§Ù†ÛŒÙ‡ 16', 39, '-', '-', '', '', '', '', '', ''),
('arayeshi_sahar', '38813089', '-', NULL, '38813089', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ø³Ø­Ø±', '../uploads/b0639f45e9f1164a59cb821be5975d00sahar.jpg', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ 17 Ù†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯ÙˆÙ…', 39, '-', 'Ø¹Ø±ÙØ§Ù†ÛŒ', '', '', '', '', '', ''),
('arayeshi_sorkhab', '36054258', '-', NULL, '051-36054258', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ø³Ø±Ø®Ø§Ø¨', '', '', 'Ù…ÛŒØ¯Ø§Ù† Ø³ÛŒØ¯Ø±Ø¶ÛŒ Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¨Ù„ÙˆØ§Ø± ÙØ±Ù‡Ù†Ú¯', 39, 'Ø§Ù…ÛŒØ±', 'Ø§Ø®ÙˆÛŒ Ø²Ø§Ø¯Ù‡', '', 'test', '', '', '', ''),
('arayeshi_yamin', '38826216', '09159153843', NULL, '38826216', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ ÛŒÙ…ÛŒÙ†', '../uploads/053bf6678f9b839a3ac12743d6d5f08fyamin.jpg', '', 'Ù†Ø¨Ø´ Ù‡Ù†Ø±Ø³ØªØ§Ù† 40', 39, '-', 'Ø­Ø³ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('arayeshi-jigh', '38823883', '09358267966', NULL, '38823883', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ø¨Ù‡Ø¯Ø§Ø´ØªÛŒ Ø¬ÛŒØº', '', '', 'Ù…Ø´Ù‡Ø¯ ØŒ Ù†Ø¨Ø´ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 43', 39, 'Ø¹Ù„ÛŒØ±Ø¶Ø§ ', 'Ø­Ù…ÛŒØ¯ÛŒ', '', 'test', '', '', '', ''),
('aria', '09395191515', '09395191515', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ø¢Ø±ÛŒØ§', '../uploads/1b8c0cb22bf963b0eb7c672f18e8d7afaria.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ÙÚ©ÙˆØ±ÛŒ 6 Ùˆ 8', 17, '-', 'Ø¢Ø±ÛŒØ§', '', '', '', '', '', ''),
('armaghan_beheshti', '37614950', '-', NULL, '37614950', '', 'Ø§Ø±Ù…ØºØ§Ù† Ø¨Ù‡Ø´ØªÛŒ', '../uploads/acef8ba1de8109ae9ee52a5e67940ab3armghan-beheshti.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±-Ù¾Ø§Ø³Ø§Ú˜  Ù…Ø±ÙˆØ§Ø±ÛŒØ¯', 28, '-', '-', '', '', '', '', '', ''),
('arsyeshi_ede', '0930002371', '0930002371', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ø¨Ù‡Ø¯Ø§Ø´ØªÛŒ Ø§ÛŒØ¯Ù‡', '../uploads/a317d4fa2a6685ffbe5e055443af37adede.jpg', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ 3 Ù¾Ù„Ø§Ú© 14', 39, '-', '-', '', '', '', '', '', ''),
('ashpazkhane_ali', '38797970', '09151159923', NULL, '38797970', '', 'Ø¢Ø´Ù¾Ø²Ø®Ø§Ù†Ù‡ Ø¹Ù„ÛŒ', '../uploads/430ffc4eda19e240b6691e2384038dadali.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 1 Ùˆ 3', 24, '-', 'Ø´Ø§Ø¯-Ù…Ù‚Ø¯Ù…', '', '', '', '', '', ''),
('ashpazkhane_salamat', '38841056', '09151574756', NULL, '38841056', '', 'Ø¢Ø´Ù¾Ø²Ø®Ø§Ù†Ù‡ Ùˆ ØºØ°Ø§ÛŒ Ø¢Ù…Ø§Ø¯Ù‡ Ø³Ù„Ø§Ù…Øª', '../uploads/55c9982f7ffbc91b09e16d6cf5f0e97dsalamat.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ú©ÙˆØ«Ø± Ø´Ù…Ø§Ù„ÛŒ 27', 24, '-', 'Ø³Ù„Ø§Ù…Øª', '', '', '', '', '', ''),
('Ashpazkhane-niavaran', '37641900', '09153112080', NULL, '37641900', '', 'Ø¢Ø´Ù¾Ø²Ø®Ø§Ù†Ù‡ Ù†ÛŒØ§ÙˆØ±Ø§Ù†', '../uploads/4f32be98d86576c1fa048f64c069dec5niavaran.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ-Ø¨Ø¹Ø¯ Ø§Ø² Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ ÙØ±Ø§Ù…Ø±Ø² Ø¹Ø¨Ø§Ø³ÛŒ', 24, '-', 'Ú©Ù„ÛŒØ¯Ø±ÛŒ', '', '', '', '', '', ''),
('ashpazkhaneh_ayoni', '38912121', '-', NULL, '38912121', '', 'Ø¢Ø´Ù¾Ø²Ø®Ø§Ù†Ù‡ Ùˆ ØºØ°Ø§ÛŒ Ø¢Ù…Ø§Ø¯Ù‡ Ø§ÛŒÙˆÙ†ÛŒ', '../uploads/b6626acf6fa1a8d4d119518cda90f6ceayoni.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¨Ù„ÙˆØ§Ø± ÙØ®Ø±Ø§ÛŒÛŒ', 24, '-', '-', '', '', '', '', '', ''),
('asre_jadid', '123456', '09155070239', NULL, '37605511', '', 'Ø¹ØµØ±Ø¬Ø¯ÛŒØ¯', '../uploads/ebebc7637e94c5134631d3bc1b2349a3asrJadid.png', '', 'Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ Ø¨ÛŒÙ† ÙØ±Ø¯ÙˆØ³ÛŒ 12 Ùˆ 14  Ø¨Ù‡ Ø³Ù…Øª Ù…ÛŒØ¯Ø§Ù† Ø¬Ø§Ù†Ø¨Ø§Ø²ØŒÙ¾Ù„Ø§Ú© 250', 1, '-', 'Ø§Ø­Ø³Ù†ÛŒ', '', '', '', '', '', ''),
('atefe_afzalnia', '09151113540', '09151113540', NULL, '-', '', 'Ø¯Ú©ØªØ± Ø¹Ø§Ø·ÙÙ‡ Ø§ÙØ¶Ù„ Ù†ÛŒØ§', '../uploads/7536afe5a808800a45235b0b6945505bdr-afzal-nia.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø´Ù‡ÛŒØ¯ Ø¨Ù‡Ø´ØªÛŒ-Ù…ÛŒØ¯Ø§Ù† Ø´Ù‡ÛŒØ¯ Ú¯ÙˆØ´Ù‡ Ø§ÛŒ-Ù…Ø·Ø¨ Ø¯Ú©ØªØ± Ø§ÙØ¶Ù„ Ù†ÛŒØ§', 27, 'Ø¹Ø§Ø·ÙÙ‡', 'Ø§ÙØ¶Ù„ Ù†ÛŒØ§', '', '', '', '', '', ''),
('ati', '38431919', '-', NULL, '38431919', '', 'Ø¢ØªÛŒ', '../uploads/40e42522f8f0f4ab91298a1832ec1207ati.jpg', '', 'Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ø§Ø¨ÙˆØ°Ø± 8 Ù¾Ù„Ø§Ú© 58', 26, '-', '-', '', '', '', '', '', ''),
('atra', '38442804', '-', NULL, '38442804', '', 'Ø®Ø¯Ù…Ø§Øª Ù…Ø³Ø§ÙØ±ØªÛŒ Ø¢ØªØ±Ø§', '../uploads/63f12185cfe46359c09bc8b5494a7b2eatra.jpg', '', 'Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ø¨ÛŒÙ† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ 2 Ùˆ 4 Ù¾Ù„Ø§Ú© 273', 26, '-', '-', '', '', '', '', '', ''),
('atre_sefid', '37619550', '-', NULL, '37619550', '', 'Ø¹Ø·Ø± Ø³ÙÛŒØ¯', '../uploads/069e24f577e9c8b7812c6ae36b032242atre-sefid.jpg', '', 'Ø³Ø¬Ø§Ø¯ ØŒ Ù‚Ø¨Ù„ Ø§Ø² Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ù‡Ø§Ø±', 39, '-', '-', '', '', '', '', '', ''),
('baghsara_firuze', '09153142334', '09153142334', NULL, '-', '', 'Ø¨Ø§ØºØ³Ø±Ø§ÛŒ ÙÛŒØ±ÙˆØ²Ù‡', '../uploads/593da8a95696e94e96d2b3275366748ffirozeh.jpg', '', 'Ø´Ø§Ù†Ø¯ÛŒØ² Ù‚Ø¨Ù„ Ø§Ø² Ù¾Ù…Ù¾ Ø¨Ù†Ø²ÛŒÙ† ØŒÙ…Ø¯Ø±Ø³ 35ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† Ø«Ø§Ù…Ù†', 13, '-', 'Ø¬Ø¹ÙØ±ÛŒ', '', '', '', '', '', ''),
('baghsara_shams', '09153142334', '09153142334', NULL, '-', '', 'Ø¨Ø§ØºØ³Ø±Ø§ÛŒ Ø´Ù…Ø³', '../uploads/fcb0d543c89661f500c0378eaad3cc47shams.jpg', '', 'Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¬Ø§Ø¯Ù‡ Ø´Ø§Ù†Ø¯ÛŒØ²ØŒØ®ÛŒØ§Ø¨Ø§Ù† ÙØ±Ù…Ø§Ù†ÛŒÙ‡', 13, '-', 'Ù†Ø¨ÛŒ', '', '', '', '', '', ''),
('baghsara_zenit', '09151156163', '09151156163', NULL, '-', '', 'ØªØ§Ù„Ø§Ø± Ùˆ Ø¨Ø§ØºØ³Ø±Ø§ÛŒ Ø²Ù†ÛŒØ·', '../uploads/9ffe81d33021bffdd0f6e8bb63f35f98zanit.jpg', '', 'Ø´Ø§Ù†Ø¯ÛŒØ²ØŒØ¬Ø§Ø¯Ù‡ Ø´Ù‡Ø±Ú© ØµÙ†Ø¹ØªÛŒ', 13, '-', 'Ø¨Ø±Ø§ØªÛŒØ§Ù†', '', '', '', '', '', ''),
('baghtalar_erisa', '35512700', '09153160400', NULL, '35512700', '', 'Ø¨Ø§Øº ØªØ§Ù„Ø§Ø± Ø§Ø±ÛŒØ³Ø§', '../uploads/460951dbc5a1bd6cca60c2aee216e497arisa.jpg', '', 'Ø·Ø±Ù‚Ø¨Ù‡ Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 11', 13, '-', 'Ø§Ú©Ø¨Ø±Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('barg_sabz', '38927141', '09151253700', NULL, '38927141', '', 'Ù‚Ù†Ø§Ø¯ÛŒ Ø¨Ø±Ú¯ Ø³Ø¨Ø²', '../uploads/04b9c4a42af05e54b3fbe7018202106abarge-sabz.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ²', 19, '-', 'ÙÚ©ÙˆØ±', '', '', '', '', '', ''),
('barge_sabz', '38335024', '-', NULL, '38335024', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¨Ø±Ú¯ Ø³Ø¨Ø²', '../uploads/8c5a5399850b80b1107fa9230d106400barge-sabz.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜-Ø·Ø¨Ù‚Ù‡ -1', 28, '-', '-', '', '', '', '', '', ''),
('barico', '37578163', '09151118953', NULL, '37578163', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø¨Ø§Ø±ÛŒÚ©Ùˆ', '', '', 'Ø¨Ù„ÙˆØ§Ø± Ø®ÛŒØ§Ù…ØŒÙ†Ø¨Ø´ Ø®ÛŒØ§Ù… Ø´Ù…Ø§Ù„ÛŒ 63', 34, '-', 'Ø­Ø§Ø¬ÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('bazargani_percian', '38785807', '09195279005', NULL, '38785807', '', 'Ø¨Ø§Ø²Ø±Ú¯Ø§Ù†ÛŒ Ù¾Ø±Ø´ÛŒÙ†', '../uploads/e0dc42f780936f929ecda16ca811f4bebazargani-persian.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù¾ÛŒØ±ÙˆØ²ÛŒ Ù†Ø¨Ø´ Ø®Ø§Ù‚Ø§Ù†ÛŒ 10', 34, '-', 'Ø¨Ø®ØªÛŒØ§Ø±ÛŒ', '', '', '', '', '', ''),
('beauty_abanmah', '36018896', '09158788405', NULL, '36018896', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø¢Ø¨Ø§Ù† Ù…Ù‡', '../uploads/2426d76599f1ff35f2523649469e372cabanmeh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ù‡Ù†Ú¯ØŒÙØ±Ù‡Ù†Ú¯ 20ØŒØ¨ÛŒÙ† Ø´Ù‡ÛŒØ¯ Ø±Ø¶ÙˆÛŒ 19 Ùˆ 21', 1, '-', '-', '', '', '', '', '', ''),
('beauty_anahel', '38829399', '09154973135', NULL, '38829399', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø¢Ù†Ø§Ù‡Ù„', '../uploads/895494d88e68c743a601d9338f310d17anahel.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 55 Ù¾Ù„Ø§Ú© 471', 1, '-', 'Ù…ÛŒØ±Ø²Ø§ÛŒÛŒ-Ø¨Ù‡Ø±ÙˆØ´', '', '', '', '', '', ''),
('beauty_asre_zibayi', '38419116', '09155248149', NULL, '38419116', '', 'Ø³Ø§Ù„Ù† Ø¹ØµØ± Ø²ÛŒØ¨Ø§ÛŒÛŒ', '../uploads/ca77c10e6014820d8d108971fe558f70asrezibayi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ØŒØ§Ù†ØªÙ‡Ø§ÛŒ Ø§Ø¨ÙˆØ°Ø±ØºÙØ§Ø±ÛŒ 27', 1, '-', '-', '', '', '', '', '', ''),
('beauty_banootak', '37687558', '09155081529', NULL, '37687558', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø¨Ø§Ù†Ùˆ ØªÚ©', '../uploads/b14d0436f37c8bf82d3409374aea3ed4banootak.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒØ¨ÛŒÙ† 18 Ùˆ 20ØŒÙ¾Ù„Ø§Ú© 408', 1, '-', 'ØµØ§Ø¯Ù‚ÛŒ', '', '', '', '', '', ''),
('beauty_chehrebartar', '37686659', '09359350909', NULL, '37686659', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ú†Ù‡Ø±Ù‡ Ø¨Ø±ØªØ±', '../uploads/3e7090a30c43ee9e9ecfc6c7322e160fchehrebartar.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ­Ø§Ø´ÛŒÙ‡ Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒØ¨ÛŒÙ† Ø«Ù…Ø§Ù†Ù‡ Ùˆ Ù…Ù‡Ø¯ÛŒ ØŒÙ¾Ù„Ø§Ú© 171', 1, '-', 'Ø±ÙˆØ­Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('beauty_donya', '38837217', '09153157217', NULL, '38837217', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø¯Ù†ÛŒØ§', '../uploads/8911418a5c105cf69c8bc21f7424a406donya.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù‡Ø§Ø´Ù…ÛŒÙ‡ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 11ØŒÙ†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø§ÙˆÙ„ØŒØ³Ù…Øª Ú†Ù¾', 1, 'Ø¯Ù†ÛŒØ§', 'Ø¨ÛŒØª Ø§Ù„Ø§Ù…Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('beauty_elham_tabatabayi', '38821588', '09387998699', NULL, '38821588', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø§Ù„Ù‡Ø§Ù… Ø·Ø¨Ø§Ø·Ø¨Ø§ÛŒÛŒ', '../uploads/bdfe3e3d07880d7da40ec12754cc191delhamtabatabayi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 5ØŒÙ†Ø¨Ø´ Ø³Ø§Ù…Ø§Ù†ÛŒÙ‡ 6ØŒÙ¾Ù„Ø§Ú©43', 1, 'Ø§Ù„Ù‡Ø§Ù…', 'Ø·Ø¨Ø§Ø·Ø¨Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('beauty_farara', '38689316', '09155045564', NULL, '38689316', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ ÙØ±Ø¢Ø±Ø§', '../uploads/c6a3b34c071fa686c0f1f2ee353f3aa8farara.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡ÙØª ØªÛŒØ± 8ØŒÚ¯Ù„Ø´Ù† 4/1ØŒØ´Ù…Ø§Ø±Ù‡ 60', 1, 'Ù…Ø­Ø¨ÙˆØ¨Ù‡', 'Ø±Ø­ÛŒÙ…ÛŒ', '', '', '', '', '', ''),
('beauty_ghermez', '38929430', '09155050280', NULL, '38929430', '', 'Ú¯Ø±ÙˆÙ‡ Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù‚Ø±Ù…Ø²', '../uploads/6c5abcec2dd1504d5ca2aaf2ad3c7166ghermez.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯40/1ØŒÚ©ÙˆÚ†Ù‡ Ø¬Ù†Ø¨ Ù‡ØªÙ„ Ù¾Ø§Ø±Ø³&#40;Ø¨Ù„ÙˆØ§Ø± ØµÛŒØ§Ø¯ Ø´ÛŒØ±Ø§Ø²ÛŒ 2ØŒØµÛŒØ§Ø¯Ø´ÛŒØ±Ø§Ø²ÛŒ 2/2&#41;', 1, '-', 'Ù„Ø·ÙÛŒ-Ù†Ø¬Ø§Ø±ÛŒ', '', '', '', '', '', ''),
('beauty_golden_shears', '37689607', '09151004045', NULL, '37689607', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù‚ÛŒÚ†ÛŒ Ø·Ù„Ø§ÛŒÛŒ', '../uploads/5f6ab0719f21d8a1ad66a2094c2dd530gheychitalayi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ ØŒØ­Ø¯ÙØ§ØµÙ„ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ ÙØ±Ø§Ù…Ø±Ø² Ø¹Ø¨Ø§Ø³ÛŒ Ùˆ Ù…Ù‡Ø¯ÛŒØŒØ³Ù…Øª Ø±Ø§Ø³Øª Ù¾Ù„Ø§Ú© 504', 1, '-', 'Ù¾ÙˆØ±Ù…Ø­Ù…Ø¯', '', '', '', '', '', ''),
('beauty_hasti', '36043073', '09377852909', NULL, '36043073', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù‡Ø³ØªÛŒ', '../uploads/04a0647808cafa884e381bf2409a63bahasti.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù…ØŒÙ…Ø¹Ù„Ù… 26ØŒØ´ÛŒØ® Ù…ÙÛŒØ¯ 18ØŒÙ¾Ù„Ø§Ú© 326/2', 1, '-', 'ØªØ§Ø¬ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('beauty_larisa', '38421103', '09156268290', NULL, '38421103', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù„Ø§Ø±ÛŒØ³Ø§', '../uploads/1bd05b709363af8a37b82b7393117fe7larisa.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø¨Ø®Ø§Ø±Ø§Ø¦ÛŒ 20 Ù¾Ù„Ø§Ú© 110', 1, '-', '-', '', '', '', '', '', ''),
('beauty_lilinaz', '37647135', '09155981994', NULL, '37647135', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù„ÛŒ Ù„ÛŒ Ù†Ø§Ø²', '../uploads/8d0099e56e13065b3355591e2931d431lilinaz.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ', 1, '-', '-', '', '', '', '', '', ''),
('beauty_mahanta', '38849399', '09376923973', NULL, '38849399', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù…Ø§Ù‡Ø§Ù†ØªØ§', '../uploads/dfa4daa9c4fe5dce55231d859f7af806mahanta.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ­Ø§Ø´ÛŒÙ‡ Ø¨Ù„ÙˆØ§Ø± ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ØŒØ¨ÛŒÙ† Ø³Ø§Ù…Ø§Ù†ÛŒÙ‡ Ùˆ Ù‡Ø§Ø´Ù…ÛŒÙ‡ØŒÙ¾Ù„Ø§Ú© 204/3', 1, 'Ù…Ù‡ØªØ§Ø¨ ', 'Ø¹ØµÙ…ØªÛŒ Ù†ÛŒØ§', '', '', '', '', '', ''),
('beauty_mahdad', '09151178791', '09151178791', NULL, '-', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù…Ø§Ù‡Ø¯Ø§Ø¯', '../uploads/e9eb405e85e0003f69b94ac28f9c26d5mahoor.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù…ØŒÙ…Ø¹Ù„Ù… 50ØŒØ±Ùˆ Ø¨Ù‡ Ø±ÙˆÛŒ ØµØ¯Ù 14', 1, '-', '-', '', '', '', '', '', ''),
('beauty_mahoor', '37622630', '09151051031', NULL, '37622630', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù…Ø§Ù‡ÙˆØ±', '../uploads/a7fac99e83dfa56d4f23141f3ebe4f38mohar.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒØ­Ø¯ÙØ§ØµÙ„ Ù…ÛŒØ¯Ø§Ù† Ø¬Ø§Ù†Ø¨Ø§Ø² Ùˆ Ø¯Ø±Ù…Ø§Ù†Ú¯Ø§Ù‡ Ø´ÙˆØ±ÛŒØ¯Ù‡ØŒÙ¾Ù„Ø§Ú© 252', 1, '-', 'Ø§ÛŒØ²Ø¯ÛŒ-Ø¹Ø²ÛŒØ²ÛŒ', '', '', '', '', '', ''),
('beauty_mahtarokh', '09023993909', '09023993909', NULL, '-', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù…Ù‡ ØªØ§Ø±Ø®', '../uploads/2ad7d26cd2f3b1c72d484ac0f7be31f0mahtarokh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒØ¨Ø²Ø±Ú¯Ù…Ù‡Ø± Ø¬Ù†ÙˆØ¨ÛŒ 12/1ØŒÙ¾Ù„Ø§Ú© 16', 1, '-', '-', '', '', '', '', '', ''),
('beauty_maryam', '37642693', '-', NULL, '37642693', '', 'Ø³Ø§Ù„Ù† Ø¹Ø±ÙˆØ³ Ù…Ø±ÛŒÙ…', '../uploads/70226cde1e00cce8cbbde457ae31c1c5maryam.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ…Ù„Ú© Ø¢Ø¨Ø§Ø¯ØŒØ¨Ø²Ø±Ú¯Ù…Ù‡Ø± Ø¬Ù†ÙˆØ¨ÛŒ 10', 1, '-', '-', '', '', '', '', '', ''),
('beauty_maryam_flower', '37682290', '09379122588', NULL, '37682290', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ú¯Ù„ Ù…Ø±ÛŒÙ…', '../uploads/f249f316b58025ca3c57c4ecb3eb7758golmaryam.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ­Ø§Ø´ÛŒÙ‡ Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒØ­Ø¯ÙØ§ØµÙ„ ÙØ±Ø¯ÙˆØ³ÛŒ 14 Ùˆ 16ØŒÙ¾Ù„Ø§Ú© 338', 1, '-', '-', '', '', '', '', '', ''),
('beauty_mehrdokht', '37627182', '-', NULL, '37627182', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù…Ù‡Ø±Ø¯Ø®Øª', '../uploads/05a5a67f4dbb23f260d0b7dd0aa3f4b8mehrdokht.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒÙØ±Ø¯ÙˆØ³ÛŒ 13ØŒØ«Ù…Ø§Ù†Ù‡ 1ØŒØ´Ù…Ø§Ø±Ù‡ 73', 1, '-', '-', '', '', '', '', '', ''),
('beauty_nadin', '38946458', '09362558934', NULL, '38946458', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù†Ø§Ø¯ÛŒÙ†', '../uploads/a4d4c95d88ada8c715ab3a47e7bb9f59nadin.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù…ØŒØ¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² 18 Ù¾Ù„Ø§Ú© 11', 1, 'Ø³Ø­Ø±-Ø³Ù…ÛŒØ±Ø§', 'Ù†Ù‡Ø§Ø±Ø¯Ø§Ø¦ÛŒ-Ù…Ù„Ú©ÛŒ', '', '', '', '', '', ''),
('beauty_narmela', '38800033', '09155116604', NULL, '38800033', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù†Ø§Ø±Ù…Ù„Ø§', '../uploads/71b232f772c61026b452a1c6e63d0bd9narmela.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 3ØŒÙ¾Ù„Ø§Ú© 48', 1, '-', '-', '', '', '', '', '', ''),
('beauty_nonina', '37647800', '09151115504', NULL, '37647800', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù†ÙˆÙ†ÛŒÙ†Ø§', '../uploads/23a676ef11f17b8ca6542bc423bb141enonina.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ù… 10ØŒÛŒØ§Ø³Ù…Ù† 12ØŒÙ¾Ù„Ø§Ú© 93', 1, '-', '-', '', '', '', '', '', ''),
('beauty_otana', '36075660', '09155103491', NULL, '36075660', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø§ÙˆØªØ§Ù†Ø§', '../uploads/c316927f97523b1ee3c197d8115d081fotana.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ²ØŒØ¨ÛŒÙ† Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² 13 Ùˆ 15ØŒØ¬Ù†Ø¨ Ù…Ø­Ø¶Ø± Ø§Ø²Ø¯ÙˆØ§Ø¬', 1, '-', 'ØºÙˆØ±Ù‡ Ø¯Ø§Ù†', '', '', '', '', '', ''),
('beauty_palace', '37668114', '09303762331', NULL, '37668114', '', 'Ú©Ø§Ø® Ø²ÛŒØ¨Ø§ÛŒÛŒ', '../uploads/8dfc86301eaca5efd826350b6e99008ckakh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ ØŒØ­Ø¯ÙØ§ØµÙ„ Ø«Ù…Ø§Ù†Ù‡ Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ù‡Ø¯ÛŒ ØŒÙ¾Ù„Ø§Ú© 203', 1, '-', 'Ø§Ù…ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('beauty_parin', '38826900', '09155176670', NULL, '38826900', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù¾Ø±ÛŒÙ†', '../uploads/d5fa98ed70ba949fe58de0a6221335a8parin.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒØ¨Ø¹Ø¯Ø§Ø² ÙØ±Ø¯ÙˆØ³ÛŒ 14ØŒØ´Ù…Ø§Ø±Ù‡ 288', 1, '-', '-', '', '', '', '', '', ''),
('beauty_redrose', '36099626', '09152004803', NULL, '36099626', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø±Ø² Ø³Ø±Ø®', '../uploads/b9a69863a59b9a4f40d33c539d71d353redroz.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù…ØŒÙ…Ø¹Ù„Ù… 16ØŒ&#40;ÙØ±Ù‡Ù†Ú¯ 13 Ù…Ø¹Ø§Ø¯ 19ØŒÙ¾Ù„Ø§Ú© 192 Ø·Ø¨Ù‚Ù‡ Ù‡Ù…Ú©Ù', 1, '-', 'Ø¶ÛŒØ§Ø¦ÛŒ', '', '', '', '', '', ''),
('beauty_rozara', '36071300', '-', NULL, '36071300', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø±Ø²Ø¢Ø±Ø§', '../uploads/114492116be877e93d8c409e4cf9c30frozara.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒØ­Ø¯ÙØ§ØµÙ„ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ù‡Ø¯ÛŒ Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ ÙØ±Ø§Ù…Ø±Ø²ØŒÙ¾Ù„Ø§Ú© 257', 1, '-', '-', '', '', '', '', '', ''),
('beauty_rozic', '38461602', '09157771277', NULL, '38461602', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø±Ø²ÛŒÚ©', '../uploads/5598bd045404129b704d44147adf71f6rozic.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ØŒÙ†Ø¨Ø´ Ø±Ø¶Ø§ 27', 1, '-', '-', '', '', '', '', '', ''),
('beauty_satel', '37651771', '09151049778', NULL, '37651771', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø³Ø§ØªÙ„', '../uploads/6cba8c34c935cd4a80a5edecc8c7d36dsatel.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ­Ø§Ø´ÛŒÙ‡ Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒØ­Ø¯ÙØ§ØµÙ„ Ø«Ù…Ø§Ù†Ù‡ Ùˆ Ù…Ù‡Ø¯ÛŒ Ù¾Ù„Ø§Ú© 167', 1, '-', 'Ù…Ø­Ø±Ø§Ø¨ÛŒ', '', '', '', '', '', ''),
('beauty_shadenno', '38818929', '09153074079', NULL, '38818929', '', 'Ù…Ø¬Ù…ÙˆØ¹Ù‡ ØªØ®ØµØµÛŒ Ø´Ø§Ø¯Ù† Ù†Ùˆ', '../uploads/a7f459253aefd085ae0511713538fcfbshadenno.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 28/4ØŒÙ†Ø¨Ø´ ØµØ§Ø±Ù…ÛŒ 24/12ØŒÙ¾Ù„Ø§Ú© 3', 1, 'Ù…Ø¨ÛŒÙ†Ø§', 'Ú©Ø±ÛŒÙ…ÛŒØ§Ù†', '', '', '', '', '', ''),
('beauty_shan', '38844295', '09158259733', NULL, '38844295', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø´Ø§Ù†', '../uploads/33ca6f6d5ce7276fa8eb83dec3431a7eshan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 41&#40;Ù‡Ù†Ø±Ø³ØªØ§Ù† 26&#41;ØŒØ¨ÛŒÙ† ØªØ§Ø¨Ø§Ù† 8 Ùˆ 10', 1, '-', 'Ø¹ØµÙ…ØªÛŒ_Ø¯Ø§Ø¯Ø³ØªØ§Ù†', '', '', '', '', '', ''),
('beauty_tabanmaryam', '09377393007', '09377393007', NULL, '-', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù…Ø±ÛŒÙ… ØªØ§Ø¨Ø§Ù†', '../uploads/ee60e7e77c2f24bccd06e9ec341bdb07maryamtaban.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒØ¨ÛŒÙ† ÙØ±Ø¯ÙˆØ³ÛŒ 13 Ùˆ 15ØŒÙ¾Ù„Ø§Ú© 175', 1, '-', '-', '', '', '', '', '', ''),
('beauty_toprokh', '38846023', '09155805520', NULL, '38846023', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ ØªØ§Ù¾ Ø±Ø®', '../uploads/9171183ba74838470f04da79914199aftaprokh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 11ØŒØ´Ù…Ø§Ø±Ù‡ 24', 1, '-', 'Ù†Ø§ØµØ±ÛŒ', '', '', '', '', '', ''),
('beauty_veis', '37688309', '09155198815', NULL, '37688309', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ ÙˆÛŒØ³', '../uploads/c7fc4c993559d5cccb93288df3452dc8vis.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ­Ø§Ø´ÛŒÙ‡ Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒÚ†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ù‡Ø¯ÛŒ Ø¨Ù‡ Ø³Ù…Øª Ù…ÛŒØ¯Ø§Ù† Ø¬Ø§Ù†Ø¨Ø§Ø² Ù¾Ù„Ø§Ú© 350', 1, '-', '-', '', '', '', '', '', ''),
('belghys', '38945381', '09106255662', NULL, '38945381', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¨Ù„Ù‚ÛŒØ³', '../uploads/b79eef7db3cd805cace5807e39f35307belgheis.jpg', '', 'Ø¯Ø§Ù†Ø´Ø¬Ùˆ 6', 37, '-', 'Ø¨Ù‚Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('beuty_marziye_afkhami', '37632626', '09155022364', NULL, '37632626', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù…Ø±Ø¶ÛŒÙ‡ Ø§ÙØ®Ù…ÛŒ', '../uploads/8346cf0b986d08be1778fedf6d7a3f14marziyeafkhami.jpg', '', '-', 1, 'Ù…Ø±Ø¶ÛŒÙ‡', 'Ø§ÙØ®Ù…ÛŒ', '', '', '', '', '', ''),
('bita', '38704070', '09152024616', NULL, '38704070', '', 'Ø®Ø¯Ù…Ø§Øª Ù…Ø³Ø§ÙØ±ØªÛŒ Ø¨ÛŒØªØ§', '../uploads/0771f29a80dd880380f5ceb91beab336bita.jpg', '', 'Ø¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 12 Ùˆ 14', 26, '-', '-', '', '', '', '', '', ''),
('booji', '37678668', '-', NULL, '37678668', '', 'Ù„Ø¨Ø§Ø³ Ù…Ø±Ø¯Ø§Ù†Ù‡ Ø¨ÙˆØ¬ÛŒ', '../uploads/2e0fb6e5a2bb66973e7af45ccfa3ded5boji.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒÚ†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±ØŒÙ…Ø±Ú©Ø² Ø®Ø±ÛŒØ¯ Ú©Ø§Ø³Ù¾ÛŒÙ† Ù…Ø¯', 16, '-', '-', '', '', '', '', '', ''),
('bosch_karagostar', '38434995', '09155030668', NULL, '38434995', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¨ÙˆØ´ Ú©Ø§Ø±Ø§ Ú¯Ø³ØªØ±', '../uploads/fa45a0bf8f88c1370973213e920ff42ebosch-kara-gostar.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 46', 28, '-', 'Ø¬Ù„Ø§Ù„ÛŒ', '', '', '', '', '', ''),
('cake_neyshekar', '38937430', '09035108147', NULL, '38937430', '', 'Ú©ÛŒÚ© Ùˆ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ù†ÛŒØ´Ú©Ø±', '../uploads/18b178ed4b44f12f5a586e048cb8c428neyshekar.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 43 Ùˆ 45', 19, '-', '-', '', '', '', '', '', ''),
('card_anderia', '09151071233', '09151071233', NULL, '-', '', 'Ú©Ø§Ø±Øª Ø¢Ù†Ø¯Ø±ÛŒØ§', '../uploads/e2de1f0f0ba01634c2a1144c19fc4832anderia.jpg', '', 'Ù‚Ø§Ø³Ù… Ø¢Ø¨Ø§Ø¯ØŒ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ø®Ø§Ø¨Ø±Ø§ØªØŒ Ø¯Ø§Ø®Ù„ Ø´Ø±ÛŒØ¹ØªÛŒ 12', 18, '-', 'Ø¬Ù‡Ø§Ù†Ø¯Ø§Ø±', '', '', '', '', '', ''),
('card_asia', '32229171', '09154506053', NULL, '32229171', '', 'Ú©Ø§Ø±Øª Ø¢Ø³ÛŒØ§', '../uploads/4b23399d8023caf6765afa2da6046cbfasia.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ù¾Ø§Ø³Ø¯Ø§Ø±Ø§Ù† ØŒ Ù…Ù‚Ø§Ø¨Ù„ Ù‡ØªÙ„ Ø¬Ù…', 18, '-', 'ØªØ­Ø±ÛŒØ±Ú†ÛŒ', '', '', '', '', '', ''),
('card_berands', '37688980', '09157704179', NULL, '37688980', '', 'Ú©Ø§Ø±Øª Ø¨Ø±Ù†Ø¯Ø³', '../uploads/a41241d90e8bc058c325eb5f1626212abrands.jpg', '', 'Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø®ÛŒØ§Ù… Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¯Ø³ØªØºÛŒØ¨', 18, '-', '-', '', '', '', '', '', ''),
('card_gol', '37650849', '09154083035', NULL, '37650849', '', 'Ú©Ø§Ø±Øª Ú¯Ù„', '../uploads/5990d21e4ac195b46f1f95e31b261a43gol.jpg', '', 'Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø®ÛŒØ§Ù… Ø±ÙˆØ¨Ù‡ Ø±ÙˆÛŒ Ù…Ø³Ú©Ù† Ø±Ø§Ù‡ Ùˆ Ø´Ù‡Ø±Ø³Ø§Ø²ÛŒ', 18, '-', 'Ø¬Ù‡Ø§Ù†Ø¯Ø§Ø±', '', '', '', '', '', ''),
('card_goleyas', '37625339', '09153176370', NULL, '37625339', '', 'Ú©Ø§Ø±Øª Ú¯Ù„ ÛŒØ§Ø³', '../uploads/7f69a6f821b11a63f94370bfa34ab3ecgole-yas.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø´Ù‡ÛŒØ¯ Ø¯Ø³ØªØºÛŒØ¨', 18, '-', '-', '', '', '', '', '', ''),
('card_honar', '38211355', '-', NULL, '38211355', '', 'Ú©Ø§Ø±Øª Ù‡Ù†Ø±', '../uploads/504783df990a057f2449f2f8f9c6ec1dhonar.jpg', '', 'Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ 14 ØŒÙ¾Ù„Ø§Ú© 5', 18, '-', '-', '', '', '', '', '', ''),
('card_nafis', '37615050', '-', NULL, '37615050', '', 'Ú©Ø§Ø±Øª Ù†ÙÛŒØ³', '../uploads/98680c34b73130c8b12ec49717926b58nafis.jpg', '', 'Ù†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø®ÛŒØ§Ù…', 18, '-', 'ØªØ­Ø±ÛŒØ±Ú†ÛŒ', '', '', '', '', '', ''),
('card_saba', '38649090', '-', NULL, '38649090', '', 'Ú†Ø§Ù¾ Ùˆ Ú©Ø§Ø±Øª ØµØ¨Ø§', '../uploads/d63b183e709b3355ca589e9cbbed5cafsaba.jpg', '', 'Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 55 Ùˆ 57', 18, '-', 'ØµÙØ±Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('card_tehrancart', '37674230', '09300635373', NULL, '37674230', '', 'ØªÙ‡Ø±Ø§Ù† Ú©Ø§Ø±Øª', '../uploads/67bc44e9911abc3b32c1ea3300683cfftehran-cart.jpg', '', 'Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø®ÛŒØ§Ù… Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¯Ø³ØªØºÛŒØ¨', 18, '-', '-', '', '', '', '', '', ''),
('card_toranj', '09151156318', '09151156318', NULL, '-', '', 'Ú©Ø§Ø±Øª ØªØ±Ù†Ø¬', '../uploads/d5db653d8e5fbf465501ab77ae3c0b87toranj.jpg', '', 'Ø¨Ø¹Ø¯ Ø§Ø² Ù¾Ù„ Ø¬Ø§Ù†Ø¨Ø§Ø²ØŒ Ø¨ÛŒÙ† Ø¢Ù…ÙˆØ²Ú¯Ø§Ø± 3 Ùˆ 5', 18, '-', 'Ø¬Ù„Ø§Ù„ÛŒ', '', '', '', '', '', ''),
('card_venus', '32735645', '-', NULL, '32735645', '', 'Ú©Ø§Ø±Øª ÙˆÙ†ÙˆØ³', '../uploads/a72e609f5599689590574ae70a81bc61venos.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ø·Ø¨Ø±Ø³ÛŒØŒ Ù†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ø±Ù‚ Ùˆ Ø³ÛŒÙ„Ùˆ', 18, '-', 'Ø´Ø±ÛŒØ¹ØªÛŒ', '', '', '', '', '', ''),
('card_zebarjad', '36087045', '09155034624', NULL, '36087045', '', 'Ú©Ø§Ø±Øª Ø²Ø¨Ø±Ø¬Ø¯', '../uploads/c773937bccae32792cce44eb0aabf3c7zebarjd.jpg', '', 'Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 18 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ø¹Ù„Ù…', 18, '-', 'Ø²Ø¨Ø±Ø¬Ø¯ÛŒØ§Ù†', '', '', '', '', '', ''),
('chap_amin', '09378855847', '09378855847', NULL, '-', '', 'Ú†Ø§Ù¾ Ø§Ù…ÛŒÙ†', '../uploads/ae86f44fb04810b06701a24a486a5143amin.jpg', '', 'Ù…Ø´Ù‡Ø¯', 18, '-', 'Ø³ÛŒØ¯ÛŒ', '', '', '', '', '', ''),
('chap_negarin', '38681689', '09150629007', NULL, '38681689', '', 'Ú†Ø§Ù¾ Ùˆ ØªØ¨Ù„ÛŒØºØ§Øª Ù†Ú¯Ø§Ø±ÛŒÙ†', '../uploads/933e4c25c6634f40826f94b828c20b40negarin.jpg', '', 'Ù¾ÛŒØ±ÙˆØ²ÛŒ 50/1 Ù†Ø¨Ø´ Ø§Ø±Ø´Ø§Ø¯', 18, '-', 'Ø¹Ø§Ø¨Ø¯', '', '', '', '', '', ''),
('chap_siadat', '32244222', '09151159265', NULL, '32244222', '', 'Ú†Ø§Ù¾ Ø³ÛŒØ§Ø¯Øª', '../uploads/0740c3d18314907bf7bc5f21b414eb61siadat.jpg', '', 'Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø­Ø¬Øª&#40;Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø²Ø±ÛŒÙ†Ù‡&#41;', 18, '-', 'Ø³ÛŒØ§Ø¯Øª', '', '', '', '', '', ''),
('chap_ziazade', '36110788', '09153170944', NULL, '36110788', '', 'Ú†Ø§Ù¾ Ø¶ÛŒØ§Ø²Ø§Ø¯Ù‡', '../uploads/d5e64a7e1afab85ebea348a0930a560eziazade.jpg', '', 'Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 22 Ùˆ 24', 18, '-', 'Ø¶ÛŒØ§Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('chapkhane_mehr', '36042078', '09013445911', NULL, '36042078', '', 'Ú†Ø§Ù¾Ø®Ø§Ù†Ù‡ Ù…Ù‡Ø±', '../uploads/1953ae70fc0e138e8ddb15a557c1ec7amehr.jpg', '', 'Ø¨ÛŒÙ† Ø³ÛŒØ¯Ø±Ø¶ÛŒ 21 Ùˆ 23', 18, '-', 'Ø¶ÛŒØ§Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('chehre_bartar', '09363646154', '09363646154', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ú†Ù‡Ø±Ù‡ Ø¨Ø±ØªØ±', '../uploads/30cce72c80efd5ad4dc2a88d6935d0c5chehre-bartar.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ ØµØ§Ø±Ù…ÛŒ 28', 17, 'Ø¹Ù„ÛŒØ±Ø¶Ø§', '-', '', '', '', '', '', ''),
('clinic_baran', '38846970', '09038461999', NULL, '38846970', '', 'Ú©Ù„ÛŒÙ†ÛŒÚ© ØªØ®ØµØµÛŒ Ù¾ÙˆØ³Øª Ùˆ Ù…Ùˆ Ø¨Ø§Ø±Ø§Ù†', '../uploads/7de7c66a937bc6bc07d3fe6324431b83baran.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ù‡Ø§Ø´Ù…ÛŒÙ‡-Ø¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 5 Ùˆ 7-Ø³Ø§Ø®ØªÙ…Ø§Ù† Ø¨Ø§Ø±Ø§Ù†-Ø·Ø¨Ù‚Ù‡ Ø¯ÙˆÙ…', 27, 'Ù†Ø§Ø²Ù†ÛŒÙ†', 'Ø³Ù…Ù†Ø¯Ø±ÛŒ Ù†Ú˜Ø§Ø¯', '', '', '', '', '', ''),
('clinic_edeal', '36069090', '-', NULL, '36069090', '', 'Ú©Ù„ÛŒÙ†ÛŒÚ© Ù¾ÙˆØ³Øª Ùˆ Ù…Ùˆ Ø§ÛŒØ¯Ù‡ Ø§Ù„', '../uploads/dd109db76102b80081b7692d8b78da3dedeal.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø­Ø§Ù…Ø¯-Ù¾289', 27, '-', 'Ø¯Ú©ØªØ± Ø®Ø²Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('clinic_goharbod', '37679903', '-', NULL, '37679903', '', 'Ú©Ù„ÛŒÙ†ÛŒÚ© Ù¾ÙˆØ³Øª Ùˆ Ù…Ùˆ Ú¯Ù‡Ø±Ø¨Ø¯', '../uploads/b484f74c757591577a897818cb6fb6fegoharbod.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø³Ø¬Ø§Ø¯ 5&#40;Ø²Ù†Ø¨Ù‚&#41; -Ù¾41', 27, '-', '-', '', '', '', '', '', ''),
('clinic_negin', '37664704', '09150023111', NULL, '37664700', '', 'Ù…Ø±Ú©Ø² ØªØ®ØµØµÛŒ Ù¾ÙˆØ³Øª Ùˆ Ù…Ùˆ Ù†Ú¯ÛŒÙ† ', '../uploads/0cb590cf200cdd7a888b9635f7632522negin.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø± Ø¬Ù†ÙˆØ¨ÛŒ 6', 27, '-', '-', '', '', '', '', '', ''),
('clinic_noavaran', '37666633', '09152050601', NULL, '37666633', '', 'Ú©Ù„ÛŒÙ†ÛŒÚ© Ù¾ÙˆØ³Øª Ùˆ Ù…Ùˆ Ù†ÙˆØ§ÙˆØ±Ø§Ù†', '../uploads/57dbbb70f5aeb70d54cfa0a711a9d1c5noavaran.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø³Ø¬Ø§Ø¯-Ù†Ø¨Ø´ Ø¨Ù‡Ø§Ø± 3', 27, '-', '-', '', '', '', '', '', ''),
('clinic_shaparak', '36038680', '-', NULL, '36038680', '', 'Ú©Ù„ÛŒÙ†ÛŒÚ© Ù¾ÙˆØ³Øª Ùˆ Ù…Ùˆ Ø´Ø§Ù¾Ø±Ú©', '../uploads/6fe78d8aefa8d118a8c897d2a427c28ashaparak.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø­Ø§Ù…Ø¯ Ø´Ù…Ø§Ù„ÛŒ', 27, '-', '-', '', '', '', '', '', ''),
('clinik_abnos                                                                                                                                                                                                                                              ', '38093', '-', NULL, '38093', '', 'Ú©Ù„ÛŒÙ†ÛŒÚ© Ø¢Ø¨Ù†ÙˆØ³', '../uploads/57fd8d6d71ab3e4b42658b2c014ed402abnos.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯-Ø¨ÛŒÙ† Ø¨Ù‡Ø´Øª Ùˆ Ù¾Ø§Ø³ØªÙˆØ±-Ù…Ø¬ØªÙ…Ø¹ Ø¨Ù‡Ø²Ø§Ø¯', 27, '-', '-', '', '', '', '', '', ''),
('clinik_moradian', '37672706', '-', NULL, '37672706', '', 'Ú©Ù„ÛŒÙ†ÛŒÚ© Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø¯Ú©ØªØ± Ù…Ø±Ø§Ø¯ÛŒØ§Ù†', '../uploads/bf7af5f865384cde47bfaf3c0235c2a9dr-moradian.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø± Ø´Ù…Ø§Ù„ÛŒ 1-Ù…Ø¬ØªÙ…Ø¹ ØªØ¬Ø§Ø±ÛŒ Ø´Ù‡Ø± Ø´Ø¨ -Ø·Ø¨Ù‚Ù‡ Ø³ÙˆÙ…-ÙˆØ§Ø­Ø¯ 31', 27, '-', 'Ù…Ø±Ø§Ø¯ÛŒØ§Ù†', '', '', '', '', '', ''),
('clinik_viogsa', '37610518', '09151010699', NULL, '37610518', '', 'Ú©Ù„ÛŒÙ†ÛŒÚ© Ù¾ÙˆØ³Øª Ùˆ Ù…Ùˆ ÙˆÛŒÙˆÚ¯Ø³Ø§', '../uploads/56d01d092368b1c7e2430666e86b35d8viogsa.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯-Ø±ÙˆØ¨Ù‡ Ø±ÙˆÛŒ Ø³Ù‡ Ø±Ø§Ù‡ Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ', 27, '-', 'Ø³ÙˆØ¯Ù…Ù†Ø¯', '', '', '', '', '', ''),
('closeup', '09157001784', '09157001784', NULL, '-', '', 'Ø®Ø§Ù†Ù‡ Ø¯Ø§Ù…Ø§Ø¯ Ú©Ù„ÙˆØ²Ø¢Ù¾', '../uploads/3ff1c8698286c95467a1a65932bf6e14close-up.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒØ­Ø¯ÙØ§ØµÙ„ Ø³Ø¬Ø§Ø¯ 12 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±ØŒØ¨Ø±Ø¬ Ø§ÙØ±Ø§ØŒØ·Ø¨Ù‚Ù‡ 5ØŒÙˆØ§Ø­Ø¯ 501', 16, 'Ø­Ø¨ÛŒØ¨', 'Ø«Ø¨ØªÛŒ', '', '', '', '', '', ''),
('cristal_kaktos', '37620460', '-', NULL, '37620460', '', 'Ú©Ø±ÛŒØ³ØªØ§Ù„ Ú©Ø§Ú©ØªÙˆØ³', '../uploads/60e647c212f8912f59f5b1fca48998c1Ceristal-kaktos.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±-Ù¾Ø§Ø³Ø§Ú˜  Ù…Ø±ÙˆØ§Ø±ÛŒØ¯', 28, '-', '-', '', '', '', '', '', ''),
('cristal_masoud', '38690200', '09158525887', NULL, '38690200', '', 'Ú©Ø§Ø¯ÙˆÛŒÛŒ Ùˆ Ú©Ø±ÛŒØ³ØªØ§Ù„ Ù…Ø³Ø¹ÙˆØ¯', '../uploads/1418d9b696258e7628d2217c850eebf8masod.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¯Ø§Ø®Ù„ ØµÛŒØ§Ø¯2', 28, '-', 'Ú¯Ù„Ú©Ø§Ø±', '', '', '', '', '', ''),
('cristal_nik', '37681132', '-', NULL, '37681132', '', 'Ú©Ø±ÛŒØ³ØªØ§Ù„ Ù†ÛŒÚ©', '../uploads/e1978e63936094031fe2484377077628nik.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±', 28, '-', 'Ù†ÛŒÚ©', '', '', '', '', '', ''),
('daftar_115', '38814881', '09155146717', NULL, '38814881', '', 'Ø¯ÙØªØ± Ø±Ø³Ù…ÛŒ Ø§Ø²Ø¯ÙˆØ§Ø¬ 115', '../uploads/7f4cfad2b36730af5fcb4c3a2f54f520115.jpg', '', 'Ù†Ø¨Ø´ Ú©ÙˆØ«Ø± Ø´Ù…Ø§Ù„ÛŒ 35', 25, '-', '-', '', '', '', '', '', ''),
('daftar_14', '37681455', '09155156208', NULL, '37681455', '', 'Ø¯ÙØªØ± Ø±Ø³Ù…ÛŒ Ø§Ø²Ø¯ÙˆØ§Ø¬ 14', '../uploads/81ae433ba042030d90a8ffde51bb924214.jpg', '', 'Ø¨ÛŒÙ† Ù…ÛŒØ¯Ø§Ù† Ø¬Ø§Ù†Ø¨Ø§Ø² Ùˆ Ø®ÛŒØ§Ø¨Ø§Ù† Ø«Ù…Ø§Ù†Ù‡', 25, '-', 'Ø¹Ø·Ø§Ù¾ÙˆØ±', '', '', '', '', '', ''),
('daftar_28', '36096438', '09153111928', NULL, '36096438', '', 'Ø¯ÙØªØ± Ø±Ø³Ù…ÛŒ Ø§Ø²Ø¯ÙˆØ§Ø¬ 28', '../uploads/acd8fb14569ef84a330cbd62fa6157c628.jpg', '', 'Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² 13 Ùˆ 15 Ù¾Ù„Ø§Ú© 125', 25, '-', 'Ø®ÛŒØ±Ø¬Ùˆ', '', '', '', '', '', ''),
('daftar_55', '38935550', '09370089322', NULL, '38935550', '', 'Ø¯ÙØªØ± Ø±Ø³Ù…ÛŒ Ø§Ø²Ø¯ÙˆØ§Ø¬ 55', '', '', 'Ù†Ø¨Ø´ ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 29 Ù¾Ù„Ø§Ú© 655', 25, '-', 'ØªØ´Ú©Ø±ÛŒ', '', '', '', '', '', ''),
('daftar_59', '36013356', '09157900559', NULL, '36013356', '', 'Ø¯ÙØªØ± Ø±Ø³Ù…ÛŒ Ø§Ø²Ø¯ÙˆØ§Ø¬ 59', '../uploads/220704f9a01854b4424592c09152217e59.jpg', '', 'Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ ÙØ±Ø§Ù…Ø±Ø² Ù…Ø¬ØªÙ…Ø¹ Ù…Ø§Ù‡Ø§Ù† Ø·Ø¨Ù‚Ù‡ 1', 25, '-', 'Ù…Ø±Ø§Ø¯ÛŒØ§Ù†', '', '', '', '', '', ''),
('daftar_90', '37669898', '09124494146', NULL, '37669898', '', 'Ø¯ÙØªØ± Ø±Ø³Ù…ÛŒ Ø§Ø²Ø¯ÙˆØ§Ø¬ 90', '../uploads/4b24c629ec316f783173d20b38cb60c790.jpg', '', 'Ø¨ÛŒÙ† ÙØ±Ø¯ÙˆØ³ÛŒ 20 Ùˆ 22', 25, '-', 'Ø¶ÛŒØ§ÛŒÛŒ', '', '', '', '', '', ''),
('daftar_97', '38654440', '09153038915', NULL, '38684440', '', 'Ø¯ÙØªØ± Ø±Ø³Ù…ÛŒ Ø§Ø²Ø¯ÙˆØ§Ø¬ 97', '../uploads/d4d6b0f8bab8d7c03df0248a5af658a797.jpg', '', 'Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² 12 Ùˆ 14', 25, '-', 'Ø¬Ø¹ÙØ±ÛŒ', '', '', '', '', '', ''),
('debenhams', '38453008', '-', NULL, '38453008', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¯Ø¨Ù†Ù‡Ø§Ù…Ø²', '../uploads/1cf368ad1a9d719be8c55a69360f5b41debenhams.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ ØŒØ¨ÛŒÙ† Ø®ÛŒØ§Ø¨Ø§Ù† Ù‡Ø´ØªÙ… Ùˆ Ø¯Ù‡Ù…ØŒÙ¾Ù„Ø§Ú© 162', 16, '-', '-', '', '', '', '', '', ''),
('decor_bartar', '09156857185', '09156857185', NULL, '-', '', 'Ø¯Ú©ÙˆØ± Ø¨Ø±ØªØ±', '../uploads/742c4e2332ea7f84fa310df7a0efbc3bdecore-bartar.jpg', '', 'Ù†Ø¨Ø´ Ù‡ÙØª ØªÛŒØ± 21', 33, '-', 'Ø·Ù‡Ù…Ø§Ø³Ø¨ÛŒ', '', '', '', '', '', ''),
('dizdar', '09153053054', '09153053054', NULL, '-', '', 'ØªØ§Ù„Ø§Ø± Ùˆ Ø¨Ø§ØºØ³Ø±Ø§ÛŒ Ø¯ÛŒØ²Ø¯Ø±', '../uploads/01ddd1bbabbdc9db7030920c7ff7e4d6dizdar.jpg', '', 'Ú©ÛŒÙ„ÙˆÙ…ØªØ± 5 Ø¬Ø§Ø¯Ù‡ Ø´Ø§Ù†Ø¯ÛŒØ²ØŒØ³Ù…Øª Ú†Ù¾', 13, '-', 'Ù‡Ù„Ø§Ú©ÙˆÛŒÛŒ', '', '', '', '', '', ''),
('doago', '38416078', '09151161345', NULL, '38416078', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¯Ø¹Ø§Ú¯Ùˆ', '../uploads/5a1843fe869c0f6db98093f667f2670cdoago.jpg', '', 'Ù†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 41', 16, '-', '-', '', '', '', '', '', ''),
('doktor_perfume', '38646175', '-', NULL, '38646175', '', 'Ø¯Ú©ØªØ± Ù¾Ø±ÙÛŒÙˆÙ…', '', '', 'Ù†Ø¨Ø´ Ù‡Ù†Ø±Ø³ØªØ§Ù† 33', 39, '-', 'ØªÙ‚ÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('dolphin_talayi', '09155158153', '09155158153', NULL, '-', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø¯Ù„ÙÛŒÙ† Ø·Ù„Ø§ÛŒÛŒ', '../uploads/476df5a384c5afd2acd1416c84db71f5dolfin-talaie.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù…Ø¹Ù„Ù… 12', 34, '-', 'Ù‚Ø§Ø³Ù…ÛŒ', '', '', '', '', '', ''),
('donery', '36091010', '-', NULL, '36091010', '', 'Ù¾Ø±Ø¯Ù‡ Ùˆ Ù¾Ø§Ø±Ú†Ù‡ Ø¯ÙˆÙ†Ø±ÛŒ ', '../uploads/1e1e0cb61a61d1db37bbc9d884cc7135doneri.jpg', '', 'Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…ÛŒÙ„Ø§Ø¯ Ø¨ÛŒÙ† Ø§Ø³ØªÙ‚Ù„Ø§Ù„ 6 Ùˆ 8', 33, '-', '-', '', '', '', '', '', ''),
('dorsa_home', '376008601', '-', NULL, '376008601', '', ' Ø¯Ø±Ø³Ø§ Ù‡ÙˆÙ…', '../uploads/130faf4185ee8892575c54b06de79d9edorsa.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ ØŒØ¨ÛŒÙ† Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø± Ùˆ Ù„Ø§Ù„Ù‡ØŒØ³Ø§Ø®ØªÙ…Ø§Ù† Ø®Ø§Ù†Ù‡ Ø¯Ø±Ø³Ø§', 11, '-', '-', '', '', '', '', '', ''),
('enil_parvazaria', '38848014', '-', NULL, '38848014', '', 'Ø®Ø¯Ù…Ø§Øª Ù…Ø³Ø§ÙØ±ØªÛŒ Ø§Ù†ÛŒÙ„ Ù¾Ø±ÙˆØ§Ø² Ø§Ø±ÛŒØ§', '../uploads/e8c22c9add44ecdcc4e7322d7536176banil.jpg', '', 'Ù†Ø¨Ø´ ÙÚ©ÙˆØ±ÛŒ 34 Ù¾Ù„Ø§Ú© 314', 26, '-', 'Ø§Ø­Ù…Ø¯ÛŒØ§Ù†', '', '', '', '', '', ''),
('espadana', '38829910', '-', NULL, '38829910', '', 'Ø®Ø¯Ù…Ø§Øª Ù…Ø³Ø§ÙØ±ØªÛŒ Ø§Ø³Ù¾Ø§Ø¯Ø§Ù†Ø§', '../uploads/956220e6477e4378e5f15318b5afd2d7espadana.jpg', '', 'Ø¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 1 Ùˆ 3', 26, '-', 'Ù…Ù‚Ø¯Ù…', '', '', '', '', '', ''),
('fakher', '33390827', '-', NULL, '33390827', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ ÙØ§Ø®Ø±', '../uploads/5c7f025a2efda34e5a9d340d51ed6f55fakher.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ù†ÙˆØ§Ø¨ ØµÙÙˆÛŒØŒÙ…Ø¬ØªÙ…Ø¹ Ø¢Ø±Ù…Ø§Ù†ØŒØ·Ø¨Ù‚Ù‡ Ù…Ù†ÙÛŒ ÛŒÚ©', 16, '-', '-', '', '', '', '', '', ''),
('foroshgah_karaja', '38665373', '-', NULL, '38665373', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ú©Ø§Ø±Ø§Ø¬Ø§', '../uploads/9d07859ded5fac1a08a15928899ab76bkaraja.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜-Ø·Ø¨Ù‚Ù‡ -1', 28, '-', '-', '', '', '', '', '', ''),
('foroshgah_korkmaz', '38335914', '-', NULL, '38335914', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ú©Ø±Ú©Ù…Ø§Ø²', '../uploads/e06e8f7cfa9b8535b79bc277db86a998korkmaz.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜-Ø·Ø¨Ù‚Ù‡ -1', 28, '-', '-', '', '', '', '', '', ''),
('foroshgah_maghsod', '38647185', '09154130277', NULL, '38647185', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ù…Ù‚ØµÙˆØ¯', '../uploads/dea643f1925d3a8aee71878e6c2e994dmaghsod.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù‡ÙØª ØªÛŒØ± 13Ùˆ15', 28, '-', 'Ø¯Ø±ÙˆÛŒØ´ÛŒ', '', '', '', '', '', ''),
('foroshgah_roya', '38945843', '09159080944', NULL, '38945843', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø±ÙˆÛŒØ§', '../uploads/dea230ecf8f851a393d6b8e4b65d3e7droya.jpg', '', 'ØµÛŒØ§Ø¯ Ø´ÛŒØ±Ø§Ø²ÛŒ 1 Ù¾Ø§Ø³Ø§Ú˜Ø¹Ù‚ÛŒÙ‚ Ú©Ù†Ø§Ø±Ú©Ø§Ø±Ú¯Ø²Ø§Ø±ÛŒ', 37, '-', 'Ø¨Ø§Ø¨Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('foroshgah_tefal', '38336093', '09150274102', NULL, '38336093', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ ØªÙØ§Ù„', '../uploads/92cc6bc7b334b51163a9988ffbf842aetefal.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜-Ø·Ø¨Ù‚Ù‡ -1', 28, '-', 'Ø­Ø³ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('froshgah_bazli', '38451588', '-', NULL, '38451588', '', 'tÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¨Ø§Ø²Ù„ÛŒ', '../uploads/99e87e91bf4160c3823c10b1600a0161bazeli.jpg', '', 'Ø¨ÛŒÙ† Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ 8 Ùˆ 10', 16, '-', '-', '', '', '', '', '', ''),
('froshgah_dnili', '09155002678', '09155002678', NULL, '-', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¯Ù†ÛŒÙ„ÛŒ', '../uploads/510b036565594bf71416b3ac0585ad89danili.jpg', '', 'Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ù…Ù‚Ø§Ø¨Ù„ Ù‡ØªÙ„ Ù‡Ù…Ø§', 16, '-', '-', '', '', '', '', '', ''),
('froshgah_homan', '38433177', '-', NULL, '38433177', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ù‡ÙˆÙ…Ø§Ù†', '../uploads/9bfa33ef876ac8f3b267060c67713689homan.jpg', '', 'Ù†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 38', 16, '-', '-', '', '', '', '', '', ''),
('froshgah_papion', '38474770', '-', NULL, '38474770', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ù¾Ø§Ù¾ÛŒÙˆÙ†', '../uploads/33e64697d4bcb55076d196e103e46851papion.jpg', '', 'Ù¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ Ø¬Ù†Ø¨ Ø¨Ø§Ù†Ú© Ù…Ù„Øª Ù¾Ù„Ø§Ú© 382', 16, '-', '-', '', '', '', '', '', ''),
('frushgah_abrisham', '38829907', '-', NULL, '38829907', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø§Ø¨Ø±ÛŒØ´Ù…', '', '', 'Ù†Ø¨Ø´ Ù‡Ù†Ø±Ø³ØªØ§Ù† 10', 39, '-', 'Ø´ÛŒØ±Ø®Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('frushgah_yasmina', '36074501', '09151305313', NULL, '36074501', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ ÛŒØ§Ø³Ù…ÛŒÙ†Ø§', '../uploads/25cb385b23e6f1591674a22c848b3312yasmina.jpg', '', 'Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 8 Ùˆ 10Ù¾Ù„Ø§Ú© 202/1', 39, '-', 'ÙØ±Ø®Ù†Ø¯Ù‡', '', '', '', '', '', ''),
('frushgah_yekiyedone', '09398951055', '09398951055', NULL, '-', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ ÛŒÚ©ÛŒ ÛŒØ¯ÙˆÙ†Ù‡', '../uploads/e6617c4a458d523adb501ece3980162dyeki-yedone.jpg', '', 'Ø¨ÛŒÙ† Ø³ÛŒØ¯Ø±Ø¶ÛŒ 27 Ùˆ 29', 39, '-', 'ØµØ¨ÙˆØ±ÛŒ', '', '', '', '', '', ''),
('gabrielmon', '38403405', '-', NULL, '38403405', '', 'Ú¯Ø§Ø¨Ø±ÛŒÙ„ Ù…ÙˆÙ†', '../uploads/3a0c3dfd3f1a48af398625cb8abe3336gabril-moon.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ù…Ù‚Ø§Ø¨Ù„ Ø³Ù‡ Ø±Ø§Ù‡ Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ', 16, '-', '-', '', '', '', '', '', ''),
('galery_farhad', '38335163', '09158200263', NULL, '38335163', '', 'Ú¯Ø§Ù„Ø±ÛŒ ÙØ±Ù‡Ø§Ø¯', '../uploads/dd2e5bff2f57e2024b1a58c2dd8ceec7farhad.jpg', '', 'Ù‡ÙØª ØªÛŒØ± 8 Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜ Ø·Ø¨Ù‚Ù‡ Ø¯ÙˆÙ… ÙˆØ§Ø­Ø¯ 420', 34, 'ÙØ±Ù‡Ø§Ø¯', 'Ø¹Ø±ÙØ§Ù†ÛŒ', '', '', '', '', '', ''),
('galery_fazel', '37114580', '-', NULL, '051-37114580', '', 'Ú¯Ø§Ù„Ø±ÛŒ ÙØ§Ø¶Ù„', '../uploads/82a0c39742b88b04af1bd029cfcb3255fazel.jpg', '', 'Ø®ÛŒØ§Ù… Ø´Ù…Ø§Ù„ÛŒØŒØ§Ù†ØªÙ‡Ø§ÛŒ Ø¨Ù‡Ø§Ø±Ø³ØªØ§Ù† 4ØŒØ¬Ù†Ø¨ Ù¾Ø§Ø±Ú©ÛŒÙ†Ú¯ ÙˆØµØ§Ù„', 34, 'Ù…Ø­Ù…Ø¯Ø±Ø¶Ø§', 'ÙØ§Ø¶Ù„', '', '', '', '', '', ''),
('galery_parto', '37297085', '09369610167', NULL, '051-37297085', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù¾Ø±ØªÙˆ', '../uploads/12fdbe7c309e51d16b91112d1e1a7239parto-logo.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ø¢Ø¨Ú©ÙˆÙ‡ØŒØ¨ÛŒÙ† Ø¢Ø¨Ú©ÙˆÙ‡ 13 Ùˆ 15-Ø¨Ù„ÙˆØ§Ø± Ø§Ø³ØªÙ‚Ù„Ø§Ù„ØŒØ¨ÛŒÙ† Ø§Ø³ØªÙ‚Ù„Ø§Ù„ 7 Ùˆ 9', 34, 'Ù…Ø¬ÛŒØ¯', 'Ù‡Ø±Ø§ØªÛŒ', '', '', '', '', '', ''),
('galery_victoria', '09338248700', '09338248700', NULL, '-', '', 'Ú¯Ø§Ù„Ø±ÛŒ ÙˆÛŒÚ©ØªÙˆØ±ÛŒØ§', '', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ 6 Ùˆ 8 Ø¨Ø±Ø¬ Ø¢Ø¨Ø§Ù† Ù¾Ù„Ø§Ø² 1 ØŒ Ø·Ø¨Ù‚Ù‡ Ù‡Ù…Ú©ÙØŒ ÙˆØ§Ø­Ø¯ G114', 34, 'Ù…Ø±ØªØ¶ÛŒ', 'Ø¨Ù‡Ù†Ø§Ù…', '', '', '', '', '', ''),
('gallery_abrisham', '38432500', '-', NULL, '38413991', '', 'Ù¾Ø±Ø¯Ù‡ Ø§Ø¨Ø±ÛŒØ´Ù…', '../uploads/ada39527c9434fc3f4a49eeccff65f5cabrisham.jpg', '', 'Ù¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ø§Ø¨Ù† Ø³ÛŒÙ†Ø§', 33, '-', '-', '', '', '', '', '', ''),
('gallery_adli', '36059970', '09155006866', NULL, '36059970', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø§Ø¯Ù„ÛŒ', '../uploads/dad298bc84add8c19eb8cd9c5bbb648badli.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù…Ø¹Ù„Ù… 8 Ùˆ 10', 34, '-', 'Ù¾ÙˆØ±Ù…Ù‚Ø§Ù…ÛŒ', '', '', '', '', '', ''),
('gallery_akhavi', '38006', '-', NULL, '38006', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø§Ø®ÙˆÛŒ', '../uploads/c6191e1c36958cdb7f6bed07bddfd6a0akhavi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù„Ù…Ø§Ù† 2  Ùˆ Ø¨Ø§Ø¨Ú©', 34, '-', 'Ø§Ø®ÙˆÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('gallery_armani', '38415437', '09128950915', NULL, '38415437', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø§Ø±Ù…Ø§Ù†ÛŒ', '../uploads/b2b01bb7fccb10a8bcdc6df5a1cac4abarmani.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù„Ù…Ø§Ù† 7 Ùˆ 9 Ù¾Ù„Ø§Ú© 26', 34, '-', '-', '', '', '', '', '', ''),
('gallery_ashraf', '38437129', '09155187131', NULL, '38437129', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù¾Ø±Ø¯Ù‡ Ø§Ø´Ø±Ø§Ù', '../uploads/911c1b34f0dae9d4afc75fadce69cc07ashraf.jpg', '', 'Ù¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ø§Ø¨Ù† Ø³ÛŒÙ†Ø§', 33, '-', 'Ø§Ø´Ø±Ø§Ù', '', '', '', '', '', ''),
('gallery_ashrafzade', '37611553', '-', NULL, '37611553', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø§Ø´Ø±Ù Ø²Ø§Ø¯Ù‡', '../uploads/9927b779e7566a51cb3e3b0bc67f50a0ashrafzade.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø± Ø¬Ù†ÙˆØ¨ÛŒ 12 Ù¾Ù„Ø§Ú© 126', 34, '-', 'Ø§Ø´Ø±Ù Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('gallery_bartar', '37657570', '09155088049', NULL, '37657570', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø¨Ø±ØªØ±', '../uploads/1ec4d4cab827adffd3ec9182cf5130b0bartar.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ù¾Ø§Ø³Ø§Ú˜ Ù¾ÙˆÛŒØ§', 38, '-', 'Ù¾Ø±Ú†Ù…ÛŒ', '', '', '', '', '', ''),
('gallery_chindaniha', '38475337', '09151047077', NULL, '38475337', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ú†ÛŒÙ†Ø¯Ù†ÛŒ Ù‡Ø§', '../uploads/ef37c4739803ac563565461bc0662982chindaniha.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³Ù„Ù…Ø§Ù† ÙØ§Ø±Ø³ÛŒ 3/1', 34, '-', '-', '', '', '', '', '', ''),
('gallery_collection', '051-38841940', '09153191353', NULL, '051-38841940', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ú©Ù„Ú©Ø³ÛŒÙˆÙ†', '', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ù†Ø¨Ø´ ØµØ§Ø±Ù…ÛŒ 24', 33, 'Ø§Ù…ÛŒØ±', 'Ø·Ù‡Ù…Ø§Ø³Ø¨ÛŒ', '', '', '', '', '', ''),
('gallery_diaco', '38335678', '-', NULL, '38335678', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø¯ÛŒØ§Ú©Ùˆ', '../uploads/89759b47315b17d68ea35057d54a3e21diaco.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜-Ø·Ø¨Ù‚Ù‡ -1', 28, '-', '-', '', '', '', '', '', ''),
('gallery_disign', '38445916', '09154035795', NULL, '38445916', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø¯ÛŒØ²Ø§ÛŒÙ†', '../uploads/6982cd9d32b8915fd65fa97133d90906disigne.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù„Ù…Ø§Ù† 1 Ùˆ 3', 34, '-', 'Ø±Ø²Ø§Ø²ÛŒØ§Ù†', '', '', '', '', '', ''),
('gallery_dok', '38400554', '-', NULL, '38400554', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø¯ÙˆÚ©', '../uploads/6cd091a8bf90c5d45c8410bf97d6737cdook.jpg', '', 'Ø¨ÛŒÙ† Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ 8 Ùˆ 10Ù¾Ù„Ø§Ú© 158', 16, '-', '-', '', '', '', '', '', ''),
('gallery_emarat', '09155828030', '09155828030', NULL, '-', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø¹Ù…Ø§Ø±Øª', '../uploads/ae35c8553ef57d0bc11fce7e3c990145emarat.jpg', '', 'Ù†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ²', 33, '-', 'Ù…Ø±Ø§Ø¯ÛŒ', '', '', '', '', '', ''),
('gallery_entekhab', '38433752', '-', NULL, '38433752', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø§Ù†ØªØ®Ø§Ø¨', '../uploads/438ba038773f8eaf7d284247f355cc5dentekhab.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 41 Ùˆ 43', 34, '-', '-', '', '', '', '', '', ''),
('gallery_erike', '37679001', '09153106793', NULL, '37679001', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø§Ø±ÛŒÚ©Ù‡', '../uploads/dacb5ebc966b3f26bfae02a78eab2653erike.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ù… 11 Ù†Ø¨Ø´ Ù†Ø³ØªØ±Ù† 10', 34, '-', 'Ø§Ú©Ø¨Ø±ÛŒ', '', '', '', '', '', ''),
('gallery_frin', '91001282', '09155145104', NULL, '91001282', '', 'Ú¯Ø§Ù„Ø±ÛŒ ÙØ±ÛŒÙ†', '../uploads/596e705700e7c2453a1b60ab9846c905farin.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ØŒÙ…Ø¬ØªÙ…Ø¹ Ø¢Ø¨Ø§Ù† Ù¾Ù„Ø§Ú© 144', 34, '-', '-', '', '', '', '', '', ''),
('gallery_ghasr', '38674325', '09156583542', NULL, '38674325', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù‚ØµØ±', '../uploads/53c27d113219d9e3a3659ecbaa9529b4ghasr.jpg', '', 'Ù†Ø¨Ø´ ØµÛŒØ§Ø¯ 44', 33, '-', 'ØªÙˆÙÛŒÙ‚ÛŒ', '', '', '', '', '', ''),
('gallery_golerosa', '051-38840641', '09380694004', NULL, '051-38840641', '', 'Ú¯Ø§Ù„Ø±ÛŒ ØªØ®ØµØµÛŒ Ú¯Ù„ Ø±Ø³Ø§', '../uploads/415a31a4b2dc2eb75aefce8bc3c525b9rosa.jpg', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ 11', 20, 'Ø§Ù…ÛŒØ±', 'Ø¹Ø¸ÛŒÙ…ÛŒ', '', '', '', '', '', ''),
('gallery_harir', '38481000', '-', NULL, '38481000', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø­Ø±ÛŒØ±', '../uploads/a6d799e7d5f07cb5021b80105fc6c95bharir.jpg', '', 'Ù¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ø§Ø¨Ù† Ø³ÛŒÙ†Ø§', 33, '-', '-', '', '', '', '', '', ''),
('gallery_helia', '38780395', '09151104418', NULL, '38780395', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù‡Ù„ÛŒØ§', '../uploads/d142d14565af55b95f428eef5a44a904helia.jpg', '', 'Ù†Ø¨Ø´ Ù¾ÛŒØ±ÙˆØ²ÛŒ 7', 33, '-', 'Ø¬Ù„Ø§Ù„ÛŒØ§Ù†', '', '', '', '', '', ''),
('gallery_hormozzade', '37675141', '09158173001', NULL, '37675141', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù„ÙˆÚ©Ø³ Ù‡Ø±Ù…Ø²Ø²Ø§Ø¯Ù‡', '../uploads/7a42db45f6b02f4a334659fadf7a3473hormozzade.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ ØŒØ³Ø¬Ø§Ø¯ 6 ØŒÙ†Ø¨Ø´ ÛŒØ§Ø³Ù…Ù† Ø·Ø¨Ù‚Ù‡ Ù¾Ø§ÛŒÛŒÙ†', 34, '-', 'Ù‡Ø±Ù…Ø²Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('gallery_kado', '38403083', '-', NULL, '38403083', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ú©Ø§Ø¯Ùˆ', '../uploads/14fc501b397f4eb8d350b4a1c5fe7807kado.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ø¨Ù„ÙˆØ§Ø± Ø±Ø¶Ø§', 34, '-', '-', '', '', '', '', '', ''),
('gallery_kia', '37668777', '-', NULL, '37668777', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ú©ÛŒØ§', '../uploads/86b5076c40b09c45e319bb3a65cf7a68kia.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±-Ù¾Ø§Ø³Ø§Ú˜ Ú©Ø§Ø³Ù¾ÛŒÙ† Ù…Ø¯ - Ø·Ø¨Ù‚Ù‡ -1 -Ù¾5', 38, '-', '-', '', '', '', '', '', ''),
('gallery_korosh', '3604657', '09153197437', NULL, '3604657', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ú©ÙˆØ±ÙˆØ´', '../uploads/8387c0ae8829a9ba585231078a5f34c8korosh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù…Ø¹Ù„Ù… 10 Ùˆ 12', 34, '-', 'Ø³ØªÙˆØ¯Ù‡', '', '', '', '', '', '');
INSERT INTO `users` (`user`, `pass`, `mob`, `mob2`, `tel`, `tel2`, `title`, `logo`, `header`, `addres`, `senfid`, `name`, `famili`, `describ`, `u_bazaryab`, `introduction`, `telegram`, `instagram`, `LinkedIn`) VALUES
('gallery_loghmani', '37688809', '-', NULL, '37688809', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù„Ù‚Ù…Ø§Ù†ÛŒ', '../uploads/3dfc684a911090b7f10b99e2dfbb7335loghmsni.jpg', '', 'Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø®ÛŒØ§Ù… Ù¾Ù„Ø§Ú© 5', 33, '-', 'Ù„Ù‚Ù…Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('gallery_marmar', '37656001', '-', NULL, '37656001', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù…Ø±Ù…Ø±', '../uploads/2622b558406eece3f38f4c83d9f46316marmar.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ø¨ÛŒÙ† Ø¨Ù‡Ø§Ø± Ùˆ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±-Ø¬Ù†Ø¨ Ø¨Ø§Ù†Ú© Ù…Ù„ÛŒ', 38, '-', '-', '', '', '', '', '', ''),
('gallery_maroj', '38477604', '-', NULL, '38477604', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù…Ø§Ø±ÙˆØ¬', '../uploads/d12b8970b6de351f467253676e9df5fbmaroj.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ø¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 52 Ùˆ 54 Ù¾Ù„Ø§Ú© 664', 34, '-', '-', '', '', '', '', '', ''),
('gallery_misagh', '38942485', '09154725618', NULL, '38942485', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù…ÛŒØ«Ø§Ù‚', '../uploads/58101d8bfa936f28f290d755e94a8464misagh.jpg', '', 'ØµÛŒØ§Ø¯ ØŒÙ…Ø¬ØªÙ…Ø¹ Ø²Ù…Ø±Ø¯ Ø·Ø¨Ù‚Ù‡ +1ØŒÙ¾Ù„Ø§Ú© 207', 39, '-', '-', '', '', '', '', '', ''),
('gallery_monhaser', '38454818', '-', NULL, '38454818', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø·Ù„Ø§ Ùˆ Ø¬ÙˆØ§Ù‡Ø± Ù…Ù†Ø­ØµØ±', '../uploads/bc83a4c138f6935a4ea29db19e63e6a6monhaser.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ 1Ùˆ3', 38, '-', 'Ù…Ù†Ø­ØµØ±', '', '', '', '', '', ''),
('gallery_morvarid', '37659114', '09157010828', NULL, '37659114', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù…Ø±ÙˆØ§Ø±ÛŒØ¯', '../uploads/94e8f56180c3e572ff53935d7bc8234dmorvarid.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±-Ù¾Ø§Ø³Ø§Ú˜  Ù…Ø±ÙˆØ§Ø±ÛŒØ¯', 28, '-', 'Ø´Ø§Ù‡ÛŒÙ† Ø¨Ø®Øª', '', '', '', '', '', ''),
('gallery_narsis', '38836486', '09157019904', NULL, '38836486', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù†Ø§Ø±Ø³ÛŒØ³', '../uploads/069a1b3d9c2d61fda93898b16ea38174narsis.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù‡Ù†Ø±Ø³ØªØ§Ù† Ù…ÛŒØ¯Ø§Ù† ØµØ§Ø±Ù…ÛŒ', 39, '-', 'Ø¨Ø§ØºØ¨Ø§Ù†', '', '', '', '', '', ''),
('gallery_navid', '37622516', '09151240121', NULL, '37622516', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù†ÙˆÛŒØ¯', '', '', 'Ù…Ø´Ù‡Ø¯-Ù¾Ø§Ø³Ø§Ú˜ ÙˆØµØ§Ù„-Ø·Ø¨Ù‚Ù‡ +1', 28, '-', 'Ù†ÙˆÛŒØ¯', '', '', '', '', '', ''),
('gallery_nazli', '36068609', '09153170263', NULL, '36068609', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù¾Ø±Ø¯Ù‡ Ù†Ø§Ø²Ù„ÛŒ', '../uploads/48d8da40dc194009ce3ae1f1bce92921nazli.jpg', '', 'Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 24 Ùˆ 26', 33, '-', 'ÙˆØ·Ù† Ø¯ÙˆØ³Øª', '', '', '', '', '', ''),
('gallery_nikafrooz', '38463662', '-', NULL, '38463662', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù†ÛŒÚ© Ø§ÙØ±ÙˆØ²', '../uploads/328b11b6e2d6099016e66303f5fdbaf9nik-afroz.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ø¹Ø¯ Ø§Ø² Ø³Ù„Ù…Ø§Ù† 1', 34, '-', 'Ù†ÛŒÚ© Ø§ÙØ±ÙˆØ²', '', '', '', '', '', ''),
('gallery_nikfarjam', '38478000', '09155040000', NULL, '38478000', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù†ÛŒÚ© ÙØ±Ø¬Ø§Ù…', '../uploads/4b7870eac3028364ae7ed69f9fb0a59cnikfarjam.jpg', '', 'Ø¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 42 Ùˆ 44', 34, '-', 'Ù†ÛŒÚ© ÙØ±Ø¬Ø§Ù…', '', '', '', '', '', ''),
('gallery_parmis', '38671225', '09379433600', NULL, '38671225', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù¾Ø§Ø±Ù…ÛŒØ³', '../uploads/7a924056692d47c56885535aabf06473parmis.jpg', '', 'Ù†Ø¨Ø´ Ø¯Ø§Ù†Ø´Ø¬Ùˆ 10', 39, '-', 'Ø±Ø¶Ø§Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('gallery_part', '36084273', '09153455523', NULL, '36084273', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù¾Ø±Ø¯Ù‡ Ù¾Ø§Ø±Øª', '../uploads/da3d56a049a0251a336552db4bb5f15cpart.jpg', '', 'Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 24 Ùˆ 26', 33, '-', 'Ø¨Ø±Ú©Ú†ÛŒ', '', '', '', '', '', ''),
('gallery_pazel', '38464787', '09153221776', NULL, '38464787', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù¾Ø§Ø²Ù„', '../uploads/0afddc4ec258afe8c9b9433c9c9896d2puzzle.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø±Ø³ÛŒØ¯Ù‡ Ø¨Ù‡ Ø³Ù„Ù…Ø§Ù† 1 Ù¾Ù„Ø§Ú© 188', 34, '-', '-', '', '', '', '', '', ''),
('gallery_rada', '37631314', '09155001611', NULL, '37631314', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø±Ø§Ø¯Ø§', '../uploads/2bb1a33620f3a1b960d09d7e5496f34brada.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ù…Ø¬ØªÙ…Ø¹ Ù¾ÙˆÛŒØ§-Ø·Ø¨Ù‚Ù‡ Ù‡Ù…Ú©Ù', 38, '-', 'Ù…Ø­Ù…Ø¯ÛŒ', '', '', '', '', '', ''),
('gallery_rashel', '38464114', '-', NULL, '38464114', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø±Ø§Ø´Ù„', '../uploads/2d9fda72306859627ad82510bf9b34farashel.jpg', '', 'Ù¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ø§Ø¨Ù† Ø³ÛŒÙ†Ø§', 33, '-', '-', '', '', '', '', '', ''),
('gallery_sara', '09159016167', '09159016167', NULL, '-', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø³Ø§Ø±Ø§', '../uploads/c887ed707d502019b681c895b3791854sara.jpg', '', 'Ø¨ÛŒÙ† Ù‡Ù†Ø±Ø³ØªØ§Ù† 36 Ùˆ 38', 39, '-', 'Ú©Ø§Ø¸Ù…ÛŒ', '', '', '', '', '', ''),
('gallery_setare', '36084138', '09158170942', NULL, '36084138', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø³ØªØ§Ø±Ù‡', '../uploads/9f5c9447e0d3e41f8355d65b329df516setare.jpg', '', 'Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ²23 Ùˆ 25', 39, '-', '-', '', '', '', '', '', ''),
('gallery_shadin', '38694832', '09159187155', NULL, '38694832', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø´Ø§Ø¯ÛŒÙ†', '../uploads/91944d34f0cc67736e4a83374a293820shadin.jpg', '', 'Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ 24 Ùˆ 26', 39, '-', 'Ù…Ù„Ú©ÛŒ', '', '', '', '', '', ''),
('gallery_shayn', '38400495', '09151168665', NULL, '38400495', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø´Ø§ÛŒÙ†', '../uploads/f1ba26d8623bd139d8611c422e336bbashine.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³Ù„Ù…Ø§Ù† 1', 34, '-', 'Ø§Ø¨ÙˆØ°Ø±ÛŒ', '', '', '', '', '', ''),
('gallery_shokoh', '38411312', '09151124170', NULL, '38411312', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø´Ú©ÙˆÙ‡', '../uploads/18f32863a0f933aec1a9ecf922b59191shoko.jpg', '', 'Ù¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ø§Ø¨Ù† Ø³ÛŒÙ†Ø§', 33, '-', 'Ø¨Ù‚Ø§ÛŒØ±ÛŒ', '', '', '', '', '', ''),
('gallery_sovar', '37645639', '-', NULL, '37645639', '', 'Ú¯Ø§Ù„Ø±ÛŒ ØµÙˆØ±', '../uploads/b4cd29889c50db9075b7a12e6e2f6310sovar.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ù¾Ø§Ø³Ø§Ú˜ Ø¨Ù‡Ø§Ø±-Ø·Ø¨Ù‚Ù‡ -1', 38, '-', '-', '', '', '', '', '', ''),
('gallery_stil', '38438330', '09153159895', NULL, '38438330', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø§Ø³ØªÛŒÙ„', '../uploads/7193e5f4e9716b6887cda5499571a0a3stil.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù‚Ø§Ø¦Ù… 27', 34, '-', 'Ù‚Ù†Ø§Ø¹ØªÚ¯Ø±', '', '', '', '', '', ''),
('gallery_tolo', '38415500', '09353040569', NULL, '38415500', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù¾Ø±Ø¯Ù‡ Ø·Ù„ÙˆØ¹', '../uploads/de09b39d7612175398c654e2d2d1a9eftolo.jpg', '', 'Ù¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ Ø¬Ù†Ø¨ Ù…Ø³Ø¬Ø¯ Ø§Ù„Ø²Ù‡Ø±Ø§', 33, '-', '-', '', '', '', '', '', ''),
('gallery_toosi', '38477870', '-', NULL, '38477870', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø·ÙˆØ³ÛŒ', '../uploads/387b1bd58cc38a6fd7bf0847a1eef3e1tousi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ø¨ÛŒÙ† Ø³Ù„Ù…Ø§Ù† 7 Ùˆ 9 Ù¾Ù„Ø§Ú© 26', 34, '-', 'Ø·ÙˆØ³ÛŒ', '', '', '', '', '', ''),
('gallery_veniz', '38472856', '-', NULL, '38472856', '', 'Ú¯Ø§Ù„Ø±ÛŒ ÙˆÙ†ÛŒØ²', '../uploads/28973c885699bfcf99b4cf71ee276d89veniz.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ø¹Ø¯ Ø§Ø² Ø³Ù„Ù…Ø§Ù† 2 Ù¾Ù„Ø§Ú© 155', 34, '-', '-', '', '', '', '', '', ''),
('gallery_venus', '37626667', '-', NULL, '37626667', '', 'Ú¯Ø§Ù„Ø±ÛŒ ÙˆÙ†ÙˆØ³', '../uploads/bdb7b877cf5e7af9030f61ff010d2117venus.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±-Ù¾Ø§Ø³Ø§Ú˜  Ù…Ø±ÙˆØ§Ø±ÛŒØ¯', 28, '-', '-', '', '', '', '', '', ''),
('gallery_vranda', '38915389', '09151043678', NULL, '38915389', '', 'Ú¯Ø§Ù„Ø±ÛŒ ÙˆØ±Ø§Ù†Ø¯Ø§', '../uploads/47fbd5fa0bd619c823a1fe51a24d0fb9veranda.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ù‡Ù†Ø±Ø³ØªØ§Ù† 31', 28, '-', '-', '', '', '', '', '', ''),
('gallery_zigorat', '36021299', '09156873002', NULL, '36146877', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø²ÛŒÚ¯ÙˆØ±Ø§Øª', '../uploads/fe987d9f02fe82d9b9842b4691b366c0zigorat.jpg', '', 'Ù†Ø¨Ø´ Ù…Ø¹Ù„Ù… 28', 33, '-', 'Ø³Ø®Øª Ø¯Ù„', '', '', '', '', '', ''),
('ganjineh_javdaneh', '36048429', '09153240322', NULL, '36048429', '', 'Ø·Ù„Ø§ Ú¯Ù†Ø¬ÛŒÙ†Ù‡ Ø¬Ø§ÙˆØ¯Ø§Ù†Ù‡', '../uploads/d9e092d5aecba93929ce27db8895ace8javdane.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 1 Ùˆ3', 38, '-', 'Ø¬Ø§ÙˆØ¯Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('ghanadi_katayon', '36075198', '09352222103', NULL, '36075198', '', 'Ù‚Ù†Ø§Ø¯ÛŒ Ú©ØªØ§ÛŒÙˆÙ†', '../uploads/4a882d14681b91d571b2ac5100cd490bkatayon.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø³ÛŒØ¯Ø±Ø¶ÛŒ 14Ùˆ16', 19, '-', 'Ù‚Ø§Ù†Ø¹ÛŒ', '', '', '', '', '', ''),
('ghanadi_labkhand', '38915558', '09152665558', NULL, '38915558', '', 'Ù‚Ù†Ø§Ø¯ÛŒ Ù„Ø¨Ø®Ù†Ø¯', '../uploads/5899c0f564bc23f93efd021bf02694cdlabkhand.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 48Ùˆ50', 19, '-', 'ÙˆÙ„ÛŒ Ù†Ú˜Ø§Ø¯', '', '', '', '', '', ''),
('ghanadi_oranos', '36018285', '09153146914', NULL, '36018285', '', 'Ù‚Ù†Ø§Ø¯ÛŒ Ø§ÙˆØ±Ø§Ù†ÙˆØ³', '../uploads/881e8500abefbbf0052c5368d7289901oranos.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø¬Ù„Ø§Ù„ 46', 19, '-', 'Ú©Ø§Ø´Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('ghanadi_pastor', '38672614', '-', NULL, '38672614', '', 'Ù‚Ù†Ø§Ø¯ÛŒ Ù¾Ø§Ø³ØªÙˆØ±', '../uploads/5f1e42309f7e6ca2c485b23a38c82ef4pastor.jpg', '', 'Ù…Ø´Ù‡Ø¯-ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯-Ù†Ø¨Ø´ Ù‚Ø§Ø¦Ù… Ù…Ù‚Ø§Ù… 21', 19, '-', 'Ø¸Ù‡ÙˆØ±ÛŒØ§Ù†', '', '', '', '', '', ''),
('ghanadi_tolu', '38417341', '-', NULL, '38417341', '', 'Ù‚Ù†Ø§Ø¯ÛŒ Ø·Ù„ÙˆØ¹', '../uploads/2fc5483857c441d2b3aa3ee89e2ca6fatolo.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ ÙÙ„Ø³Ø·ÛŒÙ† 23', 19, '-', '-', '', '', '', '', '', ''),
('ghanadi_tosi', '38335800', '-', NULL, '38335800', '', 'Ù‚Ù†Ø§Ø¯ÛŒ Ø·ÙˆØ³ÛŒ', '../uploads/35cf465a29e68f412da815b4dd1dd9datousi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù‡ÙØª ØªÛŒØ± Ùˆ Ù‡Ù†Ø±Ø³ØªØ§Ù†', 19, '-', 'Ø·ÙˆØ³ÛŒ', '', '', '', '', '', ''),
('ghanadi_totfarangi', '36020264', '-', NULL, '36020264', '', 'Ù‚Ù†Ø§Ø¯ÛŒ ØªÙˆØª ÙØ±Ù†Ú¯ÛŒ', '../uploads/1a9bbd7f9fe2c5d6a78fbbf6f424736atot-farangi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ ÙØ±Ø§Ù…Ø±Ø² Ø¹Ø¨Ø§Ø³ÛŒ 19', 19, '-', '-', '', '', '', '', '', ''),
('ghasedak', '37663080', '-', NULL, '37663080', '', 'Ø®Ø¯Ù…Ø§Øª Ù…Ø³Ø§ÙØ±ØªÛŒ Ù‚Ø§ØµØ¯Ú©', '../uploads/c7af4abf2d25f371781c1cb006d3ffa0ghasedak.jpg', '', 'Ù…ÛŒØ¯Ø§Ù† Ø¬Ø§Ù†Ø¨Ø§Ø² Ù…Ø¬ØªÙ…Ø¹ Ù¾Ø§Ú˜', 26, '-', '-', '', '', '', '', '', ''),
('ghasr_almas', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ Ø¨ÛŒÙ† Ø§Ù„Ù…Ù„Ù„ÛŒ Ù‚ØµØ± Ø§Ù„Ù…Ø§Ø³', '../uploads/a407095d1fd53896c723732f6f6d1aacalmas.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 14 Ùˆ 16', 23, '-', '-', '', '', '', '', '', ''),
('ghasr_dariush', '38403525', '-', NULL, '38403525', '', 'Ù‚ØµØ± Ø¯Ø§Ø±ÛŒÙˆØ´', '../uploads/9a74504252ed419fd4b1513ab7eb19d4dariush.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ú©ÙˆÙ‡Ø³Ù†Ú¯ÛŒ 3 Ùˆ 5', 24, '-', '-', '', '', '', '', '', ''),
('ghasr_parsin', '38696037', '09151153387', NULL, '38696037', '', 'Ù‚ØµØ± Ù¾Ø§Ø±Ø³ÛŒÙ†', '../uploads/d5cb6c54133fd0e9db1041c9d174cf42parsin.jpg', '', 'Ù…Ø´Ù‡Ø¯-ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 39-Ù‚Ø¨Ù„ Ø§Ø² ØµØ¯Ù', 24, '-', '-', '', '', '', '', '', ''),
('ghasr_suzan', '38461044', '09151006200', NULL, '38461044', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø³ÙˆØ²Ø§Ù†', '../uploads/b4700dfadb0f1ea2b83a62d7337618d8ghasre-sozan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³Ù„Ù…Ø§Ù† 2/1', 34, '-', 'Ù…Ø¹ØµÙˆÙ…ÛŒØ§Ù†', '', '', '', '', '', ''),
('ghasre_khatereha', '34230303', '09158252577', NULL, '051-34230303', '', 'Ù‚ØµØ± Ø®Ø§Ø·Ø±Ù‡ Ù‡Ø§', '', '', 'Ø¬Ø§Ø¯Ù‡ Ø·Ø±Ù‚Ø¨Ù‡ Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 37 Ø§Ù†ØªÙ‡Ø§ÛŒ Ú©ÙˆÚ†Ù‡ Ø³Ù…Øª Ø±Ø§Ø³Øª', 12, 'Ø­Ø³Ù†', 'Ø±ÙˆØ´Ù†ÛŒ', '', '', '', '', '', ''),
('ghasre_mehregan', '34324030', '09151010810', NULL, '34324030', '', 'Ù‚ØµØ± Ù…Ù‡Ø±Ú¯Ø§Ù†', '../uploads/a6a5ba17935558638983db1fc676ce11mehregan.jpg', '', 'Ø´Ø§Ù†Ø¯ÛŒØ² Ù†Ø¨Ø´ Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 11', 13, '-', '-', '', '', '', '', '', ''),
('ghasre_rangemo', '36069126', '09151031354', NULL, '36069126', '', 'Ù‚ØµØ± Ø±Ù†Ú¯ Ù…Ùˆ', '../uploads/b7aba142bad5a0623982774c78d7f182ghaSre-range-mo.jpg', '', 'Ø¨ÛŒÙ† Ø³ÛŒØ¯Ø±Ø¶ÛŒ 15 Ùˆ 17', 39, '-', 'Ø¨Ù†Ø¯ÛŒØ§Ù†ÛŒ', '', '', '', '', '', ''),
('gol_alale', '38931301', '09156537838', NULL, '38931301', '', 'Ú¯Ù„ Ø¢Ù„Ø§Ù„Ù‡', '../uploads/2cf56f398bb4ee56567c396b5b5b181falale.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù‡ÙØª ØªÛŒØ± 32', 20, '-', '-', '', '', '', '', '', ''),
('gol_eren', '38822000', '09154200300', NULL, '38822000', '', 'Ú¯Ù„ Ø§ÛŒØ±Ù†', '../uploads/008e0ef5e3f8826686af9c6a2c999de2eren.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ú©ÙˆØ«Ø±ØŒØ§Ù†ØªÙ‡Ø§ÛŒ Ú©ÙˆØ«Ø± 1ØŒÙ†Ø¨Ø´ Ù„Ø§Ù„Ù‡ 2', 20, 'Ù…ØµØ·ÙÛŒ ', 'Ø§Ù„ÙØ§Ø¸ÛŒ', '', '', '', '', '', ''),
('gol_gandomzar', '36071919', '09357266576', NULL, '36071919', '', 'Ú¯Ù„ Ú¯Ù†Ø¯Ù… Ø²Ø§Ø±', '../uploads/962ba0cece854df8348a81778ec138f6gandom-zar.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³ÛŒØ¯Ø±Ø¶ÛŒ 24', 20, '-', 'Ú¯Ù†Ø¯Ù… Ø¢Ø¨Ø§Ø¯ÛŒ', '', '', '', '', '', ''),
('gol_golbarg', '09911790089', '09911790089', NULL, '-', '', 'Ú¯Ù„ Ú¯Ù„Ø¨Ø±Ú¯', '../uploads/17aec2ae9cc285b021de471bc5a53c97golbarg.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ ÙØ±Ø§Ù…Ø±Ø² 26', 20, '-', '-', '', '', '', '', '', ''),
('gol_goline', '38665652', '09371751070', NULL, '38665652', '', 'Ú¯Ù„ Ú¯Ù„ÛŒÙ†Ù‡', '../uploads/0b455c258d702c1139ea5bcbc5e290c3golgine.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù‡Ù†Ø±Ø³ØªØ§Ù† 7', 20, '-', 'Ø®Ø¯Ø§Ø¨Ø®Ø´', '', '', '', '', '', ''),
('gol_jamejam', '36518582', '09155078582', NULL, '36518582', '', 'Ú¯Ù„ Ø¬Ø§Ù… Ø¬Ù…', '../uploads/e9225f049ee5ea1b65da2ac9c5825d82jame-jam.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ø²Ø±Ú¯Ø±Ø§Ù‡ Ø¢Ø³ÛŒØ§ÛŒÛŒØŒ Ø¨ÛŒÙ† Ø¢Ø²Ø§Ø¯ÛŒ 107 Ùˆ 109', 20, '-', 'Ø¨Ø³ØªØ§Ù†', '', '', '', '', '', ''),
('gol_katayun', '38939580', '09153162571', NULL, '38939580', '', 'Ú¯Ù„ Ú©ØªØ§ÛŒÙˆÙ†', '../uploads/f4950e7ccc9bd46db24076a050827f3fkatayon.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø¯Ø§Ù†Ø´Ø¬Ùˆ 14', 20, '-', 'Ø®ÙˆØ±Ø´ÛŒØ¯ÛŒ', '', '', '', '', '', ''),
('gol_larens', '09159812552', '09159812552', NULL, '-', '', 'Ú¯Ù„ Ù„Ø§Ø±Ù†Ø³', '../uploads/d1ef3c11e7a2c918c3702a6f8e4de976larence.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÚ†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…ÛŒÙ„Ø§Ø¯ Ø¨ÛŒÙ† Ø§Ø³ØªÙ‚Ù„Ø§Ù„ 6 Ùˆ 8', 20, '-', 'Ø­Ø§ÙØ¸ÛŒ', '', '', '', '', '', ''),
('gol_liliom', '37685731', '09155159310', NULL, '37685731', '', 'Ú¯Ù„ Ù„ÛŒÙ„ÛŒÙˆÙ…', '../uploads/8e94db9b9b891dc0ca7456a0430de988liliom.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒÙ†Ø¨Ø´ Ù¾Ø§Ø³Ø§Ú˜Ø¢Ø±ÛŒÙ†', 20, '-', '-', '', '', '', '', '', ''),
('gol_liparis', '38923255', '09355626603', NULL, '38923255', '', 'Ú¯Ù„ Ù„ÛŒÙ¾Ø§Ø±ÛŒØ³', '../uploads/5910305c09140a27f2f27805f241696fliparis.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ØµÛŒØ§Ø¯ 7 Ùˆ 9', 20, '-', 'Ø§Ø°Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('gol_lutus', '38653963', '09356192896', NULL, '38653963', '', 'Ú¯Ù„ Ù„ÙˆØªÙˆØ³', '../uploads/1d216efe9716bf2f5ff2862f528e51aelotos.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ 25 Ùˆ 27', 20, '-', '-', '', '', '', '', '', ''),
('gol_milad', '09154234636', '09154234636', NULL, '-', '', 'Ú¯Ù„ Ù…ÛŒÙ„Ø§Ø¯', '../uploads/860a0dcbef88d56d7b25e72739e0da28milad.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø¬Ù„Ø§Ù„ 9 Ùˆ 11', 20, 'Ù…ÛŒÙ„Ø§Ø¯', '-', '', '', '', '', '', ''),
('gol_miniator', '36015100', '-', NULL, '36015100', '', 'Ú¯Ù„ Ù…ÛŒÙ†ÛŒØ§ØªÙˆØ±', '../uploads/aa619b970e06569b29fb3f4a4dabb812ghaem.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± ÙØ±Ù‡Ù†Ú¯_Ø¨ÛŒÙ† Ù…ÛŒØ¯Ø§Ù† Ø³ÛŒØ¯ Ø±Ø¶ÛŒ Ùˆ Ù…ÛŒØ¯Ø§Ù† Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ²_ Ù†Ø¨Ø´ ÙØ±Ù‡Ù†Ú¯ 24', 20, '-', 'Ø·Ø¨Ø§Ø·Ø¨Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('gol_mordab', '09152204008', '09152204008', NULL, '-', '', 'Ú¯Ù„ Ù…Ø±Ø¯Ø§Ø¨', '../uploads/8a9c6d672069deb190f56bd29f3fc632mordab.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 32', 20, '-', 'ØµØ§Ø¨Ø±', '', '', '', '', '', ''),
('gol_narsis', '37626171', '-', NULL, '37626171', '', 'Ù†Ø§Ø±Ø³ÛŒØ³', '../uploads/8123551f8f278ae56dcba117ff55c90ebalosh.jpg', '', 'Ù…Ø´Ù‡Ø¯-Â Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ-Ù†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø§Ø±Ù‡ Ù…Ù‡Ø¯ÛŒ', 20, 'Ø­Ù…ÛŒØ¯', 'Ø§Ø±Ú˜Ù†Ú©ÛŒ', '', '', '', '', '', ''),
('gol_nilofarabi', '38922551', '09159755299', NULL, '38922551', '', 'Ú¯Ù„ Ø³Ø±Ø§ÛŒ Ù†ÛŒÙ„ÙˆÙØ± Ø¢Ø¨ÛŒ', '../uploads/65c9898105a21af62215c5495c6e9650nilofare-abi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø¯Ø§Ù†Ø´Ø¬Ùˆ 21', 20, '-', 'ØµØ§Ø¯Ù‚ÛŒ', '', '', '', '', '', ''),
('gol_paeez', '38816613', '09389024094', NULL, '38816613', '', 'Ú¯Ù„ Ù¾Ø§ÛŒÛŒØ²', '../uploads/0fc0d2ecb19664a540df722ead22de7epaeez.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ø¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 24 Ùˆ 26', 20, '-', 'ØµØ§Ù„Ø­ÛŒ', '', '', '', '', '', ''),
('gol_pantea', '36046339', '0901249667', NULL, '36046339', '', 'Ú¯Ù„ Ù¾Ø§Ù†ØªÙ‡ Ø¢', '../uploads/9b3aff4181a2360070d827afa5fca655pante-a.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø§Ù…Ø§Ù…Øª 42', 20, '-', 'Ù…Ø²ÛŒÙ†Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('gol_parandebehesht', '36059697', '09153105115', NULL, '36059697', '', 'Ú¯Ù„ Ù¾Ø±Ù†Ø¯Ù‡ Ø¨Ù‡Ø´Øª', '../uploads/45ca298f1443d7dab5bb213a920b69bdgol-parande-behesht.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ ÙØ±Ø§Ù…Ø±Ø²', 20, '-', 'Ø±Ø¦ÛŒØ³ Ø§Ù„Ø³Ø§Ø¯Ø§Øª', '', '', '', '', '', ''),
('gol_pardis', '37620435', '09155218165', NULL, '37620435', '', 'Ú¯Ù„ Ù¾Ø±Ø¯ÛŒØ³', '../uploads/4a86a857a70984efbe524dda36733ea4pardis.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù†Ø³ØªØ±Ù† 8 Ùˆ 10', 20, '-', '-', '', '', '', '', '', ''),
('gol_paria', '36091503', '09151182278', NULL, '36091503', '', 'Ú¯Ù„ Ù¾Ø±ÛŒØ§', '../uploads/1c6ff2fc6ec1d3abbac9754e57f90f8bparia.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³ÛŒØ¯Ø±Ø¶ÛŒ 24', 20, 'ØºÙØ§Ø±', '-', '', '', '', '', '', ''),
('gol_parvane', '09151563881', '09151563881', NULL, '-', '', 'Ú¯Ù„ Ù¾Ø±ÙˆØ§Ù†Ù‡', '../uploads/c2cef1e42f3971bff41ea87ccdcba332parvaneh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø¬Ù„Ø§Ù„ 9 Ùˆ 11', 20, '-', 'Ù…Ù‡Ø¯ÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('gol_patris', '09354080624', '09354080624', NULL, '-', '', 'Ú¯Ù„ Ù¾Ø§ØªØ±ÛŒØ³', '../uploads/87cd68420f7fd083a7b8cebf7f9d3496patris.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ØµØ§Ø±Ù…ÛŒ Ù…Ø¬ØªÙ…Ø¹ ØªØ¬Ø§Ø±ÛŒ ÙØ±Ù‡Ù†Ú¯ÛŒØ§Ù† Ù¾Ù„Ø§Ú© 16', 20, '-', 'Ù…Ù‚Ø¯Ù…', '', '', '', '', '', ''),
('gol_percian', '09153091932', '09153091932', NULL, '-', '', 'Ú¯Ù„ Ù¾Ø±Ø´ÛŒÙ†', '../uploads/58802a699e778aa1e3810edbd0b5f8a7persian.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ù…Ù„Ø§ØµØ¯Ø±Ø§ 5', 20, '-', '-', '', '', '', '', '', ''),
('gol_punak', '38460810', '09151089983', NULL, '38460810', '', 'Ú¯Ù„ Ù¾ÙˆÙ†Ú©', '../uploads/6659bae40975359a2e3710e6035da69eponak.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ØŒÙ…Ù„Ø§ØµØ¯Ø±Ø§ 3', 20, '-', '-', '', '', '', '', '', ''),
('gol_razeghi', '38841783', '09159000195', NULL, '38841783', '', 'Ú¯Ù„ Ø±Ø§Ø²Ù‚ÛŒ', '../uploads/d5bb6fe5f7705e5b48606033267ca1berazeghi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ØµØ§Ø±Ù…ÛŒ 26 Ùˆ 28', 20, '-', '-', '', '', '', '', '', ''),
('gol_roshanak', '38905163', '09157066440', NULL, '38905163', '', 'Ú¯Ù„ Ø±ÙˆØ´Ù†Ú©', '../uploads/3c0c1d310ad004809976d5a5b5e613c4rose.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù…ØŒØ¨ÛŒÙ† Ù…Ø¹Ù„Ù… 64 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø³ØªØ§Ø±ÛŒ', 20, '-', 'Ø±Ø¶Ø§ÛŒÛŒ Ù…Ù‚Ø¯Ù…', '', '', '', '', '', ''),
('gol_sahel', '38657629', '09158796129', NULL, '38657629', '', 'Ú¯Ù„ Ø³Ø§Ø­Ù„', '../uploads/604f2e25891602d59d6eb7dde5025bdcSahel.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ ØµÛŒØ§Ø¯Ø´ÛŒØ±Ø§Ø²ÛŒ 15', 20, '-', 'ØµØ§Ø¯Ù‚ Ù¾ÙˆØ±', '', '', '', '', '', ''),
('gol_sonia', '38674005', '09155173250', NULL, '38674005', '', 'Ú¯Ù„ Ø³ÙˆÙ†ÛŒØ§', '../uploads/34424c29a9bacff80187709679d23932sonia.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù‡Ù†Ø±Ø³ØªØ§Ù† 19 Ùˆ 21', 20, '-', 'Ø·Ø¨Ø§Ø·Ø¨Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('gol_sosan', '36079575', '-', NULL, '36079575', '', 'Ú¯Ù„ Ø³ÙˆØ³Ù†', '../uploads/c2d576601a0cd0e1e0eab76a4eb50e6bsosan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 25 Ùˆ 27', 20, '-', '-', '', '', '', '', '', ''),
('gol_toranj', '36040734', '09156110726', NULL, '36040734', '', 'Ú¯Ù„ ØªØ±Ù†Ø¬', '../uploads/de6f2d63191bccfa0c6a2336f38404f3toranj.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ ÙØ±Ø§Ù…Ø±Ø² Ø¹Ø¨Ø§Ø³ÛŒ 19', 20, '-', 'Ø­Ø³Ù† Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('gol_vaneli', '36075245', '09153022007', NULL, '36075245', '', 'Ú¯Ù„ ÙˆØ§Ù†Ù„ÛŒ', '../uploads/2c9be8afa143431b8a03645c08061f45vaneli.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø¬Ù„Ø§Ù„ 20 Ùˆ 22', 20, '-', 'Ø²Ú©Ø§ÙˆØª', '', '', '', '', '', ''),
('gol_vida', '38940157', '09359365371', NULL, '38940157', '', 'Ú¯Ù„ ÙˆÛŒØ¯Ø§', '../uploads/8a1de4b3b67d3ab4713537a3c1e25e70vida.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù‡ÙØª ØªÛŒØ± Ùˆ Ù…ÛŒØ¯Ø§Ù† Ù‡Ù†Ø±Ø³ØªØ§Ù†', 20, '-', 'Ø±Ø¨Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('gol_zhania', '09155212167', '09155212167', NULL, '-', '', 'Ú¯Ù„ Ú˜Ø§Ù†ÛŒØ§', '../uploads/bb813688a4f160e5add9d5871a11b5adzhania.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙÙ„Ø³Ø·ÛŒÙ† 18ØŒØ®ÛŒØ§Ù… 11', 20, '-', 'Ù¾Ø§Ø±Ø³Ø§', '', '', '', '', '', ''),
('golabetun', '09156554039', '09156554039', NULL, '-', '', 'Ú¯Ù„Ø§Ø¨ØªÙˆÙ†', '', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ù†ØªÙ‡Ø§ÛŒ Ù‡Ù†Ø±Ø³ØªØ§Ù†', 20, '-', '-', '', '', '', '', '', ''),
('gole_paladiom', '38653008', '09159756910', NULL, '38653008', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ú¯Ù„ Ù¾Ø§Ù„Ø§Ø¯ÛŒÙˆÙ…', '../uploads/29718c24902d3793ea5701a9c23c5ea0paladiom.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù‡Ù†Ø±Ø³ØªØ§Ù† 13 Ùˆ 15', 20, '-', '-', '', '', '', '', '', ''),
('goleflorya', '9154770317', '09154770317', NULL, '-', '', 'Ú¯Ù„ ÙØ±ÙˆØ´ÛŒ ÙÙ„ÙˆØ±ÛŒØ§', '', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ØŒ Ù†Ø¨Ø´ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 37', 20, 'Ù…Ø­Ù…Ø¯', 'Ù…Ø¸Ù„ÙˆÙ…ÛŒ', '', '', '', '', '', ''),
('golejalan', '38945223', '09363140066', NULL, '051-38945223', '', 'Ú¯Ù„ ÙØ±ÙˆØ´ÛŒ Ú˜Ø§Ù„Ø§Ù†', '../uploads/5b5db274b275313841f224fba8f4bdd0Xalan-logo.jpg', '', 'Ø¨Ø¹Ø¯ Ø§Ø² Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² ØŒØ¨ÛŒÙ† ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 27 Ùˆ 29', 20, 'Ù…Ø­Ù…Ø¯Ø¨Ø§Ù‚Ø±', 'Ù…Ø´ÛŒØ±ÛŒ', '', '', '', '', '', ''),
('golejordan', '09152028674', '09152028674', NULL, '-', '', 'Ú¯Ù„ Ø¬Ø±Ø¯Ù†', '', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ù‡ÙØª ØªÛŒØ± ØŒ Ø¨ÛŒÙ† Ù‡ÙØª ØªÛŒØ± 5 Ùˆ 7', 20, 'Ø¹Ù„ÛŒ', 'Ø§Ø³Ù…Ø¹ÛŒÙ„ÛŒ Ø®ÙˆØ±', '', '', '', '', '', ''),
('golekaghazi', '36039845', '09153188010', NULL, '051-36039845', '', 'Ú¯Ù„ ÙØ±ÙˆØ´ÛŒ Ú¯Ù„ Ú©Ø§ØºØ°ÛŒ', '../uploads/26d90f1b887db8859a4481edb1fe7832golekaghazi.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ø³ÛŒØ¯ Ø±Ø¶ÛŒ Ø¨ÛŒÙ† Ø³ÛŒØ¯Ø±Ø¶ÛŒ 24 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ø¹Ù„Ù…', 20, '-', '-', '', '', '', '', '', ''),
('goofer_choob', '38409925', '-', NULL, '38409925', '', 'Ú¯ÙˆÙØ± Ú†ÙˆØ¨ ', '../uploads/7ce55ecb5b73edebd83e267c49d0addcgofer-chob.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 44 Ùˆ 46', 11, '-', 'Ø®ÙˆØ´ Ù‚Ø§Ù…Øª', '', '', '', '', '', ''),
('grimor', '37619766', '09153159298', NULL, '37619766', '', 'Ú¯Ø±ÛŒÙ…ÙˆØ±', '../uploads/e6b4c2c71632539afa2df20b4a85def6grimor.jpg', '', 'ÙÙ„Ø³Ø·ÛŒÙ† 6 Ù¾Ù„Ø§Ú© 16', 1, 'Ù„ÛŒÙ„Ø§', 'Ø­Ø³Ù†ÛŒ', '', '', '', '', '', ''),
('group_yas', '38445000', '-', NULL, '38445000', '', 'Ú¯Ø±ÙˆÙ‡ ÛŒØ§Ø³', '../uploads/82ef76f0ba6f510e43cbf68f39605d52yas.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 45 Ùˆ 47', 28, '-', 'ØµØ§Ù„Ø­ÛŒ', '', '', '', '', '', ''),
('haft_aseman', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ Ù‡ÙØª Ø¢Ø³Ù…Ø§Ù†', '../uploads/ff30128a34c124a679f2659f39bbc26ahaft-aseman.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§-Ø¯Ø§Ù†Ø´ ØºØ±Ø¨ÛŒ-Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¯Ø§Ù†Ø´2/1', 23, '-', '-', '', '', '', '', '', ''),
('hakhamanesh', '38425282', '09151117944', NULL, '38425282', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù‡Ø®Ø§Ù…Ù†Ø´', '../uploads/37abdad1445e954c1c02d5a617fa9a91hakhamanesh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø§Ø¨ÙˆØ°Ø±ØºÙØ§Ø±ÛŒ 22', 16, '-', 'Ø­Ø§ØªÙ…ÛŒ', '', '', '', '', '', ''),
('hakupian', '37654041', '-', NULL, '37654041', '', 'Ù‡Ø§Ú©ÙˆÙ¾ÛŒØ§Ù†', '../uploads/14517f243bda2e9f7edf7214a7fbe139hakopian.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡ØªÙ„ Ù‡Ù…Ø§ 2', 16, '-', '-', '', '', '', '', '', ''),
('halghe_tala', '37683300', '-', NULL, '37683300', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø­Ù„Ù‚Ù‡ Ø·Ù„Ø§', '../uploads/64f2e299ade51c3e408deda6505be35fhalghe-tala.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±', 38, '-', '-', '', '', '', '', '', ''),
('hamed_kordestani', '09153242716', '09153242716', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´Ú¯Ø§Ù‡ Ø­Ø§Ù…Ø¯ Ú©Ø±Ø¯Ø³ØªØ§Ù†ÛŒ', '../uploads/4a8e970aff4d5926bc5ffe0727e51768hamed-kordestani.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒØ¯Ø§Ø®Ù„ Ø¨Ø±Ú¯Ù…Ù‡Ø± Ø¬Ù†ÙˆØ¨ÛŒ 9', 17, 'Ø­Ø§Ù…Ø¯', 'Ú©Ø±Ø¯Ø³ØªØ§Ù†ÛŒ', '', '', '', '', '', ''),
('hamed_tiho', '09157500016', '09157500016', NULL, '-', '', 'Ù…Ø¬Ù…ÙˆØ¹Ù‡ Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø­Ø§Ù…Ø¯ ØªÛŒÙ‡Ùˆ', '../uploads/09a5ff090754978a4a9c2d4eb1d7e490hamed-tiho.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù‡ÙØª ØªÛŒØ±ØŒØµØ§Ø±Ù…ÛŒ 33 Ú¯Ù„Ø´Ù† 3/3', 17, '-', 'ØªÛŒÙ‡Ùˆ', '', '', '', '', '', ''),
('hamian_parvaz', '38468829', '-', NULL, '38468829', '', 'Ø­Ø§Ù…ÛŒØ§Ù† Ù¾Ø±ÙˆØ§Ø²', '../uploads/cfda056a0faf86181d17a1453483b7d9hamiane-parvaz.jpg', '', 'Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ø¨ÛŒÙ† Ø§Ø¨ÙˆØ°Ø± 12 Ùˆ 14 Ù¾Ù„Ø§Ú© 132', 26, '-', '-', '', '', '', '', '', ''),
('haniyegasht_talayi', '38836012', '-', NULL, '38836012', '', 'Ù‡Ø§Ù†ÛŒÙ‡ Ú¯Ø´Øª Ø·Ù„Ø§ÛŒÛŒ', '../uploads/6a6f546b721e5a16d9fe606cde9ad989hanie-gashte-talaie.jpg', '', 'Ø¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 3 Ùˆ 5', 26, '-', 'Ø§ØµÙÛŒ', '', '', '', '', '', ''),
('hasheminezhad', '38660844', '-', NULL, '38660844', '', 'Ù…Ù†Ø³ÙˆØ¬Ø§Øª Ù‡Ø§Ø´Ù…ÛŒ Ù†Ú˜Ø§Ø¯', '../uploads/842a3e9e10341340eff795c96691537emansojate-hashemi-nezhad.jpg', '', 'Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ 2 Ùˆ 4', 37, '-', 'Ø³Ù…ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('helia', '38452500', '09023040687', NULL, '38452500', '', 'Ø®Ø¯Ù…Ø§Øª Ù…Ø³Ø§ÙØ±ØªÛŒ Ù‡Ù„ÛŒØ§', '../uploads/e62545545ba202e5d6b7c0fc63e60203Helia.jpg', '', 'Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ø§Ø¨ÙˆØ°Ø± 14', 26, '-', '-', '', '', '', '', '', ''),
('hermes', '09121439723', '09121439723', NULL, '051-31903', '', 'Ú¯Ø±ÙˆÙ‡ Ø¢Ú˜Ø§Ù†Ø³ Ù‡Ø§ÛŒ Ù‡Ø±Ù…Ø³', '../uploads/33bd433764c30b1993bd96b7d9a3888bhermes.jpg', '', 'ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 26', 26, '-', 'Ú©Ø±ÛŒÙ…ÛŒ', '', '', '', '', '', ''),
('hese_ziba', '09031117002', '09031117002', NULL, '-', '', 'Ø­Ø³ Ø²ÛŒØ¨Ø§', '../uploads/c7b46ec0bad1af5784169244e46afc72hese-ziba.jpg', '', 'Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜ Ø·Ø¨Ù‚Ù‡ +1', 39, '-', 'Ø§Ø¨Ø±ÛŒØ´Ù… Ú†ÛŒ', '', '', '', '', '', ''),
('honary_rezayi', '38481749', '09155209785', NULL, '38481749', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù‡Ù†Ø±ÛŒ Ø±Ø¶Ø§ÛŒÛŒ', '../uploads/f52488baceaf1da817aa543652a0037ehonari-rezaii.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ ØŒØ¨Ø±Ø¬ Ø³Ù„Ù…Ø§Ù† Ø·Ø¨Ù‚Ù‡ 1-ØŒ Ù¾Ù„Ø§Ú© 71', 34, '-', 'Ø±Ø¶Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('hotel_aban', '38646241', '-', NULL, '38646241', '', 'Ù‡ØªÙ„ Ø¢Ø¨Ø§Ù†', '../uploads/18463498eab04e12c2e5e29af0d31beeaban.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ù¾ÛŒØ±ÙˆØ²ÛŒ-Ù…Ù‚Ø§Ø¨Ù„ Ù¾ÛŒØ±ÙˆØ²ÛŒ 55', 23, '-', '-', '', '', '', '', '', ''),
('hotel_alghadir', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ Ø§Ù„ØºØ¯ÛŒØ±', '../uploads/ed9cd5a9d2409abb2e004d7f8e14abcdalghadir.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø¢Ø²Ø§Ø¯ÛŒ-Ù…Ù‚Ø§Ø¨Ù„ Ø¨Ø§Øº Ù†Ø§Ø¯Ø±ÛŒ', 23, '-', '-', '', '', '', '', '', ''),
('hotel_aras', '37644445', '-', NULL, '37644445', '', 'Ù‡ØªÙ„ Ø§Ø±Ø³', '../uploads/73addd4222d8b8725591fc0992b66d54aras.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù…ÛŒØ¯Ø§Ù† Ø¬Ø§Ù†Ø¨Ø§Ø² Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø®ÛŒØ§Ù…', 23, '-', '-', '', '', '', '', '', ''),
('hotel_asia', '32220071', '-', NULL, '32220071', '', 'Ù‡ØªÙ„ Ø¢Ø³ÛŒØ§', '../uploads/179d1b4572270299e8d28d3aed068267asia.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ù¾Ø§Ø³Ø¯Ø§Ø±Ø§Ù†-Ù…Ù‚Ø§Ø¨Ù„ Ø³ÛŒÙ†Ù…Ø§ Ù‚Ø¯Ø³', 23, '-', '-', '', '', '', '', '', ''),
('hotel_atlas', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ Ø§Ø·Ù„Ø³', '../uploads/001c682d59b46f1c1dc8abf87d6c8b8fatlas.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù…ÛŒØ¯Ø§Ù† Ø¨ÛŒØª Ø§Ù„Ù…Ù‚Ø¯Ø³', 23, '-', '-', '', '', '', '', '', ''),
('hotel_atrak', '33647093', '-', NULL, '33647093', '', 'Ù‡ØªÙ„ Ø§ØªØ±Ú©', '../uploads/c19ec3f3673864f2d76cc88df85381e0atrak.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§-Ù…ÛŒØ¯Ø§Ù† Ø¨ÛŒØª Ø§Ù„Ù…Ù‚Ø¯Ø³', 23, '-', '-', '', '', '', '', '', ''),
('hotel_ferdosi', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ Ø¨Ø²Ø±Ú¯ ÙØ±Ø¯ÙˆØ³ÛŒ', '../uploads/1e892a49908682c80f720764db907663ferdusi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ù…Ø¯Ø±Ø³-Ù†Ø¨Ø´ Ù…Ø¯Ø±Ø³', 23, '-', '-', '', '', '', '', '', ''),
('hotel_ghasr', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ Ù‚ØµØ±', '../uploads/f479525160f4888a90962e93c62eabecghasr.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§&#40;Ø¹&#41; -Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯Ø§Ù†Ø´ -Ù‡ØªÙ„ Ø¨ÛŒÙ† Ø§Ù„Ù…Ù„Ù„ÛŒ Ù‚ØµØ± Ù…Ø´Ù‡Ø¯', 23, '-', '-', '', '', '', '', '', ''),
('hotel_helia', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ Ù‡Ù„ÛŒØ§', '../uploads/fd3239cea5251313eabd884cb52d08achelia.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§-Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 8', 23, '-', '-', '', '', '', '', '', ''),
('hotel_homa', '37172000', '-', NULL, '37172000', '', 'Ù‡ØªÙ„ Ù‡Ù…Ø§ 2', '../uploads/bcf2b289d1c921b0340e0d3635e1d3c4homa.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø¬Ø§Ù†Ø¨Ø§Ø²', 23, '-', '-', '', '', '', '', '', ''),
('hotel_mayamey', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ Ù…ÛŒØ§Ù…ÛŒ', '../uploads/45ea2794e06b361298c12f77b8c35ef2mamei.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§35', 23, '-', '-', '', '', '', '', '', ''),
('hotel_pardis', '09151230429', '09151230429', NULL, '-', '', 'Ù‡ØªÙ„ Ù¾Ø±Ø¯ÛŒØ³', '../uploads/26796e22b3f450edba38a35e9a751d78pardis.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ù…Ø§Ù… Ø®Ù…ÛŒÙ†ÛŒ-Ø§Ù…Ø§Ù… Ø®Ù…ÛŒÙ†ÛŒ 21', 23, '-', 'Ø­Ø§Ø¬ Ù…Ø­Ù…Ø¯ÛŒ', '', '', '', '', '', ''),
('hotel_pardisan', '38791820', '-', NULL, '38791820', '', 'Ù‡ØªÙ„ Ù¾Ø±Ø¯ÛŒØ³Ø§Ù†', '../uploads/a89437a4df358cd14e78b7cf8fcd02b2pardisan.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ø²Ø±Ú¯Ø±Ø§Ù‡ Ú©Ù„Ø§Ù†ØªØ±ÛŒ-Ø¬Ù†Ø¨ Ù¾Ø§Ø±Ú© ØµØ¯Ø§ Ùˆ Ø³ÛŒÙ…Ø§', 23, '-', '-', '', '', '', '', '', ''),
('hotel_parmida', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ Ù¾Ø§Ø±Ù…ÛŒØ¯Ø§', '../uploads/6547e307fd7768bac46037dc669f0a9cparmida.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§-Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 24', 23, '-', '-', '', '', '', '', '', ''),
('hotel_pars', '38689200', '09153052126', NULL, '38689200', '', 'Ù‡ØªÙ„ Ù¾Ø§Ø±Ø³', '../uploads/a2879736f9e7971385abfe19c8bce733pars.jpg', '', 'Ù…Ø´Ù‡Ø¯-ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯-Ù†Ø¨Ø´ ØµÛŒØ§Ø¯', 23, '-', 'Ø´ÛŒØ¯Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('hotel_pavion', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ Ù¾Ø§ÙˆÛŒÙˆÙ†', '../uploads/3cd3356358fe010c4b97b76549750766pavion.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 8', 23, '-', '-', '', '', '', '', '', ''),
('hotel_razavie', '33653611', '-', NULL, '33653611', '', 'Ù‡ØªÙ„ Ø±Ø¶ÙˆÛŒÙ‡', '../uploads/73b8a461158f5665f52ac9fafaeb6b11razavie.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¶Ù„Ø¹ Ø´Ù…Ø§Ù„ÛŒ Ø¨Ø§Ø²Ø§Ø± Ø±Ø¶Ø§', 23, '-', '-', '', '', '', '', '', ''),
('hotel_sahab', '09158203041', '09158203041', NULL, '-', '', 'Ù‡ØªÙ„ Ø³Ø­Ø§Ø¨', '../uploads/f3bdaf756a625f376a18d8ac87a6a7b0sahab.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø·Ø±Ù‚Ø¨Ù‡-Ø¬Ø§Ø¯Ù‡ Ø§Ù…Ø§Ù… Ø²Ø§Ø¯Ù‡ ÛŒØ§Ø³Ø± Ù†Ø§ØµØ±', 23, '-', '-', '', '', '', '', '', ''),
('hotel_samen', '35510900', '09150621405', NULL, '35510900', '', 'Ù‡ØªÙ„ Ø«Ø§Ù…Ù†', '../uploads/dc2795d04b9bc874e0196d9768e5d4c5samen.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§ÙˆÙ„ Ø¬Ø§Ø¯Ù‡ Ø·Ø±Ù‚Ø¨Ù‡-Ø³Ù…Øª Ú†Ù¾', 23, '-', 'Ø­Ø³ÛŒÙ† Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('hotel_shiraz', '38419247', '-', NULL, '38419247', '', 'Ù‡ØªÙ„ Ø´ÛŒØ±Ø§Ø²', '../uploads/77a5232d16cb0609533657b4e11cb4e3shiraz.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø¯Ø§Ù†Ø´Ú¯Ø§Ù‡', 23, '-', '-', '', '', '', '', '', ''),
('hotel_tara', '38596914', '-', NULL, '38596914', '', 'Ù‡ØªÙ„ ØªØ§Ø±Ø§', '../uploads/98971b71c817d9beb3bf9eaf9ec1991ctara.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø¢ÛŒØª Ø§...Ø´ÛŒØ±Ø§Ø²ÛŒ-Ù†Ø±Ø³ÛŒØ¯Ù‡ Ø¨Ù‡ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø´Ù‡Ø¯Ø§', 23, '-', '-', '', '', '', '', '', ''),
('hotel_tehran', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ ØªÙ‡Ø±Ø§Ù†', '../uploads/19b09655c1a9bd31c74e26f2ed6c5523tehran.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§-Ø´Ù…Ø§Ø±Ù‡366-Ù†Ø¨Ø´ Ø§Ù…Ø§Ù… Ø±Ø¶Ø§8', 23, '-', '-', '', '', '', '', '', ''),
('hotel_tous', '38646241', '-', NULL, '38646241', '', 'Ù‡ØªÙ„ Ø·ÙˆØ³', '../uploads/305187217c1165bffdd80059a67c73d0tous.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø¢ÛŒØª Ø§... Ø´ÛŒØ±Ø§Ø²ÛŒ-Ú©ÙˆÚ†Ù‡ Ù…Ù„Ú©', 23, '-', '-', '', '', '', '', '', ''),
('hotel_tus', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ ØªÙˆØ³', '', '', 'Ù…Ø´Ù‡Ø¯-Ø­Ø±Ù… Ù…Ø·Ù‡Ø±ØŒ Ø§Ø¨ØªØ¯Ø§ÛŒ Ø®ÛŒØ§Ø¨Ø§Ù† Ø´ÛŒØ±Ø§Ø²ÛŒØŒ Ù…Ø¬ØªÙ…Ø¹ ÙˆÙ†Ú©', 23, '-', '-', '', '', '', '', '', ''),
('hotel-darvishi', '37348162', '09125075374', NULL, '37348162', '', 'Ù‡ØªÙ„ Ù…Ø¬Ù„Ù„ Ø¯Ø±ÙˆÛŒØ´ÛŒ', '../uploads/82b5bc750decc77f828b18d92f28b261Darvishi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§&#40;Ø¹&#41;-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 24Ùˆ26', 23, '-', '-', '', '', '', '', '', ''),
('hotel-misagh', '123', '-', NULL, '-', '', 'Ù‡ØªÙ„ Ù…ÛŒØ«Ø§Ù‚', '../uploads/8d2169a847bb11f0ebb46f4d4f68ecf0misagh.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù…ÛŒØ¯Ø§Ù† Ø§Ù‚Ø¨Ø§Ù„ Ù„Ø§Ù‡ÙˆØ±ÛŒ', 23, '-', '-', '', '', '', '', '', ''),
('ieliaroz', '37673220', '09154035003', NULL, '051-37673220', '', 'Ú¯Ù„ ÙØ±ÙˆØ´ÛŒ Ø§ÛŒÙ„ÛŒØ§ Ø±Ø²', '../uploads/5db21007fda80a0b48859f7a9db52b5feliyaroz.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ Ø®ÛŒØ§Ø¨Ø§Ù† Ø¨Ù‡Ø§Ø±Ø³ØªØ§Ù†ØŒ Ø¨ÛŒÙ† Ø¨Ù‡Ø§Ø±Ø³ØªØ§Ù† 1 Ùˆ 3', 20, 'Ù…Ù„ÛŒØ­Ù‡', 'ÛŒØ²Ø¯Ø§Ù† Ù¾Ù†Ø§Ù‡', '', '', '', '', '', ''),
('iran_italia', '38694494', '09151092364', NULL, '38694494', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø§ÛŒØ±Ø§Ù† Ø§ÛŒØªØ§Ù„ÛŒØ§', '../uploads/d25dd744164b3e44966ca3d1d7b79a79iran-italyia.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 26 Ùˆ 28', 34, '-', 'Ú©Ø§Ù…Ù„', '', '', '', '', '', ''),
('jame_asal', '38780444', '-', NULL, '38780444', '', 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø³Ø±Ø§ÛŒ Ø¬Ø§Ù… Ø¹Ø³Ù„', '../uploads/c4d8e058fc91a4c59b6811d2a6eacfb8JamAsal.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¨Ù„ÙˆØ§Ø± Ù¾ÛŒØ±ÙˆØ²ÛŒ', 19, '-', 'Ù…ÙˆØ³ÙˆÛŒ', '', '', '', '', '', ''),
('javaher_afshar', '38436836', '-', NULL, '38436836', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø§ÙØ´Ø§Ø±', '../uploads/d9b652d2700b1b785e78573f309091a2afshar.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ø¨ØªØ¯Ø§ÛŒ Ø®ÛŒØ§Ø¨Ø§Ù† Ø±Ø¶Ø§', 38, 'Ø§ÙØ´Ø§Ø±', 'Ø®Ø¯ÛŒÙˆÛŒ', '', '', '', '', '', ''),
('javaher_akbarian', '36048175', '09155247087', NULL, '36048175', '', 'Ø·Ù„Ø§ Ùˆ Ø¬ÙˆØ§Ù‡Ø± Ø§Ú©Ø¨Ø±ÛŒØ§Ù†', '../uploads/366dfdb8fa25cf3a8aa66757f29e7edbakbarian.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ù…Ø§Ù…Øª 3', 38, '-', 'Ø§Ú©Ø¨Ø±ÛŒØ§Ù†', '', '', '', '', '', ''),
('javaher_akhlaghi', '38423136', '09151195915', NULL, '38423136', '', 'Ø·Ù„Ø§ Ùˆ Ø¬ÙˆØ§Ù‡Ø± Ø§Ø®Ù„Ø§Ù‚ÛŒ', '../uploads/dbe4c4843efba8d59708aff6fae9fc9eakhlaghi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ 9 Ùˆ 11', 38, '-', 'Ø§Ø®Ù„Ø§Ù‚ÛŒ', '', '', '', '', '', ''),
('javaher_anahita', '36045598', '-', NULL, '36045598', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø¢Ù†Ø§Ù‡ÛŒØªØ§', '../uploads/9f35ee4be039b4ca74f88bbd6df936e0anahita.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 28Ùˆ30', 38, '-', 'Ø³ÛŒØ± ÛŒÙˆÙ†Ø³ÛŒ', '', '', '', '', '', ''),
('javaher_ardalan', '38439910', '-', NULL, '38439910', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø§Ø±Ø¯Ù„Ø§Ù†', '../uploads/7fe86b6f228730c546786984cdd0b96cardalan.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ 9 Ùˆ 11', 38, '-', '-', '', '', '', '', '', ''),
('javaher_behnam', '36041893', '09155151591', NULL, '36041893', '', 'Ø·Ù„Ø§ Ùˆ Ø¬ÙˆØ§Ù‡Ø± Ø¨Ù‡Ù†Ø§Ù…', '../uploads/a8b43d42042fe373f52f58e0652cbbe0behnam.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 9Ùˆ11', 38, '-', 'Ø³ÛŒÙÛŒ', '', '', '', '', '', ''),
('javaher_eraji', '37613458', '-', NULL, '37613458', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø§ÛŒØ±Ø¬ÛŒ', '../uploads/ed7799eb1e5d1725e14080035d84f7d2iraji.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ù‡Ø§Ø±- Ù¾78', 38, '-', 'Ø§ÛŒØ±Ø¬ÛŒ', '', '', '', '', '', ''),
('javaher_hoseini', '38831043', '-', NULL, '38831043', '', 'Ø·Ù„Ø§ Ùˆ Ø¬ÙˆØ§Ù‡Ø± Ø­Ø³ÛŒÙ†ÛŒ', '../uploads/107e459f03d8a1c828ffde24dc61714choseini.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ú©ÙˆØ«Ø± Ø´Ù…Ø§Ù„ÛŒ 24 Ùˆ 26', 38, '-', 'Ø­Ø³ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('javaher_hosi', '37637695', '09151199659', NULL, '37637695', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ù‡ÙˆØ³ÛŒ', '../uploads/040d77f995b35b66b61f4d40d7059e34hosi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ù¾Ø§Ø³Ø§Ú˜ Ù†Ú¯Ø§Ø±-Ø·Ø¨Ù‚Ù‡ -1', 38, '-', '-', '', '', '', '', '', ''),
('javaher_irannezhad', '38822347', '-', NULL, '38822347', '', 'Ø·Ù„Ø§ Ùˆ Ø¬ÙˆØ§Ù‡Ø± Ø§ÛŒØ±Ø§Ù† Ù†Ú˜Ø§Ø¯', '../uploads/b32dd7a4fda7085501ffee3f6a8ecb4firan-nezhaad.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 32 Ùˆ Ù…ÛŒØ¯Ø§Ù† Ø­Ø±-Ù…Ù‚Ø§Ø¨Ù„ Ø³ÛŒÙ†Ù…Ø§', 38, '-', '-', '', '', '', '', '', ''),
('javaher_jalae', '37616300', '-', NULL, '37616300', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø¬Ù„Ø§Ø¦ÛŒ', '../uploads/711fd07dfa780c5578bdced05ddd224cjalayi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ù‡Ø§Ø±-Ù†Ø¨Ø´ Ù¾Ø§Ø³Ø§Ú˜ Ø¨Ø§Ø±Ø«Ø§ÙˆØ§', 38, '-', 'Ø¬Ù„Ø§Ø¦ÛŒ', '', '', '', '', '', ''),
('javaher_kakh', '09151140958', '09151140958', NULL, '-', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ú©Ø§Ø®', '../uploads/735bb426c5e91b9331af1d8c4b555f3fkakh.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù‡Ø§Ø´Ù…ÛŒÙ‡-Ù…Ø¬ØªÙ…Ø¹ Ø¢Ø¨Ø§Ù†', 38, '-', '-', '', '', '', '', '', ''),
('javaher_khatibzadeh', '38405620', '-', NULL, '38405620', '', 'Ø·Ù„Ø§ Ùˆ Ø¬ÙˆØ§Ù‡Ø± Ø®Ø·ÛŒØ¨ Ø²Ø§Ø¯Ù‡', '../uploads/aef8883ef718247e275e05646a5cbffekhatib-zade.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ 1Ùˆ3', 38, '-', 'Ø®Ø·ÛŒØ¨ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('javaher_khoshbakhti', '36087506', '09153136535', NULL, '36087506', '', 'Ø·Ù„Ø§ Ùˆ Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø®ÙˆØ´Ø¨Ø®ØªÛŒ', '../uploads/43296f026b73901c58859f982f209530khoshbakhti.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 7Ùˆ9', 38, '-', 'Ø­Ø³ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('javaher_marvian', '38400276', '-', NULL, '38400276', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ù…Ø±ÙˆÛŒØ§Ù†', '../uploads/e87937c9d6e778a0016fb1d0f3c283f8marvian.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ 1Ùˆ3', 38, '-', 'Ù…Ø±ÙˆÛŒØ§Ù† Ù‡Ø§Ø¯ÛŒ', '', '', '', '', '', ''),
('javaher_medalian', '38451278', '-', NULL, '38451278', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ù…Ø¯Ø§Ù„ÛŒØ§Ù†', '../uploads/f04e6343288541910c1cb040743b6cdbmedalian.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ 7Ùˆ9', 38, '-', 'Ù…Ø¯Ø§Ù„ÛŒØ§Ù†', '', '', '', '', '', ''),
('javaher_peranc', '36099575', '-', NULL, '36099575', '', 'Ø·Ù„Ø§ Ùˆ Ø¬ÙˆØ§Ù‡Ø± Ù¾Ø±Ù†Ø³', '../uploads/5344849ac1352d38a28d1198fee5ec95perance.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 9 Ùˆ 11', 38, '-', '-', '', '', '', '', '', ''),
('javaher_sadaf', '36048466', '09155146631', NULL, '36048466', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ ØµØ¯Ù', '../uploads/8f48296308867438b78b5d138ea3b0b5sadaf.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø§Ù…Ø§Ù…Øª 28', 38, '-', 'Ø§Ø³Ù…Ø§Ø¹ÛŒÙ„ Ù¾ÙˆØ±', '', '', '', '', '', ''),
('javaher_sarafrazi', '37604768', '-', NULL, '37604768', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø³Ø±Ø§ÙØ±Ø§Ø²ÛŒ', '../uploads/e050007371392c65aca7a2eff38442b0sarafrazi.jpg', '', 'Ù…Ø´Ù‡Ø¯ -Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ù†Ø¨Ø´ Ù¾Ø§Ø³Ø§Ú˜ Ø¨Ø§Ø±Ø«Ø§ÙˆØ§', 38, '-', 'Ø³Ø±Ø§ÙØ±Ø§Ø²ÛŒ', '', '', '', '', '', ''),
('javaher_sarafzadeh', '36023294', '09306669006', NULL, '36023294', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ ØµØ±Ø§Ù Ø²Ø§Ø¯Ù‡', '../uploads/041070d6256eeef71bfb39a2a1568625saraf-zade.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¯Ø§Ø®Ù„ Ø§Ù…Ø§Ù…Øª 3', 38, '-', 'ØµØ±Ø§Ù Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('javaher_siasi', '36074414', '09153153384', NULL, '36074414', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø³ÛŒØ§Ø³ÛŒ', '../uploads/faa13b4ae7589831636cf8a271027e9asiasi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø§Ù…Ø§Ù…Øª 28', 38, '-', 'Ø³ÛŒØ§Ø³ÛŒ', '', '', '', '', '', ''),
('javaher_zarif', '36083375', '09151153546', NULL, '36083375', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø¸Ø±ÛŒÙ', '../uploads/2cfcccb9c5e0aa5fe250eb6c6acf26b5zarif.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 1 Ùˆ3', 38, '-', 'Ø¸Ø±ÛŒÙ', '', '', '', '', '', ''),
('javaher-hadiani', '36040307', '-', NULL, '36040307', '', 'Ø·Ù„Ø§ Ùˆ Ø¬ÙˆØ§Ù‡Ø± Ù‡Ø§Ø¯ÛŒØ§Ù†ÛŒ', '../uploads/f43f080ee5ce07cf2556899b607aef49hadiani.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø§Ù…Ø§Ù…Øª 3', 38, '-', 'Ù‡Ø§Ø¯ÛŒØ§Ù†ÛŒ', '', '', '', '', '', ''),
('javaherat-sanjagh', '37678245', '-', NULL, '37678245', '', 'Ø¬ÙˆØ§Ù‡Ø±Ø§Øª Ø³Ù†Ø¬Ø§Ù‚', '../uploads/55741a01b2ef8a2eb156ee64b1482e7csanjagh.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ù¾Ø§Ø³Ø§Ú˜ Ú©Ø§Ø³Ù¾ÛŒÙ† Ù…Ø¯', 38, '-', '-', '', '', '', '', '', ''),
('javaheri_amir', '37618633', '-', NULL, '37618633', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø§Ù…ÛŒØ±', '../uploads/106374ad9e368d0d53b7d32c37cc7412amir.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ù¾Ø§Ø³Ø§Ú˜ Ù¾ÙˆÛŒØ§', 38, '-', '-', '', '', '', '', '', ''),
('javaheri_azin', '38938579', '09154304549', NULL, '38938579', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø¢Ø°ÛŒÙ†', '../uploads/8d144e9a01808aee0a9d6baa0810b646azin.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ 17Ùˆ19', 38, '-', 'Ø§Ù„Ù‡ÛŒØ§Ø±ÛŒ', '', '', '', '', '', ''),
('javaheri_givechi', '37687031', '-', NULL, '37687031', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ú¯ÛŒÙˆÙ‡ Ú†ÛŒ', '../uploads/3780c118f0b63151836127605f6f19f1givechi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ù¾Ø§Ø³Ø§Ú˜ Ù¾ÙˆÛŒØ§', 38, '-', '-', '', '', '', '', '', ''),
('javaheri_hasanzadeh', '38690619', '09153182331', NULL, '38690619', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø­Ø³Ù† Ø²Ø§Ø¯Ù‡', '../uploads/d1209b843de9705c9fef0667c67638achasan-zade.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ17Ùˆ19', 38, '-', 'Ø­Ø³Ù† Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('javaheri_hashemian', '37621029', '09151037020', NULL, '37621029', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ù‡Ø§Ø´Ù…ÛŒØ§Ù†', '../uploads/d730c814cd2f75d77b2c93d79b8e12f6hashemian.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ù¾Ø§Ø³Ø§Ú˜ Ù¾ÙˆÛŒØ§', 38, '-', 'Ù‡Ø§Ø´Ù…ÛŒØ§Ù†', '', '', '', '', '', ''),
('javaheri_khara', '38690671', '-', NULL, '38690671', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø®Ø§Ø±Ø§', '../uploads/94435e1eee302fc4537e376be9b10312khara.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯Ø§Ù†Ø´Ø¬Ùˆ Ùˆ Ø¯Ø§Ù†Ø´Ø¬Ùˆ 17', 38, '-', 'Ø®Ø§Ø±Ø§', '', '', '', '', '', ''),
('javaheri_refahi', '37682684', '09156100060', NULL, '37682684', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø±ÙØ§Ù‡ÛŒ', '../uploads/a500b2ad7fc55d0d5c51eb5688fbd550refahi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ù¾Ø§Ø³Ø§Ú˜ Ù†Ú¯Ø§Ø±-Ø·Ø¨Ù‚Ù‡ -1', 38, '-', 'Ø±ÙØ§Ù‡ÛŒ', '', '', '', '', '', ''),
('javaheri_robi', '38642501', '-', NULL, '38642501', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø±ÙˆØ¨ÛŒ', '../uploads/9994ebe01b265b1abd9ae7f5a855c9f1robi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø­Ø§Ø´ÛŒÙ‡ Ù…Ø¬ØªÙ…Ø¹ ØªØ¬Ø§Ø±ÛŒ Ø²Ù…Ø±Ø¯-Ù¾103', 38, '-', 'Ø§Ø±Ø¨Ø§Ø¨', '', '', '', '', '', ''),
('kadoe_amir', '38912093', '09370091417', NULL, '38912093', '', 'Ú©Ø§Ø¯ÙˆÛŒÛŒ Ø§Ù…ÛŒØ±', '../uploads/37b0e65109da457ff4f412376e1451ebamir.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± ÙØ±Ù‡Ù†Ú¯-Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¨Ù„ÙˆØ§Ø± ØµØ¯Ù', 28, '-', 'Ù…Ù‚Ø¯Ù…', '', '', '', '', '', ''),
('kadoe_shamdoni', '389459240', '09103425066', NULL, '389459240', '', 'Ú©Ø§Ø¯ÙˆÛŒÛŒ Ø´Ù…Ø¹Ø¯ÙˆÙ†ÛŒ', '../uploads/679dacceaf95b3299628174773da7f05shamdoni.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± ØµÛŒØ§Ø¯-Ù¾Ø§Ø³Ø§Ú˜ Ø¹Ù‚ÛŒÙ‚', 28, '-', 'Ø´Ø±ÛŒÙÛŒ Ù†ÛŒØ§', '', '', '', '', '', ''),
('kakh_ashraf', '32403080', '09155120307', NULL, '32403080', '', 'Ù‡ØªÙ„ Ùˆ Ø¨Ø§ØºØ³Ø±Ø§ÛŒ Ú©Ø§Ø® Ø§Ø´Ø±Ø§Ù', '../uploads/6ba7970f1690c165eb4fa7ecba75491bkakhe-ashraf.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ø²Ø±Ú¯Ø±Ø§Ù‡ Ø¢Ø³ÛŒØ§ÛŒÛŒ_Ø³Ù‡ Ø±Ø§Ù‡ ÙØ±Ø¯ÙˆØ³ÛŒ Ø¯ÙˆØ±Ø¨Ø±Ú¯Ø±Ø¯Ø§Ù† Ø¨Ù‡ Ø³Ù…Øª Ù…Ø´Ù‡Ø¯-Ø¨Ø¹Ø¯ Ø§Ø² Ø¨ÛŒÙ…Ø§Ø±Ø³ØªØ§Ù† Ø·Ø§Ù„Ù‚Ø§Ù†ÛŒ-Ù…Ù†Ø·Ù‚Ù‡ Ú†Ø§Ù‡Ø´Ú©-Ù†Ø¨Ø´ Ù…ÛŒØ¯Ø§Ù† Ø§ÙˆÙ„ Ú†Ø§Ù‡Ø´Ú©', 23, '-', 'Ú¯Ù„Ú©Ø§Ø±ÛŒØ§Ù†', '', '', '', '', '', ''),
('kakh_gallary', '36015500', '09151008083', NULL, '36015500', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ú©Ø§Ø®', '../uploads/9fc38c1cfc9188606d01150ac4d61f02kakh.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù… Ù†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø³ÛŒØ¯Ø±Ø¶ÛŒ Ø¬Ù†Ø¨ Ø¨Ø§Ù†Ú© ØµØ§Ø¯Ø±Ø§Øª', 33, 'Ù…Ø±ØªØ¶ÛŒ ', 'Ø¬Ø¹ÙØ±Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('kakhe_amir', '09153130642', '09153130642', NULL, '-', '', 'Ø¨Ø§ØºØ³Ø±Ø§ Ùˆ ØªØ§Ù„Ø§Ø± Ú©Ø§Ø® Ø§Ù…ÛŒØ±', '../uploads/e5e9ac5131920e1340144f5439938076kakhe-amir.jpg', '', 'Ø·Ø±Ù‚Ø¨Ù‡ØŒ Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 17', 13, '-', 'Ø§Ù…ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('kalayekhab_toshakmarket', '38929094', '09153026967', NULL, '38929094', '', 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨ ØªØ´Ú© Ù…Ø§Ø±Ú©Øª', '../uploads/c0c9574e533066030351aee9ba127ac3toshakmarket.jpg', '', 'Ù†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯Ø§Ù†Ø´Ø¬Ùˆ ', 37, 'Ù…Ø­Ù…Ø¯', 'Ø¨Ø§ØºØ¨Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('kamran_ghoreyshi', '37632555', '-', NULL, '37632555', '', 'Ø¯Ú©ØªØ± Ú©Ø§Ù…Ø±Ø§Ù† Ù‚Ø±ÛŒØ´ÛŒ Ø§Ù„Ø­Ø³ÛŒÙ†ÛŒ', '../uploads/6c01690f024a2aa0ab8980e99aa75a3edr-ghoreyshi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ø¨Ù‡Ø§Ø±Ø³ØªØ§Ù† 2-Ø³Ø§Ø®ØªÙ…Ø§Ù† ÙˆØµØ§Ù„-Ø·Ø¨Ù‚Ù‡ Ø¯ÙˆÙ…', 27, 'Ú©Ø§Ù…Ø±Ø§Ù†', 'Ù‚Ø±ÛŒØ´ÛŒ Ø§Ù„Ø­Ø³ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('kart_sadat', '09154824063', '09154824063', NULL, '-', '', 'Ú©Ø§Ø±Øª Ø³Ø§Ø¯Ø§Øª', '../uploads/8e16b4a25b59ffb25a9e547e7d8d6c4bsadat.jpg', '', 'Ù…Ø´Ù‡Ø¯', 18, '-', 'Ø¬Ù„Ø§Ù„ÛŒ', '', '', '', '', '', ''),
('kart_tandis', '37611477', '-', NULL, '37611477', '', 'Ú©Ø§Ø±Øª ØªÙ†Ø¯ÛŒØ³', '../uploads/3adb1a18755def46e1b4815bafb48a24tandis.jpg', '', 'Ù…Ø´Ù‡Ø¯-Â Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ - Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø®ÛŒØ§Ù… - Ø¨Ù‡ Ø·Ø±Ù Ø³Ù‡ Ø±Ø§Ù‡ ÙÙ„Ø³Ø·ÛŒÙ† - Ø¬Ù†Ø¨ Ø¨Ø§Ù†Ú© Ø³Ø±Ù…Ø§ÛŒÙ‡', 18, '-', 'Ø¬Ù‡Ø§Ù†Ø¯Ø§Ø±', '', '', '', '', '', ''),
('keep', '38335142', '-', NULL, '38335142', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ú©ÛŒÙ¾', '../uploads/00c0edb281f29b3bc0adb19f85cca8a2keep.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜ Ø·Ø¨Ù‚Ù‡ +1', 16, '-', '-', '', '', '', '', '', ''),
('keraychi_amin', '38403585', '-', NULL, '38444595', '', 'Ú©Ø±Ø§ÛŒÙ‡ Ú†ÛŒ Ø§Ù…ÛŒÙ†', '../uploads/514155fb12713308e75fa183f5b05d9aamin.jpg', '', 'Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ØŒ Ø¨ÛŒÙ† Ø§Ø¨ÙˆØ°Ø± 28 Ùˆ 30', 15, '-', 'Ø±Ù…Ø¶Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('keraychi_ghasr', '09158205806', '09158205806', NULL, '-', '', 'Ú©Ø±Ø§ÛŒÙ‡ Ú†ÛŒ Ù‚ØµØ±', '../uploads/c4b6f09bcf18184c5f642f54b1e5a936ghasr.jpg', '', 'Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 16 Ùˆ 17', 15, '-', 'ÙˆØ­ÛŒØ¯ÛŒØ§Ù†', '', '', '', '', '', ''),
('keraychi_sajad', '37633818', '09151135634', NULL, '37633818', '', 'Ú©Ø±Ø§ÛŒÙ‡ Ú†ÛŒ Ø³Ø¬Ø§Ø¯', '../uploads/23e394f8007f3d96e77af88b70c6b1d5sajad.jpg', '', 'Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø®ÛŒØ§Ù… Ù†Ø¨Ø´ Ø¯Ø³ØªØºÛŒØ¨ 16', 15, '-', 'Ø§Ø³Ø¹Ø¯ÛŒ', '', '', '', '', '', ''),
('keraye_mostafa', '38765120', '09153055600', NULL, '38765120', '', 'Ú¯Ø±ÙˆÙ‡ Ù¾Ø°ÛŒØ±Ø§ÛŒÛŒ Ù…ØµØ·ÙÛŒ', '../uploads/987c18d408f2337864e458f593aa96famostafa.jpg', '', 'Ø¨ÛŒÙ† Ø±Ø¶ÙˆÛŒ 42 Ùˆ 44', 15, '-', 'Ù†Ø¬ÛŒØ¨', '', '', '', '', '', ''),
('kerayeh_otomobil_celasic', '36108579', '09153181530', NULL, '36108579', '', 'Ú©Ø±Ø§ÛŒÙ‡ Ø§ØªÙˆÙ…Ø¨ÛŒÙ„ Ú©Ù„Ø§Ø³ÛŒÚ©', '../uploads/b8351d88e2b71bc81526af9051d8840ecelasik.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² 33 Ùˆ35', 22, '-', '-', '', '', '', '', '', ''),
('kerayeh_otomobil_ehsan', '36081414', '09155166300', NULL, '36081414', '', 'Ú©Ø±Ø§ÛŒÙ‡ Ø§ØªÙˆÙ…Ø¨ÛŒÙ„ Ø§Ø­Ø³Ø§Ù†', '../uploads/ceffba2a32c8aa3caa2d3ec20bbe954behsan.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² 12Ùˆ14', 22, '-', 'Ø¢Ø´ÙˆØ±ÛŒ', '', '', '', '', '', ''),
('ketring_alizadeh', '38424781', '09151019634', NULL, '38424781', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ø¹Ù„ÛŒØ²Ø§Ø¯Ù‡', '../uploads/8b04941c021990a140eabe63d9661c95alizade.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ 5', 24, '-', 'Ø¹Ù„ÛŒØ²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('ketring_aramis', '38845300', '09129452422', NULL, '38845300', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ùˆ ØºØ°Ø§ÛŒ Ø¢Ù…Ø§Ø¯Ù‡ Ø¢Ø±Ø§Ù…ÛŒØ³', '../uploads/321f392db312124c339bc28567fb3656aramis.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 30', 24, '-', 'Ø¹Ø¨Ø¯Ø§...Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('ketring_ashpaz_man', '38843066', '-', NULL, '38843066', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ø¢Ø´Ù¾Ø² Ù…Ù†', '../uploads/607ec68f0b312d326aea37438bf61664ashpaze-man.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† ÙÚ©ÙˆØ±ÛŒ32Ùˆ34', 24, '-', '-', '', '', '', '', '', ''),
('ketring_bokhara', '38839339', '-', NULL, '38839339', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ùˆ Ø¢Ø´Ù¾Ø²Ø®Ø§Ù†Ù‡ Ø¨Ø®Ø§Ø±Ø§', '../uploads/f39565e59f5e7659d6f9ebca095d4c80bokhara.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 8', 24, '-', 'Ø±ÙˆÙ†Ù‚ÛŒ', '', '', '', '', '', ''),
('ketring_danesh', '38670460', '-', NULL, '38670460', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ø¯Ø§Ù†Ø´', '../uploads/f1efb1aafaef7108c20135f131c45686danesh.jpg', '', 'Ù…Ø´Ù‡Ø¯-ÙÚ©ÙˆØ±ÛŒ 20-Ø¬Ù†Ø¨ Ù¾Ø§Ø±Ú© Ù„Ø§Ù„Ù‡', 24, '-', '-', '', '', '', '', '', ''),
('ketring_dorchin', '38666613', '09011596787', NULL, '38666613', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ø¯ÙˆØ±Ú†ÛŒÙ†', '../uploads/9e5697f68ae24b0b936aa11225b88d51dorchin.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 34 Ùˆ 36', 24, '-', '-', '', '', '', '', '', ''),
('ketring_ghasr', '36070982', '09121098779', NULL, '36070982', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ù‚ØµØ±', '../uploads/87450893d84fd6b427595234581990b7ghasr.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 2 Ùˆ 4', 24, '-', 'Ø¨Ø­ÛŒØ±Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('ketring_ghoghnos', '38833320', '09153001905', NULL, '38833320', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ù‚Ù‚Ù†ÙˆØ³', '../uploads/1e9fbefbe9360d50c09e467faf9d411bghoghnos.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 55', 24, '-', 'Ù‚Ù†Ø¨Ø±Ù¾ÙˆØ±', '', '', '', '', '', ''),
('ketring_gholami', '35016387', '09151161250', NULL, '35016387', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ ØºÙ„Ø§Ù…ÛŒ', '../uploads/936c3bc1643daccc01002a1d5167fd4dgholami.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù…ÛŒØ¯Ø§Ù† Ù„Ø§Ø¯Ù† Ùˆ Ù¾ÛŒØ±ÙˆØ²ÛŒ 78', 24, '-', 'ØºÙ„Ø§Ù…ÛŒ ÙØ±', '', '', '', '', '', ''),
('ketring_kimia', '38467132', '-', NULL, '38467132', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ú©ÛŒÙ…ÛŒØ§', '../uploads/e3d0effdf3a3f01be1c13c1445c52bb8kimia.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ 16 Ùˆ 18', 24, '-', 'Ù¾ÙˆØ±Ø¹Ø·Ø§', '', '', '', '', '', ''),
('ketring_mandegar', '38673238', '09155005320', NULL, '38673238', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ù…Ø§Ù†Ø¯Ú¯Ø§Ø±', '../uploads/698908101dc376f457b7a55b2e01122emandegar.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ù‡Ù†Ø±Ø³ØªØ§Ù† 19', 24, '-', 'Ù†Ø¹Ù…ØªÛŒ', '', '', '', '', '', ''),
('ketring_nafis', '38845353', '09307662243', NULL, '38845353', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ù†ÙÛŒØ³', '../uploads/f6343a155cab25687bd65533c70471ddnafis.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ Ùˆ Ù…ÛŒØ¯Ø§Ù† Ø­Ø±-Ù…Ù‚Ø§Ø¨Ù„ Ø³ÛŒÙ†Ù…Ø§', 24, '-', '-', '', '', '', '', '', ''),
('ketring_nobaharan', '36039000', '09155034624', NULL, '36039000', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ù†ÙˆØ¨Ù‡Ø§Ø±Ø§Ù†', '../uploads/ec5da5f692b8bee5bb20dd0ea749dc3enobaharan.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 18 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ø¹Ù„Ù…', 24, '-', 'Ø§Ø¨Ø±Ø§Ù‡ÛŒÙ… Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('ketring_resturan_sarab', '38643646', '0915444410', NULL, '38643646', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ùˆ Ø±Ø³ØªÙˆØ±Ø§Ù† Ø³Ø±Ø§Ø¨', '../uploads/efc0d8d608a9d9afc955e8a738f6df73sarab.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯-Ù†Ø¨Ø´ ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 35', 24, '-', 'Ø®Ø±Ø§Ø´Ø§Ø¯ÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('ketring_roham', '38912224', '09154405272', NULL, '38912224', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ùˆ ØºØ°Ø§ÛŒ Ø¢Ù…Ø§Ø¯Ù‡ Ø±Ù‡Ø§Ù…', '../uploads/96c61980eae1b262f85d29634dcd3957roham.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† ÙÚ©ÙˆØ±ÛŒ6Ùˆ8', 24, '-', '-', '', '', '', '', '', ''),
('ketring_shorvarzi', '38331080', '-', NULL, '38331080', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ø´ÙˆØ±ÙˆØ±Ø²ÛŒ', '../uploads/0e327fdfe3560fd855ed96a2ced9c1a4shorvarzi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯-Ø¨ÛŒÙ† Ø±Ø¶Ø§ÛŒ 11 Ùˆ 13', 24, '-', '-', '', '', '', '', '', ''),
('ketring-ajodani', '37605051', '09399964600', NULL, '37605051', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ùˆ Ø¢Ø´Ù¾Ø²Ø®Ø§Ù†Ù‡ Ø§Ø¬ÙˆØ¯Ø§Ù†ÛŒ', '../uploads/3046384fde93237c5f36f4d572b1689eajodani.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø³Ø¬Ø§Ø¯-Ø¨Ù‡Ø§Ø±Ø³ØªØ§Ù† 9-Ù…Ù‚Ø§Ø¨Ù„ Ù¾Ø§Ø±Ú© Ø¨Ù†ÙØ´Ù‡', 24, '-', 'Ø§Ø¬ÙˆØ¯Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('ketring-salman', '37661414', '-', NULL, '37661414', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ø³Ù„Ù…Ø§Ù†', '../uploads/eeb47b118f592defc5f25c3327b1b946salman.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ù‡Ø§Ø±Ø³ØªØ§Ù†-Ø¬Ù†Ø¨ Ø³ÛŒÙ†Ø§ Ø¨Ù‡Ø¯Ø§Ø´Øª', 24, '-', 'Ø³Ø±Ù‡Ù†Ú¯ÛŒ-Ú¯Ù„ÛŒ', '', '', '', '', '', ''),
('khadamat_pazirayi', '38813187', '09154448440', NULL, '38813187', '', 'Ø®Ø¯Ù…Ø§Øª Ù¾Ø°ÛŒØ±Ø§ÛŒÛŒ', '../uploads/6eb408406b158d96dc4a3837a6b40a81pazirayi.jpg', '', 'Ø¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 38 Ùˆ 40', 15, '-', 'Ú©ÙˆØ«Ø±', '', '', '', '', '', ''),
('khademan', '38699754', '-', NULL, '38699754', '', 'Ø®Ø¯Ù…Ø§Øª Ù…Ø³Ø§ÙØ±ØªÛŒ Ø®Ø§Ø¯Ù…Ø§Ù†', '', '', 'ÙÚ©ÙˆØ±ÛŒ 20 Ø¬Ù†Ø¨ Ù¾Ø§Ø±Ú© Ù„Ø§Ù„Ù‡', 26, '-', '-', '', '', '', '', '', ''),
('khane_behtar', '38477130', '-', NULL, '38477130', '', 'Ø®Ø§Ù†Ù‡ Ø¨Ù‡ØªØ±', '../uploads/40263984a44678b613d955d78e05575fkhane-behtar.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 44 Ùˆ 46', 34, '-', '-', '', '', '', '', '', ''),
('khane_bosch', '38435700', '-', NULL, '38435700', '', 'Ø®Ø§Ù†Ù‡ Ø¨ÙˆØ´', '../uploads/ac6b36af26d1d2b45550475ce5fd57fdkhane-bosch.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 45 Ùˆ 47', 28, '-', 'Ø¬Ù„Ø§Ù„ÛŒ', '', '', '', '', '', ''),
('khane_clasic', '38474767', '-', NULL, '38474767', '', 'Ø®Ø§Ù†Ù‡ Ú©Ù„Ø§Ø³ÛŒÚ©', '../uploads/53aa28dc02f804f444b36a85b5bdb748classic.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ³Ù„Ù…Ø§Ù† ÙØ§Ø±Ø³ÛŒØŒØ¨ÛŒÙ† ØªÙ‚Ø§Ø·Ø¹ Ø§Ø±Ù… Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ²', 34, '-', '-', '', '', '', '', '', ''),
('khane_khab', '38763400', '09153044728', NULL, '38763400', '', 'Ø®Ø§Ù†Ù‡ Ø®ÙˆØ§Ø¨', '../uploads/01f7d3513e13dcca500bcd1b647118bfkhane-khab.jpg', '', 'Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 12 Ùˆ 14 Ù¾Ù„Ø§Ú© 274', 37, '-', 'Ø²Ø§Ø±Ø¹', '', '', '', '', '', '');
INSERT INTO `users` (`user`, `pass`, `mob`, `mob2`, `tel`, `tel2`, `title`, `logo`, `header`, `addres`, `senfid`, `name`, `famili`, `describ`, `u_bazaryab`, `introduction`, `telegram`, `instagram`, `LinkedIn`) VALUES
('khane_man', '09365275504', '09365275504', NULL, '-', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø®Ø§Ù†Ù‡ Ù…Ù†', '../uploads/6c3d058f2bfa019b6a632754a894d3b8khane-man.jpg', '', 'Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜ Ø·Ø¨Ù‚Ù‡ +2', 37, '-', '-', '', '', '', '', '', ''),
('khane_modern', '051-36081945', '09155139817', NULL, '051-36081945', '', 'Ø®Ø§Ù†Ù‡ Ù…Ø¯Ø±Ù†', '', '', 'Ø¨ÛŒÙ† Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ø¹Ù„Ù… Ùˆ Ø¬Ù„Ø§Ù„', 34, '-', '-', '', '', '', '', '', ''),
('khane_noor', '38410122', '-', NULL, '38410122', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø®Ø§Ù†Ù‡ Ù†ÙˆØ±', '../uploads/e2bd7aef330de76541bb7d730451e916khane-nor.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯', 34, '-', '-', '', '', '', '', '', ''),
('khane_rang', '36110660', '09151008211', NULL, '36110660', '', 'Ø®Ø§Ù†Ù‡ Ø±Ù†Ú¯', '../uploads/9a48662fa6cb81d630be3faacb9c3220khane-rang.jpg', '', 'Ù†Ø¨Ø´ Ù…Ø¹Ù„Ù… 14', 39, '-', 'Ø±Ø³ØªÚ¯Ø§Ø±', '', '', '', '', '', ''),
('khane_royayi', '36014030', '09158007285', NULL, '051-36014030', '', 'Ø®Ø§Ù†Ù‡ Ø±ÙˆÛŒØ§ÛŒÛŒ', '../uploads/159d0998d48cef5352f5970408c60ef0khaneroyaei.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù… Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 23 Ùˆ 25', 34, '-', '-', '', '', '', '', '', ''),
('khane_sihavi12', '38330380', '-', NULL, '38330380', '', 'Ø®Ø§Ù†Ù‡ Ø³ÛŒÙ‡Ø§ÙˆÛŒ ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ù…Ø±Ú©Ø²ÛŒ 12', '../uploads/274cb5870377c00d37cd9d079e524338khane-sihavi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 59 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ Ù¾Ù„Ø§Ú© 545', 28, '-', '-', '', '', '', '', '', ''),
('khane_va_ashpazkhane', '38440134', '-', NULL, '38440134', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø®Ø§Ù†Ù‡ Ùˆ Ø¢Ø´Ù¾Ø²Ø®Ø§Ù†Ù‡', '../uploads/218c579bb4457635214505d6beced8bfkhane-ashpazkhane.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 42 Ùˆ45', 28, '-', '-', '', '', '', '', '', ''),
('khane_ziba', '36070513', '09128475732', NULL, '36070513', '', 'Ø®Ø§Ù†Ù‡ Ø²ÛŒØ¨Ø§', '../uploads/e7967e63e357906540b75e33c88771c6khane-ziba.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù…Ø¹Ù„Ù… 6 Ùˆ 8 Ù¾Ù„Ø§Ú© 120', 34, '-', '-', '', '', '', '', '', ''),
('khaneh_behtar', '38335199', '-', NULL, '38335199', '', 'Ø®Ø§Ù†Ù‡ Ø¨Ù‡ØªØ±', '../uploads/00fabe43aa5463b1002f51cd9c748fb6khane-behtar.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜-Ø·Ø¨Ù‚Ù‡ Ø¯ÙˆÙ…', 28, '-', '-', '', '', '', '', '', ''),
('khaneh_lux', '09339186714', '09339186714', NULL, '-', '', 'Ø®Ø§Ù†Ù‡ Ù„ÙˆÚ©Ø³', '../uploads/06dbe240278badd51ff2cce6fd097d62khane-lux.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 75Ùˆ77', 28, '-', 'Ù‚Ø§Ø³Ù…ÛŒ', '', '', '', '', '', ''),
('khaneh_sefid', '38335159', '-', NULL, '38335159', '', 'Ø®Ø§Ù†Ù‡ Ø³ÙÛŒØ¯', '../uploads/0f2f9fa7c67725eb6f47a42c06f754a9khane-sefid.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜-Ø·Ø¨Ù‚Ù‡ -1', 28, '-', '-', '', '', '', '', '', ''),
('khanemodeshadkam', '09023163013', '09023163013', NULL, '-', '', 'Ø®Ø§Ù†Ù‡ Ù…Ø¯ Ø´Ø§Ø¯Ú©Ø§Ù…', '../uploads/94a83597c628f3688a36868e3a2ba27dshadkam.jpg', '', 'Ø§Ø¨ÙˆØ°Ø± ØºÙØ§Ø±ÛŒ 3 Ù¾Ù„Ø§Ú© 157', 6, 'Ø¬ÙˆØ§Ø¯', 'Ø´Ø§Ø¯Ú©Ø§Ù…', '', '', '', '', '', ''),
('khanumgol', '38688506', '09155606062', NULL, '051-38688506', '', 'Ú¯Ù„ ÙØ±ÙˆØ´ÛŒ Ø®Ø§Ù†Ù… Ú¯Ù„', '../uploads/6577d667f5720125be42928441a9cfe0miss-flower.jpg', '', 'Ø¨ÛŒÙ† ØµØ§Ø±Ù…ÛŒ 36 Ùˆ 34', 20, 'Ø¨Ù‡Ù†Ø§Ù…', 'ØªÛŒÙ…ÙˆØ±ÛŒ', '', '', '', '', '', ''),
('khase_man', '09355697074', '09355697074', NULL, '-', '', 'Ú¯Ù„ Ø®Ø§Øµ Ù…Ù†', '../uploads/8f18422f23ac3e86b0c87df40e0c5bd5katayon.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù‚Ø§Ø³Ù… Ø¢Ø¨Ø§Ø¯ - Ø³Ù‡ Ø±Ø§Ù‡ Ø§Ù†Ø¯ÛŒØ´Ù‡ - Ø§Ø¨ØªØ¯Ø§ÛŒ Ø´Ø±ÛŒØ¹ØªÛŒ - Ø¬Ù†Ø¨ Ù¾ÛŒØªØ²Ø§ Ù†Ø§Ø¨ ÙÙˆØ¯', 20, '-', 'Ø¹Ù†Ø§Ø¨Ø³ØªØ§Ù†ÛŒ', '', '', '', '', '', ''),
('khoros_ghandi', '36019923', '-', NULL, '36019923', '', 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø®Ø±ÙˆØ³ Ù‚Ù†Ø¯ÛŒ', '../uploads/8369f9a197cb70ba471a67dff57dbd80khoros-ghandi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø¬Ù„Ø§Ù„ 9 Ùˆ 11', 19, '-', '-', '', '', '', '', '', ''),
('kiana_noscin', '37603313', '09354309077', NULL, '37603313', '', 'Ø¬ÙˆØ§Ù†Ø³Ø§Ø²ÛŒ Ù¾ÙˆØ³Øª Ú©ÛŒØ§Ù†Ø§ Ù†ÙˆØ§Ø³Ú©ÛŒÙ†', '../uploads/47a37466a93bc3930bdf9ae6c5c7e69fkiana.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ù… Ø¬Ù†ÙˆØ¨ÛŒ 10-Ø®ÛŒØ§Ø¨Ø§Ù† Ø²Ù†Ø¨Ù‚-Ø´Ù…Ø§Ø±Ù‡7-Ø·Ø¨Ù‚Ù‡ Ø§ÙˆÙ„-Ø¨Ø§Ø²Ø±Ú¯Ø§Ù†ÛŒ Ú©ÛŒØ§Ù†Ø§ Ù†ÙˆØ§Ù†Ø¯ÛŒØ´ Ø¨Ø±ØªØ±', 27, 'Ú©ÛŒØ§Ù†Ø§', 'Ø¹Ø§Ø±ÙÛŒ', '', '', '', '', '', ''),
('kiana_sabori', '36052503', '-', NULL, '36052503', '', 'Ø¯Ú©ØªØ± Ú©ÛŒØ§Ù†Ø§ ØµØ¨ÙˆØ±ÛŒ', '../uploads/ee64030db667d8e00abc02cee58ad80bdr-sabori.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø§Ù…Ø§Ù…Øª-Ù†Ø±Ø³ÛŒØ¯Ù‡ Ø¨Ù‡ Ø§Ù…Ø§Ù…Øª 7-Ø³Ø§Ø®ØªÙ…Ø§Ù† Ù‡Ø§Ù…ÙˆÙ†-Ø·Ø¨Ù‚Ù‡ Ø¯ÙˆÙ…', 27, 'Ú©ÛŒØ§Ù†Ø§', 'ØµØ¨ÙˆØ±ÛŒ', '', '', '', '', '', ''),
('kish_cala', '38942488', '09370711837', NULL, '38942488', '', 'Ú©ÛŒØ´ Ú©Ø§Ù„Ø§', '../uploads/10d90a9c4f458c7b6940557727938175kish-cala.jpg', '', 'Ù…Ø´Ù‡Ø¯-ØµÛŒØ§Ø¯-Ù…Ø¬ØªÙ…Ø¹ Ø²Ù…Ø±Ø¯-Ø·Ø¨Ù‚Ù‡ Ù‡Ù…Ú©Ù', 28, '-', 'Ø´Ú©ÛŒØ¨Ø§', '', '', '', '', '', ''),
('kkh_elin', '38924079', '09153178363', NULL, '38924079', '', 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨ Ø§Ù„ÛŒÙ†', '../uploads/760e10c34d7d19bef169bf1f12d0345celin.jpg', '', 'Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 36 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯Ø§Ù†Ø´Ø¬Ùˆ', 37, '-', '-', '', '', '', '', '', ''),
('kkh_fadavi', '38940168', '09159179683', NULL, '38940168', '', 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨ ÙØ¯ÙˆÛŒ', '../uploads/00290369eabf9ffc6dc203a48b16a1e2fadavi.jpg', '', 'Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 63 Ùˆ 65 Ù†Ø±Ø³ÛŒØ¯Ù‡ Ø¨Ù‡ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ ØµÛŒØ§Ø¯', 37, '-', 'ÙØ¯ÙˆÛŒ', '', '', '', '', '', ''),
('kkh_layco', '38482120', '09152323235', NULL, '38482120', '', 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨ Ù„Ø§ÛŒÚ©Ùˆ', '../uploads/1bcbc71d8832bc4f34ac6de871a4d430layko.jpg', '', 'Ø¨ÛŒÙ† Ø§Ø¨Ù† Ø³ÛŒÙ†Ø§ 14 Ùˆ 16', 37, '-', '-', '', '', '', '', '', ''),
('kkh_pardis', '36057095', '09151109221', NULL, '36057095', '', 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨ Ù¾Ø±Ø¯ÛŒØ³', '../uploads/c2f552e3e0a731e21593b7c16e28e03fpardis.jpg', '', 'Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 16 Ùˆ 18', 37, '-', 'Ø§Ø³Ù…Ø§Ø¹ÛŒÙ„ÛŒ', '', '', '', '', '', ''),
('kkh_sarir', '38826868', '09153201706', NULL, '38826868', '', 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨ Ø³Ø±ÛŒØ±', '../uploads/3a81d1c4a3eb78537deeda149c0e6a73khabe-sarir.jpg', '', 'Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 38 Ùˆ 40', 37, '-', '-', '', '', '', '', '', ''),
('kkh_veronika', '36052776', '09153104156', NULL, '36052776', '', 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨ ÙˆØ±ÙˆÙ†ÛŒÚ©Ø§', '../uploads/e37b98bad1f481b8fea7b8573c7d0534veronica.jpg', '', 'Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 6 Ùˆ 8', 37, '-', 'Ø¬Ø§ÙˆØ¯Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('kkh_vistar', '38475020', '09153173975', NULL, '38475020', '', 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨ ÙˆÛŒØ³ØªØ§Ø±', '../uploads/a828d24744628f112deb322f8ef83c11vistar.jpg', '', 'Ø¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 44 Ùˆ 46', 37, '-', 'Ø¬Ù‡Ø§Ù†Ú¯ÛŒØ±ÛŒ', '', '', '', '', '', ''),
('kolbe_atrerojan', '38828656', '09156132016', NULL, '38828656', '', 'Ú©Ù„Ø¨Ù‡ Ø¹Ø·Ø± Ø±ÙˆÚ˜Ø§Ù†', '../uploads/4827595446b1d08b5bd8c61e17116824rozhan.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù‡Ù†Ø±Ø³ØªØ§Ù† Ù…ÛŒØ¯Ø§Ù† ØµØ§Ø±Ù…ÛŒ', 39, '-', '-', '', '', '', '', '', ''),
('ladan_pelast', '38653332', '09159158364', NULL, '38653332', '', 'Ù„Ø§Ø¯Ù† Ù¾Ù„Ø§Ø³Øª', '../uploads/fc7b7556b89bed8e045d06f22b72f73fladan-pelast.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ù„Ø§Ø¯Ù† 10', 28, '-', 'Ù¾ÛŒØ±ÙˆØ²ÛŒ', '', '', '', '', '', ''),
('leo_gallery', '09155001417', '09155001417', NULL, '-', '', 'Ù„Ø¦Ùˆ Ú¯Ø§Ù„Ø±ÛŒ', '../uploads/0a3ef28d1f9301b58fbd769c9b1a18bcleo-gallery.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ù†Ø¨Ø´ Ù¾Ø§Ø³Ø§Ú˜ Ø¨Ø§Ø±Ø«Ø§ÙˆØ§', 38, '-', '-', '', '', '', '', '', ''),
('lg_farazgostar', '38439595', '-', NULL, '38439595', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø§Ù„Ø¬ÛŒ ÙØ±Ø§Ø²Ú¯Ø³ØªØ±', '../uploads/090c33a789c54d804e21233a39c4eedelg-faragostar.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 46 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ²', 28, '-', '-', '', '', '', '', '', ''),
('lg_goldiran', '38459325', '-', NULL, '38459325', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø§Ù„Ø¬ÛŒ Ú¯Ù„Ø¯Ø§ÛŒØ±Ø§Ù†', '../uploads/97629ffbf6b78f77250530fc19f1c5a2lg-goldiran.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 46', 28, '-', '-', '', '', '', '', '', ''),
('lkh_amini', '38784775', '09155201297', NULL, '38784775', '', 'Ù„ÙˆØ§Ø²Ù… Ø®Ø§Ù†Ú¯ÛŒ Ø§Ù…ÛŒÙ†ÛŒ', '../uploads/7da9bb0837cdb52b5c259ff5cbd19b1damini.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 1 Ùˆ 3 Ù¾Ù„Ø§Ú© 79', 28, '-', '-', '', '', '', '', '', ''),
('lkh_ashpazkhane_khas', '38406813', '09153023133', NULL, '38406813', '', 'Ø¢Ø´Ù¾Ø²Ø®Ø§Ù†Ù‡ Ø®Ø§Øµ', '../uploads/045b5048ca4b775cf2db46b7a52141e1ashpazkhane-khas.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² Ùˆ Ø³Ù†Ø§Ø¨Ø§Ø¯ 47', 28, '-', 'Ø¬Ù„Ø§Ù„ÛŒ', '', '', '', '', '', ''),
('lkh_asia', '38471487', '-', NULL, '38471487', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¢Ø³ÛŒØ§', '../uploads/2e3f9de1b36327eb7e0fd1cbb799912aasia.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 51 Ùˆ 53', 28, '-', '-', '', '', '', '', '', ''),
('lkh_bosch', '38449440', '-', NULL, '38449440', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¨ÙˆØ´', '../uploads/44a8b91f2c8b4a4a04af0b03d7c6df42bosch.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ³Ù†Ø§Ø¨Ø§Ø¯ Ø¨Ø¹Ø¯ Ø§Ø² Ø¢ÙØ±ÛŒÙ† Ù…Ù‚Ø§Ø¨Ù„ Ø¨Ø§Ù†Ú© Ù…Ø³Ú©Ù†', 28, '-', 'Ø§Ø®ÙˆÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('lkh_deawoo', '36110227', '09151046398', NULL, '36110227', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¯ÙˆÙˆ', '../uploads/ba3dba9f82a95f1175a7b51731a3f969devooo.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù…ØŒÙ†Ø¨Ø´ Ù…Ø¹Ù„Ù… 28', 28, '-', 'Ù†Ø¹ÛŒÙ…ÛŒ', '', '', '', '', '', ''),
('lkh_filips', '38418800', '-', NULL, '38418800', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ ÙÛŒÙ„ÛŒÙ¾Ø³', '../uploads/45b312f7fa2245193e572f826838eefdphilips.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø§Ø¨Ù† Ø³ÛŒÙ†Ø§ 8 Ùˆ Ø®ÛŒØ§Ø¨Ø§Ù† Ø¨Ù‡Ø´Øª', 28, '-', 'ÙØ§Ø±Ø³ÛŒØ§Ù†', '', '', '', '', '', ''),
('lkh_group_yas', '38446034', '-', NULL, '38446034', '', 'Ú¯Ø±ÙˆÙ‡ Ù„ÙˆØ§Ø²Ù… Ø®Ø§Ù†Ú¯ÛŒ ÛŒØ§Ø³', '../uploads/38970cb276668c30eadc5d413d0c0c36yas.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 53', 28, '-', 'ØµØ§Ù„Ø­ÛŒ', '', '', '', '', '', ''),
('lkh_jelve', '38846028', '-', NULL, '38846028', '', 'Ù„ÙˆØ§Ø²Ù… Ø®Ø§Ù†Ú¯ÛŒ Ø¬Ù„ÙˆÙ‡', '../uploads/7feebeee724e6d8883073dd02dafabb1jelve.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¬Ù†Ø¨ Ù¾ÛŒØ±ÙˆØ²ÛŒ 32', 28, '-', 'Ø¯Ø±Ù‡Ù…ÛŒ', '', '', '', '', '', ''),
('lkh_khane_sihavi', '38330883', '-', NULL, '38330883', '', 'Ø®Ø§Ù†Ù‡ Ø³ÛŒÙ‡Ø§ÙˆÛŒ', '../uploads/eb4839543c7f5c5de45e447d6c223e45khane-sihavi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² Ùˆ Ø§Ø±Ù… Ù¾Ù„Ø§Ú© 413', 28, '-', '-', '', '', '', '', '', ''),
('lkh_khayami', '38415103', '-', NULL, '38415103', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø®ÛŒØ§Ù…ÛŒ', '../uploads/00f149ae91dc2054dfdf0a86bea80b42khayami.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 44 Ùˆ 46', 28, '-', 'Ø®ÛŒØ§Ù…ÛŒ', '', '', '', '', '', ''),
('lkh_khne_deawoo', '38425011', '-', NULL, '38425011', '', 'Ø®Ø§Ù†Ù‡ Ø¯ÙˆÙˆ', '../uploads/4e3a8403b55ba528fea571ae34cea3dedevoo.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 53 Ùˆ 55', 28, '-', 'Ø¬Ù„Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('lkh_khoshro', '36063121', '09155139817', NULL, '36063121', '', 'Ù„ÙˆØ§Ø²Ù… Ø®Ø§Ù†Ú¯ÛŒ Ø®ÙˆØ´Ø±Ùˆ', '../uploads/0250003bb57e3dce39aa93de4df7957fkhoshro.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù…Ø¹Ù„Ù… 14', 28, '-', 'Ø®ÙˆØ´Ø±Ùˆ', '', '', '', '', '', ''),
('lkh_lg', '36045573', '09159143193', NULL, '36061100', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø§Ù„ Ø¬ÛŒ', '../uploads/c5081ee3a80c1cbecb202bad0a77be30lg.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù…Ø¹Ù„Ù… 18', 28, '-', 'ÛŒÙˆØ³ÙÛŒØ§Ù†', '', '', '', '', '', ''),
('lkh_lotfi', '36020840', '09151001272', NULL, '36020840', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ù„Ø·ÙÛŒ', '../uploads/24bf0276798d60ed4741cd828a5913a1lotfi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø§Ù…Ø§Ù…Øª 37', 28, '-', 'Ù…Ø­Ø¨ÛŒ', '', '', '', '', '', ''),
('lkh_mahestan', '38467771', '-', NULL, '38467771', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù…Ù‡Ø³ØªØ§Ù†', '../uploads/3b0a3f7a0b34b825a0f87eb8b917efd8mahestan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 59 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ', 28, '-', '-', '', '', '', '', '', ''),
('lkh_modi', '38788865', '-', NULL, '38788865', '', 'Ù„ÙˆØ§Ø²Ù… Ø®Ø§Ù†Ú¯ÛŒ Ù…ÙˆØ¯ÛŒ', '../uploads/36ed8659de35a0fd0f49d599d8c09cd4modi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø±Ø¶ÙˆÛŒ 6 Ùˆ 8', 28, '-', 'Ù…ÙˆØ¯ÛŒ', '', '', '', '', '', ''),
('lkh_mulinix', '38481311', '09154492137', NULL, '38481311', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ù…ÙˆÙ„ÛŒÙ†ÛŒÚ©Ø³', '../uploads/093808b444473cdee30ea08adf83a09amolinex.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ Ø¨Ø±Ø¬ Ø³Ù„Ù…Ø§Ù†', 28, 'Ù†Ø¯Ø§', 'Ø¨Ø²Ø±Ú¯ÙˆØ§Ø±', '', '', '', '', '', ''),
('lkh_parand', '38930096', '09154060043', NULL, '38930096', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ù¾Ø±Ù†Ø¯', '../uploads/3e18f6f9868d80aaf8b9f1945f148c72parand.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù…Ø¹Ù„Ù… 34', 28, '-', 'Ø¯Ø§ÙˆØ·Ù„Ø¨', '', '', '', '', '', ''),
('lkh_samsung', '38468418', '-', NULL, '38468418', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø³Ø§Ù…Ø³ÙˆÙ†Ú¯', '../uploads/a7f0818c45bba4f593becf36ec3ca247samsung.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 55 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ', 28, '-', 'Ø­Ø³ÛŒÙ†ÛŒØ§Ù† Ù…Ù‚Ø¯Ù…', '', '', '', '', '', ''),
('lkh_samsung_', '36018412', '09153022925', NULL, '36018412', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø³Ø§Ù…Ø³ÙˆÙ†Ú¯', '../uploads/a4a39b32b9c59ca7a811db0b4e4d7698samsung.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³ÛŒØ¯Ø±Ø¶ÛŒ 7 Ùˆ 9', 28, '-', 'Ø¯Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('lkh_shahrara', '36023190', '09151131619', NULL, '36023190', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø´Ù‡Ø±Ø¢Ø±Ø§', '../uploads/1937395e6476a339c109ffe0810a4fcashahr-ara.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ³Ø¬Ø§Ø¯ØŒØ­Ø§Ù…Ø¯Ø¬Ù†ÙˆØ¨ÛŒ 12&#40;Ø¬Ø§Ù…ÛŒ&#41;Ù¾Ù„Ø§Ú© 114', 28, '-', 'Ø³Ù„Ø·Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('lkh_sony', '38447084', '-', NULL, '38447084', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø³ÙˆÙ†ÛŒ', '../uploads/cc5dc95328130e6369f9bf8dd488d15csony.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 45', 28, '-', '-', '', '', '', '', '', ''),
('lkh-samsung', '38454378', '-', NULL, '38454378', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø³Ø§Ù…Ø³ÙˆÙ†Ú¯', '../uploads/76db732f5982672efe2634e46f7d4e3bsamsung.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 51 Ùˆ 53 Ù¾Ù„Ø§Ú© 453', 28, '-', '-', '', '', '', '', '', ''),
('lkh*samsung', '38461881', '-', NULL, '38461881', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø³Ø§Ù…Ø³ÙˆÙ†Ú¯', '../uploads/f271234a43490e599f5793cafa4b5fe6samsung.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ù‚Ø§Ø¦Ù…', 28, '-', 'Ø§Ú©Ø¨Ø±ÛŒØ§Ù†', '', '', '', '', '', ''),
('mahzar_64', '38449002', '-', NULL, '38449002', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 64', '../uploads/bbc481afe766df70c0fe4a896a0d7ecf64.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ØŒØ§Ø¨ØªØ¯Ø§ÛŒ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 3', 25, 'Ù…Ù‡Ø¯ÛŒ', 'Ø§Ø±Ø¨Ø§Ø¨', '', '', '', '', '', ''),
('mahzar_65', '36057007', '09159161032', NULL, '36057007', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 65', '../uploads/27fb8c4ceb3022223b7dd007061ce40565.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ø§Ù…Ø§Ù…ØªØŒØ§Ù…Ø§Ù…Øª 29Ù¾Ù„Ø§Ú© 101/1', 25, 'Ø­Ø³Ù†', 'Ù‡Ø¯Ø§ÛŒØª', '', '', '', '', '', ''),
('mahzar_66', '32252205', '-', NULL, '32252205', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 66', '../uploads/201c66ffc812d3c28a1888b1b7d6fca566.jpg', '', 'Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ù‚Ø¯Ù… Ø·Ø¨Ø±Ø³ÛŒØŒÚ©Ø§Ø´Ø§Ù†ÛŒ 5 ØŒÙ…Ù‚Ø§Ø¨Ù„ Ù¾Ù„Ø§Ú© 4', 25, 'Ø¹Ù„ÛŒ Ø§Ú©Ø¨Ø±', 'Ø±ÙÛŒØ¹ÛŒ Ø®Ø±Ø§Ø³Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('mahzar_67', '38545600', '-', NULL, '38545600', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 67', '../uploads/1e837a2f2a2177652308dc865a64712667.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ø¨Ù‡Ø§Ø± Ø¨ÛŒÙ† Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯ÛŒØ¯Ú¯Ø§Ù‡ Ù„Ø´Ú¯Ø± ØŒØ¬Ù†Ø¨ Ù…Ø³Ø¬Ø¯Ø§Ù„Ø±Ø¶Ø§', 25, 'Ø³ÛŒØ¯Ø¬Ù…Ø§Ù„ Ø§Ù„Ø¯ÛŒÙ†', 'Ù…ÛŒØ±Ø´ÙÛŒØ¹ÛŒ', '', '', '', '', '', ''),
('mahzar_68', '38406727', '-', NULL, '38406727', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 68', '', '', 'Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ 11 Ø·Ø¨Ù‚Ù‡ ÙÙˆÙ‚Ø§Ù†ÛŒ', 25, 'Ø³Ø¹ÛŒØ¯', 'Ù…Ù‚ÛŒÙ…ÛŒ', '', '', '', '', '', ''),
('mahzar_69', '38438064', '-', NULL, '38438064', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 69', '../uploads/bfcb2eaa493d366a3063ec1379ebf65a69.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† ØµØ§Ø­Ø¨ Ø§Ù„Ø²Ù…Ø§Ù†ØŒØ³Ø¹Ø¯Ø¢Ø¨Ø§Ø¯ Ù¾Ù„Ø§Ú© 94', 25, 'Ø³ÛŒØ¯Ù…Ù‡Ø¯ÛŒ', 'Ø¨Ø¯ÛŒØ¹ÛŒ', '', '', '', '', '', ''),
('mahzar_70', '32232558', '-', NULL, '32232558', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 70', '../uploads/f609cdaf371f23c35e734a2e6779a59970.jpg', '', 'Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ú¯Ø§Ù‡ 14 Ùˆ 16 Ù¾Ù„Ø§Ú© 266', 25, 'Ù…Ø­Ù…Ø¯Ø§Ø³Ù…Ø§Ø¹ÛŒÙ„', 'Ø§Ø´Ú©Ø°Ø±ÛŒ', '', '', '', '', '', ''),
('mahzar_71', '38225995', '-', NULL, '38225995', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 71', '../uploads/4d2c49d48cd2faf208bd798c5196e6de71.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù¾ÛŒØ±ÙˆØ²ÛŒ ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø±Ø§ÙØ±Ø§Ø²Ø§Ù†ØŒÙ¾Ø§ÛŒØ¯Ø§Ø±ÛŒ 2', 25, 'Ø¹Ø¨Ø§Ø³', 'Ø§Ø­Ù…Ø¯ÛŒ', '', '', '', '', '', ''),
('mahzar_72', '35424053', '-', NULL, '35424053', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 72', '', '', 'Ø¨Ù„ÙˆØ§Ø± ØªÙˆØ³ØŒ Ù†Ø±Ø³ÛŒØ¯Ù‡ Ø¨Ù‡ Ø³Ù‡ Ø±Ø§Ù‡ ÙØ±Ø¯ÙˆØ³ÛŒ Ø¬Ù†Ø¨ Ø¯Ø§Ø±ÙˆØ®Ø§Ù†Ù‡', 25, 'Ù…Ø­Ù…ÙˆØ¯', 'Ø³Ø§Ù„Ø§Ø±ÛŒ', '', '', '', '', '', ''),
('mahzar_73', '37328567', '-', NULL, '37328567', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 73', '../uploads/f20582d1ac749bff0f806ed21519a0db73.jpg', '', 'Ø¨ÛŒÙ† Ú¯Ø§Ø² 8 Ùˆ 10 Ø±Ùˆ Ø¨Ù‡ Ø±ÙˆÛŒ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø³Ø±Ø§ÛŒ Ø³Ø§Ø¯Ø§Øª', 25, 'ÙØ§Ø³Ù…', 'Ù‚Ø§Ø³Ù…ÛŒ', '', '', '', '', '', ''),
('mahzar_74', '38545662', '-', NULL, '38545662', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 74', '../uploads/b91eea9710d19d7f1175abd740a036ff74.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ¯Ø§Ø¦ÛŒØ§Ù† Ø§Ø³Ù„Ø§Ù… ØŒ ÙØ¯Ø§Ø¦ÛŒØ§Ù† Ø§Ø³Ù„Ø§Ù… 6', 25, 'Ù…Ø­Ù…Ø¯Ø¹Ù„ÛŒ', 'Ø±Ø¬Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('mahzar_75', '38944008', '-', NULL, '38944008', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 75', '../uploads/d9ce88938edece628bef887ad5d6061775.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù… Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 43 Ùˆ 45 Ù¾Ù„Ø§Ú© 643 Ø·Ø¨Ù‚Ù‡ Ø§ÙˆÙ„', 25, 'Ø­Ø³Ù†', 'Ù¾Ø§Ø±Ø³Ø§', '', '', '', '', '', ''),
('mahzar_76', '32766897', '-', NULL, '32766897', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 76', '../uploads/d902cf86ccf154ce36ae1cc8c727760176.jpg', '', 'Ø§Ù†ØªÙ‡Ø§ÛŒ Ø³ÛŒ Ù…ØªØ±ÛŒ Ø·Ù„Ø§Ø¨ ØŒ Ø¨Ù„ÙˆØ§Ø± Ø§Ù…ØªØŒ Ù…Ù‚Ø§Ø¨Ù„ Ù¾Ø§Ø±Ú© Ø§Ù…ØªØŒ Ø·Ø¨Ù‚Ù‡ ÙÙˆÙ‚Ø§Ù†ÛŒ Ù…Ø¯Ø±Ø³Ù‡ Ø¹Ù„Ù…ÛŒÙ‡ Ø§Ù…Ø§Ù… Ø¨Ø§Ù‚Ø±&#40;Ø¹&#41;', 25, 'Ù…Ø¬ÛŒØ¯', 'Ø²Ø§Ù‡Ø¯ÛŒ', '', '', '', '', '', ''),
('mahzar_77', '32769458', '-', NULL, '32769458', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 77', '../uploads/78b5a32c806c007053213b81ed4cf33977.jpg', '', 'Ø³ÛŒ Ù…ØªØ±ÛŒ Ø·Ù„Ø§Ø¨ØŒÙ†Ø¨Ø´ Ù…ÙØªØ­ 23ØŒØ·Ø¨Ù‚Ù‡ ÙÙˆÙ‚Ø§Ù†ÛŒ Ø¨Ø§Ù†Ú© ØªØ¬Ø§Ø±Øª', 25, 'ØºÙ„Ø§Ù…Ø±Ø¶Ø§', 'Ø­ÛŒØ¯Ø±ÛŒ', '', '', '', '', '', ''),
('mahzar_78', '37682854', '-', NULL, '37682854', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 78', '../uploads/d93f0bb7c31c26a7943d92ea47d1dc7878.jpg', '', 'Ø³Ø¬Ø§Ø¯ØŒ Ø¨ÛŒÙ† Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø± Ùˆ Ø¨Ù‡Ø§Ø± Ø³Ø§Ø®ØªÙ…Ø§Ù† Ø§Ù„Ø¨Ø±Ø² Ø·Ø¨Ù‚Ù‡ 2', 25, 'Ø­Ù…ÛŒØ¯Ø±Ø¶Ø§', 'Ø³Ù„Ø­Ø´ÙˆØ±', '', '', '', '', '', ''),
('mahzar_80', '33711837', '-', NULL, '33711837', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 80', '../uploads/4a59e370b7bfacd3113c326ce5af1c7380.jpg', '', 'Ú©ÙˆÛŒ Ø¯Ú©ØªØ±ÛŒØŒ Ø§Ù†ØªÙ‡Ø§ÛŒ Ù¾Ø§Ø³ØªÙˆØ± ØŒ Ù¾Ù„Ø§Ú© 249/1', 25, 'Ø¹Ù„ÛŒ Ø§Ú©Ø¨Ø±', 'Ø­Ø³Ù† Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('mahzar_82', '38818480', '-', NULL, '38818480', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 82', '../uploads/aa2d66bfe1b7a823cfbbf5a27920f9ce82.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù¾ÛŒØ±ÙˆØ²ÛŒ Ù†Ø¨Ø´ Ù…ÛŒØ¯Ø§Ù† Ù‡Ø§Ø´Ù…ÛŒÙ‡', 25, 'Ù…Ø­Ù…ÙˆØ¯', 'ÙØªØ­ÛŒ', '', '', '', '', '', ''),
('mahzar_83', '38541115', '-', NULL, '38541115', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 83', '', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ù…Ø§Ù… Ø®Ù…ÛŒÙ†ÛŒ &#40;Ø±Ù‡&#41;ØŒØ¨ÛŒÙ† Ø§Ù…Ø§Ù… Ø®Ù…ÛŒÙ†ÛŒ 45 Ùˆ 47', 25, 'Ø§Ø¨Ø±Ø§Ù‡ÛŒÙ…', 'ÙÙ‡Ù…ÛŒØ¯Ù‡ Ø±ÛŒØ²Ù‡ Ø§ÛŒ', '', '', '', '', '', ''),
('mahzar_84', '38781662', '-', NULL, '38781662', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 84', '../uploads/d0fea6b941d2a6f86c4124ad7645edba84.jpg', '', 'Ø±Ø¶Ø§Ø´Ù‡Ø±ØŒÙ…ÛŒØ¯Ø§Ù† Ø´Ù‡ÛŒØ¯ Ú©Ø§ÙˆÙ‡ØŒØ¬Ù†Ø¨ Ù‚Ù†Ø§Ø¯ÛŒ Ø¬Ø§Ù… Ø¹Ø³Ù„ØŒÙ¾Ù„Ø§Ú© 14', 25, 'Ø¹Ø¨Ø¯Ø§Ù„Ø¬ÙˆØ§Ø¯', 'Ø´Ø±ÛŒØ¹ØªÛŒ Ú©ÙˆÙ‡Ø¨Ù†Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('mahzar_85', '36212285', '-', NULL, '36212285', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 85', '../uploads/6e6f70198491e3c45ebe06ae0eddb66185.jpg', '', 'Ù‚Ø§Ø³Ù… Ø¢Ø¨Ø§Ø¯ Ø¨ÛŒÙ† Ø´Ø§Ù‡Ø¯ 59 Ùˆ 61 Ù¾Ù„Ø§Ú© 545', 25, 'Ù…Ø­Ù…Ø¯Ø­Ø³ÛŒÙ†', 'Ø­ÙÛŒØ¸ÛŒ', '', '', '', '', '', ''),
('mahzar_86', '37633841', '09151104991', NULL, '37633841', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 86', '../uploads/8978eeb625bec047e0cbd303398afd9986.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ ØŒÙ…Ù‡Ø¯ÛŒ 24 ØŒ Ù¾Ù„Ø§Ú© 16', 25, 'Ø§Ø¨ÙˆØ§Ù„Ù‚Ø§Ø³Ù…', 'Ú©Ø±ÛŒÙ…ÛŒ', '', '', '', '', '', ''),
('mahzar_87', '38590341', '-', NULL, '38590341', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 87', '../uploads/7ebdf2134cc7617864347bacac59c5de87.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ù‡ÙØ¯Ù‡ Ø´Ù‡Ø±ÛŒÙˆØ±ØŒÙ‡ÙØ¯Ù‡ Ø´Ù‡Ø±ÛŒÙˆØ± 15ØŒ Ù¾Ù„Ø§Ú© 13', 25, 'Ø­Ø³ÛŒÙ†', 'Ù†ÛŒÚ© Ù†Ø§Ù…', '', '', '', '', '', ''),
('mahzar_88', '36581800', '-', NULL, '36581800', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 88', '../uploads/5dde8a202ba5e45ffedc9de96009902288.jpg', '', 'Ù‚Ø§Ø³Ù… Ø§Ø¨Ø§Ø¯ØŒ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø§Ù†Ø¯ÛŒØ´Ù‡ØŒØ±Ùˆ Ø¨Ù‡ Ø±ÙˆÛŒ Ø¯Ø±Ù…Ø§Ù†Ú¯Ø§Ù‡ Ø­Ø¬ØªØŒÙ¾Ù„Ø§Ú© 1055 Ø·Ø¨Ù‚Ù‡ Ø¯ÙˆÙ…', 25, 'Ù…Ø³Ø¹ÙˆØ¯', 'Ø­Ø§Ø¬ Ø­Ø³ÛŒÙ†ÛŒØ§Ù†', '', '', '', '', '', ''),
('mahzar_89', '32768402', '-', NULL, '32768402', '', 'Ù…Ø­Ø¶Ø± Ø´Ù…Ø§Ø±Ù‡ 89', '../uploads/11486b5dd4c533626c3fce51bd27411d89.jpg', '', 'Ø³ÛŒ Ù…ØªØ±ÛŒ Ø·Ù„Ø§Ø¨ ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø´ÛŒØ® ØµØ¯ÙˆÙ‚ ØŒÙ†Ø¨Ø´ ØµØ¯ÙˆÙ‚ 16', 25, 'Ø­Ø³ÛŒÙ†', 'ÙØªÙˆØ­ÛŒ', '', '', '', '', '', ''),
('maryam_khabazzadeh', '37683888', '-', NULL, '37683888', '', 'Ú©Ù„ÛŒÙ†ÛŒÚ© Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø¯Ú©ØªØ± Ø®Ø¨Ø§Ø²Ø²Ø§Ø¯Ù‡', '../uploads/ae25ed1e91e6a21494a0e9a7bc98ff17dr-khabazzade.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯-Ø¨Ù‡Ø§Ø±Ø³ØªØ§Ù† 18-Ù…ÛŒÙ†Ø§1-Ù¾119', 27, 'Ø³ÛŒØ¯Ù‡ Ù…Ø±ÛŒÙ…', 'Ø®Ø¨Ø§Ø²Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('maxim', '388888815', '-', NULL, '388888815', '', 'Ù…Ø§Ú©Ø³ÛŒÙ…', '../uploads/c70856508d27e5bb170a9ab8751cb4b1maxim.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡ØªÙ„ Ù‡Ù…Ø§ 2', 16, '-', '-', '', '', '', '', '', ''),
('mazrae_gol', '36028353', '-', NULL, '36028353', '', 'Ù…Ø²Ø±Ø¹Ù‡ Ú¯Ù„', '../uploads/99078d91c9d9405cdac5c0ca6cd5cf14mazrae-gol.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ø¬Ø§Ø¯ 14 Ùˆ 16', 20, '-', 'ÛŒØºÙ…Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('mezon_abroshen', '38705689', '09156524027', NULL, '38705689', '', 'Ù…Ø²ÙˆÙ† Ø¢Ø¨Ø±ÙˆØ´Ù†', '../uploads/472a40321e2c44dc56ff58204709f162abroshen.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù‡Ø§Ø´Ù…ÛŒÙ‡ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 26ØŒÙ¾Ù„Ø§Ú© 96', 6, '-', 'Ú©Ø§Ø±Ú¯Ø±', '', '', '', '', '', ''),
('mezon_adora', '38689285', '09155110887', NULL, '38689285', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø¹Ø±ÙˆØ³ Ø¢Ø¯ÙˆØ±Ø§', '../uploads/fd9f324bf80d02498359d7a97f5632adadora.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡ØªÙ„ Ù¾Ø§Ø±Ø³ØŒØ·Ø¨Ù‚Ù‡ 1-ØŒÙˆØ§Ø­Ø¯ Ø´Ù…Ø§Ø±Ù‡ 5', 6, '-', 'Ø³Ø¨Ø­Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('mezon_almas', '09306679281', '09306679281', NULL, '-', '', 'Ù…Ø²ÙˆÙ† Ø¹Ø±ÙˆØ³ Ø§Ù„Ù…Ø§Ø³', '../uploads/ad7e78974e9436e30b2ec57c11b65f91almas.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ…ÛŒØ¯Ø§Ù† ØµÛŒØ§Ø¯ Ø´ÛŒØ±Ø§Ø²ÛŒØŒÙ¾Ø§Ø³Ø§Ú˜Ø³ØªØ§Ø³Ù†ØªØ±ØŒÙˆØ§Ø­Ø¯ 107', 6, 'ÙØ±Ø´ØªÙ‡', 'Ø¯Ø§Ù†ÛŒØ§Ù„ÛŒ', '', '', '', '', '', ''),
('mezon_ariyadokht', '38940010', '09155035879', NULL, '38940010', '', 'Ù…Ø²ÙˆÙ† Ø¢Ø±ÛŒØ§Ø¯Ø®Øª', '../uploads/b7c8cf960f1d79e99e1b5d5386f0c91farea-dokht.jpg', '', 'Ø¨ÛŒÙ† ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 26 Ùˆ Ù¾Ù„ Ù‡ÙØª ØªÛŒØ± Ù¾Ù„Ø§Ú© 654', 6, 'Ø³Ø§Ø±Ø§', 'Ø­ÛŒØ¯Ø±ÛŒØ§Ù†', '', '', '', '', '', ''),
('mezon_azimi', '123456', '09127996973', NULL, '-', '', 'Ù…Ø²ÙˆÙ† Ø¹Ø¸ÛŒÙ…ÛŒ', '../uploads/7438371eb92f1d245b6388255c929af5azimimezon.png', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ Ø¨Ø±Ø¬ Ø¢Ø¨Ø§Ù† ÙˆØ§Ø­Ø¯ 505', 6, 'Ø³ÛŒÙ…ÛŒÙ†', 'Ø¹Ø¸ÛŒÙ…ÛŒ', '', '', '', '', '', ''),
('mezon_bami', '38817418', '09152222001', NULL, '38817418', '', 'Ù…Ø²ÙˆÙ† Ø¨Ø§Ù…ÛŒ', '', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ 11 Ø±ÙˆØ¨Ù‡ Ø±ÙˆÛŒ Ø¨Ø±Ø¬ Ø§Ù„Ù…Ø§Ù†', 16, 'Ø§Ù…ÛŒØ±', 'Ø¨Ø§Ù…ÛŒ', '', '', '', '', '', ''),
('mezon_darpoosh', '38425066', '09153063882', NULL, '38425066', '', 'Ù…Ø²ÙˆÙ† Ø¯Ø±Ù¾ÙˆØ´', '../uploads/86fee067715dd998fb60e8083a5e1e57darpoosh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒØ­Ø§Ù…Ø¯Ø¬Ù†ÙˆØ¨ÛŒ 12ØŒÙ¾Ù„Ø§Ú© 91', 6, '-', 'Ø³Ø±Ø§Ø¨ÛŒ', '', '', '', '', '', ''),
('mezon_dibadokht', '38823549', '09154408688', NULL, '38823549', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø¯ÛŒØ¨Ø§Ø¯Ø®Øª', '../uploads/50711a39598411c135c731aef8a6953edibadokht.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 31 Ùˆ 33ØŒØ³Ø§Ø®ØªÙ…Ø§Ù† Ø®Ù„ÛŒØ¬ ÙØ§Ø±Ø³ ØŒØ·Ø¨Ù‚Ù‡ 2', 6, '-', 'Ú©Ø§Ø¸Ù…ÛŒØŒØ±Ù†Ø¬Ø¨Ø±', '', '', '', '', '', ''),
('mezon_felora', '09338562399', '09338562399', NULL, '-', '', 'Ù…Ø²ÙˆÙ† ÙÙ„ÙˆØ±Ø§', '../uploads/948ca3c1a54363c08ebd86007b982f76felora.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†ÙˆÙÙ„ Ù„ÙˆØ´Ø§ØªÙˆØŒØ¨ÛŒÙ† Ù†ÙˆÙÙ„ Ù„ÙˆØ´Ø§ØªÙˆ 14 Ùˆ 16ØŒÙ¾Ù„Ø§Ú© 168', 6, '-', 'Ø¨Ø­Ù‚', '', '', '', '', '', ''),
('mezon_feloran', '38662747', '09153147059', NULL, '38662747', '', 'Ù…Ø²ÙˆÙ† ÙÙ„ÙˆØ±Ø§Ù†', '../uploads/19b85d0718b81bffa7cab2b39c27f579feloran.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù¾ÛŒØ±ÙˆØ²ÛŒØŒØ­Ø¯ÙØ§ØµÙ„ Ù¾ÛŒØ±ÙˆØ²ÛŒ 49 Ùˆ ØªÙ‚Ø§Ø·Ø¹ Ù‡ÙØª ØªÛŒØ±', 6, '-', 'Ø´Ø§Ø¯Ù¾Ø±ÙˆØ±', '', '', '', '', '', ''),
('mezon_golsusan', '36076081', '-', NULL, '36076081', '', 'Ù…Ø²ÙˆÙ† Ú¯Ù„ Ø³ÙˆØ³Ù†', '../uploads/e58a57043114306504147cc2bee4ba97gol-susan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 25 Ùˆ 27', 6, '-', '-', '', '', '', '', '', ''),
('mezon_hasmina', '37660391', '09155138340', NULL, '37660391', '', 'Ù…Ø²ÙˆÙ† Ù‡Ø§Ø³Ù…ÛŒÙ†Ø§', '../uploads/9281cc38fab4598b6d3febc7099d2351hasmia.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒØ¨ÛŒÙ† ÙØ±Ø¯ÙˆØ³ÛŒ 12 Ùˆ 14ØŒØ¬Ù†Ø¨ Ø¯Ø±Ù…Ø§Ù†Ú¯Ø§Ù‡ Ø´ÙˆØ±ÛŒØ¯Ù‡ØŒÙ¾Ù„Ø§Ú© 272', 6, '-', 'ØªÙ‚ÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('mezon_hedye', '37627655', '-', NULL, '37627655', '', 'Ù…Ø²ÙˆÙ† Ø¹Ø±ÙˆØ³ Ù‡Ø¯ÛŒÙ‡', '../uploads/7904078664eb9ed96d3babdf3e5fd5f8hedye.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø®ÛŒØ§Ù…ØŒØ®ÛŒØ§Ù… 10ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ú¯Ù„Ø§ÛŒÙ„ØŒØ´Ù…Ø§Ø±Ù‡ 43', 6, '-', 'ØªÙˆÚ©Ù„ÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('mezon_honarkar', '09152002500', '09151848178', NULL, '-', '', 'Ù…Ø²ÙˆÙ† Ù‡Ù†Ø±Ú©Ø§Ø±', '', '', 'Ù‡ØªÙ„ Ù¾Ø§Ø±Ø³ ØŒ Ø·Ø¨Ù‚Ù‡ Ù…Ù†ÙÛŒ 1ØŒ Ù¾Ù„Ø§Ú© 11', 16, 'Ø¢ÛŒÙ„ÛŒÙ†', 'Ù¾Ù‡Ù„ÙˆØ§Ù†', '', '', '', '', '', ''),
('mezon_kelara', '38689269', '09153046605', NULL, '38689269', '', 'Ù…Ø²ÙˆÙ† Ú©Ù„Ø§Ø±Ø§', '', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡ØªÙ„ Ù¾Ø§Ø±Ø³ØŒØ·Ø¨Ù‚Ù‡ 1-ØŒ ØºØ±ÙÙ‡ 4', 6, '-', 'Ù¾ÙˆØ±Ø­Ø³ÛŒÙ†', '', '', '', '', '', ''),
('mezon_khatere', '36042896', '09153136071', NULL, '36042896', '', 'Ù…Ø²ÙˆÙ† Ø®Ø§Ø·Ø±Ù‡', '../uploads/8856b77c19675ff66d354b365c203708khatere.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¢Ø²Ø§Ø¯Ø´Ù‡Ø± ØŒØ¨Ù„ÙˆØ§Ø± Ø§Ù…Ø§Ù…ØªØŒØ¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 23 Ùˆ 25', 6, '-', '-', '', '', '', '', '', ''),
('mezon_mah_asal', '37663633', '09155183877', NULL, '37663633', '', 'Ù…Ø²ÙˆÙ† Ù…Ø§Ù‡ Ø¹Ø³Ù„', '../uploads/b26305087162dc81acf93aa30a8c476emahasal.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÚ†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ø±Ú¯Ù…Ù‡Ø±ØŒÙ†Ø¨Ø´ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø± Ø´Ù…Ø§Ù„ÛŒ 2ØŒÙ¾ÙˆØ´Ø§Ú© Ù…Ø§Ù‡ Ø¹Ø³Ù„', 6, '-', 'ØµÙØ±ÛŒ', '', '', '', '', '', ''),
('mezon_mahbanoo', '38845759', '09153034742', NULL, '38845759', '', 'Ù…Ø²ÙˆÙ† Ù…Ø§Ù‡ Ø¨Ø§Ù†Ùˆ', '../uploads/dd164ac0e954044efbd6bac70e94281fmahbanoo.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ØŒØµØ§Ø±Ù…ÛŒ 28ØŒÙ¾Ù„Ø§Ú© 102', 6, '-', 'Ø´Ø±ÛŒÙ', '', '', '', '', '', ''),
('mezon_matlabi', '37662321', '09151170363', NULL, '37662321', '', 'Ù…Ø²ÙˆÙ† Ù…Ø·Ù„Ø¨ÛŒ', '../uploads/6eba13f995071651c3a828fcc0c65f51matlabi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒÙ¾Ø§Ø³Ø§Ú˜Ø§ÙØ±Ø§', 6, '-', 'Ù…Ø·Ù„Ø¨ÛŒ', '', '', '', '', '', ''),
('mezon_maysa', '37627573', '09157734066', NULL, '37627573', '', 'Ù…Ø²ÙˆÙ† Ù…Ø§ÛŒØ³Ø§', '../uploads/3f793aa41c2cffdfa165929df0cffde8maysa.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 11 Ùˆ 13ØŒØ³Ø§Ø®ØªÙ…Ø§Ù† Ø³Ø§ÛŒØ±ÙˆØ³ØŒÙˆØ§Ø­Ø¯ 402', 6, '-', 'Ù‡Ù†Ø±ÙˆØ±', '', '', '', '', '', ''),
('mezon_mehrsa', '38644232', '09155237413', NULL, '38644232', '', 'Ù…Ø²ÙˆÙ† Ø¹Ø±ÙˆØ³ Ù…Ù‡Ø±Ø³Ø§', '../uploads/7dbbfdce309b5fce23b4ed71b99ee720mehrsa.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ Ø¨ÛŒÙ† Ø­Ø§ÙØ¸ Ùˆ Ù‡ÙØª ØªÛŒØ± Ù¾Ù„Ø§Ú© 708', 6, '-', 'Ø§Ø³Ú©Ù†Ø¯Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('mezon_melina', '37126394', '09397392151', NULL, '37126394', '', 'Ù…Ø²ÙˆÙ† Ù…Ù„ÛŒÙ†Ø§', '../uploads/ead0db8675989dd4f29db196cbb9154amelina.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù‚Ø±Ù†ÛŒØŒØ¨ÛŒÙ† Ù‚Ø±Ù†ÛŒ 21 Ùˆ 23ØŒÙ…Ø¬Ø¯ØŒØ·Ø¨Ù‚Ù‡ 2+ØŒÙ¾Ù„Ø§Ú© 244', 6, '-', 'Ø§ÛŒÙˆØ¨ÛŒ', '', '', '', '', '', ''),
('mezon_minayi', '09153095883', '09153095883', NULL, '-', '', 'Ù…Ø²ÙˆÙ† Ø¹Ø±ÙˆØ³ Ù…ÛŒÙ†Ø§ÛŒÛŒ', '../uploads/82ba5855595f962ad48f00bf4e26d73cminayi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 14ØŒÚ©ÙˆÚ†Ù‡ Ø§ÙˆÙ„ Ø³Ù…Øª Ø±Ø§Ø³ØªØŒÙ¾Ù„Ø§Ú© 5', 6, '-', 'Ù…ÛŒÙ†Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('mezon_nazkhatoon', '38839500', '09153033144', NULL, '38839500', '', 'Ù…Ø²ÙˆÙ† Ù†Ø§Ø²Ø®Ø§ØªÙˆÙ†', '../uploads/1f7c746a05041eda10aae3ad09f60eabnazkhatun.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 11/1', 6, '-', 'ØµØ§Ø¯Ù‚ÛŒ', '', '', '', '', '', ''),
('mezon_negin', '38335170', '09155052015', NULL, '38335170', '', 'Ù…Ø²ÙˆÙ† Ø¹Ø±ÙˆØ³ Ù†Ú¯ÛŒÙ†', '../uploads/5aa4e6807d18295ce4abd4a5bd3c6fd6negin.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜ØŒØ·Ø¨Ù‚Ù‡ 1+ØŒÙ¾Ù„Ø§Ú© 314', 6, '-', 'Ø´Ú©Ø±Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('mezon_niyayesh', '38813141', '09153133277', NULL, '38813141', '', 'Ù…Ø²ÙˆÙ† Ù†ÛŒØ§ÛŒØ´', '../uploads/368cbf1e0079237b1dba9f1848fc2440niyayesh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ ØŒØ¨ÛŒÙ† ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 18 Ùˆ 20ØŒØ¬Ù†Ø¨ Ø¨Ø§Ù†Ú© ØµØ§Ø¯Ø±Ø§Øª', 6, 'Ù„ÛŒÙ„Ø§', 'Ø³ØªÙˆØ¯Ù‡', '', '', '', '', '', ''),
('mezon_noora', '38481404', '09152011995', NULL, '38481404', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø¹Ø±ÙˆØ³ Ù†ÙˆØ±Ø§', '../uploads/b0bec93260d6615d92a983512dc07de0noora.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒØŒØ¨Ø±Ø¬ Ø³Ù„Ù…Ø§Ù†ØŒØ·Ø¨Ù‚Ù‡ 5ØŒÙˆØ§Ø­Ø¯14', 6, '-', 'Ù‚Ù…Ø±ÛŒ', '', '', '', '', '', ''),
('mezon_papion', '09354232982', '09354232982', NULL, '-', '', 'Ù…Ø²ÙˆÙ† Ù¾Ø§Ù¾ÛŒÙˆÙ†', '../uploads/a81068a107db6e3f6fbfefb7614a02e3papion.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ù†ØªÙ‡Ø§ÛŒ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 35ØŒØ³Ù…Øª Ú†Ù¾', 6, '-', 'Ù†Ø§ØµØ±ÛŒ-Ø­Ø³ÛŒÙ† Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('mezon_paripoosh', '38421810', '09151020417', NULL, '38421810', '', 'Ù…Ø²ÙˆÙ† Ù¾Ø±ÛŒ Ù¾ÙˆØ´', '../uploads/20dbf754d31d95ff1df752056016d450paripoosh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ³Ø¬Ø§Ø¯ØŒÙ…ÛŒÙ„Ø§Ø¯ 20Ù¾Ù„Ø§Ú© 3', 6, '-', 'Ù‚Ø§Ø³Ù…ÛŒ', '', '', '', '', '', ''),
('mezon_rahmani', '38429175', '09153196709', NULL, '38429175', '', 'Ù…Ø²ÙˆÙ† Ø³Ø±ÙˆØ± Ø±Ø­Ù…Ø§Ù†ÛŒ', '../uploads/be53c16b47df47da73c4a2a181619199rahmani.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÚ©ÙˆÙ‡Ø³Ù†Ú¯ÛŒ 17ØŒØ¨Ø¹Ø¯ Ø§Ø² Ù†Ú¯Ø§Ø±Ø®Ø§Ù†Ù‡ Ø±Ø¶ÙˆØ§Ù†ØŒÙ¾Ù„Ø§Ú© 20', 6, '-', 'Ø±Ø­Ù…Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('mezon_rana', '38400932', '09153197933', NULL, '38400932', '', 'Ù…Ø²ÙˆÙ† Ø±Ø¹Ù†Ø§', '../uploads/802b5123d6c1aeb4d234ced29411eeb9rana.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ØŒØ¨ÛŒÙ† Ø§Ø¨ÙˆØ°Ø±ØºÙØ§Ø±ÛŒ 2 Ùˆ 4 ', 6, '-', 'Ø±Ø¹Ù†Ø§', '', '', '', '', '', ''),
('mezon_ronika', '38818000', '09158042755', NULL, '38818000', '', 'Ù…Ø²ÙˆÙ† Ø±ÙˆÙ†ÛŒÚ©Ø§', '../uploads/2a4c90c9237b1c133acad362737e4662ronika.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 16 Ùˆ 18', 6, '-', '-', '', '', '', '', '', ''),
('mezon_roshan', '38940491', '09155048681', NULL, '38940491', '', 'Ù…Ø²ÙˆÙ† Ø±ÙˆØ´Ø§Ù†', '../uploads/61ad47b4ce219d8f3863fa2a09b8a67froshan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø¯Ø§Ù†Ø´Ø¬Ùˆ 14', 6, '-', '-', '', '', '', '', '', ''),
('mezon_sabet', '38470251', '09153147889', NULL, '38470251', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø¹Ø±ÙˆØ³ Ø«Ø§Ø¨Øª', '../uploads/45f2596798d0f220ffbd0b2b5a4ee7desabet.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ³Ù„Ù…Ø§Ù† ÙØ§Ø±Ø³ÛŒ 1ØŒÙ¾Ù„Ø§Ú© 125', 6, '-', 'Ø«Ø§Ø¨Øª', '', '', '', '', '', ''),
('mezon_shadoone', '38453954', '09158067635', NULL, '38453954', '', 'Ù…Ø²ÙˆÙ† Ø´Ø§Ø¯ÙˆÙ†Ù‡', '../uploads/702946e76618cbc36dd64e624a5a0571shadoone.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ø¨ÛŒÙ† Ø§Ø¨ÙˆØ°Ø± 2 Ùˆ 4', 6, '-', 'ØºÙ„Ø§Ù…ÛŒ', '', '', '', '', '', ''),
('mezon_shadrooz', '09122384067', '09122384067', NULL, '-', '', 'Ù…Ø²ÙˆÙ† Ø´Ø§Ø¯Ø±ÙˆØ²', '../uploads/d5c4b84701d856ed0dc3a433feeddbebshadrooz.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ…Ø¬ØªÙ…Ø¹ Ú©ÛŒØ§Ù† Ø³Ù†ØªØ± 2ØŒ Ø·Ø¨Ù‚Ù‡ Ø¯ÙˆÙ… ÙˆØ§Ø­Ø¯ 207', 6, 'Ù†Ø§Ø²Ù†ÛŒÙ†', 'Ù‚Ù„ÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('mezon_shano', '38815527', '09152611616', NULL, '38815527', '', 'Ù…Ø²ÙˆÙ† Ø´Ø§Ù†Ùˆ', '../uploads/361a0eb7ceaeaeb1098d20096e697075Shano-Logo-2.jpg', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ 11 - Ù¾Ù„Ø§Ú© 27', 6, 'Ù…Ù‡Ø³Ø§', 'Ø§Ø­Ù…Ø¯ÛŒ', '', '', '', '', '', ''),
('mezon_sogol', '09392910269', '09392910269', NULL, '-', '', 'Ù…Ø²ÙˆÙ† Ø³ÙˆÚ¯Ù„', '../uploads/6cdb6ee145a4dd79546c70d1bf929c17sogol.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù¾ÛŒØ±ÙˆØ²ÛŒØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø±Ø§ÙØ±Ø§Ø²Ø§Ù†ØŒØ³Ø±Ø§ÙØ±Ø§Ø²39', 6, '-', 'ØªÛŒÙ…ÙˆØ±ÛŒ-Ø®Ø±Ø³Ù†Ø¯', '', '', '', '', '', ''),
('mezon_soniya', '32221740', '09151112702', NULL, '32221740', '', 'Ù…Ø²ÙˆÙ† Ø³ÙˆÙ†ÛŒØ§', '../uploads/d9addde0385554dd3431e5ef6656040esoniya.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø®Ø³Ø±ÙˆÛŒØŒÙ¾Ø§Ø³Ø§Ú˜ Ù†ØµØ±Øª Ù¾Ù„Ø§Ú© 110', 6, '-', 'Ø²Ù‡ÙˆØ±Ø´ÙˆØ®Ø§Ù†', '', '', '', '', '', ''),
('mezon_sozantalayi', '37674717', '09159073090', NULL, '37674717', '', 'Ù…Ø²ÙˆÙ† Ø³ÙˆØ²Ù† Ø·Ù„Ø§ÛŒÛŒ', '../uploads/d36efad7b08cbb899c55f6d8e6a642e9suzantalayi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒÚ†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ù‡Ø¯ÛŒØŒÙ†Ø¨Ø´ Ø¨Ù‡Ø§Ø±Ø³ØªØ§Ù†ØŒÙ¾Ù„Ø§Ú© 392', 6, '-', 'Ø±Ø§ÙØªÛŒ', '', '', '', '', '', ''),
('mezon_sperlos', '38846341', '09151034403', NULL, '38846341', '', 'Ù…Ø²ÙˆÙ† Ø§Ø³Ù¾Ø±Ù„ÙˆØ³', '', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 10 Ùˆ 12 Ø·Ø¨Ù‚Ù‡ 3', 6, '-', 'Ø­ÛŒØ¯Ø±ÛŒ', '', '', '', '', '', ''),
('mezon_spoza', '051-38689236', '09307799804', NULL, '051-38689236', '', 'Ù…Ø²ÙˆÙ† Ø§Ø³Ù¾ÙˆØ²Ø§', '../uploads/777b40b241bb5ed780b791ba74d56d93spoza.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ Ù‡ØªÙ„ Ù¾Ø§Ø±Ø³ Ø·Ø¨Ù‚Ù‡ Ù‡Ù…Ú©Ù Ù„Ø§Ø¨ÛŒ', 6, 'Ø­Ø³Ù†', 'Ø¹Ø´Ù‚ÛŒ', '', '', '', '', '', ''),
('mezon_tootia', '09151205989', '09151205989', NULL, '-', '', 'Ù…Ø²ÙˆÙ† ØªÙˆØªÛŒØ§', '../uploads/fa51f5e8c640c73bceb5cc39ee072103tootia.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ³ÛŒÙ…ØªØ±ÛŒ Ø·Ù„Ø§Ø¨ ØŒÙ†Ø¨Ø´ Ù…ÙØªØ­ ÛŒÚ©', 6, '-', 'Ù…Ù‚Ø¯Ù…', '', '', '', '', '', ''),
('mezon_toranj', '38644017', '09376915885', NULL, '38644017', '', 'Ù…Ø²ÙˆÙ† ØªØ±Ù†Ø¬', '../uploads/8d7cfabcc411fee897d240e7d8c7d238torang.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 22 Ùˆ Ù¾Ù„ Ù‡ÙØª ØªÛŒØ±', 6, '-', 'Ø¸Ø±ÛŒÙÛŒØ§Ù†', '', '', '', '', '', ''),
('mezon_vaziri', '38649492', '09338242414', NULL, '38649492', '', 'Ù…Ø²ÙˆÙ† Ø¹Ø±ÙˆØ³ ÙˆØ²ÛŒØ±ÛŒ', '../uploads/b68931e582aaefadff3ef1194b848fa9vaziri.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 20', 6, '-', 'ÙˆØ²ÛŒØ±ÛŒ', '', '', '', '', '', ''),
('mezon_yasmina', '36041453', '09151586191', NULL, '36041453', '', 'Ù…Ø²ÙˆÙ† ÛŒØ§Ø³ Ù…ÛŒÙ†Ø§', '../uploads/be3f8f1f3f8ea2246623dee9e77ac60dyasmina.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ…Ø¹Ù„Ù… 21ØŒÙ…Ø¹Ø§Ø¯ 37ØŒÙ¾Ù„Ø§Ú© 199ØŒØ·Ø¨Ù‚Ù‡ Ø§ÙˆÙ„', 6, 'Ù…Ù‡ÛŒÙ†', 'ÙˆØ«ÙˆÙ‚ÛŒ', '', '', '', '', '', ''),
('mezon_zanbagh', '37660274', '09155510297', NULL, '37660274', '', 'Ù…Ø²ÙˆÙ† Ø²Ù†Ø¨Ù‚', '../uploads/8bcb8a8219a2f40b0c59ee8bdcb90103zanbagh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒØŒÙ†Ø¨Ø´ ÙØ±Ø¯ÙˆØ³ÛŒ 16ØŒÙ¾Ù„Ø§Ú© 366', 6, '-', 'Ø´Ø±Ù‚ÛŒ', '', '', '', '', '', ''),
('mezon_zheek', '09356159159', '09356159159', NULL, '-', '', 'Ù…Ø²ÙˆÙ† Ú˜ÛŒÚ©', '../uploads/166dff555faf892023c30366ca901d57zheek.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 18 Ù¾Ù„Ø§Ú© 286', 6, '-', 'ÙÛŒØ¶', '', '', '', '', '', ''),
('mezon_zhoan', '38849294', '09386922552', NULL, '38849294', '', 'Ù…Ø²ÙˆÙ† Ú˜ÙˆØ§Ù†', '../uploads/713e4c4b74cca1f70f854e4595b4584czhoan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 41ØŒØªØ§Ø¨Ø§Ù† 10ØŒÙ†Ø¨Ø´ Ú©ÙˆÚ†Ù‡ Ø§ÙˆÙ„ Ø³Ù…Øª Ú†Ù¾', 6, '-', 'Ù…ÙˆØ³ÙˆÛŒ', '', '', '', '', '', ''),
('mezon_zohre', '38492112', '09156489566', NULL, '38492112', '', 'Ù…Ø²ÙˆÙ† Ø²Ù‡Ø±Ù‡', '../uploads/9d788ce23cabb294f7a3aa569c840cddzohre.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ ØŒÙ†Ø¨Ø´ Ø§Ø¨Ù† Ø³ÛŒÙ†Ø§ 9', 6, '-', 'Ø­Ø³Ù† Ù†ÛŒØ§', '', '', '', '', '', ''),
('miaad', '38443044', '-', NULL, '38443044', '', 'Ø®Ø¯Ù…Ø§Øª Ù…Ø³Ø§ÙØ±ØªÛŒ Ù…ÛŒØ¹Ø§Ø¯', '../uploads/b22eafe870ea0021cfbe8e6d143cbdd7miad.jpg', '', 'Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ Ù…Ù‚Ø§Ø¨Ù„ Ø¨Ø±Ø¬ Ø³Ù„Ù…Ø§Ù†', 26, '-', '-', '', '', '', '', '', ''),
('mikelanzh', '38426359', '09151046787', NULL, '38426359', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ù…ÛŒÚ©Ù„Ø§Ù†Ú˜', '../uploads/7d3ff8259ad1198f3ee6136366cadb09mikelanzh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ø³Ù†Ø§Ø¨Ø§Ø¯ 40', 16, '-', 'Ø³Ù¾Ù‡Ø±ÛŒ', '', '', '', '', '', ''),
('mobl_alali', '37266625', '09128401356', NULL, '37266625', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† Ø¢Ù„ Ø¹Ù„ÛŒ', '../uploads/9eb09b39578a7b72c08f0fd1569ceafeale-ali.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 36 Ùˆ 38', 11, '-', 'Ø¨ÛŒØ§Øª', '', '', '', '', '', ''),
('mobl_alizade', '38788865', '09151347530', NULL, '38788865', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† Ù†Ø§ØµØ± Ø¹Ù„ÛŒØ²Ø§Ø¯Ù‡', '../uploads/bed39460cac4d00625a050f6ecc7901cnaser-alizade.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù¾ÛŒØ±ÙˆØ²ÛŒ ØŒØ¨ÛŒÙ† Ø±Ø¶ÙˆÛŒ 6 Ùˆ 8', 11, 'Ù†Ø§ØµØ±', 'Ø¹Ù„ÛŒØ²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('mobl_armani', '38423480', '09151080129', NULL, '38423480', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† Ø§Ø±Ù…Ø§Ù†ÛŒ', '../uploads/687ad6f8d1d573cc3f4970364d6216f0armani.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ³Ù†Ø§Ø¨Ø§Ø¯ ØŒÙ†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ', 11, '-', 'Ø¢Ø´ÙØªÙ‡', '', '', '', '', '', ''),
('mobl_ayan', '37687904', '09120318454', NULL, '37687904', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† Ø§Ø¹ÛŒØ§Ù†', '../uploads/25290289bf82526c783c3dd73f125eebayan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙÙ„Ø³Ø·ÛŒÙ† 18ØŒØ®ÛŒØ§Ù… 11ØŒÙ¾Ù„Ø§Ú© 78', 11, '-', '-', '', '', '', '', '', ''),
('mobl_daan', '38467556', '-', NULL, '38467556', '', 'Ù…Ø¨Ù„ Ø¯ÙˆØ§Ù†', '', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ø¨ÛŒÙ† 10 Ùˆ 12', 11, '-', 'Ø®Ø¯Ø§ÙˆÙ†Ø¯ÛŒ', '', '', '', '', '', ''),
('mobl_daneshvar', '37671073', '09151154865', NULL, '37671073', '', 'Ù…Ø¨Ù„ Ù‚Ø´Ù†Ú¯ Ø¯Ø§Ù†Ø´ÙˆØ±', '../uploads/198a014445bcee3fb9b7cef97f01e374daneshvar.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù…Ù„Ú© Ø¢Ø¨Ø§Ø¯ 5', 11, '-', 'Ø¯Ø§Ù†Ø´ÙˆØ±', '', '', '', '', '', ''),
('mobl_dekozhen', '38436925', '-', NULL, '38436925', '', 'Ù…Ø¨Ù„ Ø¯Ú©ÙˆÚ˜Ù†', '../uploads/3a17434445f258f5cb396a86de9b9495decozhen.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 42', 11, '-', '-', '', '', '', '', '', ''),
('mobl_dsign', '37295382', '09151107057', NULL, '37295382', '', 'Ù…Ø¨Ù„ Ø¯ÛŒØ²Ø§ÛŒÙ†', '../uploads/97869416106a4d56437831f8d6efba85designe.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 23 Ùˆ 25', 11, '-', 'Ø¬Ù„Ø§Ù„ÛŒØ§Ù†', '', '', '', '', '', ''),
('mobl_eram', '38431110', '-', NULL, '38431110', '', 'Ú¯Ø±ÙˆÙ‡ Ù…Ø¨Ù„Ù…Ø§Ù† Ø§Ø±Ù…', '../uploads/6f28b333ac52a349bdf2b2b2e80c19eeeram.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 43 Ùˆ 45', 11, '-', '-', '', '', '', '', '', ''),
('mobl_erfan', '09153047984', '09153047984', NULL, '-', '', 'Ù…Ø¨Ù„ Ø¹Ø±ÙØ§Ù†', '../uploads/1db7b5f1686d27da5cdc7d5db5ad4ec3erfan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 42 Ùˆ 44', 11, '-', 'ØµØ§Ø¯Ù‚ÛŒ', '', '', '', '', '', ''),
('mobl_estil_talaye', '38458459', '-', NULL, '38458459', '', 'Ù…Ø¨Ù„ Ø§Ø³ØªÛŒÙ„ Ø·Ù„Ø§ÛŒÙ‡', '../uploads/4502edfdb301582dd36c5d1cca855284styl-talaye.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØªÙ‚Ø§Ø·Ø¹ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² Ø¨Ù‡ Ø·Ø±Ù Ù¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯', 11, '-', 'Ø¸Ù‡ÙˆØ±ÛŒØ§Ù†', '', '', '', '', '', ''),
('mobl_gole_sorkh', '38449921', '-', NULL, '38449921', '', 'Ù…Ø¨Ù„ Ú¯Ù„ Ø³Ø±Ø®', '../uploads/375145af06bc738f969fc6eba0500a52gole-sorkh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 54', 11, '-', 'Ø±ÙˆØºÙ†ÛŒ ÛŒØ²Ø¯ÛŒ', '', '', '', '', '', ''),
('mobl_hedayati', '09155077870', '09155077870', NULL, '-', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† Ù‡Ø¯Ø§ÛŒØªÛŒ', '../uploads/b9c8ee6fe3619b2b3afc7bb3913fee80hedayati.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ù… Ø¬Ù†ÙˆØ¨ÛŒ Ù†Ø±Ø³ÛŒØ¯Ù‡ Ø¨Ù‡ Ù†Ø³ØªØ±Ù†', 11, '-', 'Ù‡Ø¯Ø§ÛŒØªÛŒ', '', '', '', '', '', ''),
('mobl_jazire', '37260027', '09355166000', NULL, '37260027', '', 'Ù…Ø¨Ù„ Ø¬Ø²ÛŒØ±Ù‡', '../uploads/30ff4504327cb122d85ddb7dc7e15a85jazire.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 36', 11, '-', 'ØºÙ„Ø§Ù…ÛŒ', '', '', '', '', '', ''),
('mobl_khalije_fars', '09153098275', '09153098275', NULL, '-', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† Ø®Ù„ÛŒØ¬ ÙØ§Ø±Ø³', '../uploads/1eb775edb966cad51223fb7a23092100khalije-fars.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 29 Ùˆ 31', 11, '-', 'Ø§ÙØ®Ù…ÛŒ', '', '', '', '', '', ''),
('mobl_kimia', '38439784', '-', NULL, '38439784', '', 'Ù…Ø¨Ù„ Ú©ÛŒÙ…ÛŒØ§', '../uploads/c8d97b20a89b2315c8236f88b78d3292kimia.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 46 Ùˆ 48', 11, '-', '-', '', '', '', '', '', ''),
('mobl_koper', '37139912', '09153048024', NULL, '37139912', '', 'Ù…Ø¨Ù„ Ú©ÙˆÙ¾Ø±', '../uploads/001264c5e662e17c95781f876c04f1fckoper.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 42', 11, '-', 'Ø·Ù„Ø¹ØªÛŒ', '', '', '', '', '', ''),
('mobl_larj', '37130931', '09128304055', NULL, '37130931', '', 'Ù…Ø¨Ù„ Ù„Ø§Ø±Ø¬', '../uploads/2801e2cf6a91d7a204b4cbb997a44d7alarge.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 34', 11, '-', 'Ù†Ú©ÙˆØ¦ÛŒ', '', '', '', '', '', ''),
('mobl_mahan', '37230230', '09155219688', NULL, '37230230', '', 'Ù…Ø¨Ù„ Ù…Ø§Ù‡Ø§Ù†', '../uploads/43509d13aa17cbf1b35da70c58745b42mahan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 25 Ùˆ 27', 11, '-', 'Ø´Ú©Ø±Ú¯Ø²Ø§Ø±', '', '', '', '', '', ''),
('mobl_mahrad', '37134127', '-', NULL, '37134127', '', 'Ù…Ø¨Ù„ Ù…Ø§Ù‡Ø±Ø§Ø¯', '../uploads/15d6dbac59b140c30240a08d2966d38amahrad.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 25', 11, '-', '-', '', '', '', '', '', ''),
('mobl_man', '38404161', '-', NULL, '38404161', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† Ù…Ù†', '../uploads/bf3ba03e772ad6f3b07d936a973aacc7man.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ù†ØªÙ‡Ø§ÛŒ Ø³Ù†Ø§Ø¨Ø§Ø¯ØŒØ±Ùˆ Ø¨Ù‡ Ø±ÙˆÛŒ Ù…Ø±Ú©Ø² Ø¨Ù‡Ø¯Ø§Ø´Øª', 11, '-', '-', '', '', '', '', '', ''),
('mobl_mojalal', '38406093', '-', NULL, '38406093', '', 'Ù…Ø¨Ù„ Ù…Ø¬Ù„Ù„', '../uploads/75aa2b9c5fcf0e4457dd46d636c591c3mojalal.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 48 Ùˆ 50', 11, '-', 'ØµØ±Ø§ÙÛŒØ§Ù†', '', '', '', '', '', ''),
('mobl_percian', '37285233', '09159217868', NULL, '37285233', '', 'Ù…Ø¨Ù„ Ù¾Ø±Ø´ÛŒÙ†', '../uploads/51b85d2046b2e34460920336bbe2594dpersian.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 23', 11, '-', 'Ø³Ø§Ù„Ø§Ø±ÛŒ', '', '', '', '', '', ''),
('mobl_piroz', '38424647', '-', NULL, '38424647', '', 'Ù…Ø¨Ù„ Ù¾ÛŒØ±ÙˆØ²', '../uploads/51b9d50b878876790917692df3d4447fpiroz.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 52 Ùˆ 54 Ù¾Ù„Ø§Ú© 680', 11, '-', '-', '', '', '', '', '', ''),
('mobl_rahat_neshin', '37275575', '09155143698', NULL, '37275575', '', 'Ù…Ø¨Ù„ Ø±Ø§Ø­Øª Ù†Ø´ÛŒÙ†', '../uploads/496d7fa56f71a3cfbc08ba08a4ad5395rahat-neshin.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 33 Ùˆ 35', 11, '-', 'Ú¯Ù„Ù…Ú©Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('mobl_saran', '09027660892', '09027660892', NULL, '-', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù…Ø¨Ù„ Ø³Ø±Ø§Ù†', '../uploads/5ac42728903438d46bde101e29a5e4a3saran.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù…Ù„Ú© Ø¢Ø¨Ø§Ø¯ØŒÙ†Ø¨Ø´ Ø¨Ø±Ú¯Ù…Ù‡Ø± ', 11, '-', '-', '', '', '', '', '', ''),
('mobl_toranj', '38436018', '-', NULL, '38436018', '', 'Ù…Ø¨Ù„ ØªØ±Ù†Ø¬', '../uploads/ac41053a2876c1f3c0731b462a8aac33toranj.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 55', 11, '-', '-', '', '', '', '', '', ''),
('mobl_yadbood', '37280663', '09155162008', NULL, '37280663', '', 'Ù…Ø¨Ù„ ÛŒØ§Ø¯Ø¨ÙˆØ¯', '../uploads/3cc45cdeff085969d52b48edcfe2356dyadbod.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 31', 11, '-', 'Ú©Ø§Ø¸Ù…ÛŒØ§Ù†', '', '', '', '', '', ''),
('mobl_zibaye_shahr', '38404457', '-', NULL, '38404457', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† Ø²ÛŒØ¨Ø§ÛŒ Ø´Ù‡Ø±', '../uploads/83f6244caaadae56708eee4090222ba9zibae-shahr.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø±Ø³ÛŒØ¯Ù‡ Ø¨Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ 54', 11, '-', '-', '', '', '', '', '', ''),
('moble_emarat', '38450132', '09129467072', NULL, '051-38450132', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† Ø¹Ù…Ø§Ø±Øª', '../uploads/7f4bd9c4965fcb38000d4e3229547b41emarat.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ø³Ù†Ø§Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 54', 11, 'Ù…Ø­Ù…Ø¯', 'Ø´Ú©Ø±Ú¯Ø²Ø§Ø±', '', '', '', '', '', ''),
('moble_vala', '09155081726', '09155081726', NULL, '-', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† ÙˆØ§Ù„Ø§', '', '', 'Ù…Ø´Ù‡Ø¯ ØŒØ¬Ø§Ø¯Ù‡ Ø´Ø§Ù†Ø¯ÛŒØ²ØŒØ¨Ø§Ø²Ø§Ø± Ù…Ø¨Ù„ØŒØ¨ÛŒÙ† ÙˆÛŒØ±Ø§Ù†ÛŒ 3 Ùˆ 5', 11, 'Ù…Ù‡Ø¯ÛŒ', 'ØªØ±Ú©Ø§Ø´ÙˆÙ†Ø¯', '', '', '', '', '', ''),
('moble_venus', '35593241', '09152480032', NULL, '051-35593241', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† ÙˆÙ†ÙˆØ³', '../uploads/37efe8691d8f4e82e5cc91125233b291venus.jpg', '', 'Ú©ÛŒÙ„ÙˆÙ…ØªØ± ÛŒÚ© Ø¬Ø§Ø¯Ù‡ Ø´Ø§Ù†Ø¯ÛŒØ²', 11, '-', 'Ù…ÙˆÙ†Ø³ÛŒ', '', '', '', '', '', ''),
('mobleman_aghayenajar', '123456', '09105018971', NULL, '051-37265414', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† Ø¢Ù‚Ø§ÛŒ Ù†Ø¬Ø§Ø±', '../uploads/cf1ca2f8865ea3b92e5fdd8a66d1ebf4nagar.png', '', 'Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² Ø¨ÛŒÙ† Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² 39 Ùˆ41', 11, 'Ù†ÙˆÛŒØ¯', 'Ø´Ø±ÛŒÙÛŒØ§Ù†', '', '', '', '', '', ''),
('mobleman_refah', '38410256', '-', NULL, '38410256', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù…Ø¨Ù„Ù…Ø§Ù† Ø±ÙØ§Ù‡', '../uploads/dbe8e2742d38ee28d696ee83fa6aa307refah.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 40', 11, '-', '-', '', '', '', '', '', ''),
('moblino', '9154949497', '09157575752', NULL, '-', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† Ù…Ø¨Ù„ÛŒÙ†Ùˆ', '../uploads/0762552315d9417ba91944c27021a450moblino.jpg', '', 'Ø¬Ø§Ø¯Ù‡ Ø´Ø§Ù†Ø¯ÛŒØ²ØŒÙ†Ø¨Ø´ ÙˆÛŒØ±Ø§Ù†ÛŒ 5', 11, 'Ø¬ÙˆØ§Ø¯', 'Ø±ÙØªØ§Ø±ÛŒ', '', '', '', '', '', ''),
('mochin_rahil', '09157019776', '09157019776', NULL, '-', '', 'Ù…ÙˆÚ†ÛŒÙ† Ø±Ø­ÛŒÙ„', '../uploads/25b819e4de0cc2d6b5e24bbd5751fe48rahil.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ…Ø¹Ù„Ù… 14ØŒØ´Ù‡ÛŒØ¯ Ù‚Ø§Ø³Ù…ÛŒ 22', 17, '-', 'Ø´Ø±ÛŒØ¹Øª', '', '', '', '', '', ''),
('mode_roz', '36062747', '09157993209', NULL, '36062747', '', 'Ø³Øª Ù…Ø±Ø¯Ø§Ù†Ù‡ Ù…Ø¯ Ø±ÙˆØ²', '../uploads/bd1d436fc6f865a4a1633b9803a3cf7emode-roz.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÚ†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…ÛŒÙ„Ø§Ø¯ Ù¾Ù„Ø§Ú© 105', 16, '-', 'Ø·Ø§Ù‡Ø±ÛŒ', '', '', '', '', '', ''),
('moj_abi', '38444044', '-', NULL, '38444044', '', 'Ù…ÙˆØ¬ Ø¢Ø¨ÛŒ', '../uploads/8bc6405591790cb38248ab30091608c4borj-abi.jpg', '', 'Ù…Ø´Ù‡Ø¯ - Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ - Ø¨Ù„ÙˆØ§Ø± Ø§Ø¨ÙˆØ°Ø± ØºÙØ§Ø±ÛŒ - Ø¨ÛŒÙ† Ø§Ø¨ÙˆØ°Ø± Û±Û° Ùˆ Û±Û² ', 26, '-', '-', '', '', '', '', '', ''),
('moje_gol', '38829057', '09151103372', NULL, '38829057', '', 'Ù…ÙˆØ¬ Ú¯Ù„', '../uploads/c68a6514915d3f8ffe6779a3ba239bc1moje-gol.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 10 Ùˆ 12', 20, '-', 'Ù†ÙˆØ±ÙˆØ²Ø¨ÛŒÚ¯ÛŒ', '', '', '', '', '', ''),
('mr_cut', '09016153900', '09016153900', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ù…Ø³ØªØ± Ú©Ø§Øª', '../uploads/5d2697c427a939cd3b2cdd134280b77cmr-cut.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 28', 17, '-', 'Ù¾ÙˆØ±ÛŒØ§', '', '', '', '', '', ''),
('my_home', '37602121', '-', NULL, '37602121', '', 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨ Ù…Ø§ÛŒ Ù‡ÙˆÙ…', '../uploads/0d8b7b3437f63487465b75b41d404418my-home.jpg', '', 'Ù†Ø¨Ø´ Ø®ÛŒØ§Ù… 11', 37, '-', '-', '', '', '', '', '', ''),
('new_face', '09151199985', '09151199985', NULL, '-', '', 'Ú¯Ø±ÛŒÙ… Ø¯Ø§Ù…Ø§Ø¯ Ù†ÛŒÙˆÙÛŒØ³', '../uploads/0e84da96d28acf6d85836ac675c6f043new-face.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 6ØŒØ¨Ø±Ø¬ Ø¢Ø¨Ø§Ù†ØŒØ·Ø¨Ù‚Ù‡ 3 ØŒÙˆØ§Ø­Ø¯ 5', 17, 'ÙØ±ÛŒØ¯', 'Ø±ÙˆØ­Ø¨Ø®Ø´', '', '', '', '', '', ''),
('nik_loster', '37641603', '-', NULL, '37641603', '', 'Ù†ÛŒÚ© Ù„ÙˆØ³ØªØ±', '../uploads/6a67b61d6f70361f4afe05c8b1d70cednik-loster.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ…ÛŒØ¯Ø§Ù† Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ Ø¨Ù‡ Ø·Ø±Ù Ø³Ø¬Ø§Ø¯ Ø¨ÛŒÙ† Ø¯Ø³ØªØºÛŒØ¨ 7 Ùˆ 9', 34, '-', 'Ù†ÛŒÚ© ÙØ±Ø¬Ø§Ù…', '', '', '', '', '', ''),
('nika_noor', '38432725', '-', NULL, '38432725', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ù†ÛŒÚ©Ø§Ù†ÙˆØ±', '../uploads/1a5281fc98ef097a6c99f5badc6ff2d4nika-nor.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 42 Ùˆ45', 34, '-', 'Ù†ÛŒÚ© ÙØ±Ø¬Ø§Ù…', '', '', '', '', '', ''),
('nikadel', '37662646', '09152099930', NULL, '37662646', '', 'Ù†ÛŒÚ©Ø§Ø¯Ù„', '../uploads/4460425144cc730be2e7ff1318a57942nikadel.jpg', '', ' Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ Ø¨ÛŒÙ† 20 Ùˆ 22 Ø´Ù…Ø§Ø±Ù‡ 432', 1, 'Ø³Ù…ÛŒÙ‡ ', 'Ø§Ø³Ø¯ÛŒ', '', '', '', '', '', ''),
('nikafruz', '36065431', '09154042253', NULL, '051-36065431', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù†ÛŒÚ© Ø§ÙØ±ÙˆØ²', '../uploads/c65aaf33a20b5167c181ef8487ed4f24nikafruz.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù… Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 24 Ùˆ 26 ', 34, 'Ø¹Ø¸ÛŒÙ…', 'ØºÙ„Ø§Ù…ÛŒ', '', '', '', '', '', ''),
('noor_taban', '38453172', '-', NULL, '38453172', '', 'Ù†ÙˆØ± ØªØ§Ø¨Ø§Ù†', '../uploads/c5ebc1dea5773bf45ad9d5506c286e0cnor-taban.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø±Ø³ÛŒØ¯Ù‡ Ø¨Ù‡ Ø³Ù„Ù…Ø§Ù† 4', 34, '-', '-', '', '', '', '', '', ''),
('otomobil_kerayeh_siros', '38935363', '09153043127', NULL, '38935363', '', 'Ø§ØªÙˆÙ…Ø¨ÛŒÙ„ Ú©Ø±Ø§ÛŒÙ‡ Ø³ÛŒØ±ÙˆØ³', '../uploads/01070050b618201f9e816c827f9f1445siros.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² 18', 22, '-', 'Ø³ÛŒØ±ÙˆØ³ÛŒ', '', '', '', '', '', ''),
('p_shayer', '37620410', '-', NULL, '37620410', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø´Ø§ÛŒØ±', '../uploads/a5539489ece8150f9b7d831bb1d72f12shayer.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒÙ†Ø¨Ø´ Ù¾Ø§Ù…Ú†Ø§Ù„ ØŒÙ¾Ù„Ø§Ú© 308', 16, '-', 'Ø®Ø±Ø¯ÛŒØ§Ù†', '', '', '', '', '', ''),
('p-artin', '38442375', '09151580128', NULL, '38442375', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¢Ø±ØªÛŒÙ†', '../uploads/417579534634d7fe10798af841710e2fartin.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ø³Ù†Ø§Ø¨Ø§Ø¯ 40', 16, '-', 'Ø·Ø§Ù„Ø¨ÛŒ', '', '', '', '', '', ''),
('p-berands', '37057833', '-', NULL, '37057833', '', 'Ù¾ÙˆØ´Ø§Ú© Ø¨Ø±Ù†Ø¯Ø³', '../uploads/ea5d02beae98eccff512aa36d68262a3brands.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ù…ÛŒØ¯Ø§Ù† Ø¬Ø§Ù†Ø¨Ø§Ø² Ù…Ø¬ØªÙ…Ø¹ Ù¾Ø§Ú˜', 16, '-', '-', '', '', '', '', '', ''),
('p-didar', '38411107', '-', NULL, '38411107', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø¯ÛŒØ¯Ø§Ø±', '../uploads/1643f7285e19326372251cfdf9da5013didar.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ø³Ù†Ø§Ø¨Ø§Ø¯ 40', 16, '-', '-', '', '', '', '', '', ''),
('p-etminan', '38838296', '09155093959', NULL, '38838296', '', 'Ù¾ÙˆØ´Ø§Ú© Ø§Ø·Ù…ÛŒÙ†Ø§Ù†', '../uploads/20aa52ffc7ab2efdfd8b90eb77e58af1etminan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 37', 16, '-', 'Ø­Ø³ÛŒÙ† Ù¾ÙˆØ±', '', '', '', '', '', ''),
('p-farshid', '38410256', '-', NULL, '38410256', '', 'Ú¯Ø§Ù„Ø±ÛŒ ÙØ±Ø´ÛŒØ¯', '', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø³Ù†Ø§Ø¨Ø§Ø¯', 16, '-', 'Ú©Ø¨Ø±ÛŒØ§ÛŒÛŒ', '', '', '', '', '', ''),
('p-grad', '37057858', '-', NULL, '37057858', '', 'Ù¾ÙˆØ´Ø§Ú© Ú¯Ø±Ø§Ø¯', '../uploads/23bc1d75a79fe2d4f18a28702a6d9434gerad.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ù…ÛŒØ¯Ø§Ù† Ø¬Ø§Ù†Ø¨Ø§Ø² Ù…Ø¬ØªÙ…Ø¹ Ù¾Ø§Ú˜', 16, '-', '-', '', '', '', '', '', ''),
('p-karaja', '38335187', '-', NULL, '38335187', '', 'Ù¾ÙˆØ´Ø§Ú© Ú©Ø§Ø±Ø§Ø¬Ø§', '../uploads/81a5d1291af166b9f9425875aa03da7ekaraja.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜ØŒØ·Ø¨Ù‚Ù‡ Ù‡Ù…Ú©Ù', 16, '-', '-', '', '', '', '', '', ''),
('p-maji', '38817418', '-', NULL, '38817418', '', 'Ù¾ÙˆØ´Ø§Ú© Ù…Ø§Ø¬ÛŒ', '../uploads/d0eabd40f476bef8ac7d685fb158ef3cmaji.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 11 Ø±Ùˆ Ø¨Ù‡ Ø±ÙˆÛŒ Ø¨Ø±Ø¬ Ø§Ù„Ù…Ø§Ù†', 16, '-', '-', '', '', '', '', '', ''),
('p-marsa', '91001191', '09151101121', NULL, '91001191', '', 'Ù¾ÙˆØ´Ø§Ú© Ù…Ø§Ø±Ø³Ø§', '../uploads/911f910081e36314f6bb014729dc8f88marsa.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 6 Ùˆ 8', 16, '-', '-', '', '', '', '', '', ''),
('p-sazan', '38849390', '-', NULL, '38849390', '', 'Ù¾ÙˆØ´Ø§Ú© Ø³Ø§Ø²Ø§Ù†', '../uploads/5e2fcd541635c4359c597a437b2bab01sazan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù‡Ø§Ø´Ù…ÛŒÙ‡ 27', 16, '-', '-', '', '', '', '', '', ''),
('parde_tamasha', '38417171', '09151100339', NULL, '38417171', '', 'Ù¾Ø±Ø¯Ù‡ ØªÙ…Ø§Ø´Ø§', '../uploads/39338c4fb2f9b66c9ab43a9c55f1eb23tamasha.jpg', '', 'Ù¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ Ø­Ø¯ÙØ§ØµÙ„ Ø³Ù†Ø§Ø¨Ø§Ø¯ 38 Ùˆ Ù¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯', 33, 'Ø¹Ù„ÛŒ', 'Ù‡Ø§Ø¯ÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('park_hayat', '3137', '-', NULL, '3137', '', 'Ù‡ØªÙ„ Ù¾Ø§Ø±Ú© Ø­ÛŒØ§Øª', '../uploads/a5bcf6884b70809331d4e4d863f5a9e8parke-hayat.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø·Ø±Ù‚Ø¨Ù‡-Ø§Ù…Ø§Ù… Ø®Ù…ÛŒÙ†ÛŒ 1', 23, '-', 'Ø¨Ø§ØºØ¨Ø§Ù†', '', '', '', '', '', ''),
('pars_gallery', '38463247', '-', NULL, '38463247', '', 'Ù¾Ø§Ø±Ø³ Ú¯Ø§Ù„Ø±ÛŒ', '', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù„Ù…Ø§Ù† 1 Ùˆ 3', 34, '-', 'Ù…Ø·Ù„Ø¨ÛŒ', '', '', '', '', '', ''),
('pars_loster', '38428350', '-', NULL, '38428350', '', 'Ù¾Ø§Ø±Ø³ Ù„ÙˆØ³ØªØ±', '../uploads/9008d7ac33dc430823b6af11b72ca3a8pars-loster.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ø¨ÙˆØ°Ø±', 34, '-', 'Ù…Ù‚ÛŒÙ…ÛŒ', '', '', '', '', '', ''),
('pars_pelast', '38691069', '09151177010', NULL, '38691069', '', 'Ù¾Ø§Ø±Ø³ Ù¾Ù„Ø§Ø³Øª', '../uploads/e8394746d254b985d89776b401fa20b1pars-pelat.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù¾ÛŒØ±ÙˆØ²ÛŒ-Ù…ÛŒØ¯Ø§Ù† Ù‡Ù†Ø±Ø³ØªØ§Ù†', 28, '-', 'ØºÙ„Ø§Ù…ÛŒ', '', '', '', '', '', '');
INSERT INTO `users` (`user`, `pass`, `mob`, `mob2`, `tel`, `tel2`, `title`, `logo`, `header`, `addres`, `senfid`, `name`, `famili`, `describ`, `u_bazaryab`, `introduction`, `telegram`, `instagram`, `LinkedIn`) VALUES
('part_vanak', '37675030', '09176713653', NULL, '37675030', '', 'Ù¾Ø§Ø±Øª ÙˆÙ†Ú©', '../uploads/e155d84c271210dba0c1ca6bee6d9c03part-vanak.jpg', '', 'Ù†Ø¨Ø´ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø± Ø¬Ù†ÙˆØ¨ÛŒ 2', 26, '-', '-', '', '', '', '', '', ''),
('pelastic_mahdis', '38929086', '09158970716', NULL, '38929086', '', 'Ù‡Ø§ÛŒÙ¾Ø± Ù¾Ù„Ø§Ø³ØªÛŒÚ© Ù…Ù‡Ø¯ÛŒØ³', '../uploads/f8e2ac185cb1689b35c127eddfc269bfpelastice-mahdis.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ 17 Ùˆ 19', 28, '-', 'Ø±Ø¶ÙˆØ§Ù†ÛŒ', '', '', '', '', '', ''),
('peransa', '37624921', '-', NULL, '37624921', '', 'Ù¾Ø±Ù†Ø³Ø§', '../uploads/147e432a0973443c89bdc505d0697757peransa.jpg', '', 'Ø³Ø¬Ø§Ø¯ Ù¾Ø§Ø³Ø§Ú˜ Ø§Ù„Ø¨Ø±Ø²', 39, '-', '-', '', '', '', '', '', ''),
('perkas_seir_tos', '37625554', '-', NULL, '37625554', '', 'Ù¾Ø±Ú©Ø§Ø³ Ø³ÛŒØ±ØªÙˆØ³', '../uploads/604f4eb9733d6de59c0f43ea7efa5071parkas.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ Ø¬Ù†Ø¨ Ø¨Ø§Ù†Ú© Ù‚ÙˆØ§Ù…ÛŒÙ† Ù¾Ù„Ø§Ú© 107', 26, '-', '-', '', '', '', '', '', ''),
('pirayesh_alijenab', '09362702156', '09362702156', NULL, '-', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ Ø¹Ø§Ù„ÛŒØ¬Ù†Ø§Ø¨', '../uploads/5777c546fdda6534f744f052c02d7906alijenab.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø§Ù‚Ø¨Ø§Ù„ 8 Ùˆ 10', 17, '-', 'Ù†Ø¸Ø§Ù…ÛŒ', '', '', '', '', '', ''),
('pirayesh_barbod', '09157975446', '09157975446', NULL, '-', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ Ø¨Ø§Ø±Ø¨Ø¯', '../uploads/48dc69464e07c58411fcc4a00926517bbarbod.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ³ÛŒØ¯Ø±Ø¶ÛŒ 40 Ù…ÛŒØ¯Ø§Ù† Ù…Ù‡Ø±Ø§Ù†', 17, '-', 'ØµÙØ¯Ø±ÛŒ', '', '', '', '', '', ''),
('pirayesh_barman', '09158099917', '09158099917', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ Ø¨Ø§Ø±Ù…Ù†', '../uploads/0e7535a05d9c5cae22201380219fff0fbarman.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù‡ÙØª ØªÛŒØ± 16', 17, '-', 'Ø§Ø­Ù…Ø¯ÛŒ', '', '', '', '', '', ''),
('pirayesh_danial', '38652491', '09153128713', NULL, '38652491', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ Ø¯Ø§Ù†ÛŒØ§Ù„', '../uploads/f6a8c1a8a6cfe4d51f766c4626ddbd90danial.jpg', '', 'Ù…Ø´Ù‡Ø¯ÙØ¨ÛŒÙ† Ù„Ø§Ø¯Ù† 10 Ùˆ 12', 17, '-', 'Ø¯Ø§Ù†ÛŒØ§Ù„', '', '', '', '', '', ''),
('pirayesh_daryush', '09158138548', '09158138548', NULL, '-', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ Ø¯Ø§Ø±ÛŒÙˆØ´', '../uploads/4b93360daec1efa6f502b0ae9b26965fdariush.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³ÛŒØ¯Ø±Ø¶ÛŒ 19', 17, '-', 'Ø¯Ø±ÙˆØ¯ÛŒ', '', '', '', '', '', ''),
('pirayesh_karino', '09156546147', '09156546147', NULL, '-', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ Ú©Ø§Ø±ÛŒÙ†Ùˆ', '../uploads/aebdb544b34ab042293c8120bffbbc26karino.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø³ÛŒØ¯Ø±Ø¶ÛŒ 13', 17, '-', 'Ù…Ø¬ÛŒØ¯ÛŒ', '', '', '', '', '', ''),
('pirayesh_masoud', '09155212290', '09155212290', NULL, '-', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ Ù…Ø³Ø¹ÙˆØ¯', '../uploads/b12fa37f17587fd9d5a0ebd857b41271masoud.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ù†Ø¨Ø´ ØµÛŒØ§Ø¯ 29', 17, '-', 'Ù„Ø¹Ù„ÛŒØ§Ù†ÛŒ', '', '', '', '', '', ''),
('pirayesh_pranc', '09151012040', '09151012040', NULL, '-', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ Ù¾Ø±Ù†Ø³', '../uploads/6ab600ddb2e9082d0d635f155c8abbaapranc.jpg', '', 'Ù…ÛŒØ¯Ø§Ù† Ú©ÙˆØ«Ø± Ø¬Ù†Ø¨ Ø¯Ø§Ø±ÙˆØ®Ø§Ù†Ù‡ Ù¾Ù„Ø§Ú© 75', 17, 'Ø§Ù…ÛŒØ±Ø­Ø³ÛŒÙ†', 'Ø§Ø­Ù…Ø¯ÛŒØ§Ù† Ù¾ÙˆØ±', '', '', '', '', '', ''),
('pirayesh_rayka', '36070331', '09153074402', NULL, '051-36070331', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ Ø±Ø§ÛŒÚ©Ø§', '', '', 'Ø¨Ù„ÙˆØ§Ø± ÙØ±Ù‡Ù†Ú¯ ØŒ Ù†Ø¨Ø´ ÙØ±Ù‡Ù†Ú¯ 5', 17, 'Ù…Ù‡Ø¯ÛŒ', 'Ø¬ØºØªØ§ÛŒÛŒ', '', '', '', '', '', ''),
('pirayesh_shahan', '09153064010', '09153064010', NULL, '-', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ Ø´Ø§Ù‡Ø§Ù†', '../uploads/522b8ff7f8b82c17b9838ecd45abfdebshahan.jpg', '', 'Ø³Ø¬Ø§Ø¯ ØŒØ­Ø§Ù…Ø¯ Ø¬Ù†ÙˆØ¨ÛŒ Ø¨ÛŒÙ† 10 Ùˆ 12', 17, 'Ù…ÛŒØ«Ù…', 'Ú©ÙˆÙ‡ÛŒ', '', '', '', '', '', ''),
('pirayesh_tandis', '09154765002', '09154765002', NULL, '-', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ ØªÙ†Ø¯ÛŒØ³', '../uploads/7a40dce174f298f92dd5334edfe45463tandis.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² 25', 17, '-', 'Ø¯Ø§ÙˆØ±ÛŒ ÙØ±', '', '', '', '', '', ''),
('pirayesh_zand', '09151188499', '09151188499', NULL, '-', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ Ø²Ù†Ø¯', '../uploads/c5da6ee67e0a6bf1db3637527757646dzand.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ù‚Ø¨Ù„ Ø§Ø² ÙØ±Ù‡Ù†Ú¯ 19', 17, '-', 'Ù‚Ù„ÛŒ Ù†Ú˜Ø§Ø¯', '', '', '', '', '', ''),
('pirayesh_zava', '09379379007', '09379379007', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´Ú¯Ø§Ù‡ Ù…Ø±Ø¯Ø§Ù†Ù‡ Ø²Ø§ÙˆØ§', '../uploads/fc72550f96192f7a92903a2f1d289826zava.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù‡Ø§Ø´Ù…ÛŒÙ‡ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 11 ØŒÙ¾Ù„Ø§Ú© 22', 17, 'Ù…ØµØ·ÙÛŒ', 'ØµØ§Ø±Ù… Ø¨Ø§ÙÙ†Ø¯Ù‡', '', '', '', '', '', ''),
('poran_layegh', '38449060', '-', NULL, '38449060', '', 'Ø¯Ú©ØªØ± Ù„Ø§ÛŒÙ‚', '../uploads/cae212019ea7c38f9ee88333f4ce1a6bdr-sabori.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ø­Ù…Ø¯Ø§Ø¨Ø§Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ù¾Ø§Ø³ØªÙˆØ±-Ù¾Ø§Ø³ØªÙˆØ± 6-Ù¾17', 27, 'Ù¾ÙˆØ±Ø§Ù†', 'Ù„Ø§ÛŒÙ‚', '', '', '', '', '', ''),
('poshak_sodas', '09155502280', '09155502280', NULL, '-', '', 'Ù¾ÙˆØ´Ø§Ú© Ø³ÙˆØ¯Ø§Ø³', '../uploads/5962d438533fbcf61b18c68c4ce35220sodas.jpg', '', 'Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ù…Ù‚Ø§Ø¨Ù„ Ù‡ØªÙ„ Ù‡Ù…Ø§', 16, '-', '-', '', '', '', '', '', ''),
('poshak_vatani', '38406587', '-', NULL, '38406587', '', 'Ù¾ÙˆØ´Ø§Ú© ÙˆØ·Ù†ÛŒ', '../uploads/f93f74975eae688a898341ab5df095f4vatani.jpg', '', 'Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ù…Ù‚Ø§Ø¨Ù„ Ù‡ØªÙ„ Ù‡Ù…Ø§', 16, '-', '-', '', '', '', '', '', ''),
('proushan', '36635465', '09152243036', NULL, '36635465', '', 'Ø¢Ù…ÙˆØ²Ø´Ú¯Ø§Ù‡ Ùˆ Ø³Ø§Ù„Ù† Ù¾Ø±ÙˆØ´Ø§Ù†', '../uploads/60bdd86ae8c8db7f6451ad918ce27601proushan.jpg', '', 'Ù‚Ø§Ø³Ù… Ø¢Ø¨Ø§Ø¯ Ø¨ÛŒÙ† Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø±Ø§Ù‡ Ø¢Ù‡Ù† Ùˆ Ù…ÛŒØ¯Ø§Ù† Ù…Ø§Ø¯Ø± Ø´Ø§Ù‡Ø¯ 59 Ø¨ÛŒÙ† 59/7Ùˆ 59/9 Ù¾Ù„Ø§Ú© 25', 1, 'Ù…Ø­Ø¨ÙˆØ¨Ù‡', 'Ø§Ø­Ø³Ù†ÛŒ', '', '', '', '', '', ''),
('respina', '38704911', '09152003980', NULL, '38704911', '', 'Ø³Ø§Ù„Ù† Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø±Ø³Ù¾ÛŒÙ†Ø§', '../uploads/179d93ac6c639b4be661409a073e9635respina.jpg', '', 'Ú©ÙˆØ«Ø± Ø´Ù…Ø§Ù„ÛŒ 14 Ù¾Ù„Ø§Ú© 43', 1, 'ÙÙ‡ÛŒÙ…Ù‡', 'Ø¨Ø§ÙˆÙØ§', '', '', '', '', '', ''),
('resturan_amirshahan', '09158076767', '09158076767', NULL, '-', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ø§Ù…ÛŒØ±Ø´Ø§Ù‡Ø§Ù†', '../uploads/24a616a4612c6c273ea11df94465d9eaamir-shahan.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù‡ÙØª ØªÛŒØ± 3 Ùˆ 5', 24, '-', 'ØºØ±ÙˆÛŒ', '', '', '', '', '', ''),
('resturan_aramesh', '36038296', '09158130041', NULL, '36038296', '', 'ØªØ§Ù„Ø§Ø± Ùˆ Ø±Ø³ØªÙˆØ±Ø§Ù† Ø¢Ø±Ø§Ù…Ø´', '../uploads/da98584dbfcca81ac9d516a265228b90aramesh.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø³ÛŒØ¯Ø±Ø¶ÛŒ 38', 24, '-', 'Ø§Ø¹ØªÙ‚Ø§Ø¯ÛŒ', '', '', '', '', '', ''),
('resturan_ehsan', '38402260', '09153143234', NULL, '38402260', '', 'ØªØ§Ù„Ø§Ø± Ùˆ Ø±Ø³ØªÙˆØ±Ø§Ù† Ø§Ø­Ø³Ø§Ù†', '../uploads/f23b89efd46828074d904dc6d184fca4ehsan.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 8Ùˆ10', 24, '-', 'Ø¨Ø§ØºØ¨Ø§Ù†', '', '', '', '', '', ''),
('resturan_irana', '38923003', '-', NULL, '38923003', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ø§ÛŒØ±Ø§Ù†Ø§', '../uploads/eb2c3fcf07056fd79cfc11fe78a1d5e4erana.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ù¾ÛŒØ±ÙˆØ²ÛŒ 72', 24, '-', '-', '', '', '', '', '', ''),
('resturan_kaktos', '38402549', '-', NULL, '38402549', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ú©Ø§Ú©ØªÙˆØ³', '../uploads/c5232c20c8f57cc8ee0d4388a2d960b7kaktus.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯-Ø¨Ø¹Ø¯ Ø§Ø² Ù…ÛŒØ¯Ø§Ù† ÙÙ„Ø³Ø·ÛŒÙ†', 24, '-', '-', '', '', '', '', '', ''),
('resturan_khatam', '36146666', '09151156061', NULL, '36146666', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ù…Ø¬Ù„Ù„ Ø®Ø§ØªÙ…', '../uploads/d7285af55b7664ec3599a60a442f13cbkhatam.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† ÙØ±Ø§Ù…Ø±Ø² 19 Ùˆ 21', 24, '-', '-', '', '', '', '', '', ''),
('resturan_kohsar', '38840150', '-', NULL, '38840150', '', 'ØªØ§Ù„Ø§Ø± Ùˆ Ø±Ø³ØªÙˆØ±Ø§Ù† Ù…Ø¬Ù„Ù„ Ú©ÙˆÙ‡Ø³Ø±', '../uploads/765b51b15061ad088bf3afee7e5a9751kohsar.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 60 Ùˆ 62', 24, '-', 'Ø§ÛŒØ²Ø¯ÛŒ', '', '', '', '', '', ''),
('resturan_mahdi', '36039090', '09397725095', NULL, '36039090', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ù…Ù‡Ø¯ÛŒ', '../uploads/458bef0327bbdfbfe50668c5438905c3mahdi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† ÙØ±Ø§Ù…Ø±Ø² Ø¹Ø¨Ø§Ø³ÛŒ 1 Ùˆ 3', 24, '-', 'Ø¹Ù„Ù… Ø®ÙˆØ§Ù‡', '', '', '', '', '', ''),
('resturan_malakot', '38655415', '09128094464', NULL, '38655415', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ù…Ù„Ú©ÙˆØª', '../uploads/da87838eb7e441957538cb2deb792c88malakot.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ ÙØ±Ù‡Ù†Ú¯ 42', 24, '-', 'Ù…Ù„Ú©ÙˆØªÛŒ', '', '', '', '', '', ''),
('resturan_ojaghbashi', '38673622', '-', NULL, '38673622', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ø§Ø¬Ø§Ù‚ Ø¨Ø§Ø´ÛŒ', '../uploads/cddbb4347c15c7b5075c2f17df292123ojagh-bashi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯37', 24, '-', '-', '', '', '', '', '', ''),
('resturan_poneh', '38828651', '09152031296', NULL, '38828651', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ù¾ÙˆÙ†Ù‡', '../uploads/c5bbea10afca8c615df4747c2a98260fpone.JPG', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 27Ùˆ29', 24, '-', '-', '', '', '', '', '', ''),
('resturan_rezaean', '36011111', '09151005030', NULL, '36011111', '', 'ØºØ°Ø§ÛŒ Ù…Ø¬Ù„Ø³ÛŒ Ø±Ø¶Ø§ÛŒÛŒØ§Ù†', '../uploads/8dd53c42762cc9be72c9a83c38cd5ec8rezayian.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¢Ø²Ø§Ø¯Ø´Ù‡Ø±-Ø§Ù…Ø§Ù…Øª 56', 24, '-', 'Ø±Ø¶Ø§ÛŒÛŒØ§Ù†', '', '', '', '', '', ''),
('resturan_rezaee', '38406237', '-', NULL, '38406237', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ø±Ø¶Ø§ÛŒÛŒ', '../uploads/b6f9c5f9cdc76fea362ac1cce1ebc93bRezaii.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø¢Ø¨Ú©ÙˆÙ‡-ØªÙ‚Ø§Ø·Ø¹ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ²', 24, '-', 'Ø±Ø¶Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('resturan_sadaf_sepehr', '3892957', '-', NULL, '3892957', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ùˆ ØªØ§Ù„Ø§Ø± ØµØ¯Ù Ø³Ù¾Ù‡Ø±', '../uploads/cca46ccde532865843f84396871ebee4Sadafe-sepehr.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† ÙØ±Ù‡Ù†Ú¯ 40 Ùˆ 42', 24, '-', 'Ø³Ø±Ø¯Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('resturan_silvana', '37665353', '-', NULL, '37665353', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ø³ÛŒÙ„ÙˆØ§Ù†Ø§', '../uploads/2e161c42f457f88cbd998bcd59a8eca8silvana.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù…Ù„Ú© Ø¢Ø¨Ø§Ø¯ 13 Ùˆ 15', 24, '-', '-', '', '', '', '', '', ''),
('resturan-mahan', '36111000', '0915321050', NULL, '36111000', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ù…Ø§Ù‡Ø§Ù†', '../uploads/f460871939ff064832554509d9ad13ffmahan.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ ÙØ±Ø§Ù…Ø±Ø²', 24, '-', 'Ù†ØµÛŒØ±Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('resturan-ofogh-talaie', '36050753', '-', NULL, '36050753', '', 'Ø±Ø³ØªÙˆØ±Ø§Ù† Ø§ÙÙ‚ Ø·Ù„Ø§ÛŒÛŒ', '../uploads/9d37f31705466de6ec612f6352fbadb9ofogh-talaii.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø±Ø§Ù‡ Ú¯Ù„Ø²Ø§Ø±', 24, '-', 'Ø±Ø§Ù‡ Ú¯Ù„Ø²Ø§Ø±', '', '', '', '', '', ''),
('reza_ghanad', '38467378', '09155838028', NULL, '38467378', '', 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø±Ø¶Ø§ Ù‚Ù†Ø§Ø¯', '../uploads/e5cca0fe06cc6c670f4fbbc4cc49dfd1reza-ghanad.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø³Ù„Ù…Ø§Ù† ÙØ§Ø±Ø³ÛŒ 2/1 Ùˆ 4', 19, '-', 'Ù…Ø¬Ø§ÙˆØ±', '', '', '', '', '', ''),
('reza_soleimani', '36099364', '-', NULL, '36099364', '', 'Ø¯Ú©ØªØ± Ø³Ù„ÛŒÙ…Ø§Ù†ÛŒ', '../uploads/f8558f9655d43f7cea1185b42c86b156soleymani.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø§Ù…Ø±Ø² Ø¹Ø¨Ø§Ø³ÛŒ-Ø¨ÛŒÙ† ÙØ±Ø§Ù…Ø±Ø² 33 Ùˆ 35', 27, 'Ø±Ø¶Ø§', 'Ø³Ù„ÛŒÙ…Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('rezashahr', '38783681', '09153045745', NULL, '38783681', '', 'Ú©Ø±Ø§ÛŒÙ‡ Ú†ÛŒ Ø±Ø¶Ø§Ø´Ù‡Ø±', '../uploads/66599e6edfd3e6637e0519efa85a12e5reza-shahr.jpg', '', 'Ø¨ÛŒÙ† Ø±Ø¶ÙˆÛŒ 38 Ùˆ 40', 15, '-', 'Ú©Ø§Ø´Ù…Ø±ÛŒ Ø­Ø³ÛŒÙ†ÛŒ', '', '', '', '', '', ''),
('rezashahr_yazdiha', '38785060', '09155680300', NULL, '38785060', '', 'Ù‚Ù†Ø§Ø¯ÛŒ Ø±Ø¶Ø§Ø´Ù‡Ø±&#40;ÛŒØ²Ø¯ÛŒ Ù‡Ø§&#41;', '../uploads/91c818a13c3ac9d6d81946df6123da35yazdiha.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø±Ø¶Ø§Ø´Ù‡Ø±-Ø¨Ù„ÙˆØ§Ø± Ù¾ÛŒØ±ÙˆØ²ÛŒ-Ù¾ÛŒØ±ÙˆØ²ÛŒ 9&#40;Ø®ÛŒØ§Ø¨Ø§Ù† ÙØ±Ø®ÛŒ Ø´Ù…Ø§Ù„ÛŒ&#41;-Ø¨ÛŒÙ† ÙØ±Ø®ÛŒ 6Ùˆ8-ÙØ§Ø²2 ØªØ¬Ø§Ø±ÛŒ', 19, '-', 'Ù¾ÛŒÙ„Ù‡ ÙˆØ±Ø§Ù†', '', '', '', '', '', ''),
('roham', '09153141341', '09153141341', NULL, '-', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø¢Ù‚Ø§ÛŒØ§Ù† Ø±Ù‡Ø§Ù…', '../uploads/4af0fbdab26cba11e73ffcdfab4ee9c4roham.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø±Ø³Ø¬Ø§Ø¯ØŒØ¨Ø²Ø±Ú¯Ù…Ù‡Ø±Ø¬Ù†ÙˆØ¨ÛŒ22ØŒÙ¾Ù„Ø§Ú©10ØŒØ·Ø¨Ù‚Ù‡ 2', 17, '-', '-', '', '', '', '', '', ''),
('roshanbin', '44332211', '09158224315', NULL, '37640375', '', 'Ø¢Ø±ÛŒÙ†', '../uploads/b8307ca768ab1765a6e5b24fb3bd8600Chrysanthemum.jpg', '../uploads/cd1eaa6a3e5a8409b4d12ab6551b1053Hydrangeas.jpg', 'Ù…Ø¬ØªÙ…Ø¹ ØªØ¬Ø§Ø±ÛŒ Ø§Ù…ÛŒØ± ØŒ ÙØ§Ø² Ø¯Ùˆ Ø·Ø¨Ù‚Ù‡ Ù‡Ù…Ú©Ù', 28, 'Ù…Ø±ØªØ¶ÛŒ', 'Ø±ÙˆØ´Ù† Ø¨ÛŒÙ†', 'Ø§Ø±Ø§Ø¦Ù‡ Ø§Ù†ÙˆØ§Ø¹ Ù„ÙˆØ§Ø²Ù… Ø®Ø§Ù†Ú¯ÛŒ Ø¨Ø§ Ú©ÛŒÙÛŒØª Ùˆ Ù‚ÛŒÙ…Øª Ù…Ù†Ø§Ø³Ø¨. Ø¬Ù‡Øª Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ø¨ÛŒØ´ØªØ± Ø¨Ø§ Ù…Ø§ ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', NULL, 'Ø§Ø±Ø§Ø¦Ù‡ Ø§Ù†ÙˆØ§Ø¹ Ù„ÙˆØ§Ø²Ù… Ø®Ø§Ù†Ú¯ÛŒ', '', '', ''),
('royal', '38929151', '09155225532', NULL, '38929151', '', 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨ Ø±ÙˆÛŒØ§Ù„', '../uploads/68ae14f72f2dcaf1a07cf55b1a2f867froyal.jpg', '', 'Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 36 Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯Ø§Ù†Ø´Ø¬Ùˆ', 37, '-', 'Ø¢Ù‚Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('royal_safar', '38410911', '-', NULL, '38410911', '', 'Ø±ÙˆÛŒØ§Ù„ Ø³ÙØ±', '../uploads/8ad3a67aff54b7b69c19348bb6de8c3droyal-safar.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ø¨Ù† Ø³ÛŒÙ†Ø§ ØŒ Ø§Ø¨Ù† Ø³ÛŒÙ†Ø§ 16', 26, '-', 'Ù¾ÙˆØ±Ù‚ÙˆÛŒ', '', '', '', '', '', ''),
('roz_gold', '37664704', '09335902525', NULL, '37664704', '', 'Ø±Ø² Ú¯Ù„Ø¯', '../uploads/21c1b490e628d1d67995a86fb05b7ec1rose.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø± Ø¬Ù†ÙˆØ¨ÛŒ 6', 20, '-', 'Ø¨Ø±ÙˆÙ…Ù†Ø¯', '', '', '', '', '', ''),
('rozhano', '09356853660', '09356853660', NULL, '-', '', 'Ø¢Ø±Ø§ÛŒØ´ÛŒ Ø¨Ù‡Ø¯Ø§Ø´ØªÛŒ Ø±ÙˆÚ˜Ø§Ù†Ùˆ', '../uploads/7d6ae3782187b03fde89052c66ab040erozhanio.jpg', '', 'Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 32 Ùˆ 34', 39, '-', ' ÙÛŒØ§Ø¶ÛŒ', '', '', '', '', '', ''),
('sabk_khaneh', '38335083', '09129321193', NULL, '38335083', '', 'Ø³Ø¨Ú© Ø®Ø§Ù†Ù‡', '../uploads/e4117f91d0bcac68392bb7b69561bf50sabke-khane.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜-Ø·Ø¨Ù‚Ù‡ -1', 28, '-', 'ÙˆÙ„Ø§ÛŒØªÛŒ', '', '', '', '', '', ''),
('saina', '37669082', '09150091878', NULL, '37669082', '', 'Ø³Ø§ÛŒÙ†Ø§', '../uploads/e4969eec9096d6c2f25d25bd1dd36797ssaina.jpg', '', 'Ø¨ÛŒÙ† Ù…ÛŒØ¯Ø§Ù† Ø¬Ø§Ù†Ø¨Ø§Ø² Ùˆ Ø®ÛŒØ§Ø¨Ø§Ù† Ø«Ù…Ø§Ù†Ù‡', 26, '-', 'Ø§Ø¨Ø±Ø§Ù‡ÛŒÙ… Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('salon_belsan', '38644647', '09120766030', NULL, '38644647', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø¨Ù„Ø³Ø§Ù†', '../uploads/bdf030ef3cd189664c04aa2a0e6ebd61belsan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡ÙØª ØªÛŒØ±8ØŒÚ¯Ù„Ø´Ù† 4/3ØŒ Ù¾Ù„Ø§Ú© 95', 1, 'Ø¹Ø³Ù„', 'Ø±ÙØ§Ù‡ÛŒ', '', '', '', '', '', ''),
('salon_damad_arsham', '36017450', '09152080019', NULL, '36017450', '', 'Ø³Ø§Ù„Ù† Ø¯Ø§Ù…Ø§Ø¯ Ø¢Ø±Ø´Ø§Ù…', '../uploads/527799ea128d361bcaa3b30cceff4a09arsham.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù…ØŒØ¨ÛŒÙ† Ù…Ø¹Ù„Ù… 8 Ùˆ 10ØŒØ¨Ø±Ø¬ Ø¢Ø¨Ø´Ø§Ø±ØŒØ·Ø¨Ù‚Ù‡ 7ØŒÙˆØ§Ø­Ø¯ 107', 17, 'Ø¹Ù„ÛŒ', 'Ù¾ÙˆØ±Ø«Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('salon_damad_ashraf', '09151171167', '09151171167', NULL, '-', '', 'Ø³Ø§Ù„Ù† Ø¯Ø§Ù…Ø§Ø¯ Ø§Ø´Ø±Ø§Ù', '../uploads/07317992939a0d37de4ee8cec15b59c9ashraf.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø§Ø³ØªÙ‚Ù„Ø§Ù„ØŒ Ø¨ÛŒÙ† Ø§Ø³ØªÙ‚Ù„Ø§Ù„ 2 Ùˆ 4ØŒØ¬Ù†Ø¨ Ø¨Ø§Ù†Ú© Ù…Ù„ÛŒ', 17, '-', 'ÙØ±ÙˆØªÙ†', '', '', '', '', '', ''),
('salon_rosnina', '09155024705', '09155024705', NULL, '-', '', 'Ø³Ø§Ù„Ù† Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø±Ø²Ù†ÛŒÙ†Ø§', '', '', 'ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 17 Ø¨ÛŒÙ† Ù…Ø¹Ø§Ø¯ 2 Ùˆ 4', 1, 'ÙØ±ÙˆØº', 'Ø¬Ù‡Ø§Ù†Ú¯ÛŒØ±ÛŒ', '', '', '', '', '', ''),
('samsung_lg', '38416651', '-', NULL, '38416651', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø³Ø§Ù…Ø³ÙˆÙ†Ú¯ Ùˆ Ø§Ù„Ø¬ÛŒ', '../uploads/1563f41df55f99adb409866702d2328asamsung-va-lg.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 40 Ùˆ 42', 28, '-', 'Ø±ÙˆØ´Ù†Ø¯Ù„', '', '', '', '', '', ''),
('sanaye_roshanayi_hooran', '38704349', '09159138305', NULL, '38704349', '', 'ØµÙ†Ø§ÛŒØ¹ Ø±ÙˆØ´Ù†Ø§ÛŒÛŒ Ù‡ÙˆØ±Ø§Ù†', '../uploads/d4e492df715e784678a72b801504faa3horan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 16 Ùˆ ØµØ§Ø±Ù…ÛŒ', 34, '-', 'Ú¯ÙˆØ§Ø±Ø´ÛŒ', '', '', '', '', '', ''),
('sandalie_dagh', '09158156011', '09158156011', NULL, '-', '', 'Ù…Ø¨Ù„Ù…Ø§Ù† ØµÙ†Ø¯Ù„ÛŒ Ø¯Ø§Øº', '', '', 'Ø¬Ø§Ø¯Ù‡ Ø´Ø§Ù†Ø¯ÛŒØ²ØŒÙ†Ø¨Ø´ ÙˆÛŒØ±Ø§Ù†ÛŒ 7 Ùˆ 9', 11, 'Ù†Ø§ØµØ±', 'Ø®Ø¯Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('santral', '38419616', '09151163227', NULL, '051-38419616', '', 'Ù¾ÙˆØ´Ø§Ú© Ø³Ø§Ù†ØªØ±Ø§Ù„', '', '', 'Ù¾Ù†Ø¬Ø±Ø§Ù‡ Ø³Ù†Ø§Ø¨Ø§Ø¯ Ø¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 39 Ùˆ 41 Ù…Ù‚Ø§Ø¨Ù„ Ù…Ø³Ø¬Ø¯ Ø§Ù„Ø²Ù‡Ø±Ø§', 16, 'Ù…Ø­Ù…Ø¯', 'Ø®Ø§Ù„Ù‚ÛŒ', '', '', '', '', '', ''),
('sara_meshkat', '36036450', '-', NULL, '36036450', '', 'Ø¯Ú©ØªØ± Ø³Ø§Ø±Ø§ Ø³Ø§Ø¯Ø§Øª Ù…Ø´Ú©Ø§Øª', '../uploads/67276d004c9f14b5885de646747c70abdr-meshkat.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù…-Ø¨ÛŒÙ† Ø³ÛŒØ¯Ø±Ø¶ÛŒ 33 Ùˆ 35', 27, 'Ø³Ø§Ø±Ø§', 'Ø³Ø§Ø¯Ø§Øª Ù…Ø´Ú©Ø§Øª', '', '', '', '', '', ''),
('saren', '38943154', '09333251206', NULL, '38943154', '', 'Ú©Ø§Ù„Ø§ÛŒ Ø®ÙˆØ§Ø¨ Ø³Ø§Ø±Ù†', '../uploads/258cf1213f2e7a7f3bc93c713af5a7c0khb-saren.jpg', '', 'Ù…Ø¬ØªÙ…Ø¹ Ø³ØªØ§Ø³Ù†ØªØ± Ø·Ø¨Ù‚Ù‡ Ù‡Ù…Ú©Ù', 37, '-', 'Ø§Ø¬Ø§Ù‚ÛŒ', '', '', '', '', '', ''),
('sarzamin_ayne', '36044031', '-', NULL, '36044031', '', 'Ø³Ø±Ø²Ù…ÛŒÙ† Ø¢ÛŒÙ†Ù‡', '../uploads/816cefc7d4cab3bd40b9dc92b85f5b23sarzamine-ayne.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 5 Ùˆ 7', 34, '-', '-', '', '', '', '', '', ''),
('sepehr_seir_tos', '37621919', '-', NULL, '37621919', '', 'Ø³Ù¾Ù‡Ø±Ø³ÛŒØ± ØªÙˆØ³', '../uploads/8dd375c4a7e0d371ba6231984b819504sepehr-seir-tous.jpg', '', 'Ø®ÛŒØ§Ù… 11 Ù¾Ù„Ø§Ú© 85', 26, '-', '-', '', '', '', '', '', ''),
('sepehri_gallary', '38484040', '-', NULL, '021-26804602', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ù¾Ø±Ø¯Ù‡ Ø³Ù¾Ù‡Ø±ÛŒ', '../uploads/c02d3f53e538fbd8b732d850686e27b5galeri-sepehri.jpg', '', 'Ø´Ø¹Ø¨Ù‡ Ù…Ø±Ú©Ø²ÛŒ:ØªÙ‡Ø±Ø§Ù†ØŒØ®ÛŒØ§Ø¨Ø§Ù† 14 ÙˆÙ„Ù†Ø¬Ú©ØŒÙ¾Ø§Ø³Ø§Ú˜ ØªÙˆÚ†Ø§Ù„ØŒÙ¾Ù„Ø§Ú© 19', 33, '- ', 'Ø³Ù¾Ù‡Ø±ÛŒ', '', '', '', '', '', ''),
('setare_abi', '38404014', '-', NULL, '38404014', '', 'Ø³ØªØ§Ø±Ù‡ Ø¢Ø¨ÛŒ', '../uploads/db68910fa8f61a462afcb74551b2965esetare-abi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ø§Ø¨ØªØ¯Ø§ÛŒ Ø®ÛŒØ§Ø¨Ø§Ù† Ø±Ø¶Ø§', 16, '-', '-', '', '', '', '', '', ''),
('setare_shar', '38936445', '09155198967', NULL, '38936445', '', 'Ú¯Ø§Ù„Ø±ÛŒ Ø³ØªØ§Ø±Ù‡ Ø´Ø¨', '../uploads/a3103a2aae498952300eda5534a7433dsetare-shahr.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ 3 Ùˆ 5', 34, '-', 'Ø§Ø¨Ø±Ø§Ù‡ÛŒÙ… Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('setareshab', '37819597', '09155128050', NULL, '37819597', '', 'Ú©Ø±Ø§ÛŒÙ‡ Ú†ÛŒ Ø³ØªØ§Ø±Ù‡ Ø´Ø¨', '../uploads/fecc3f2c7bbded0a6a1961d8e3b3d665setare-shab.jpg', '', 'Ù†Ø¨Ø´ ØµØ§Ø±Ù…ÛŒ 12', 15, '-', 'Ø±Ù…Ø¶ÛŒ', '', '', '', '', '', ''),
('seyed_arzanforosh', '38929093', '09369595125', NULL, '38929093', '', 'Ù¾Ø±Ø¯Ù‡ Ø³Ø±Ø§ÛŒ Ø³ÛŒØ¯ Ø§Ø±Ø²Ø§Ù† ÙØ±ÙˆØ´', '../uploads/05da4d62dc7eb0ef90da7f1a9f3e9e74seyede-arzan-forosh.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù… Ù†Ø¨Ø´ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯Ø§Ù†Ø´Ø¬Ùˆ', 33, '-', 'ØµØ§Ø­Ø¨ÛŒ', '', '', '', '', '', ''),
('shabe_talayi', '09158252577', '09158252577', NULL, '051-34230303', '', 'ØªØ§Ù„Ø§Ø± Ø´Ø¨ Ø·Ù„Ø§ÛŒÛŒ', '../uploads/3c17e61a5a56c6383c058f5cd3ac7d4bshabetalaei.jpg', '', 'Ø¬Ø§Ø¯Ù‡ Ø·Ø±Ù‚Ø¨Ù‡ Ø±Ùˆ Ø¨Ù‡ Ø±ÙˆÛŒ Ø§Ù…Ø§Ù… Ø®Ù…ÛŒÙ†ÛŒ 7 ', 12, 'Ø­Ø³Ù†', 'Ø±ÙˆØ´Ù†ÛŒ', '', '', '', '', '', ''),
('shahd_zarin', '36012121', '09155047013', NULL, '36012121', '', 'Ú©ÛŒÚ© Ùˆ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø´Ù‡Ø¯ Ø²Ø±ÛŒÙ†', '../uploads/879d19ac914c781a0e7a3b429922ad1azarin.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø³ÛŒØ¯Ø±Ø¶ÛŒ 31', 19, '-', 'Ù„Ø§Ø¬ÙˆØ±Ø¯ÛŒ', '', '', '', '', '', ''),
('shahdokht', '36045473', '09153074270', NULL, '36045473', '', 'Ù…Ø²ÙˆÙ† Ø´Ø§Ù‡Ø¯Ø®Øª', '../uploads/f805166c23015ad0ab8b1bb7af56b2d8shahdokht.jpg', '', 'Ø­Ø¯ ÙØ§ØµÙ„ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ù‡Ø¯ÛŒ Ùˆ ÙØ±Ø§Ù…Ø±Ø² Ù¾Ù„Ø§Ú© 303', 6, 'Ø­Ø§Ù…Ø¯', 'Ù†Ø§Ù…Ø¬Ùˆ', '', '', '', '', '', ''),
('shahre_behesht', '37660990', '09158945004', NULL, '37660990', '', 'Ú©ØªØ±ÛŒÙ†Ú¯ Ø´Ù‡Ø± Ø¨Ù‡Ø´Øª', '../uploads/25c8377026fd8be479cf0255e33cbc6ashahre-behesht.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ-Ù…Ù‚Ø§Ø¨Ù„ Ø¢Ù¾Ø§Ø±ØªÙ…Ø§Ù†Ù‡Ø§ÛŒ Ù…Ø±ØªÙØ¹', 24, '-', '-', '', '', '', '', '', ''),
('shahre_khab', '36012888', '-', NULL, '36012888', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø´Ù‡Ø±Ø®ÙˆØ§Ø¨', '../uploads/a7b9ea095a701c6c82e4287570ebd4b2shahre-khab.jpg', '', 'Ù†Ø¨Ø´ Ù…Ø¹Ù„Ù… 45', 37, '-', 'Ù‚Ø§Ø¶ÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('shahre_shab', '36051581', '-', NULL, '36051581', '', 'Ø¬ÙˆØ§Ù‡Ø±ÛŒ Ø´Ù‡Ø± Ø´Ø¨', '../uploads/1e94076f4f3b6f7ffc6046626e74aa59shahre-shab.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 1 Ùˆ3', 38, '-', 'Ø§Ø³Ø­Ø§Ù‚ÛŒ', '', '', '', '', '', ''),
('shirini_ahmadabad', '38643148', '09121437648', NULL, '38643148', '', 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø³Ø±Ø§ÛŒ Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯', '../uploads/a2d2a6ad17129f6753258426daebca2eahmad-abad.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯-Ù†Ø¨Ø´ Ø´Ù‡ÛŒØ¯ Ù‚Ø§Ù†Ø¹ 16', 19, '-', 'Ù‚Ø§Ù†Ø¹', '', '', '', '', '', ''),
('shirini_anse', '38831616', '-', NULL, '38831616', '', 'Ú©ÛŒÚ© Ùˆ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø¢Ù†Ø³Ù‡', '../uploads/3c21e7b19ef836306a4e6bd0c363700danse.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù‡Ø§Ø´Ù…ÛŒÙ‡ 10 Ùˆ 12', 19, '-', 'ÙÙ„Ø§Ø·ÙˆÙ†ÛŒ', '', '', '', '', '', ''),
('shirini_baranava', '36058700', '09151116933', NULL, '36058700', '', 'Ú©ÛŒÚ© Ùˆ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø¨Ø§Ø±Ø§Ù†Ø§ÙˆØ§', '../uploads/8aec94cea9b8c79ab904c1e0fd41562cpastor.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯-Ù†Ø¨Ø´ Ø¬Ù„Ø§Ù„', 19, '-', 'Ù†ÙˆØ§Ø²ÛŒ', '', '', '', '', '', ''),
('Shirini_barn', '38657354', '-', NULL, '38657354', '', 'Ú©ÛŒÚ© Ùˆ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø¨Ø§Ø±Ù†', '../uploads/93924914f4c8ce0b3b9316eefe7cadaabaren.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† ØµÛŒØ§Ø¯ 7 Ùˆ 9', 19, '-', '-', '', '', '', '', '', ''),
('shirini_fereshteh', '37626400', '09151110260', NULL, '37626400', '', 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø®Ø§Ù†Ú¯ÛŒ ÙØ±Ø´ØªÙ‡', '../uploads/1491280860bd60a7a231b7840c68b780fereshteh.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ ÙˆÚ©ÛŒÙ„ Ø¢ÛŒØ§Ø¯ 20', 19, '-', 'ØªÙˆÚ©Ù„ÛŒ', '', '', '', '', '', ''),
('shirini_khaton', '37660136', '09155145467', NULL, '37660136', '', 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø®Ø§Ù†Ú¯ÛŒ Ø®Ø§ØªÙˆÙ†', '../uploads/484bab918a5c5df5ba7d4d0577050d5ekhaton.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 73 Ùˆ Ù…ÛŒØ¯Ø§Ù† Ù„Ø§Ø¯Ù†', 19, '-', 'Ø¶Ø§Ø¨Ø·ÛŒØ§Ù†', '', '', '', '', '', ''),
('shirini_moghadam', '38795063', '-', NULL, '38795063', '', 'Ù‚Ù†Ø§Ø¯ÛŒ Ù…Ù‚Ø¯Ù…', '', '', 'Ø±Ø¶Ø§Ø´Ù‡Ø±ØŒÙ¾ÛŒØ±ÙˆØ²ÛŒ 6ØŒÙØ§Ø² 3 ØªØ¬Ø§Ø±ÛŒ ØŒÙ‚Ù†Ø§Ø¯ÛŒ Ù…Ù‚Ø¯Ù…', 19, 'Ø§Ø­Ù…Ø¯', 'Ù…Ù‚Ø¯Ù…', '', '', '', '', '', ''),
('shirini_pantea', '38788371', '09158100045', NULL, '38788371', '', 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ù¾Ø§Ù†ØªÙ‡ Ø§', '../uploads/524de577488620c20d9b0ecdb0ed1404pante-a.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 11 Ùˆ 13', 19, '-', '-', '', '', '', '', '', ''),
('shirini_paria', '36109144', '-', NULL, '36109144', '', 'Ú©ÛŒÚ© Ùˆ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ù¾Ø±ÛŒØ§', '../uploads/f32606290534cdfa018da2ebd3a0790bparia.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø§Ù…Ø§Ù…Øª 50', 19, '-', 'ÛŒØ¹Ù‚ÙˆØ¨ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('shirini_parse', '38848574', '-', NULL, '38848574', '', 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ù¾Ø§Ø±Ø³Ù‡', '../uploads/ce491584cfdee4c8475f90a49fbbecd3parse.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ù¾ÛŒØ±ÙˆØ²ÛŒ-Ù…ÛŒØ¯Ø§Ù† Ù„Ø§Ù„Ù‡', 19, '-', 'ÙˆØ­ÛŒØ¯ÛŒ', '', '', '', '', '', ''),
('shirini_ranginak', '37629700', '09154414424', NULL, '37629700', '', 'Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø±Ù†Ú¯ÛŒÙ†Ú©', '../uploads/b51a249e0cfbfe086e922210998673eeranginak.jpg', '', 'Ø´Ø¹Ø¨Ù‡ 1:Ù…Ø´Ù‡Ø¯-Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¨Ù„ÙˆØ§Ø± Ø¬Ù„Ø§Ù„ Ø¢Ù„ Ø§Ø­Ù…Ø¯ ', 19, '-', 'Ø¸Ø±ÛŒÙ', '', '', '', '', '', ''),
('shirini_roshanae', '37638301', '-', NULL, '37638301', '', 'Ú©ÛŒÚ© Ùˆ Ø´ÛŒØ±ÛŒÙ†ÛŒ Ø±ÙˆØ´Ù†Ø§ÛŒÛŒ', '../uploads/a2bef5ac60ded5fb81cd4874de57f551roshanai.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù…Ù„Ú© Ø¢Ø¨Ø§Ø¯ 19Ùˆ21', 19, '-', '-', '', '', '', '', '', ''),
('shirini_tabriziha', '38642542', '09159312699', NULL, '38642542', '', 'Ø´ÛŒØ±ÛŒÙ†ÛŒ ØªØ¨Ø±ÛŒØ²ÛŒ Ù‡Ø§', '../uploads/2671fa2f71abc629f972435101d007b6tabriziiha.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù…-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø³ØªØ§Ø±ÛŒ', 19, '-', 'Ù†Ø§Ù† Ù¾Ø±ÙˆØ±', '', '', '', '', '', ''),
('shirini_tayli', '36089855', '09152296440', NULL, '36089855', '', 'Ø´ÛŒØ±ÛŒÙ†ÛŒ ØªØ§ÛŒÙ„ÛŒ', '../uploads/881ba83b153979eddddcea3ccb03638ftayli.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ø¹Ù„Ù…', 19, '-', 'Ù†ÙˆØ±Ø§Ù„Ù‡ÛŒ', '', '', '', '', '', ''),
('sina_behdasht', '36015303', '-', NULL, '36015303', '', 'Ø³ÛŒÙ†Ø§Ø¨Ù‡Ø¯Ø§Ø´Øª', '../uploads/1402d8feec1f1ee0fa6974cce7628c9fsina-behdasht.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù… Ù†Ø¨Ø´ Ø¬Ù„Ø§Ù„', 39, '-', '-', '', '', '', '', '', ''),
('siyamak_vejdani', '38080782', '09157709077', NULL, '38080782', '', 'Ø³ÙˆÙ¾Ø±Ø³Ø§Ù„Ù† Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø³ÛŒØ§Ù…Ú© ÙˆØ¬Ø¯Ø§Ù†ÛŒ', '../uploads/0da23781e9609c46d0e4d8e6c3f2c965Simak-Vejdani-Logo.jpg', '', 'Ù‡ØªÙ„ Ù…Ø¬Ù„Ù„ Ø¯Ø±ÙˆÛŒØ´ÛŒ-Ø·Ø¨Ù‚Ù‡ 2-', 17, 'Ø³ÛŒØ§Ù…Ú©', 'ÙˆØ¬Ø¯Ø§Ù†ÛŒ', '', '', '', '', '', ''),
('soari', '37674850', '-', NULL, '37674850', '', 'Ù¾ÙˆØ´Ø§Ú© Ø³ÙˆÙˆØ§Ø±ÛŒ', '../uploads/15aa9325fa4b5c89f249032cdfb9a83fsuvari.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒ Ø³Ø¬Ø§Ø¯ Ù†Ø¨Ø´ Ù…Ø¬ØªÙ…Ø¹ ØªØ±Ù†Ø¬', 16, '-', '-', '', '', '', '', '', ''),
('sofreaghd_sina', '09367853500', '09367853500', NULL, '-', '', 'Ø³ÙØ±Ù‡ Ø¹Ù‚Ø¯ Ø³ÛŒÙ†Ø§', '../uploads/89b2283988761bed3185e12756beaa0esofre-aghd-sina.jpg', '', 'Ø¨ÛŒÙ† ÙØ±Ù‡Ù†Ú¯ 11 Ùˆ 13', 15, '-', 'Ø´Ø±ÛŒÙ', '', '', '', '', '', ''),
('sohrabi', '36010777', '0915420042', NULL, '36010777', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø³Ù‡Ø±Ø§Ø¨ÛŒ', '../uploads/f07489bbcdfabc0f1cd7d53161291a7dsohrabi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ø³ÛŒØ¯Ø±Ø¶ÛŒ 9 Ùˆ 11', 34, '-', 'Ø³Ù‡Ø±Ø§Ø¨ÛŒ', '', '', '', '', '', ''),
('somi_style', '09153231673', '09153231673', NULL, '-', '', 'Ø³Ù…ÛŒ Ø§Ø³ØªØ§ÛŒÙ„', '../uploads/20d7ac16b9d98c8d3b36bf7fb4928636somi.jpg', '', '-', 6, 'Ø³Ù…ÛŒÙ‡', 'Ø§Ø¨Ø±Ø§Ø±', '', '', '', '', '', ''),
('stodio_amond', '38828782', '09155133983', NULL, '38828782', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ø¢Ù…ÙˆÙ†Ø¯', '../uploads/32b724c71c071c446178e329ac81f1d2studio-amon.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 16ØŒØ´Ù…Ø§Ø±Ù‡ 48', 4, '-', 'Ø·Ø§ÙˆÙˆØ³ÛŒ', '', '', '', '', '', ''),
('stodio_zhupin', '36087781', '09153000599', NULL, '36087781', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ú˜ÙˆÙ¾ÛŒÙ†', '../uploads/9f1add024347125e5c69d02bec3b5eeestudio-zhopin.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø¬Ù„Ø§Ù„ Ø¢Ù„ Ø§Ø­Ù…Ø¯ØŒØ¨ÛŒÙ† 22 Ùˆ 24', 4, '-', '-', '', '', '', '', '', ''),
('studio_afarinesh', '38943053', '09151575683', NULL, '38943053', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ø¢ÙØ±ÛŒÙ†Ø´', '../uploads/98af2e911b0988a0206f0e26663d5311studio-afarinesh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ØŒÙ‡ÙØª ØªÛŒØ± 2ØŒØ´Ù…Ø§Ø±Ù‡ 33', 4, '-', '-', '', '', '', '', '', ''),
('studio_afra', '38812547', '09154492216', NULL, '38812547', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ø§ÙØ±Ø§', '../uploads/d3b1bd42d92c96b15e037c9ae44099acStudio-afra.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ø§Ù‡Ù†Ø± 7 Ù¾Ù„Ø§Ú© 38', 4, '-', '-', '', '', '', '', '', ''),
('studio_artin', '38706121', '09153032198', NULL, '38706121', '', 'Ø¢Ø±ØªÛŒÙ† Ø§Ø³ØªÙˆØ¯ÛŒÙˆ', '../uploads/ec3d18f102c9542a7bb306665e57a2efartin.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 26 Ù¾Ù„Ø§Ú© 84', 4, '-', '-', '', '', '', '', '', ''),
('studio_asatir', '36076939', '09120977732', NULL, '36076939', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ø§Ø³Ø§Ø·ÛŒØ±', '../uploads/a33c18f07782bbfd4e73ca2825c95634asatir.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ø¨Ø§Ù† ÙØ±Ø§Ù…Ø±Ø² Ø¹Ø¨Ø§Ø³ÛŒ39ØŒÚ©ÙˆÚ†Ù‡ Ø§ÙˆÙ„ Ø³Ù…Øª Ú†Ù¾', 4, '-', '-', '', '', '', '', '', ''),
('studio_avanoor', '36016814', '09155235700', NULL, '36016814', '', 'Ø¢ØªÙ„ÛŒÙ‡ Ø¢ÙˆØ§Ù†ÙˆØ±', '../uploads/81969c0fff9863eb44c9c78a23418284studio-ava-nor.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ØŒØ¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² 5ØŒØ­Ø§Ø´ÛŒÙ‡ Ù…ÛŒØ¯Ø§Ù†', 4, '-', '-', '', '', '', '', '', ''),
('studio_balut', '38848003', '09159252004', NULL, '38848003', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ø¨Ù„ÙˆØ·', '../uploads/a693eeaf2b75dacef3d1b438e8a392c8studio-balot.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù‡Ø§Ø´Ù…ÛŒÙ‡ØŒØ¨Ø±Ø¬ Ø¢Ø¨Ø§Ù†ØŒÙˆØ§Ø­Ø¯ 210', 4, '-', '-', '', '', '', '', '', ''),
('studio_chavoshi', '38466068', '09157330058', NULL, '38466068', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ú†Ø§ÙˆØ´ÛŒ', '../uploads/586aa845d7857117630e664a19d82136chavoshi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù…Ù„Ø§ØµØ¯Ø±Ø§ØŒØ¨ÛŒÙ† 20 Ùˆ 22 Ù¾Ù„Ø§Ú© 11', 4, '-', 'ØºÙ„Ø§Ù…Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('studio_elahenaz', '38476272', '09155570056', NULL, '38476272', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ø§Ù„Ù‡Ù‡ Ù†Ø§Ø²', '../uploads/2db8c2587cf882cf5770a6022163dca8Studio-elahe-naz.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÚ©ÙˆÙ‡Ø³Ù†Ú¯ÛŒØŒÙ†Ø¨Ø´ Ú©ÙˆÙ‡Ø³Ù†Ú¯ÛŒ 14ØŒØ¬Ù†Ø¨ Ø¨Ø§Ù†Ú© Ø§Ù†ØµØ§Ø±ØŒØ·Ø¨Ù‚Ù‡ 1-', 4, '-', 'Ø¹Ù„ÛŒÙ¾ÙˆØ±', '', '', '', '', '', ''),
('studio_etefagh', '38844630', '09153166634', NULL, '38844630', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ø§ØªÙØ§Ù‚', '../uploads/b8ce86a37826b81a58587ce0c4d1b9faetefagh.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ 41ØŒ&#40;41/1&#41;Ø°ÙˆØ§Ù„ÙÙ‚Ø§Ø±ÛŒ 4', 4, '-', '-', '', '', '', '', '', ''),
('studio_gelamoor', '37641848', '-', NULL, '37641848', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ú¯Ù„Ø§Ù…ÙˆØ±', '../uploads/763f85da0285d9a0c3a49071a7f723d1gelamoor.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ØŒÙ†Ø¨Ø´ Ø­Ø§Ù…Ø¯ Ø¬Ù†ÙˆØ¨ÛŒ 2ØŒÙ¾Ù„Ø§Ú© 78', 4, '-', '-', '', '', '', '', '', ''),
('studio_ielia', '37618855', '09155214104', NULL, '37618855', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ø§ÛŒÙ„ÛŒØ§', '../uploads/19b402a55c81e1776bd325aea033e2f8ieliaestodio.jpg', '', 'Ø³Ø¬Ø§Ø¯ 3ØŒÙ…ÛŒÙ„Ø§Ø¯ 12ØŒÙ¾Ù„Ø§Ú© 29', 4, 'Ù…Ø±Ø¶ÛŒÙ‡', 'Ù…Ø­Ù…Ø¯ÛŒ', '', '', '', '', '', ''),
('studio_janan', '38940507', '09350758004', NULL, '38940507', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ø¬Ø§Ù†Ø§Ù†', '../uploads/9d0f49a91a278a4cb666fbab52e176d6janan.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø´Ù‡ÛŒØ¯ ØµÛŒØ§Ø¯ Ø´ÛŒØ±Ø§Ø²ÛŒ 2/2ØŒÙ¾Ù„Ø§Ú© 87', 4, '-', '-', '', '', '', '', '', ''),
('studio_mani', '123456', '09330333217', NULL, '-', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ù…Ø§Ù†ÛŒ', '../uploads/a4291c4ca4d6957f5f67a30afa10c514mani.png', '', 'Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ Ø¨ÛŒÙ† Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ù‡Ø¯ÛŒ Ùˆ Ø±Ø³Ø§Ù„Øª Ù¾Ù„Ø§Ú© 267', 4, 'Ù†ÛŒÙ„ÙˆÙØ±', 'Ø­ÛŒØ¯Ø±ÛŒ', '', '', '', '', '', ''),
('studio_mashahir', '09155197055', '09155197055', NULL, '-', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ù…Ø´Ø§Ù‡ÛŒØ±', '../uploads/5f2948e13e6925f0ff9309424800a6aastudio-mashahir.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ù…Ù‡Ø¯ÛŒ 14ØŒØ¨Ø¹Ø¯ Ø§Ø² Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯ÙˆÙ…ØŒÙ…Ù‚Ø§Ø¨Ù„ Ø¨ÙˆØ³ØªØ§Ù† Ø³Ù…ÛŒÙ‡', 4, '-', '-', '', '', '', '', '', ''),
('studio_mehro', '38451661', '09155024818', NULL, '38451661', '', 'Ø¢ØªÙ„ÛŒÙ‡ Ù…Ù‡Ø±Ùˆ', '../uploads/b15b83d4894124e8d1611c642203b5a6studio-mehro.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø³Ù†Ø§Ø¨Ø§Ø¯ØŒØ¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 21 Ùˆ 23ØŒØ³Ø§Ø®ØªÙ…Ø§Ù† 257ØŒØ·Ø¨Ù‚Ù‡ 4ØŒÙˆØ§Ø­Ø¯9', 4, '-', '-', '', '', '', '', '', ''),
('studio_melodi', '38416886', '-', NULL, '38416886', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ù…Ù„ÙˆØ¯ÛŒ', '../uploads/ab555dc0f0f967c6ba81a8c082b92a19studio-melodi.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù…Ù„Ø§ØµØ¯Ø±Ø§ØŒÙ…Ù„Ø§ØµØ¯Ø±Ø§ 10ØŒÙ†Ø¨Ø´ Ø¯Ø§Ø¯Ú¯Ø± 7ØŒÙ¾Ù„Ø§Ú© 37', 4, '-', '-', '', '', '', '', '', ''),
('studio_nahid', '37677488', '09151164550', NULL, '37677488', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ù†Ø§Ù‡ÛŒØ¯', '../uploads/d1e9fd6bc91320c9dd261d55bdec5161studionahid.jpg', '', 'Ø®ÛŒØ§Ù… 10', 4, 'Ø³Ø¹ÛŒØ¯', 'ÙˆØ§Ø¹Ø¸ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('studio_nakhostin', '09153188175', '09153188175', NULL, '-', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ù†Ø®Ø³ØªÛŒÙ†', '../uploads/01013c118c887b171c375a101c87b553Studio-nakhostin.jpg', '', '-', 4, '-', '-', '', '', '', '', '', ''),
('studio_pendar', '37643823', '09369290987', NULL, '37643823', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ù¾Ù†Ø¯Ø§Ø±', '../uploads/58a64c49f42ed70ce18cbfc8f6f424bcpendar.jpg', '', '-', 4, '-', '-', '', '', '', '', '', ''),
('studio_ruzkhas', '38919624', '09128993035', NULL, '38919624', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ø±ÙˆØ² Ø®Ø§Øµ', '../uploads/091e2f227f8f7d4895e9690c2f87a3efrozkhas.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ù…Ø¹Ù„Ù…ØŒÙ†Ø¨Ø´ Ù…Ø¹Ù„Ù… 53ØŒÙ¾Ù„Ø§Ú© 91', 4, '-', '-', '', '', '', '', '', ''),
('studio_sahar_salari', '37600020', '09151077157', NULL, '37600020', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ Ø³Ø­Ø± Ø³Ø§Ù„Ø§Ø±ÛŒ', '../uploads/15f5af120136e62cdececd92ed901ac4studio-sahar-salari.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ­Ø¯ÙØ§ØµÙ„ Ù…ÛŒØ¯Ø§Ù† Ø¬Ø§Ù†Ø¨Ø§Ø² Ùˆ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ù…Ù‡Ø¯ÛŒØŒÙ¾Ù„Ø§Ú© 183', 4, 'Ø³Ø­Ø±', 'Ø³Ø§Ù„Ø§Ø±ÛŒ', '', '', '', '', '', ''),
('studio_taj', '36080900', '09159076577', NULL, '36080900', '', 'Ø§Ø³ØªÙˆØ¯ÛŒÙˆ ØªØ§Ø¬', '../uploads/f180a76c8a2195717976e0d1baa0d52dtaj.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¢Ø²Ø§Ø¯Ø´Ù‡Ø±ØŒÙ†Ø¨Ø´ Ø§Ø³ØªÙ‚Ù„Ø§Ù„ 7', 4, '-', '-', '', '', '', '', '', ''),
('super_gol', '38402075', '-', NULL, '38402075', '', 'Ù†Ù…Ø§ÛŒØ´Ú¯Ø§Ù‡ Ø³ÙˆÙ¾Ø±Ú¯Ù„', '../uploads/a3c8398bc7be5659acfdecb007f0444asuper-gol.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ø±Ø¶Ø§ 21', 20, '-', '-', '', '', '', '', '', ''),
('tach_torkiye', '38432290', '-', NULL, '38432290', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ ØªØ§Ú† ØªØ±Ú©ÛŒÙ‡', '../uploads/3636eeb41706e7fdc6e6cd3fd9e0f7c8toch.jpg', '', 'Ø¨ÛŒÙ† Ø³Ù†Ø§Ø¨Ø§Ø¯ 42 Ùˆ44', 37, '-', '-', '', '', '', '', '', ''),
('tak_tach', '38335680', '-', NULL, '38335680', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ ØªØ§Ú© ØªØ§Ú†', '../uploads/c4d887f816964fb244ba399ebed317e2tak-tuch.jpg', '', 'Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜ Ø·Ø¨Ù‚Ù‡ +2', 37, '-', '-', '', '', '', '', '', ''),
('takhtejamshid', '34324074', '09129375530', NULL, '051-34324074', '', 'ØªØ§Ù„Ø§Ø± ØªØ®Øª Ø¬Ù…Ø´ÛŒØ¯', '../uploads/7d9a860f758529636e0a8009eea49067takhte-jamshid.jpg', '', 'Ø´Ø§Ù†Ø¯ÛŒØ² Ø¨ÛŒÙ† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 3 Ùˆ 5 ', 13, 'Ù…Ø¨ÛŒÙ†', 'Ø¢Ù‚Ø§Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('tala_golestani', '36083788', '09155009690', NULL, '36083788', '', 'Ø·Ù„Ø§ÙØ±ÙˆØ´ÛŒ Ú¯Ù„Ø³ØªØ§Ù†ÛŒ', '../uploads/cd09af59b9715919e7105be77690e3c4golestani.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù†Ø¨Ø´ Ø§Ù…Ø§Ù…Øª 28', 38, '-', 'Ú¯Ù„Ø³ØªØ§Ù†ÛŒ', '', '', '', '', '', ''),
('talajat_khoram', '36056785', '-', NULL, '36056785', '', 'Ø·Ù„Ø§Ø¬Ø§Øª Ø®Ø±Ù…', '../uploads/093808b444473cdee30ea08adf83a09akhoram.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 1 Ùˆ3', 38, '-', 'Ù…Ø¹ØªÙ…Ø¯ÛŒ Ù†ÛŒØ§', '', '', '', '', '', ''),
('talajat_mirzaee', '36062189', '-', NULL, '36062189', '', 'Ø·Ù„Ø§Ø¬Ø§Øª Ù…ÛŒØ±Ø²Ø§ÛŒÛŒ', '../uploads/74cec79ce04573d44ad3f073d9755ed3mirzai.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø§Ù…Ø§Ù…Øª 1 Ùˆ3', 38, '-', 'Ù…ÛŒØ±Ø²Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('talajat_porakbar', '38648993', '09155008143', NULL, '38648993', '', 'Ø·Ù„Ø§Ø¬Ø§Øª Ù¾ÙˆØ± Ø§Ú©Ø¨Ø±', '../uploads/31075de25190c788fcf137d58628eabapor-akbar.jpg', '', 'Ù…Ø´Ù‡Ø¯- Ø¨ÛŒÙ† ÙÚ©ÙˆØ±ÛŒ 4 Ùˆ 6 Ù¾ 335', 38, '-', 'Ù¾ÙˆØ±Ø§Ú©Ø¨Ø±', '', '', '', '', '', ''),
('talajat_rezaeian', '38938659', '09159099284', NULL, '38938659', '', 'Ø·Ù„Ø§Ø¬Ø§Øª Ø±Ø¶Ø§Ø¦ÛŒØ§Ù†', '../uploads/ccfed2a6ac450e8e635565c2f74ada67rezayian.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ17Ùˆ19', 38, '-', 'Ø±Ø¶Ø§Ø¦ÛŒØ§Ù†', '', '', '', '', '', ''),
('talajat_sirin', '38648685', '09153116845', NULL, '38648685', '', 'Ø·Ù„Ø§Ø¬Ø§Øª Ø³ÛŒØ±ÛŒÙ†', '../uploads/61b7550c868adb201e4cad2c0d227aa9sirin.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ17Ùˆ19', 38, '-', '-', '', '', '', '', '', ''),
('talajat-vahid', '38680820', '09155081836', NULL, '38680820', '', 'Ø·Ù„Ø§Ø¬Ø§Øª ÙˆØ­ÛŒØ¯', '../uploads/de7d4b15740b3eab67a7c0d9d5fb4b5avahid.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ17Ùˆ19', 38, '-', 'Ø§Ø³Ù„Ø§Ù…ÛŒ', '', '', '', '', '', ''),
('talar_anahid', '38472436', '09153150380', NULL, '38472436', '', 'ØªØ§Ù„Ø§Ø± Ø¢Ù†Ø§Ù‡ÛŒØ¯', '../uploads/5f85cf58eb99baac474020802e5c363eanahid.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ú©ÙˆÙ‡Ø³Ù†Ú¯ÛŒ ØŒ Ù†Ø¨Ø´ Ú©ÙˆÙ‡Ø³Ù†Ú¯ÛŒ 32', 12, '-', 'Ø§Ø¨ÙˆØ°Ø±ÛŒØ§Ù†', '', '', '', '', '', ''),
('talar_anderia', '35593531', '-', NULL, '35593531', '', 'ØªØ§Ù„Ø§Ø± Ø¢Ù†Ø¯Ø±ÛŒØ§', '../uploads/fb5a1cb15bec7768153448461446b354anderia ok.jpg', '', 'Ø´Ø§Ù†Ø¯ÛŒØ² Ù…Ù‚Ø§Ø¨Ù„ Ù…Ø¯Ø±Ø³ 11ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø¯Ø±Ø®Øª Ø¨ÛŒØ¯', 12, '-', '-', '', '', '', '', '', ''),
('talar_aramis', '09153775722', '09153775722', NULL, '-', '', 'ØªØ§Ù„Ø§Ø± Ø¢Ø±Ø§Ù…ÛŒØ³', '../uploads/8769434fa0e73d9e7320e95130ddcf2faramis.jpg', '', 'Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¬Ø§Ø¯Ù‡ Ø´Ø§Ù†Ø¯ÛŒØ²ØŒ Ù…Ø¯Ø±Ø³ 1ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø¯ÙˆÙ… Ø³Ù…Øª Ú†Ù¾', 12, '-', 'Ø·Ø¨Ø§Ø·Ø¨Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('talar_armita', '35510240', '09152004300', NULL, '35510240', '', 'ØªØ§Ù„Ø§Ø± Ø±Ø³ØªÙˆØ±Ø§Ù† Ø§Ø±Ù…ÛŒØªØ§', '', '', 'Ø·Ø±Ù‚Ø¨Ù‡ Ù†Ø¨Ø´ Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 7', 12, '-', '-', '', '', '', '', '', ''),
('talar_atlasiye', '37114761', '09152003700', NULL, '051-37114761', '', 'ØªØ§Ù„Ø§Ø± Ùˆ Ø±Ø³ØªÙˆØ±Ø§Ù† Ø§Ø·Ù„Ø³ÛŒÙ‡', '../uploads/3d42cc4ce87dbd528f7d9fffe6056207atlasiye.jpg', '', 'Ø¬Ù†Ø¨ Ø§Ù„Ù…Ø§Ø³ Ø´Ø±Ù‚ Ù…Ø¬ØªÙ…Ø¹ ÙˆØµØ§Ù„ ØªØ§Ù„Ø§Ø± Ø§Ø·Ù„Ø³ÛŒÙ‡', 12, 'Ø³ÛŒØ¯Ù…Ù‡Ø¯ÛŒ', 'Ø³Ø§ØºØ±ÙˆØ§Ù†ÛŒØ§Ù†', '', '', '', '', '', ''),
('talar_dariush', '38448427', '-', NULL, '38448427', '', 'ØªØ§Ù„Ø§Ø± Ø¯Ø§Ø±ÛŒÙˆØ´', '../uploads/136d9ca2bd609316128e471ae491b637dariush.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯-Ø¨Ø¹Ø¯ Ø§Ø² Ù…ÛŒØ¯Ø§Ù† ÙÙ„Ø³Ø·ÛŒÙ†', 24, '-', '-', '', '', '', '', '', ''),
('talar_ehsan', '38793133', '09153143234', NULL, '38793133', '', 'ØªØ§Ù„Ø§Ø± Ùˆ Ø±Ø³ØªÙˆØ±Ø§Ù† Ø§Ø­Ø³Ø§Ù†', '../uploads/307c394d2d02d5ad417735faff092fdcehsan.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù¾ÛŒØ±ÙˆØ²ÛŒ Ø¨ÛŒÙ†  Ù¾ÛŒØ±ÙˆØ²ÛŒ 8 Ùˆ 10', 12, '-', 'Ø¨Ø§ØºØ¨Ø§Ù†', '', '', '', '', '', ''),
('talar_erenvip', '35593549', '09151021945', NULL, '35593549', '', 'ØªØ§Ù„Ø§Ø± Ø§ÛŒØ±Ù†', '../uploads/904eafa487baf9081ffaf767f6fc0cccvip-eren.jpg', '', 'Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¬Ø§Ø¯Ù‡ Ø´Ø§Ù†Ø¯ÛŒØ² Ù†Ø¨Ø´ Ù…Ø¯Ø±Ø³ 1', 12, '-', 'Ù…Ø¹ÛŒÙ† Ø¯Ø±Ø¨Ø§Ø±ÛŒ', '', '', '', '', '', ''),
('talar_farhad', '37689150', '09150043212', NULL, '37689150', '', 'ØªØ§Ù„Ø§Ø± ÙØ±Ù‡Ø§Ø¯ ', '../uploads/a0ea5347a70fb153640f7053fffa5c75farhad.jpg', '', 'Ø³Ø¬Ø§Ø¯ØŒ ÙØ±Ù‡Ø§Ø¯ ØŒ ÙØ±Ù‡Ø§Ø¯ 24', 12, '-', 'Ø´Ø§Ú©Ø±ÛŒ', '', '', '', '', '', ''),
('talar_homa', '35593556', '09153134317', NULL, '35593556', '', 'ØªØ§Ù„Ø§Ø± Ùˆ Ø¨Ø§ØºØ³Ø±Ø§ÛŒ Ù‡Ù…Ø§', '../uploads/a39c5a36072da115722afcd38315b902homa.jpg', '', 'Ø´Ø§Ù†Ø¯ÛŒØ²ØŒ Ø±Ùˆ Ø¨Ù‡ Ø±ÙˆÛŒ Ù…Ø¯Ø±Ø³ 11ØŒ Ø®ÛŒØ§Ø¨Ø§Ù† Ø¯Ø±Ø®Øª Ø¨ÛŒØ¯', 12, '-', '-', '', '', '', '', '', ''),
('talar_ketring_parnian', '38901401', '09152003345', NULL, '38901401', '', 'ØªØ§Ù„Ø§Ø± Ù¾Ø°ÛŒØ±Ø§ÛŒÛŒ Ùˆ Ú©ØªØ±ÛŒÙ†Ú¯ Ù¾Ø±Ù†ÛŒØ§Ù†', '../uploads/337a587bd1e2a3f8c8207795dfa75dbaparnian.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù…Ø¹Ù„Ù… 67 Ùˆ 69Ù‚Ø¨Ù„ Ø§Ø² Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ ', 24, '-', 'Ø´ÛŒØ±ÛŒ', '', '', '', '', '', ''),
('talar_khayam', '37646056', '09153100406', NULL, '37646056', '', 'ØªØ§Ù„Ø§Ø± Ø®ÛŒØ§Ù…', '../uploads/931e31cc4971f09333863f284d777613khayam.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ù… 10-Ø§ÙˆÙ„ Ø²Ù†Ø¨Ù‚', 24, '-', '-', '', '', '', '', '', ''),
('talar_mirdamad', '38912177', '09152399959', NULL, '38912177', '', 'ØªØ§Ù„Ø§Ø± Ù…ÛŒØ±Ø¯Ø§Ù…Ø§Ø¯', '../uploads/6cf00e03db6ee6186ec0b44ecb4c788fmirdamad.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ù‡ÙØª ØªÛŒØ± ØŒ Ù…ÛŒØ¯Ø§Ù† Ù‡Ø´ØªØµØ¯ØŒ Ø¬Ù†Ø¨ Ø¨Ø§Ù†Ú© Ù…Ù„ÛŒ', 12, '-', 'Ø¯Ø§ÙˆØ±ÛŒ - Ú©Ø§Ù…ÙˆÛŒÛŒ', '', '', '', '', '', ''),
('talar_nafis', '09358854344', '09358854344', NULL, '-', '', 'Ø¨Ø§Øº ØªØ§Ù„Ø§Ø± Ù†ÙÛŒØ³', '../uploads/8bb5ded63d5fb56c27f3477daa803e95nafas.jpg', '', 'Ø·Ø±Ù‚Ø¨Ù‡ØŒ Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 47', 13, '-', '-', '', '', '', '', '', ''),
('talar_pantea', '38428508', '09125868543', NULL, '38428508', '', 'ØªØ§Ù„Ø§Ø± Ù¾Ø§Ù†ØªÙ‡ Ø¢', '../uploads/4170b182ac3769560b93ee60b078aa8fpantea.jpg', '', 'Ø®ÛŒØ§Ø¨Ø§Ù† Ø³Ù†Ø§Ø¨Ø§Ø¯ØŒ Ø­Ø¯ ÙØ§ØµÙ„ Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø±Ø§Ù‡Ù†Ù…Ø§ÛŒÛŒ Ùˆ Ú©Ù„Ø§Ù‡Ø¯ÙˆØ² ØŒ Ù†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 52', 12, '-', 'Ø¯Ø§ÙˆØ±ÛŒ', '', '', '', '', '', ''),
('talar_parmis', '35593506', '09151100074', NULL, '35593506', '', 'Ø¨Ø§ØºØ³Ø±Ø§ÛŒ Ù¾Ø§Ø±Ù…ÛŒØ³', '../uploads/d42c0be93e320912c07a43dfb86f6527parmis.jpg', '', 'Ø·Ø±Ù‚Ø¨Ù‡ Ø¨ÛŒÙ† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 31 Ùˆ 33', 13, '-', '-', '', '', '', '', '', ''),
('talar_royal_talaie', '0915450071', '0915450071', NULL, '-', '', 'ØªØ§Ù„Ø§Ø± Ø±ÙˆÛŒØ§Ù„ Ø·Ù„Ø§ÛŒÛŒ', '../uploads/1cc659e34d82bef7f00f2a78c73f8fb4royal-talaie.jpg', '', 'Ù…Ø´Ù‡Ø¯-ÙÙ„Ú©Ù‡ Ù¾Ø§Ø±Ú©-Ù†Ø¨Ø´ Ø¢Ø²Ø§Ø¯ÛŒ 1', 24, '-', 'Ø¹Ù„ÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('talar_saran', '09371479893', '09371479893', NULL, '-', '', 'ØªØ§Ù„Ø§Ø± Ø³Ø±Ø§Ù†', '../uploads/8f12228f1ad7dc7dff35d1d1df43ae6bsaran.jpg', '', 'Ø·Ø±Ù‚Ø¨Ù‡ Ø¨ÛŒÙ† Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 1 Ùˆ 3', 12, '-', 'ÙÛŒØ§Ø¶ÛŒ', '', '', '', '', '', ''),
('talar_sibarg', '38401335', '-', NULL, '38401335', '', 'ØªØ§Ù„Ø§Ø± Ø³ÛŒ Ø¨Ø±Ú¯', '../uploads/72afe99131777b6aa530487495ed499asibarg.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯-Ù†Ø¨Ø´ Ø±Ø¶Ø§-Ù‡ØªÙ„ Ø³ÛŒ Ø¨Ø±Ú¯', 24, '-', '-', '', '', '', '', '', ''),
('talar_sikaj', '37624195', '09153107460', NULL, '37624195', '', 'ØªØ§Ù„Ø§Ø± Ø³ÛŒ Ú©Ø§Ø¬', '../uploads/6a78bd136ef36741c844add4a7e7bd66sikaj.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ù… 10-Ø§ÙˆÙ„ Ø²Ù†Ø¨Ù‚', 24, '-', '-', '', '', '', '', '', ''),
('talar_soltani', '35511336', '09153027648', NULL, '35511336', '', 'ØªØ§Ù„Ø§Ø± Ø±Ø³ØªÙˆØ±Ø§Ù† Ø³Ù„Ø·Ø§Ù†ÛŒ', '../uploads/f99e141a6a25f9b61b3b50fb0c88a069soltani.jpg', '', 'Ø·Ø±Ù‚Ø¨Ù‡ Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 11', 12, '-', 'Ø±Ø§Ù…ÛŒØ§Ù†', '', '', '', '', '', ''),
('talar_tiraje', '09152002424', '09152002424', NULL, '-', '', 'ØªØ§Ù„Ø§Ø± ØªÛŒØ±Ø§Ú˜Ù‡', '', '', 'Ø§Ø¨ØªØ¯Ø§ÛŒ Ø¬Ø§Ø¯Ù‡ Ø´Ø§Ù†Ø¯ÛŒØ² Ø§ÙˆÙ„ÛŒÙ† Ù¾Ù„ Ø¹Ø§Ø¨Ø± Ù¾ÛŒØ§Ø¯Ù‡ Ø­Ø§Ø´ÛŒÙ‡ Ø¬Ø§Ø¯Ù‡', 13, 'ÙˆØ­ÛŒØ¯', 'ØµÙ„ÙˆØ§ØªÛŒ', '', '', '', '', '', ''),
('talar_vesal', '35593631', '09151009851', NULL, '35593631', '', 'Ø¨Ø§Øº ØªØ§Ù„Ø§Ø± ÙˆØµØ§Ù„', '../uploads/4259ccda93837ae8161660ca677514d5vesal.jpg', '', 'Ø´Ø§Ù†Ø¯ÛŒØ² Ù…Ù‚Ø§Ø¨Ù„ Ù…Ø¯Ø±Ø³ 11ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø¯Ø±Ø®Øª Ø¨ÛŒØ¯', 13, '-', '-', '', '', '', '', '', ''),
('talar_yas', '38401698', '-', NULL, '38401698', '', 'ØªØ§Ù„Ø§Ø± ÛŒØ§Ø³', '../uploads/6145e25da7066c0db56491079c513621yas.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø®ÛŒØ§Ø¨Ø§Ù† Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯-Ø¨ÛŒÙ† Ø¨Ø¹Ø«Øª 9 Ùˆ 11', 24, '-', 'Ø§Ù…ÛŒØ±ÛŒ', '', '', '', '', '', ''),
('talar_zomorod', '34232405', '09153858344', NULL, '34232405', '', 'Ø¨Ø§Øº ØªØ§Ù„Ø§Ø± Ù…Ø¬Ù„Ù„ Ø²Ù…Ø±Ø¯', '../uploads/060230192e84388a03b1309a42be5c54zomorod.jpg', '', 'Ú©Ù…Ø±Ø¨Ù†Ø¯ÛŒ Ø·Ø±Ù‚Ø¨Ù‡ Ø¨ÛŒÙ† Ø§Ù…Ø§Ù… Ø®Ù…ÛŒÙ†ÛŒ 9 Ùˆ 11', 13, '-', 'ØºÙ„Ø§Ù…ÛŒ', '', '', '', '', '', ''),
('talar-mirdamad', '38912177', '09152399949', NULL, '38912177', '', 'ØªØ§Ù„Ø§Ø± Ù¾Ø°ÛŒØ±Ø§ÛŒÛŒ Ù…ÛŒØ±Ø¯Ø§Ù…Ø§Ø¯', '../uploads/3467d6d60875c53767cf59b81400b9a1mirdamad.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ù…ÛŒØ¯Ø§Ù† ÙÚ©ÙˆØ±ÛŒ&#40;Ù‡Ø´ØªØµØ¯&#41;Ø¬Ù†Ø¨ Ø¨Ø§Ù†Ú© Ù…Ù„ÛŒ', 24, '-', 'Ú©Ø§Ù…ÙˆÛŒÛŒ-Ø¯Ø§ÙˆØ±ÛŒ', '', '', '', '', '', ''),
('talare_melal', '34285050', '09155055406', NULL, '34285050', '', 'ØªØ§Ù„Ø§Ø± Ù…Ù„Ù„', '../uploads/0202c8deb7134e0ecfee299f22db075aphoto_2019-01-02_21-22-25.jpg', '', 'Ø´Ø§Ù†Ø¯ÛŒØ² Ù†Ø¨Ø´ Ø§Ù…Ø§Ù… Ø±Ø¶Ø§ 31/1', 12, 'ØµØ§Ø¯Ù‚', 'Ø¹Ø¨Ø¯ÛŒ', '', '', '', '', '', ''),
('tanc_toni', '38927089', '-', NULL, '38927089', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ ØªØ§Ù†Ø³ÛŒ ØªÙˆÙ†ÛŒ', '../uploads/5e86ac48dd653912b33e69934eeafd25tanci-toni].jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨Ø±Ø¬ Ø¢Ø±Ù…ÛŒØªØ§Ú˜-Ø·Ø¨Ù‚Ù‡ Ø¯ÙˆÙ…', 28, '-', '-', '', '', '', '', '', ''),
('tashrifat', '34253832', '09032938005', NULL, '34253832', '', 'Ù…Ø¬Ù…ÙˆØ¹Ù‡ Ù¾Ø°ÛŒØ±Ø§ÛŒÛŒ ØªØ´Ø±ÛŒÙØ§Øª', '../uploads/cd4d13934c898a11d6976a122f8eb8a8tashrifat.jpg', '', 'Ø·Ø±Ù‚Ø¨Ù‡ Ù†Ø±Ø³ÛŒØ¯Ù‡ Ø¨Ù‡ Ø¬Ø§ØºØ±Ù‚', 12, '-', '-', '', '', '', '', '', ''),
('tashrifat_behesht', '36075097', '09155156802', NULL, '36075097', '', 'ØªØ´Ø±ÛŒÙØ§Øª Ø¨Ù‡Ø´Øª', '../uploads/77a0849248ff5016359abb4f524732eebehesht.jpg', '', 'Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯ Ø¨ÛŒÙ† Ø±Ø¶Ø§ 9 Ùˆ 11', 15, '-', 'Ø¹Ù„ÙˆÛŒ', '', '', '', '', '', ''),
('tashrifat_bozorgmehr', '37619442', '09151110243', NULL, '37619442', '', 'Ú¯Ø±ÙˆÙ‡ ØªØ´Ø±ÛŒÙØ§Øª Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±', '../uploads/269a5c2a74f11142d9ae6fdb502850a5bozorgmehr.jpg', '', 'Ø³Ø¬Ø§Ø¯ Ù…Ø¬ØªÙ…Ø¹ Ø¨Ø²Ø±Ú¯Ù…Ù‡Ø±', 15, '-', '-', '', '', '', '', '', ''),
('tashrifat_elman', '36070975', '09152453310', NULL, '36070975', '', 'ØªØ´Ø±ÛŒÙØ§Øª Ø§Ù„Ù…Ø§Ù†', '../uploads/38d1f1b86faf48215e8769fbf6e60885eleman.jpg', '', 'Ø¨ÛŒÙ† Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² Ùˆ Ø¯Ø§Ù†Ø´Ø¬Ùˆ', 15, '-', 'ØµØ§Ø¯Ù‚ÛŒ', '', '', '', '', '', ''),
('tashrifat_khatamsharif', '38693836', '09155179827', NULL, '38693836', '', 'ØªØ´Ø±ÛŒÙØ§Øª Ø®Ø§ØªÙ… Ø´Ø±ÛŒÙ', '../uploads/b093b4b0a53cd70dd4741310f6b35604khatam-sharif.jpg', '', 'Ø¨ÛŒÙ† ÙˆÚ©ÛŒÙ„ Ø¢Ø¨Ø§Ø¯ 47 Ùˆ 49', 15, '-', 'Ù…ØµØ·ÙÛŒ Ø²Ø§Ø¯Ù‡', '', '', '', '', '', ''),
('tashrifat_samadi', '38925054', '09155005989', NULL, '38925054', '', 'ØªØ´Ø±ÛŒÙØ§Øª ØµÙ…Ø¯ÛŒ', '../uploads/229ed6de6333a35db58afba3105db61dsamadi.jpg', '', 'Ù†Ø¨Ø´ Ø³ÛŒØ¯Ø±Ø¶ÛŒ 13', 15, '-', 'samadian', '', '', '', '', '', ''),
('tavana', '36091682', '-', NULL, '36091682', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ ØªÙˆØ§Ù†Ø§', '../uploads/c61722a9e43906231a4da75f38379a27tavana.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ†Ø¨Ø´ Ù…Ø¹Ù„Ù… 12', 34, '-', 'ØªÙˆØ§Ù†Ø§', '', '', '', '', '', ''),
('taze_gol_vip', '09155104610', '09155104610', NULL, '-', '', 'ØªØ§Ø²Ù‡ Ú¯Ù„ vip', '../uploads/f3a513ea7ffb343f1615ab63d0c778cctaze-go;-vip.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ø¨Ø§Ù† Ø³Ù†Ø§Ø¨Ø§Ø¯ Ù†Ø¨Ø´ Ø³Ù†Ø§Ø¨Ø§Ø¯ 59', 20, 'Ø¹Ù„ÛŒ', 'Ø·Ø¨Ø§Ø·Ø¨Ø§ÛŒÛŒ', '', '', '', '', '', ''),
('tazenat_taban', '38680884', '09153033967', NULL, '38680884', '', 'ØªØ²Ø¦ÛŒÙ†Ø§Øª ØªØ§Ø¨Ø§Ù†', '../uploads/473a51aa748ae9b52e0c96807de3cffftaban.jpg', '', 'Ø¨ÛŒÙ† Ø¯Ø§Ù†Ø´Ø¬Ùˆ 4 Ùˆ 6', 33, '-', 'Ø´Ø±Ú¯Ù„Ø¯ÛŒ', '', '', '', '', '', ''),
('unic', '36020511', '09132664662', NULL, '36020511', '', 'Ù¾ÛŒØ±Ø§ÛŒØ´ ÛŒÙˆÙ†ÛŒÚ©', '../uploads/70a811decc9ed6eb4dfde92a4c00661euniq-styler.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯ Ø¨ÛŒÙ† Ø­Ø§Ù…Ø¯ 10 Ùˆ 12', 17, '-', 'Ø¹Ø¨Ø¯Ø§Ù„Ù„Ù‡ÛŒ', '', '', '', '', '', ''),
('vaghte_shirini', '38908532', '-', NULL, '38908532', '', 'ÙˆÙ‚Øª Ø´ÛŒØ±ÛŒÙ†ÛŒ', '../uploads/f037e8b6b6a4a0e782a7d4acad1d1fafvaghte-shirini.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø¨ÛŒÙ† Ù¾ÛŒØ±ÙˆØ²ÛŒ 70 Ùˆ 72', 19, '-', '-', '', '', '', '', '', ''),
('viogsa', '37610518', '09359915476', NULL, '37610518', '', 'Ø³Ø§Ù„Ù† ÙˆÛŒÙˆÚ¯ Ø³Ø§', '../uploads/bf9851d3e2eb74432afdd6e1e5f8db73viogsa.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ Ø¨ÛŒÙ† Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø¨Ù‡Ø§Ø± Ùˆ Ù…ÛŒØ¯Ø§Ù† Ø¬Ø§Ù†Ø¨Ø§Ø² Ù¾Ù„Ø§Ú© 278', 1, 'Ù†ÙÛŒØ³Ù‡ ', 'ØºÛŒÙˆØ±', '', '', '', '', '', ''),
('vip_men', '38689262', '-', NULL, '38689262', '', 'vipmen', '../uploads/37423f06af35d1e6a18bc7f2ea7c6358vip-men.jpg', '', 'Ù‡ØªÙ„ Ù¾Ø§Ø±Ø³ Ø¯Ø§Ø®Ù„ Ù„Ø§Ø¨ÛŒ Ù¾Ù„Ø§Ú© 25', 16, 'Ø§ÛŒÙ…Ø§Ù†', 'Ù‚Ù†Ø§ÙˆÛŒØ²Ú†ÛŒ', '', '', '', '', '', ''),
('virakish', '91001854', '09128449566', NULL, '91001854', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ ÙˆÛŒØ±Ø§Ú©ÛŒØ´', '../uploads/d0eb0d660bbfc6d6f6da90be5e8e6db7virakish.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒÙ‡Ø§Ø´Ù…ÛŒÙ‡ØŒÙ…Ø¬ØªÙ…Ø¹ Ø¢Ø¨Ø§Ù† Ø·Ø¨Ù‚Ù‡ Ù¾Ø§ÛŒÛŒÙ†', 34, '-', '-', '', '', '', '', '', ''),
('vmf_alman', '09153115997', '09153115997', NULL, '-', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ ÙˆÛŒ Ø§Ù… Ø§Ù Ø§Ù„Ù…Ø§Ù†', '../uploads/6cf9f54255ccd3c679c78d2ae4c5763fvmf.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ®ÛŒØ§Ù… Ø¬Ù†ÙˆØ¨ÛŒ 11', 28, '-', '-', '', '', '', '', '', ''),
('yasingasht', '38652666', '09105304001', NULL, '38652666', '', 'Ø®Ø¯Ù…Ø§Øª Ù…Ø³Ø§ÙØ±ØªÛŒ ÛŒØ§Ø³ÛŒÙ† Ú¯Ø´Øª', '../uploads/74378f866e31f9464bfe795f8e3c97c0yasin-gasht.jpg', '', 'Ù†Ø¨Ø´ Ø¯Ø§Ù†Ø´Ø¬Ùˆ 28', 26, '-', '-', '', '', '', '', '', ''),
('yektasir', '36036010', '09156004946', NULL, '36036010', '', 'ÛŒÚ©ØªØ§Ø³ÛŒØ±', '../uploads/910d6a5b7c7bc9480835392f4fd1c818yekta-seir.jpg', '', 'Ø¨ÛŒÙ† Ø³ÛŒØ¯Ø±Ø¶ÛŒ 31 Ùˆ 33', 26, '-', 'Ø¹Ø¯Ø§Ù„ØªÛŒ', '', '', '', '', '', ''),
('zanjire_sam', '36071062', '-', NULL, '36071062', '', 'ÙØ±ÙˆØ´Ú¯Ø§Ù‡ Ø²Ù†Ø¬ÛŒØ±Ù‡ Ø§ÛŒ Ø³Ø§Ù…', '../uploads/54205495bd4a898eaa3de8017c8ab499sam.jpg', '', 'Ù…Ø´Ù‡Ø¯ØŒØ¨ÛŒÙ† Ù…Ø¹Ù„Ù… 4 Ùˆ 6Ù¾Ù„Ø§Ú© 104/1', 28, '-', '-', '', '', '', '', '', ''),
('zibaee_faramehr', '38694072', '09153256757', NULL, '38694072', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ ÙØ±Ø§Ù…Ù‡Ø±', '../uploads/5f38ec212001527e8ddb7e5a77873bdffaramehr.jpg', '', 'Ù‡ÙØª ØªÛŒØ± 20 Ù¾Ù„Ø§Ú© 4', 1, 'Ø³Ø­Ø±', 'Ù…Ù†ÙØ±Ø¯', '', '', '', '', '', ''),
('zibaee_fra', '37683690', '09354119279', NULL, '37683690', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ ÙØ±Ø§', '../uploads/920a6df6efb393c6c0a3a2e235b23933fara.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± ÙØ±Ø¯ÙˆØ³ÛŒ Ø¨ÛŒÙ† ÙØ±Ø¯ÙˆØ³ÛŒ 20 Ùˆ 22 Ù¾Ù„Ø§Ú© 456', 1, 'Ø«Ø±ÛŒØ§', 'Ø´Ú©Ø±ÛŒ Ø²Ø§Ø¯Ù‡ Ø¹Ù…Ø±Ø§Ù†', '', '', '', '', '', ''),
('zibayi_atefe_fakur', '38457607', '09359753867', NULL, '38457607', '', 'Ø³Ø§Ù„Ù† Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø¹Ø§Ø·ÙÙ‡ ÙÚ©ÙˆØ±', '../uploads/932283748fdbf2ce85f52994de92308eatefefakur.jpg', '', 'ÙÙ„Ø³Ø·ÛŒÙ† 21 -Ù¾Ù„Ø§Ú© 43', 1, 'Ø¹Ø§Ø·ÙÙ‡', 'ÙÚ©ÙˆØ±', '', '', '', '', '', ''),
('zibayi_giva', '38842805', '09129617620', NULL, '38842805', '', 'Ø³Ø§Ù„Ù† Ø²ÛŒØ¨Ø§ÛŒÛŒ Ú¯ÛŒÙˆØ§', '', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ 11 Ú†Ù‡Ø§Ø±Ø±Ø§Ù‡ Ø§ÙˆÙ„ Ø³Ù…Øª Ø±Ø§Ø³ØªØŒ Ù†Ø¨Ø´ ØµØ§Ø±Ù…ÛŒ 23/18', 1, 'Ø¨Ù‡Ø§Ø±Ù‡', 'ÙØ®Ø§Ø±', '', '', '', '', '', ''),
('zibayi_iede_beauty', '38832388', '09309002371', NULL, '38832388', '', 'Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø§ÛŒØ¯Ù‡ Ø¨ÛŒÙˆØªÛŒ', '../uploads/214b923f90b690255339f8489f9b1ca3iedebeauty.jpg', '', 'Ù‡Ø§Ø´Ù…ÛŒÙ‡ 3 Ù¾Ù„Ø§Ú© 14', 1, 'Ø§Ù„Ù†Ø§Ø²', 'Ù…Ù†ØµÙˆØ±ÛŒ', '', '', '', '', '', ''),
('zibayi_nasrin_asadi', '36061060', '09153128058', NULL, '36061060', '', 'Ø³Ø§Ù„Ù† Ø²ÛŒØ¨Ø§ÛŒÛŒ Ù†Ø³Ø±ÛŒÙ† Ø§Ø³Ø¯ÛŒ', '../uploads/e39a1d60de91f755866be1340d4c75d4nasrinasadi.jpg', '', 'Ø¨Ù„ÙˆØ§Ø± Ø³Ø¬Ø§Ø¯- Ø³Ø¬Ø§Ø¯ 17-Ù¾Ù„Ø§Ú© 22', 1, 'Ù†Ø³Ø±ÛŒÙ†', 'Ø§Ø³Ø¯ÛŒ', '', '', '', '', '', ''),
('zibayi_shamim', '38790469', '09153058439', NULL, '38790469', '', 'Ø³Ø§Ù„Ù† Ø²ÛŒØ¨Ø§ÛŒÛŒ Ø´Ù…ÛŒÙ…', '../uploads/41d5a7545bef0bc10bd17b44dbed958ashamim.jpg', '', 'Ù†Ø¨Ø´ Ù¾ÛŒØ±ÙˆØ²ÛŒ 10', 1, 'Ù…Ø±ÛŒÙ…', 'Ù…Ø¬ØªÙ‡Ø¯ÛŒ', '', '', '', '', '', ''),
('zohre_seyedi', '38417700', '-', NULL, '38417700', '', 'Ø¯Ú©ØªØ± Ø²Ù‡Ø±Ù‡ Ø³ÛŒØ¯ÛŒ Ù…ØªØ®ØµØµ Ù¾ÙˆØ³Øª Ùˆ Ù…Ùˆ', '../uploads/e25f39dfcf6acf231fe043ca85e3f59adr-seyedi.jpg', '', 'Ù…Ø´Ù‡Ø¯-Ø§Ø­Ù…Ø¯Ø¢Ø¨Ø§Ø¯-Ø¹Ø§Ø±Ù2-Ù¾Ù„Ø§Ú©9-Ø³Ø§Ø®ØªÙ…Ø§Ù† ÙØ§Ø±Ø§Ø¨ÛŒ', 27, 'Ø²Ù‡Ø±Ù‡', 'Ø³ÛŒØ¯ÛŒ', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `aghsat`
--
ALTER TABLE `aghsat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asnaf`
--
ALTER TABLE `asnaf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bazaryab`
--
ALTER TABLE `bazaryab`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `comment_user`
--
ALTER TABLE `comment_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_cat`
--
ALTER TABLE `content_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_menu`
--
ALTER TABLE `item_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jashnvare`
--
ALTER TABLE `jashnvare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jashnvare_slider`
--
ALTER TABLE `jashnvare_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kala`
--
ALTER TABLE `kala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khadamat`
--
ALTER TABLE `khadamat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_product`
--
ALTER TABLE `offer_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pack`
--
ALTER TABLE `pack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packrow`
--
ALTER TABLE `packrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_user`
--
ALTER TABLE `public_user`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `related_links`
--
ALTER TABLE `related_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_senf`
--
ALTER TABLE `sub_senf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aghsat`
--
ALTER TABLE `aghsat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `asnaf`
--
ALTER TABLE `asnaf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comment_user`
--
ALTER TABLE `comment_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `content_cat`
--
ALTER TABLE `content_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_menu`
--
ALTER TABLE `item_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jashnvare`
--
ALTER TABLE `jashnvare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `jashnvare_slider`
--
ALTER TABLE `jashnvare_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kala`
--
ALTER TABLE `kala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `khadamat`
--
ALTER TABLE `khadamat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `offer_product`
--
ALTER TABLE `offer_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pack`
--
ALTER TABLE `pack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `packrow`
--
ALTER TABLE `packrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `related_links`
--
ALTER TABLE `related_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_senf`
--
ALTER TABLE `sub_senf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
