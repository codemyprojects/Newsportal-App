-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2014 at 02:17 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mashik_news_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `news_admin`
--

CREATE TABLE IF NOT EXISTS `news_admin` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `news_admin`
--

INSERT INTO `news_admin` (`aid`, `uname`, `pwd`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_articles`
--

CREATE TABLE IF NOT EXISTS `news_articles` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) NOT NULL,
  `adesc` text NOT NULL,
  `status` int(1) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `news_articles`
--

INSERT INTO `news_articles` (`aid`, `atitle`, `adesc`, `status`, `pid`) VALUES
(14, 'computer', 'sdfsdfdsfsdfdsfdsfsd', 0, 28),
(15, 'electronic', 'fsdfasdfsdfsdfsdf ', 0, 28);

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE IF NOT EXISTS `news_category` (
  `catid` int(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) NOT NULL,
  `catdesc` text NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `news_category`
--

INSERT INTO `news_category` (`catid`, `catname`, `catdesc`, `status`) VALUES
(4, 'GMu', 'dfdsfsd', 0),
(5, 'Manisha Upreti', 'hi me manisha', 0),
(6, 'M L G', 'all about the two parts of same heart', 1),
(7, 'entertainment', 'dfsdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_gallery`
--

CREATE TABLE IF NOT EXISTS `news_gallery` (
  `gid` int(4) NOT NULL AUTO_INCREMENT,
  `imgname` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `location` enum('h','p') NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `news_gallery`
--

INSERT INTO `news_gallery` (`gid`, `imgname`, `caption`, `location`, `status`) VALUES
(14, 'img1.jpg', 'nirmala', 'p', 1),
(17, 'Penguins.jpg', '323', 'p', 1),
(18, 'img2.jpg', 'cc', 'h', 1),
(19, 'img3.jpg', 'manisha', 'h', 1),
(20, 'img4.jpg', 'ganesh', 'h', 1),
(22, 'DSC02110.JPG', 'f', 'p', 1),
(24, '4.jpg', 'p', 'p', 1),
(25, 'DSC01772.JPG', 'cc', 'p', 1),
(26, 'DSC01042.jpg', 'cf', 'p', 1),
(27, 'DSC01977.JPG', 'fdf', 'p', 0),
(28, 'select.jpg', 'rrrtr', 'p', 1),
(29, 'DSC01992.JPG', 'fdffd', 'p', 1),
(30, 'DSC01972.JPG', 's', 'p', 1),
(31, 'DSC02067.JPG', 'fq', 'p', 1),
(33, 'DSC01737.JPG', 'a', 'p', 0),
(34, 'DSC01796.JPG', 'd', 'p', 1),
(35, 'DSC01775.JPG', 'p', 'p', 0),
(36, 'DSC01744.JPG', 'j', 'p', 1),
(40, 'DSC02039.JPG', 'awq', 'p', 0),
(41, 'Lighthouse.jpg', 'fg', 'h', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_inquiry`
--

CREATE TABLE IF NOT EXISTS `news_inquiry` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status` enum('new','junk','following','cashed') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `news_inquiry`
--

INSERT INTO `news_inquiry` (`id`, `cname`, `email`, `phone`, `message`, `status`) VALUES
(1, 'ram', 'ram@hotmail.com', '09809080', 'I want a website', 'new'),
(3, 'test', 'est', 'test', 'Please check the details of the inquiry from contact page:\r\nName: test\r\nPhone: test\r\nEmail: est\r\nMessage: test\r\n', 'following'),
(4, 'test', 'est', 'test', 'Please check the details of the inquiry from contact page:<br />Name: test<br />Phone: test<br /> Email: est<br /> Message: test<br />', 'new'),
(5, 'test', 'test', 'test', 'Please check the details of the inquiry from contact page:<br />Name: test<br />Phone: test<br /> Email: test<br /> Message: test<br />', 'junk'),
(6, 'Name...', 'Phone...', 'Email...', 'Please check the details of the inquiry from contact page:<br />Name: Name...<br />Phone: Email...<br /> Email: Phone...<br /> Message: Message...<br />', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `news_pages`
--

CREATE TABLE IF NOT EXISTS `news_pages` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `pagetitle` varchar(255) NOT NULL,
  `pagedesc` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `news_pages`
--

INSERT INTO `news_pages` (`pid`, `pagetitle`, `pagedesc`, `image`, `status`) VALUES
(27, 'Home', '', '', 1),
(28, 'News', '', '', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news_articles`
--
ALTER TABLE `news_articles`
  ADD CONSTRAINT `news_articles_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `news_pages` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;
