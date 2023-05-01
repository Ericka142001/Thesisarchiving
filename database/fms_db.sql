-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 01:18 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_list`
--

CREATE TABLE `archive_list` (
  `id` int(30) NOT NULL,
  `archive_code` varchar(100) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `month` int(2) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `title` text NOT NULL,
  `abstract` text NOT NULL,
  `members` text NOT NULL,
  `adviser` varchar(255) NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `student_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_list`
--

INSERT INTO `archive_list` (`id`, `archive_code`, `curriculum_id`, `month`, `year`, `title`, `abstract`, `members`, `adviser`, `banner_path`, `document_path`, `status`, `student_id`, `date_created`, `date_updated`) VALUES
(5, '2022040001', 2, 11, 2015, 'Unwanted Pregnancy: Its Effects To The Cognitive Social And Behavioral Development Of Children: A Qualitative Case Study', '&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;text-justify:inter-ideograph&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:12.0pt;font-family:&amp;quot;Tahoma&amp;quot;,sans-serif&quot;&gt;This study\r\n&ldquo;Unwanted Pregnancy: Its Effects to Cognitive, Social and Behavioral\r\nDevelopment of Children &ldquo; is&amp;nbsp; qualitative\r\ncase study with researcher-made questionnaire. The findings of the study showed\r\nvaried reasons of unwanted pregnancy, such as lack of family\r\nplanning, curiosity, attachment during early romantic relationship are major\r\nfactors for pre-marital sex which resulted to unwanted pregnancy. Moreover,\r\nbased on the survey and interview conducted to the parents, it was revealed\r\nthat unwanted pregnancy has no definite or serious negative effects to the\r\ncognitive development of their children. The parents perceptions imply that\r\nthere were no adverse effects of unwanted pregnancy to the learning of their\r\nchildren whose school performance is described as considerably good.&amp;nbsp;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;ul&gt;&lt;li&gt;Michelle B. Ygsi&lt;/li&gt;&lt;li&gt;Christopher Malik&lt;/li&gt;&lt;li&gt;Maria Tessa Cielo Alegarbis&lt;/li&gt;&lt;/ul&gt;', 'Dr. Evelyn V.Cortes', 'uploads/banners/archive-5.png?v=1650629581', 'uploads/pdf/archive-5.pdf?v=1650629581', 1, 5, '2022-04-22 20:13:01', '2022-04-23 15:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculum_list`
--

INSERT INTO `curriculum_list` (`id`, `department_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 2, 'BSHM', 'Bachelor of Science in Hospitality Management', 1, '2021-12-07 10:10:20', '2022-08-11 18:51:25'),
(2, 2, 'BSIT', 'Bachelor of Science in Information Technology', 1, '2021-12-07 10:10:56', '2022-08-11 18:51:20'),
(3, 2, 'BEEd', 'Bachelor of Elementary Education', 1, '2021-12-07 10:12:50', NULL),
(4, 2, 'BSEd', 'Bachelor of Secondary Education', 1, '2021-12-07 10:13:10', NULL),
(6, 2, 'BSBA', 'Bachelor of Science in Business Administration', 1, '2021-12-07 10:14:26', '2022-08-11 18:51:16'),
(14, 2, 'HRM', 'Hospital and Restaurant Management', 1, '2022-08-11 19:17:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(2, 'College of Education', 'Implement Teacher Education Programs for the elementary and secondary levels and endeavor to achieve quality and excellence, relevance and responsiveness, equity and access, and efficiency and effectiveness in instruction, research, extension, and production.', 1, '2021-12-07 09:28:33', '2021-12-07 09:46:57'),
(3, 'College of Arts and Sciences', 'Develop and implement programs in Liberal Arts and Sciences to achieve academic excellence and competencies geared towards the total development of the learners in their specialized fields.', 1, '2021-12-07 09:34:11', NULL),
(4, 'College of Business Management and Accountancy', 'College of Business Management and Accountancy', 1, '2021-12-07 09:34:55', NULL),
(5, 'College of Computer Studies', 'Develop creative innovators with the confidence and courage to seize and transform opportunities for the benefit of the society.', 1, '2021-12-07 09:35:19', '2021-12-07 09:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `month_list`
--

CREATE TABLE `month_list` (
  `id` int(10) NOT NULL,
  `months` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `month_list`
--

INSERT INTO `month_list` (`id`, `months`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `middlename`, `lastname`, `department_id`, `curriculum_id`, `email`, `password`, `gender`, `status`, `avatar`, `date_created`, `date_updated`) VALUES
(5, 'Jillian Mae', '', 'Biquera', 5, 2, 'jillianbisquera27@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'Female', 1, 'uploads/student-5.png?v=1650628101', '2022-04-22 19:26:26', '2022-04-22 19:48:21'),
(6, 'Phillip Rhoy', '', 'Albores', 5, 2, 'alboresphilliprhoy@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Male', 1, 'uploads/student-6.png?v=1660200427', '2022-08-11 14:31:43', '2022-08-11 14:47:07'),
(9, 'a', 'a', 'a', 2, 3, 'a@gmail.com', '0cc175b9c0f1b6a831c399e269772661', 'Male', 0, '', '2022-08-11 19:11:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'SCMBI Online Thesis and Capstone  Archiving System'),
(6, 'short_name', 'OTCAS - SMCBI'),
(11, 'logo', 'uploads/logo-1650625576.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1650625576.png'),
(15, 'content', 'Array'),
(16, 'email', 'smcbi1959@gmail.com'),
(17, 'contact', '(082) 553 9246'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Dahlia Street, Poblacion Uno, Bansalan, Davao del Sur 8005');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Super', NULL, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'uploads/avatar-1.png?v=1650627585', NULL, 1, 1, '2021-01-20 14:02:37', '2022-08-11 18:15:39'),
(2, 'Teacher', NULL, 'Admin', 'teacher', '8d788385431273d11e8b43bb78f3aa41', 'uploads/avatar-2.png?v=1650704289', NULL, 2, 1, '2021-12-13 14:38:02', '2022-08-11 18:14:50'),
(3, 'Sample ', NULL, 'Teacher 2', 'teacher2', 'ccffb0bb993eeb79059b31e1611ec353', 'uploads/avatar-3.png?v=1660214095', NULL, 2, 1, '2022-08-11 18:34:55', '2022-08-11 18:34:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `month` (`month`);

--
-- Indexes for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month_list`
--
ALTER TABLE `month_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `department_id` (`department_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_list`
--
ALTER TABLE `archive_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `month_list`
--
ALTER TABLE `month_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD CONSTRAINT `archive_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `archive_list_ibfk_2` FOREIGN KEY (`month`) REFERENCES `month_list` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD CONSTRAINT `curriculum_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
