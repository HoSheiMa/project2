-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 25 يوليو 2019 الساعة 06:30
-- إصدار الخادم: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_side`
--

-- --------------------------------------------------------

--
-- بنية الجدول `last_post`
--

DROP TABLE IF EXISTS `last_post`;
CREATE TABLE IF NOT EXISTS `last_post` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- إرجاع أو استيراد بيانات الجدول `last_post`
--

INSERT INTO `last_post` (`id`) VALUES
(43);

-- --------------------------------------------------------

--
-- بنية الجدول `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `story_title` text COLLATE utf16_bin NOT NULL,
  `story_txt` text COLLATE utf16_bin NOT NULL,
  `likes` text COLLATE utf16_bin NOT NULL,
  `autokey` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf16_bin NOT NULL,
  `date` text COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`autokey`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- إرجاع أو استيراد بيانات الجدول `posts`
--

INSERT INTO `posts` (`id`, `id_post`, `story_title`, `story_txt`, `likes`, `autokey`, `name`, `date`) VALUES
(1, 26, 'stor2', 'body 2', '[\"814514\",\"1\"]', 1, 'admin', 'October 20, 2018, 10:43 pm'),
(814514, 29, 'new post from admin2000', ' admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 Â admin2000 ', '{\"1\":\"1\",\"2\":\"676055\",\"0\":\"1\",\"0\":\"1\"}', 2, 'admin2000', 'October 21, 2018, 12:34 am'),
(1, 30, 'test1', 'We have finished this work for you by love ..', '[\"1\"]', 3, 'admin', 'October 26, 2018, 6:31 am'),
(1, 31, 'new story', 'new storynew story', '[\"1\"]', 4, 'admin', 'November 2, 2018, 4:56 pm'),
(1, 32, 'new story', 'new story', '[]', 5, 'admin', 'November 2, 2018, 4:56 pm'),
(1, 33, 'new story', 'new story', '[]', 6, 'admin', 'November 2, 2018, 4:56 pm'),
(1, 34, 'new story', 'new storynew storynew storynew story', '[]', 7, 'admin', 'November 2, 2018, 4:56 pm'),
(1, 35, 'new story', 'new storynew storynew storynew storynew storynew storynew storynew story', '[\"1\"]', 8, 'admin', 'November 2, 2018, 4:56 pm'),
(1, 36, 'new storynew story', 'new storynew storynew storynew story', '[\"1\"]', 9, 'admin', 'November 2, 2018, 4:56 pm'),
(1, 37, 'uhuihuhuihiuhui', ';f,s;lf,as;l', '[]', 10, 'admin', 'November 24, 2018, 5:12 am'),
(1, 42, 'new story title', 'story body ', '[]', 15, 'admin', 'February 27, 2019, 8:50 am'),
(1, 40, 'long', 'longlonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglonglong', '[\"1\"]', 13, 'admin', 'November 26, 2018, 1:29 am'),
(1, 41, 'title2', 'body', '[]', 14, 'admin', 'November 27, 2018, 6:51 pm');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `name` text COLLATE utf16_bin NOT NULL,
  `username` text COLLATE utf16_bin NOT NULL,
  `password` text COLLATE utf16_bin NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`name`, `username`, `password`, `id`) VALUES
('admin', 'admin', '1234', 1),
('admin12345', 'admin12345', 'admin12345', 311492),
('admin12345', 'admin12345', 'admin12345', 561218),
('admin2000', 'admin2000', 'admin2000', 814514),
('admin1234567', 'admin1234567', 'admin1234567', 676055);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
