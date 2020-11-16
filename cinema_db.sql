-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 14, 2019 at 08:46 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingTable`
--

CREATE TABLE IF NOT EXISTS `bookingTable` (
  `bookingID` int(11) NOT NULL,
  `movieName` varchar(100) DEFAULT NULL,
  `bookingTheatre` varchar(100) NOT NULL,
  `bookingType` varchar(100) DEFAULT NULL,
  `bookingDate` varchar(50) NOT NULL,
  `bookingTime` varchar(50) NOT NULL,
  `bookingFName` varchar(100) NOT NULL,
  `bookingLName` varchar(100) DEFAULT NULL,
  `bookingPNumber` varchar(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingTable`
--

INSERT INTO `bookingTable` (`bookingID`, `movieName`, `bookingTheatre`, `bookingType`, `bookingDate`, `bookingTime`, `bookingFName`, `bookingLName`, `bookingPNumber`) VALUES
(01, 'war', 'silver', '3d', '13-11', '15-00', 'Shreesha', 'Mg', '010152658930');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackTable`
--

CREATE TABLE IF NOT EXISTS `feedbackTable` (
  `msgID` int(12) NOT NULL,
  `senderfName` varchar(50) NOT NULL,
  `senderlName` varchar(50) DEFAULT NULL,
  `sendereMail` varchar(100) NOT NULL,
  `senderfeedback` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbackTable`
--

INSERT INTO `feedbackTable` (`msgID`, `senderfName`, `senderlName`, `sendereMail`, `senderfeedback`) VALUES
(1, 'Shreesha', 'Mg', 'Shreesh@mail.com', 'Hello first'),
(2, 'Shetty', 'Pree', 'pree@as.com', 'good one');

-- --------------------------------------------------------

--
-- Table structure for table `movieTable`
--

CREATE TABLE IF NOT EXISTS `movieTable` (
  `movieID` int(11) NOT NULL,
  `movieImg` varchar(150) NOT NULL,
  `movieTitle` varchar(100) NOT NULL,
  `movieGenre` varchar(50) NOT NULL,
  `movieDuration` int(11) NOT NULL,
  `movieRelDate` date NOT NULL,
  `movieDirector` varchar(50) NOT NULL,
  `movieActors` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieTable`
--

INSERT INTO `movieTable` (`movieID`, `movieImg`, `movieTitle`, `movieGenre`, `movieDuration`, `movieRelDate`, `movieDirector`, `movieActors`) VALUES
(1, 'img/movie-poster-12.jpg', 'Avengers:Endgame', ' Action, Adventure, Sci-Fi ', 182, '2019-04-26', 'Anthony Russo,Joe Russo', 'Robert Downey jr.,Chris Hemsworth,Scarlet Johansson,Mark Ruffalo'),
(2, 'img/movie-poster-7.jpg', 'War  ', 'Actin', 110, '2019-10-10', 'Assad Siddarth Anand', 'Hrithik Roshan, Tiger shrof '),
(3, 'img/movie-poster-9.jpg', 'Bell Bottom', 'Drama, Thriller', 190, '2019-02-15', 'Jayatheertha', 'Rishab Setty, Haripriya'),
(4, 'img/movie-poster-8.jpg', 'Pailwan ', 'Drama, Sport', 158, '2019-09-12', ' S Krishna', 'Kichchaa Sudeep,aakanksha Singh,Sunil Shetty'),
(5, 'img/movie-poster-15.jpg', 'Kabir Singh', 'Drama, Action, Romance', 172, '2019-06-21', 'Sandeep Reddy Vanga', 'Shahid Kapoor,Kiara Advani'),
(6, 'img/movie-poster-11.jpg', 'Joker', 'drama, Thriller', 122, '2019-10-02', 'Todd Phillips', 'Joaquin Phoenix, Zazie Beetz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingTable`
--
ALTER TABLE `bookingTable`
  ADD PRIMARY KEY (`bookingID`),
  ADD UNIQUE KEY `bookingID` (`bookingID`),
  ADD KEY `bookingID_2` (`bookingID`),
  ADD KEY `bookingID_3` (`bookingID`),
  ADD KEY `bookingID_4` (`bookingID`);

--
-- Indexes for table `feedbackTable`
--
ALTER TABLE `feedbackTable`
  ADD PRIMARY KEY (`msgID`),
  ADD UNIQUE KEY `msgID` (`msgID`);

--
-- Indexes for table `movieTable`
--
ALTER TABLE `movieTable`
  ADD PRIMARY KEY (`movieID`),
  ADD UNIQUE KEY `movieID` (`movieID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingTable`
--
ALTER TABLE `bookingTable`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `feedbackTable`
--
ALTER TABLE `feedbackTable`
  MODIFY `msgID` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `movieTable`
--
ALTER TABLE `movieTable`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
