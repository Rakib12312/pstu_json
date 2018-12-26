-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2018 at 05:58 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pstu`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `total_student` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `name`, `title`, `session`, `faculty`, `total_student`) VALUES
(1, '12', 'baundule 12', '', 'CSE', ''),
(2, 'safd', 'sdfgfdg', '', 'CSE', '');

-- --------------------------------------------------------

--
-- Table structure for table `course_schedule`
--

CREATE TABLE `course_schedule` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `credit_hour` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_schedule`
--

INSERT INTO `course_schedule` (`id`, `course_code`, `course_title`, `credit_hour`, `faculty`, `status`) VALUES
(1, 'CIT-321', 'operating system', '3.00', 'CSE', 1),
(2, 'math-221', 'operating system', '3.00', 'CSE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`id`, `name`, `designation`, `department`, `phone`, `address`, `faculty`, `image_url`) VALUES
(1, 'nurul huque', 'mlss', 'cit', '23435', 'khulna', 'Cse', ''),
(2, 'MAmun Sikder', 'mlss', 'CIT', '01714596869', 'Khulna', 'BBA', 'cr.jpg.jpg'),
(3, 'Akash', 'mlss', 'Cit', '01859948050', 'Khulna', 'Cse', 'IMG_20181203_104946.jpg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `short_title` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `avatar_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `short_title`, `title`, `avatar_url`) VALUES
(1, '', 'LMA', '21730897_352596521856782_8369547447580334524_n.jpg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `reg` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `linked_in` varchar(255) NOT NULL,
  `blood` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `fb_link` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `id`, `reg`, `phone`, `linked_in`, `blood`, `address`, `email`, `batch`, `session`, `faculty`, `fb_link`, `image_url`) VALUES
('Tanima Sen', 444, '444', '34455', '', 'B+', 'Khulna', 'rakibpstucse12@gmail.com', '12', '', 'CSE', '', '48340006_1170713143091842_2265857147155775488_n.jpg.jpg'),
('Hafiz Uddin', 1401200, '05361', '34455', '', 'B+', 'Khulna', 'rakibpstucse12@gmail.com', '12', '', 'CSE', '', '47684410_2138089829837731_4621689070274215936_n.jpg.jpg'),
('Anamika Das', 1402001, '5346', '536346', '', 'B+', 'Khulna', 'rakibpstucse12@gmail.com', '12', '', 'CSE', '', '47684410_2138089829837731_4621689070274215936_n.jpg.jpg'),
('Akash habib', 1402007, '05361', '34455', '', 'B+', 'Khulna', 'rakibpstucse12@gmail.com', '12', '', 'CSE', 'teywqeiqiuruiqeiur', '21730897_352596521856782_8369547447580334524_n.jpg.jpg'),
('Md.Rakibul Islam', 1402009, '05358', '01859948050', '', 'B+', 'Khulna', 'rakibpstucse12@gmail.com', '12', '', 'CSE', '', 'c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `linked_in` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `fb_link` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `designation`, `status`, `phone`, `linked_in`, `address`, `email`, `department`, `faculty`, `fb_link`, `image_url`) VALUES
(1, 'Moinul Islam Sayeed', 'Lecturer', 'On duty', '01859948050', '', 'Khulna', 'saeed@gmail.com', 'CIT', 'CSE', '', ''),
(2, 'Chinmoy bepery', 'associate professor', 'On duty', '01859948050', '', 'Khulna', 'chinmoy,pstucse12@gmail.com', 'Cit', 'CSE', '', '21730897_352596521856782_8369547447580334524_n.jpg.jpg'),
(3, 'Chinmoy bepery', 'associate professor', 'On duty', '01859948050', '', 'Khulna', 'chinmoy,pstucse12@gmail.com', 'Cit', 'CSE', '', '21730897_352596521856782_8369547447580334524_n.jpg.jpg'),
(4, 'muradul bashir', 'professor', 'on leave', '24534', '', 'Khulna', 'chinmoy,pstucse12@gmail.com', 'cit', 'CSE', '', '21730897_352596521856782_8369547447580334524_n.jpg.jpg'),
(5, 'Syed galib', 'associate professor', 'on leave', '01859948050', '', 'Khulna', 'chinmoy,pstucse12@gmail.com', 'Cit', 'CSE', '', '21730897_352596521856782_8369547447580334524_n.jpg.jpg'),
(6, 'Chinmoy bepery', 'associate professor', 'laddu', '33423', '', 'Khulna', 'chinmoy,pstucse12@gmail.com', 'Cit', 'CSE', 'wwwwwwwwwwwwwwwwww.yytyrre.com', 'cr.jpg.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_schedule`
--
ALTER TABLE `course_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_schedule`
--
ALTER TABLE `course_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
