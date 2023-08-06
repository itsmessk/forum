
SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



CREATE TABLE `adminmember` (
  `ad_id` varchar(5) NOT NULL,
  `ad_password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ad_fullname` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `adminmember` (`ad_id`, `ad_password`, `ad_fullname`) VALUES
('AD2', 'messi', 'Lionel Messi');



CREATE TABLE `alumniinfo` (
  `pi_name` varchar(100) NOT NULL,
  `pi_email` varchar(100) NOT NULL,
  `pi_register` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `alumniinfo` (`pi_name`,  `pi_email`, `pi_register`) VALUES
('Sundar', 'sundar@gmail.com',  'R1');



CREATE TABLE `alumnimember` (
  `pi_register` varchar(20) NOT NULL,
  `al_password` varchar(20) NOT NULL,
  `al_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `alumnimember` (`pi_register`, `al_password`, `al_status`) VALUES
('R1', 'sundar', 'Approve');





CREATE TABLE `forumdata` (
  `eforum_id` int(11) NOT NULL,
  `eforum_title` varchar(250) NOT NULL,
  `eforum_author` varchar(50) DEFAULT NULL,
  `eforum_content` text DEFAULT NULL,
  `eforum_tags` varchar(50) DEFAULT NULL,
  `eforum_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `forumdata` (`eforum_id`, `eforum_title`, `eforum_author`, `eforum_content`, `eforum_tags`, `eforum_time`) VALUES
(1, 'Job Referral', 'Sourav Ganguly', 'Is anyone working as a Developer in Kolkata ?', 'job, kolkata', '2020-06-27 21:22:07');



CREATE TABLE `forum_reply` (
  `forum_topic` varchar(50) NOT NULL,
  `forum_message` text NOT NULL,
  `forum_reply_id` int(11) NOT NULL,
  `forum_reply_time` varchar(50) NOT NULL,
  `forum_reply_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `forum_reply` (`forum_topic`, `forum_message`, `forum_reply_id`, `forum_reply_time`, `forum_reply_name`) VALUES
('Job Referral', 'Yes, but minimum 3 years of experience.', 34, '2020/06/28 06:42:19pm', 'Jhulan Goswami');



ALTER TABLE `adminmember`
  ADD PRIMARY KEY (`ad_id`);


ALTER TABLE `alumniinfo`
  ADD PRIMARY KEY (`pi_register`),
  ADD KEY `pi_register` (`pi_register`);


ALTER TABLE `alumnimember`
  ADD PRIMARY KEY (`pi_register`);


ALTER TABLE `forumdata`
  ADD PRIMARY KEY (`eforum_id`);


ALTER TABLE `forum_reply`
  ADD PRIMARY KEY (`forum_reply_id`);

ALTER TABLE `forumdata`
  MODIFY `eforum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;


ALTER TABLE `forum_reply`
  MODIFY `forum_reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;


ALTER TABLE `alumniinfo`
  ADD CONSTRAINT `foreign_key_fk` FOREIGN KEY (`pi_register`) REFERENCES `alumnimember` (`pi_register`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
