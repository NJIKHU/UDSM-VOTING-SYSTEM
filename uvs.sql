-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2013 at 09:18 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uvs`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE IF NOT EXISTS `candidate` (
  `candidate_id` int(11) NOT NULL AUTO_INCREMENT,
  `election_id` varchar(11) NOT NULL,
  `first_name` varchar(11) NOT NULL,
  `middle_name` varchar(11) NOT NULL,
  `last_name` varchar(11) NOT NULL,
  `email` varchar(11) NOT NULL,
  `manifesto` varchar(11) NOT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `election_id`, `first_name`, `middle_name`, `last_name`, `email`, `manifesto`) VALUES
(1, '', '', '', '', '', ''),
(2, '', '', '', '', '', ''),
(3, '', '', '', '', '', ''),
(4, '', 'Maduhu', 'George', 'Evaristus', '', ''),
(5, '', 'Toke', 'Victor', 'Francis', 'toke@yahoo.', 'good lookin');

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE IF NOT EXISTS `election` (
  `election_id` int(11) NOT NULL,
  `title` varchar(11) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`election_id`, `title`, `seats`) VALUES
(0, '0', 0),
(0, '0', 0),
(0, '0', 0),
(0, '1', 0),
(0, 'College USR', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `category` int(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `college` varchar(11) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `middle_name`, `last_name`, `username`, `password`, `category`, `gender`, `college`) VALUES
(13, '', '', '', '', '', 0, '', ''),
(15, 'Amina', 'Sijui', 'Mbwana', 'AM', '1234', 3, 'female', 'COICT'),
(14, 'Maduhu', 'George', 'Evaristus', 'MD', '1234', 1, 'male', 'COICT'),
(9, 'Token', 'Victore', 'Francisco', 'RKO', '12345', 3, 'male', 'COICT'),
(16, 'Toke', 'Victor', 'Francis', 'TK', '1234', 2, 'male', 'COET');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE IF NOT EXISTS `vote` (
  `candidate_id` int(11) NOT NULL,
  `election_id` int(11) NOT NULL,
  `regNo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE IF NOT EXISTS `voter` (
  `regNo` varchar(11) NOT NULL,
  `email` varchar(11) NOT NULL,
  PRIMARY KEY (`regNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
