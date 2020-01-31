-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 31, 2020 at 01:35 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitymasystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
CREATE TABLE IF NOT EXISTS `lecture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`id`, `name`, `age`, `username`, `password`) VALUES
(1, 'Dr. Warnajith', 35, 'warnajith', '123'),
(2, 'Dr.Thiloshan', 32, 'thiloshan', '1234'),
(3, 'Dr.Isuru', 33, 'isuru', '12345'),
(4, 'Chamara', 22, 'Chamaras', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `lecture_course`
--

DROP TABLE IF EXISTS `lecture_course`;
CREATE TABLE IF NOT EXISTS `lecture_course` (
  `Lecture_id` varchar(50) NOT NULL,
  `course_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture_course`
--

INSERT INTO `lecture_course` (`Lecture_id`, `course_id`) VALUES
('warnajith', 1),
('warnajith', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `student_no` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(1) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_no`, `name`, `age`, `username`, `password`) VALUES
(1, 'se271008', 'Chamara', 22, 'ChamaraS', '1234'),
(2, 'se17007', 'Sachintha Ruwihan', 22, 'sachintha', '123'),
(3, 'SE17001', 'Jewantha Lahiru', 22, 'jewantha', '123'),
(4, 'SE17008', 'Chamara Sampath', 22, 'chamara', '123'),
(5, 'ET17072', 'Ashen Gamage', 22, 'ashen', '123'),
(6, 'BM17267', 'NIpun Udawaththa', 22, 'nipun', '123');

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
CREATE TABLE IF NOT EXISTS `student_course` (
  `studenID` varchar(11) NOT NULL,
  `subjectID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`studenID`, `subjectID`) VALUES
('SE17008', 1),
('SE17008', 2),
('SE17008', 3),
('warnajith', 1),
('warnajith', 1),
('warnajith', 2),
('warnajith', 1),
('warnajith', 2),
('SE17008', 1),
('SE17008', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
