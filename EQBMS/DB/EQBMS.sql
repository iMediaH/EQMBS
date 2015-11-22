-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 11 月 15 日 12:12
-- 服务器版本: 5.1.36
-- PHP 版本: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `eqbms`
--

-- --------------------------------------------------------

--
-- 表的结构 `admininfo`
--

CREATE TABLE IF NOT EXISTS `admininfo` (
  `AdminUser` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '管理员用户名',
  `AdminPassword` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`AdminUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='管理员表';

--
-- 转存表中的数据 `admininfo`
--

INSERT INTO `admininfo` (`AdminUser`, `AdminPassword`) VALUES
('123', '123');

-- --------------------------------------------------------

--
-- 表的结构 `courseinfo`
--

CREATE TABLE IF NOT EXISTS `courseinfo` (
  `CourseId` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `CourseName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '课程名',
  `CouerseInfo` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '课程简介',
  `TeacherId` int(11) NOT NULL COMMENT '教师id',
  PRIMARY KEY (`CourseId`),
  KEY `TeacherId` (`TeacherId`),
  KEY `TeacherId_2` (`TeacherId`),
  KEY `CourseId` (`CourseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='课程表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `courseinfo`
--


-- --------------------------------------------------------

--
-- 表的结构 `interlocution`
--

CREATE TABLE IF NOT EXISTS `interlocution` (
  `QuestionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目id',
  `UnitId` int(11) NOT NULL COMMENT '题目id',
  `Nanyidu` int(11) NOT NULL COMMENT '难易度',
  `TypeName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '题型名（可自定义）',
  `Question` text COLLATE utf8_bin NOT NULL COMMENT '题目',
  `Answer` text COLLATE utf8_bin NOT NULL COMMENT '答案',
  `Image` text COLLATE utf8_bin COMMENT '图片附件',
  PRIMARY KEY (`QuestionId`),
  KEY `UnitId` (`UnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='填空问答题模板题型表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `interlocution`
--


-- --------------------------------------------------------

--
-- 表的结构 `judgment`
--

CREATE TABLE IF NOT EXISTS `judgment` (
  `QuestionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目id',
  `UnitId` int(11) NOT NULL COMMENT '知识单元id',
  `Nanyidu` int(11) NOT NULL COMMENT '难易度',
  `TypeName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '题型名（可自定义）',
  `Question` text COLLATE utf8_bin NOT NULL COMMENT '题目',
  `Answer` text COLLATE utf8_bin NOT NULL COMMENT '答案',
  `Image` text COLLATE utf8_bin COMMENT '图片附件',
  PRIMARY KEY (`QuestionId`),
  KEY `UnitId` (`UnitId`),
  KEY `UnitId_2` (`UnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='判断题模板题型表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `judgment`
--


-- --------------------------------------------------------

--
-- 表的结构 `multiplechoice`
--

CREATE TABLE IF NOT EXISTS `multiplechoice` (
  `QuestionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目id',
  `UnitId` int(11) NOT NULL COMMENT '知识单元id',
  `Nanyidu` int(11) NOT NULL COMMENT '难易度',
  `TypeName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '题型名（可自定义）',
  `Question` text COLLATE utf8_bin NOT NULL COMMENT '题目',
  `Answer` text COLLATE utf8_bin NOT NULL COMMENT '答案',
  `Image` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '图片附件',
  `Option` text COLLATE utf8_bin NOT NULL COMMENT '选项',
  PRIMARY KEY (`QuestionId`),
  KEY `UnitId` (`UnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='选择题模板题型表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `multiplechoice`
--


-- --------------------------------------------------------

--
-- 表的结构 `nanyiduinfo`
--

CREATE TABLE IF NOT EXISTS `nanyiduinfo` (
  `NanyiduId` int(11) NOT NULL AUTO_INCREMENT COMMENT '难易度id',
  `NanyiduName` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '难易度类型名',
  PRIMARY KEY (`NanyiduId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='难易度表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `nanyiduinfo`
--

INSERT INTO `nanyiduinfo` (`NanyiduId`, `NanyiduName`) VALUES
(1, '简单'),
(2, '一般'),
(3, '困难');

-- --------------------------------------------------------

--
-- 表的结构 `teacherinfo`
--

CREATE TABLE IF NOT EXISTS `teacherinfo` (
  `TeacherNum` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师id',
  `TeacherID` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `TeacherPassword` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '123456' COMMENT '密码',
  `TeacherName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `TeacherTitle` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '职称',
  `TeacherPhone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `TeacherEmail` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'email',
  `TeacherImage` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '../images/uesr-img.jpg' COMMENT '教师头像',
  PRIMARY KEY (`TeacherNum`),
  UNIQUE KEY `TeacherID` (`TeacherID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='教师表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `teacherinfo`
--

INSERT INTO `teacherinfo` (`TeacherNum`, `TeacherID`, `TeacherPassword`, `TeacherName`, `TeacherTitle`, `TeacherPhone`, `TeacherEmail`, `TeacherImage`) VALUES
(1, '20130001', '123456', '张佳', '讲师', '18888888888', 'zjvivi@126.com', '../images/uesr-img.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `unitinfo`
--

CREATE TABLE IF NOT EXISTS `unitinfo` (
  `UnitId` int(11) NOT NULL AUTO_INCREMENT COMMENT '单元id',
  `UnitName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '单元名',
  `UnitInfo` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '单元简介',
  `CourseId` int(11) NOT NULL COMMENT '课程id',
  PRIMARY KEY (`UnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='知识单元表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `unitinfo`
--

