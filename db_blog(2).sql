-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2022 at 05:58 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(3, 'ODI'),
(4, 'T-20'),
(5, 'Test'),
(6, 'T-10'),
(7, 'Domestic'),
(8, 'International');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(3, 'Saidur', 'rahman', 'saidurrahman625@gmail.com', 'Your site is very helpfull', 1, '2022-10-28 13:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'All news about bd cricket');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p>The About Us page of your website is an essential source of information for all who want to know more about your business.</p>\r\n<p>About Us pages are where you showcase your history, what is unique about your work, your company&rsquo;s values, and who you serve.</p>\r\n<p>The design, written content, and visual or video elements together tell an important story about who you are and why you do it.</p>\r\n<p>How can you make the most of this integral part of your&nbsp;<a href=\"https://www.searchenginejournal.com/signs-digital-marketing-strategy-needs-overhaul/373511/\">marketing strategy</a>?</p>\r\n<p>In this article, you&rsquo;ll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.</p>'),
(2, 'Privacy Policy', '<p>The About Us page of your website is an essential source of information for all who want to know more about your business.</p>\r\n<p>About Us pages are where you showcase your history, what is unique about your work, your company&rsquo;s values, and who you serve.</p>\r\n<p>The design, written content, and visual or video elements together tell an important story about who you are and why you do it.</p>\r\n<p>How can you make the most of this integral part of your&nbsp;<a href=\"https://www.searchenginejournal.com/signs-digital-marketing-strategy-needs-overhaul/373511/\">marketing strategy</a>?</p>\r\n<p>In this article, you&rsquo;ll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.</p>'),
(3, 'Terms of Use', '<p>The About Us page of your website is an essential source of information for all who want to know more about your business.</p>\r\n<p>About Us pages are where you showcase your history, what is unique about your work, your company&rsquo;s values, and who you serve.</p>\r\n<p>The design, written content, and visual or video elements together tell an important story about who you are and why you do it.</p>\r\n<p>How can you make the most of this integral part of your&nbsp;<a href=\"https://www.searchenginejournal.com/signs-digital-marketing-strategy-needs-overhaul/373511/\">marketing strategy</a>?</p>\r\n<p>In this article, you&rsquo;ll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `author` varchar(70) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(5, 5, 'Shakib', '<p><span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc</span></p>', 'upload/d5fb5972b5.jpg', 'saidur', 'shakib', '2022-10-28 13:01:14', 1),
(6, 4, 'Sumya Sharkar', '<p><span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc</span></p>', 'upload/31a0d7d196.jpg', 'saidur', 'Sumya Sharkar', '2022-10-28 13:03:59', 1),
(7, 3, 'Bangladesh now 7th in ODI ranking', '<p>Bangladesh has moved up one place to seventh in the Reliance ICC ODI Team Rankings following its series win against India in Mirpur on Wednesday, says an ICC press release.</p>\r\n<p>The 2-1 series has put Bangladesh on 93 ratings points &ndash; five behind sixth-ranked England and five ahead of eighth-ranked West Indies. With England, plus seven next highest-ranked sides as on 30 September 2015 to qualify for the ICC Champions Trophy 2017, Bangladesh now looks set to qualify ahead of the West Indies, which has no FTP One-Day International (ODI) series planned until the cut-off date, and eighth-ranked Pakistan, which plays Sri Lanka in a five-ODI series next month.</p>\r\n<p>Mashrafe Mortaza&rsquo;s men had entered the series in eighth position on 88 points, fraction of a point behind the West Indies.</p>\r\n<p>In contrast, the 2-1 defeat means India has dropped from 117 to 115 but has still retained his second position on the ODI table. However, the series result means only 28 points separate second-ranked India from ninth-ranked Pakistan. World champion Australia leads the field and is sitting pretty on 129 points.</p>\r\n<p>Meanwhile, Brendon McCullum&rsquo;s side had entered the series on 115 points and were eyeing second place. However it has remained in third position, marginally ahead of the Proteas. On the other side of the coin, England, under the guidance of Eoin Morgan, has reduced fifth-placed Sri Lanka&rsquo;s advantage by four points to eight as it now sits on 98 points</p>', 'upload/48358e60d5.jpeg', 'saidur', 'Bangladesh', '2022-10-30 12:22:52', 1),
(8, 3, 'Bangladesh now 7th in ODI ranking', '<p>Bangladesh has moved up one place to seventh in the Reliance ICC ODI Team Rankings following its series win against India in Mirpur on Wednesday, says an ICC press release.</p>\r\n<p>The 2-1 series has put Bangladesh on 93 ratings points &ndash; five behind sixth-ranked England and five ahead of eighth-ranked West Indies. With England, plus seven next highest-ranked sides as on 30 September 2015 to qualify for the ICC Champions Trophy 2017, Bangladesh now looks set to qualify ahead of the West Indies, which has no FTP One-Day International (ODI) series planned until the cut-off date, and eighth-ranked Pakistan, which plays Sri Lanka in a five-ODI series next month.</p>\r\n<p>Mashrafe Mortaza&rsquo;s men had entered the series in eighth position on 88 points, fraction of a point behind the West Indies.</p>\r\n<p>In contrast, the 2-1 defeat means India has dropped from 117 to 115 but has still retained his second position on the ODI table. However, the series result means only 28 points separate second-ranked India from ninth-ranked Pakistan. World champion Australia leads the field and is sitting pretty on 129 points.</p>\r\n<p>Meanwhile, Brendon McCullum&rsquo;s side had entered the series on 115 points and were eyeing second place. However it has remained in third position, marginally ahead of the Proteas. On the other side of the coin, England, under the guidance of Eoin Morgan, has reduced fifth-placed Sri Lanka&rsquo;s advantage by four points to eight as it now sits on 98 points</p>', 'upload/430ab0aea0.jpeg', 'saidur', 'Bangladesh', '2022-10-30 12:24:11', 1),
(10, 0, 'Taskin Ahmed got team in  t_10', '<p>Taskin had an important role to \"Banglawash\" <a title=\"Pakistani cricket team in Bangladesh in 2014&ndash;15\" href=\"https://en.wikipedia.org/wiki/Pakistani_cricket_team_in_Bangladesh_in_2014%E2%80%9315\">Pakistan in April</a> 2015 and series winning against <a title=\"Indian cricket team in Bangladesh in 2015\" href=\"https://en.wikipedia.org/wiki/Indian_cricket_team_in_Bangladesh_in_2015\">India in June</a> 2015.</p>\r\n<p>In 2016, Taskin was selected in Bangladesh\'s squad for the <a title=\"2016 ICC World Twenty20\" href=\"https://en.wikipedia.org/wiki/2016_ICC_World_Twenty20\">2016 ICC World Twenty20</a>. However, he was later suspended from bowling in international cricket due to an illegal action bowled during the tournament.<sup id=\"cite_ref-BangBowlers_15-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Taskin_Ahmed#cite_note-BangBowlers-15\">[15]</a></sup></p>\r\n<p>In June 2021, he was named in the Bangladesh\'s squad across all formats for their <a title=\"Bangladeshi cricket team in Zimbabwe in 2021\" href=\"https://en.wikipedia.org/wiki/Bangladeshi_cricket_team_in_Zimbabwe_in_2021\">tour to Zimbabwe</a>.<sup id=\"cite_ref-16\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Taskin_Ahmed#cite_note-16\">[16]</a></sup> In the <a title=\"Bangladeshi cricket team in Zimbabwe in 2021\" href=\"https://en.wikipedia.org/wiki/Bangladeshi_cricket_team_in_Zimbabwe_in_2021#Only_Test\">only Test match</a> against Zimbabwe, he scored 75 runs and claimed his maiden <a title=\"Century (cricket)\" href=\"https://en.wikipedia.org/wiki/Century_(cricket)\">half-century</a> in Test cricket.<sup id=\"cite_ref-17\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Taskin_Ahmed#cite_note-17\">[17]</a></sup> He sustained a partnership of 191 runs along with <a title=\"Mahmudullah\" href=\"https://en.wikipedia.org/wiki/Mahmudullah\">Mahmudullah</a>, which was the <a title=\"Partnership (cricket)\" href=\"https://en.wikipedia.org/wiki/Partnership_(cricket)#Test_record_partnerships_by_wicket\">second highest ninth wicket partnership</a> in Test cricket.<sup id=\"cite_ref-18\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Taskin_Ahmed#cite_note-18\">[18]</a></sup> Taskin\'s 75 runs was also the highest individual score at number 10 by a Bangladeshi batsman in away.<sup id=\"cite_ref-19\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Taskin_Ahmed#cite_note-19\">[19]</a></sup></p>\r\n<p>In September 2021, he was named in Bangladesh\'s squad for the <a title=\"2021 ICC Men\'s T20 World Cup\" href=\"https://en.wikipedia.org/wiki/2021_ICC_Men%27s_T20_World_Cup\">2021 ICC Men\'s T20 World Cup</a>.<sup id=\"cite_ref-20\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Taskin_Ahmed#cite_note-20\">[20]</a></sup></p>', 'upload/e24a5ad694.jpeg', 'saidur', 'taskin', '2022-10-31 04:57:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(3, 'shakib got wicket', 'upload/slider/eaf46128ac.jpg'),
(4, 'Ban win the series', 'upload/slider/79b6c3be93.jpg'),
(5, 'Ban win against aus', 'upload/slider/7276d21a0e.jpg'),
(6, 'Mustafiz got wicket', 'upload/slider/03a3bccc1a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(250) NOT NULL,
  `tw` varchar(250) NOT NULL,
  `ln` varchar(250) NOT NULL,
  `gp` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com'),
(2, 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'MD. Saidur Rahman', 'saidur', '827ccb0eea8a706c4c34a16891f84e7b', 'saidur.cse6.bu@gmail.com', '<p>I am admin</p>', 0),
(2, 'Md. Moniruzzaman', 'monir', '45812b8e046cce7af9110c1df3c78189', 'monir.cse6.bu@gmail.com', '<p>I am admin</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slogan` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'All news about bd cricket', 'Cricket Info', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
