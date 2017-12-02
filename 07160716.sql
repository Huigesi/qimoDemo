-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-02 12:27:35
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `07160716`
--

-- --------------------------------------------------------

--
-- 表的结构 `tb_grade`
--

CREATE TABLE `tb_grade` (
  `xh` char(2) NOT NULL COMMENT '学号',
  `km` varchar(10) NOT NULL COMMENT '科目',
  `cj` int(11) DEFAULT NULL COMMENT '成绩'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_grade`
--

INSERT INTO `tb_grade` (`xh`, `km`, `cj`) VALUES
('01', '数学', 100),
('01', '语文', 99),
('02', '数学', 85),
('02', '语文', 90),
('03', '数学', 84),
('03', '语文', 70),
('04', '数学', 90),
('04', '语文', 66),
('05', '数学', 67),
('05', '语文', 89),
('06', '数学', 78),
('06', '语文', 100),
('07', '数学', 100),
('07', '语文', 99),
('09', '数学', 30),
('09', '语文', 74),
('10', '数学', 97),
('10', '语文', 55);

-- --------------------------------------------------------

--
-- 表的结构 `tb_km`
--

CREATE TABLE `tb_km` (
  `id` int(10) NOT NULL,
  `km` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_km`
--

INSERT INTO `tb_km` (`id`, `km`) VALUES
(1, '语文'),
(2, '数学'),
(3, '英语'),
(4, '化学');

-- --------------------------------------------------------

--
-- 表的结构 `tb_stuinf`
--

CREATE TABLE `tb_stuinf` (
  `xh` char(2) NOT NULL COMMENT '学号',
  `xm` varchar(10) NOT NULL COMMENT '姓名',
  `sex` bit(1) NOT NULL DEFAULT b'0' COMMENT '性别,0为男，1为女',
  `s_class` varchar(10) NOT NULL COMMENT '班级'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_stuinf`
--

INSERT INTO `tb_stuinf` (`xh`, `xm`, `sex`, `s_class`) VALUES
('01', '陈燕', b'1', '1601'),
('02', '小会', b'0', '1607'),
('03', '小张', b'0', '1201'),
('04', '小王', b'0', '1202'),
('05', '小何', b'0', '1201'),
('06', '小李', b'0', '1202');

-- --------------------------------------------------------

--
-- 表的结构 `tb_user`
--

CREATE TABLE `tb_user` (
  `user` varchar(10) NOT NULL,
  `pwd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_user`
--

INSERT INTO `tb_user` (`user`, `pwd`) VALUES
('admin', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_grade`
--
ALTER TABLE `tb_grade`
  ADD PRIMARY KEY (`xh`,`km`);

--
-- Indexes for table `tb_km`
--
ALTER TABLE `tb_km`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_stuinf`
--
ALTER TABLE `tb_stuinf`
  ADD PRIMARY KEY (`xh`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_km`
--
ALTER TABLE `tb_km`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
