-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 05:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odfs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'PHP', 'PHP is an open-source server-side scripting language that many devs use for web development. It is also a general-purpose language that you can use to make lots of projects, including Graphical User Interfaces (GUIs).', 1, 0, '2022-05-16 10:02:41', '2022-05-16 10:02:41'),
(2, 'VB.NET', 'Visual Basic, originally called Visual Basic .NET, is a multi-paradigm, object-oriented programming language, implemented on .NET, Mono, and the .NET Framework. Microsoft launched VB.NET in 2002 as the successor to its original Visual Basic language.', 1, 0, '2022-05-16 10:03:27', '2022-05-16 10:03:27'),
(3, 'Python', 'Python is a high-level, interpreted, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically-typed and garbage-collected.', 1, 0, '2022-05-16 10:03:48', '2022-05-16 10:03:48'),
(4, 'JavaScript', 'JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. Over 97% of websites use JavaScript on the client side for web page behavior, often incorporating third-party libraries.', 1, 0, '2022-05-16 10:04:11', '2022-05-16 10:04:11'),
(5, 'test', 'test', 1, 1, '2022-05-16 10:04:54', '2022-05-16 10:04:59'),
(6, 'CSS', 'Cascading Style Sheets for styling websites.', 1, 0, '2024-05-11 15:07:58', '2024-05-11 15:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `comment_list`
--

CREATE TABLE `comment_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_list`
--

INSERT INTO `comment_list` (`id`, `user_id`, `post_id`, `comment`, `date_created`) VALUES
(12, 11, 6, '<p>Comment test</p>', '2024-05-11 15:10:19'),
(14, 1, 6, '<p>test</p>', '2024-05-11 15:11:09'),
(15, 10, 7, '<p>Yes. There\'s a lot of resources from google like freeCodeCamp, w3schools, youtube, etc. Happy Coding!</p>', '2024-05-11 21:53:30'),
(16, 10, 8, 'ano yun?', '2024-05-12 18:01:26'),
(18, 12, 9, '<p>hi</p>', '2024-05-13 23:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `post_list`
--

CREATE TABLE `post_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_list`
--

INSERT INTO `post_list` (`id`, `user_id`, `category_id`, `title`, `content`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(4, 1, 1, 'test', '<p>test</p>', 1, 1, '2022-05-16 14:11:24', '2022-05-16 14:12:10'),
(6, 11, 6, 'Test', '<p>Description of the problem</p>', 1, 1, '2024-05-11 15:09:47', '2024-05-11 15:11:27'),
(7, 11, 6, 'I need help with CSS', '<p><span style=\"color: rgb(189, 183, 175); font-family: __Inter_aaf875, __Inter_Fallback_aaf875, ui-sans-serif, system-ui, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; background-color: rgba(30, 33, 34, 0.5);\">I want to customize the font and layout of my website, but I\'m not sure where to start. Can someone provide some guidance on how to change the font in a specific element, such as the sign-in button? Additionally, are there any good online resources or tools that can help me learn CSS basics and improve my skills?</span><br></p>', 1, 0, '2024-05-11 21:51:49', '2024-05-11 21:52:40'),
(8, 10, 4, 'need help', '<p>pls (edited)</p>', 1, 1, '2024-05-12 18:00:40', '2024-05-12 18:01:48'),
(9, 1, 4, 'test', '<p>test</p>', 1, 0, '2024-05-12 18:06:56', '2024-05-12 18:06:56'),
(10, 12, 1, 'test lang', '<p>test lang ulit</p>', 1, 1, '2024-05-13 22:59:40', '2024-05-13 23:02:10'),
(11, 1, 2, 'by admin', '<p>admin</p>', 1, 0, '2024-05-13 23:02:21', '2024-05-13 23:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'DisQroom'),
(6, 'short_name', 'DisQroom'),
(11, 'logo', 'uploads/logo.png?v=1652665183'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1652665183');

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
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='2';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Nathaniel Carlo', '', 'Morva', 'carlo', '7d6543d7862a07edf7902086f39b4b9a', 'uploads/avatars/1.png?v=1715402641', NULL, 1, '2021-01-20 14:02:37', '2024-05-11 12:44:01'),
(10, 'Joseph', '', 'Roxas', 'roxas', 'ffc6b9381fa434c0738b92223c2a46c1', 'uploads/avatars/10.png?v=1715402730', NULL, 2, '2024-05-11 12:45:30', '2024-05-11 12:45:30'),
(11, 'Blake Justin', 'C.', 'Bangcaya', 'blake', '3aa49ec6bfc910647fa1c5a013e48eef', 'uploads/avatars/11.png?v=1715411332', NULL, 2, '2024-05-11 15:08:52', '2024-05-11 15:08:52'),
(12, 'Frances Nicole', '', 'Abellera', 'nic', 'e821ba1edb9dc0a445b61d8ce702052a', 'uploads/avatars/12.png?v=1715612327', NULL, 2, '2024-05-13 22:58:47', '2024-05-13 22:58:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_list`
--
ALTER TABLE `comment_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post_list`
--
ALTER TABLE `post_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

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
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comment_list`
--
ALTER TABLE `comment_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `post_list`
--
ALTER TABLE `post_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_list`
--
ALTER TABLE `comment_list`
  ADD CONSTRAINT `post_id_fk_cl` FOREIGN KEY (`post_id`) REFERENCES `post_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_fk_cl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `post_list`
--
ALTER TABLE `post_list`
  ADD CONSTRAINT `category_id_fk_tl` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_fk_tl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
