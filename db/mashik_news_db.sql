-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2014 at 02:44 PM
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
  `catid` int(11) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `news_articles`
--

INSERT INTO `news_articles` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(18, 'samsung', 'about samsufsng mobile djfksd sdkjfsd dskjfsd sdkjfds sdkjfsd sdkjfskd fksdj ksdjfksdjf ksdfjsdkjf sdkdsjkfd dkjfd kdjf kjdsf kdsjfksdj kdsjfkjs djfdkjds kdsjksd kfjsdk jfdkj dfkdjk .', 1, 1),
(19, 'nokia', 'about he nokia brand of mobile', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE IF NOT EXISTS `news_category` (
  `catid` int(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catdesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `news_category`
--

INSERT INTO `news_category` (`catid`, `catname`, `catdesc`, `image`, `status`) VALUES
(8, 'Maoist vela ', 'asdmfsdkm dsfkjds k', '', 1),
(9, 'Oli Bankok', 'skdjfsd dskjdf dkjd dkjdf dfkj d jdfkj djdf kjdf dkjf kjdf kjdf jdfk dfjdkfj ', '', 1),
(11, 'fdg', 'dfgdfgdfgf', '', 1),
(12, 'dsfds', 'fdsfdssd', 'image', 1),
(13, 'Information Technology', 'all about the inforamtion technology', 'Jellyfish.jpg', 1),
(28, 'Ã Â¤ÂÃ Â¤Â®Ã Â¤Â¾Ã Â¤â€œÃ Â¤ÂµÃ Â¤Â¾Ã Â¤Â¦Ã Â¥â‚¬ Ã Â¤â€¦Ã Â¤Â§Ã Â¥ÂÃ Â¤Â¯Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â· Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â·Ã Â¥ÂÃ Â¤ÂªÃ Â¤â€¢Ã Â¤Â®Ã Â¤Â² Ã Â¤Â¦Ã Â¤Â¾Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â²Ã Â¥â€¡ Ã Â¤Â¹Ã Â¥â€¡Ã Â¤Å¸Ã Â¥Å’Ã Â¤â€šÃ Â¤Â¡Ã Â¤Â¾ Ã Â¤Â®Ã Â¤Â¹Ã Â¤Â¾Ã ', 'Ã Â¤ÂÃ Â¤Â®Ã Â¤Â¾Ã Â¤â€œÃ Â¤ÂµÃ Â¤Â¾Ã Â¤Â¦Ã Â¥â‚¬ Ã Â¤â€¦Ã Â¤Â§Ã Â¥ÂÃ Â¤Â¯Ã Â¤â€¢Ã Â¥ÂÃ Â¤Â· Ã Â¤ÂªÃ Â¥ÂÃ Â¤Â·Ã Â¥ÂÃ Â¤ÂªÃ Â¤â€¢Ã Â¤Â®Ã Â¤Â² Ã Â¤Â¦Ã Â¤Â¾Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â²Ã Â¤Â²Ã Â¥â€¡ Ã Â¤Â¹Ã Â¥â€¡Ã Â¤Å¸Ã Â¥Å’Ã Â¤â€šÃ Â¤Â¡Ã Â¤Â¾ Ã Â¤Â®Ã Â¤Â¹Ã Â¤Â¾Ã Â¤Â§Ã Â¤Â¿Ã Â¤ÂµÃ Â¥â€¡Ã Â¤Â¶Ã Â¤Â¨Ã Â¤Â²Ã Â¥â€¡ Ã Â¤â€¦Ã Â¤ËœÃ Â¤Â¿ Ã Â¤Â¸Ã Â¤Â¾Ã Â¤Â°Ã Â¥â€¡Ã Â¤â€¢Ã Â¤Â¾ Ã Â¤ÂªÃ Â¥ÂÃ Â¤ÂÃ Â¤Å“Ã Â¥â‚¬Ã Â¤ÂµÃ Â¤Â¾Ã Â¤Â¦Ã Â¥â‚¬', '\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_category_cultural`
--

CREATE TABLE IF NOT EXISTS `news_category_cultural` (
  `catid` int(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catdesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `news_category_cultural`
--

INSERT INTO `news_category_cultural` (`catid`, `catname`, `catdesc`, `image`, `status`) VALUES
(8, 'Maoist vela ', 'asdmfsdkm dsfkjds k', '', 1),
(9, 'Oli Bankok', 'skdjfsd dskjdf dkjd dkjdf dfkj d jdfkj djdf kjdf dkjf kjdf kjdf jdfk dfjdkfj ', '', 1),
(11, 'fdg', 'dfgdfgdfgf', '', 1),
(12, 'dsfds', 'fdsfdssd', 'image', 1),
(13, 'Information Technology', 'all about the inforamtion technology', 'Jellyfish.jpg', 1),
(28, 'à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤•à¥‹ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤¨à¤¾à¤® à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¥à¤¯à¤¾à¤¯ à¤ªà¤°à¤¿à¤·à¤¦à¥à¤²à¥‡ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤œà¤¨à¤¾à¤•à¥‹ à¤¨à¤¾à¤® à¤¸à¤‚à¤¸à¤¦à¥€à¤¯ à¤¸à¥à¤¨à¥à¤µà¤¾à¤ˆà¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸ à¤—à¤°à¥‡à¤•à¥‹ à¤› à¥¤ à¤¸à¤‚à¤µà¤¿à¤§à¤¾à¤¨à¤…à¤¨à¥à¤¸à¤¾à¤° à¤®à¥à¤¦à¥à¤¦à¤¾à¤•à¥‹ à¤šà¤¾à¤ª à¤¹à¥‡à¤°à¥€ à¥§à¥« à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤° à¥§à¥¦ à¤¸à¤®à¥à¤® à¤…à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤¦à¤°à¤¬à¤¨à¥à¤¦à¥€ à¤ªà¤¾à¤à¤•à¥‹ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¥© à¤µà¤°à¥à¤·à¤¦à¥‡à¤–à¤¿ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤­à¤à¤•à¥‹ à¤¥à¤¿à¤à¤¨à¥ à¥¤', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_category_entertainment`
--

CREATE TABLE IF NOT EXISTS `news_category_entertainment` (
  `catid` int(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catdesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `news_category_entertainment`
--

INSERT INTO `news_category_entertainment` (`catid`, `catname`, `catdesc`, `image`, `status`) VALUES
(8, 'Maoist vela ', 'asdmfsdkm dsfkjds k', '', 1),
(9, 'Oli Bankok', 'skdjfsd dskjdf dkjd dkjdf dfkj d jdfkj djdf kjdf dkjf kjdf kjdf jdfk dfjdkfj ', '', 1),
(11, 'fdg', 'dfgdfgdfgf', '', 1),
(12, 'dsfds', 'fdsfdssd', 'image', 1),
(13, 'Information Technology', 'all about the inforamtion technology', 'Jellyfish.jpg', 1),
(28, 'à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤•à¥‹ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤¨à¤¾à¤® à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¥à¤¯à¤¾à¤¯ à¤ªà¤°à¤¿à¤·à¤¦à¥à¤²à¥‡ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤œà¤¨à¤¾à¤•à¥‹ à¤¨à¤¾à¤® à¤¸à¤‚à¤¸à¤¦à¥€à¤¯ à¤¸à¥à¤¨à¥à¤µà¤¾à¤ˆà¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸ à¤—à¤°à¥‡à¤•à¥‹ à¤› à¥¤ à¤¸à¤‚à¤µà¤¿à¤§à¤¾à¤¨à¤…à¤¨à¥à¤¸à¤¾à¤° à¤®à¥à¤¦à¥à¤¦à¤¾à¤•à¥‹ à¤šà¤¾à¤ª à¤¹à¥‡à¤°à¥€ à¥§à¥« à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤° à¥§à¥¦ à¤¸à¤®à¥à¤® à¤…à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤¦à¤°à¤¬à¤¨à¥à¤¦à¥€ à¤ªà¤¾à¤à¤•à¥‹ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¥© à¤µà¤°à¥à¤·à¤¦à¥‡à¤–à¤¿ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤­à¤à¤•à¥‹ à¤¥à¤¿à¤à¤¨à¥ à¥¤', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_category_interview`
--

CREATE TABLE IF NOT EXISTS `news_category_interview` (
  `catid` int(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catdesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `news_category_interview`
--

INSERT INTO `news_category_interview` (`catid`, `catname`, `catdesc`, `image`, `status`) VALUES
(8, 'Maoist vela ', 'asdmfsdkm dsfkjds k', '', 1),
(9, 'Oli Bankok', 'skdjfsd dskjdf dkjd dkjdf dfkj d jdfkj djdf kjdf dkjf kjdf kjdf jdfk dfjdkfj ', '', 1),
(11, 'fdg', 'dfgdfgdfgf', '', 1),
(12, 'dsfds', 'fdsfdssd', 'image', 1),
(13, 'Information Technology', 'all about the inforamtion technology', 'Jellyfish.jpg', 1),
(28, 'à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤•à¥‹ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤¨à¤¾à¤® à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¥à¤¯à¤¾à¤¯ à¤ªà¤°à¤¿à¤·à¤¦à¥à¤²à¥‡ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤œà¤¨à¤¾à¤•à¥‹ à¤¨à¤¾à¤® à¤¸à¤‚à¤¸à¤¦à¥€à¤¯ à¤¸à¥à¤¨à¥à¤µà¤¾à¤ˆà¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸ à¤—à¤°à¥‡à¤•à¥‹ à¤› à¥¤ à¤¸à¤‚à¤µà¤¿à¤§à¤¾à¤¨à¤…à¤¨à¥à¤¸à¤¾à¤° à¤®à¥à¤¦à¥à¤¦à¤¾à¤•à¥‹ à¤šà¤¾à¤ª à¤¹à¥‡à¤°à¥€ à¥§à¥« à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤° à¥§à¥¦ à¤¸à¤®à¥à¤® à¤…à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤¦à¤°à¤¬à¤¨à¥à¤¦à¥€ à¤ªà¤¾à¤à¤•à¥‹ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¥© à¤µà¤°à¥à¤·à¤¦à¥‡à¤–à¤¿ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤­à¤à¤•à¥‹ à¤¥à¤¿à¤à¤¨à¥ à¥¤', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_category_prabash`
--

CREATE TABLE IF NOT EXISTS `news_category_prabash` (
  `catid` int(4) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `catdesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `news_category_prabash`
--

INSERT INTO `news_category_prabash` (`catid`, `catname`, `catdesc`, `image`, `status`) VALUES
(8, 'Maoist vela ', 'asdmfsdkm dsfkjds k', '', 1),
(9, 'Oli Bankok', 'skdjfsd dskjdf dkjd dkjdf dfkj d jdfkj djdf kjdf dkjf kjdf kjdf jdfk dfjdkfj ', '', 1),
(11, 'fdg', 'dfgdfgdfgf', '', 1),
(12, 'dsfds', 'fdsfdssd', 'image', 1),
(13, 'Information Technology', 'all about the inforamtion technology', 'Jellyfish.jpg', 1),
(28, 'à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤•à¥‹ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤¨à¤¾à¤® à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¥à¤¯à¤¾à¤¯ à¤ªà¤°à¤¿à¤·à¤¦à¥à¤²à¥‡ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤œà¤¨à¤¾à¤•à¥‹ à¤¨à¤¾à¤® à¤¸à¤‚à¤¸à¤¦à¥€à¤¯ à¤¸à¥à¤¨à¥à¤µà¤¾à¤ˆà¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸ à¤—à¤°à¥‡à¤•à¥‹ à¤› à¥¤ à¤¸à¤‚à¤µà¤¿à¤§à¤¾à¤¨à¤…à¤¨à¥à¤¸à¤¾à¤° à¤®à¥à¤¦à¥à¤¦à¤¾à¤•à¥‹ à¤šà¤¾à¤ª à¤¹à¥‡à¤°à¥€ à¥§à¥« à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤° à¥§à¥¦ à¤¸à¤®à¥à¤® à¤…à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤¦à¤°à¤¬à¤¨à¥à¤¦à¥€ à¤ªà¤¾à¤à¤•à¥‹ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¥© à¤µà¤°à¥à¤·à¤¦à¥‡à¤–à¤¿ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤­à¤à¤•à¥‹ à¤¥à¤¿à¤à¤¨à¥ à¥¤', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_cultural_articles`
--

CREATE TABLE IF NOT EXISTS `news_cultural_articles` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) NOT NULL,
  `adesc` text NOT NULL,
  `status` int(1) NOT NULL,
  `catid` int(4) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `news_cultural_articles`
--

INSERT INTO `news_cultural_articles` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(32, 'Prachanda Agenda', 'skdjfklsdj sadkjf s', 1, 8),
(33, 'nature', 'abourlkjfjjkdkjjdskjdjsk\r\n\r\nthis is all about the nature', 1, 8),
(36, 'To be continue', ' slkdjfsd sdkjfsd dkjdsf kd kjdf djkdf kd dkdjdkd dkjf dkjf fjd kdjf dkjdfkj ', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `news_entertainment_articles`
--

CREATE TABLE IF NOT EXISTS `news_entertainment_articles` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) NOT NULL,
  `adesc` text NOT NULL,
  `status` int(1) NOT NULL,
  `catid` int(4) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `news_entertainment_articles`
--

INSERT INTO `news_entertainment_articles` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(32, 'Prachanda Agenda', 'skdjfklsdj sadkjf s', 1, 8),
(33, 'nature', 'abourlkjfjjkdkjjdskjdjsk\r\n\r\nthis is all about the nature', 1, 8),
(36, 'To be continue', ' slkdjfsd sdkjfsd dkjdsf kd kjdf djkdf kd dkdjdkd dkjf dkjf fjd kdjf dkjdfkj ', 1, 9);

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
(14, 'img1.jpg', 'nirmala', 'p', 0),
(17, 'Penguins.jpg', '323', 'p', 1),
(18, 'img2.jpg', 'cc', 'h', 0),
(19, 'img3.jpg', 'manisha', 'h', 0),
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
-- Table structure for table `news_header_category`
--

CREATE TABLE IF NOT EXISTS `news_header_category` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `catitle` varchar(255) NOT NULL,
  `catdescription` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`catid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `news_header_category`
--

INSERT INTO `news_header_category` (`catid`, `catitle`, `catdescription`, `image`, `status`, `pid`) VALUES
(1, 'Mobile', 'all about the mobile technology in the present computing world', '', 1, 5),
(2, 'cellular Network', 'about the cellular network technology', '', 1, 5),
(4, '$catname', '$catdesc', '$imagename\r\n', 1, 0),
(11, 'Basket Ball', 'basket ball program', '7.jpg\r\n', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `news_homepages`
--

CREATE TABLE IF NOT EXISTS `news_homepages` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `pagetitle` varchar(255) NOT NULL,
  `pagedesc` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `news_homepages`
--

INSERT INTO `news_homepages` (`pid`, `pagetitle`, `pagedesc`, `image`, `status`) VALUES
(27, 'Home', '', '', 1),
(28, 'News', '', '', 1),
(29, '??', '??', '', 0),
(30, '??????? , ????? ?? - ???? ???? ??????? ????? ??? ????????? ? ? ?????????? ???????? ??????? ????? ???????? ???? ????? ????????', '??????? , ????? ?? - ???? ???? ??????? ????? ??? ????????? ? ? ?????????? ???????? ??????? ????? ???????? ???? ????? ????????', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_home_articles1`
--

CREATE TABLE IF NOT EXISTS `news_home_articles1` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) NOT NULL,
  `adesc` text NOT NULL,
  `status` int(1) NOT NULL,
  `catid` int(4) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `news_home_articles1`
--

INSERT INTO `news_home_articles1` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(32, 'Prachanda Agenda', 'skdjfklsdj sadkjf s', 1, 8),
(33, 'nature', 'abourlkjfjjkdkjjdskjdjsk\r\n\r\nthis is all about the nature', 1, 8),
(36, 'To be continue', ' slkdjfsd sdkjfsd dkjdsf kd kjdf djkdf kd dkdjdkd dkjf dkjf fjd kdjf dkjdfkj ', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `news_imgage_slider`
--

CREATE TABLE IF NOT EXISTS `news_imgage_slider` (
  `imgsliderid` int(4) NOT NULL AUTO_INCREMENT,
  `imgslidername` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `location` enum('h','p') NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`imgsliderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `news_imgage_slider`
--

INSERT INTO `news_imgage_slider` (`imgsliderid`, `imgslidername`, `caption`, `location`, `status`) VALUES
(8, 'shelter.jpg', 'image3', 'h', 1),
(9, 'tree.jpg', 'image4', 'h', 1),
(10, 'sea.jpg', 'image5', 'h', 1),
(11, 'bridge.jpg', 'first post of image', 'h', 1);

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
-- Table structure for table `news_interview_articles`
--

CREATE TABLE IF NOT EXISTS `news_interview_articles` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) NOT NULL,
  `adesc` text NOT NULL,
  `status` int(1) NOT NULL,
  `catid` int(4) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `news_interview_articles`
--

INSERT INTO `news_interview_articles` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(32, 'Prachanda Agenda', 'skdjfklsdj sadkjf s', 1, 8),
(33, 'nature', 'abourlkjfjjkdkjjdskjdjsk\r\n\r\nthis is all about the nature', 1, 8),
(36, 'To be continue', ' slkdjfsd sdkjfsd dkjdsf kd kjdf djkdf kd dkdjdkd dkjf dkjf fjd kdjf dkjdfkj ', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `news_pages`
--

CREATE TABLE IF NOT EXISTS `news_pages` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `pagetitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pagedesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `news_pages`
--

INSERT INTO `news_pages` (`pid`, `pagetitle`, `pagedesc`, `image`, `status`) VALUES
(27, 'à¤—à¥ƒà¤¹à¤ªà¥ƒà¤·à¥à¤ ', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¥à¤¯à¤¾à¤¯ à¤ªà¤°à¤¿à¤·à¤¦à¥à¤²à¥‡ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¥® à¤œà¤¨à¤¾à¤•à¥‹ à¤¨à¤¾à¤® à¤¸à¤‚à¤¸à¤¦à¥€à¤¯ à¤¸à¥à¤¨à¥à¤µà¤¾à¤ˆà¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¸à¤¿à¤«à¤¾à¤°à¤¿à¤¸ à¤—à¤°à¥‡à¤•à¥‹ à¤› à¥¤ à¤¸à¤‚à¤µà¤¿à¤§à¤¾à¤¨à¤…à¤¨à¥à¤¸à¤¾à¤° à¤®à¥à¤¦à¥à¤¦à¤¾à¤•à¥‹ à¤šà¤¾à¤ª à¤¹à¥‡à¤°à¥€ à¥§à¥« à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤° à¥§à¥¦ à¤¸à¤®à¥à¤® à¤…à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶à¤•à¥‹ à¤¦à¤°à¤¬à¤¨à¥à¤¦à¥€ à¤ªà¤¾à¤à¤•à¥‹ à¤¸à¤°à¥à¤µà¥‹à¤šà¥à¤šà¤®à¤¾ à¥© à¤µà¤°à¥à¤·à¤¦à¥‡à¤–à¤¿ à¤¸à¥à¤¥à¤¾à¤¯à¥€ à¤¨à¥à¤¯à¤¾à¤¯à¤¾à¤§à¥€à¤¶ à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤­à¤à¤•à¥‹ à¤¥à¤¿à¤à¤¨à¥ à¥¤', '', 1),
(28, 'à¤¸à¤®à¤¾à¤šà¤¾à¤°', 'à¤•à¤¾à¤ à¤®à¤¾à¤¡à¥Œ , à¤µà¥ˆà¤¶à¤¾à¤– à¥¯ - à¤¨à¤¿à¤°à¥à¤£à¤¾à¤¯à¤•à¤°à¥‚à¤ªà¤®à¥ˆ à¤°à¤¾à¤œà¤¤à¤¨à¥à¤¤à¥à¤°à¤•à¥‹ à¤¹à¤¾à¤° à¤­à¤‡à¤¸à¤•à¥‡à¤•à¥‹ à¤¸à¥à¤µà¥€à¤•à¤¾à¤° à¤¸à¤¾à¤¯à¤¦ à¤ªà¥‚à¤°à¥à¤µà¤°à¤¾à¤œà¤¾ à¤œà¥à¤žà¤¾à¤¨à¥‡à¤¨à¥à¤¦à¥à¤°à¤²à¥‡ à¤—à¤°à¥‡à¤•à¤¾ à¤›à¥ˆà¤¨à¤¨à¥ à¥¤ à¤¤à¥à¤¯à¤¸à¥ˆà¤²à¥‡ à¤µà¥ˆà¤¶à¤¾à¤–à¤•à¥‹ à¤—à¤°à¥à¤®à¥€ à¤° à¤§à¥‚à¤ªà¤•à¥‹ à¤¸à¤®à¥‡à¤¤ à¤µà¤¾à¤¸à¥à¤¤à¤¾ à¤¨à¤—à¤°à¥€ à¤¯à¤¤à¤¿à¤¬à¥‡à¤²à¤¾ à¤ªà¥‚à¤°à¥à¤µà¥€ à¤¤à¤°à¤¾à¤ˆà¤•à¥‹ à¤­à¥à¤°à¤®à¤£à¤®à¤¾ à¤µà¥à¤¯à¤¸à¥à¤¤ à¤›à¤¨à¥ à¥¤ à¤¤à¤°, à¤°à¤¾à¤œà¤¤à¤¨à¥à¤¤à¥à¤° à¤ªà¥à¤¨à¤ƒà¤¸à¥à¤¥à¤¾à¤ªà¤¨à¤¾à¤•à¥‹ à¤®à¤¾à¤—à¤•à¤¾ à¤¸à¤¾à¤¥ à¤‰à¤¨à¤²à¤¾à¤ˆ à¤¸à¤¾à¤¥ à¤¦à¤¿à¤à¤¦à¥ˆ à¤°à¤¾à¤ªà¥à¤°à¤ªà¤¾ à¤¨à¥‡à¤ªà¤¾à¤²à¤¬à¤¾à¤Ÿ à¤šà¤¾à¤¹à¤¿à¤ à¤‰à¤¨à¤²à¥‡ à¤ªà¤¹à¤¿à¤²à¥‡à¤œà¤¸à¥à¤¤à¥‹ à¤°à¤¾à¤œà¤¨à¥€à¤¤à¤¿à¤• à¤¸à¤®à¤°à¥à¤¥à¤¨ à¤¨à¤ªà¤¾à¤‰à¤¨à¥‡ à¤¸à¤‚à¤•à¥‡à¤¤ à¤¦à¥‡à¤–à¤¿à¤à¤¦à¥ˆ à¤› à¥¤', '', 1),
(31, 'à¤ªà¥à¤°à¤µà¤¾à¤¸', 'This is a contact page in which we can contact  ?????? ', '', 1),
(33, 'à¤•à¥à¤°à¤¾à¤•à¤¾à¤¨à¥€', '', '', 1),
(34, 'à¤²à¥‡à¤– à¤µà¤¿à¤šà¤¾à¤°', '', '', 1),
(35, 'system', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_pagess`
--

CREATE TABLE IF NOT EXISTS `news_pagess` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `pagetitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pagedesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `news_pagess`
--


-- --------------------------------------------------------

--
-- Table structure for table `news_pages_headers`
--

CREATE TABLE IF NOT EXISTS `news_pages_headers` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `pagetitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pagedesc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `news_pages_headers`
--

INSERT INTO `news_pages_headers` (`pid`, `pagetitle`, `pagedesc`, `image`, `status`) VALUES
(5, 'news', '<p>sadfsdf sdfdsfsdf asdfdsf </p>', '\r\n', 1),
(6, 'sports', '<p>fffdfdsfds</p>', '\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_prabash_articles`
--

CREATE TABLE IF NOT EXISTS `news_prabash_articles` (
  `aid` int(4) NOT NULL AUTO_INCREMENT,
  `atitle` varchar(255) NOT NULL,
  `adesc` text NOT NULL,
  `status` int(1) NOT NULL,
  `catid` int(4) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `news_prabash_articles`
--

INSERT INTO `news_prabash_articles` (`aid`, `atitle`, `adesc`, `status`, `catid`) VALUES
(32, 'Prachanda Agenda', 'skdjfklsdj sadkjf s', 1, 8),
(33, 'nature', 'abourlkjfjjkdkjjdskjdjsk\r\n\r\nthis is all about the nature', 1, 8),
(36, 'To be continue', ' slkdjfsd sdkjfsd dkjdsf kd kjdf djkdf kd dkdjdkd dkjf dkjf fjd kdjf dkjdfkj ', 1, 9);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news_articles`
--
ALTER TABLE `news_articles`
  ADD CONSTRAINT `news_articles_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `news_header_category` (`catid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_home_articles1`
--
ALTER TABLE `news_home_articles1`
  ADD CONSTRAINT `news_home_articles1_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `news_category` (`catid`) ON DELETE CASCADE ON UPDATE CASCADE;
