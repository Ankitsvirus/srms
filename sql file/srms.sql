-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 08:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5de52ea9d787966e8b598720255a37a7', '2022-01-01 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Semester 1', 2020, 'MCA', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(2, 'Semester 2', 2020, 'MCA', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(4, 'Semester 3', 2020, 'MCA', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(5, 'Semester 4  ', 2020, 'MCA', '2022-01-01 10:30:57', '2022-01-01 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(2, 'Notice regarding result Delearation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit ut aliquam purus. Vel risus commodo viverra maecenas. Et netus et malesuada fames ac turpis egestas sed. Cursus eget nunc scelerisque viverra mauris in aliquam sem fringilla. Ornare arcu odio ut sem nulla pharetra diam. Vel pharetra vel turpis nunc eget lorem dolor sed. Velit ut tortor pretium viverra suspendisse. In ornare quam viverra orci sagittis eu. Viverra tellus in hac habitasse. Donec massa sapien faucibus et molestie. Libero justo laoreet sit amet cursus sit amet dictum. Dignissim diam quis enim lobortis scelerisque fermentum dui.\r\n\r\nEget nulla facilisi etiam dignissim. Quisque non tellus orci ac. Amet cursus sit amet dictum sit amet justo donec. Interdum velit euismod in pellentesque massa. Condimentum lacinia quis vel eros donec ac odio. Magna eget est lorem ipsum dolor. Bibendum at varius vel pharetra vel turpis nunc eget lorem. Pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet. Maecenas accumsan lacus vel facilisis volutpat est velit egestas dui. Massa tincidunt dui ut ornare lectus sit amet est placerat. Nisi quis eleifend quam adipiscing vitae.', '2022-01-01 14:34:58'),
(3, 'Test Notice', 'This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  ', '2022-01-01 14:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(30, 14, 5, 24, 82, '2022-02-21 20:32:16', NULL),
(31, 14, 5, 25, 95, '2022-02-21 20:32:16', NULL),
(32, 14, 5, 26, 91, '2022-02-21 20:32:16', NULL),
(33, 14, 5, 27, 99, '2022-02-21 20:32:16', NULL),
(34, 28, 2, 30, 90, '2022-02-27 03:45:00', NULL),
(35, 28, 2, 30, 80, '2022-02-27 03:45:00', NULL),
(36, 28, 2, 31, 85, '2022-02-27 03:45:00', NULL),
(37, 28, 2, 29, 95, '2022-02-27 03:45:00', NULL),
(38, 28, 2, 32, 88, '2022-02-27 03:45:00', NULL),
(39, 28, 2, 28, 90, '2022-02-27 03:45:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(7, 'Niraj Jha', '20MCA001', '20mca001@shiats.edu.in', 'Male', '1997-07-20', 5, '2022-02-21 02:06:07', NULL, 1),
(8, 'Avinash Nishad', '20MCA002', '20mca002@shiats.edu.in', 'Male', '2022-03-01', 5, '2022-02-21 02:06:50', NULL, 1),
(9, 'Vaibhav Chandra', '20MCA003', '20mca003@shiats.edu.in', 'Male', '2022-02-17', 5, '2022-02-21 02:07:50', NULL, 1),
(10, 'Harsh Gupta', '20MCA004', '20mca004@shiats.edu.in', 'Male', '2022-02-03', 5, '2022-02-21 02:08:35', NULL, 1),
(11, 'Saurabh Dubey', '20MCA005', '20mca005@shiats.edu.in', 'Male', '2022-02-02', 5, '2022-02-21 02:09:12', NULL, 1),
(12, 'Sujeet Yadav', '20MCA006', '20mca006@shiats.edu.in', 'Male', '2022-02-25', 5, '2022-02-21 02:10:08', NULL, 1),
(13, 'Sneha Kesharwani ', '20MCA007', '20mca007@shiats.edu.in', 'Female', '2022-02-25', 5, '2022-02-21 02:10:56', NULL, 1),
(14, 'Ankit Shukla', '20MCA008', '20mca008@shiats.edu.in', 'Male', '2022-02-18', 5, '2022-02-21 02:11:26', NULL, 1),
(15, 'Anand Chaturvedi', '20MCA009', '20mca009@shiats.edu.in', 'Male', '2022-02-15', 5, '2022-02-21 02:12:18', NULL, 1),
(16, 'Ayush Yadav ', '20MCA010', '20mca010@shiats.edu.in', 'Male', '2022-02-11', 5, '2022-02-21 02:13:02', NULL, 1),
(17, 'Rajnish Mishra', '20MCA011', '20mca011@shiats.edu.in', 'Male', '2022-02-23', 5, '2022-02-21 02:13:46', NULL, 1),
(18, 'Sneha Tripadi', '20MCA012', '20mca012@shiats.edu.in', 'Female', '2022-02-22', 5, '2022-02-21 02:14:25', NULL, 1),
(19, 'Prashant Sharma', '20MCA013', '20mca013@shiats.edu.in', 'Male', '2022-02-01', 5, '2022-02-21 02:15:22', NULL, 1),
(20, 'Puyush Pandey', '20MCA014', '20mca014@shiats.edu.in', 'Male', '2022-02-16', 5, '2022-02-21 02:16:04', NULL, 1),
(21, 'Chandrakant Malviya', '20MCA015', '20mca015@shiats.edu.in', 'Male', '2022-02-17', 5, '2022-02-21 02:17:16', NULL, 1),
(22, 'Rajan Pushpakar', '20MCA016', '20mca016@shiats.edu.in', 'Male', '2022-03-03', 5, '2022-02-21 02:18:35', NULL, 1),
(23, 'Gaurav Vishwa', '21MCA001', '21mca001@shiats.edu.in', 'Male', '2022-02-15', 2, '2022-02-21 02:24:38', NULL, 1),
(24, 'Kali Prashad', '21MCA002', '21mca002@shiats.edu.in', 'Male', '2022-02-09', 2, '2022-02-21 02:25:15', NULL, 1),
(25, 'Aiyaman Adeed ', '21MCA003', '21mca003@shiats.edu.in', 'Male', '2022-03-03', 2, '2022-02-21 02:26:01', NULL, 1),
(26, 'Rashmi Pandey', '21MCA004', '21mca004@shiats.edu.in', 'Male', '2022-02-07', 2, '2022-02-21 02:27:03', NULL, 1),
(27, 'Sanya Shukla', '21MCA014', '21mca014@shiats.edu.in', 'Female', '2022-02-25', 2, '2022-02-21 02:27:59', NULL, 1),
(28, 'Ankur Dubey', '21MCA018', '21mca018@shiats.edu.in', 'Male', '2022-02-22', 2, '2022-02-21 02:28:51', NULL, 1),
(29, 'Anuraj Shukla', '19MCA001', '19mca001@shiats.edu.in', 'Male', '2022-02-17', 4, '2022-02-21 02:34:26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2022-01-01 10:30:57', NULL),
(4, 1, 2, 1, '2022-01-01 10:30:57', NULL),
(5, 1, 4, 1, '2022-01-01 10:30:57', NULL),
(6, 1, 5, 1, '2022-01-01 10:30:57', NULL),
(8, 4, 4, 1, '2022-01-01 10:30:57', NULL),
(10, 4, 1, 1, '2022-01-01 10:30:57', NULL),
(12, 4, 2, 1, '2022-01-01 10:30:57', NULL),
(13, 4, 5, 1, '2022-01-01 10:30:57', NULL),
(14, 6, 1, 1, '2022-01-01 10:30:57', NULL),
(15, 6, 2, 1, '2022-01-01 10:30:57', NULL),
(16, 6, 4, 1, '2022-01-01 10:30:57', NULL),
(17, 6, 6, 1, '2022-01-01 10:30:57', NULL),
(18, 7, 1, 1, '2022-01-01 10:30:57', NULL),
(19, 7, 7, 1, '2022-01-01 10:30:57', NULL),
(20, 7, 2, 1, '2022-01-01 10:30:57', NULL),
(21, 7, 6, 1, '2022-01-01 10:30:57', NULL),
(22, 7, 5, 0, '2022-01-01 10:30:57', NULL),
(23, 8, 1, 1, '2022-01-01 10:30:57', NULL),
(24, 8, 2, 1, '2022-01-01 10:30:57', NULL),
(25, 8, 4, 1, '2022-01-01 10:30:57', NULL),
(26, 8, 6, 1, '2022-01-01 10:30:57', NULL),
(27, 8, 5, 0, '2022-01-01 10:30:57', NULL),
(28, 9, 1, 1, '2022-01-01 15:18:40', NULL),
(29, 9, 2, 1, '2022-01-01 15:18:43', NULL),
(30, 9, 8, 1, '2022-01-01 15:18:48', NULL),
(31, 9, 8, 1, '2022-01-01 15:18:54', NULL),
(32, 1, 18, 1, '2022-02-21 01:58:46', '2022-02-21 02:57:57'),
(33, 1, 19, 1, '2022-02-21 01:58:56', NULL),
(34, 1, 20, 1, '2022-02-21 01:59:09', NULL),
(35, 1, 20, 1, '2022-02-21 01:59:19', NULL),
(36, 1, 21, 1, '2022-02-21 01:59:28', NULL),
(37, 1, 22, 1, '2022-02-21 01:59:36', NULL),
(38, 1, 23, 1, '2022-02-21 01:59:47', NULL),
(39, 4, 1, 1, '2022-02-21 02:00:38', NULL),
(40, 4, 11, 1, '2022-02-21 02:00:45', NULL),
(41, 4, 12, 1, '2022-02-21 02:00:56', NULL),
(42, 4, 13, 1, '2022-02-21 02:01:04', NULL),
(43, 4, 14, 1, '2022-02-21 02:01:24', NULL),
(44, 4, 15, 1, '2022-02-21 02:01:32', NULL),
(45, 4, 16, 1, '2022-02-21 02:01:41', NULL),
(46, 4, 17, 1, '2022-02-21 02:01:49', NULL),
(47, 5, 24, 1, '2022-02-21 02:01:58', NULL),
(48, 5, 25, 1, '2022-02-21 02:02:08', NULL),
(49, 5, 26, 1, '2022-02-21 02:02:16', NULL),
(50, 5, 27, 1, '2022-02-21 02:02:22', NULL),
(51, 2, 28, 1, '2022-02-23 20:06:13', NULL),
(52, 2, 29, 1, '2022-02-23 20:06:45', NULL),
(53, 2, 30, 1, '2022-02-23 20:07:00', NULL),
(54, 2, 30, 0, '2022-02-23 20:07:43', '2022-02-23 20:09:04'),
(55, 2, 31, 1, '2022-02-23 20:07:58', NULL),
(56, 2, 32, 1, '2022-02-23 20:08:11', NULL),
(57, 2, 33, 1, '2022-02-23 20:08:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Software Engineering', 'CSIT-719', '2022-01-01 10:30:57', NULL),
(11, 'Design and Analysis of Algorithms', 'CSIT-720', '2022-02-21 01:30:48', NULL),
(12, 'Data Warehouse and Data Mining', 'CSIT-731', '2022-02-21 01:32:40', NULL),
(13, 'Artificial Intelligence', 'CSIT-732', '2022-02-21 01:35:00', NULL),
(14, 'Java Programming', 'CSIT-735', '2022-02-21 01:36:42', NULL),
(15, 'Python Programming', 'CSIT-735', '2022-02-21 01:37:26', NULL),
(16, 'Mini Project', 'CSIT-799', '2022-02-21 01:37:59', NULL),
(17, 'Cyber Security', 'CSIT-735', '2022-02-21 01:38:54', NULL),
(18, 'Fundamentals of Computes & Emerging Technologies', 'CSIT-708', '2022-02-21 01:47:37', NULL),
(19, 'Programming & Problem Solving with \'C\'', 'CSIT-709', '2022-02-21 01:49:21', NULL),
(20, 'Computer Organization & Architecture', 'CSIT-711', '2022-02-21 01:50:22', NULL),
(21, 'Web Technologies', 'CSIT-712', '2022-02-21 01:50:53', NULL),
(22, 'Discrete mathmatics', 'MAS-621', '2022-02-21 01:51:59', NULL),
(23, 'Essentials of  Management', 'BAM-752', '2022-02-21 01:52:48', NULL),
(24, 'Cloud Computing Technologies', 'CSIT-772', '2022-02-21 01:54:48', NULL),
(25, 'Distributed System', 'CSIT-825', '2022-02-21 01:56:11', NULL),
(26, 'Machine Learning', 'CSIT-830', '2022-02-21 01:57:09', NULL),
(27, 'Major Project', 'CSIT-891', '2022-02-21 01:57:42', NULL),
(28, 'Operating System', 'CSIT-713', '2022-02-23 20:01:38', NULL),
(29, 'Database Management Systems', 'CSIT-718', '2022-02-23 20:02:36', NULL),
(30, 'Computer Networks', 'CSIT-721', '2022-02-23 20:03:06', NULL),
(31, 'Data Structures', 'CSIT-725', '2022-02-23 20:03:35', NULL),
(32, 'Object oriented Programming', 'CSIT-728', '2022-02-23 20:04:26', NULL),
(33, 'Theory Of Automata and Formal Languages', 'CSIT-729', '2022-02-23 20:05:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
