/*
Navicat MySQL Data Transfer

Source Server         : mywork
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : huangzilan

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-12-03 21:40:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodlist
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `original` int(255) DEFAULT NULL,
  `discount` varchar(7) DEFAULT '',
  `total` int(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `place1` varchar(255) DEFAULT NULL,
  `place2` varchar(255) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('1', 'Prada', '女士大衣', '1902', '1402', '7.8', '100', 'S&M&L&XL', '黑色', '国内', '广州', '限时九折', '../img/list/b1 (1).jpg&../img/list/b1 (2).jpg&../img/list/b1 (3).jpg&../img/list/b1 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('2', 'Laurent', '女士V领荷叶边露肩真丝雪纺衫', '2266', '1766', '7.5', '100', 'S&M&L', '白色', '国内', '北京', '一口价', '../img/list/b2 (1).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('3', 'Weekend MaxMara', '女士短袖针织衫', '7809', '7309', '8.5', '110', 'XS&S&M&L&XL&XXL', '粉色', '国内', '香港', '限时九折', '../img/list/b3 (1).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('4', 'Coach', '女士褶皱立领七分袖衬衫', '4509', '4009', '9.5', '80', 'X&S&M&L&XXL&XXXL', '褐色', '国内', '上海', '限时九折', '../img/list/b4 (1).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-30 12:43:13');
INSERT INTO `goodlist` VALUES ('5', 'Tory', '女士圆领毛衣', '5618', '5118', '5.6', '100', 'S&M&L', '土黄色', '国内', '深圳', '秒杀价', '../img/list/b5 (1).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('6', 'BurchLong', '女士短袖T恤', '1209', '709', '6.6', '120', 'S&M&L', '蓝色', '国内', '杭州', '限时九折', '../img/list/b6 (1).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('7', 'champ', '女士发热连裤袜 140D 黒色 2双', '1200', '700', '7.6', '140', 'S&M&L', '卡其色', '国内', '厦门', '一口价', '../img/list/b7 (1).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('8', 'Aspinal', '女士宽松立领面包服马甲', '2000', '1802', '8.6', '160', 'S&M&L', '咖啡色', '国内', '温州', '参加满减', '../img/list/b8 (1).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('9', 'Givenchy', '女士比基尼低腰内裤礼盒装', '456', '356', '9.6', '180', 'S&M&L', '米色', '海外', '美国', '限时九折', '../img/list/b9 (1).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('10', 'Bally', '女士优雅透视绣花真丝衬衫', '570', '470', '2.7', '200', 'S&M&L', '红色', '海外', '日本', '一口价', '../img/list/b1 (1).jpg&../img/list/b1 (2).jpg&../img/list/b1 (3).jpg&../img/list/b1 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('11', 'Prada', '女士动物纹紧身九分运动裤', '799', '699', '3.7', '220', 'S&M&L', '绿色', '海外', '加拿大', '参加满减', '../img/list/b10 (1).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('12', 'Gucci', '女士新款修身牛仔夹克潮', '200', '100', '4.7', '240', 'S&M&L', '灰色', '海外', '澳大利亚', '秒杀价', '../img/list/b10 (2).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('13', 'Burberry', '女士圆领短袖T恤', '350', '250', '5.7', '260', 'S&M&L', '棕色', '海外', '英国', '参加满减', '../img/list/b10 (3).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('14', 'Comme des Garcons Play', '女士灰色九分裤', '360', '260', '6.7', '280', 'S&M&L', '拼色', '海外', '瑞典', '一口价', '../img/list/b10 (4).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('15', 'Axelledesoie', '女士深蓝羊毛衫', '790', '690', '7.7', '300', 'S&M&L', '土黄色', '海外', '韩国', '参加满减', '../img/list/b10 (5).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('16', 'Michael', '女款深蓝色时尚中腰牛仔长裤', '521', '421', '8.7', '320', 'S&M&L', '灰色', '海外', '德国', '参加满减', '../img/list/b10 (6).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('17', 'DupontBottega', '女款蓝色休闲高腰牛仔长裤', '528', '428', '9.7', '340', 'S&M&L', '黑色', '海外', '法国', '一口价', '../img/list/b10 (7).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('18', 'ATSUGI', '女士发热连裤袜 110D 黒色 2双', '621', '521', '5.3', '360', 'S&M&L&XL', '白色', '海外', '西班牙', '参加满减', '../img/list/b10 (8).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('19', 'VenetaMiu', '深蓝色时尚中腰牛仔长裤', '1234', '1134', '6.3', '380', 'S&M&L&XL', '粉色', '海外', '俄罗斯', '秒杀价', '../img/list/b10 (9).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('20', 'MiuValentino', '【两件装】SABRINA系列', '4321', '4221', '7.3', '400', 'S&M&L&XL', '褐色', '国内', '广州', '秒杀价', '../img/list/b10 (10).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('21', 'Givenchy', '发热连裤袜 140D', '5692', '5592', '8.3', '420', 'S&M&L&XL', '土黄色', '国内', '北京', '一口价', '../img/list/b10 (11).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('22', 'Bally', '女士修身连衣裙', '12000', '11111', '9.3', '440', 'X&S&M&L&XXL&XXXL', '蓝色', '国内', '香港', '一口价', '../img/list/b10 (12).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('23', 'Saint', '女士V领荷叶边露肩真丝雪纺衫', '29000', '11112', '1', '460', 'X&S&M&L&XXL&XXXL', '卡其色', '国内', '上海', '参加满减', '../img/list/b10 (13).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('24', 'Laurent', '女士短袖针织衫', '15032', '11113', '1', '480', 'X&S&M&L&XXL&XXXL', '咖啡色', '国内', '深圳', '一口价', '../img/list/b10 (14).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('25', 'Burberry', '女士褶皱立领七分袖衬衫', '11090', '11114', '1', '500', 'X&S&M&L&XXL&XXXL', '米色', '国内', '杭州', '限时九折', '../img/list/b10 (15).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('26', 'Coach', '女士圆领毛衣', '2380', '2300', '1', '50', 'S&M&L', '红色', '海外', '美国', '限时九折', '../img/list/b10 (16).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('27', 'Tory', '女士短袖T恤', '12345', '12000', '1', '60', 'S&M&L&XL', '绿色', '海外', '日本', '限时九折', '../img/list/b10 (17).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('28', 'BurchLong', '女士发热连裤袜 140D 黒色 2双', '680', '480', '1', '70', 'X&S&M&L&XXL&XXXL', '灰色', '海外', '加拿大', '限时九折', '../img/list/b10 (18).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('29', 'champ', '女士宽松立领面包服马甲', '350', '150', '1', '80', 'X&S&M&L&XXL&XXXL', '棕色', '海外', '澳大利亚', '限时九折', '../img/list/b10 (19).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('30', 'Aspinal', '女士比基尼低腰内裤礼盒装', '450', '250', '1', '90', 'S&M&L', '拼色', '海外', '英国', '参加满减', '../img/list/b10 (20).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('31', 'Givenchy', '女士优雅透视绣花真丝衬衫', '560', '360', '2.8', '100', 'S&M&L&XL', '土黄色', '海外', '瑞典', '限时七折', '../img/list/b10 (21).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('32', 'Bally', '女士动物纹紧身九分运动裤', '804', '604', '3.8', '110', 'X&S&M&L&XXL&XXXL', '灰色', '海外', '韩国', '参加满减', '../img/list/b10 (22).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('33', 'Prada', '女士新款修身牛仔夹克潮', '220', '20', '4.8', '120', 'X&S&M&L&XXL&XXXL', '黑色', '海外', '德国', '参加满减', '../img/list/b10 (23).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('34', 'Gucci', '女士圆领短袖T恤', '330', '130', '5.8', '130', 'S&M&L', '白色', '国内', '法国', '参加满减', '../img/list/b10 (24).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('35', 'Burberry', '女士灰色九分裤', '222', '22', '6.8', '140', 'S&M&L&XL', '粉色', '国内', '西班牙', '一口价', '../img/list/b10 (25).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (5).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('36', 'Michael', '女士深蓝羊毛衫', '333', '133', '7.8', '150', 'X&S&M&L&XXL&XXXL', '褐色', '国内', '俄罗斯', '一口价', '../img/list/b10 (26).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (6).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('37', 'KorsS', '女士大衣', '3333', '3133', '8.8', '160', 'X&S&M&L&XXL&XXXL', '土黄色', '国内', '上海', '秒杀价', '../img/list/b8 (1).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('38', 'Michael', '女士V领荷叶边露肩真丝雪纺衫', '4480', '4280', '3.2', '170', 'S&M&L', '蓝色', '国内', '深圳', '秒杀价', '../img/list/b9 (1).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('39', 'DupontBottega', '女士短袖针织衫', '5499', '5299', '4.2', '180', 'S&M&L&XL', '卡其色', '国内', '杭州', '参加满减', '../img/list/b1 (1).jpg&../img/list/b1 (2).jpg&../img/list/b1 (3).jpg&../img/list/b1 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('40', 'T', '女士褶皱立领七分袖衬衫', '3799', '3599', '5.2', '190', 'X&S&M&L&XXL&XXXL', '咖啡色', '海外', '美国', '参加满减', '../img/list/b10 (1).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('41', 'VenetaMiu', '女士圆领毛衣', '2309', '2109', '6.2', '200', 'X&S&M&L&XXL&XXXL', '米色', '海外', '日本', '参加满减', '../img/list/b10 (2).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('42', 'MiuValentino', '女士短袖T恤', '4509', '4309', '7.2', '210', 'S&M&L', '红色', '海外', '加拿大', '限时九折', '../img/list/b10 (3).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('43', 'Givenchy', '女士发热连裤袜 140D 黒色 2双', '215', '15', '8.2', '220', 'S&M&L&XL', '绿色', '海外', '澳大利亚', '限时五折', '../img/list/b10 (4).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('44', 'Bally', '女士宽松立领面包服马甲', '321', '121', '9.2', '230', 'S&M&L', '灰色', '海外', '英国', '限时五折', '../img/list/b10 (5).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('45', 'Saint', '女士比基尼低腰内裤礼盒装', '325', '125', '1', '240', 'X&S&M&L&XXL&XXXL', '棕色', '海外', '瑞典', '限时九折', '../img/list/b10 (6).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('46', 'Laurent', '女士优雅透视绣花真丝衬衫', '568', '368', '1', '250', 'X&S&M&L&XXL&XXXL', '拼色', '海外', '韩国', '参加满减', '../img/list/b10 (7).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('47', 'Burberry', '女士动物纹紧身九分运动裤', '890', '690', '1', '260', 'S&M&L', '土黄色', '海外', '德国', '限时九折', '../img/list/b10 (8).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('48', 'Coach', '女士新款修身牛仔夹克潮', '1200', '1000', '1', '270', 'S&M&L&XL', '灰色', '国内', '广州', '参加满减', '../img/list/b10 (9).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('49', 'Tory', '女士圆领短袖T恤', '3600', '3400', '1', '280', 'S&M&L&XL', '黑色', '国内', '北京', '限时八折', '../img/list/b10 (10).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('50', 'BurchLong', '女士灰色九分裤', '6700', '6500', '5.2', '290', 'S&M&L', '白色', '国内', '香港', '参加满减', '../img/list/b10 (11).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('51', 'champ', '女士深蓝羊毛衫', '1902', '1702', '6.2', '300', 'XS&S&M&L&XL&XXL', '粉色', '国内', '上海', '秒杀价', '../img/list/b10 (12).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('52', 'Aspinal', '女款深蓝色时尚中腰牛仔长裤', '3560', '3360', '7.2', '310', 'X&S&M&L&XXL&XXXL', '褐色', '国内', '深圳', '参加满减', '../img/list/b10 (13).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('53', 'Givenchy', '女款蓝色休闲高腰牛仔长裤', '3355', '3155', '8.2', '320', 'S&M&L', '土黄色', '国内', '杭州', '一口价', '../img/list/b10 (14).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('54', 'Bally', '女士发热连裤袜 110D 黒色 2双', '8890', '8690', '9.2', '330', 'S&M&L', '蓝色', '海外', '美国', '参加满减', '../img/list/b10 (15).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('55', 'Prada', '深蓝色时尚中腰牛仔长裤', '1256', '1056', '10.2', '340', 'S&M&L', '卡其色', '海外', '日本', '一口价', '../img/list/b10 (16).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('56', 'Gucci', '【两件装】SABRINA系列', '3590', '3390', '7.7', '350', 'S&M&L', '咖啡色', '海外', '加拿大', '限时九折', '../img/list/b10 (17).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('57', 'Burberry', '发热连裤袜 140D', '8765', '8565', '8.7', '20', 'S&M&L', '米色', '海外', '澳大利亚', '限时九折', '../img/list/b10 (18).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('58', 'Michael', '女士修身连衣裙', '5478', '5278', '9.7', '30', 'S&M&L', '红色', '海外', '英国', '参加满减', '../img/list/b10 (19).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('59', 'KorsS', '女士V领荷叶边露肩真丝雪纺衫', '2765', '2565', '5.5', '40', 'S&M&L', '绿色', '海外', '瑞典', '限时九折', '../img/list/b10 (20).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('60', 'Michael', '女士短袖针织衫', '3908', '3708', '6.5', '50', 'S&M&L', '灰色', '海外', '韩国', '限时九折', '../img/list/b10 (21).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('61', 'DupontBottega', '女士褶皱立领七分袖衬衫', '3109', '2909', '7.5', '60', 'S&M&L', '棕色', '海外', '德国', '参加满减', '../img/list/b10 (22).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('62', 'T', '女士圆领毛衣', '2809', '2609', '8.5', '70', 'S&M&L&XL', '拼色', '国内', '广州', '限时七折', '../img/list/b10 (23).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('63', 'VenetaMiu', '女士短袖T恤', '3589', '3389', '9.5', '80', 'S&M&L', '土黄色', '国内', '北京', '参加满减', '../img/list/b10 (24).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('64', 'MiuValentino', '女士发热连裤袜 140D 黒色 2双', '2266', '2066', '6.1', '90', 'XS&S&M&L&XL&XXL', '灰色', '国内', '香港', '限时七折', '../img/list/b10 (25).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (5).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('65', 'Givenchy', '女士宽松立领面包服马甲', '7809', '7609', '7.1', '100', 'X&S&M&L&XXL&XXXL', '土黄色', '国内', '上海', '参加满减', '../img/list/b10 (26).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (6).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('66', 'Bally', '女士比基尼低腰内裤礼盒装', '4509', '4309', '8.1', '110', 'S&M&L', '灰色', '国内', '深圳', '参加满减', '../img/list/b1 (1).jpg&../img/list/b1 (2).jpg&../img/list/b1 (3).jpg&../img/list/b1 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('67', 'Saint', '女士优雅透视绣花真丝衬衫', '5618', '5418', '9.1', '120', 'S&M&L', '黑色', '国内', '杭州', '一口价', '../img/list/b2 (1).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('68', 'Laurent', '女士动物纹紧身九分运动裤', '1209', '1009', '8.2', '130', 'S&M&L', '白色', '国内', '深圳', '一口价', '../img/list/b3 (1).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('69', 'Burberry', '女士新款修身牛仔夹克潮', '1200', '1000', '9.2', '140', 'S&M&L', '粉色', '国内', '杭州', '秒杀价', '../img/list/b4 (1).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('70', 'Coach', '女士圆领短袖T恤', '890', '790', '8.1', '150', 'S&M&L', '褐色', '海外', '美国', '参加满减', '../img/list/b5 (1).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('71', 'Tory', '女士灰色九分裤', '456', '356', '9.1', '160', 'S&M&L', '土黄色', '海外', '日本', '参加满减', '../img/list/b6 (1).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('72', 'BurchLong', '女士深蓝羊毛衫', '570', '470', '3.3', '170', 'S&M&L', '蓝色', '海外', '加拿大', '参加满减', '../img/list/b7 (1).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('73', 'champ', '女士大衣', '799', '699', '4.3', '180', 'S&M&L', '卡其色', '海外', '澳大利亚', '一口价', '../img/list/b8 (1).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('74', 'Aspinal', '女士V领荷叶边露肩真丝雪纺衫', '200', '100', '5.3', '190', 'S&M&L', '咖啡色', '海外', '英国', '限时九折', '../img/list/b9 (1).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('75', 'Givenchy', '女士短袖针织衫', '350', '250', '6.3', '200', 'S&M&L&XL', '米色', '海外', '瑞典', '一口价', '../img/list/b1 (1).jpg&../img/list/b1 (2).jpg&../img/list/b1 (3).jpg&../img/list/b1 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('76', 'Bally', '女士褶皱立领七分袖衬衫', '360', '260', '7.3', '10', 'S&M&L', '红色', '海外', '韩国', '参加满减', '../img/list/b10 (1).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('77', 'Prada', '女士圆领毛衣', '790', '690', '8.3', '15', 'XS&S&M&L&XL&XXL', '绿色', '海外', '德国', '秒杀价', '../img/list/b10 (2).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('78', 'Gucci', '女士短袖T恤', '521', '421', '9.3', '20', 'X&S&M&L&XXL&XXXL', '灰色', '海外', '德国', '参加满减', '../img/list/b10 (3).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('79', 'Burberry', '女士发热连裤袜 140D 黒色 2双', '528', '428', '8.6', '25', 'S&M&L', '棕色', '海外', '德国', '参加满减', '../img/list/b10 (4).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('80', 'Michael', '女士宽松立领面包服马甲', '621', '521', '9.6', '30', 'S&M&L', '拼色', '海外', '德国', '参加满减', '../img/list/b10 (5).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('81', 'KorsS', '女士比基尼低腰内裤礼盒装', '1234', '1134', '2.7', '35', 'S&M&L', '土黄色', '国内', '广州', '一口价', '../img/list/b10 (6).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('82', 'Michael', '女士优雅透视绣花真丝衬衫', '4321', '4221', '3.7', '40', 'S&M&L', '灰色', '国内', '北京', '限时九折', '../img/list/b10 (7).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('83', 'DupontBottega', '女士动物纹紧身九分运动裤', '5692', '5592', '4.7', '45', 'S&M&L', '黑色', '国内', '香港', '一口价', '../img/list/b10 (8).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('84', 'T', '女士新款修身牛仔夹克潮', '12000', '11900', '5.7', '50', 'S&M&L', '白色', '国内', '上海', '参加满减', '../img/list/b10 (9).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('85', 'VenetaMiu', '女士圆领短袖T恤', '29000', '28900', '6.7', '55', 'S&M&L', '粉色', '国内', '深圳', '秒杀价', '../img/list/b10 (10).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('86', 'MiuValentino', '女士灰色九分裤', '15032', '14932', '7.7', '60', 'S&M&L', '褐色', '国内', '杭州', '参加满减', '../img/list/b10 (11).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('87', 'Givenchy', '女士深蓝羊毛衫', '11090', '10990', '8.7', '65', 'S&M&L', '土黄色', '海外', '美国', '一口价', '../img/list/b10 (12).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('88', 'Bally', '女款深蓝色时尚中腰牛仔长裤', '2380', '2280', '9.7', '70', 'X&S&M&L&XXL&XXXL', '蓝色', '海外', '日本', '参加满减', '../img/list/b10 (13).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('89', 'Saint', '女款蓝色休闲高腰牛仔长裤', '12345', '12245', '5.3', '75', 'S&M&L', '卡其色', '海外', '加拿大', '一口价', '../img/list/b10 (14).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('90', 'Laurent', '女士发热连裤袜 110D 黒色 2双', '680', '580', '6.3', '80', 'S&M&L&XL', '咖啡色', '海外', '澳大利亚', '限时九折', '../img/list/b10 (15).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('91', 'Burberry', '深蓝色时尚中腰牛仔长裤', '350', '250', '7.3', '85', 'S&M&L&XL', '米色', '海外', '英国', '限时九折', '../img/list/b10 (16).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('92', 'Coach', '【两件装】SABRINA系列', '450', '350', '8.3', '90', 'S&M&L', '红色', '海外', '瑞典', '参加满减', '../img/list/b10 (17).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('93', 'Tory', '发热连裤袜 140D', '560', '460', '9.3', '95', 'XS&S&M&L&XL&XXL', '绿色', '海外', '韩国', '参加满减', '../img/list/b10 (18).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('94', 'BurchLong', '女士修身连衣裙', '804', '704', '1', '100', 'X&S&M&L&XXL&XXXL', '灰色', '海外', '德国', '一口价', '../img/list/b10 (19).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('95', 'champ', '女士V领荷叶边露肩真丝雪纺衫', '220', '120', '1', '105', 'S&M&L', '棕色', '国内', '广州', '限时九折', '../img/list/b10 (20).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('96', 'Aspinal', '女士短袖针织衫', '330', '230', '1', '110', 'S&M&L', '拼色', '国内', '北京', '一口价', '../img/list/b10 (21).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('97', 'Givenchy', '女士褶皱立领七分袖衬衫', '222', '122', '1', '115', 'S&M&L', '土黄色', '国内', '香港', '参加满减', '../img/list/b10 (22).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('98', 'Bally', '女士圆领毛衣', '333', '233', '1', '120', 'S&M&L', '灰色', '国内', '上海', '秒杀价', '../img/list/b10 (23).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('99', 'Prada', '女士短袖T恤', '3333', '3233', '1', '125', 'S&M&L', '黑色', '国内', '深圳', '参加满减', '../img/list/b10 (24).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('100', 'Gucci', '女士发热连裤袜 140D 黒色 2双', '4480', '4380', '1', '130', 'S&M&L', '白色', '国内', '杭州', '参加满减', '../img/list/b10 (25).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (5).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('101', 'Burberry', '女士宽松立领面包服马甲', '5499', '5399', '1', '135', 'S&M&L', '粉色', '海外', '美国', '参加满减', '../img/list/b10 (26).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (6).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('102', 'Michael', '女士比基尼低腰内裤礼盒装', '3799', '3699', '2.8', '140', 'S&M&L', '褐色', '海外', '日本', '一口价', '../img/list/b8 (1).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('103', 'KorsS', '女士优雅透视绣花真丝衬衫', '2309', '2209', '3.8', '145', 'S&M&L', '土黄色', '海外', '加拿大', '限时九折', '../img/list/b9 (1).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('104', 'Michael', '女士动物纹紧身九分运动裤', '4509', '4409', '4.8', '150', 'S&M&L&XL', '蓝色', '海外', '澳大利亚', '一口价', '../img/list/b1 (1).jpg&../img/list/b1 (2).jpg&../img/list/b1 (3).jpg&../img/list/b1 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('105', 'DupontBottega', '女士新款修身牛仔夹克潮', '215', '115', '5.8', '155', 'S&M&L', '卡其色', '海外', '英国', '参加满减', '../img/list/b10 (1).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('106', 'T', '女士圆领短袖T恤', '321', '221', '6.8', '160', 'XS&S&M&L&XL&XXL', '咖啡色', '海外', '瑞典', '秒杀价', '../img/list/b10 (2).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('107', 'VenetaMiu', '女士灰色九分裤', '325', '225', '7.8', '165', 'X&S&M&L&XXL&XXXL', '米色', '海外', '韩国', '参加满减', '../img/list/b10 (3).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('108', 'MiuValentino', '女士深蓝羊毛衫', '568', '468', '8.8', '170', 'S&M&L', '红色', '海外', '德国', '参加满减', '../img/list/b10 (4).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('109', 'Givenchy', '女士大衣', '890', '790', '3.2', '175', 'S&M&L', '绿色', '国内', '广州', '参加满减', '../img/list/b10 (5).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('110', 'Bally', '女士V领荷叶边露肩真丝雪纺衫', '1200', '1100', '4.2', '180', 'S&M&L', '灰色', '国内', '北京', '参加满减', '../img/list/b10 (6).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('111', 'Saint', '女士短袖针织衫', '3600', '3500', '5.2', '185', 'S&M&L', '棕色', '国内', '香港', '一口价', '../img/list/b10 (7).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('112', 'Laurent', '女士褶皱立领七分袖衬衫', '6700', '6600', '6.2', '190', 'S&M&L', '拼色', '国内', '上海', '限时九折', '../img/list/b10 (8).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('113', 'Burberry', '女士圆领毛衣', '1902', '1802', '7.2', '195', 'S&M&L', '土黄色', '国内', '深圳', '一口价', '../img/list/b10 (9).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('114', 'Coach', '女士短袖T恤', '3560', '3460', '8.2', '200', 'S&M&L', '灰色', '国内', '杭州', '参加满减', '../img/list/b10 (10).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('115', 'Tory', '女士发热连裤袜 140D 黒色 2双', '3355', '3255', '9.2', '205', 'S&M&L', '土黄色', '海外', '美国', '秒杀价', '../img/list/b10 (11).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('116', 'BurchLong', '女士宽松立领面包服马甲', '8890', '8790', '1', '210', 'S&M&L', '灰色', '海外', '日本', '参加满减', '../img/list/b10 (12).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('117', 'champ', '女士比基尼低腰内裤礼盒装', '1256', '1156', '1', '215', 'S&M&L&XL', '黑色', '海外', '加拿大', '参加满减', '../img/list/b10 (13).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('118', 'Aspinal', '女士优雅透视绣花真丝衬衫', '3590', '3490', '1', '220', 'S&M&L', '白色', '海外', '澳大利亚', '参加满减', '../img/list/b10 (14).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('119', 'Givenchy', '女士动物纹紧身九分运动裤', '8765', '8665', '1', '225', 'XS&S&M&L&XL&XXL', '粉色', '海外', '英国', '参加满减', '../img/list/b10 (15).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('120', 'Bally', '女士新款修身牛仔夹克潮', '5478', '5378', '1', '230', 'X&S&M&L&XXL&XXXL', '褐色', '海外', '瑞典', '参加满减', '../img/list/b1 (1).jpg&../img/list/b1 (2).jpg&../img/list/b1 (3).jpg&../img/list/b1 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('121', 'Prada', '女士圆领短袖T恤', '2765', '2665', '8.6', '235', 'S&M&L', '土黄色', '海外', '韩国', '一口价', '../img/list/b10 (1).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('122', 'Gucci', '女士灰色九分裤', '3908', '3808', '9.6', '240', 'S&M&L', '蓝色', '海外', '德国', '限时九折', '../img/list/b10 (2).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('123', 'Burberry', '女士深蓝羊毛衫', '3109', '3009', '2.7', '245', 'S&M&L', '卡其色', '国内', '广州', '一口价', '../img/list/b10 (3).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('124', 'Michael', '女款深蓝色时尚中腰牛仔长裤', '2809', '2709', '3.7', '250', 'S&M&L', '咖啡色', '国内', '北京', '参加满减', '../img/list/b10 (4).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('125', 'KorsS', '女款蓝色休闲高腰牛仔长裤', '3589', '3489', '4.7', '255', 'S&M&L', '米色', '国内', '香港', '秒杀价', '../img/list/b10 (5).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('126', 'Michael', '女士发热连裤袜 110D 黒色 2双', '2266', '2166', '5.7', '260', 'S&M&L', '红色', '国内', '上海', '参加满减', '../img/list/b10 (6).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('127', 'DupontBottega', '深蓝色时尚中腰牛仔长裤', '7809', '7709', '6.7', '265', 'S&M&L', '绿色', '国内', '深圳', '限时九折', '../img/list/b10 (7).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('128', 'T', '【两件装】SABRINA系列', '4509', '4409', '7.7', '270', 'S&M&L', '灰色', '国内', '杭州', '限时九折', '../img/list/b10 (8).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('129', 'VenetaMiu', '发热连裤袜 140D', '5618', '5518', '8.7', '275', 'S&M&L', '棕色', '国内', '杭州', '参加满减', '../img/list/b10 (9).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('130', 'MiuValentino', '女士修身连衣裙', '1209', '1109', '9.7', '280', 'X&S&M&L&XXL&XXXL', '拼色', '国内', '杭州', '限时九折', '../img/list/b10 (10).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('131', 'Givenchy', '女士V领荷叶边露肩真丝雪纺衫', '1200', '1100', '5.3', '285', 'S&M&L', '土黄色', '海外', '美国', '限时九折', '../img/list/b10 (11).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('132', 'Bally', '女士短袖针织衫', '890', '740', '6.3', '290', 'S&M&L&XL', '灰色', '海外', '日本', '限时九折', '../img/list/b10 (12).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('133', 'Saint', '女士褶皱立领七分袖衬衫', '456', '306', '7.3', '295', 'S&M&L&XL', '黑色', '海外', '加拿大', '限时九折', '../img/list/b10 (13).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('134', 'Laurent', '女士圆领毛衣', '570', '420', '8.3', '300', 'S&M&L', '白色', '海外', '澳大利亚', '参加满减', '../img/list/b10 (14).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('135', 'Burberry', '女士短袖T恤', '799', '649', '9.3', '305', 'XS&S&M&L&XL&XXL', '粉色', '海外', '英国', '限时九折', '../img/list/b10 (15).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('136', 'Coach', '女士发热连裤袜 140D 黒色 2双', '200', '50', '1', '310', 'X&S&M&L&XXL&XXXL', '褐色', '海外', '瑞典', '限时九折', '../img/list/b10 (16).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('137', 'Tory', '女士宽松立领面包服马甲', '350', '200', '1', '315', 'S&M&L', '土黄色', '海外', '韩国', '限时九折', '../img/list/b10 (17).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('138', 'BurchLong', '女士比基尼低腰内裤礼盒装', '360', '210', '1', '320', 'S&M&L', '蓝色', '海外', '德国', '限时九折', '../img/list/b10 (18).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('139', 'champ', '女士优雅透视绣花真丝衬衫', '790', '640', '1', '325', 'S&M&L', '卡其色', '海外', '韩国', '参加满减', '../img/list/b10 (19).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('140', 'Aspinal', '女士动物纹紧身九分运动裤', '521', '371', '1', '330', 'S&M&L', '咖啡色', '海外', '韩国', '限时九折', '../img/list/b10 (20).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('141', 'Givenchy', '女士新款修身牛仔夹克潮', '528', '378', '1', '335', 'S&M&L', '米色', '海外', '韩国', '限时九折', '../img/list/b10 (21).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('142', 'Bally', '女士圆领短袖T恤', '621', '471', '1', '340', 'S&M&L', '红色', '国内', '广州', '限时九折', '../img/list/b10 (22).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('143', 'Prada', '女士灰色九分裤', '1234', '1084', '1', '345', 'S&M&L', '绿色', '国内', '北京', '限时九折', '../img/list/b10 (23).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('144', 'Gucci', '女士深蓝羊毛衫', '4321', '4171', '2.8', '350', 'S&M&L', '灰色', '国内', '香港', '参加满减', '../img/list/b10 (24).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('145', 'Burberry', '女士短袖针织衫', '5692', '5542', '3.8', '355', 'S&M&L', '棕色', '国内', '上海', '限时九折', '../img/list/b10 (25).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (5).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('146', 'Michael', '女士褶皱立领七分袖衬衫', '12000', '11850', '4.8', '360', 'S&M&L&XL', '拼色', '国内', '深圳', '限时九折', '../img/list/b10 (26).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (6).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('147', 'KorsS', '女士圆领毛衣', '29000', '28850', '5.8', '365', 'S&M&L', '土黄色', '国内', '杭州', '秒杀价', '../img/list/b1 (1).jpg&../img/list/b1 (2).jpg&../img/list/b1 (3).jpg&../img/list/b1 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('148', 'Michael', '女士短袖T恤', '15032', '14882', '6.8', '370', 'XS&S&M&L&XL&XXL', '灰色', '海外', '美国', '秒杀价', '../img/list/b2 (1).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('149', 'Prada', '女士大衣', '1902', '1402', '7.8', '100', 'S&M&L&XL', '黑色', '国内', '广州', '限时九折', '../img/list/b1 (1).jpg&../img/list/b1 (2).jpg&../img/list/b1 (3).jpg&../img/list/b1 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('150', 'Laurent', '女士V领荷叶边露肩真丝雪纺衫', '2266', '1766', '7.5', '100', 'S&M&L', '白色', '国内', '北京', '一口价', '../img/list/b2 (1).jpg&../img/list/b2 (2).jpg&../img/list/b2 (3).jpg&../img/list/b2 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('151', 'Weekend MaxMara', '女士短袖针织衫', '7809', '7309', '8.5', '110', 'XS&S&M&L&XL&XXL', '粉色', '国内', '香港', '限时九折', '../img/list/b3 (1).jpg&../img/list/b3 (2).jpg&../img/list/b3 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('152', 'Coach', '女士褶皱立领七分袖衬衫', '4509', '4009', '9.5', '80', 'X&S&M&L&XXL&XXXL', '褐色', '国内', '上海', '限时九折', '../img/list/b4 (1).jpg&../img/list/b4 (2).jpg&../img/list/b4 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('153', 'Tory', '女士圆领毛衣', '5618', '5118', '5.6', '100', 'S&M&L', '土黄色', '国内', '深圳', '秒杀价', '../img/list/b5 (1).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('154', 'BurchLong', '女士短袖T恤', '1209', '709', '6.6', '120', 'S&M&L', '蓝色', '国内', '杭州', '限时九折', '../img/list/b6 (1).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('155', 'champ', '女士发热连裤袜 140D 黒色 2双', '1200', '700', '7.6', '140', 'S&M&L', '卡其色', '国内', '厦门', '秒杀价', '../img/list/b7 (1).jpg&../img/list/b7 (2).jpg&../img/list/b7 (3).jpg&../img/list/b7 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('156', 'Aspinal', '女士宽松立领面包服马甲', '2000', '1802', '8.6', '160', 'S&M&L', '咖啡色', '国内', '温州', '限时九折', '../img/list/b8 (1).jpg&../img/list/b8 (2).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('157', 'Givenchy', '女士比基尼低腰内裤礼盒装', '456', '356', '9.6', '180', 'S&M&L', '米色', '海外', '美国', '限时九折', '../img/list/b9 (1).jpg&../img/list/b9 (2).jpg&../img/list/b9 (3).jpg&../img/list/b9 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('158', 'Bally', '女士优雅透视绣花真丝衬衫', '570', '470', '2.7', '200', 'S&M&L', '红色', '海外', '日本', '一口价', '../img/list/b1 (1).jpg&../img/list/b1 (2).jpg&../img/list/b1 (3).jpg&../img/list/b1 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('159', 'Aspinal', '女士动物纹紧身九分运动裤', '521', '371', '1', '330', 'S&M&L', '咖啡色', '海外', '韩国', '秒杀价', '../img/list/b10 (20).jpg&../img/list/b5 (2).jpg&../img/list/b5 (3).jpg&../img/list/b5 (4).jpg', '2018-11-29 08:56:05');
INSERT INTO `goodlist` VALUES ('160', 'Givenchy', '女士新款修身牛仔夹克潮', '528', '378', '1', '335', 'S&M&L', '米色', '海外', '韩国', '参加满减', '../img/list/b10 (21).jpg&../img/list/b6 (2).jpg&../img/list/b6 (3).jpg', '2018-11-29 08:56:05');
SET FOREIGN_KEY_CHECKS=1;
