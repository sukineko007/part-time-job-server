/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : employment

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-04-29 16:52:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin', '1');

-- ----------------------------
-- Table structure for employ
-- ----------------------------
DROP TABLE IF EXISTS `employ`;
CREATE TABLE `employ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(15) DEFAULT NULL,
  `enter_account` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employ
-- ----------------------------

-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `enter_name` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `mailbox` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enterprise
-- ----------------------------

-- ----------------------------
-- Table structure for jianli
-- ----------------------------
DROP TABLE IF EXISTS `jianli`;
CREATE TABLE `jianli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `real_src` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jianli
-- ----------------------------

-- ----------------------------
-- Table structure for job_wanted
-- ----------------------------
DROP TABLE IF EXISTS `job_wanted`;
CREATE TABLE `job_wanted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(15) DEFAULT NULL,
  `intention` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `jianli_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mailbox` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_wanted
-- ----------------------------

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enter_id` int(11) DEFAULT NULL,
  `enter_name` varchar(255) DEFAULT NULL,
  `enter_info` varchar(255) DEFAULT NULL,
  `enter_major` varchar(255) DEFAULT NULL,
  `enter_address` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `hr_name` varchar(255) DEFAULT NULL,
  `hr_phone` varchar(255) DEFAULT NULL,
  `hr_mailbox` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recruit
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(16) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `stu_name` varchar(255) DEFAULT NULL,
  `stu_sex` varchar(255) DEFAULT NULL,
  `stu_age` int(11) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `stu_major` varchar(255) DEFAULT NULL,
  `classes` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
