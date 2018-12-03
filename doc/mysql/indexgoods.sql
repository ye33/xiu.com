/*
Navicat MySQL Data Transfer

Source Server         : mywork
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : huangzilan

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-12-03 21:40:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for indexgoods
-- ----------------------------
DROP TABLE IF EXISTS `indexgoods`;
CREATE TABLE `indexgoods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexgoods
-- ----------------------------
INSERT INTO `indexgoods` VALUES ('1', '1', 'img/indexgoods/Spike-01.png');
INSERT INTO `indexgoods` VALUES ('2', '1', 'img/indexgoods/Spike-02.png');
INSERT INTO `indexgoods` VALUES ('3', '1', 'img/indexgoods/Spike-03.png');
INSERT INTO `indexgoods` VALUES ('4', '1', 'img/indexgoods/Spike-04.png');
INSERT INTO `indexgoods` VALUES ('5', '1', 'img/indexgoods/Spike-05.png');
INSERT INTO `indexgoods` VALUES ('6', '1', 'img/indexgoods/Spike-06.png');
INSERT INTO `indexgoods` VALUES ('7', '1', 'img/indexgoods/Spike-07.png');
INSERT INTO `indexgoods` VALUES ('8', '1', 'img/indexgoods/Spike-08.png');
INSERT INTO `indexgoods` VALUES ('9', '1', 'img/indexgoods/Spike-09.png');
INSERT INTO `indexgoods` VALUES ('10', '1', 'img/indexgoods/Spike-10.png');
INSERT INTO `indexgoods` VALUES ('11', '1', 'img/indexgoods/Spike-11.png');
INSERT INTO `indexgoods` VALUES ('12', '2', 'img/indexgoods/heiwu-01.png');
INSERT INTO `indexgoods` VALUES ('13', '2', 'img/indexgoods/heiwu-02.png');
INSERT INTO `indexgoods` VALUES ('14', '2', 'img/indexgoods/heiwu-03.png');
INSERT INTO `indexgoods` VALUES ('15', '2', 'img/indexgoods/heiwu-04.png');
INSERT INTO `indexgoods` VALUES ('16', '2', 'img/indexgoods/heiwu-05.png');
INSERT INTO `indexgoods` VALUES ('17', '2', 'img/indexgoods/heiwu-06.png');
INSERT INTO `indexgoods` VALUES ('18', '2', 'img/indexgoods/heiwu-07.png');
INSERT INTO `indexgoods` VALUES ('19', '2', 'img/indexgoods/heiwu-08.png');
INSERT INTO `indexgoods` VALUES ('20', '2', 'img/indexgoods/heiwu-09.png');
INSERT INTO `indexgoods` VALUES ('21', '2', 'img/indexgoods/heiwu-10.png');
INSERT INTO `indexgoods` VALUES ('22', '2', 'img/indexgoods/heiwu-11.png');
INSERT INTO `indexgoods` VALUES ('23', '2', 'img/indexgoods/heiwu-12.png');
INSERT INTO `indexgoods` VALUES ('24', '2', 'img/indexgoods/heiwu-13.png');
INSERT INTO `indexgoods` VALUES ('25', '2', 'img/indexgoods/heiwu-14.png');
INSERT INTO `indexgoods` VALUES ('26', '2', 'img/indexgoods/heiwu-15.png');
INSERT INTO `indexgoods` VALUES ('27', '2', 'img/indexgoods/heiwu-16.png');
INSERT INTO `indexgoods` VALUES ('28', '2', 'img/indexgoods/heiwu-17.png');
INSERT INTO `indexgoods` VALUES ('29', '2', 'img/indexgoods/heiwu-18.png');
INSERT INTO `indexgoods` VALUES ('30', '2', 'img/indexgoods/heiwu-19.png');
INSERT INTO `indexgoods` VALUES ('31', '2', 'img/indexgoods/heiwu-20.png');
INSERT INTO `indexgoods` VALUES ('32', '2', 'img/indexgoods/heiwu-21.png');
INSERT INTO `indexgoods` VALUES ('33', '2', 'img/indexgoods/heiwu-22.png');
INSERT INTO `indexgoods` VALUES ('34', '2', 'img/indexgoods/heiwu-23.png');
INSERT INTO `indexgoods` VALUES ('35', '2', 'img/indexgoods/heiwu-24.png');
INSERT INTO `indexgoods` VALUES ('36', '2', 'img/indexgoods/heiwu-25.png');
INSERT INTO `indexgoods` VALUES ('37', '2', 'img/indexgoods/heiwu-26.png');
INSERT INTO `indexgoods` VALUES ('38', '2', 'img/indexgoods/heiwu-27.png');
INSERT INTO `indexgoods` VALUES ('39', '2', 'img/indexgoods/heiwu-28.png');
INSERT INTO `indexgoods` VALUES ('40', '2', 'img/indexgoods/heiwu-29.png');
INSERT INTO `indexgoods` VALUES ('41', '2', 'img/indexgoods/heiwu-30.png');
INSERT INTO `indexgoods` VALUES ('42', '2', 'img/indexgoods/heiwu-31.png');
INSERT INTO `indexgoods` VALUES ('43', '2', 'img/indexgoods/heiwu-32.png');
INSERT INTO `indexgoods` VALUES ('44', '2', 'img/indexgoods/heiwu-33.png');
INSERT INTO `indexgoods` VALUES ('45', '2', 'img/indexgoods/heiwu-34.png');
INSERT INTO `indexgoods` VALUES ('46', '2', 'img/indexgoods/heiwu-35.png');
INSERT INTO `indexgoods` VALUES ('47', '2', 'img/indexgoods/heiwu-36.png');
INSERT INTO `indexgoods` VALUES ('48', '2', 'img/indexgoods/heiwu-37.png');
INSERT INTO `indexgoods` VALUES ('49', '2', 'img/indexgoods/heiwu-38.png');
INSERT INTO `indexgoods` VALUES ('50', '2', 'img/indexgoods/heiwu-39.png');
INSERT INTO `indexgoods` VALUES ('51', '3', 'img/indexgoods/heiwu-40.png');
INSERT INTO `indexgoods` VALUES ('52', '3', 'img/indexgoods/heiwu-41.png');
INSERT INTO `indexgoods` VALUES ('53', '3', 'img/indexgoods/heiwu-42.png');
INSERT INTO `indexgoods` VALUES ('54', '3', 'img/indexgoods/heiwu-43.png');
INSERT INTO `indexgoods` VALUES ('55', '3', 'img/indexgoods/heiwu-44.png');
INSERT INTO `indexgoods` VALUES ('56', '3', 'img/indexgoods/heiwu-45.png');
INSERT INTO `indexgoods` VALUES ('57', '3', 'img/indexgoods/heiwu-46.png');
INSERT INTO `indexgoods` VALUES ('58', '3', 'img/indexgoods/heiwu-47.png');
INSERT INTO `indexgoods` VALUES ('59', '3', 'img/indexgoods/heiwu-48.png');
INSERT INTO `indexgoods` VALUES ('60', '3', 'img/indexgoods/heiwu-49.png');
INSERT INTO `indexgoods` VALUES ('61', '3', 'img/indexgoods/heiwu-50.png');
INSERT INTO `indexgoods` VALUES ('62', '3', 'img/indexgoods/heiwu-51.png');
INSERT INTO `indexgoods` VALUES ('63', '3', 'img/indexgoods/heiwu-52.png');
INSERT INTO `indexgoods` VALUES ('64', '3', 'img/indexgoods/heiwu-53.png');
INSERT INTO `indexgoods` VALUES ('66', '3', 'img/indexgoods/heiwu-55.png');
INSERT INTO `indexgoods` VALUES ('67', '3', 'img/indexgoods/heiwu-56.png');
INSERT INTO `indexgoods` VALUES ('68', '3', 'img/indexgoods/heiwu-57.png');
INSERT INTO `indexgoods` VALUES ('69', '3', 'img/indexgoods/heiwu-58.png');
INSERT INTO `indexgoods` VALUES ('70', '3', 'img/indexgoods/heiwu-59.png');
INSERT INTO `indexgoods` VALUES ('71', '3', 'img/indexgoods/heiwu-60.png');
INSERT INTO `indexgoods` VALUES ('72', '3', 'img/indexgoods/heiwu-61.png');
INSERT INTO `indexgoods` VALUES ('73', '3', 'img/indexgoods/heiwu-62.png');
INSERT INTO `indexgoods` VALUES ('74', '3', 'img/indexgoods/heiwu-63.png');
INSERT INTO `indexgoods` VALUES ('75', '3', 'img/indexgoods/heiwu-64.png');
INSERT INTO `indexgoods` VALUES ('76', '3', 'img/indexgoods/heiwu-65.png');
INSERT INTO `indexgoods` VALUES ('77', '3', 'img/indexgoods/heiwu-66.png');
INSERT INTO `indexgoods` VALUES ('78', '3', 'img/indexgoods/heiwu-67.png');
INSERT INTO `indexgoods` VALUES ('79', '3', 'img/indexgoods/heiwu-68.png');
INSERT INTO `indexgoods` VALUES ('80', '3', 'img/indexgoods/heiwu-69.png');
INSERT INTO `indexgoods` VALUES ('81', '3', 'img/indexgoods/heiwu-70.png');
INSERT INTO `indexgoods` VALUES ('83', '3', 'img/indexgoods/heiwu-72.png');
INSERT INTO `indexgoods` VALUES ('84', '3', 'img/indexgoods/heiwu-73.png');
INSERT INTO `indexgoods` VALUES ('85', '3', 'img/indexgoods/heiwu-74.png');
INSERT INTO `indexgoods` VALUES ('86', '3', 'img/indexgoods/heiwu-75.png');
INSERT INTO `indexgoods` VALUES ('87', '3', 'img/indexgoods/heiwu-76.png');
INSERT INTO `indexgoods` VALUES ('88', '3', 'img/indexgoods/heiwu-77.png');
INSERT INTO `indexgoods` VALUES ('89', '3', 'img/indexgoods/heiwu-78.png');
INSERT INTO `indexgoods` VALUES ('90', '3', 'img/indexgoods/heiwu-79.png');
INSERT INTO `indexgoods` VALUES ('91', '3', 'img/indexgoods/heiwu-80.png');
INSERT INTO `indexgoods` VALUES ('92', '3', 'img/indexgoods/heiwu-81.png');
INSERT INTO `indexgoods` VALUES ('93', '3', 'img/indexgoods/heiwu-82.png');
INSERT INTO `indexgoods` VALUES ('94', '3', 'img/indexgoods/heiwu-83.png');
INSERT INTO `indexgoods` VALUES ('95', '3', 'img/indexgoods/heiwu-84.png');
INSERT INTO `indexgoods` VALUES ('96', '3', 'img/indexgoods/heiwu-85.png');
INSERT INTO `indexgoods` VALUES ('97', '3', 'img/indexgoods/heiwu-86.png');
INSERT INTO `indexgoods` VALUES ('98', '4', 'img/indexgoods/heiwu-87.png');
INSERT INTO `indexgoods` VALUES ('99', '4', 'img/indexgoods/heiwu-88.png');
INSERT INTO `indexgoods` VALUES ('100', '4', 'img/indexgoods/heiwu-89.png');
INSERT INTO `indexgoods` VALUES ('101', '4', 'img/indexgoods/heiwu-90.png');
INSERT INTO `indexgoods` VALUES ('102', '4', 'img/indexgoods/heiwu-91.png');
INSERT INTO `indexgoods` VALUES ('103', '4', 'img/indexgoods/heiwu-92.png');
INSERT INTO `indexgoods` VALUES ('104', '4', 'img/indexgoods/heiwu-93.png');
INSERT INTO `indexgoods` VALUES ('105', '4', 'img/indexgoods/heiwu-94.png');
INSERT INTO `indexgoods` VALUES ('106', '4', 'img/indexgoods/heiwu-95.png');
INSERT INTO `indexgoods` VALUES ('107', '4', 'img/indexgoods/heiwu-96.png');
INSERT INTO `indexgoods` VALUES ('108', '4', 'img/indexgoods/heiwu-97.png');
INSERT INTO `indexgoods` VALUES ('109', '4', 'img/indexgoods/heiwu-98.png');
INSERT INTO `indexgoods` VALUES ('110', '4', 'img/indexgoods/heiwu-99.png');
INSERT INTO `indexgoods` VALUES ('111', '4', 'img/indexgoods/heiwu-100.png');
INSERT INTO `indexgoods` VALUES ('112', '4', 'img/indexgoods/heiwu-101.png');
INSERT INTO `indexgoods` VALUES ('113', '4', 'img/indexgoods/heiwu-102.png');
INSERT INTO `indexgoods` VALUES ('114', '4', 'img/indexgoods/heiwu-103.png');
INSERT INTO `indexgoods` VALUES ('115', '4', 'img/indexgoods/heiwu-104.png');
INSERT INTO `indexgoods` VALUES ('116', '4', 'img/indexgoods/heiwu-105.png');
INSERT INTO `indexgoods` VALUES ('117', '4', 'img/indexgoods/heiwu-106.png');
INSERT INTO `indexgoods` VALUES ('118', '4', 'img/indexgoods/heiwu-107.png');
INSERT INTO `indexgoods` VALUES ('119', '4', 'img/indexgoods/heiwu-108.png');
INSERT INTO `indexgoods` VALUES ('120', '4', 'img/indexgoods/heiwu-109.png');
INSERT INTO `indexgoods` VALUES ('121', '4', 'img/indexgoods/heiwu-110.png');
INSERT INTO `indexgoods` VALUES ('122', '5', 'img/indexgoods/heiwu-q1.png');
INSERT INTO `indexgoods` VALUES ('123', '5', 'img/indexgoods/heiwu-q2.png');
SET FOREIGN_KEY_CHECKS=1;
