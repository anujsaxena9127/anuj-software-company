-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2019 at 07:36 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anuj`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '123456789', 'first post', '2018-07-29 11:36:23', 'firstpost@gmail.com'),
(2, 'mera naam', '4434343434', 'Bhai please send ho jaa database mei', NULL, 'meraemail@gmail.com'),
(3, 'mera naam', '4434343434', 'Bhai please send ho jaa database mei', '2018-07-29 11:44:51', 'meraemail@gmail.com'),
(4, 'Bithika Pal', 'dfdf', 'posting now', '2018-07-29 15:46:28', 'bithikapddal@iitkgp.ac.in'),
(5, 'dfdf', 'dsffdfs', 'sd mail send please', '2018-07-29 17:19:41', 'dfdf@df.dfd'),
(6, 'dfdf', 'dsffdfs', 'sd mail send please', '2018-07-29 17:21:58', 'dfdf@df.dfd'),
(7, 'dfdf', 'dsffdfs', 'sd mail send please', '2018-07-29 17:22:33', 'dfdf@df.dfd'),
(8, 'Anuj kumar', '2132212828', 'main anuj hoon', '2019-08-14 00:14:08', 'social@cronj.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Linx', 'best software 2019', 'first-post', 'Linx is a low code IDE and server. IT pros use Linx to quickly create custom automated business processes, integrate applications, expose web services and to efficiently handle high workloads.\r\n\r\nEasy-to-use, drag-and-drop interface\r\nOver 100 pre-built functions and services for rapid development\r\nOne-click deployment to any local or remote Linx Server directly from the IDE\r\nInput and outputs include nearly any SQL & NoSQL databases, numerous file formats (text and binary) or REST and SOAP Web services\r\nLive debugging with step through logic\r\nAutomate backend processes via timer, directory events or message queue or expose web services, and call APIs via HTTP requests', 'img1.jpg', '2019-08-13 00:00:00'),
(2, 'Buddy', 'second best software', 'second-post', 'Buddy is a smart CI/CD tool for web developers designed to lower the entry threshold to DevOps. It uses delivery pipelines to build, test and deploy software. The pipelines are created with over 100 ready-to-use actions that can be arranged in any way – just like you build a house of bricks.\r\n\r\n15-minute configuration in clear & telling UI/UX\r\nLightning-fast deployments based on changesets\r\nBuilds are run in isolated containers with cached dependencies\r\nSupports all popular languages, frameworks & task managers\r\nDedicated roster of Docker/Kubernetes actions\r\nIntegrates with AWS, Google, DigitalOcean, Azure, Shopify, WordPress & more\r\nSupports parallelism & YAML configuration', 'img2.jpg', '2019-07-21 21:04:07'),
(3, 'NetBeans', '3rd best software', 'third-post', 'NetBeans is a popular, Free, open-source IDE. It allows developing desktop, mobile and web applications.\r\n\r\nFeatures:\r\n\r\nSupport for fast & smart code editing\r\nEasy & Efficient Project Management process\r\nRapid User Interface Development\r\nHelps to write bug-free code\r\nNetBeans IDE offers superior support for C/C++ and PHP developers\r\nIt can be installed on any OS which supports Java, from Windows to Linux to Mac OS X systems', 'img3.jpg', '2019-06-11 21:08:58'),
(4, 'Cloud9 IDE', '4th best software', 'fourth-post', 'Cloud9 IDE is an online integrated software development environment. It supports many programming languages like C, C++, PHP, Ruby, Perl, Python, JavaScript and Node.js.\r\n\r\nFeatures:\r\n\r\nAllows to clone entire development environment\r\nBuilt-In Terminal for command-line wizard\r\nCode Completion suggestions helps software developers to code faster and avoid typos\r\nThe Debugger helps developers to set breakpoints, and inspect variables of any JS/Node.js app\r\nSimply drag any file or Terminal to create multiple split views\r\nDevelopers can select an extensive set of default Runners to execute app, such as Ruby, Python, PHP/Apache', '', '2018-06-04 21:09:50'),
(5, 'Zend Studio', '5th best software', 'fifth-post', 'Zend Studio allows software developers to code faster, debug more easily. It is next-generation PHP IDE designed to create apps for boosting developers\' productivity. It scales according to the DPI settings of the underlying operating system.\r\n\r\nFeatures:\r\n\r\nCode faster with up to performance improvements in indexing, validation, searching for PHP code\r\nOffering debugging capabilities with Xdebug, Zend Debugger, and Z-Ray integration\r\nExtensive plugin provided by the large Eclipse eco-system\r\nIt supports development tools including Docker and Git Flow\r\nDeploy PHP applications on any server for Amazon AWS and Microsoft Azure', 'sdf', '2018-08-04 17:20:16'),
(6, 'Atom', '6th best software', 'six-post', 'Atom is a solid all-around text-editor. It is fully free and open source. It can be customized to do anything but without a need of modifying the config file.\r\n\r\nFeatures:\r\n\r\nAtom works across many popular operating systems like OS X, Windows, or Linux\r\nIt helps developers to write code faster with a smart, flexible autocomplete\r\nEasily browse and open whole project or multiple projects in one window\r\nIt is possible to split Atom interface into multiple panes to compare and edit code across files\r\nFind, preview, and replace text type in a file or across the entire project', 'fd', '2018-08-04 17:22:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
