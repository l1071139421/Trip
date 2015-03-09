-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2015 年 03 月 09 日 15:48
-- 伺服器版本: 5.5.40-1
-- PHP 版本： 5.6.4-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫： `trip`
--

-- --------------------------------------------------------

--
-- 資料表結構 `plan`
--

CREATE TABLE IF NOT EXISTS `plan` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `introduction` varchar(200) NOT NULL,
  `nop` int(10) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `createon` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `planitem`
--

CREATE TABLE IF NOT EXISTS `planitem` (
`id` int(10) unsigned NOT NULL,
  `planplaceid` int(10) NOT NULL,
  `planid` int(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `starttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(500) NOT NULL,
  `defaultcost` int(10) NOT NULL,
  `cost` int(10) NOT NULL,
  `createon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifyon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `planpicture`
--

CREATE TABLE IF NOT EXISTS `planpicture` (
`id` int(10) NOT NULL,
  `planplaceid` int(10) NOT NULL,
  `picture` int(100) NOT NULL,
  `description` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `planplace`
--

CREATE TABLE IF NOT EXISTS `planplace` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `tel` int(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `open` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `map` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `planpn`
--

CREATE TABLE IF NOT EXISTS `planpn` (
`id` int(10) unsigned NOT NULL,
  `planid` int(10) NOT NULL,
  `type` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Tick` int(2) NOT NULL,
  `picture` geometry NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `plan`
--
ALTER TABLE `plan`
 ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `planitem`
--
ALTER TABLE `planitem`
 ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `planpicture`
--
ALTER TABLE `planpicture`
 ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `planplace`
--
ALTER TABLE `planplace`
 ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `planpn`
--
ALTER TABLE `planpn`
 ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `plan`
--
ALTER TABLE `plan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- 使用資料表 AUTO_INCREMENT `planitem`
--
ALTER TABLE `planitem`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `planpicture`
--
ALTER TABLE `planpicture`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `planplace`
--
ALTER TABLE `planplace`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `planpn`
--
ALTER TABLE `planpn`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
