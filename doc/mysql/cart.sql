/*
Navicat MySQL Data Transfer

Source Server         : mywork
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : huangzilan

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-12-03 21:39:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(7) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `original` int(255) DEFAULT NULL,
  `price` int(7) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `number` int(8) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
