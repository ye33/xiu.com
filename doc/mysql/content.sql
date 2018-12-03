/*
Navicat MySQL Data Transfer

Source Server         : mywork
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : huangzilan

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-12-03 21:39:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `wid` int(7) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('1', null, 'h12345', '面料款式都喜欢，就是尺寸大太小', '偏大', '2018-12-01 17:48:20');
INSERT INTO `content` VALUES ('2', null, 'h12345', '不错，相当满意！', '偏小', '2018-12-01 17:48:40');
INSERT INTO `content` VALUES ('3', null, 'h12345', 'yes,yes,**！', '合适', '2018-12-01 17:45:09');
INSERT INTO `content` VALUES ('4', null, 'h12345', '挺不错滴。。。很满意', '合适', '2018-12-01 17:47:11');
INSERT INTO `content` VALUES ('5', null, 'h12345', '面料款式都喜欢，就是尺寸大太小', '偏小', '2018-12-01 17:48:04');
INSERT INTO `content` VALUES ('6', null, 'h12345', '非常满意，一次继续购买！', '合适', '2018-12-01 18:35:53');
INSERT INTO `content` VALUES ('7', null, 'h12345', 'good,good,good!', '合适', '2018-12-01 18:37:22');
INSERT INTO `content` VALUES ('8', null, 'h12345', 'hello！', '偏大', '2018-12-03 12:49:35');
INSERT INTO `content` VALUES ('9', null, 'h12345', 'hello@123', '偏大', '2018-12-03 16:14:14');
SET FOREIGN_KEY_CHECKS=1;
