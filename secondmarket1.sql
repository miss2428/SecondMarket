
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `aid` int(6) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `uid` int(5) unsigned DEFAULT NULL,
  `WangxinSupport` tinyint(3) unsigned DEFAULT '0',
  `price` float(6,2) DEFAULT NULL,
  `wangxin_price` smallint(6) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `statue` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`aid`),
  KEY `FK_uid` (`uid`),
  CONSTRAINT `FK_uid` FOREIGN KEY (`uid`) REFERENCES `t_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES ('31', '2018-04-11', 'oppoR9手机', '全新手机', '1', '12', '0', '1150.00', null, 'productImages/oppo.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('34', '2018-04-11', 'oppoR9手机', null, '1', '12', null, '1150.00', null, 'productImages/oppo.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('36', '2018-04-03', '暴风魔镜VR', null, '4', '5', null, '99.00', null, 'productImages/VR.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('37', '2018-04-11', '麻线藤球台灯', null, '1', '5', null, '20.00', null, 'productImages/台灯.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('41', '2018-03-30', '高等数学习题全解指南', null, '2', '9', null, '53.00', null, 'productImages/高数.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('43', '2018-04-07', '星火英语四级真题试卷', '哇哇哇哇哇哇哇哇', '2', '6', null, '100.00', '1', 'productImages/四六级.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('44', '2018-04-07', 'C语言从入门到精通 (第3版) ', '9成新书，自己没怎么用过，便宜甩卖', '2', '6', '0', '41.00', '0', 'productImages/C语言.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('45', '2018-04-09', 'Teloon天龙碳素网球拍', null, '3', '4', null, '129.00', null, 'productImages/网球.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('46', '2018-04-13', '微观经济学现代观点', null, '1', '13', null, '68.00', null, 'productImages/微观经济.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('47', '2018-04-13', 'Adidas Stan Smith史密斯', null, '3', '5', null, '219.00', null, 'productImages/阿迪达斯.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('48', '2018-04-09', 'Salomon专业运动跑步腰包', null, '3', '5', null, '145.00', null, 'productImages/Salomon专业运动跑步腰包.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('49', '2018-03-22', 'flow原装工具收纳包', null, '3', '6', null, '98.00', null, 'productImages/flow.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('50', '2018-04-10', 'DW丹尼尔惠灵顿手表男女情侣款', null, '3', '12', null, '100.00', null, 'productImages/DW.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('51', '2018-04-04', 'PANDORA潘多拉手链皮绳手链', null, '3', '13', null, '350.00', null, 'productImages/PANDORA.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('54', '2018-04-14', '韩国纯棉连帽加绒卫衣三件套', null, '4', '12', null, '100.00', null, 'productImages/卫衣.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('58', '2018-04-11', 'Missq家显瘦韩版港味复古高腰蓝色阔腿裤九分牛仔裤', null, '4', '7', null, '50.00', null, 'productImages/牛仔裤.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('59', '2018-03-29', '美国代购YSL圣罗兰 100%羊毛围巾', null, '4', '13', null, '300.00', null, 'productImages/围巾.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');
INSERT INTO `t_article` VALUES ('60', '2018-03-20', 'TOUGH 牛仔布腰带', null, '4', '7', null, '100.00', null, 'productImages/腰带.jpg', '西北农林科技大学10号宿舍楼', 'qq73456789', '1');



-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `wx` smallint(6) DEFAULT '0',
  `statue` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8462144 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('4', 'eee1', '1238', '123@qq.com', '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('5', 'eeeq2', '123', '456@qq.com', '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('6', 'eeeq3', '456', '242224@qq.com', '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('7', 'eeeq', '1234', null, '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('8', 'username', 'password', '', '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('9', 'eee', 'eee', null, '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('10', 'eeeq', '222', null, '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('11', 'eeeq', '333', '1012@qq.com', '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('12', 'eeeq', 'password', null, '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('13', 'tt', 'password', null, '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('14', 'eeeq', 'password', 'gg', '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('15', 'eeeq', '111', 'ww', '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('36', 'eeeq', 'ss', null, '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('56', 'eeeq', '赵满洲', null, '西农', '6428748277', '826', '1');
INSERT INTO `t_user` VALUES ('851', 'eeeq', '569', 'zmzsstreet@163.com', '西农', '6428748277', '0', '1');
INSERT INTO `t_user` VALUES ('8462143', '远方', '', null, '西农', '6428748277', '844', '1');
SET FOREIGN_KEY_CHECKS=1;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `uid` int(10) DEFAULT NULL,
  `contents` text,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `fk_aid_com` (`aid`),
  CONSTRAINT `fk_aid_com` FOREIGN KEY (`aid`) REFERENCES `t_article` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', '47', '4', 'shajshj', '2018-05-01');
INSERT INTO `t_comment` VALUES ('6', '47', '6', '士大夫发', '2018-05-16');
INSERT INTO `t_comment` VALUES ('7', '47', '4', 'dhsjdsj;', '2018-05-19');
INSERT INTO `t_comment` VALUES ('8', '54', '9', '哈哈哈哈', '2018-05-19');
INSERT INTO `t_comment` VALUES ('9', '54', '9', '哈哈哈哈', '2018-05-19');
INSERT INTO `t_comment` VALUES ('16', '47', '9', 'ee', '2018-05-19');
INSERT INTO `t_comment` VALUES ('17', '47', '9', '撒啊姐姐啊哈哈', '2018-05-19');
INSERT INTO `t_comment` VALUES ('18', '47', '9', '山东黄金符合时代科技', '2018-05-19');
INSERT INTO `t_comment` VALUES ('19', '58', '9', 'safsfaf', '2018-05-19');
INSERT INTO `t_comment` VALUES ('20', '58', '9', 'safsfaf', '2018-05-19');
INSERT INTO `t_comment` VALUES ('21', '58', '9', 'saddas', '2018-05-19');
INSERT INTO `t_comment` VALUES ('22', '37', '9', 'eee', '2018-05-19');
INSERT INTO `t_comment` VALUES ('23', '37', '9', 'eee', '2018-05-19');
INSERT INTO `t_comment` VALUES ('24', '60', '9', 'ada', '2018-05-19');
INSERT INTO `t_comment` VALUES ('25', '48', '9', 'eee', '2018-05-19');
INSERT INTO `t_comment` VALUES ('26', '48', '9', 'eee', '2018-05-19');
INSERT INTO `t_comment` VALUES ('27', '54', '9', 'ee', '2018-05-19');
INSERT INTO `t_comment` VALUES ('28', '50', '8462143', '能便宜点不', '2018-05-21');
