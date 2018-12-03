/*
Navicat MySQL Data Transfer

Source Server         : mywork
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : huangzilan

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-12-03 21:40:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userregister
-- ----------------------------
DROP TABLE IF EXISTS `userregister`;
CREATE TABLE `userregister` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` varchar(30) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userregister
-- ----------------------------
INSERT INTO `userregister` VALUES ('1', 'mary', 'a123456', '18', '15280090085', '2018-11-13 19:45:41');
INSERT INTO `userregister` VALUES ('2', 'john', 'h234567', '21', '16522800754', '2018-11-13 19:45:55');
INSERT INTO `userregister` VALUES ('3', 'ka233', 'y345678', '20', '15280090088', '2018-11-13 19:45:45');
INSERT INTO `userregister` VALUES ('4', 'linder', 'l2345678', '22', '15280080007', '2018-11-13 22:14:34');
INSERT INTO `userregister` VALUES ('7', 'yamy', 'r123456', '21', '15280070005', '2018-11-13 22:15:20');
INSERT INTO `userregister` VALUES ('8', 'kate', 'a23333', null, null, '2018-11-13 22:57:28');
INSERT INTO `userregister` VALUES ('9', 'mary', 'a12345', null, null, '2018-11-13 23:11:30');
INSERT INTO `userregister` VALUES ('10', 'mary', 'a12345', null, null, '2018-11-13 23:12:21');
INSERT INTO `userregister` VALUES ('11', 'mary', '12345', null, null, '2018-11-13 23:14:29');
INSERT INTO `userregister` VALUES ('12', 'vawa', 'a123456', null, null, '2018-11-13 23:15:43');
INSERT INTO `userregister` VALUES ('13', 'poly', 'a123456', null, null, '2018-11-13 23:22:12');
INSERT INTO `userregister` VALUES ('14', 'hally', 'a123456', null, null, '2018-11-13 23:32:03');
INSERT INTO `userregister` VALUES ('15', 'mary123', 'm12345', null, null, '2018-11-28 19:41:29');
INSERT INTO `userregister` VALUES ('16', 'h12345', 'h12345', null, null, '2018-11-28 19:47:27');
INSERT INTO `userregister` VALUES ('17', 'j1234', 'j22222', null, null, '2018-11-28 19:48:06');
INSERT INTO `userregister` VALUES ('18', 'u12345', 'u12345', null, null, '2018-11-30 20:41:14');
SET FOREIGN_KEY_CHECKS=1;
