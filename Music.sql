-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2016 at 07:46 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Music`
--

-- --------------------------------------------------------

--
-- Table structure for table `Album`
--

CREATE TABLE IF NOT EXISTS `Album` (
  `albumID` int(11) NOT NULL AUTO_INCREMENT,
  `albumName` varchar(40) NOT NULL,
  `artistID` int(11) NOT NULL,
  `genre` varchar(40) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`albumID`,`artistID`),
  KEY `artistID` (`artistID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `Album`
--

INSERT INTO `Album` (`albumID`, `albumName`, `artistID`, `genre`, `year`) VALUES
(1, 'Californication', 1, 'Funk Rock', 1999),
(2, 'By the Way', 1, 'Funk Rock', 2002),
(3, 'Stadium Arcadium', 1, 'Funk Rock', 2006),
(4, 'How to Dismantle an Atomic Bomb', 2, 'Rock', 2004),
(5, 'All That You Can''t Leave Behind', 2, 'Rock', 2000),
(6, 'Songs of Innocence', 2, 'Rock', 2014),
(7, 'One', 3, 'Rock', 2000),
(8, 'White Album', 3, 'Rock', 1968),
(9, 'The Heist', 4, 'Rap', 2012),
(10, 'The Unplanned Mixtape', 4, 'Rap', 2010),
(11, 'Four', 5, 'R&B', 2011),
(12, 'Beyonce', 5, 'R&B', 2013),
(13, 'Speak Now', 6, 'Pop Music/ Country', 2010),
(14, '#swifty ', 6, 'Pop Music/ Country', 2015),
(15, 'Dookie', 7, 'Punk rock pop punk', 1994),
(16, 'American Idiot', 7, 'Punk rock pop punk', 2004);

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE IF NOT EXISTS `Artist` (
  `artistID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`artistID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `Artist`
--

INSERT INTO `Artist` (`artistID`, `firstName`, `lastName`, `gender`) VALUES
(1, 'Anthony', 'Kiedis', 'male'),
(2, 'Bono', '', 'male'),
(3, 'John', 'Lennon', 'male'),
(4, 'Macklemore', '', 'male'),
(5, 'Beyonce', '', 'female'),
(6, 'Taylor', 'Swift', 'female'),
(7, 'Billie ', 'Armstrong', '');

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE IF NOT EXISTS `Songs` (
  `songsID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `time` time NOT NULL,
  `albumID` int(11) NOT NULL,
  PRIMARY KEY (`songsID`,`albumID`),
  KEY `albumID` (`albumID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`songsID`, `title`, `time`, `albumID`) VALUES
(1, 'Around the World', '03:59:00', 1),
(2, 'Parallel Universe', '04:29:00', 1),
(3, 'Scar Tissue', '03:36:00', 1),
(4, 'Otherside', '04:15:00', 1),
(5, 'Get On Top', '03:18:00', 1),
(6, 'By the Way', '02:52:00', 2),
(7, 'Universal Speaking', '04:18:00', 2),
(8, 'This is the Place', '04:18:00', 2),
(9, 'Dosed', '05:12:00', 2),
(10, 'Don''t Forget Me', '04:38:00', 2),
(11, 'Dani California', '04:42:00', 3),
(12, 'Snow(Hey Oh)', '05:35:00', 3),
(13, 'Charlie', '04:38:00', 3),
(14, 'Stadium Arcadium', '05:16:00', 3),
(15, 'Hump de Bump', '03:33:00', 3),
(16, 'Vertigo', '03:11:00', 4),
(17, 'Love and Peace or Else', '04:51:00', 4),
(18, 'City of Blinding Lights', '05:20:00', 4),
(19, 'Beautiful Day', '04:08:00', 5),
(20, 'Elevation', '03:47:00', 5),
(21, 'Walk On', '04:56:00', 5),
(25, 'Every Breaking Wave', '04:12:00', 6),
(26, 'Song for Someone', '03:47:00', 6),
(27, 'Iris(Hold Me Close)', '05:19:00', 6),
(28, 'Love Me Do', '02:23:00', 7),
(29, 'Can''t Buy Me Love', '02:11:00', 7),
(30, 'Back In the U.S.S.R.', '02:43:00', 8),
(31, 'Ob-La-Di, Ob-La-Da', '03:09:00', 8),
(32, 'Ten Thousand Hours', '04:09:00', 9),
(33, 'Can''t Hold Us', '04:18:00', 9),
(34, 'The Town', '05:34:00', 10),
(35, 'And we Danced', '04:06:00', 10),
(36, 'Best Thing I Never Had', '04:12:00', 11),
(37, 'Party', '04:05:00', 11),
(38, 'Pretty Hurts', '04:18:00', 12),
(39, 'Drunk in Love[Clean]', '05:23:00', 12),
(40, 'Mine', '03:50:00', 13),
(41, 'Sparks Fly', '04:22:00', 13),
(42, 'Eyes Open', '03:48:00', 14),
(43, 'Never Grow Up', '04:48:00', 14),
(44, 'Burnout', '02:08:00', 15),
(45, 'Having a Blast', '02:45:00', 15),
(46, 'American Idiot', '02:54:00', 16),
(47, 'Give Me Novacaine', '05:26:00', 16);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Album`
--
ALTER TABLE `Album`
  ADD CONSTRAINT `Album_ibfk_2` FOREIGN KEY (`artistID`) REFERENCES `Artist` (`artistID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Songs`
--
ALTER TABLE `Songs`
  ADD CONSTRAINT `Songs_ibfk_1` FOREIGN KEY (`albumID`) REFERENCES `Album` (`albumID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
