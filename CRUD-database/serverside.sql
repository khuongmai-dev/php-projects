-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 26, 2022 at 04:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serverside`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `content` text NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `updatedAt`) VALUES
(1, 'title 1 of the post', 'hello, this is my first post', '2022-09-23 04:17:21'),
(2, 'title 2 of the post', 'hello, this is my second post', '2022-09-23 04:17:21'),
(3, 'this is the third title of the post', 'hi, this is my third post', '2022-09-23 04:24:37'),
(4, 'This Is The fourth Title Of The Post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis egestas integer eget aliquet nibh praesent tristique. Donec adipiscing tristique risus nec feugiat in fermentum posuere urna. Mattis molestie a iaculis at erat pellentesque adipiscing commodo elit. Tempor nec feugiat nisl pretium fusce id. Elementum curabitur vitae nunc sed velit dignissim sodales ut eu. Aliquet nec ullamcorper sit amet risus nullam eget felis eget. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Vitae ultricies leo integer malesuada nunc vel risus commodo viverra. Mi tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Maecenas ultricies mi eget mauris pharetra et ultrices. Ut placerat orci nulla pellentesque dignissim enim sit. Ornare quam viverra orci sagittis eu volutpat. Orci ac auctor augue mauris augue neque gravida in. Leo a diam sollicitudin tempor id eu nisl nunc. Dictum at tempor commodo ullamcorper a lacus vestibulum. Et ligula ullamcorper malesuada proin libero nunc consequat. Blandit turpis cursus in hac habitasse.\r\n\r\nVitae sapien pellentesque habitant morbi tristique senectus. Nam aliquam sem et tortor consequat. Magna eget est lorem ipsum dolor sit amet consectetur adipiscing. Duis ut diam quam nulla porttitor massa id. Ut lectus arcu bibendum at varius vel pharetra. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Sed augue lacus viverra vitae congue eu consequat. A arcu cursus vitae congue mauris rhoncus aenean vel. Blandit cursus risus at ultrices mi tempus imperdiet nulla. In egestas erat imperdiet sed euismod nisi.\r\n\r\nRidiculus mus mauris vitae ultricies leo integer malesuada nunc vel. Vel eros donec ac odio tempor orci dapibus ultrices in. Feugiat in ante metus dictum at tempor commodo ullamcorper a. Elit eget gravida cum sociis natoque penatibus. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Sed augue lacus viverra vitae congue eu consequat ac felis. Leo in vitae turpis massa sed elementum. Est lorem ipsum dolor sit amet consectetur adipiscing. Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt id. Leo urna molestie at elementum eu facilisis sed odio. Tellus pellentesque eu tincidunt tortor aliquam nulla. Tortor at risus viverra adipiscing at. Amet cursus sit amet dictum sit amet justo. Vitae elementum curabitur vitae nunc sed velit dignissim sodales. Elementum nibh tellus molestie nunc non blandit massa. Bibendum enim facilisis gravida neque convallis a cras semper auctor. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Cursus euismod quis viverra nibh.\r\n\r\nVelit scelerisque in dictum non consectetur a erat. Nec tincidunt praesent semper feugiat nibh sed pulvinar. Ut etiam sit amet nisl purus in mollis. Nec feugiat nisl pretium fusce. Cursus sit amet dictum sit amet justo donec enim. Tincidunt arcu non sodales neque sodales ut. Fermentum iaculis eu non diam phasellus vestibulum lorem. Tortor id aliquet lectus proin nibh nisl. Aliquam etiam erat velit scelerisque. Lacus vestibulum sed arcu non odio euismod lacinia at. Amet consectetur adipiscing elit duis tristique sollicitudin nibh sit amet. In cursus turpis massa tincidunt dui ut ornare. Placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur. Leo vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Scelerisque purus semper eget duis at tellus at urna condimentum. Et sollicitudin ac orci phasellus egestas tellus rutrum. Sollicitudin aliquam ultrices sagittis orci. Ullamcorper velit sed ullamcorper morbi. Tincidunt vitae semper quis lectus nulla at volutpat.\r\n\r\nGravida cum sociis natoque penatibus et. Id leo in vitae turpis massa sed elementum. Dictumst quisque sagittis purus sit. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Donec et odio pellentesque diam volutpat. Non blandit massa enim nec dui nunc mattis enim ut. Tortor vitae purus faucibus ornare suspendisse. Rhoncus mattis rhoncus urna neque viverra justo nec. Nec dui nunc mattis enim ut tellus. Massa sapien faucibus et molestie. Metus dictum at tempor commodo ullamcorper a lacus vestibulum sed. Volutpat commodo sed egestas egestas fringilla. Tincidunt tortor aliquam nulla facilisi cras.', '2022-09-23 13:41:01'),
(5, 'This Is The fifth Title Of The Post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis egestas integer eget aliquet nibh praesent tristique. Donec adipiscing tristique risus nec feugiat in fermentum posuere urna. Mattis molestie a iaculis at erat pellentesque adipiscing commodo elit. Tempor nec feugiat nisl pretium fusce id. Elementum curabitur vitae nunc sed velit dignissim sodales ut eu. Aliquet nec ullamcorper sit amet risus nullam eget felis eget. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Vitae ultricies leo integer malesuada nunc vel risus commodo viverra. Mi tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Maecenas ultricies mi eget mauris pharetra et ultrices. Ut placerat orci nulla pellentesque dignissim enim sit. Ornare quam viverra orci sagittis eu volutpat. Orci ac auctor augue mauris augue neque gravida in. Leo a diam sollicitudin tempor id eu nisl nunc. Dictum at tempor commodo ullamcorper a lacus vestibulum. Et ligula ullamcorper malesuada proin libero nunc consequat. Blandit turpis cursus in hac habitasse.\r\n\r\nVitae sapien pellentesque habitant morbi tristique senectus. Nam aliquam sem et tortor consequat. Magna eget est lorem ipsum dolor sit amet consectetur adipiscing. Duis ut diam quam nulla porttitor massa id. Ut lectus arcu bibendum at varius vel pharetra. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Sed augue lacus viverra vitae congue eu consequat. A arcu cursus vitae congue mauris rhoncus aenean vel. Blandit cursus risus at ultrices mi tempus imperdiet nulla. In egestas erat imperdiet sed euismod nisi.\r\n\r\nRidiculus mus mauris vitae ultricies leo integer malesuada nunc vel. Vel eros donec ac odio tempor orci dapibus ultrices in. Feugiat in ante metus dictum at tempor commodo ullamcorper a. Elit eget gravida cum sociis natoque penatibus. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Sed augue lacus viverra vitae congue eu consequat ac felis. Leo in vitae turpis massa sed elementum. Est lorem ipsum dolor sit amet consectetur adipiscing. Pellentesque massa placerat duis ultricies lacus sed turpis tincidunt id. Leo urna molestie at elementum eu facilisis sed odio. Tellus pellentesque eu tincidunt tortor aliquam nulla. Tortor at risus viverra adipiscing at. Amet cursus sit amet dictum sit amet justo. Vitae elementum curabitur vitae nunc sed velit dignissim sodales. Elementum nibh tellus molestie nunc non blandit massa. Bibendum enim facilisis gravida neque convallis a cras semper auctor. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Cursus euismod quis viverra nibh.\r\n\r\nVelit scelerisque in dictum non consectetur a erat. Nec tincidunt praesent semper feugiat nibh sed pulvinar. Ut etiam sit amet nisl purus in mollis. Nec feugiat nisl pretium fusce. Cursus sit amet dictum sit amet justo donec enim. Tincidunt arcu non sodales neque sodales ut. Fermentum iaculis eu non diam phasellus vestibulum lorem. Tortor id aliquet lectus proin nibh nisl. Aliquam etiam erat velit scelerisque. Lacus vestibulum sed arcu non odio euismod lacinia at. Amet consectetur adipiscing elit duis tristique sollicitudin nibh sit amet. In cursus turpis massa tincidunt dui ut ornare. Placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur. Leo vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Scelerisque purus semper eget duis at tellus at urna condimentum. Et sollicitudin ac orci phasellus egestas tellus rutrum. Sollicitudin aliquam ultrices sagittis orci. Ullamcorper velit sed ullamcorper morbi. Tincidunt vitae semper quis lectus nulla at volutpat.\r\n\r\nGravida cum sociis natoque penatibus et. Id leo in vitae turpis massa sed elementum. Dictumst quisque sagittis purus sit. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Donec et odio pellentesque diam volutpat. Non blandit massa enim nec dui nunc mattis enim ut. Tortor vitae purus faucibus ornare suspendisse. Rhoncus mattis rhoncus urna neque viverra justo nec. Nec dui nunc mattis enim ut tellus. Massa sapien faucibus et molestie. Metus dictum at tempor commodo ullamcorper a lacus vestibulum sed. Volutpat commodo sed egestas egestas fringilla. Tincidunt tortor aliquam nulla facilisi cras.', '2022-09-23 13:42:43'),
(6, 'This Is The sixth Title Of The Post edit 4 4r4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis egestas integer eget aliquet nibh praesent tristique. Donec adipiscing tristique risus nec feugiat in fermentum posuere urna. Mattis molestie a iaculis at erat pellentesque adipiscing commodo elit. sadsad 11212 sadasdasdasdasd asdlasldjasdlkasjdals aljdlajsdlasjdlasjdlasjdlasjdlasjdlajsdl content 4', '2022-09-26 01:03:37'),
(7, 'This Is The 7th Title Of The Post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis egestas integer eget aliquet nibh praesent tristique. Donec adipiscing tristique risus nec feugiat in fermentum posuere urna. Mattis molestie a iaculis at erat pellentesque adipiscing commodo elit. sasds 11', '2022-09-25 23:15:47'),
(8, 'This Is The eighth Title Of The Post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Senectus et netus et malesuada fames ac turpis. Nullam non nisi est sit amet facilisis magna etiam. Lacinia quis vel eros donec ac odio. Velit scelerisque in dictum non consectetur. Viverra nibh cras pulvinar mattis nunc sed. Sit amet nisl suscipit adipiscing bibendum est ultricies integer. Viverra ipsum nunc aliquet bibendum enim. Molestie ac feugiat sed lectus vestibulum mattis. Ut pharetra sit amet aliquam. Id porta nibh venenatis cras sed felis eget velit. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Imperdiet sed euismod nisi porta.\r\n\r\nPharetra pharetra massa massa ultricies. Vel turpis nunc eget lorem dolor. Tellus integer feugiat scelerisque varius morbi enim. Viverra justo nec ultrices dui. Massa tempor nec feugiat nisl pretium. Urna molestie at elementum eu facilisis sed odio morbi quis. Pharetra magna ac placerat vestibulum lectus mauris ultrices eros. Dignissim enim sit amet venenatis urna cursus eget nunc scelerisque. Erat imperdiet sed euismod nisi porta lorem mollis. Augue lacus viverra vitae congue eu. Aliquam purus sit amet luctus venenatis. Odio morbi quis commodo odio aenean sed. Urna neque viverra justo nec ultrices dui sapien eget mi. Luctus venenatis lectus magna fringilla urna porttitor rhoncus. Fermentum dui faucibus in ornare quam. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Senectus et netus et malesuada fames. Ullamcorper a lacus vestibulum sed arcu non odio.\r\n\r\nIn arcu cursus euismod quis viverra nibh cras. Tortor vitae purus faucibus ornare suspendisse. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Luctus accumsan tortor posuere ac ut consequat semper. Arcu bibendum at varius vel pharetra vel turpis nunc. Nisl nisi scelerisque eu ultrices vitae. Malesuada nunc vel risus commodo viverra maecenas accumsan lacus. Nunc faucibus a pellentesque sit amet. Risus nullam eget felis eget nunc lobortis mattis aliquam. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Donec enim diam vulputate ut pharetra sit amet. Cursus in hac habitasse platea. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Accumsan sit amet nulla facilisi morbi. Et netus et malesuada fames ac turpis egestas sed.\r\n\r\nVestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Arcu non sodales neque sodales. Scelerisque fermentum dui faucibus in ornare quam viverra orci sagittis. Rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget mi proin sed libero enim. Nisi lacus sed viverra tellus in hac. Ut tortor pretium viverra suspendisse potenti. Arcu vitae elementum curabitur vitae nunc sed velit. Semper auctor neque vitae tempus. Diam vel quam elementum pulvinar. Sed risus pretium quam vulputate. Massa enim nec dui nunc. Arcu odio ut sem nulla pharetra diam. Nulla porttitor massa id neque aliquam vestibulum morbi blandit. Est lorem ipsum dolor sit amet consectetur adipiscing.\r\n\r\nEget mi proin sed libero. Sodales ut eu sem integer vitae. Vel fringilla est ullamcorper eget. Nibh sit amet commodo nulla. Vitae semper quis lectus nulla at. Dictum fusce ut placerat orci nulla. Dictum non consectetur a erat nam. Et pharetra pharetra massa massa ultricies mi. Aliquam eleifend mi in nulla posuere. Urna porttitor rhoncus dolor purus non enim praesent elementum. Enim praesent elementum facilisis leo vel fringilla. Id porta nibh venenatis cras sed felis eget velit aliquet. Lectus mauris ultrices eros in cursus. Ut tortor pretium viverra suspendisse potenti nullam ac tortor. Diam ut venenatis tellus in metus vulputate.\r\n\r\nIn est ante in nibh mauris. Iaculis urna id volutpat lacus laoreet non curabitur gravida arcu. Vestibulum lectus mauris ultrices eros in cursus turpis. Et ultrices neque ornare aenean euismod elementum nisi. At erat pellentesque adipiscing commodo. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Mollis nunc sed id semper risus in hendrerit. Venenatis urna cursus eget nunc scelerisque viverra. Sed augue lacus viverra vitae congue. Eu sem integer vitae justo eget magna fermentum iaculis. Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Congue mauris rhoncus aenean vel elit. Egestas quis ipsum suspendisse ultrices gravida. Viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Ornare lectus sit amet est placerat in. Ipsum dolor sit amet consectetur adipiscing. Est pellentesque elit ullamcorper dignissim cras. Venenatis urna cursus eget nunc scelerisque viverra mauris in aliquam. Ultrices eros in cursus turpis massa tincidunt dui ut. Vivamus arcu felis bibendum ut tristique.\r\n\r\nProin nibh nisl condimentum id venenatis. Viverra mauris in aliquam sem fringilla. Mauris augue neque gravida in fermentum et sollicitudin. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Odio pellentesque diam volutpat commodo sed. Senectus et netus et malesuada fames ac turpis. Leo urna molestie at elementum eu facilisis sed. Integer quis auctor elit sed vulputate mi sit. Lacinia quis vel eros donec ac odio tempor. Erat imperdiet sed euismod nisi porta lorem mollis. Ante in nibh mauris cursus mattis molestie a. Morbi tristique senectus et netus et malesuada fames ac turpis. Mus mauris vitae ultricies leo integer malesuada. Quisque sagittis purus sit amet volutpat consequat mauris. Velit dignissim sodales ut eu sem integer. Ornare lectus sit amet est placerat in egestas erat imperdiet.\r\n\r\nDignissim diam quis enim lobortis scelerisque fermentum dui. Tellus elementum sagittis vitae et leo duis ut. Arcu bibendum at varius vel pharetra vel. Imperdiet nulla malesuada pellentesque elit eget gravida cum. Aliquam eleifend mi in nulla. Velit ut tortor pretium viverra. Fermentum iaculis eu non diam. Ultricies lacus sed turpis tincidunt. Nec ullamcorper sit amet risus nullam. Auctor eu augue ut lectus arcu bibendum at varius vel. Dignissim enim sit amet venenatis.\r\n\r\nUt tellus elementum sagittis vitae et. Et egestas quis ipsum suspendisse ultrices gravida dictum. Vitae auctor eu augue ut. Ut eu sem integer vitae justo eget magna. Amet purus gravida quis blandit turpis cursus in hac. Etiam erat velit scelerisque in dictum non consectetur a. Est ullamcorper eget nulla facilisi etiam dignissim. Ultrices dui sapien eget mi proin sed libero enim sed. Arcu cursus vitae congue mauris rhoncus aenean vel. Vitae auctor eu augue ut lectus arcu bibendum. Purus sit amet luctus venenatis lectus. At urna condimentum mattis pellentesque id. Sem viverra aliquet eget sit amet tellus. Sed tempus urna et pharetra. Semper eget duis at tellus at urna. Viverra nam libero justo laoreet sit.', '2022-09-23 13:43:38'),
(131, 'Test title', 'Hello this is a test of content area', '2022-09-26 02:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `author` varchar(30) NOT NULL,
  `content` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `author`, `content`) VALUES
(1, 'Alan', 'this is a test'),
(2, 'justinm', 'hello world'),
(3, 'justin', 'hello1'),
(4, 'kmn', 'hi there');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `status` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `status`) VALUES
(20, 'This is a tweet'),
(21, 'Today I had some tasty soup'),
(22, 'Building a single-user fake twitter is fun!'),
(23, 'sds'),
(24, '3333'),
(25, '3444'),
(26, '4234223'),
(27, 'vcvcbcv dfgfgfdg'),
(28, 'sadasdasdasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
