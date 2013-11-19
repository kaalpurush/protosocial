-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2013 at 02:47 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `protosocial`
--

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fb` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `gplus` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `foursquare` varchar(255) NOT NULL,
  `tumblr` varchar(255) NOT NULL,
  `employer` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `fb`, `first_name`, `last_name`, `gender`, `email`, `twitter`, `gplus`, `linkedin`, `location`, `foursquare`, `tumblr`, `employer`, `picture`, `updated_at`, `created_at`) VALUES
(1, 'kaalpurush', 'Kaal', 'Purush', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1039440533/picture', '2013-04-30 04:17:20', '2013-04-30 04:17:20'),
(2, 'Ronty', 'Tanveer', 'Khan', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/728225651/picture', '2013-04-30 04:41:34', '2013-04-30 04:41:34'),
(3, 'Jony2', 'Jorny', 'Cruz', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/505441782/picture', '2013-04-30 04:42:56', '2013-04-30 04:42:56'),
(4, 'shamim', 'Shamim', 'Ahmad', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/681587215/picture', '2013-04-30 04:43:08', '2013-04-30 04:43:08'),
(5, 'ahsan', 'Ahsan', 'Fayaz', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/60508769/picture', '2013-04-30 04:56:34', '2013-04-30 04:56:34'),
(6, 'tanvir', 'Tanvir', 'Muktadir', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/530727249/picture', '2013-04-30 04:57:01', '2013-04-30 04:57:01'),
(7, 'shamim.hasan.524', 'Shamim', 'Hasan', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1061388045/picture', '2013-04-30 04:58:06', '2013-04-30 04:58:06'),
(8, 'brown', 'Zach', 'Brown', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1461383031/picture', '2013-04-30 05:38:24', '2013-04-30 05:38:24'),
(9, 'tinny', 'Nirjharini', 'Tinny', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1592682399/picture', '2013-04-30 05:40:52', '2013-04-30 05:40:52'),
(10, 'rumel', 'Rumel', 'Gregersen', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/193304786/picture', '2013-04-30 05:41:17', '2013-04-30 05:41:17'),
(11, 'Ginger', 'Ginger', 'Lulu', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/684237596/picture', '2013-04-30 05:41:25', '2013-04-30 05:41:25'),
(12, 'willy', '??????', 'Wil', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1697299664/picture', '2013-04-30 05:42:46', '2013-04-30 05:42:46'),
(13, 'Posty', 'Kyle', 'Post', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/535863493/picture', '2013-04-30 05:43:41', '2013-04-30 05:43:41'),
(14, 'tiler', 'Tiler', 'Bates', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1145267357/picture', '2013-04-30 05:47:50', '2013-04-30 05:47:50'),
(15, 'Tinnu', 'Ashish', 'Khandelwal', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1084136593/picture', '2013-04-30 05:49:13', '2013-04-30 05:49:13'),
(16, 'Tinnu', 'Ashish', 'Khandelwal', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1084136593/picture', '2013-04-30 05:49:19', '2013-04-30 05:49:19'),
(17, 'hilar', 'Hila', 'Rubeni', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/689158961/picture', '2013-04-30 05:58:51', '2013-04-30 05:58:51'),
(18, 'robert', 'Robert', 'Johnson', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/3501774/picture', '2013-04-30 06:03:36', '2013-04-30 06:03:36'),
(19, 'denero', 'Ojack', 'Denero', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1586558055/picture', '2013-04-30 06:04:33', '2013-04-30 06:04:33'),
(20, 'trinna', 'Trinna', 'De Leon', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/644301614/picture', '2013-04-30 06:06:17', '2013-04-30 06:06:17'),
(21, 'di.sco', 'Di', 'Sco', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1841273120/picture', '2013-04-30 06:06:26', '2013-04-30 06:06:26'),
(22, 'lohit', 'Lohit', 'Sarma', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/122611556/picture', '2013-04-30 06:06:39', '2013-04-30 06:06:39'),
(23, 'yummy', 'Kate', 'Rina', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1356090927/picture', '2013-04-30 06:45:35', '2013-04-30 06:45:35'),
(24, 'Lasty', 'Matt', 'Last', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/740849304/picture', '2013-04-30 06:45:52', '2013-04-30 06:45:52'),
(25, 'lusty', 'Brandon', 'Lusty', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/612093328/picture', '2013-04-30 06:46:00', '2013-04-30 06:46:00'),
(26, 'psycho', 'Psÿçhö', 'Psÿçhö', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/100005611302373/picture', '2013-04-30 06:46:24', '2013-04-30 06:46:24'),
(27, 'brandon', 'Brandon', 'Bolling', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/500225383/picture', '2013-04-30 06:46:40', '2013-04-30 06:46:40'),
(28, 'tyler', 'Tyler', 'Pearson', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/7935303/picture', '2013-04-30 06:46:58', '2013-04-30 06:46:58'),
(29, 'porting', 'Michael', 'Porting', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/517350145/picture', '2013-04-30 06:47:15', '2013-04-30 06:47:15'),
(30, 'lyner', 'Lyner', 'Calvo', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/906015509/picture', '2013-04-30 06:48:49', '2013-04-30 06:48:49'),
(31, 'linny', 'Linn', 'Vos', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1221251570/picture', '2013-04-30 06:49:59', '2013-04-30 06:49:59'),
(32, 'looper', 'Kathleen', 'Looper', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/100000617503317/picture', '2013-04-30 06:50:32', '2013-04-30 06:50:32'),
(33, 'TRUELY', 'Mary', 'House', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1174430967/picture', '2013-04-30 06:50:43', '2013-04-30 06:50:43'),
(34, 'killer', 'Alejandro', 'Martinez', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/100001788804173/picture', '2013-04-30 06:51:39', '2013-04-30 06:51:39'),
(35, 'Huskin', 'Shaed', 'Hussain', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/712174784/picture', '2013-04-30 06:52:28', '2013-04-30 06:52:28'),
(36, 'Trooper', 'Tyler', 'Shuman', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/647823944/picture', '2013-04-30 06:53:42', '2013-04-30 06:53:42'),
(37, 'trunk', 'Gab', 'Trun', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1359900079/picture', '2013-04-30 06:54:00', '2013-04-30 06:54:00'),
(38, 'shark', 'Emanuele', 'Dansi', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1383544669/picture', '2013-04-30 06:54:14', '2013-04-30 06:54:14'),
(39, 'tulip', 'Tasnuva Akter', 'Tulip', 'female', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/100001477992967/picture', '2013-04-30 06:56:59', '2013-04-30 06:56:59'),
(40, 'trivuz', 'Trivuz', 'Alam', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/543345915/picture', '2013-05-02 00:12:13', '2013-05-02 00:12:13'),
(41, 'csemahi', 'Mahi', 'Jeni', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/100002302922404/picture', '2013-05-02 00:19:03', '2013-05-02 00:19:03'),
(42, 'mdmoazzem.mahi', 'Md Moazzem', 'Mahi', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/1614966770/picture', '2013-05-02 00:19:47', '2013-05-02 00:19:47'),
(43, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 00:24:29', '2013-05-02 00:24:29'),
(44, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 00:37:31', '2013-05-02 00:37:31'),
(45, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 01:07:02', '2013-05-02 01:07:02'),
(46, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 02:29:45', '2013-05-02 02:29:45'),
(47, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 02:31:00', '2013-05-02 02:31:00'),
(48, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 02:56:14', '2013-05-02 02:56:14'),
(49, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 02:58:40', '2013-05-02 02:58:40'),
(50, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 03:00:40', '2013-05-02 03:00:40'),
(51, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 03:01:44', '2013-05-02 03:01:44'),
(52, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 03:02:18', '2013-05-02 03:02:18'),
(53, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 03:03:10', '2013-05-02 03:03:10'),
(54, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 03:09:24', '2013-05-02 03:09:24'),
(55, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 03:11:33', '2013-05-02 03:11:33'),
(56, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 03:12:21', '2013-05-02 03:12:21'),
(57, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 03:13:36', '2013-05-02 03:13:36'),
(58, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 03:13:54', '2013-05-02 03:13:54'),
(59, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 03:14:17', '2013-05-02 03:14:17'),
(60, 'zuck', 'Mark', 'Zuckerberg', 'male', '', '', '', '', '', '', '', '', 'https://graph.facebook.com/4/picture', '2013-05-02 03:18:22', '2013-05-02 03:18:22');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
