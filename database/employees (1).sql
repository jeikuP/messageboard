-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 05, 2024 at 06:55 AM
-- Server version: 8.0.37
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int NOT NULL,
  `user1_id` int NOT NULL,
  `user2_id` int NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'set when a new record is inserted',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'updates time when conversation is modified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user1_id`, `user2_id`, `created`, `modified`) VALUES
(20, 51, 51, '2024-07-02 06:10:34', '2024-07-03 03:11:39'),
(21, 51, 52, '2024-07-02 06:10:40', '2024-07-03 02:26:18'),
(24, 51, 59, '2024-07-02 06:50:27', '2024-07-03 03:58:56'),
(25, 51, 62, '2024-07-02 08:32:30', '2024-07-03 03:28:17'),
(27, 51, 61, '2024-07-03 03:27:54', '2024-07-03 03:27:54'),
(28, 51, 57, '2024-07-03 03:28:05', '2024-07-03 03:28:05'),
(29, 51, 53, '2024-07-03 03:28:24', '2024-07-04 01:10:43'),
(30, 51, 55, '2024-07-03 03:28:37', '2024-07-04 05:51:44'),
(31, 51, 56, '2024-07-03 03:28:42', '2024-07-04 06:16:46'),
(32, 74, 55, '2024-07-04 02:10:47', '2024-07-04 06:09:00'),
(33, 55, 56, '2024-07-04 02:15:52', '2024-07-04 06:17:00'),
(34, 55, 57, '2024-07-04 05:18:08', '2024-07-04 05:18:26'),
(35, 82, 55, '2024-07-04 06:11:58', '2024-07-04 06:12:17'),
(39, 63, 79, '2024-07-04 06:26:32', '2024-07-04 06:26:32'),
(40, 63, 78, '2024-07-04 06:26:45', '2024-07-05 02:17:23'),
(42, 71, 52, '2024-07-05 00:53:41', '2024-07-05 00:53:41'),
(51, 63, 53, '2024-07-05 02:30:33', '2024-07-05 05:30:13'),
(55, 62, 63, '2024-07-05 02:58:44', '2024-07-05 03:47:31'),
(56, 63, 71, '2024-07-05 02:59:02', '2024-07-05 03:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `conversation_id` int NOT NULL,
  `sender_id` int NOT NULL,
  `recipient_id` int NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'set when a new record is inserted',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'updates time when message is modified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `sender_id`, `recipient_id`, `message`, `sent_at`, `modified`) VALUES
(49, 20, 51, 51, 'testi', '2024-07-02 06:10:34', '2024-07-02 06:10:34'),
(50, 21, 51, 52, '1234', '2024-07-02 06:10:40', '2024-07-02 06:10:40'),
(52, 20, 51, 51, 'ewewewew', '2024-07-02 06:10:57', '2024-07-02 06:10:57'),
(53, 20, 51, 51, '123refsdfvbrg ', '2024-07-02 06:30:08', '2024-07-02 06:30:08'),
(54, 20, 51, 51, 'dfsdfsf', '2024-07-02 06:37:26', '2024-07-02 06:37:26'),
(55, 20, 51, 51, 'raaraa', '2024-07-02 06:45:01', '2024-07-02 06:45:01'),
(57, 21, 51, 52, '55555', '2024-07-02 06:45:18', '2024-07-02 06:45:18'),
(58, 24, 51, 59, 'fsfds fdf ffa sfasdsas', '2024-07-02 06:50:27', '2024-07-02 06:50:27'),
(59, 21, 51, 52, 'sasdass', '2024-07-02 07:16:24', '2024-07-02 07:16:24'),
(62, 24, 51, 59, 'sdasdsdsadadas', '2024-07-02 08:18:28', '2024-07-02 08:18:28'),
(63, 21, 51, 52, 'testtt', '2024-07-02 08:19:36', '2024-07-02 08:19:36'),
(64, 21, 51, 52, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A iaculis at erat pellentesque adipiscing commodo. Nulla posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Viverra ipsum nunc aliquet bibendum enim facilisis gravida. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum. Magnis dis parturient montes nascetur ridiculus mus mauris. Integer vitae justo eget magna fermentum iaculis. Dui nunc mattis enim ut tellus elementum sagittis vitae. Massa tempor nec feugiat nisl pretium. Volutpat est velit egestas dui id ornare arcu odio. Duis tristique sollicitudin nibh sit amet. Pharetra convallis posuere morbi leo urna molestie at elementum. Ornare suspendisse sed nisi lacus sed viverra tellus in. Quam quisque id diam vel quam elementum pulvinar etiam. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae.', '2024-07-02 08:31:39', '2024-07-02 08:31:39'),
(65, 25, 51, 62, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A iaculis at erat pellentesque adipiscing commodo. Nulla posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Viverra ipsum nunc aliquet bibendum enim facilisis gravida. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum. Magnis dis parturient montes nascetur ridiculus mus mauris. Integer vitae justo eget magna fermentum iaculis. Dui nunc mattis enim ut tellus elementum sagittis vitae. Massa tempor nec feugiat nisl pretium. Volutpat est velit egestas dui id ornare arcu odio. Duis tristique sollicitudin nibh sit amet. Pharetra convallis posuere morbi leo urna molestie at elementum. Ornare suspendisse sed nisi lacus sed viverra tellus in. Quam quisque id diam vel quam elementum pulvinar etiam. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae.', '2024-07-02 08:32:30', '2024-07-02 08:32:30'),
(70, 21, 51, 52, 'sdsd', '2024-07-03 02:13:22', '2024-07-03 02:13:22'),
(71, 21, 51, 52, 'dsds', '2024-07-03 02:15:31', '2024-07-03 02:15:31'),
(72, 21, 51, 52, 'dsds', '2024-07-03 02:15:32', '2024-07-03 02:15:32'),
(73, 21, 51, 52, 'sdsd', '2024-07-03 02:16:21', '2024-07-03 02:16:21'),
(74, 21, 51, 52, 'testibg', '2024-07-03 02:16:30', '2024-07-03 02:16:30'),
(75, 20, 51, 51, 'Message sent successfully', '2024-07-03 02:17:16', '2024-07-03 02:17:16'),
(76, 21, 51, 52, 'for threeee', '2024-07-03 02:19:08', '2024-07-03 02:19:08'),
(77, 20, 51, 51, 'yey', '2024-07-03 02:19:17', '2024-07-03 02:19:17'),
(80, 20, 51, 51, 'sdsd', '2024-07-03 02:24:36', '2024-07-03 02:24:36'),
(81, 21, 51, 52, 'test', '2024-07-03 02:25:20', '2024-07-03 02:25:20'),
(82, 21, 51, 52, 'test', '2024-07-03 02:25:22', '2024-07-03 02:25:22'),
(83, 21, 51, 52, 'test', '2024-07-03 02:26:18', '2024-07-03 02:26:18'),
(92, 20, 51, 51, 'asdsadas', '2024-07-03 02:48:46', '2024-07-03 02:48:46'),
(93, 20, 51, 51, 'ss', '2024-07-03 02:50:20', '2024-07-03 02:50:20'),
(94, 20, 51, 51, 'ss', '2024-07-03 02:50:21', '2024-07-03 02:50:21'),
(95, 20, 51, 51, 'sss', '2024-07-03 02:50:39', '2024-07-03 02:50:39'),
(96, 20, 51, 51, 'sss', '2024-07-03 02:50:40', '2024-07-03 02:50:40'),
(97, 20, 51, 51, 'ss', '2024-07-03 02:50:42', '2024-07-03 02:50:42'),
(98, 20, 51, 51, 'sssss', '2024-07-03 02:53:09', '2024-07-03 02:53:09'),
(99, 20, 51, 51, 'test', '2024-07-03 02:53:35', '2024-07-03 02:53:35'),
(102, 20, 51, 51, 'ttsst', '2024-07-03 03:11:39', '2024-07-03 03:11:39'),
(104, 27, 51, 61, '1234', '2024-07-03 03:27:54', '2024-07-03 03:27:54'),
(105, 28, 51, 57, '12345', '2024-07-03 03:28:05', '2024-07-03 03:28:05'),
(106, 25, 51, 62, '1234', '2024-07-03 03:28:17', '2024-07-03 03:28:17'),
(107, 29, 51, 53, '2234', '2024-07-03 03:28:24', '2024-07-03 03:28:24'),
(109, 31, 51, 56, '1234', '2024-07-03 03:28:42', '2024-07-03 03:28:42'),
(110, 31, 51, 56, '1234', '2024-07-03 03:33:25', '2024-07-03 03:33:25'),
(111, 31, 51, 56, 'yoouhgfvdsc', '2024-07-03 03:33:31', '2024-07-03 03:33:31'),
(112, 29, 51, 53, 'youyutgfv', '2024-07-03 03:33:36', '2024-07-03 03:33:36'),
(114, 29, 51, 53, 'thremmm', '2024-07-03 03:33:53', '2024-07-03 03:33:53'),
(116, 29, 51, 53, 'themm', '2024-07-03 03:34:08', '2024-07-03 03:34:08'),
(117, 24, 51, 59, '1234', '2024-07-03 03:35:35', '2024-07-03 03:35:35'),
(119, 24, 51, 59, 'thids', '2024-07-03 03:36:42', '2024-07-03 03:36:42'),
(120, 29, 51, 53, 'thiddsd s', '2024-07-03 03:36:49', '2024-07-03 03:36:49'),
(121, 29, 51, 53, 'yeh', '2024-07-03 03:51:09', '2024-07-03 03:51:09'),
(122, 24, 51, 59, 'haha', '2024-07-03 03:58:56', '2024-07-03 03:58:56'),
(123, 29, 53, 53, 'this is sparta', '2024-07-04 01:10:43', '2024-07-04 01:10:43'),
(132, 31, 56, 56, 'sadsa', '2024-07-04 03:07:51', '2024-07-04 03:07:51'),
(201, 32, 55, 55, 'hey', '2024-07-04 05:15:05', '2024-07-04 05:15:05'),
(202, 32, 55, 55, 'get', '2024-07-04 05:15:10', '2024-07-04 05:15:10'),
(209, 32, 55, 55, 'hgey', '2024-07-04 05:16:38', '2024-07-04 05:16:38'),
(210, 32, 55, 55, 'hey', '2024-07-04 05:16:48', '2024-07-04 05:16:48'),
(212, 32, 55, 55, 'geyt', '2024-07-04 05:17:01', '2024-07-04 05:17:01'),
(234, 33, 56, 56, 'hey', '2024-07-04 05:30:58', '2024-07-04 05:30:58'),
(235, 33, 56, 56, 'hey', '2024-07-04 05:34:09', '2024-07-04 05:34:09'),
(236, 33, 56, 56, 'test', '2024-07-04 05:35:18', '2024-07-04 05:35:18'),
(237, 33, 56, 56, 'heheheh', '2024-07-04 05:40:27', '2024-07-04 05:40:27'),
(238, 33, 56, 56, 'heheheh', '2024-07-04 05:40:28', '2024-07-04 05:40:28'),
(239, 33, 56, 56, 'hehe', '2024-07-04 05:43:38', '2024-07-04 05:43:38'),
(240, 31, 56, 56, 'gege', '2024-07-04 05:43:48', '2024-07-04 05:43:48'),
(252, 30, 55, 55, 'hey', '2024-07-04 05:51:25', '2024-07-04 05:51:25'),
(255, 33, 55, 56, 'hi', '2024-07-04 05:52:27', '2024-07-04 05:52:27'),
(257, 32, 55, 55, 'hey', '2024-07-04 05:53:03', '2024-07-04 05:53:03'),
(258, 32, 55, 55, 'To adjust the width of each <li> based on the length of the message content, you can modify the styles in your HTML and ensure they adapt dynamically. Here’s how you can update your existing code:', '2024-07-04 05:55:47', '2024-07-04 05:55:47'),
(259, 32, 55, 55, 'To adjust the width of each <li> based on the length of the message content, you can modify the styles in your HTML and ensure they adapt dynamically. Here’s how you can update your existing code:', '2024-07-04 05:55:52', '2024-07-04 05:55:52'),
(260, 32, 55, 55, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tellus mauris a diam maecenas. Sed id semper risus in hendrerit gravida rutrum quisque non. Lorem sed risus ultricies tristique nulla aliquet enim tortor. Fringilla ut morbi tincidunt augue interdum. Congue nisi vitae suscipit tellus mauris a. Sed adipiscing diam donec adipiscing. Sed egestas egestas fringilla phasellus faucibus scelerisque eleifend. Urna molestie at elementum eu facilisis sed odio. Morbi leo urna molestie at elementum. Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Arcu felis bibendum ut tristique et egestas quis. Auctor neque vitae tempus quam pellentesque nec nam aliquam sem. Nec tincidunt praesent semper feugiat nibh sed pulvinar proin. Vitae et leo duis ut diam quam nulla. Elit duis tristique sollicitudin nibh sit amet commodo. Purus sit amet luctus venenatis lectus magna fringilla.', '2024-07-04 05:56:51', '2024-07-04 05:56:51'),
(268, 35, 82, 55, 'hey', '2024-07-04 06:11:58', '2024-07-04 06:11:58'),
(269, 35, 82, 55, 'hey kd35', '2024-07-04 06:12:04', '2024-07-04 06:12:04'),
(270, 35, 55, 55, 'hey', '2024-07-04 06:12:17', '2024-07-04 06:12:17'),
(271, 33, 56, 56, 'hhe', '2024-07-04 06:15:00', '2024-07-04 06:15:00'),
(272, 33, 56, 56, 'hehehe', '2024-07-04 06:15:04', '2024-07-04 06:15:04'),
(273, 31, 56, 56, 'eheh', '2024-07-04 06:15:12', '2024-07-04 06:15:12'),
(274, 31, 56, 56, 'hehe', '2024-07-04 06:16:46', '2024-07-04 06:16:46'),
(389, 51, 63, 53, 'asdasd', '2024-07-05 02:53:51', '2024-07-05 02:53:51'),
(392, 55, 62, 63, 'iceeee', '2024-07-05 02:58:44', '2024-07-05 02:58:44'),
(393, 56, 63, 71, 'sdasda', '2024-07-05 02:59:02', '2024-07-05 02:59:02'),
(395, 56, 63, 71, 'sdssads', '2024-07-05 03:35:54', '2024-07-05 03:35:54'),
(396, 56, 63, 71, 'sdasdasd', '2024-07-05 03:35:55', '2024-07-05 03:35:55'),
(397, 56, 63, 71, 'asdsaas', '2024-07-05 03:35:57', '2024-07-05 03:35:57'),
(398, 56, 63, 71, 'sadasas', '2024-07-05 03:35:58', '2024-07-05 03:35:58'),
(399, 56, 63, 71, 'sdasd', '2024-07-05 03:36:00', '2024-07-05 03:36:00'),
(400, 56, 63, 71, 'asdas', '2024-07-05 03:36:01', '2024-07-05 03:36:01'),
(401, 56, 63, 71, 'asdas', '2024-07-05 03:36:02', '2024-07-05 03:36:02'),
(402, 56, 63, 71, 'adas', '2024-07-05 03:36:03', '2024-07-05 03:36:03'),
(403, 56, 63, 71, 'sdass', '2024-07-05 03:36:13', '2024-07-05 03:36:13'),
(404, 56, 63, 71, 'asdsa', '2024-07-05 03:36:14', '2024-07-05 03:36:14'),
(405, 55, 62, 63, 'More RVs were seen in the storage lot than at the campground.\nTom got a small piece of pie.\nThe gruff old man sat in the back of the bait shop grumbling to himself as he scooped out a handful of worms.', '2024-07-05 03:46:41', '2024-07-05 03:46:41'),
(406, 55, 63, 63, 'Last Friday I saw a spotted striped blue worm shake hands with a legless lizard.\nWe need to rent a room for our party.\nI currently have 4 windows open up… and I don’t know why.', '2024-07-05 03:47:04', '2024-07-05 03:47:04'),
(407, 55, 63, 63, 'He decided that the time had come to be stronger than any of the excuses he\'d used until then.\nHe ended up burning his fingers poking someone else\'s fire.\nWhen money was tight, he\'d get his lunch money from the local wishing well.', '2024-07-05 03:47:12', '2024-07-05 03:47:12'),
(408, 55, 62, 63, 'He loved eating his bananas in hot dog buns.\nIt took him a while to realize that everything he decided not to change, he was actually choosing.\nWe will not allow you to bring your pet armadillo along.', '2024-07-05 03:47:31', '2024-07-05 03:47:31'),
(409, 51, 63, 53, 'f', '2024-07-05 05:30:13', '2024-07-05 05:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `hobby` longtext,
  `last_login` timestamp NULL DEFAULT NULL COMMENT 'update manually when logging in',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'set when a new record is inserted',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'updates time when profile is modified',
  `profile_pic` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `birthdate`, `gender`, `hobby`, `last_login`, `created`, `modified`, `profile_pic`) VALUES
(51, 'Jeiku Prahinog', 'jake.prahinog@cit.edu', '123456', '2001-10-06', 'Male', 'Running, Basketball', '2024-07-04 01:53:24', '2024-07-02 01:51:36', '2024-07-04 02:10:05', 'img/profile_pics/profile_51_1719997737.jpeg'),
(52, 'Kobe Bryant', 'kobe.bryant@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', '2024-07-03', 'Male', 'bb', '2024-07-03 09:41:55', '2024-07-02 01:53:05', '2024-07-03 09:41:55', 'img/profile_pics/profile_52_1719997809.jpg'),
(53, 'Chef Curry', 'steph3@gmail.com', '627a9ca490d028ff760d53db58783fc3e3db51cfd47485b66d5ae75901c9c3fd', '2024-07-03', 'Male', 'Basketball', '2024-07-04 01:34:55', '2024-07-02 01:53:30', '2024-07-04 01:52:59', 'img/profile_pics/profile_53_1720055465.jpg'),
(55, 'Kevin Durant', 'durantula35@gmail.com', '627a9ca490d028ff760d53db58783fc3e3db51cfd47485b66d5ae75901c9c3fd', '2024-07-07', 'Male', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cursus turpis massa tincidunt dui ut ornare. Nunc eget lorem dolor sed. Egestas sed sed risus pretium quam. Arcu risus quis varius quam quisque id diam vel. Nulla porttitor massa id neque aliquam vestibulum. Dignissim suspendisse in est ante in nibh. Pretium quam vulputate dignissim suspendisse in. Augue eget arcu dictum varius duis. Sit amet justo donec enim diam. Et molestie ac feugiat sed lectus vestibulum mattis. Platea dictumst quisque sagittis purus sit amet volutpat. Rhoncus mattis rhoncus urna neque viverra justo. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Integer eget aliquet nibh praesent tristique magna sit. Eu nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper. At lectus urna duis convallis. Amet consectetur adipiscing elit duis.', '2024-07-04 06:18:54', '2024-07-02 01:54:10', '2024-07-04 06:20:02', 'img/profile_pics/profile_55_1720060000.jpeg'),
(56, 'Gojo Satoru', 'ryoiki.tenkai@gmail.com', '', '2024-07-03', 'Male', 'Domain Expansion', '2024-07-04 06:14:57', '2024-07-02 01:54:38', '2024-07-04 06:17:41', 'img/profile_pics/profile_56_1720073858.jpeg'),
(57, 'Itadori Yuji', 'yuji.sukuna@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, NULL, '2024-07-02 01:54:58', '2024-07-02 01:54:58', NULL),
(58, 'Ryomen Sukuna', 'sukuna.fireball@outlook.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, NULL, '2024-07-02 01:55:36', '2024-07-02 01:55:36', NULL),
(59, 'Monkey D. Luffy', 'gear.5@onepiece.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', '2024-04-01', 'Male', 'Senbon Sakura', '2024-07-05 02:58:05', '2024-07-02 01:56:01', '2024-07-05 02:58:05', 'img/profile_pics/profile_59_1720148209.jpg'),
(60, 'Roronoa Zoro', 'zoro.santoryu@onepiece.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, '2024-07-05 03:32:52', '2024-07-02 01:56:31', '2024-07-05 03:32:52', NULL),
(61, 'Vinsmoke Sanji', 'browgoro@onepiece.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, NULL, '2024-07-02 01:56:59', '2024-07-02 01:56:59', NULL),
(62, 'Kurosaki Ichigo', 'getsuga.tensho@bleach.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', '2024-07-03', 'Male', 'Senbon Sakura', '2024-07-05 03:47:18', '2024-07-02 01:57:28', '2024-07-05 03:47:18', 'img/profile_pics/profile_62_1720151192.jpeg'),
(63, 'Hitsugaya Toshiro', 'ice.icebaby@bleach.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', '2023-12-03', 'Male', 'Senbon Sakura', '2024-07-05 05:28:38', '2024-07-02 01:58:24', '2024-07-05 05:28:38', 'img/profile_pics/profile_63_1720075965.jpeg'),
(68, 'John Doe', 'john.doe@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, NULL, '2024-07-03 05:39:43', '2024-07-03 05:39:43', NULL),
(70, 'John Doe', 'johndoe@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, NULL, '2024-07-03 05:44:26', '2024-07-03 05:44:26', NULL),
(71, 'Zach Lavine', 'zach23@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, '2024-07-05 00:51:30', '2024-07-03 05:48:15', '2024-07-05 00:51:30', NULL),
(72, 'Kawhi Leonard', 'kawhi.klaw@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, '2024-07-05 01:09:30', '2024-07-03 05:54:06', '2024-07-05 01:09:30', NULL),
(73, 'Giannis Antetokounmp', 'greek.freak@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, NULL, '2024-07-03 05:57:28', '2024-07-03 05:57:28', NULL),
(74, 'Paul George', 'pg13@gmail.com', '053c72c2183445256556784b20df88d4921afbb231c9852c6d359052e52eb733', '2024-07-01', 'Male', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cursus turpis massa tincidunt dui ut ornare. Nunc eget lorem dolor sed. Egestas sed sed risus pretium quam. Arcu risus quis varius quam quisque id diam vel. Nulla porttitor massa id neque aliquam vestibulum. Dignissim suspendisse in est ante in nibh. Pretium quam vulputate dignissim suspendisse in. Augue eget arcu dictum varius duis. Sit amet justo donec enim diam. Et molestie ac feugiat sed lectus vestibulum mattis. Platea dictumst quisque sagittis purus sit amet volutpat. Rhoncus mattis rhoncus urna neque viverra justo. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Integer eget aliquet nibh praesent tristique magna sit. Eu nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper. At lectus urna duis convallis. Amet consectetur adipiscing elit duis.', '2024-07-04 06:20:29', '2024-07-03 05:58:22', '2024-07-04 06:20:44', 'img/profile_pics/profile_74_1720055376.jpg'),
(75, 'Kyrie Irving', 'kyrie11@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, '2024-07-05 01:10:27', '2024-07-03 05:59:08', '2024-07-05 01:10:27', NULL),
(76, 'Dianne Agua', 'dianne@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, NULL, '2024-07-03 06:03:31', '2024-07-03 06:03:31', NULL),
(77, 'JP Belaro', 'gwapoko@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, NULL, '2024-07-03 06:06:13', '2024-07-03 06:06:13', NULL),
(78, 'Trae young', 'icetwae@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, '2024-07-05 02:11:08', '2024-07-03 06:29:16', '2024-07-05 02:11:08', NULL),
(79, 'James Harden', 'james.harden@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', '2024-07-03', 'Male', NULL, '2024-07-03 06:31:01', '2024-07-03 06:30:16', '2024-07-03 06:36:12', NULL),
(80, 'Andre Drummond', 'andre.drummond@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', '2024-07-03', 'Male', NULL, '2024-07-05 02:58:21', '2024-07-03 06:38:57', '2024-07-05 02:58:21', NULL),
(82, 'LeBron James', 'lbj23@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', '2024-06-02', 'Male', 'Basketball. Golf', '2024-07-04 06:11:08', '2024-07-04 06:11:00', '2024-07-04 06:11:45', 'img/profile_pics/profile_82_1720073505.jpeg'),
(83, 'Klay Thompson', 'klay11@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', '2024-07-03', 'Male', 'Basketball. Golf', '2024-07-05 05:19:28', '2024-07-05 03:14:43', '2024-07-05 05:19:28', 'img/profile_pics/profile_83_1720149376.jpeg'),
(84, 'Draymond Green', 'dray23@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', '2024-04-01', 'Male', 'bb', '2024-07-05 03:19:50', '2024-07-05 03:17:16', '2024-07-05 03:20:53', 'img/profile_pics/profile_84_1720149653.jpeg'),
(85, 'Jayson Tatum', 'jt0@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, '2024-07-05 03:18:50', '2024-07-05 03:18:44', '2024-07-05 03:18:50', NULL),
(86, 'Zaza Pachuli', 'zaza@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', '2024-07-03', 'Male', 'Domain Expansion', '2024-07-05 03:22:38', '2024-07-05 03:22:31', '2024-07-05 03:23:01', 'img/profile_pics/profile_86_1720149781.jpeg'),
(87, 'Shaun Livingston', 'shaun@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', '2023-12-03', 'Male', 'Basketball. Golf', '2024-07-05 03:26:16', '2024-07-05 03:26:10', '2024-07-05 03:26:36', 'img/profile_pics/profile_87_1720149996.jpeg'),
(88, 'Jaylen Brown', 'jbfc@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, '2024-07-05 03:29:22', '2024-07-05 03:29:14', '2024-07-05 03:29:22', NULL),
(89, 'DeMar DeRozan', 'deebo@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, '2024-07-05 03:40:32', '2024-07-05 03:40:26', '2024-07-05 03:40:32', NULL),
(90, 'Lance Stephenson', 'lance@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, '2024-07-05 03:42:29', '2024-07-05 03:42:22', '2024-07-05 03:42:29', NULL),
(91, 'John Doe', 'testing@gmail.com', 'ed98cc1edc12254e0026145ddb1d0f59bfac76ea', NULL, NULL, NULL, '2024-07-05 05:20:05', '2024-07-05 05:19:58', '2024-07-05 05:20:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user1_id` (`user1_id`),
  ADD KEY `user2_id` (`user2_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversation_id` (`conversation_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conversations_ibfk_2` FOREIGN KEY (`user2_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
