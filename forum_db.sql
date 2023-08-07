-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 04:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminmember`
--

CREATE TABLE `adminmember` (
  `ad_id` varchar(5) NOT NULL,
  `ad_password` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ad_fullname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminmember`
--

INSERT INTO `adminmember` (`ad_id`, `ad_password`, `ad_fullname`) VALUES
('AD2', 'messi', 'Lionel Messi');

-- --------------------------------------------------------

--
-- Table structure for table `alumniinfo`
--

CREATE TABLE `alumniinfo` (
  `pi_name` varchar(100) NOT NULL,
  `pi_email` varchar(100) NOT NULL,
  `pi_register` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alumniinfo`
--

INSERT INTO `alumniinfo` (`pi_name`, `pi_email`, `pi_register`) VALUES
('sundar', 'sundar@gmail.com', 'R1');

-- --------------------------------------------------------

--
-- Table structure for table `alumnimember`
--

CREATE TABLE `alumnimember` (
  `pi_register` varchar(20) NOT NULL,
  `al_password` varchar(20) NOT NULL,
  `al_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alumnimember`
--

INSERT INTO `alumnimember` (`pi_register`, `al_password`, `al_status`) VALUES
('1234', '1234', 'Not Approve'),
('R1', 'sourav', 'Approve'),
('R10', 'bumrah', 'Approve');

-- --------------------------------------------------------

--
-- Table structure for table `forumdata`
--

CREATE TABLE `forumdata` (
  `eforum_id` int(11) NOT NULL,
  `eforum_title` varchar(250) NOT NULL,
  `eforum_author` varchar(50) DEFAULT NULL,
  `eforum_content` text DEFAULT NULL,
  `eforum_tags` varchar(50) DEFAULT NULL,
  `eforum_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `forumdata`
--

INSERT INTO `forumdata` (`eforum_id`, `eforum_title`, `eforum_author`, `eforum_content`, `eforum_tags`, `eforum_time`) VALUES
(23, 'test 2', 'Lionel Messi', 'nothing only test', '#wert', '2023-08-06 02:37:35'),
(24, 'test by user', 'Sourav Ganguly', 'testing 1 by user', '#wert', '2023-08-06 02:51:43'),
(25, 'test after clear navigation', 'Lionel Messi', 'test after clear navigation', '#wert', '2023-08-06 03:00:43'),
(26, 'test by sk', 'sundar', 'hello everyone', '#sk', '2023-08-06 03:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply`
--

CREATE TABLE `forum_reply` (
  `forum_topic` varchar(50) NOT NULL,
  `forum_message` text NOT NULL,
  `forum_reply_id` int(11) NOT NULL,
  `forum_reply_time` varchar(50) NOT NULL,
  `forum_reply_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `forum_reply`
--

INSERT INTO `forum_reply` (`forum_topic`, `forum_message`, `forum_reply_id`, `forum_reply_time`, `forum_reply_name`) VALUES
('Job Referral', 'Yes, but minimum 3 years of experience.', 34, '2020/06/28 06:42:19pm', 'Jhulan Goswami'),
('check1', 'hello its a test to functionality of the #22 forum id\r\n', 37, '2023/08/06 08:02:16am', 'Lionel Messi'),
('check1', 'hello its a test to functionality of the #22 forum id\r\n', 38, '2023/08/06 08:02:52am', 'Lionel Messi'),
('check1', 'hello its a test to functionality of the #22 forum id\r\n', 39, '2023/08/06 08:04:04am', 'Lionel Messi'),
('test 2', 'test succesful', 40, '2023/08/06 08:22:10am', 'Sourav Ganguly'),
('test by user', 'rely check', 41, '2023/08/06 08:23:38am', 'Sourav Ganguly'),
('test by sk', 'hello sk', 42, '2023/08/06 09:28:29am', 'sundar'),
('test by sk', 'hii sundar its admin here\r\n', 43, '2023/08/06 09:29:52am', 'Lionel Messi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminmember`
--
ALTER TABLE `adminmember`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `alumniinfo`
--
ALTER TABLE `alumniinfo`
  ADD PRIMARY KEY (`pi_register`),
  ADD KEY `pi_register` (`pi_register`);

--
-- Indexes for table `alumnimember`
--
ALTER TABLE `alumnimember`
  ADD PRIMARY KEY (`pi_register`);

--
-- Indexes for table `forumdata`
--
ALTER TABLE `forumdata`
  ADD PRIMARY KEY (`eforum_id`);

--
-- Indexes for table `forum_reply`
--
ALTER TABLE `forum_reply`
  ADD PRIMARY KEY (`forum_reply_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forumdata`
--
ALTER TABLE `forumdata`
  MODIFY `eforum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `forum_reply`
--
ALTER TABLE `forum_reply`
  MODIFY `forum_reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumniinfo`
--
ALTER TABLE `alumniinfo`
  ADD CONSTRAINT `foreign_key_fk` FOREIGN KEY (`pi_register`) REFERENCES `alumnimember` (`pi_register`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
