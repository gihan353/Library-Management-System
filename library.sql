/*
Navicat MySQL Data Transfer

Source Server         : newcom
Source Server Version : 50153
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50153
File Encoding         : 65001

Date: 2017-11-19 14:29:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `contactNo` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('Admin@123', 'Gihan', 'Admin@123', 'M', '1995-11-29', '717274611', 'gihan353@gmail.com', 'opanayake');
INSERT INTO `admin` VALUES ('udara@123', 'Udara Kalpani', 'udara@123', 'F', '1995-04-04', '752104919', 'udarakalpani4919@gmail.com', 'bokundara');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `quantity` int(11) DEFAULT '0',
  `bStream` varchar(200) NOT NULL,
  `bClass` varchar(200) NOT NULL,
  `auther` varchar(200) NOT NULL,
  `publisher` varchar(200) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('18', 'Buddhist Civilization', '3', 'arts', 'ba', 'Priyangani', 'Sarasavi', '2017-11-12 16:09:30');
INSERT INTO `book` VALUES ('20', 'Electronic Devices', '10', 'science', 'eEngineering', 'Js Khatre', 'Tech Max', '2017-11-12 16:28:22');
INSERT INTO `book` VALUES ('21', 'Automation & Robotics', '5', 'science', 'mEngineering', 'Mr.Perera', 'Fernando', '2017-11-12 16:36:32');
INSERT INTO `book` VALUES ('22', 'Entrepreneurship', '2', 'commerce', 'bCom', 'Mr. Gihan Cahuranga', 'Buddika', '2017-11-13 15:05:51');
INSERT INTO `book` VALUES ('19', 'Programming in Java', '6', 'science', 'bscIt', 'E.balagurusamy', 'Hill Education', '2017-11-12 16:26:23');
INSERT INTO `book` VALUES ('13', 'Econonmics', '4', 'commerce', 'bCom', 'Chandana', 'Sarasavii', '2017-11-18 21:54:08');
INSERT INTO `book` VALUES ('17', 'accounts', '10', 'commerce', 'bCom', 'udara', 'gamunu', '2017-11-12 12:09:37');

-- ----------------------------
-- Table structure for issuebook
-- ----------------------------
DROP TABLE IF EXISTS `issuebook`;
CREATE TABLE `issuebook` (
  `bid` varchar(100) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `stream` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `contactNo` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of issuebook
-- ----------------------------
INSERT INTO `issuebook` VALUES ('13', '2', 'maleesha', 'Commerce', '12', '752104919', '2017-11-18 22:46:11');
INSERT INTO `issuebook` VALUES ('21', '5', 'Manoj', 'Art', '12', '775632111', '2017-11-19 12:40:20');
INSERT INTO `issuebook` VALUES ('21', '3', 'amal', 'Commerce', '12', '667', '2017-11-18 19:53:31');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `contactNo` int(11) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'gihan', 'gihan@gmail.com', 'gihan', 'M', '1995-11-29', '556', 'Commerce', '13', 'Rathnapura', '2017-11-19 11:01:16');
INSERT INTO `student` VALUES ('3', 'piumi', 'piumi@gmail.com', 'piumi', 'F', '1995-03-17', '712255648', 'Bio', '13', 'Kirulapana', '2017-11-19 12:18:19');
INSERT INTO `student` VALUES ('2', 'Chandika', 'chandika@gmail.com', 'chandika', 'M', '1995-05-10', '712268533', 'Maths', '13', 'Badulla', '2017-11-19 13:44:00');
INSERT INTO `student` VALUES ('5', 'Manoj', 'manoj@gmail.com', 'manoj', 'M', '1995-03-22', '775632111', 'Art', '12', 'Kadana', '2017-11-18 22:31:19');
SET FOREIGN_KEY_CHECKS=1;
