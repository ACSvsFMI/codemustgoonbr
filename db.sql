-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2012 at 01:40 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends_with`
--

CREATE TABLE IF NOT EXISTS `friends_with` (
  `id_f` int(5) NOT NULL AUTO_INCREMENT,
  `fk_u` int(3) NOT NULL,
  `fk_f` int(3) NOT NULL,
  PRIMARY KEY (`id_f`),
  KEY `fk_u` (`fk_u`),
  KEY `fk_f` (`fk_f`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `friends_with`
--

INSERT INTO `friends_with` (`id_f`, `fk_u`, `fk_f`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `id_l` int(9) NOT NULL AUTO_INCREMENT,
  `fk_p` int(7) NOT NULL,
  `fk_u` int(3) NOT NULL,
  PRIMARY KEY (`id_l`),
  KEY `fk_p` (`fk_p`),
  KEY `fk_u` (`fk_u`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id_l`, `fk_p`, `fk_u`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id_p` int(7) NOT NULL AUTO_INCREMENT,
  `fk_u` int(3) NOT NULL,
  `tip` int(2) NOT NULL DEFAULT '0',
  `permission` int(2) NOT NULL,
  `contents` text,
  PRIMARY KEY (`id_p`),
  KEY `fk_u` (`fk_u`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id_p`, `fk_u`, `tip`, `permission`, `contents`) VALUES
(1, 1, 0, 0, 'asta este un post');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_u` int(3) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(225) NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sex` int(1) NOT NULL,
  `birthday` date NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_u`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_u`, `user_name`, `first_name`, `last_name`, `email`, `sex`, `birthday`, `city`, `country`, `password`, `register_date`) VALUES
(1, 'test', 'first name', 'last name', 'test@test.com', 1, '2012-12-11', 'Bucharest', 'Romania', 'test', '2012-12-08 12:36:59'),
(2, 'test2', 'first name', 'last name', 'test2@test.com', 2, '2012-12-11', 'Bucharest', 'Romania', 'test', '2012-12-08 12:36:59');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends_with`
--
ALTER TABLE `friends_with`
  ADD CONSTRAINT `friends_with_ibfk_1` FOREIGN KEY (`fk_u`) REFERENCES `user` (`id_u`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `friends_with_ibfk_2` FOREIGN KEY (`fk_f`) REFERENCES `user` (`id_u`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`fk_p`) REFERENCES `posts` (`id_p`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`fk_u`) REFERENCES `user` (`id_u`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`fk_u`) REFERENCES `user` (`id_u`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
