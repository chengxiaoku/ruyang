/*
Navicat MySQL Data Transfer

Source Server         : 服务器
Source Server Version : 50639
Source Host           : 123.207.218.195:3306
Source Database       : ruyang

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-06-13 11:23:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ims_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_account`;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account
-- ----------------------------
INSERT INTO `ims_account` VALUES ('1', '1', 'uRr8qvQV', '1', '0', '0', '0');
INSERT INTO `ims_account` VALUES ('2', '2', 'cF4Tzgz9', '4', '0', '0', '0');

-- ----------------------------
-- Table structure for ims_account_webapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_webapp`;
CREATE TABLE `ims_account_webapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_webapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_account_wechats
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wechats`;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_wechats
-- ----------------------------
INSERT INTO `ims_account_wechats` VALUES ('1', '1', 'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP', '', '1', 'we7team', '', '', '', '', '', '', '', '', '0', '', '', '1', '', '');

-- ----------------------------
-- Table structure for ims_account_wxapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wxapp`;
CREATE TABLE `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appdomain` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_account_wxapp
-- ----------------------------
INSERT INTO `ims_account_wxapp` VALUES ('2', '2', 'hQ4M15Q9m991C1gRnTHk4CYgki0c47iN', 'A61CJ068kK4708B0EaU50z41Cj82C0bKB36foFCF30Z', '1', '', '1', '123', '123', 'ruyang', '');

-- ----------------------------
-- Table structure for ims_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_category`;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_news`;
CREATE TABLE `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_news
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_notice`;
CREATE TABLE `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `style` varchar(200) NOT NULL,
  `group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_unread_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_unread_notice`;
CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_article_unread_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_basic_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_basic_reply`;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_basic_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_business
-- ----------------------------
DROP TABLE IF EXISTS `ims_business`;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_business
-- ----------------------------

-- ----------------------------
-- Table structure for ims_clf_dongtai_dashang
-- ----------------------------
DROP TABLE IF EXISTS `ims_clf_dongtai_dashang`;
CREATE TABLE `ims_clf_dongtai_dashang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '动态打赏表',
  `userid` int(11) NOT NULL COMMENT '打赏用户ID',
  `dongtaiid` int(11) DEFAULT NULL COMMENT '打赏的动态ID',
  `dongtai_userid` int(11) DEFAULT NULL COMMENT '发布动态ID',
  `dashang_money` decimal(10,2) DEFAULT NULL COMMENT '打赏金额',
  `create_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_clf_dongtai_dashang
-- ----------------------------
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('1', '1', '2', '2', '2.00', '1527756883');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('2', '1', '2', '2', '2.00', '1527756891');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('4', '1', '2', '2', '50.00', '1527756931');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('5', '1', '2', '2', '1.98', '1527757017');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('15', '2', '1', '1', '10.00', '1528535386');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('16', '3', '2', '1', '13.20', '1528704184');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('19', '3', '2', '1', '2.00', '1528704322');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('22', '3', '3', '1', '3.00', '1528704511');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('23', '3', '2', '1', '2.00', '1528704669');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('24', '3', '2', '3', '1.00', '1528704719');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('25', '3', '3', '1', '4.00', '1528705982');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('26', '3', '3', '1', '5.00', '1528706083');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('27', '3', '3', '1', '6.00', '1528706290');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('28', '3', '3', '1', '7.00', '1528706329');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('29', '3', '3', '1', '8.00', '1528708282');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('30', '3', '3', '1', '9.00', '1528708337');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('31', '3', '3', '1', '10.00', '1528708438');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('32', '3', '3', '1', '11.00', '1528708493');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('33', '3', '3', '1', '11.10', '1528708510');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('34', '3', '3', '1', '12.00', '1528708568');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('35', '3', '3', '1', '13.00', '1528708618');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('36', '3', '3', '1', '14.10', '1528708633');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('37', '3', '3', '1', '12.34', '1528708647');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('38', '3', '3', '1', '0.09', '1528711166');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('39', '3', '4', '3', '13.20', '1528791263');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('40', '3', '4', '3', '13.20', '1528791331');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('41', '3', '1', '1', '5.00', '1528793438');
INSERT INTO `ims_clf_dongtai_dashang` VALUES ('42', '3', '1', '1', '6.00', '1528857806');

-- ----------------------------
-- Table structure for ims_clf_dongtai_dianzan
-- ----------------------------
DROP TABLE IF EXISTS `ims_clf_dongtai_dianzan`;
CREATE TABLE `ims_clf_dongtai_dianzan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '动态点赞表',
  `userid` int(11) NOT NULL COMMENT '点赞用户ID',
  `dongtaiid` int(11) NOT NULL COMMENT '动态ID',
  `create_time` varchar(255) DEFAULT NULL COMMENT '点赞的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_clf_dongtai_dianzan
-- ----------------------------
INSERT INTO `ims_clf_dongtai_dianzan` VALUES ('1', '1', '1', '123');

-- ----------------------------
-- Table structure for ims_clf_dongtai_list
-- ----------------------------
DROP TABLE IF EXISTS `ims_clf_dongtai_list`;
CREATE TABLE `ims_clf_dongtai_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人动态（朋友圈）',
  `userid` int(11) DEFAULT NULL COMMENT '发动态的用户ID',
  `content` text COMMENT '动态的文本内容',
  `create_time` varchar(255) DEFAULT NULL COMMENT '动态发布的时间',
  `image_list` text COMMENT '图片列表',
  `veido` varchar(255) DEFAULT NULL,
  `dili` varchar(255) DEFAULT NULL COMMENT '发送时的地理位置',
  `is_display` int(5) DEFAULT '1' COMMENT '1 对好友可见， 2 对好友不可见',
  `is_forbidden` int(5) DEFAULT '1' COMMENT '是否 禁用该动态 ，1 未禁用 2禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_clf_dongtai_list
-- ----------------------------
INSERT INTO `ims_clf_dongtai_list` VALUES ('1', '1', '1文字描述', '1527734377', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg,images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '231', '221', '1', '1');
INSERT INTO `ims_clf_dongtai_list` VALUES ('2', '1', '2文字描述', '1527739942', '', '', '', '1', '1');
INSERT INTO `ims_clf_dongtai_list` VALUES ('3', '1', '3文字描述', '1527755902', '', '', '', '2', '1');
INSERT INTO `ims_clf_dongtai_list` VALUES ('4', '3', '文字描述', '1528791233', 'usrl1,url2,url3', '', '', '1', '1');

-- ----------------------------
-- Table structure for ims_clf_dongtai_pinglun
-- ----------------------------
DROP TABLE IF EXISTS `ims_clf_dongtai_pinglun`;
CREATE TABLE `ims_clf_dongtai_pinglun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '动态评论表',
  `userid` int(11) NOT NULL COMMENT '评论人ID',
  `dongtaiid` int(11) NOT NULL COMMENT '动态ID',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `create_time` varchar(255) DEFAULT NULL COMMENT '评论时间ID',
  `parent_pinglun_id` int(11) DEFAULT NULL COMMENT '回复的动态评论ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_clf_dongtai_pinglun
-- ----------------------------
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('1', '1', '2', 'cc这是我的0级动态', '12', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('2', '2', '2', 'pp这是的0级动态', '123', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('3', '1', '2', '我是CC我回复pp的0级评论', '123', '2');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('4', '2', '2', '我是PP我回复cc的1级评论 你好吗', '123', '3');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('6', '1', '2', '我是CC我回复pp的2级逻辑 我还好', '1243', '4');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('7', '3', '3', '这是geek发的评论', '1528700926', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('8', '3', '3', '娃哈哈  成功啦', '1528701006', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('9', '3', '3', '娃哈哈  成功啦', '1528701057', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('10', '3', '3', '再来一个', '1528701193', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('11', '3', '2', '我擦嘞', '1528701707', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('12', '3', '1', '这是品论', '1528792369', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('13', '1', '1', '评论内容', '1528792594', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('14', '1', '1', '评论内容', '1528792897', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('15', '1', '2', '评论内容', '1528792915', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('16', '1', '3', '评论内容', '1528792928', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('17', '1', '3', '评论内容', '1528793595', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('18', '3', '1', '评论插入', '1528793779', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('19', '1', '1', '评论内容', '1528794440', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('20', '1', '1', '评论内容', '1528794630', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('21', '3', '1', '测试回复', '1528794855', '13');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('22', '1', '1', '评论内容', '1528795150', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('23', '3', '1', '再来一次', '1528795670', '13');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('24', '3', '1', '测试时间', '1528798176', '13');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('25', '1', '1', '评论内容', '1528798198', '0');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('26', '3', '1', '再来一次', '1528798389', '13');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('27', '3', '1', '测试评论咯咯咯', '1528856062', '13');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('28', '3', '1', '测试回复咯咯咯', '1528856176', '27');
INSERT INTO `ims_clf_dongtai_pinglun` VALUES ('29', '3', '1', '哈哈', '1528857816', '0');

-- ----------------------------
-- Table structure for ims_clf_dongtai_pinglun_dianzan
-- ----------------------------
DROP TABLE IF EXISTS `ims_clf_dongtai_pinglun_dianzan`;
CREATE TABLE `ims_clf_dongtai_pinglun_dianzan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论点赞接口',
  `pinglunid` int(11) NOT NULL,
  `create_time` varchar(90) NOT NULL,
  `userid` int(11) NOT NULL COMMENT '点赞人ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_clf_dongtai_pinglun_dianzan
-- ----------------------------
INSERT INTO `ims_clf_dongtai_pinglun_dianzan` VALUES ('1', '1', '1528099354', '1');
INSERT INTO `ims_clf_dongtai_pinglun_dianzan` VALUES ('7', '9', '1528709716', '3');
INSERT INTO `ims_clf_dongtai_pinglun_dianzan` VALUES ('11', '8', '1528711381', '3');
INSERT INTO `ims_clf_dongtai_pinglun_dianzan` VALUES ('16', '10', '1528711671', '3');
INSERT INTO `ims_clf_dongtai_pinglun_dianzan` VALUES ('18', '2', '1528711788', '3');
INSERT INTO `ims_clf_dongtai_pinglun_dianzan` VALUES ('34', '1', '1528712236', '3');
INSERT INTO `ims_clf_dongtai_pinglun_dianzan` VALUES ('35', '3', '1528712306', '3');
INSERT INTO `ims_clf_dongtai_pinglun_dianzan` VALUES ('36', '4', '1528712381', '3');
INSERT INTO `ims_clf_dongtai_pinglun_dianzan` VALUES ('37', '6', '1528712389', '3');
INSERT INTO `ims_clf_dongtai_pinglun_dianzan` VALUES ('42', '7', '1528712455', '3');

-- ----------------------------
-- Table structure for ims_clf_funds
-- ----------------------------
DROP TABLE IF EXISTS `ims_clf_funds`;
CREATE TABLE `ims_clf_funds` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `money` decimal(10,2) NOT NULL COMMENT '交易金额',
  `type` int(3) NOT NULL DEFAULT '1' COMMENT '交易类型 1.打赏支出 2，打赏收入3，任务支出4，任务收入,5冻结任务金额 6任务额退回',
  `userid` int(20) NOT NULL COMMENT '主动方',
  `userid2` int(20) DEFAULT NULL COMMENT '被动方',
  `is_dj_money` int(5) DEFAULT '1' COMMENT '1 是   2不是',
  `create_time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_clf_funds
-- ----------------------------
INSERT INTO `ims_clf_funds` VALUES ('6', '21.00', '5', '1', '1', '1', '1528533480');
INSERT INTO `ims_clf_funds` VALUES ('7', '21.00', '3', '1', '2', '2', '1528533656');
INSERT INTO `ims_clf_funds` VALUES ('8', '10.05', '5', '1', '1', '1', '1528533760');
INSERT INTO `ims_clf_funds` VALUES ('9', '10.05', '6', '1', '1', '1', '1528533788');
INSERT INTO `ims_clf_funds` VALUES ('10', '10.00', '1', '2', '1', '2', '1528535386');
INSERT INTO `ims_clf_funds` VALUES ('11', '13.20', '1', '3', '1', '2', '1528704184');
INSERT INTO `ims_clf_funds` VALUES ('12', '2.00', '1', '3', '1', '2', '1528704322');
INSERT INTO `ims_clf_funds` VALUES ('13', '3.00', '1', '3', '1', '2', '1528704511');
INSERT INTO `ims_clf_funds` VALUES ('14', '2.00', '1', '3', '1', '2', '1528704669');
INSERT INTO `ims_clf_funds` VALUES ('16', '4.00', '1', '3', '1', '2', '1528705982');
INSERT INTO `ims_clf_funds` VALUES ('17', '5.00', '1', '3', '1', '2', '1528706083');
INSERT INTO `ims_clf_funds` VALUES ('18', '6.00', '1', '3', '1', '2', '1528706290');
INSERT INTO `ims_clf_funds` VALUES ('19', '7.00', '1', '3', '1', '2', '1528706329');
INSERT INTO `ims_clf_funds` VALUES ('20', '8.00', '1', '3', '1', '2', '1528708282');
INSERT INTO `ims_clf_funds` VALUES ('21', '9.00', '1', '3', '1', '2', '1528708337');
INSERT INTO `ims_clf_funds` VALUES ('22', '10.00', '1', '3', '1', '2', '1528708438');
INSERT INTO `ims_clf_funds` VALUES ('23', '11.00', '1', '3', '1', '2', '1528708493');
INSERT INTO `ims_clf_funds` VALUES ('24', '11.10', '1', '3', '1', '2', '1528708510');
INSERT INTO `ims_clf_funds` VALUES ('25', '12.00', '1', '3', '1', '2', '1528708568');
INSERT INTO `ims_clf_funds` VALUES ('26', '13.00', '1', '3', '1', '2', '1528708618');
INSERT INTO `ims_clf_funds` VALUES ('27', '14.10', '1', '3', '1', '2', '1528708633');
INSERT INTO `ims_clf_funds` VALUES ('28', '12.34', '1', '3', '1', '2', '1528708647');
INSERT INTO `ims_clf_funds` VALUES ('29', '0.09', '1', '3', '1', '2', '1528711166');
INSERT INTO `ims_clf_funds` VALUES ('30', '21.00', '5', '3', '3', '1', '1528791046');
INSERT INTO `ims_clf_funds` VALUES ('33', '5.00', '1', '3', '1', '2', '1528793438');
INSERT INTO `ims_clf_funds` VALUES ('34', '6.00', '1', '3', '1', '2', '1528857806');

-- ----------------------------
-- Table structure for ims_clf_guanzhu
-- ----------------------------
DROP TABLE IF EXISTS `ims_clf_guanzhu`;
CREATE TABLE `ims_clf_guanzhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '动态关注表',
  `userid1` int(50) DEFAULT NULL COMMENT '关注人ID',
  `userid2` int(50) DEFAULT NULL COMMENT '被关注人ID',
  `create_time` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_clf_guanzhu
-- ----------------------------
INSERT INTO `ims_clf_guanzhu` VALUES ('18', '3', '0', '1528790138');
INSERT INTO `ims_clf_guanzhu` VALUES ('19', '1', '3', '1528791765');
INSERT INTO `ims_clf_guanzhu` VALUES ('24', '3', '1', '1528857827');
INSERT INTO `ims_clf_guanzhu` VALUES ('27', '3', '3', '1528857929');

-- ----------------------------
-- Table structure for ims_clf_renwu_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_clf_renwu_order`;
CREATE TABLE `ims_clf_renwu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '抢单表(抢任务)',
  `userid1` int(11) NOT NULL COMMENT '在做用户ID',
  `userid2` int(11) NOT NULL COMMENT '发布任务用户ID',
  `renwuid` int(11) NOT NULL COMMENT '任务ID',
  `create_time` varchar(30) NOT NULL COMMENT '抢单创建时间',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '当前状态 1: 正在执行，2已经完成，待付款，3 已完成，成功付款 4.撤销该任务',
  `end_time` varchar(30) DEFAULT NULL COMMENT '任务完成时的时间',
  `apply_time` varchar(30) DEFAULT NULL COMMENT '申请收款时间',
  `revoke_text` varchar(255) DEFAULT NULL COMMENT '任务撤回的原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_clf_renwu_order
-- ----------------------------
INSERT INTO `ims_clf_renwu_order` VALUES ('33', '2', '1', '20', '1528533545', '3', '1528533587', '1528533656', null);

-- ----------------------------
-- Table structure for ims_clf_shangjin_list
-- ----------------------------
DROP TABLE IF EXISTS `ims_clf_shangjin_list`;
CREATE TABLE `ims_clf_shangjin_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '抢单表',
  `userid` int(11) NOT NULL COMMENT '抢单用户id',
  `renwuid` int(11) NOT NULL COMMENT '赏金任务ID',
  `renwu_money` decimal(10,2) NOT NULL COMMENT '赏金金额',
  `time_start` varchar(255) NOT NULL COMMENT '抢单开始时间',
  `time_end` varchar(255) NOT NULL COMMENT '单子结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_clf_shangjin_list
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_attachment`;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_attachment
-- ----------------------------
INSERT INTO `ims_core_attachment` VALUES ('1', '2', '1', '20170430182817_8sVFH.thumb.700_0.jpg', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg', '1', '1527490756', '');
INSERT INTO `ims_core_attachment` VALUES ('2', '2', '1', '999e304358a8cc1ac0cc65d6841ee8e2cf9e2eba17feb-jCrLwp_fw658.jpg', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '1', '1527490810', '');
INSERT INTO `ims_core_attachment` VALUES ('4', '2', '1', '20150404H2524_zhUQr.thumb.700_0.jpg', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '1', '1527490816', '');
INSERT INTO `ims_core_attachment` VALUES ('5', '2', '1', 'e89115ba985d92d4e74c301613c1231448c04aca6aa6-I6fIV4_fw658.jpg', 'images/2/2018/06/c1K6L3nPGGNkj0pxshN66qLQ6nlWXW.jpg', '1', '1528187476', '');
INSERT INTO `ims_core_attachment` VALUES ('6', '2', '1', '25B0034191D7ED2234FC0BA551AC4F16.jpg', 'images/2/2018/06/OWt4LG9tVtWG41HF14Wf4vCWYw14wO.jpg', '1', '1528538003', '');

-- ----------------------------
-- Table structure for ims_core_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cache`;
CREATE TABLE `ims_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cache
-- ----------------------------
INSERT INTO `ims_core_cache` VALUES ('account:ticket', 's:0:\"\";');
INSERT INTO `ims_core_cache` VALUES ('setting', 'a:7:{s:9:\"copyright\";a:29:{s:6:\"status\";i:0;s:10:\"verifycode\";i:0;s:6:\"reason\";s:0:\"\";s:8:\"sitename\";s:12:\"网站设置\";s:3:\"url\";s:20:\"http://www.baidu.com\";s:8:\"statcode\";s:0:\"\";s:10:\"footerleft\";s:18:\"后台管理系统\";s:11:\"footerright\";s:18:\"后台管理系统\";s:4:\"icon\";s:0:\"\";s:5:\"flogo\";s:0:\"\";s:14:\"background_img\";s:0:\"\";s:6:\"slides\";s:216:\"a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}\";s:6:\"notice\";s:0:\"\";s:5:\"blogo\";s:0:\"\";s:8:\"baidumap\";a:2:{s:3:\"lng\";s:0:\"\";s:3:\"lat\";s:0:\"\";}s:7:\"company\";s:12:\"公司名称\";s:14:\"companyprofile\";s:13:\"<p>asdasd</p>\";s:7:\"address\";s:6:\"asdasd\";s:6:\"person\";s:3:\"asd\";s:5:\"phone\";s:3:\"asd\";s:2:\"qq\";s:3:\"asd\";s:5:\"email\";s:3:\"asd\";s:8:\"keywords\";s:18:\"后台管理系统\";s:11:\"description\";s:12:\"系统简介\";s:12:\"showhomepage\";i:0;s:13:\"leftmenufixed\";i:0;s:13:\"mobile_status\";s:1:\"0\";s:10:\"login_type\";s:1:\"0\";s:3:\"icp\";s:10:\"3243sadasd\";}s:4:\"site\";a:5:{s:3:\"key\";s:23:\"61066249242196339426876\";s:5:\"token\";s:32:\"ae7a489acac6d260da3ae53eefbef1d9\";s:3:\"url\";s:22:\"http://weixin.118gb.cn\";s:7:\"version\";s:5:\"1.6.3\";s:15:\"profile_perfect\";s:1:\"1\";}s:7:\"cloudip\";a:2:{s:2:\"ip\";s:12:\"47.93.53.220\";s:6:\"expire\";i:1515794386;}s:10:\"module_ban\";a:0:{}s:14:\"module_upgrade\";a:0:{}s:5:\"basic\";a:1:{s:8:\"template\";s:7:\"default\";}s:10:\"thirdlogin\";a:4:{s:6:\"system\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:2:\"qq\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:6:\"wechat\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:6:\"mobile\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}}}');
INSERT INTO `ims_core_cache` VALUES ('we7:all_cloud_upgrade_module:', 'a:2:{s:6:\"expire\";i:1527505702;s:4:\"data\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('userbasefields', 'a:45:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";}');
INSERT INTO `ims_core_cache` VALUES ('usersfields', 'a:46:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";}');
INSERT INTO `ims_core_cache` VALUES ('unisetting:2', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('uniaccount:2', 'a:26:{s:4:\"acid\";s:1:\"2\";s:7:\"uniacid\";s:1:\"2\";s:5:\"token\";s:32:\"hQ4M15Q9m991C1gRnTHk4CYgki0c47iN\";s:14:\"encodingaeskey\";s:43:\"A61CJ068kK4708B0EaU50z41Cj82C0bKB36foFCF30Z\";s:5:\"level\";s:1:\"1\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:1:\"1\";s:3:\"key\";s:3:\"123\";s:6:\"secret\";s:3:\"123\";s:4:\"name\";s:6:\"ruyang\";s:9:\"appdomain\";s:0:\"\";s:11:\"encrypt_key\";s:3:\"123\";s:4:\"type\";s:1:\"4\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:0:{}s:7:\"setting\";a:0:{}s:10:\"grouplevel\";N;s:4:\"logo\";s:64:\"http://localhost/ruyang/attachment/headimg_2.jpg?time=1527503905\";s:6:\"qrcode\";s:63:\"http://localhost/ruyang/attachment/qrcode_2.jpg?time=1527503905\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=2\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}');
INSERT INTO `ims_core_cache` VALUES ('module_receive_enable', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:2:site_store_buy_4', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:2:', 'a:12:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:7:\"zh_tcwq\";a:1:{s:4:\"name\";s:7:\"zh_tcwq\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:basic', 'a:30:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"http://localhost/ruyang/addons/basic/icon.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:news', 'a:30:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:57:\"http://localhost/ruyang/addons/news/icon.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:music', 'a:30:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"http://localhost/ruyang/addons/music/icon.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:userapi', 'a:30:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:60:\"http://localhost/ruyang/addons/userapi/icon.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:recharge', 'a:30:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:61:\"http://localhost/ruyang/addons/recharge/icon.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:custom', 'a:30:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:59:\"http://localhost/ruyang/addons/custom/icon.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:images', 'a:30:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:59:\"http://localhost/ruyang/addons/images/icon.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:video', 'a:30:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"http://localhost/ruyang/addons/video/icon.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:voice', 'a:30:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"http://localhost/ruyang/addons/voice/icon.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:chats', 'a:30:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"http://localhost/ruyang/addons/chats/icon.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:wxcard', 'a:30:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:59:\"http://localhost/ruyang/addons/wxcard/icon.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:zh_tcwq', 'a:30:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:7:\"zh_tcwq\";s:4:\"type\";s:8:\"services\";s:5:\"title\";s:21:\"同城微圈小程序\";s:7:\"version\";s:3:\"8.4\";s:7:\"ability\";s:21:\"同城微圈小程序\";s:11:\"description\";s:21:\"同城微圈小程序\";s:6:\"author\";s:12:\"电商时代\";s:3:\"url\";s:19:\"http://wxxcx001.com\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:13:\"title_initial\";s:1:\"T\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:67:\"http://localhost/ruyang/addons/zh_tcwq/icon-custom.jpg?v=1527503905\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}');
INSERT INTO `ims_core_cache` VALUES ('we7:user_modules:1', 'a:12:{i:0;s:7:\"zh_tcwq\";i:1;s:6:\"wxcard\";i:2;s:5:\"chats\";i:3;s:5:\"voice\";i:4;s:5:\"video\";i:5;s:6:\"images\";i:6;s:6:\"custom\";i:7;s:8:\"recharge\";i:8;s:7:\"userapi\";i:9;s:5:\"music\";i:10;s:4:\"news\";i:11;s:5:\"basic\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module:all_uninstall', 'a:2:{s:6:\"expire\";i:1528702652;s:4:\"data\";a:4:{s:13:\"cloud_m_count\";N;s:7:\"modules\";a:2:{s:7:\"recycle\";a:0:{}s:11:\"uninstalled\";a:0:{}}s:9:\"app_count\";i:0;s:11:\"wxapp_count\";i:0;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:2:1', 'a:12:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:7:\"zh_tcwq\";a:1:{s:4:\"name\";s:7:\"zh_tcwq\";}}');
INSERT INTO `ims_core_cache` VALUES ('unisetting:1', 'a:24:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";}');
INSERT INTO `ims_core_cache` VALUES ('uniaccount:1', 'a:35:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:24:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:64:\"http://localhost/ruyang/attachment/headimg_1.jpg?time=1527504075\";s:6:\"qrcode\";s:63:\"http://localhost/ruyang/attachment/qrcode_1.jpg?time=1527504075\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:user_accounts:1', 'a:1:{i:1;a:8:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"level\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:4:\"type\";s:1:\"1\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:ypSSt', 'a:2:{s:7:\"zh_tcwq\";a:3:{s:11:\"module_name\";s:7:\"zh_tcwq\";s:7:\"uniacid\";s:1:\"2\";s:10:\"version_id\";s:1:\"1\";}s:5:\"wxapp\";s:1:\"2\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:JvET6', 'a:2:{i:0;s:0:\"\";s:5:\"wxapp\";i:2;}');
INSERT INTO `ims_core_cache` VALUES ('accesstoken:123', 'a:2:{s:5:\"token\";N;s:6:\"expire\";i:1527588604;}');
INSERT INTO `ims_core_cache` VALUES ('we7:2:site_store_buy_6', 'i:0;');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:KNz55', 'a:3:{s:7:\"zh_tcwq\";a:3:{s:11:\"module_name\";s:7:\"zh_tcwq\";s:7:\"uniacid\";s:1:\"2\";s:10:\"version_id\";s:1:\"1\";}s:5:\"wxapp\";s:1:\"2\";s:7:\"account\";i:1;}');
INSERT INTO `ims_core_cache` VALUES ('we7:1:site_store_buy_1', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:1:1', 'a:12:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:7:\"zh_tcwq\";a:1:{s:4:\"name\";s:7:\"zh_tcwq\";}}');
INSERT INTO `ims_core_cache` VALUES ('stat:todaylock:1', 'a:1:{s:6:\"expire\";i:1528795280;}');
INSERT INTO `ims_core_cache` VALUES ('system_frame', 'a:8:{s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:3:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"platform_mass_task\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:18:\"platform_mass_task\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:7:\"profile\";a:3:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:3:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:33:\"./index.php?c=profile&a=passport&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:3:\"app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:9:\"wi wi-api\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:0;s:12:\"displayorder\";i:0;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:9:\"小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:3:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";b:1;}s:12:\"wxapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:20:\"platform_manage_menu\";a:3:{s:5:\"title\";s:6:\"管理\";s:4:\"menu\";a:4:{s:11:\"module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:0;s:12:\"displayorder\";i:0;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:0;s:12:\"displayorder\";i:0;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:10:{s:10:\"wxplatform\";a:3:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=1\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"1\";s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=4\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:53:\"./index.php?c=module&a=manage-system&system_welcome=1\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"1\";s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=5\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:3:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}s:10:\"is_display\";i:0;}s:10:\"permission\";a:3:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}s:10:\"is_display\";i:0;}s:7:\"article\";a:3:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:7:\"message\";a:3:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:0;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:0;s:12:\"displayorder\";i:0;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:0;s:12:\"displayorder\";i:0;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:2:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:21:\"第三方登录配置\";s:3:\"url\";s:34:\"./index.php?c=system&a=thirdlogin&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:3:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";s:1:\"0\";s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:1:', 'a:12:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:7:\"zh_tcwq\";a:1:{s:4:\"name\";s:7:\"zh_tcwq\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7::site_store_buy_1', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules::', 'a:12:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:7:\"zh_tcwq\";a:1:{s:4:\"name\";s:7:\"zh_tcwq\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:ulV91', 'a:2:{s:7:\"zh_tcwq\";a:3:{s:11:\"module_name\";s:7:\"zh_tcwq\";s:7:\"uniacid\";s:1:\"2\";s:10:\"version_id\";s:1:\"1\";}s:5:\"wxapp\";s:1:\"2\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:sUpdD', 'a:2:{s:7:\"zh_tcwq\";a:3:{s:11:\"module_name\";s:7:\"zh_tcwq\";s:7:\"uniacid\";s:1:\"2\";s:10:\"version_id\";s:1:\"1\";}s:5:\"wxapp\";s:1:\"2\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:C5O1w', 'a:2:{s:7:\"account\";i:1;s:5:\"wxapp\";s:1:\"2\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:lastaccount:RrOh2', 'a:3:{s:7:\"zh_tcwq\";a:3:{s:11:\"module_name\";s:7:\"zh_tcwq\";s:7:\"uniacid\";s:1:\"2\";s:10:\"version_id\";s:1:\"1\";}s:5:\"wxapp\";s:1:\"2\";s:7:\"account\";i:1;}');

-- ----------------------------
-- Table structure for ims_core_cron
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron`;
CREATE TABLE `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cron
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_cron_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron_record`;
CREATE TABLE `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_cron_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_menu`;
CREATE TABLE `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_menu
-- ----------------------------
INSERT INTO `ims_core_menu` VALUES ('1', '0', '', '', '', '', '', '0', '', '0', '1', 'account', 'frame', '');
INSERT INTO `ims_core_menu` VALUES ('2', '0', '', '', '', '', '', '0', '', '0', '1', 'wxapp', 'frame', '');
INSERT INTO `ims_core_menu` VALUES ('3', '0', '', '', '', '', '', '0', '', '0', '1', 'webapp', 'frame', '');
INSERT INTO `ims_core_menu` VALUES ('4', '0', '', '', '', '', '', '0', '', '0', '0', 'mc_member', '', '');
INSERT INTO `ims_core_menu` VALUES ('5', '0', '', '', '', '', '', '0', '', '0', '0', 'wxapp_module_link_uniacid', '', '');
INSERT INTO `ims_core_menu` VALUES ('6', '0', '', '', '', '', '', '0', '', '0', '0', 'wxapp_payment', '', '');
INSERT INTO `ims_core_menu` VALUES ('7', '0', '', '', '', '', '', '0', '', '0', '0', 'wxapp_front_download', '', '');
INSERT INTO `ims_core_menu` VALUES ('8', '0', '', '', '', '', '', '0', '', '0', '0', 'platform_reply', '', '');
INSERT INTO `ims_core_menu` VALUES ('9', '0', '', '', '', '', '', '0', '', '0', '0', 'platform_menu', '', '');
INSERT INTO `ims_core_menu` VALUES ('10', '0', '', '', '', '', '', '0', '', '0', '0', 'platform_qr', '', '');
INSERT INTO `ims_core_menu` VALUES ('11', '0', '', '', '', '', '', '0', '', '0', '0', 'platform_mass_task', '', '');
INSERT INTO `ims_core_menu` VALUES ('12', '0', '', '', '', '', '', '0', '', '0', '0', 'platform_material', '', '');
INSERT INTO `ims_core_menu` VALUES ('13', '0', '', '', '', '', '', '0', '', '0', '0', 'platform_site', '', '');
INSERT INTO `ims_core_menu` VALUES ('14', '0', '', '', '', '', '', '0', '', '0', '0', 'mc_fans', '', '');
INSERT INTO `ims_core_menu` VALUES ('15', '0', '', '', '', '', '', '0', '', '0', '0', 'profile_setting', '', '');
INSERT INTO `ims_core_menu` VALUES ('16', '0', '', '', '', '', '', '0', '', '0', '0', 'profile_pay_setting', '', '');
INSERT INTO `ims_core_menu` VALUES ('17', '0', '', '', '', '', '', '0', '', '0', '0', 'profile_bind_domain', '', '');
INSERT INTO `ims_core_menu` VALUES ('18', '0', '', '', '', '', '', '0', '', '0', '0', 'system_account', '', '');
INSERT INTO `ims_core_menu` VALUES ('19', '0', '', '', '', '', '', '0', '', '0', '0', 'system_module', '', '');
INSERT INTO `ims_core_menu` VALUES ('20', '0', '', '', '', '', '', '0', '', '0', '0', 'system_template', '', '');
INSERT INTO `ims_core_menu` VALUES ('21', '0', '', '', '', '', '', '0', '', '0', '0', 'system_platform', '', '');
INSERT INTO `ims_core_menu` VALUES ('22', '0', '', '', '', '', '', '0', '', '0', '0', 'system_webapp', '', '');
INSERT INTO `ims_core_menu` VALUES ('23', '0', '', '', '', '', '', '0', '', '1', '0', 'system_module_wxapp', '', '');
INSERT INTO `ims_core_menu` VALUES ('24', '0', '', '', '', '', '', '0', '', '0', '0', 'system_my', '', '');
INSERT INTO `ims_core_menu` VALUES ('25', '0', '', '', '', '', '', '0', '', '0', '0', 'system_user', '', '');
INSERT INTO `ims_core_menu` VALUES ('26', '0', '', '', '', '', '', '0', '', '0', '0', 'system_founder_manage', '', '');
INSERT INTO `ims_core_menu` VALUES ('27', '0', '', '', '', '', '', '0', '', '0', '0', 'system_module_group', '', '');
INSERT INTO `ims_core_menu` VALUES ('28', '0', '', '', '', '', '', '0', '', '0', '0', 'system_user_group', '', '');
INSERT INTO `ims_core_menu` VALUES ('29', '0', '', '', '', '', '', '0', '', '0', '0', 'system_article_news', '', '');
INSERT INTO `ims_core_menu` VALUES ('30', '0', '', '', '', '', '', '0', '', '0', '0', 'system_article_notice', '', '');
INSERT INTO `ims_core_menu` VALUES ('31', '0', '', '', '', '', '', '0', '', '0', '0', 'system_message_notice', '', '');
INSERT INTO `ims_core_menu` VALUES ('32', '0', '', '', '', '', '', '0', '', '0', '0', 'system_utility_filecheck', '', '');
INSERT INTO `ims_core_menu` VALUES ('33', '0', '', '', '', '', '', '0', '', '0', '0', 'system_utility_optimize', '', '');
INSERT INTO `ims_core_menu` VALUES ('34', '0', '', '', '', '', '', '0', '', '0', '0', 'system_utility_database', '', '');
INSERT INTO `ims_core_menu` VALUES ('35', '0', '', '', '', '', '', '0', '', '0', '0', 'system_utility_scan', '', '');
INSERT INTO `ims_core_menu` VALUES ('36', '0', '', '', '', '', '', '0', '', '0', '0', 'system_utility_bom', '', '');
INSERT INTO `ims_core_menu` VALUES ('37', '0', '', '', '', '', '', '0', '', '0', '1', 'help', 'frame', '');
INSERT INTO `ims_core_menu` VALUES ('38', '0', '', '', '', '', '', '0', '', '0', '1', 'store', 'frame', '');
INSERT INTO `ims_core_menu` VALUES ('39', '0', '', '', '', '', '', '0', '', '1', '1', 'system', 'frame', '');
INSERT INTO `ims_core_menu` VALUES ('40', '0', '', '', '', '', '', '0', '', '0', '0', 'system_setting_ipwhitelist', '', '');
INSERT INTO `ims_core_menu` VALUES ('41', '0', '', '', '', '', '', '0', '', '0', '0', 'system_setting_sensitiveword', '', '');
INSERT INTO `ims_core_menu` VALUES ('42', '0', '', '', '', '', '', '0', '', '0', '0', 'system_setting_thirdlogin', '', '');
INSERT INTO `ims_core_menu` VALUES ('43', '0', '', '', '', '', '', '0', '', '0', '0', 'system_setting_oauth', '', '');

-- ----------------------------
-- Table structure for ims_core_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_paylog`;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_performance
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_performance`;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_performance
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_queue
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_queue`;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_queue
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_refundlog
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_refundlog`;
CREATE TABLE `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_uniontid` (`refund_uniontid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_refundlog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_resource
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_resource`;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_resource
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_sendsms_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sendsms_log`;
CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_sendsms_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sessions`;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_sessions
-- ----------------------------
INSERT INTO `ims_core_sessions` VALUES ('6433c4aa594eec091a618b5562435ef8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cx3S\";i:1528800334;}', '1528803934');
INSERT INTO `ims_core_sessions` VALUES ('93300d3893db9e450755f086ad979ac7', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q010\";i:1528800334;}', '1528803934');
INSERT INTO `ims_core_sessions` VALUES ('a6aa05334e3e59914a77423a3ac748de', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hZff\";i:1528800264;}', '1528803864');
INSERT INTO `ims_core_sessions` VALUES ('fd922209d9535a3c59410cd938867be4', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UWN5\";i:1528800258;}', '1528803858');
INSERT INTO `ims_core_sessions` VALUES ('8b85772541f40a3b44adb28ca0b50502', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k26G\";i:1528800250;}', '1528803850');
INSERT INTO `ims_core_sessions` VALUES ('0ef73284a6078cf38a79234396674f66', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x9r9\";i:1528800250;}', '1528803850');
INSERT INTO `ims_core_sessions` VALUES ('205af73cbe964d1a8acacc200b38071b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x4GZ\";i:1528800250;}', '1528803850');
INSERT INTO `ims_core_sessions` VALUES ('6ac123e43266b17f43acc7d6d2c954f0', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ribF\";i:1528800250;}', '1528803850');
INSERT INTO `ims_core_sessions` VALUES ('f55904697857556ab780e0a83877a23b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Clb8\";i:1528800234;}', '1528803834');
INSERT INTO `ims_core_sessions` VALUES ('89f1eb96610e55583f365754a98de8dc', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tBEr\";i:1528800229;}', '1528803829');
INSERT INTO `ims_core_sessions` VALUES ('3d844ec0c6dee103ddd912509894885c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j12o\";i:1528800229;}', '1528803829');
INSERT INTO `ims_core_sessions` VALUES ('049834804d3ccaeb5bdbdee56d6ecd44', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TkFQ\";i:1528800229;}', '1528803829');
INSERT INTO `ims_core_sessions` VALUES ('4a62726e0d9c12b7ab09839cfb0f317d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DrMU\";i:1528800229;}', '1528803829');
INSERT INTO `ims_core_sessions` VALUES ('b2804f8d5e5ac5441fd9945d3e82093a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RTPE\";i:1528800212;}', '1528803812');
INSERT INTO `ims_core_sessions` VALUES ('46a5a9264e700b3c1a1c0e4f8876cd86', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fuyu\";i:1528800209;}', '1528803809');
INSERT INTO `ims_core_sessions` VALUES ('2db53c420474f21ea7aace2eb62cdb93', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l899\";i:1528800205;}', '1528803805');
INSERT INTO `ims_core_sessions` VALUES ('c8ad0c27bc3d1396deed715b763e023b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dORa\";i:1528800204;}', '1528803804');
INSERT INTO `ims_core_sessions` VALUES ('f4e98b762f2cbd36146f21f5ee35dce8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P7Ed\";i:1528800204;}', '1528803804');
INSERT INTO `ims_core_sessions` VALUES ('aeb025c614f87dce20a5e1e03405b253', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SBEC\";i:1528800204;}', '1528803804');
INSERT INTO `ims_core_sessions` VALUES ('b159380953eae31aa1acdae8c8e239ae', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fT0m\";i:1528800184;}', '1528803784');
INSERT INTO `ims_core_sessions` VALUES ('a199370493db2f73d2862f03b080ecba', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B2L5\";i:1528800184;}', '1528803784');
INSERT INTO `ims_core_sessions` VALUES ('679f8b3dde7ed990ab291652abd2b0dd', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EZD1\";i:1528800184;}', '1528803784');
INSERT INTO `ims_core_sessions` VALUES ('5f856be2ea201c9567bd8f656c185dcc', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rVho\";i:1528800184;}', '1528803784');
INSERT INTO `ims_core_sessions` VALUES ('b9f3b4159e1abc4d5c125b49df9d0e9f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V667\";i:1528800179;}', '1528803779');
INSERT INTO `ims_core_sessions` VALUES ('28b65e5f66718705fd6f85cd232d3117', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SMya\";i:1528800179;}', '1528803779');
INSERT INTO `ims_core_sessions` VALUES ('95385c5590ffa4b9d9dc48021f32b6a9', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P4wT\";i:1528800179;}', '1528803779');
INSERT INTO `ims_core_sessions` VALUES ('ae3718b6a59e278f7740d62986624c87', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sz8a\";i:1528800179;}', '1528803779');
INSERT INTO `ims_core_sessions` VALUES ('74ab2287d5b912fb56db12e4c98830b0', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f82V\";i:1528800136;}', '1528803736');
INSERT INTO `ims_core_sessions` VALUES ('4d6844d0b2e73e044af73255ddd9904d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IlPn\";i:1528800132;}', '1528803732');
INSERT INTO `ims_core_sessions` VALUES ('6aee355f8f286d5930e3d7ae9bac96da', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kdct\";i:1528800128;}', '1528803728');
INSERT INTO `ims_core_sessions` VALUES ('667eb27849a65bfa48eec9063033efbc', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zTJq\";i:1528800128;}', '1528803728');
INSERT INTO `ims_core_sessions` VALUES ('2d07b09b0668d17a1ea44598887dd31c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZYXY\";i:1528800128;}', '1528803728');
INSERT INTO `ims_core_sessions` VALUES ('eb6794bd832db6ae81d0df63d65d0355', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r44F\";i:1528800128;}', '1528803728');
INSERT INTO `ims_core_sessions` VALUES ('94edd8f0a896fc2b508b2b0ea0765910', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UK7X\";i:1528800124;}', '1528803724');
INSERT INTO `ims_core_sessions` VALUES ('2dd0ca52351c526eab1c92d6e7abce59', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ee55\";i:1528800124;}', '1528803724');
INSERT INTO `ims_core_sessions` VALUES ('c75725bb3768795155cb7a85635a1620', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Umuv\";i:1528800124;}', '1528803724');
INSERT INTO `ims_core_sessions` VALUES ('09542d5450016fc004dea70f2c79a081', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e2dV\";i:1528800124;}', '1528803724');
INSERT INTO `ims_core_sessions` VALUES ('8e3a0cc8ed1f51d4f023f8983fc72671', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eZVr\";i:1528800118;}', '1528803718');
INSERT INTO `ims_core_sessions` VALUES ('9c35dba58fe79c92cfe1502020480c7f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JSZk\";i:1528800118;}', '1528803718');
INSERT INTO `ims_core_sessions` VALUES ('b459f6f6f75d5da5514f2ad664ff8636', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ALKh\";i:1528800118;}', '1528803718');
INSERT INTO `ims_core_sessions` VALUES ('2c2b1922ba3d9c8c1d63564f8c2e07bd', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v70l\";i:1528800118;}', '1528803718');
INSERT INTO `ims_core_sessions` VALUES ('71d72ac31c118d907244ea2f3c1f8133', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DGWg\";i:1528800011;}', '1528803611');
INSERT INTO `ims_core_sessions` VALUES ('ca899048b81042bff28048feadb40edd', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aj9a\";i:1528800011;}', '1528803611');
INSERT INTO `ims_core_sessions` VALUES ('6fa632d36ef3d6412bf779d202119d4b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xd70\";i:1528800011;}', '1528803611');
INSERT INTO `ims_core_sessions` VALUES ('378c6e0d1af3fdfd5683b7f9ef533f28', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ybkW\";i:1528800010;}', '1528803610');
INSERT INTO `ims_core_sessions` VALUES ('d1aba650a2a11693c9eb78c32f7bcee3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QYu8\";i:1528799992;}', '1528803592');
INSERT INTO `ims_core_sessions` VALUES ('bdf9c4501cd511f53ce1018350d2e7ef', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j0g7\";i:1528799992;}', '1528803592');
INSERT INTO `ims_core_sessions` VALUES ('db4d9f959098362fd22b286721b0a3c7', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LxbX\";i:1528799992;}', '1528803592');
INSERT INTO `ims_core_sessions` VALUES ('3c93f2cdb9e18b2634f53ec34867e72f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ch9x\";i:1528799991;}', '1528803591');
INSERT INTO `ims_core_sessions` VALUES ('3adface4e22aa7bf3f865ac53088f0c6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SJj1\";i:1528799872;}', '1528803472');
INSERT INTO `ims_core_sessions` VALUES ('cfe3c0e1cd8f2e6298238d6af234737a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mkh3\";i:1528799864;}', '1528803464');
INSERT INTO `ims_core_sessions` VALUES ('b3c34394b506b36f8466edab67efe90d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p89l\";i:1528799864;}', '1528803464');
INSERT INTO `ims_core_sessions` VALUES ('a8169ab8b309dc28fbf9dc659b4b553d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xcSe\";i:1528799864;}', '1528803464');
INSERT INTO `ims_core_sessions` VALUES ('5cb9772a17111e0c250f16abd305729d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d6cu\";i:1528799863;}', '1528803463');
INSERT INTO `ims_core_sessions` VALUES ('52587951a16bf6c5ee325cad8386e794', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s69o\";i:1528799832;}', '1528803432');
INSERT INTO `ims_core_sessions` VALUES ('314877941435a3f119eacbd0daa202bc', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EC11\";i:1528799832;}', '1528803432');
INSERT INTO `ims_core_sessions` VALUES ('8b365519ff81660467c3ceaa604823a0', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"biq6\";i:1528799832;}', '1528803432');
INSERT INTO `ims_core_sessions` VALUES ('c4ea7f51a5ebec1ee0aab6f44987b908', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D693\";i:1528799831;}', '1528803431');
INSERT INTO `ims_core_sessions` VALUES ('fbba838801f9add9c97f4968cbd3e268', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YhU6\";i:1528799815;}', '1528803415');
INSERT INTO `ims_core_sessions` VALUES ('11566ab95a77df6fce93a980ed87abd9', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ShWP\";i:1528799815;}', '1528803415');
INSERT INTO `ims_core_sessions` VALUES ('d9f794d0956cc2aeb449423ec2982e10', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wL61\";i:1528799815;}', '1528803415');
INSERT INTO `ims_core_sessions` VALUES ('0f89373794913dc9880c3abc0d2844f6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RzvA\";i:1528799815;}', '1528803415');
INSERT INTO `ims_core_sessions` VALUES ('db1e228e71606923f06120537dc4489a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IIij\";i:1528799706;}', '1528803306');
INSERT INTO `ims_core_sessions` VALUES ('cdfe7f1202c4db79429fae0d3f38bca7', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A66r\";i:1528799706;}', '1528803306');
INSERT INTO `ims_core_sessions` VALUES ('154cc1a67b65f76493cd5d6bb92a1894', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sl2o\";i:1528799705;}', '1528803305');
INSERT INTO `ims_core_sessions` VALUES ('7a26b95624aea19b754dd3272eb517f1', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Om02\";i:1528799705;}', '1528803305');
INSERT INTO `ims_core_sessions` VALUES ('14971254299b41a733e43914b7808ec0', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cL0H\";i:1528799691;}', '1528803291');
INSERT INTO `ims_core_sessions` VALUES ('f5e8ed7ed4173ed57d887b331b8f5ee8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g6ZZ\";i:1528799691;}', '1528803291');
INSERT INTO `ims_core_sessions` VALUES ('44a5f5f88d3362d71a9cb6cf9097db1b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H5nF\";i:1528799691;}', '1528803291');
INSERT INTO `ims_core_sessions` VALUES ('f037baef7c599380bd18a0f31ff915da', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CLGh\";i:1528799691;}', '1528803291');
INSERT INTO `ims_core_sessions` VALUES ('7683a664984901881ee27ced2b1b663e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b0O1\";i:1528799616;}', '1528803216');
INSERT INTO `ims_core_sessions` VALUES ('f19c12892f583d075885ac308c384a71', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iQv9\";i:1528799616;}', '1528803216');
INSERT INTO `ims_core_sessions` VALUES ('72edb3817ac48c81739c7412ba36283a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ek71\";i:1528799616;}', '1528803216');
INSERT INTO `ims_core_sessions` VALUES ('d53cc18327c3546453468d8b65ad57ab', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dPlb\";i:1528799615;}', '1528803215');
INSERT INTO `ims_core_sessions` VALUES ('ec85409a90afaca37e1eff9fbb5a0aca', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lW99\";i:1528799599;}', '1528803199');
INSERT INTO `ims_core_sessions` VALUES ('65168082bd315cc4987bc99d942d90c3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wf86\";i:1528799599;}', '1528803199');
INSERT INTO `ims_core_sessions` VALUES ('b28abf0dfea496000ae84c4426499a4c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oaLa\";i:1528799599;}', '1528803199');
INSERT INTO `ims_core_sessions` VALUES ('b371fcf6b793d82a124ec57b9f08eb86', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h6z6\";i:1528799598;}', '1528803198');
INSERT INTO `ims_core_sessions` VALUES ('1bc9b7387fd32d6c57d50c5b161b4191', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bPaF\";i:1528799591;}', '1528803191');
INSERT INTO `ims_core_sessions` VALUES ('b37df4a05244e820f1aa4dbe70f83ee3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ebgj\";i:1528799590;}', '1528803190');
INSERT INTO `ims_core_sessions` VALUES ('9ee6f47a27515f91d91af2458f5f6bfe', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dK8d\";i:1528799590;}', '1528803190');
INSERT INTO `ims_core_sessions` VALUES ('3a058f52c35732913769ac16754fc8a1', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bns3\";i:1528799590;}', '1528803190');
INSERT INTO `ims_core_sessions` VALUES ('b9734c49efbe212e9d2a0944fd0be4b8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U96C\";i:1528799586;}', '1528803186');
INSERT INTO `ims_core_sessions` VALUES ('869e37cbc05bb42e96803dace8277fa3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w0hm\";i:1528799586;}', '1528803186');
INSERT INTO `ims_core_sessions` VALUES ('563c6310f9f2533be687e35098ea0638', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M7kE\";i:1528799585;}', '1528803185');
INSERT INTO `ims_core_sessions` VALUES ('b55db9d4f4ad14ed7db70b23fd0e4080', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Pg88\";i:1528799585;}', '1528803185');
INSERT INTO `ims_core_sessions` VALUES ('b758f738fffffafc95a8c5d0dba05404', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bT1a\";i:1528799579;}', '1528803179');
INSERT INTO `ims_core_sessions` VALUES ('fefe38269c540038411bb3562efec71e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nL5r\";i:1528799579;}', '1528803179');
INSERT INTO `ims_core_sessions` VALUES ('1693ad77f93e05a4673293aae46430e1', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T166\";i:1528799579;}', '1528803179');
INSERT INTO `ims_core_sessions` VALUES ('d7cec2a3b8d305e2efc82abe64c4b406', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IdEB\";i:1528799570;}', '1528803170');
INSERT INTO `ims_core_sessions` VALUES ('17894cbd665699144b9fd26e6228a656', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u4nk\";i:1528799578;}', '1528803178');
INSERT INTO `ims_core_sessions` VALUES ('2a1c84882d683574cde3a1c018f17aa1', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xq08\";i:1528799570;}', '1528803170');
INSERT INTO `ims_core_sessions` VALUES ('5600157e908e373d8193d4d366bd2bea', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oyFi\";i:1528799570;}', '1528803170');
INSERT INTO `ims_core_sessions` VALUES ('e754faf6f887200ae5c8d4e888741a68', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AZx9\";i:1528799570;}', '1528803170');
INSERT INTO `ims_core_sessions` VALUES ('fb6228886846c4f729097b3d834f0434', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WgbT\";i:1528799518;}', '1528803118');
INSERT INTO `ims_core_sessions` VALUES ('2d7b269d65a257df834960995e4fa63f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MQlz\";i:1528799518;}', '1528803118');
INSERT INTO `ims_core_sessions` VALUES ('46be146a64fa46a119d91b2b71326689', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y8Cf\";i:1528799518;}', '1528803118');
INSERT INTO `ims_core_sessions` VALUES ('0f20dc3ae6cdd3481393d00e2771b6dc', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wGwW\";i:1528799518;}', '1528803118');
INSERT INTO `ims_core_sessions` VALUES ('0dce5bf24f415e618ddadc39a0c1016d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XERb\";i:1528799465;}', '1528803065');
INSERT INTO `ims_core_sessions` VALUES ('c98cd3dd2e305b7d5348457f6e7b80b3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i2tS\";i:1528799464;}', '1528803064');
INSERT INTO `ims_core_sessions` VALUES ('35b27d2c0f1836b1b3104cc165eb0928', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pljL\";i:1528799464;}', '1528803064');
INSERT INTO `ims_core_sessions` VALUES ('4e23715bd807b4d1cdcf4edaf9ca590c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rMDH\";i:1528799450;}', '1528803050');
INSERT INTO `ims_core_sessions` VALUES ('3ca8d8329e83b6f01fb71d4c6590dccf', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n2br\";i:1528799450;}', '1528803050');
INSERT INTO `ims_core_sessions` VALUES ('4ccd0c6782f797c028e29d12f864357e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xjA3\";i:1528799457;}', '1528803057');
INSERT INTO `ims_core_sessions` VALUES ('85d0e72e99957151fb7180fa79ab680e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wczY\";i:1528799464;}', '1528803064');
INSERT INTO `ims_core_sessions` VALUES ('6e63de63dff8354ef70fa6a817dab8d5', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xSsB\";i:1528799458;}', '1528803058');
INSERT INTO `ims_core_sessions` VALUES ('1d2976e7ced4f95358e289bee710f539', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q3H4\";i:1528799443;}', '1528803043');
INSERT INTO `ims_core_sessions` VALUES ('be1cc3544592d23b676e82db026e1175', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ENaA\";i:1528799443;}', '1528803043');
INSERT INTO `ims_core_sessions` VALUES ('8293230ff11638392349377d896f6a48', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D5DB\";i:1528799443;}', '1528803043');
INSERT INTO `ims_core_sessions` VALUES ('99891ca2637e3c8a8e7f254d9e4e4dc3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"peRf\";i:1528799159;}', '1528802759');
INSERT INTO `ims_core_sessions` VALUES ('a02c196b645272054a36306641d0b591', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ux9T\";i:1528799160;}', '1528802760');
INSERT INTO `ims_core_sessions` VALUES ('993d2421790653506a5b56f3a3424876', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sJ8R\";i:1528799160;}', '1528802760');
INSERT INTO `ims_core_sessions` VALUES ('9db24272623b466cd39405114deb9c22', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ctuh\";i:1528799160;}', '1528802760');
INSERT INTO `ims_core_sessions` VALUES ('e11e92590750bcc57fb73fb78576319c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gKn8\";i:1528799147;}', '1528802747');
INSERT INTO `ims_core_sessions` VALUES ('6955c867332bf388e7363edc512a29c1', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D3zv\";i:1528799147;}', '1528802747');
INSERT INTO `ims_core_sessions` VALUES ('4477115a197e385901704c3c3debd056', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MOkk\";i:1528799147;}', '1528802747');
INSERT INTO `ims_core_sessions` VALUES ('734765bcee8b69acbe39315c7c5b7465', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iTM7\";i:1528799146;}', '1528802746');
INSERT INTO `ims_core_sessions` VALUES ('c3ce6a35380343459b6f29bfb8a0f365', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kVVg\";i:1528799133;}', '1528802733');
INSERT INTO `ims_core_sessions` VALUES ('6d2f2014a6dcf0555f7cc38e8365e183', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RRl6\";i:1528799133;}', '1528802733');
INSERT INTO `ims_core_sessions` VALUES ('9582b957c690d3f9e162846833db620c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E9Ok\";i:1528799127;}', '1528802727');
INSERT INTO `ims_core_sessions` VALUES ('07625d9e4a956c7f33d604cd9ff000a6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s5Ck\";i:1528799127;}', '1528802727');
INSERT INTO `ims_core_sessions` VALUES ('680a8353dfd7ec00327a0770807aba6f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c22E\";i:1528799133;}', '1528802733');
INSERT INTO `ims_core_sessions` VALUES ('ec23f0f66b8c178f27e39bba2e412204', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Tk4j\";i:1528799133;}', '1528802733');
INSERT INTO `ims_core_sessions` VALUES ('8c551e285c978bcddcc475719c015ff9', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i7Z1\";i:1528799127;}', '1528802727');
INSERT INTO `ims_core_sessions` VALUES ('6d6d1c68e1a1eed2cb84a43aaa17681f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c900\";i:1528799126;}', '1528802726');
INSERT INTO `ims_core_sessions` VALUES ('17f75f98f5c6b89af4a14c8aee7a4ec3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RNY0\";i:1528799119;}', '1528802719');
INSERT INTO `ims_core_sessions` VALUES ('12ce386308c6cb636de5fa2b884a348f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MBvx\";i:1528799119;}', '1528802719');
INSERT INTO `ims_core_sessions` VALUES ('ad511f1ecfe73e0783a597834cd4da17', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R41t\";i:1528799119;}', '1528802719');
INSERT INTO `ims_core_sessions` VALUES ('92de13c0604966bd4f1cdf28edaa1b6d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"obT6\";i:1528799119;}', '1528802719');
INSERT INTO `ims_core_sessions` VALUES ('5009c2926eb7367c2d515300a0203818', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SZ5z\";i:1528799099;}', '1528802699');
INSERT INTO `ims_core_sessions` VALUES ('2f62355057c9b74f93bee35d880ba5d7', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b74L\";i:1528799099;}', '1528802699');
INSERT INTO `ims_core_sessions` VALUES ('76542053b284ac44767153e52331752e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Pw84\";i:1528799099;}', '1528802699');
INSERT INTO `ims_core_sessions` VALUES ('834619350fb5015e4a86d4199898844e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W4O5\";i:1528799098;}', '1528802698');
INSERT INTO `ims_core_sessions` VALUES ('625c0ebfc305a14f06ae74d849af1a6d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WVwA\";i:1528799086;}', '1528802686');
INSERT INTO `ims_core_sessions` VALUES ('a178322c998451a2bd1537931be4be12', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B6Ha\";i:1528799086;}', '1528802686');
INSERT INTO `ims_core_sessions` VALUES ('a3a61f56decefbbdb56db98715cd4df1', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IG3q\";i:1528799086;}', '1528802686');
INSERT INTO `ims_core_sessions` VALUES ('beef610081e133f353e9cbcf817cf1a3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OOrQ\";i:1528799086;}', '1528802686');
INSERT INTO `ims_core_sessions` VALUES ('27af5ea5fcbd652941f84c14b2bbe064', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u00Y\";i:1528799080;}', '1528802680');
INSERT INTO `ims_core_sessions` VALUES ('c8e2d052b5154489ae9fd8e0ed8faaed', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U1Co\";i:1528799080;}', '1528802680');
INSERT INTO `ims_core_sessions` VALUES ('ccd1f1d475181020e9308b01704eb1fc', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jA3A\";i:1528799080;}', '1528802680');
INSERT INTO `ims_core_sessions` VALUES ('820dd61f3b0b4660483c1b9d6c269691', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yd23\";i:1528799080;}', '1528802680');
INSERT INTO `ims_core_sessions` VALUES ('d2076a8cd7020b7ea75b113002a257fe', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SPm6\";i:1528799021;}', '1528802621');
INSERT INTO `ims_core_sessions` VALUES ('ccaa7686d20fb32aff38ea5c89ec9246', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kylz\";i:1528799021;}', '1528802621');
INSERT INTO `ims_core_sessions` VALUES ('63b224106f5f91f2227520920a060445', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d38h\";i:1528799021;}', '1528802621');
INSERT INTO `ims_core_sessions` VALUES ('e950481a25b040daa8e3d28405910fb3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Us2T\";i:1528799028;}', '1528802628');
INSERT INTO `ims_core_sessions` VALUES ('4797fa700f0d628a4ebff28da3e53bdf', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T10m\";i:1528799028;}', '1528802628');
INSERT INTO `ims_core_sessions` VALUES ('8be171e809b1ee89565318cc4a1e139b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XttM\";i:1528799029;}', '1528802629');
INSERT INTO `ims_core_sessions` VALUES ('13ae76827195c7925af10550140dee83', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J4ph\";i:1528799029;}', '1528802629');
INSERT INTO `ims_core_sessions` VALUES ('b2d7453cbcfd8080451eef17c2a964f1', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gH1L\";i:1528799039;}', '1528802639');
INSERT INTO `ims_core_sessions` VALUES ('470624eb4861b4ba5e8644389ededf4d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"grPR\";i:1528799040;}', '1528802640');
INSERT INTO `ims_core_sessions` VALUES ('5c99909dc3716600ec3f34c22460d3c3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J0eQ\";i:1528799040;}', '1528802640');
INSERT INTO `ims_core_sessions` VALUES ('086fe4f5782aad2c417780960299a035', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qFK4\";i:1528799040;}', '1528802640');
INSERT INTO `ims_core_sessions` VALUES ('8abadb7ec31901065b4e6b3d9b75f630', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s80Y\";i:1528799020;}', '1528802620');
INSERT INTO `ims_core_sessions` VALUES ('9039d7ab717104d24187ebdcd229f718', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gzzs\";i:1528799016;}', '1528802616');
INSERT INTO `ims_core_sessions` VALUES ('e59387b971a4b705b156b74fb5f76329', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qUdy\";i:1528799016;}', '1528802616');
INSERT INTO `ims_core_sessions` VALUES ('c35bfb2fe337f4962fe1947c312347c3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R9wY\";i:1528799016;}', '1528802616');
INSERT INTO `ims_core_sessions` VALUES ('0f0ce206e53388b5b5f3568880b50b72', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AGD1\";i:1528799015;}', '1528802615');
INSERT INTO `ims_core_sessions` VALUES ('5c1d034d0ca19a38645527258b8d0d82', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NTKy\";i:1528799005;}', '1528802605');
INSERT INTO `ims_core_sessions` VALUES ('3e2f60ee04e546a5893f5aca6f7ce071', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QDOr\";i:1528799005;}', '1528802605');
INSERT INTO `ims_core_sessions` VALUES ('1c2cb91dc5f074db3934746d3df915a0', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SD3S\";i:1528799005;}', '1528802605');
INSERT INTO `ims_core_sessions` VALUES ('21a5e5844b4375e42436a08117b8177c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j90o\";i:1528799005;}', '1528802605');
INSERT INTO `ims_core_sessions` VALUES ('450710f5629f979d9c9d726a157f2fad', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QrZ7\";i:1528798997;}', '1528802597');
INSERT INTO `ims_core_sessions` VALUES ('2f50aa814d5ab5b84e75178893a58d28', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FNU4\";i:1528798997;}', '1528802597');
INSERT INTO `ims_core_sessions` VALUES ('92c3d2f8f9f8f8458e97de59b4fdc896', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uVtH\";i:1528798997;}', '1528802597');
INSERT INTO `ims_core_sessions` VALUES ('b269f5ab288f086fa0fd507245017c82', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y5vX\";i:1528798996;}', '1528802596');
INSERT INTO `ims_core_sessions` VALUES ('313dce4098757427fc1e9373fe998cf2', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gGnK\";i:1528798985;}', '1528802585');
INSERT INTO `ims_core_sessions` VALUES ('2ae55fc7f9cc24544797d47ae0143c59', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bcE3\";i:1528798985;}', '1528802585');
INSERT INTO `ims_core_sessions` VALUES ('517aff7bbaa570898a4355670bafde80', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mwf4\";i:1528798985;}', '1528802585');
INSERT INTO `ims_core_sessions` VALUES ('cae8214e7ddfde7e6d07eb55b1a49d69', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aWW0\";i:1528798985;}', '1528802585');
INSERT INTO `ims_core_sessions` VALUES ('9f59e5a8b73ab74412f0ff3e93768a52', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dDqr\";i:1528798982;}', '1528802582');
INSERT INTO `ims_core_sessions` VALUES ('0d3036c1a7d463a12152ed122669b847', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IwZU\";i:1528798982;}', '1528802582');
INSERT INTO `ims_core_sessions` VALUES ('e0324bc439fc42a95ff14e7310d628b4', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EXVc\";i:1528798982;}', '1528802582');
INSERT INTO `ims_core_sessions` VALUES ('dabb17059e3b22196300bcb9d5252be7', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G96O\";i:1528798981;}', '1528802581');
INSERT INTO `ims_core_sessions` VALUES ('29ff3cea19e46db40e891277c08d8495', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A27J\";i:1528798732;}', '1528802332');
INSERT INTO `ims_core_sessions` VALUES ('dae5dc4f3aeadf80b526582cb19368f6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Zk6a\";i:1528798731;}', '1528802331');
INSERT INTO `ims_core_sessions` VALUES ('cd7fe01d26a06e012a3f01bb3d91a59a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uqNs\";i:1528798731;}', '1528802331');
INSERT INTO `ims_core_sessions` VALUES ('acc8682b3497bd3969d38677e4876405', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CwIN\";i:1528798731;}', '1528802331');
INSERT INTO `ims_core_sessions` VALUES ('2ac495139844026cde2333a227045c86', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B0fh\";i:1528798713;}', '1528802313');
INSERT INTO `ims_core_sessions` VALUES ('e0443c18916dd616227af4868b352f35', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LW3o\";i:1528798713;}', '1528802313');
INSERT INTO `ims_core_sessions` VALUES ('854ad3021523b78fc20dff19ffde3e52', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q4br\";i:1528798713;}', '1528802313');
INSERT INTO `ims_core_sessions` VALUES ('42a1b8c91865aa3832b21f98815d5166', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m81i\";i:1528798713;}', '1528802313');
INSERT INTO `ims_core_sessions` VALUES ('83280e1df3fad362898f2f5160523ff6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cyY4\";i:1528798554;}', '1528802154');
INSERT INTO `ims_core_sessions` VALUES ('de876a9e8f38bfcd806fcc6933c6996c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uFlL\";i:1528798554;}', '1528802154');
INSERT INTO `ims_core_sessions` VALUES ('8a369ea6387b4e850b90fa88cf1e3a31', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bjtd\";i:1528798513;}', '1528802113');
INSERT INTO `ims_core_sessions` VALUES ('ea18d4b888895dac2bff39692d9acb80', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vRUh\";i:1528798505;}', '1528802105');
INSERT INTO `ims_core_sessions` VALUES ('9fdecdaa9a6920d62d1368afbcb9d5a0', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l11v\";i:1528798504;}', '1528802104');
INSERT INTO `ims_core_sessions` VALUES ('d51e2e2d875d330b936bf4d95d808e2f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SoQF\";i:1528798420;}', '1528802020');
INSERT INTO `ims_core_sessions` VALUES ('0d6017463da3f86f1089ae79f011984c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ztQs\";i:1528798389;}', '1528801989');
INSERT INTO `ims_core_sessions` VALUES ('c0090f4d77e56a3333a5f6d495c60a3e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ocu0\";i:1528798380;}', '1528801980');
INSERT INTO `ims_core_sessions` VALUES ('fe4ad1abf0b909506e0dfc02d6fe516b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wNXq\";i:1528798376;}', '1528801976');
INSERT INTO `ims_core_sessions` VALUES ('45f1fc64bf323654eca34f9608cc3bce', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Grq7\";i:1528798376;}', '1528801976');
INSERT INTO `ims_core_sessions` VALUES ('1a41b61ec445bbab60bc2015bd1f995f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eKQp\";i:1528798376;}', '1528801976');
INSERT INTO `ims_core_sessions` VALUES ('4fd6a24fa9f0322b536a40d29b4b3921', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JdL3\";i:1528798375;}', '1528801975');
INSERT INTO `ims_core_sessions` VALUES ('3e19e2c82073fac988e6c691c8f9f891', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ROK3\";i:1528798371;}', '1528801971');
INSERT INTO `ims_core_sessions` VALUES ('b33cd2ba8154f3bb91854641c37c4fe8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WXxg\";i:1528798371;}', '1528801971');
INSERT INTO `ims_core_sessions` VALUES ('3e1ca4f37e9934dd3c85646860c192df', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G1bB\";i:1528798371;}', '1528801971');
INSERT INTO `ims_core_sessions` VALUES ('b15fd7b2cac0afb03a48baa77451e1f4', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Oam8\";i:1528798370;}', '1528801970');
INSERT INTO `ims_core_sessions` VALUES ('f6ea74bf9930923c1dd65647c055445c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i5c1\";i:1528798350;}', '1528801950');
INSERT INTO `ims_core_sessions` VALUES ('c3bf45a438c641d9661d684ba068eb82', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xQO1\";i:1528798350;}', '1528801950');
INSERT INTO `ims_core_sessions` VALUES ('43aabc89f45b77ba5576b2b8d6d7820d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PJgd\";i:1528798349;}', '1528801949');
INSERT INTO `ims_core_sessions` VALUES ('254dd97f0ae529def09e06f9a50b16ce', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RZho\";i:1528798349;}', '1528801949');
INSERT INTO `ims_core_sessions` VALUES ('4ecaef43d3779dad71a9639e633e11e2', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D7T2\";i:1528798343;}', '1528801943');
INSERT INTO `ims_core_sessions` VALUES ('27c622436984ad2d5f31f07ba7f1e3f6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R6Ql\";i:1528798340;}', '1528801940');
INSERT INTO `ims_core_sessions` VALUES ('aea4e22930441825de192b6d601eb9c8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HB1C\";i:1528798335;}', '1528801935');
INSERT INTO `ims_core_sessions` VALUES ('6d1e2d859980139ee1b7d528512f25ec', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W4Td\";i:1528798331;}', '1528801931');
INSERT INTO `ims_core_sessions` VALUES ('1a960d99fde8a0ce3464a2afbd8152df', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gdEi\";i:1528798331;}', '1528801931');
INSERT INTO `ims_core_sessions` VALUES ('1cda2390f3fc2c3d3c3002d299007070', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n7QF\";i:1528798331;}', '1528801931');
INSERT INTO `ims_core_sessions` VALUES ('840a71b480ee8de945979a4067454b69', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DV37\";i:1528798331;}', '1528801931');
INSERT INTO `ims_core_sessions` VALUES ('3b22200aadf3565a1874ee7eebdb2de6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j73c\";i:1528798325;}', '1528801925');
INSERT INTO `ims_core_sessions` VALUES ('949532df2d4edc7f19e02f9c8a655f83', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DYV1\";i:1528798321;}', '1528801921');
INSERT INTO `ims_core_sessions` VALUES ('b2be5ca6be3b583a98045cd3661ce92d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fOxV\";i:1528798294;}', '1528801894');
INSERT INTO `ims_core_sessions` VALUES ('c0235d4461dc1d2497f42f0b51e6e7ff', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y1D1\";i:1528798294;}', '1528801894');
INSERT INTO `ims_core_sessions` VALUES ('7d5a39da044ee995ab34493d83b51c9f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b5r3\";i:1528798294;}', '1528801894');
INSERT INTO `ims_core_sessions` VALUES ('5f40eaf899324cc71a78b6c1bd23b765', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ARSD\";i:1528798293;}', '1528801893');
INSERT INTO `ims_core_sessions` VALUES ('d8c8b6b8004ea76d5b311ad5eb10eeaa', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Eoq8\";i:1528798272;}', '1528801872');
INSERT INTO `ims_core_sessions` VALUES ('1bb58cac0aeea0a09fd72474fbb2039b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gSif\";i:1528798272;}', '1528801872');
INSERT INTO `ims_core_sessions` VALUES ('b71272820e275266d359ceb874ae2027', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PldV\";i:1528798272;}', '1528801872');
INSERT INTO `ims_core_sessions` VALUES ('d857d580be8cb272f8fc76c8af9fa78d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kz0Q\";i:1528798271;}', '1528801871');
INSERT INTO `ims_core_sessions` VALUES ('b750ec90fcd59dd738f599aeb964e9a3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wl8M\";i:1528798261;}', '1528801861');
INSERT INTO `ims_core_sessions` VALUES ('f122ba12e3e75c3c2a76eb45975930c7', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R8c8\";i:1528798261;}', '1528801861');
INSERT INTO `ims_core_sessions` VALUES ('d8451181e48b61fa3b29896b68a65dab', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z888\";i:1528798261;}', '1528801861');
INSERT INTO `ims_core_sessions` VALUES ('b99f1c6eb465d9d43681549a15fb8d88', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K286\";i:1528798182;}', '1528801782');
INSERT INTO `ims_core_sessions` VALUES ('cc9758d7931a407e0614c6ef693165b3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VX4V\";i:1528798182;}', '1528801782');
INSERT INTO `ims_core_sessions` VALUES ('7a7016964c2b8de6c17d4ac51f62a2f6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gmld\";i:1528798176;}', '1528801776');
INSERT INTO `ims_core_sessions` VALUES ('86aca302f7d0f584f99eafec5b09c208', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rBtI\";i:1528798174;}', '1528801774');
INSERT INTO `ims_core_sessions` VALUES ('7b413e673fb381b98c5f124d6f3b1294', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KTDd\";i:1528798174;}', '1528801774');
INSERT INTO `ims_core_sessions` VALUES ('c791125d514d4a467c345727aa879688', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qpFp\";i:1528798168;}', '1528801768');
INSERT INTO `ims_core_sessions` VALUES ('d847ae7f545ae25603221dafc90af6ea', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qoUA\";i:1528798166;}', '1528801766');
INSERT INTO `ims_core_sessions` VALUES ('5fde0ec99bae2e35eba7b38c2c0369fd', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jim0\";i:1528798166;}', '1528801766');
INSERT INTO `ims_core_sessions` VALUES ('5902d4261d4000771af5794b940f2428', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PlXX\";i:1528798164;}', '1528801764');
INSERT INTO `ims_core_sessions` VALUES ('4189aca971cce787966b2872df12f4a3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f4BA\";i:1528798164;}', '1528801764');
INSERT INTO `ims_core_sessions` VALUES ('95e001a76979938a729b27c1741410b5', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ugfm\";i:1528798164;}', '1528801764');
INSERT INTO `ims_core_sessions` VALUES ('83f050e1cd1c460ba6a078c0b3b3b429', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZWuW\";i:1528798164;}', '1528801764');
INSERT INTO `ims_core_sessions` VALUES ('e751fbbc5ef64a2f57fee230b8902f58', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H5WA\";i:1528798151;}', '1528801751');
INSERT INTO `ims_core_sessions` VALUES ('ca7035f0470c37a8b8ff42334b1aec11', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hTII\";i:1528798151;}', '1528801751');
INSERT INTO `ims_core_sessions` VALUES ('eecf1137abfeb21d365ae4c8cb339786', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VA5k\";i:1528798147;}', '1528801747');
INSERT INTO `ims_core_sessions` VALUES ('6fd48abde16958371a0953dd123cd3a4', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CayF\";i:1528798147;}', '1528801747');
INSERT INTO `ims_core_sessions` VALUES ('72d9e54e3b7cf216be40be7a83b271e5', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BgA8\";i:1528798147;}', '1528801747');
INSERT INTO `ims_core_sessions` VALUES ('1e5021d4dbcfbbac7b80efce7de5b186', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BAAl\";i:1528798147;}', '1528801747');
INSERT INTO `ims_core_sessions` VALUES ('73e795ae8a12381c93fb088e5103eda2', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yD2M\";i:1528798133;}', '1528801733');
INSERT INTO `ims_core_sessions` VALUES ('4223409fe006a91fcc3dbc4ac052f5c6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N2NJ\";i:1528798133;}', '1528801733');
INSERT INTO `ims_core_sessions` VALUES ('0d59c67f43383d33bb1d98fed315100d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J08h\";i:1528798108;}', '1528801708');
INSERT INTO `ims_core_sessions` VALUES ('6bdb53be4b78de0c63fba75531e8a02c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b88J\";i:1528798125;}', '1528801725');
INSERT INTO `ims_core_sessions` VALUES ('b09c2bff8141f4379753aaed2675c7f2', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EbbY\";i:1528798125;}', '1528801725');
INSERT INTO `ims_core_sessions` VALUES ('756f9caaf147ff516060b40cba6637a1', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cC9m\";i:1528798103;}', '1528801703');
INSERT INTO `ims_core_sessions` VALUES ('2ad9838814594be91dc138b9d7d94d3b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ES4I\";i:1528798107;}', '1528801707');
INSERT INTO `ims_core_sessions` VALUES ('e6b49637660ea081831d5dde8a02028e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t11G\";i:1528798096;}', '1528801696');
INSERT INTO `ims_core_sessions` VALUES ('3ba6c046ec364c9b6fbc4766f3970c75', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a16J\";i:1528798096;}', '1528801696');
INSERT INTO `ims_core_sessions` VALUES ('f52dc631580018d7e2f827d9838daf57', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k75h\";i:1528798089;}', '1528801689');
INSERT INTO `ims_core_sessions` VALUES ('17ed487c9c3e7456e5d5229924884c77', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VX1m\";i:1528798086;}', '1528801686');
INSERT INTO `ims_core_sessions` VALUES ('28741f89db35c68eda48f60937ec436a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"btWz\";i:1528798086;}', '1528801686');
INSERT INTO `ims_core_sessions` VALUES ('f8401a9bc4014f12fb05ea8cf3010ebc', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a0WU\";i:1528798086;}', '1528801686');
INSERT INTO `ims_core_sessions` VALUES ('e331b816455ff138ec5f35ad5fa0181f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SKEI\";i:1528798085;}', '1528801685');
INSERT INTO `ims_core_sessions` VALUES ('a5398bf6d52bb4cf974acce44130fc52', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RyYk\";i:1528798077;}', '1528801677');
INSERT INTO `ims_core_sessions` VALUES ('d2d87910eebfa24aa3c4773f016f889b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c555\";i:1528798077;}', '1528801677');
INSERT INTO `ims_core_sessions` VALUES ('c144fdb9e360296b78f43c101358d3c0', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rLLX\";i:1528798058;}', '1528801658');
INSERT INTO `ims_core_sessions` VALUES ('38b373003048c7587c3e063ffce385f8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rJP5\";i:1528798054;}', '1528801654');
INSERT INTO `ims_core_sessions` VALUES ('bcf7272a554944718e349b226f32fe50', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jw53\";i:1528798054;}', '1528801654');
INSERT INTO `ims_core_sessions` VALUES ('7a246a2c773adca98469e6cb9c06871c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xh27\";i:1528798053;}', '1528801653');
INSERT INTO `ims_core_sessions` VALUES ('8c3ac9adee8b35c16568628eff27b98f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iM4z\";i:1528798048;}', '1528801648');
INSERT INTO `ims_core_sessions` VALUES ('f515dc48725853ccdb066891c715b0bf', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aNQv\";i:1528798025;}', '1528801625');
INSERT INTO `ims_core_sessions` VALUES ('07406ecc90568bb18600e1ef06a79a3b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D5Pz\";i:1528798025;}', '1528801625');
INSERT INTO `ims_core_sessions` VALUES ('2902ec476e11592c8436977fe20d06d8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VxjA\";i:1528798024;}', '1528801624');
INSERT INTO `ims_core_sessions` VALUES ('1e83bec0b847a12f072c85d6612dfc54', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ta9Q\";i:1528798024;}', '1528801624');
INSERT INTO `ims_core_sessions` VALUES ('3b208eb18064c85662a98b1905a75796', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dx4y\";i:1528798008;}', '1528801608');
INSERT INTO `ims_core_sessions` VALUES ('6ffeb9a5c1c3bad5b4ce343f317e27ce', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cxub\";i:1528798008;}', '1528801608');
INSERT INTO `ims_core_sessions` VALUES ('759a20169e4445029b2e69e75a97064f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IH2E\";i:1528798007;}', '1528801607');
INSERT INTO `ims_core_sessions` VALUES ('91b1f0a5ea2078c80189131fb69baa5f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iDT8\";i:1528798007;}', '1528801607');
INSERT INTO `ims_core_sessions` VALUES ('38fe7fcd4d50e20f4e66baef342cfd69', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jP2u\";i:1528798005;}', '1528801605');
INSERT INTO `ims_core_sessions` VALUES ('5dc9a02e62c849e6f43c5196d446370a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E4y3\";i:1528798003;}', '1528801603');
INSERT INTO `ims_core_sessions` VALUES ('0f05ef02f41d04a3d08593f695d69d42', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d1IE\";i:1528798003;}', '1528801603');
INSERT INTO `ims_core_sessions` VALUES ('1c48586309f3a011ff10f885d0241b22', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I6p5\";i:1528797981;}', '1528801581');
INSERT INTO `ims_core_sessions` VALUES ('6a45da23950a7628d7ca660ef56b247f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xggA\";i:1528797981;}', '1528801581');
INSERT INTO `ims_core_sessions` VALUES ('3a4fe906318763edf0f38f5ddd20eedf', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VhE4\";i:1528797981;}', '1528801581');
INSERT INTO `ims_core_sessions` VALUES ('dcba4b70353a570a02f3c7e8e7d182c5', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pWY3\";i:1528797981;}', '1528801581');
INSERT INTO `ims_core_sessions` VALUES ('0811ccca276bebf1927494881be6952e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x3c3\";i:1528797979;}', '1528801579');
INSERT INTO `ims_core_sessions` VALUES ('0a9dc28a84cb2062df46680a90704cb2', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eE85\";i:1528797978;}', '1528801578');
INSERT INTO `ims_core_sessions` VALUES ('c6b5739d274f6842459889efaae2fb05', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DY57\";i:1528797947;}', '1528801547');
INSERT INTO `ims_core_sessions` VALUES ('1b490518203dab4d2bedaa0baef6e61e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gszr\";i:1528797947;}', '1528801547');
INSERT INTO `ims_core_sessions` VALUES ('fed54c8ecafc592f68e27971a308390b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"szNi\";i:1528797946;}', '1528801546');
INSERT INTO `ims_core_sessions` VALUES ('a5ac23b383f3c96038455b5f44d89203', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j5e9\";i:1528797946;}', '1528801546');
INSERT INTO `ims_core_sessions` VALUES ('5ac67cedaaf9cff61777edfb41ced7ce', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g051\";i:1528797929;}', '1528801529');
INSERT INTO `ims_core_sessions` VALUES ('c6c24619d8fa49c3ba412489f1f25ed6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rt2g\";i:1528797929;}', '1528801529');
INSERT INTO `ims_core_sessions` VALUES ('4fe66c99c4ddcb65653d32e84fd46506', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CtQE\";i:1528797929;}', '1528801529');
INSERT INTO `ims_core_sessions` VALUES ('193c7a9185043fd286f35b6519be100c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R1o8\";i:1528797918;}', '1528801518');
INSERT INTO `ims_core_sessions` VALUES ('85e9b1a77146fd36c08fcb0cc9ea569a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"og3Y\";i:1528797919;}', '1528801519');
INSERT INTO `ims_core_sessions` VALUES ('14a210fff947d51c7de0dd1b48e10e6a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d4Zq\";i:1528797929;}', '1528801529');
INSERT INTO `ims_core_sessions` VALUES ('94432afd121335c04fdc9b986f13ca43', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JejL\";i:1528797919;}', '1528801519');
INSERT INTO `ims_core_sessions` VALUES ('29fcac001782dd6201050caee3e40499', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S5GY\";i:1528797918;}', '1528801518');
INSERT INTO `ims_core_sessions` VALUES ('f89633961f6f8bbd144bb9eb009c4e42', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v2Ee\";i:1528797870;}', '1528801470');
INSERT INTO `ims_core_sessions` VALUES ('0e999b23943eb6a4c13707df422236e3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iP4E\";i:1528797870;}', '1528801470');
INSERT INTO `ims_core_sessions` VALUES ('c72bfd4e9f3258c19ed0ba853e3b342b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zZAt\";i:1528797869;}', '1528801469');
INSERT INTO `ims_core_sessions` VALUES ('5e8359c9ed184c0724dd503ef2dba077', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TGMf\";i:1528797869;}', '1528801469');
INSERT INTO `ims_core_sessions` VALUES ('7a1526cc878722d4ae964e945fd2a318', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cp6G\";i:1528797869;}', '1528801469');
INSERT INTO `ims_core_sessions` VALUES ('b681a26c4b260edeb7df9458eb358baa', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lB7k\";i:1528797869;}', '1528801469');
INSERT INTO `ims_core_sessions` VALUES ('f804b922af12f1965abb5d3af2dcbf2f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oj42\";i:1528797841;}', '1528801441');
INSERT INTO `ims_core_sessions` VALUES ('a0469486eca488eb607ba0cb3a8fb4e5', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HnJK\";i:1528797841;}', '1528801441');
INSERT INTO `ims_core_sessions` VALUES ('53b73f391fe045b3c1834ad9a9fc18a9', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HoDY\";i:1528797839;}', '1528801439');
INSERT INTO `ims_core_sessions` VALUES ('1c48032057418c7e24d9a39252f158bf', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k8Di\";i:1528797839;}', '1528801439');
INSERT INTO `ims_core_sessions` VALUES ('163c0b0d5f3b63c34bf12b512934187b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eqE5\";i:1528797839;}', '1528801439');
INSERT INTO `ims_core_sessions` VALUES ('bff54205f56b4036e14b5cc50533c690', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D2zi\";i:1528797839;}', '1528801439');
INSERT INTO `ims_core_sessions` VALUES ('13187286e7aa304cda7ae503b50ad678', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CBnd\";i:1528797827;}', '1528801427');
INSERT INTO `ims_core_sessions` VALUES ('ff1a9a04e1fcf11812d7097dab1467b3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZGVn\";i:1528797827;}', '1528801427');
INSERT INTO `ims_core_sessions` VALUES ('0a91b533b6b23708507e5e088622e438', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lmEa\";i:1528797827;}', '1528801427');
INSERT INTO `ims_core_sessions` VALUES ('812a445392ca69ae3199ef65bbd05329', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sgBM\";i:1528797827;}', '1528801427');
INSERT INTO `ims_core_sessions` VALUES ('250c32886bb19c2a1a52260933a932a1', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UQc1\";i:1528797800;}', '1528801400');
INSERT INTO `ims_core_sessions` VALUES ('34109659219e3898325d5d492cbc5da6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AkKG\";i:1528797800;}', '1528801400');
INSERT INTO `ims_core_sessions` VALUES ('516cc4eb0f466f9005e5d6c112130062', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z8ii\";i:1528797788;}', '1528801388');
INSERT INTO `ims_core_sessions` VALUES ('4bcf5b24fc387634e30eb5d7f6817cae', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fURh\";i:1528797788;}', '1528801388');
INSERT INTO `ims_core_sessions` VALUES ('b1db4291cf56b09fae07d1a07b4e2df0', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eYU2\";i:1528797788;}', '1528801388');
INSERT INTO `ims_core_sessions` VALUES ('e4e7281a1cc601d7c004b6b83f1c43fb', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t3j3\";i:1528797787;}', '1528801387');
INSERT INTO `ims_core_sessions` VALUES ('a9942b94b23c4403e1d0f8f83927d0fc', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jyzu\";i:1528797776;}', '1528801376');
INSERT INTO `ims_core_sessions` VALUES ('cad548af353f0a5263633f4474e4b2ea', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bkZ7\";i:1528797776;}', '1528801376');
INSERT INTO `ims_core_sessions` VALUES ('586e41e6b5a2e9c120c9253973a8d7f9', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vefM\";i:1528797767;}', '1528801367');
INSERT INTO `ims_core_sessions` VALUES ('3d565dd48c501982a52cce17846cdee6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XHW2\";i:1528797766;}', '1528801366');
INSERT INTO `ims_core_sessions` VALUES ('c81b555714643dc96ddfff484568a94e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yhg9\";i:1528797766;}', '1528801366');
INSERT INTO `ims_core_sessions` VALUES ('addcd9634713ce8727db945c2e16b72c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y14z\";i:1528797766;}', '1528801366');
INSERT INTO `ims_core_sessions` VALUES ('a22bc1ce8f8c67155f9cdbee8058dfdc', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kzyr\";i:1528797753;}', '1528801353');
INSERT INTO `ims_core_sessions` VALUES ('360fef3547a8cc7bc0d4c552cb46e673', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LESH\";i:1528797753;}', '1528801353');
INSERT INTO `ims_core_sessions` VALUES ('9d04523b93073cf2f94d8b675c51f092', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PS9K\";i:1528797753;}', '1528801353');
INSERT INTO `ims_core_sessions` VALUES ('825b5ed83724f0fe4f4629c07ae48e74', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fpvh\";i:1528797752;}', '1528801352');
INSERT INTO `ims_core_sessions` VALUES ('a40e040afec626599166d2144b144875', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CxIm\";i:1528797749;}', '1528801349');
INSERT INTO `ims_core_sessions` VALUES ('9e0161ee4a67390ba582d15ab2871789', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Eyqd\";i:1528797749;}', '1528801349');
INSERT INTO `ims_core_sessions` VALUES ('874256dd8419ed282cb06753cb2274b3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F3a5\";i:1528797749;}', '1528801349');
INSERT INTO `ims_core_sessions` VALUES ('16a41e3ab06426474854381fa8edac7f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NxMH\";i:1528797749;}', '1528801349');
INSERT INTO `ims_core_sessions` VALUES ('5756ee363d068bfbbfc96704c28564f4', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n88z\";i:1528797701;}', '1528801301');
INSERT INTO `ims_core_sessions` VALUES ('a5f3020ae996d492bb672269cfea0944', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zm4p\";i:1528797698;}', '1528801298');
INSERT INTO `ims_core_sessions` VALUES ('e604e5a4392c4c116caac76fa7e68f2f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wshh\";i:1528797688;}', '1528801288');
INSERT INTO `ims_core_sessions` VALUES ('b54afcf7753a1280028a23f3f07e830a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pVZ6\";i:1528797673;}', '1528801273');
INSERT INTO `ims_core_sessions` VALUES ('34e73c6b6d17ec6a09eb9a4cad13c836', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g6S6\";i:1528797658;}', '1528801258');
INSERT INTO `ims_core_sessions` VALUES ('f7503393948cd1fd1ef4176c2d8d688a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"evki\";i:1528797658;}', '1528801258');
INSERT INTO `ims_core_sessions` VALUES ('4258eab941429a7a6a520febc11a0c9d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WcXZ\";i:1528797559;}', '1528801159');
INSERT INTO `ims_core_sessions` VALUES ('21a140df9086f29e8b8de969f513bb32', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Vx22\";i:1528797559;}', '1528801159');
INSERT INTO `ims_core_sessions` VALUES ('f860330fd37aa53a2242142ff59d7539', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FgJM\";i:1528797559;}', '1528801159');
INSERT INTO `ims_core_sessions` VALUES ('3260d13751f1776727757991505e2b7e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QZC9\";i:1528797559;}', '1528801159');
INSERT INTO `ims_core_sessions` VALUES ('c28ff94992ecc7517cf365d2df89fb2a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Tmhx\";i:1528797472;}', '1528801072');
INSERT INTO `ims_core_sessions` VALUES ('8f5246e98ba46a21cd79835b16b8b8ba', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BOEG\";i:1528797472;}', '1528801072');
INSERT INTO `ims_core_sessions` VALUES ('84dfa713c24655e2c02bb89a66bb5fd9', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"APZd\";i:1528797472;}', '1528801072');
INSERT INTO `ims_core_sessions` VALUES ('547e4a70ee0e6b8b7292cac4998580a8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RXoX\";i:1528797471;}', '1528801071');
INSERT INTO `ims_core_sessions` VALUES ('c00cbea4a9a0ec892d1a173ed3db5b7f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"issY\";i:1528797452;}', '1528801052');
INSERT INTO `ims_core_sessions` VALUES ('870e54372eca96b5a3b0ca5f53153af4', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JlIE\";i:1528797452;}', '1528801052');
INSERT INTO `ims_core_sessions` VALUES ('e0e1a24e9dcc0bc0f8442ae25788066c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jIYD\";i:1528797452;}', '1528801052');
INSERT INTO `ims_core_sessions` VALUES ('8aaee930f6c553ee1ffa8cdcb34b1fef', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tz0S\";i:1528797452;}', '1528801052');
INSERT INTO `ims_core_sessions` VALUES ('6a7fd19d7c88da140b3ea6445de5112f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x572\";i:1528797426;}', '1528801026');
INSERT INTO `ims_core_sessions` VALUES ('575619328ff7d5c018d7fdf537584f3a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AfC6\";i:1528797426;}', '1528801026');
INSERT INTO `ims_core_sessions` VALUES ('21816215c6d6f9b87eda35bcc807e18b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rZED\";i:1528797426;}', '1528801026');
INSERT INTO `ims_core_sessions` VALUES ('a2c0c99c38b5ab0c47773a70bc354358', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"daIV\";i:1528797426;}', '1528801026');
INSERT INTO `ims_core_sessions` VALUES ('3670d5b906bf95cd11c5a2a88426a741', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZPI2\";i:1528797412;}', '1528801012');
INSERT INTO `ims_core_sessions` VALUES ('7bb8cafbb8a9cd1bc5adcff37945cd42', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ioSz\";i:1528797412;}', '1528801012');
INSERT INTO `ims_core_sessions` VALUES ('ed2d5d5e47ea660b4a6d75d00997e644', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a82l\";i:1528797412;}', '1528801012');
INSERT INTO `ims_core_sessions` VALUES ('e991a52715c8fbbac65ab78266bd6f9b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c3k4\";i:1528797412;}', '1528801012');
INSERT INTO `ims_core_sessions` VALUES ('33935b2dd90549e829eb417a4ecc1724', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CjZM\";i:1528797335;}', '1528800935');
INSERT INTO `ims_core_sessions` VALUES ('a152f49fedf7228e94e006a977281654', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AJkn\";i:1528797335;}', '1528800935');
INSERT INTO `ims_core_sessions` VALUES ('56011dbb04bdf4f2bc9da9d62777f142', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eyG9\";i:1528797335;}', '1528800935');
INSERT INTO `ims_core_sessions` VALUES ('47848fc1b3caa77634f0d2f5faeafff7', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bNGD\";i:1528797334;}', '1528800934');
INSERT INTO `ims_core_sessions` VALUES ('46dd61d630a13bb3c60faef3859ca248', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M38R\";i:1528797296;}', '1528800896');
INSERT INTO `ims_core_sessions` VALUES ('44a43468556785bbd034ac94c99b396a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PKD1\";i:1528797296;}', '1528800896');
INSERT INTO `ims_core_sessions` VALUES ('4087c23878d13446110129ae083a8611', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SGUx\";i:1528797296;}', '1528800896');
INSERT INTO `ims_core_sessions` VALUES ('a04d5a8ab2b48df2937d118d77d96daf', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y615\";i:1528797296;}', '1528800896');
INSERT INTO `ims_core_sessions` VALUES ('efbba4cf3621aa143fa797e0d8aa1549', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q195\";i:1528797257;}', '1528800857');
INSERT INTO `ims_core_sessions` VALUES ('cdf4f0ea61c4b57e0fc36f1c3510471c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mtd1\";i:1528797257;}', '1528800857');
INSERT INTO `ims_core_sessions` VALUES ('12bdbf09325ea4c3398cd94d3b75ce06', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fb5k\";i:1528797257;}', '1528800857');
INSERT INTO `ims_core_sessions` VALUES ('449082621bd5c05ea690c6ba26ff62c5', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t1FU\";i:1528799443;}', '1528803043');
INSERT INTO `ims_core_sessions` VALUES ('c7a2df063326d8650c788913cc08c2da', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zQp2\";i:1528798261;}', '1528801861');
INSERT INTO `ims_core_sessions` VALUES ('dfcbc8141d578d7318f23827c23ffeb5', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XrxM\";i:1528797257;}', '1528800857');
INSERT INTO `ims_core_sessions` VALUES ('4978dc0e311c57541b05f33c24f4c680', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nVR8\";i:1528797164;}', '1528800764');
INSERT INTO `ims_core_sessions` VALUES ('f28c3c83af68a3194a2305c85760ea35', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dhzS\";i:1528796944;}', '1528800544');
INSERT INTO `ims_core_sessions` VALUES ('d5ad6638fd7653d4ec57c4d405df4226', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ybbj\";i:1528796944;}', '1528800544');
INSERT INTO `ims_core_sessions` VALUES ('d46367b0bd0278e5a5a71887c4319830', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZZeZ\";i:1528796944;}', '1528800544');
INSERT INTO `ims_core_sessions` VALUES ('819e96cdcc7507200c93ba172e7d325d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hryl\";i:1528796943;}', '1528800543');
INSERT INTO `ims_core_sessions` VALUES ('cb3ccd2bfece57338367e43e7cbb326d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PERE\";i:1528796917;}', '1528800517');
INSERT INTO `ims_core_sessions` VALUES ('ec81a9f0171da002efb97c82890647f8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qXo4\";i:1528796917;}', '1528800517');
INSERT INTO `ims_core_sessions` VALUES ('b46e53a383722d3b442e3d98b89c63e4', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"td05\";i:1528796917;}', '1528800517');
INSERT INTO `ims_core_sessions` VALUES ('82c55a30bf626410480bf68ac9caa317', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a6mR\";i:1528796916;}', '1528800516');
INSERT INTO `ims_core_sessions` VALUES ('3c108a943b7d3e35653b97c30ca020b9', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dzcK\";i:1528796899;}', '1528800499');
INSERT INTO `ims_core_sessions` VALUES ('2505a181d775dc864f0e7e6b8a9c38d5', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F0ET\";i:1528796899;}', '1528800499');
INSERT INTO `ims_core_sessions` VALUES ('c9cc832f562ed2499d2b4108db2f6576', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sfkP\";i:1528796899;}', '1528800499');
INSERT INTO `ims_core_sessions` VALUES ('971fad72671e5e01a23a83fd199b051b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A2Th\";i:1528796898;}', '1528800498');
INSERT INTO `ims_core_sessions` VALUES ('c83ad5a77608b7eafe67fee4dba23247', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hQtb\";i:1528796885;}', '1528800485');
INSERT INTO `ims_core_sessions` VALUES ('77b69134abe436c772f709d0d9b1263a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xGuu\";i:1528796885;}', '1528800485');
INSERT INTO `ims_core_sessions` VALUES ('16283b4e75936cbb8b9b8e824a2176c8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wAWS\";i:1528796885;}', '1528800485');
INSERT INTO `ims_core_sessions` VALUES ('386e1566a7115077a8906e5b7bb73b70', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i3aE\";i:1528796885;}', '1528800485');
INSERT INTO `ims_core_sessions` VALUES ('a2865e60683cbceb7710c7e83d70bdbb', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HFy4\";i:1528796876;}', '1528800476');
INSERT INTO `ims_core_sessions` VALUES ('3151653082ffe623e8c8d7a3dc20533e', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O21g\";i:1528796876;}', '1528800476');
INSERT INTO `ims_core_sessions` VALUES ('89b734d2b6452fd4c8aaa6f8cfe4f0ab', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ju55\";i:1528796876;}', '1528800476');
INSERT INTO `ims_core_sessions` VALUES ('893b9671d680589b2e6041e19098b70d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q33w\";i:1528796876;}', '1528800476');
INSERT INTO `ims_core_sessions` VALUES ('8d1ad6f65018a9d763da3cfd95a8cc72', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"azBX\";i:1528796869;}', '1528800469');
INSERT INTO `ims_core_sessions` VALUES ('4ff3fbbe8ef6dee8d90d397d593f2658', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wpgh\";i:1528796869;}', '1528800469');
INSERT INTO `ims_core_sessions` VALUES ('97213e4f03b360ef232fb0c9c25eb1c8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Albj\";i:1528796869;}', '1528800469');
INSERT INTO `ims_core_sessions` VALUES ('27e6d2a20a1f8ee4cde7d420e5a9a543', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fHBH\";i:1528796868;}', '1528800468');
INSERT INTO `ims_core_sessions` VALUES ('29182e12b03356213231c0b26c457014', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qQ3Q\";i:1528796856;}', '1528800456');
INSERT INTO `ims_core_sessions` VALUES ('18550557a8cbc9b0d1c5ea66c21f26e4', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z6TK\";i:1528796856;}', '1528800456');
INSERT INTO `ims_core_sessions` VALUES ('ae4979bad8bcfede74cf1bc914d2c1a4', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ht5K\";i:1528796856;}', '1528800456');
INSERT INTO `ims_core_sessions` VALUES ('7a31a91346f91c3fd66077cdc5a8b22a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n0s0\";i:1528796855;}', '1528800455');
INSERT INTO `ims_core_sessions` VALUES ('8078b3915d2b0059cee92583287cf41a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xROV\";i:1528796848;}', '1528800448');
INSERT INTO `ims_core_sessions` VALUES ('299298220743e316979270f5370359b7', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ga53\";i:1528796848;}', '1528800448');
INSERT INTO `ims_core_sessions` VALUES ('12b0954723710c949f8743663b77b5da', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XUM5\";i:1528796848;}', '1528800448');
INSERT INTO `ims_core_sessions` VALUES ('f68b631649fcd1dca8732fb3273c9f45', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vcJv\";i:1528796848;}', '1528800448');
INSERT INTO `ims_core_sessions` VALUES ('52637757f0165c2b128dbbf29bb147cd', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bXLF\";i:1528796831;}', '1528800431');
INSERT INTO `ims_core_sessions` VALUES ('0a9363dfd04dc0a693ecd1475a8410d1', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jpSc\";i:1528796831;}', '1528800431');
INSERT INTO `ims_core_sessions` VALUES ('8ab2567b7daadc612007595e060aa204', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mM7p\";i:1528796831;}', '1528800431');
INSERT INTO `ims_core_sessions` VALUES ('9e011ef22b9c09713281334206551a93', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sMlW\";i:1528796830;}', '1528800430');
INSERT INTO `ims_core_sessions` VALUES ('6c443d8bb167259284080b922ffdbaad', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hG0c\";i:1528796820;}', '1528800420');
INSERT INTO `ims_core_sessions` VALUES ('dc47685cf462df8ece603626c379b2ae', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yJ3A\";i:1528796819;}', '1528800419');
INSERT INTO `ims_core_sessions` VALUES ('6531579a717818569d1a40a6e9258134', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f4wG\";i:1528796819;}', '1528800419');
INSERT INTO `ims_core_sessions` VALUES ('97fac757773b8c9cc92646fdb1225e27', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xfwb\";i:1528796819;}', '1528800419');
INSERT INTO `ims_core_sessions` VALUES ('a1bd2b932398a2ff2ecf5d0b601d9c62', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uG66\";i:1528857770;}', '1528861370');
INSERT INTO `ims_core_sessions` VALUES ('ac39ca50d0239051ac0cfdf2241549cd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uycl\";i:1528860237;}', '1528863837');
INSERT INTO `ims_core_sessions` VALUES ('447df9fc36381e584efbe84537f7519e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z526\";i:1528860236;}', '1528863836');
INSERT INTO `ims_core_sessions` VALUES ('892762522d5a784a6759f756bf3e8a8a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GK9a\";i:1528860236;}', '1528863836');
INSERT INTO `ims_core_sessions` VALUES ('99d4e980c2ac1629c84f312b82426549', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ioRZ\";i:1528860178;}', '1528863778');
INSERT INTO `ims_core_sessions` VALUES ('c5aae894a778fd42ed40c24d8b74c8d7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mSWW\";i:1528860177;}', '1528863777');
INSERT INTO `ims_core_sessions` VALUES ('bbca11a505ad8243007b6a342521b609', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E33J\";i:1528860177;}', '1528863777');
INSERT INTO `ims_core_sessions` VALUES ('fb10a9e8cccdd6bd0ef865f7f6b87f3f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CVlU\";i:1528860151;}', '1528863751');
INSERT INTO `ims_core_sessions` VALUES ('1d1796341be8f52444d0c07cd5fcb52e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ch0m\";i:1528860151;}', '1528863751');
INSERT INTO `ims_core_sessions` VALUES ('68c89bccfe0493ebc85dc25a9a902dd1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tV9T\";i:1528860151;}', '1528863751');
INSERT INTO `ims_core_sessions` VALUES ('e3afc7ae4a93033a42254331746fd9b0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PRX9\";i:1528860142;}', '1528863742');
INSERT INTO `ims_core_sessions` VALUES ('183b76bc0471db7dba544dc19462b1a7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LqC2\";i:1528860142;}', '1528863742');
INSERT INTO `ims_core_sessions` VALUES ('d55bbc13128899327b874c3071126d61', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nI23\";i:1528860115;}', '1528863715');
INSERT INTO `ims_core_sessions` VALUES ('2250d8ac7e7ffb2330fd11043a427faf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yFMj\";i:1528860141;}', '1528863741');
INSERT INTO `ims_core_sessions` VALUES ('5fbabf4e24639d1e58b3de225a6906a0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kZGj\";i:1528860115;}', '1528863715');
INSERT INTO `ims_core_sessions` VALUES ('aa26c8751942c037511242444ebca453', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XiZy\";i:1528860114;}', '1528863714');
INSERT INTO `ims_core_sessions` VALUES ('a091d9466e4f058aebfef1f03bc9587a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qEgo\";i:1528859967;}', '1528863567');
INSERT INTO `ims_core_sessions` VALUES ('e039e77c431790e878bd6af9f2db7091', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O4as\";i:1528859966;}', '1528863566');
INSERT INTO `ims_core_sessions` VALUES ('d495816a57c5a280a523083b3b3e6d23', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FHVf\";i:1528859966;}', '1528863566');
INSERT INTO `ims_core_sessions` VALUES ('6eca74385058da68b8a93731609390b6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d5Ov\";i:1528859886;}', '1528863486');
INSERT INTO `ims_core_sessions` VALUES ('8917193db8a09cdd222613ce9a8a7ada', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QRrR\";i:1528859884;}', '1528863484');
INSERT INTO `ims_core_sessions` VALUES ('4aaf378b2f9d092361bde558fa9a8021', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lDzZ\";i:1528859880;}', '1528863480');
INSERT INTO `ims_core_sessions` VALUES ('93546e5b582d925d17319223c4544022', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z4SN\";i:1528859876;}', '1528863476');
INSERT INTO `ims_core_sessions` VALUES ('258d64823038a9c8de32255326993edc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s1D3\";i:1528859876;}', '1528863476');
INSERT INTO `ims_core_sessions` VALUES ('6e98b995d18dbe6f7499c1bedc5c22ed', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z0X2\";i:1528859876;}', '1528863476');
INSERT INTO `ims_core_sessions` VALUES ('85836176376fe22737c655eb009edba8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TrFv\";i:1528859846;}', '1528863446');
INSERT INTO `ims_core_sessions` VALUES ('5b608098c6c76d3813e39bcb70161ad8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A1xn\";i:1528859844;}', '1528863444');
INSERT INTO `ims_core_sessions` VALUES ('48bf46cf3ec341c7ef00c4b29467123e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Za6E\";i:1528859809;}', '1528863409');
INSERT INTO `ims_core_sessions` VALUES ('1b397e782980054899716644b99cfd89', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f52e\";i:1528859834;}', '1528863434');
INSERT INTO `ims_core_sessions` VALUES ('0d5ceb25e349e666f241d9dec87e755a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HxtP\";i:1528859842;}', '1528863442');
INSERT INTO `ims_core_sessions` VALUES ('071ae9bfcc513fb324f479ac4ffe7a53', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PZ9i\";i:1528859809;}', '1528863409');
INSERT INTO `ims_core_sessions` VALUES ('83f133aee71ba8ed0318bbd1558e3030', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"copD\";i:1528859808;}', '1528863408');
INSERT INTO `ims_core_sessions` VALUES ('db361ba211252e491186dc7c8edf8fc6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pzAV\";i:1528859700;}', '1528863300');
INSERT INTO `ims_core_sessions` VALUES ('7056dd918ff5e227f88f3b46098b0708', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IYo6\";i:1528859697;}', '1528863297');
INSERT INTO `ims_core_sessions` VALUES ('094bf214ce29d5174bcf866a11f30806', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w9J5\";i:1528859696;}', '1528863296');
INSERT INTO `ims_core_sessions` VALUES ('da6e3c9ca42a38d3069e73447cabb6fc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QweS\";i:1528859696;}', '1528863296');
INSERT INTO `ims_core_sessions` VALUES ('26a190bc24324fa4b99d8fb22c3914f9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FybF\";i:1528859676;}', '1528863276');
INSERT INTO `ims_core_sessions` VALUES ('37eb65c37fc5804100a5c779bb009af7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K292\";i:1528859676;}', '1528863276');
INSERT INTO `ims_core_sessions` VALUES ('44442f8e0dca261a625bd802616de216', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R1l3\";i:1528859676;}', '1528863276');
INSERT INTO `ims_core_sessions` VALUES ('4a00f9154bb54ba789ada65c83294693', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P4jL\";i:1528859659;}', '1528863259');
INSERT INTO `ims_core_sessions` VALUES ('bf584c1fe00cde5f13ef66e158ee80c5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WKw6\";i:1528859637;}', '1528863237');
INSERT INTO `ims_core_sessions` VALUES ('257173aa34267ca802a0c8a64224db77', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yR1o\";i:1528859637;}', '1528863237');
INSERT INTO `ims_core_sessions` VALUES ('a814571401a6525d820ec22499d97548', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q9t0\";i:1528859637;}', '1528863237');
INSERT INTO `ims_core_sessions` VALUES ('e952cf7a825927e57348aeea6ce7c482', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dVWj\";i:1528859585;}', '1528863185');
INSERT INTO `ims_core_sessions` VALUES ('5030e3228efcf2c8cb38cbb50c7740cd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AYEZ\";i:1528859577;}', '1528863177');
INSERT INTO `ims_core_sessions` VALUES ('bbdef145a7d7331bd726513a893ef486', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DG7x\";i:1528859577;}', '1528863177');
INSERT INTO `ims_core_sessions` VALUES ('fd96ef3186dbb080b7e13a01337221b4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S7OX\";i:1528859576;}', '1528863176');
INSERT INTO `ims_core_sessions` VALUES ('c82f3610e668ebe065d0618bba4530ff', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y222\";i:1528859555;}', '1528863155');
INSERT INTO `ims_core_sessions` VALUES ('f375356b4999b00648bb39a8a8e0353d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"emRz\";i:1528859551;}', '1528863151');
INSERT INTO `ims_core_sessions` VALUES ('1e6ab84de2d726cde32e7baae26e362e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FWWm\";i:1528859550;}', '1528863150');
INSERT INTO `ims_core_sessions` VALUES ('034fdaaddf37bcb796f5559598b36ebd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZS46\";i:1528859550;}', '1528863150');
INSERT INTO `ims_core_sessions` VALUES ('1a8ddab7868618b8d515e1ff61824d5d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H5XY\";i:1528859545;}', '1528863145');
INSERT INTO `ims_core_sessions` VALUES ('03c97da1f947dd5efc0932d3c46b683a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FK9d\";i:1528859544;}', '1528863144');
INSERT INTO `ims_core_sessions` VALUES ('01b7313e121bbf398c09136f8444dfa1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A6Km\";i:1528859544;}', '1528863144');
INSERT INTO `ims_core_sessions` VALUES ('5445ff95fa0133f85f5b3688ac892e2e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bMx3\";i:1528859522;}', '1528863122');
INSERT INTO `ims_core_sessions` VALUES ('64a64b8dff7b7b49d850ec0e81443747', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fN1h\";i:1528859521;}', '1528863121');
INSERT INTO `ims_core_sessions` VALUES ('2aac23a125a903c94982988b7009696a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m7H2\";i:1528859521;}', '1528863121');
INSERT INTO `ims_core_sessions` VALUES ('7d5b4252069d61704d9bf4531af4b35c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rCeo\";i:1528859500;}', '1528863100');
INSERT INTO `ims_core_sessions` VALUES ('d25f0f7febac1b25e255473a81f81721', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZGZ1\";i:1528859500;}', '1528863100');
INSERT INTO `ims_core_sessions` VALUES ('b277ee13978f90cd2087a1606010e808', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ArXf\";i:1528859500;}', '1528863100');
INSERT INTO `ims_core_sessions` VALUES ('9af41045080ca53bb0eab9815569c2ab', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YfEe\";i:1528859382;}', '1528862982');
INSERT INTO `ims_core_sessions` VALUES ('730293c01edcb17b1f6c4428e3dba5a6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eEme\";i:1528859381;}', '1528862981');
INSERT INTO `ims_core_sessions` VALUES ('6002b6adb60ed0f4399deba4c99fda30', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rUJL\";i:1528859381;}', '1528862981');
INSERT INTO `ims_core_sessions` VALUES ('9e88b3a2bbb074d6bfe7a9c3972d889f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PsF8\";i:1528859352;}', '1528862952');
INSERT INTO `ims_core_sessions` VALUES ('61167aeb0c181687a95d48892fe91191', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SpiL\";i:1528859352;}', '1528862952');
INSERT INTO `ims_core_sessions` VALUES ('6320f822a5b1e3ac6633a44336f04457', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X3J2\";i:1528859352;}', '1528862952');
INSERT INTO `ims_core_sessions` VALUES ('401a0915112b87e8617dc559ed635acb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s5il\";i:1528859160;}', '1528862760');
INSERT INTO `ims_core_sessions` VALUES ('17b7963494e8c06993d8c1d79e46d383', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ck7a\";i:1528859159;}', '1528862759');
INSERT INTO `ims_core_sessions` VALUES ('14ae2175b724bf4e5fc315e14e169647', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K4H1\";i:1528859155;}', '1528862755');
INSERT INTO `ims_core_sessions` VALUES ('078ef36e9e41508da4721b23121229f4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fAc4\";i:1528859116;}', '1528862716');
INSERT INTO `ims_core_sessions` VALUES ('c9bb7ae1c159e74a17e3b9e4510284b6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gB7k\";i:1528859101;}', '1528862701');
INSERT INTO `ims_core_sessions` VALUES ('2643c6d79ea2d680f1de6ce4654539c9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BdhY\";i:1528859095;}', '1528862695');
INSERT INTO `ims_core_sessions` VALUES ('fd77c006ecbeb57894094b60e0ffa3f4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mjnM\";i:1528859095;}', '1528862695');
INSERT INTO `ims_core_sessions` VALUES ('0b2fc0040e251813338a9a265a1d960b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MlaB\";i:1528858087;}', '1528861687');
INSERT INTO `ims_core_sessions` VALUES ('35ccfbd72b352789a4fb190bc889b7b3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CTbH\";i:1528858087;}', '1528861687');
INSERT INTO `ims_core_sessions` VALUES ('c487e0892f1a6e513859960648769a34', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XN66\";i:1528858087;}', '1528861687');
INSERT INTO `ims_core_sessions` VALUES ('1d4e3f77f282aa3623a6a77ed1ef40c7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mcY2\";i:1528858087;}', '1528861687');
INSERT INTO `ims_core_sessions` VALUES ('6634f0f09a697dc54a11509a88fb29f3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V6Lm\";i:1528858088;}', '1528861688');
INSERT INTO `ims_core_sessions` VALUES ('5faa86dd9545c5534590577074306401', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pz3e\";i:1528859094;}', '1528862694');
INSERT INTO `ims_core_sessions` VALUES ('b39cd47eb5e6bfda379f9d8ba7a12e8c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RG44\";i:1528859030;}', '1528862630');
INSERT INTO `ims_core_sessions` VALUES ('f13d4adaf9f2bcff54b5b4d9c3547a5c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ashH\";i:1528859004;}', '1528862604');
INSERT INTO `ims_core_sessions` VALUES ('e06ac336e4fa408cc4ee5c99a6ae7be7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"npL1\";i:1528859004;}', '1528862604');
INSERT INTO `ims_core_sessions` VALUES ('1a554b75bdc8106d7ff65a1b5c30ebad', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z8C3\";i:1528859004;}', '1528862604');
INSERT INTO `ims_core_sessions` VALUES ('4f23d6881c80a1a1f6875ddccb06ea68', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e0zi\";i:1528859000;}', '1528862600');
INSERT INTO `ims_core_sessions` VALUES ('585a157ae16deed6cbba7060b9d6ab10', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J9M2\";i:1528859000;}', '1528862600');
INSERT INTO `ims_core_sessions` VALUES ('6e50f9ec2e463987d139e9e8bea76af7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bK7p\";i:1528858999;}', '1528862599');
INSERT INTO `ims_core_sessions` VALUES ('0a5d9b1d3061ab6188c211dea1e32eea', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZbtO\";i:1528858995;}', '1528862595');
INSERT INTO `ims_core_sessions` VALUES ('7e20ce82654b6b2024fb4f37c6363dd2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v2gk\";i:1528858994;}', '1528862594');
INSERT INTO `ims_core_sessions` VALUES ('f29b4a9ffdd9dfb5d374b8d4579989b2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vj6E\";i:1528858971;}', '1528862571');
INSERT INTO `ims_core_sessions` VALUES ('6f62bff8b800801d259d094b3e907ec0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O00h\";i:1528858970;}', '1528862570');
INSERT INTO `ims_core_sessions` VALUES ('3d7560a0646ddb1cfc5d8d82b46cc9d7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ky2C\";i:1528858970;}', '1528862570');
INSERT INTO `ims_core_sessions` VALUES ('91604896e12f5fdade1f71c0a2bff8ef', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YZpp\";i:1528858901;}', '1528862501');
INSERT INTO `ims_core_sessions` VALUES ('f18b41e5b19a329ba5caa47bdbe82e5d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nq9t\";i:1528858858;}', '1528862458');
INSERT INTO `ims_core_sessions` VALUES ('59e8542a1e19f580c389e0c8a6f95192', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D6ev\";i:1528858852;}', '1528862452');
INSERT INTO `ims_core_sessions` VALUES ('3d56d92748c74697ba8e4ea82dfd137c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H4fH\";i:1528858726;}', '1528862326');
INSERT INTO `ims_core_sessions` VALUES ('5dc06c2ced389f2b72d5709fcb80d6c2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bk6t\";i:1528858726;}', '1528862326');
INSERT INTO `ims_core_sessions` VALUES ('f6f68a78764bd7eaae1a3fa815c666ff', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Pp31\";i:1528858726;}', '1528862326');
INSERT INTO `ims_core_sessions` VALUES ('8758e69d5c507695e12842ac0d62af7a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MDdI\";i:1528858852;}', '1528862452');
INSERT INTO `ims_core_sessions` VALUES ('60d25f92dab47abacc794f616d0be401', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fyX2\";i:1528858851;}', '1528862451');
INSERT INTO `ims_core_sessions` VALUES ('49384eade49fa4b7a435010346130766', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y8bb\";i:1528858707;}', '1528862307');
INSERT INTO `ims_core_sessions` VALUES ('4e418251e2bd8b7c142a9a6ca596d49b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yPa7\";i:1528858707;}', '1528862307');
INSERT INTO `ims_core_sessions` VALUES ('e081c5bee98693b5c1f21102dbdc5686', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LwOW\";i:1528858707;}', '1528862307');
INSERT INTO `ims_core_sessions` VALUES ('22244e73e0585a5f86f16021b4301b9f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ppJo\";i:1528858696;}', '1528862296');
INSERT INTO `ims_core_sessions` VALUES ('9b80cf249f90f733ea01ce8e57466334', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dm5h\";i:1528858695;}', '1528862295');
INSERT INTO `ims_core_sessions` VALUES ('ebf3b44d122549412db1661912770359', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oKPh\";i:1528858695;}', '1528862295');
INSERT INTO `ims_core_sessions` VALUES ('0247f3a4f73d07078c97c6d629b73aad', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vAcl\";i:1528858571;}', '1528862171');
INSERT INTO `ims_core_sessions` VALUES ('c9feb1a0c58b5b2e17b867e476587a67', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KP3U\";i:1528858570;}', '1528862170');
INSERT INTO `ims_core_sessions` VALUES ('03e14627fc009bab16b013cae2e73948', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M8r0\";i:1528858570;}', '1528862170');
INSERT INTO `ims_core_sessions` VALUES ('9cbbc276e4591364e00d91565837c4e2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gEeI\";i:1528858567;}', '1528862167');
INSERT INTO `ims_core_sessions` VALUES ('8474dbb3a407b38a714837db2af77f9b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LydB\";i:1528858567;}', '1528862167');
INSERT INTO `ims_core_sessions` VALUES ('d471ce84cfdf80fe2a067769006c29ca', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wva9\";i:1528858524;}', '1528862124');
INSERT INTO `ims_core_sessions` VALUES ('1bc3cbf010999b3d05bf1a6853d6aee5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A1H6\";i:1528858524;}', '1528862124');
INSERT INTO `ims_core_sessions` VALUES ('0dc07d993e434a4398a43fe8eab2203b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bGRg\";i:1528858524;}', '1528862124');
INSERT INTO `ims_core_sessions` VALUES ('910d3418930cdf8ea860f3fe1afd8d50', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QVEM\";i:1528858418;}', '1528862018');
INSERT INTO `ims_core_sessions` VALUES ('f6bf56c4bb07e567b28474985dbac3ab', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P1kn\";i:1528858418;}', '1528862018');
INSERT INTO `ims_core_sessions` VALUES ('c0d391a997a6ea478426fd077642024e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u91g\";i:1528858418;}', '1528862018');
INSERT INTO `ims_core_sessions` VALUES ('590c67dca908c32876d312a22595f97b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oT5u\";i:1528858293;}', '1528861893');
INSERT INTO `ims_core_sessions` VALUES ('25f91106f45157d84cf06e92e97592ef', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J25K\";i:1528858293;}', '1528861893');
INSERT INTO `ims_core_sessions` VALUES ('008f375d8848a3432d0ccc5159f79ecf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ri39\";i:1528858282;}', '1528861882');
INSERT INTO `ims_core_sessions` VALUES ('a2ddfa16a1b6fd0bf42a896cfacffa09', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B9gb\";i:1528858282;}', '1528861882');
INSERT INTO `ims_core_sessions` VALUES ('24940d1868f392c3595d25d156cacb40', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bLqR\";i:1528858281;}', '1528861881');
INSERT INTO `ims_core_sessions` VALUES ('7e3f585a4e54b98c88fb16d7fde13350', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Po0Z\";i:1528858281;}', '1528861881');
INSERT INTO `ims_core_sessions` VALUES ('7a4983fbfaee84d86f2a5a2a645ac0d1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"liW0\";i:1528858281;}', '1528861881');
INSERT INTO `ims_core_sessions` VALUES ('7bee67bd0fffbc78a65805e07ac76120', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i22p\";i:1528858281;}', '1528861881');
INSERT INTO `ims_core_sessions` VALUES ('6b8c7232281b30b88e7d5d1cd8b8cb92', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eLGn\";i:1528858281;}', '1528861881');
INSERT INTO `ims_core_sessions` VALUES ('d92be3e6d9648580629770bb1487e781', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PEMM\";i:1528858280;}', '1528861880');
INSERT INTO `ims_core_sessions` VALUES ('6591978e550236c87645a65ddcac39cb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dDcL\";i:1528858280;}', '1528861880');
INSERT INTO `ims_core_sessions` VALUES ('8f532f60cbeb0508a5a8a4df7851aabf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I552\";i:1528858279;}', '1528861879');
INSERT INTO `ims_core_sessions` VALUES ('379d70e5f9176e71dbac97f26305433a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FP71\";i:1528858279;}', '1528861879');
INSERT INTO `ims_core_sessions` VALUES ('482cc641a037ec15924db3def924d197', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oDJd\";i:1528858278;}', '1528861878');
INSERT INTO `ims_core_sessions` VALUES ('8005340050774b0bd96f18f995138642', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B1Hj\";i:1528858278;}', '1528861878');
INSERT INTO `ims_core_sessions` VALUES ('1a884429f59222dee63189db384f2434', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tMMB\";i:1528858278;}', '1528861878');
INSERT INTO `ims_core_sessions` VALUES ('5eae8d589bdccce8048348812d093e16', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mINb\";i:1528858244;}', '1528861844');
INSERT INTO `ims_core_sessions` VALUES ('fd0850d1b46b98434d93936c9cb786c1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"blX7\";i:1528858278;}', '1528861878');
INSERT INTO `ims_core_sessions` VALUES ('c17b2747e13b5fd41c00667ea469d865', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xYzg\";i:1528858245;}', '1528861845');
INSERT INTO `ims_core_sessions` VALUES ('cc875dd7d4225854beb0f513c30764ef', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iHI4\";i:1528858244;}', '1528861844');
INSERT INTO `ims_core_sessions` VALUES ('2c6dfa7150bfaf84d90810c55fcde0c5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jl33\";i:1528858244;}', '1528861844');
INSERT INTO `ims_core_sessions` VALUES ('4dc62b5c45e731594930761baa555ec2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q2JC\";i:1528858244;}', '1528861844');
INSERT INTO `ims_core_sessions` VALUES ('5f5131ec16992a9c1ad798d92bcd8d9e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fFY8\";i:1528858244;}', '1528861844');
INSERT INTO `ims_core_sessions` VALUES ('4d00e36c7ad6a8ba427af168b9ca33c2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"trBI\";i:1528858244;}', '1528861844');
INSERT INTO `ims_core_sessions` VALUES ('53b5a1de6f687b06c5e6b7a38a1348cf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y26t\";i:1528858243;}', '1528861843');
INSERT INTO `ims_core_sessions` VALUES ('ab1b51a79b94468a80ebea7bf8458733', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c5LD\";i:1528858243;}', '1528861843');
INSERT INTO `ims_core_sessions` VALUES ('8310ca0e28f649f435dc3faa25c56f7e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sgv3\";i:1528858242;}', '1528861842');
INSERT INTO `ims_core_sessions` VALUES ('d4ba15f07a7f75310cfbd805a16350a2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j6n7\";i:1528858242;}', '1528861842');
INSERT INTO `ims_core_sessions` VALUES ('4ae2043631254e7c457c7bcd918e2468', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h1Xa\";i:1528858241;}', '1528861841');
INSERT INTO `ims_core_sessions` VALUES ('1065b368b2c62c728620c5265f44e593', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rw52\";i:1528858241;}', '1528861841');
INSERT INTO `ims_core_sessions` VALUES ('f622d6fdeda30f53e05f08eef1e3256f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hG32\";i:1528858241;}', '1528861841');
INSERT INTO `ims_core_sessions` VALUES ('cf7110cdca3061f94ac15ade19b7447c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MF55\";i:1528858241;}', '1528861841');
INSERT INTO `ims_core_sessions` VALUES ('28aa6a87b88d131e52882cb51a94996f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wl27\";i:1528858237;}', '1528861837');
INSERT INTO `ims_core_sessions` VALUES ('8b6e684e7dc02ff0bfaad0403e6d6b19', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EvZX\";i:1528858237;}', '1528861837');
INSERT INTO `ims_core_sessions` VALUES ('5d5b8be14472a43a3dd756adc4a860f8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IYd6\";i:1528858237;}', '1528861837');
INSERT INTO `ims_core_sessions` VALUES ('303a7a84a6546839b2a921ae1343bc6e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cY6y\";i:1528858237;}', '1528861837');
INSERT INTO `ims_core_sessions` VALUES ('4ca1e65f5819bccb89b270794022907a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X5gZ\";i:1528858237;}', '1528861837');
INSERT INTO `ims_core_sessions` VALUES ('f3c10e16f4478d711c1535bb991ea176', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FRRF\";i:1528858210;}', '1528861810');
INSERT INTO `ims_core_sessions` VALUES ('e65ac13303293c912a96fbe43bdf581b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sp7g\";i:1528858209;}', '1528861809');
INSERT INTO `ims_core_sessions` VALUES ('f5604bb63c3d4bfb130d959cff150c57', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zale\";i:1528858209;}', '1528861809');
INSERT INTO `ims_core_sessions` VALUES ('4d08a1b5007f3c38dfd9e7bc928c7d8d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gSZ1\";i:1528858205;}', '1528861805');
INSERT INTO `ims_core_sessions` VALUES ('229f52cf327bd572888efe3059d612d9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rOk7\";i:1528858204;}', '1528861804');
INSERT INTO `ims_core_sessions` VALUES ('14bcfa7825bff0f6f8a27fff02f8ff74', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PZmY\";i:1528858204;}', '1528861804');
INSERT INTO `ims_core_sessions` VALUES ('4e1f5d6285e6fb53c9e423b2e6f71c90', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qBt0\";i:1528858204;}', '1528861804');
INSERT INTO `ims_core_sessions` VALUES ('94202bfb6c17a0a372e0587dcb6f5871', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r66m\";i:1528858204;}', '1528861804');
INSERT INTO `ims_core_sessions` VALUES ('83dcbc783a21d215462a2202eb943932', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k80V\";i:1528858204;}', '1528861804');
INSERT INTO `ims_core_sessions` VALUES ('847164e38e5f1a4a9ea97673151e6c74', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NxMJ\";i:1528858204;}', '1528861804');
INSERT INTO `ims_core_sessions` VALUES ('74ec8c028dae990921a9c1b0a6dd3942', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dKEE\";i:1528858203;}', '1528861803');
INSERT INTO `ims_core_sessions` VALUES ('318dca04e925089d361c05497f6231e9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cs4D\";i:1528858203;}', '1528861803');
INSERT INTO `ims_core_sessions` VALUES ('4826d772e981116fdbd8f5c3d7eb0ad5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yzc5\";i:1528858203;}', '1528861803');
INSERT INTO `ims_core_sessions` VALUES ('a27f47aeb6272520e0da561190734850', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mT0C\";i:1528858202;}', '1528861802');
INSERT INTO `ims_core_sessions` VALUES ('2ae6aa0439b38b7795c8e4527e37a0d2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p4XN\";i:1528858202;}', '1528861802');
INSERT INTO `ims_core_sessions` VALUES ('1682032ed0bfbe9ba82d461ede025f7f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g7n7\";i:1528858202;}', '1528861802');
INSERT INTO `ims_core_sessions` VALUES ('9d43401447aa41591c29f7c85021745d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Lum1\";i:1528858202;}', '1528861802');
INSERT INTO `ims_core_sessions` VALUES ('e27a9d15e41b5f7fa533c0e212ba1930', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mfzv\";i:1528858202;}', '1528861802');
INSERT INTO `ims_core_sessions` VALUES ('5044f77266f4850163ec3d5571c3cd9b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mcv0\";i:1528858199;}', '1528861799');
INSERT INTO `ims_core_sessions` VALUES ('cdbf2e41e66bf6d202a965d83daee408', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PT1t\";i:1528858198;}', '1528861798');
INSERT INTO `ims_core_sessions` VALUES ('c5600fb1f413e49dd6f2195ba578584b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G8Qz\";i:1528858198;}', '1528861798');
INSERT INTO `ims_core_sessions` VALUES ('482fad94d8ff464ad265674fb97633f7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dtGF\";i:1528858198;}', '1528861798');
INSERT INTO `ims_core_sessions` VALUES ('5e8da3a894fd4586175781b8c73f68bf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ELVV\";i:1528858198;}', '1528861798');
INSERT INTO `ims_core_sessions` VALUES ('3d3fe696878867e243634e4c5242e6ba', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EM8e\";i:1528858197;}', '1528861797');
INSERT INTO `ims_core_sessions` VALUES ('ef4b36f9810dcb11ebca07a956323f9c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tNz9\";i:1528858197;}', '1528861797');
INSERT INTO `ims_core_sessions` VALUES ('a21142dba2699b9fa8484bee9a4a539e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E2dC\";i:1528858189;}', '1528861789');
INSERT INTO `ims_core_sessions` VALUES ('8f0613532e367d1e6b941395f44a4766', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HqCc\";i:1528858188;}', '1528861788');
INSERT INTO `ims_core_sessions` VALUES ('24ad78a3509a883b488282319fee7636', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zabz\";i:1528858188;}', '1528861788');
INSERT INTO `ims_core_sessions` VALUES ('67357130e419bf804877d1948c4dabed', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"utLy\";i:1528858188;}', '1528861788');
INSERT INTO `ims_core_sessions` VALUES ('69460cfebdcf603089e3a6dffecaaf80', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ggVL\";i:1528858188;}', '1528861788');
INSERT INTO `ims_core_sessions` VALUES ('8934a166452b29239fd39ab75c548d35', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aU9S\";i:1528858188;}', '1528861788');
INSERT INTO `ims_core_sessions` VALUES ('71f20784326ddade1f2f0d6bc9d1302d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B5Nb\";i:1528858188;}', '1528861788');
INSERT INTO `ims_core_sessions` VALUES ('948ba9c0079fadc916de57f0e7315745', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ik7E\";i:1528858188;}', '1528861788');
INSERT INTO `ims_core_sessions` VALUES ('846eede9093cb67ce764015d00442c43', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ls4q\";i:1528858187;}', '1528861787');
INSERT INTO `ims_core_sessions` VALUES ('532c9403a7390f7fff854d547ea85713', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sFG0\";i:1528858187;}', '1528861787');
INSERT INTO `ims_core_sessions` VALUES ('e471bf9d68c9127470f04cb86f6760e6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yJCi\";i:1528858186;}', '1528861786');
INSERT INTO `ims_core_sessions` VALUES ('e6793f7c299b097425daecb0fa8eb389', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FnE7\";i:1528858186;}', '1528861786');
INSERT INTO `ims_core_sessions` VALUES ('14e6d89f2d900c34beef0e255bc129f8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e37C\";i:1528858186;}', '1528861786');
INSERT INTO `ims_core_sessions` VALUES ('faa7f02d39e5c2a1b8861ce54d6a6c8a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dnrc\";i:1528858186;}', '1528861786');
INSERT INTO `ims_core_sessions` VALUES ('e8da8c50f5bba86003c3f58954f22459', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mFLI\";i:1528858186;}', '1528861786');
INSERT INTO `ims_core_sessions` VALUES ('57f0a29fdd181793aa0f6d0128b69aed', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P4D4\";i:1528858182;}', '1528861782');
INSERT INTO `ims_core_sessions` VALUES ('936389b85981b92ab11382e5020f2b0f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RFr1\";i:1528858182;}', '1528861782');
INSERT INTO `ims_core_sessions` VALUES ('b90c25a1a6973e03408e25bc1f870900', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dZPA\";i:1528858182;}', '1528861782');
INSERT INTO `ims_core_sessions` VALUES ('b4db2094ccca7b8039babfffcdf480fb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C9xZ\";i:1528858182;}', '1528861782');
INSERT INTO `ims_core_sessions` VALUES ('56c3cb2baa0cbb7e823b1c2605bcba6c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cth4\";i:1528858182;}', '1528861782');
INSERT INTO `ims_core_sessions` VALUES ('7e8c1a293ce4593517133191289bdde0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c75r\";i:1528858182;}', '1528861782');
INSERT INTO `ims_core_sessions` VALUES ('240de1e74acf7913cc3b78128a8b957d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yEDX\";i:1528858176;}', '1528861776');
INSERT INTO `ims_core_sessions` VALUES ('4b14ed2757d5952d5164dfb25fd12cec', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CEpl\";i:1528858176;}', '1528861776');
INSERT INTO `ims_core_sessions` VALUES ('26ac14acd855bca048cf153b11343ace', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r7T7\";i:1528858175;}', '1528861775');
INSERT INTO `ims_core_sessions` VALUES ('62c9143f7043de3107cabbb45ef923d5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lHH0\";i:1528858175;}', '1528861775');
INSERT INTO `ims_core_sessions` VALUES ('b47b8cb92ebe9547660dd3aa7dbba1f1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BSgR\";i:1528858175;}', '1528861775');
INSERT INTO `ims_core_sessions` VALUES ('7ba742e4ed5e64fcc9ebde1705ac1b45', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uAKA\";i:1528858175;}', '1528861775');
INSERT INTO `ims_core_sessions` VALUES ('be5196cd8a290502066c0aced10e7d23', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KvqD\";i:1528858175;}', '1528861775');
INSERT INTO `ims_core_sessions` VALUES ('19c2c86483dbb65ff980bd402f80aef3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OsME\";i:1528858175;}', '1528861775');
INSERT INTO `ims_core_sessions` VALUES ('0a2b9fff228d3d7bed4865c6179ab3bc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z9pA\";i:1528858174;}', '1528861774');
INSERT INTO `ims_core_sessions` VALUES ('00af4935ff16bfe9ac11b3871e340679', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gd96\";i:1528858174;}', '1528861774');
INSERT INTO `ims_core_sessions` VALUES ('e43826bce7f2867170c576b0256cd586', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ye21\";i:1528858173;}', '1528861773');
INSERT INTO `ims_core_sessions` VALUES ('4a1a6bace1eeaf1cc10eefc5e4ed5875', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QKqP\";i:1528858173;}', '1528861773');
INSERT INTO `ims_core_sessions` VALUES ('1be1a4535e65599614e07864450d0436', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JTTT\";i:1528858173;}', '1528861773');
INSERT INTO `ims_core_sessions` VALUES ('001d236187078fdc34f32c1c8b9d1881', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wwVg\";i:1528858173;}', '1528861773');
INSERT INTO `ims_core_sessions` VALUES ('6ccc3ddb55e659258614bc88e0fa68e0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PasG\";i:1528858173;}', '1528861773');
INSERT INTO `ims_core_sessions` VALUES ('c39797655cc3edfb13dbd8801a69d135', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YYcB\";i:1528858095;}', '1528861695');
INSERT INTO `ims_core_sessions` VALUES ('088eef1318e0fb553bccaa427d6f572a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MrUq\";i:1528858095;}', '1528861695');
INSERT INTO `ims_core_sessions` VALUES ('76c0bd14976adfd8c6303bbc6fcb69b4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jbTi\";i:1528858095;}', '1528861695');
INSERT INTO `ims_core_sessions` VALUES ('21621a42306d827fcd93f71e20ba0590', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K7Zf\";i:1528858095;}', '1528861695');
INSERT INTO `ims_core_sessions` VALUES ('7081dfd13644674ec4e49b776a09f9f1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M5kX\";i:1528858094;}', '1528861694');
INSERT INTO `ims_core_sessions` VALUES ('21eb1ac5c7479dbd6db35c702223c18f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XnZk\";i:1528858091;}', '1528861691');
INSERT INTO `ims_core_sessions` VALUES ('d8e1e29ed241c930991b5ff3481d96b7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XZf0\";i:1528858090;}', '1528861690');
INSERT INTO `ims_core_sessions` VALUES ('4a958b809b465a9c44fa4f5eaeae08bc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hsZY\";i:1528858090;}', '1528861690');
INSERT INTO `ims_core_sessions` VALUES ('aa83274dfa204e97b6ed185747812084', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xXCb\";i:1528858090;}', '1528861690');
INSERT INTO `ims_core_sessions` VALUES ('e1d4f3e471088201eb538b513760c2c8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q4pg\";i:1528858090;}', '1528861690');
INSERT INTO `ims_core_sessions` VALUES ('11f27f64079e890229eed83de7946961', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d6ci\";i:1528858090;}', '1528861690');
INSERT INTO `ims_core_sessions` VALUES ('72be465846bd321997bc033d4bd8b985', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ctTJ\";i:1528858089;}', '1528861689');
INSERT INTO `ims_core_sessions` VALUES ('30346185f039973d45b2a94722927ecb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eAsN\";i:1528858089;}', '1528861689');
INSERT INTO `ims_core_sessions` VALUES ('ba9d92d149aa3b5b9b4538b0026ef229', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sCXe\";i:1528858089;}', '1528861689');
INSERT INTO `ims_core_sessions` VALUES ('d14590ef9acc3a4fc1ea418ffd6bea34', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WzzX\";i:1528858088;}', '1528861688');
INSERT INTO `ims_core_sessions` VALUES ('afe5f761677c8f53fec983f15f591d56', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Zt9o\";i:1528858067;}', '1528861667');
INSERT INTO `ims_core_sessions` VALUES ('dda554a43d9559ca8a58881fd2b85afb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WIff\";i:1528858068;}', '1528861668');
INSERT INTO `ims_core_sessions` VALUES ('79cb34aed510139cad777e53b8498c2f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e6cL\";i:1528858067;}', '1528861667');
INSERT INTO `ims_core_sessions` VALUES ('585e3ec7cace4de6b14644c86f7dcfbc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O92a\";i:1528858067;}', '1528861667');
INSERT INTO `ims_core_sessions` VALUES ('871d50c034f4a21b50acc58a9af139c3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q6Nm\";i:1528858067;}', '1528861667');
INSERT INTO `ims_core_sessions` VALUES ('50dbd4966d3bac8465f9eb1d34e8093b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rssI\";i:1528858067;}', '1528861667');
INSERT INTO `ims_core_sessions` VALUES ('6f74745bfc9c92548b71c7b7bc911ac9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cY61\";i:1528858067;}', '1528861667');
INSERT INTO `ims_core_sessions` VALUES ('41679247368e65d7f0ba4b4fe2d1a15b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"asaz\";i:1528858067;}', '1528861667');
INSERT INTO `ims_core_sessions` VALUES ('1017b5a2ca4e8f3f16288619c0a54048', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eoiN\";i:1528858066;}', '1528861666');
INSERT INTO `ims_core_sessions` VALUES ('aca4ccd5b1204460bb8dfb9fa4bc41b0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h5bZ\";i:1528858066;}', '1528861666');
INSERT INTO `ims_core_sessions` VALUES ('ce41bcd2af67312b2c38f9655c02c0ef', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W4Ty\";i:1528858065;}', '1528861665');
INSERT INTO `ims_core_sessions` VALUES ('b7c62070693173c3cd8c31ad1cf2aeab', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mWX0\";i:1528858065;}', '1528861665');
INSERT INTO `ims_core_sessions` VALUES ('43db76e06c796664e24086d28b6839f6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bisf\";i:1528858065;}', '1528861665');
INSERT INTO `ims_core_sessions` VALUES ('61d7ca5ed8b3f0a9ee8cd6557b210447', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dHW0\";i:1528858065;}', '1528861665');
INSERT INTO `ims_core_sessions` VALUES ('d547499ce8dc050f4a991c76d9edc77e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uWtF\";i:1528858065;}', '1528861665');
INSERT INTO `ims_core_sessions` VALUES ('34cabe8e0ff198a3f4e60a2937e93901', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LvVo\";i:1528858027;}', '1528861627');
INSERT INTO `ims_core_sessions` VALUES ('4210a28cc2aeaf6d22173ddeddd15656', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F7mR\";i:1528858026;}', '1528861626');
INSERT INTO `ims_core_sessions` VALUES ('1a439d73f5e3e8084599f84788672e4a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H9dH\";i:1528858026;}', '1528861626');
INSERT INTO `ims_core_sessions` VALUES ('873d5432f8b6c2d40bc7f7be30e6b128', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wly9\";i:1528858026;}', '1528861626');
INSERT INTO `ims_core_sessions` VALUES ('a08019b851acf3727b1cebcdcec271c3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cfm1\";i:1528858026;}', '1528861626');
INSERT INTO `ims_core_sessions` VALUES ('55a5e64cd94d8588837551b57929364f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xXpP\";i:1528858002;}', '1528861602');
INSERT INTO `ims_core_sessions` VALUES ('112c3d6081f882a6488f604f06f5a523', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nd64\";i:1528858002;}', '1528861602');
INSERT INTO `ims_core_sessions` VALUES ('995ab2ab8a12b0d6038f850d498891e6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B6T9\";i:1528858002;}', '1528861602');
INSERT INTO `ims_core_sessions` VALUES ('b6fb7bd1842e3dbc843bfd3070dc7b7a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E88l\";i:1528858001;}', '1528861601');
INSERT INTO `ims_core_sessions` VALUES ('70c8946d3b105442a0dddaa283ece205', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IH5O\";i:1528858001;}', '1528861601');
INSERT INTO `ims_core_sessions` VALUES ('f58e916c60131f7614482ae8d3b6bada', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V6e4\";i:1528858001;}', '1528861601');
INSERT INTO `ims_core_sessions` VALUES ('038c023c2f4c59febcdcec25d1d3d65c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ap9b\";i:1528858001;}', '1528861601');
INSERT INTO `ims_core_sessions` VALUES ('f716aad2775fe6e40f593a6751179737', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dUt9\";i:1528858001;}', '1528861601');
INSERT INTO `ims_core_sessions` VALUES ('2693c18ba054fd278426efd107cb4c5d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YH6R\";i:1528858001;}', '1528861601');
INSERT INTO `ims_core_sessions` VALUES ('bc80fd25d2bdfc3045ce70b9d49459e0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p1ku\";i:1528858000;}', '1528861600');
INSERT INTO `ims_core_sessions` VALUES ('0c46cdafc5c69f4952a5c0bcce625667', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fccz\";i:1528857999;}', '1528861599');
INSERT INTO `ims_core_sessions` VALUES ('9d292fee406074fc3a524c293cf36832', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Zuz4\";i:1528857999;}', '1528861599');
INSERT INTO `ims_core_sessions` VALUES ('2cbf15e3a3d0d1983b29d2da19353f7a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N7iw\";i:1528857999;}', '1528861599');
INSERT INTO `ims_core_sessions` VALUES ('07bde1b5020999415d575c946e508197', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i0Z5\";i:1528857999;}', '1528861599');
INSERT INTO `ims_core_sessions` VALUES ('fd6c82dad7a4a56d4386049663e084fe', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oZm6\";i:1528857999;}', '1528861599');
INSERT INTO `ims_core_sessions` VALUES ('5291b2c9474f69e6747a5111d74d4c98', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GVYX\";i:1528857950;}', '1528861550');
INSERT INTO `ims_core_sessions` VALUES ('e3315a6d9ed29589d65ebe715f0abecf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mSpa\";i:1528857951;}', '1528861551');
INSERT INTO `ims_core_sessions` VALUES ('c042ed78d9b2a6bd9d9422582bc70d95', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N8tW\";i:1528857950;}', '1528861550');
INSERT INTO `ims_core_sessions` VALUES ('e910b800ac922fbc62939a13f858e3a6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H24I\";i:1528857950;}', '1528861550');
INSERT INTO `ims_core_sessions` VALUES ('d062da9a8268a5d3bce6a6281115beef', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kkwt\";i:1528857950;}', '1528861550');
INSERT INTO `ims_core_sessions` VALUES ('f0a35bf9e41c715dc263c915a51dfb65', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yXuG\";i:1528857935;}', '1528861535');
INSERT INTO `ims_core_sessions` VALUES ('39f9280f3e05c81f850aee203dd17b1e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M4im\";i:1528857937;}', '1528861537');
INSERT INTO `ims_core_sessions` VALUES ('cd9d8dc0be195bc36a7ac9f2058e30bb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GK42\";i:1528857927;}', '1528861527');
INSERT INTO `ims_core_sessions` VALUES ('a44ace7cbca9f8ec5fd83ec93ea40c8d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mzL1\";i:1528857929;}', '1528861529');
INSERT INTO `ims_core_sessions` VALUES ('ab879085c3cd7936984a6e4cdab81852', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BhUt\";i:1528857925;}', '1528861525');
INSERT INTO `ims_core_sessions` VALUES ('b84307bbb4c01dbf6246b0e01e00e1e8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wFCR\";i:1528857923;}', '1528861523');
INSERT INTO `ims_core_sessions` VALUES ('39547a139cbef69b89a94d22e4661551', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hkoW\";i:1528857919;}', '1528861519');
INSERT INTO `ims_core_sessions` VALUES ('291e593e7809888714b4d6d3f4c4cbe0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pmo3\";i:1528857917;}', '1528861517');
INSERT INTO `ims_core_sessions` VALUES ('4d86b496947d1fa476bbedff4728dff9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nLlm\";i:1528857916;}', '1528861516');
INSERT INTO `ims_core_sessions` VALUES ('fa879ddd7fec4664d8e3d8827a897601', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ueau\";i:1528857915;}', '1528861515');
INSERT INTO `ims_core_sessions` VALUES ('920d06ded0aee3b2b85a633ae72446cf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x4x6\";i:1528857915;}', '1528861515');
INSERT INTO `ims_core_sessions` VALUES ('e774bc0703e076d17ed2069b4483c12e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wd6E\";i:1528857915;}', '1528861515');
INSERT INTO `ims_core_sessions` VALUES ('c0e8b8704fa74ca585fc413acf39f036', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kDq3\";i:1528857915;}', '1528861515');
INSERT INTO `ims_core_sessions` VALUES ('d07b4d079f704159de276469f3572dd6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VVg4\";i:1528857915;}', '1528861515');
INSERT INTO `ims_core_sessions` VALUES ('95a2651ce3f1fd3877f9151168e62c4a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a77h\";i:1528857915;}', '1528861515');
INSERT INTO `ims_core_sessions` VALUES ('a4be7ed6de322fbe392abb4c4c2dd6d8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t9mw\";i:1528857914;}', '1528861514');
INSERT INTO `ims_core_sessions` VALUES ('3bce63a6ba90f642bcec0a0e3551039d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wLVO\";i:1528857914;}', '1528861514');
INSERT INTO `ims_core_sessions` VALUES ('d8ef60664d6b5538e49113717cf398e2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l6m6\";i:1528857914;}', '1528861514');
INSERT INTO `ims_core_sessions` VALUES ('75a13f5a10dee93aaa55f4f91f6834c6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NEvt\";i:1528857913;}', '1528861513');
INSERT INTO `ims_core_sessions` VALUES ('fe9ba4e5146ee159191526ae7e6f2a5b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p8Xd\";i:1528857913;}', '1528861513');
INSERT INTO `ims_core_sessions` VALUES ('80095f3ac48a8e4e43952cb3d0e5429d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u8So\";i:1528857913;}', '1528861513');
INSERT INTO `ims_core_sessions` VALUES ('2b48a4fe1100047d1a641fe4fa94468a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KIKP\";i:1528857913;}', '1528861513');
INSERT INTO `ims_core_sessions` VALUES ('1854f0b38958197e9274412c12eda8d4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xpRB\";i:1528857913;}', '1528861513');
INSERT INTO `ims_core_sessions` VALUES ('8dad5928f7b143de58400f22f43bf700', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DuKY\";i:1528857898;}', '1528861498');
INSERT INTO `ims_core_sessions` VALUES ('253731f1701493cbd02478145753fe07', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lL2L\";i:1528857897;}', '1528861497');
INSERT INTO `ims_core_sessions` VALUES ('474e997f8cc99d8b3650dab6505f2a4e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JBOZ\";i:1528857897;}', '1528861497');
INSERT INTO `ims_core_sessions` VALUES ('487f5f471b29af9a894e191994a039dd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H0W0\";i:1528857897;}', '1528861497');
INSERT INTO `ims_core_sessions` VALUES ('36cc1af7dd906b51289126e9824a2afd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LDcO\";i:1528857897;}', '1528861497');
INSERT INTO `ims_core_sessions` VALUES ('0a24d2c3ff353d3acfd7679c33dfd70f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dr36\";i:1528857897;}', '1528861497');
INSERT INTO `ims_core_sessions` VALUES ('c5de8ce9a5b88f4823d2dbfd431f60fe', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HQ9M\";i:1528857897;}', '1528861497');
INSERT INTO `ims_core_sessions` VALUES ('8bfa69624e50b3626d16eab7f748e243', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x102\";i:1528857896;}', '1528861496');
INSERT INTO `ims_core_sessions` VALUES ('a6282de08f9aa95b6d7879052260df91', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SpCq\";i:1528857896;}', '1528861496');
INSERT INTO `ims_core_sessions` VALUES ('45ed0c7a62e35d866c33f847c1775a54', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w2Ag\";i:1528857896;}', '1528861496');
INSERT INTO `ims_core_sessions` VALUES ('ed85a6c9f7884996a7aa23e0d869b909', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b888\";i:1528857895;}', '1528861495');
INSERT INTO `ims_core_sessions` VALUES ('254737dafed3a0a8168a77820a41462f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QqxZ\";i:1528857895;}', '1528861495');
INSERT INTO `ims_core_sessions` VALUES ('2b8d5789743e4254b66daf409548b081', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p3CQ\";i:1528857895;}', '1528861495');
INSERT INTO `ims_core_sessions` VALUES ('874bdc608a4971358060ac099cc01805', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X0VV\";i:1528857895;}', '1528861495');
INSERT INTO `ims_core_sessions` VALUES ('f32d7bdd6039b6c9affd25fd39fbd9b9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"adbG\";i:1528857895;}', '1528861495');
INSERT INTO `ims_core_sessions` VALUES ('0778517d12aab5d6474761e1aea76b40', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qc36\";i:1528857891;}', '1528861491');
INSERT INTO `ims_core_sessions` VALUES ('5e7079b26f6cd6fffa20796e1ab941c4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Eb9P\";i:1528857891;}', '1528861491');
INSERT INTO `ims_core_sessions` VALUES ('9ebad85dd10ca11cb1ef1ce1d63c137a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NhHV\";i:1528857891;}', '1528861491');
INSERT INTO `ims_core_sessions` VALUES ('cfdd5a02eafbc7144f3351018864171b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z47n\";i:1528857891;}', '1528861491');
INSERT INTO `ims_core_sessions` VALUES ('6521df876ae9b66580f5e4b0e7f07d5a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b885\";i:1528857891;}', '1528861491');
INSERT INTO `ims_core_sessions` VALUES ('be5a18c3d5218886d17cdd3c50a8716d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gAFf\";i:1528857890;}', '1528861490');
INSERT INTO `ims_core_sessions` VALUES ('b3308998a370b185920b35559c0cdc38', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eRan\";i:1528857890;}', '1528861490');
INSERT INTO `ims_core_sessions` VALUES ('e8e021cf5484af9df089beb071a01459', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l66W\";i:1528857889;}', '1528861489');
INSERT INTO `ims_core_sessions` VALUES ('c0db829dd6d5da6fd2a7514baa0a773a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vVr9\";i:1528857889;}', '1528861489');
INSERT INTO `ims_core_sessions` VALUES ('7933403c477417eb4694d2c025f9b920', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I6t4\";i:1528857889;}', '1528861489');
INSERT INTO `ims_core_sessions` VALUES ('edb41602dbabca2892a1fd45041e0cba', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gx9B\";i:1528857889;}', '1528861489');
INSERT INTO `ims_core_sessions` VALUES ('97a0919f953faa3c3d6fb7a723f61f95', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZvmA\";i:1528857889;}', '1528861489');
INSERT INTO `ims_core_sessions` VALUES ('f485709082854a294f6befe053d1eb3e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j7qo\";i:1528857878;}', '1528861478');
INSERT INTO `ims_core_sessions` VALUES ('f4970a7d38969e6eb3c1e7ddfd157493', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a9Kk\";i:1528857851;}', '1528861451');
INSERT INTO `ims_core_sessions` VALUES ('774443124d7bcb1a4b341cd445fa714c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FacR\";i:1528857851;}', '1528861451');
INSERT INTO `ims_core_sessions` VALUES ('f0ca4183f16ab3c44de8f932980446a1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YD8b\";i:1528857850;}', '1528861450');
INSERT INTO `ims_core_sessions` VALUES ('ee1e41045fe1812e2f85498893975193', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eb4s\";i:1528857850;}', '1528861450');
INSERT INTO `ims_core_sessions` VALUES ('7c99a808ce401892b245a5367730e027', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ywsd\";i:1528857850;}', '1528861450');
INSERT INTO `ims_core_sessions` VALUES ('adb87162015babc0813cb5083b35286d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FzDH\";i:1528857850;}', '1528861450');
INSERT INTO `ims_core_sessions` VALUES ('738509effe21788e8751bafb3f35e8cc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B18W\";i:1528857850;}', '1528861450');
INSERT INTO `ims_core_sessions` VALUES ('088cfbbbf39219a37ce847a07b366e19', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zY26\";i:1528857850;}', '1528861450');
INSERT INTO `ims_core_sessions` VALUES ('23cf8f9d81f9032ceb8d3a324d0fa4c5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HoG7\";i:1528857849;}', '1528861449');
INSERT INTO `ims_core_sessions` VALUES ('c3fef391ebba20fbe4b8a3c6f65db1af', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XV4u\";i:1528857849;}', '1528861449');
INSERT INTO `ims_core_sessions` VALUES ('bdc13c7b5fca8bd705db2901a41f7237', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aXGo\";i:1528857848;}', '1528861448');
INSERT INTO `ims_core_sessions` VALUES ('5a8bc545eff8efe60283641ad5f27085', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zzRR\";i:1528857848;}', '1528861448');
INSERT INTO `ims_core_sessions` VALUES ('f737d7ba7fa9a9f9882a679254eef5e1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ewYe\";i:1528857848;}', '1528861448');
INSERT INTO `ims_core_sessions` VALUES ('8182eb60ddecb1e0b9564e61fecb2f3d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WqmB\";i:1528857848;}', '1528861448');
INSERT INTO `ims_core_sessions` VALUES ('3aaf1efe5d51592cc7edec18ef47e429', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"seLK\";i:1528857848;}', '1528861448');
INSERT INTO `ims_core_sessions` VALUES ('f5a6cde8fe4143010e3b5b60addd6a0e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JVVF\";i:1528857826;}', '1528861426');
INSERT INTO `ims_core_sessions` VALUES ('50d21979ed052d471f78f2df5f9caf14', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wnpq\";i:1528857823;}', '1528861423');
INSERT INTO `ims_core_sessions` VALUES ('9444974155e4c0b9d716896875d7fd68', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KO9D\";i:1528857816;}', '1528861416');
INSERT INTO `ims_core_sessions` VALUES ('7bf7b329cf552b64be0f5412015f9e7a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t9m3\";i:1528857806;}', '1528861406');
INSERT INTO `ims_core_sessions` VALUES ('114b34cebbaf57e6a28d7ba0e2ca84c5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z90w\";i:1528857790;}', '1528861390');
INSERT INTO `ims_core_sessions` VALUES ('f748084a0a24242d74f16decc0c4fad1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qGFV\";i:1528857788;}', '1528861388');
INSERT INTO `ims_core_sessions` VALUES ('a4060e172e5b6686ad71453d0eeee71d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RNn3\";i:1528857785;}', '1528861385');
INSERT INTO `ims_core_sessions` VALUES ('b8dbc2bdecd76317c82c4cb7d4edc808', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XJrM\";i:1528857783;}', '1528861383');
INSERT INTO `ims_core_sessions` VALUES ('178b9cf2cae9f33386ccbfcb680af9e5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S9O2\";i:1528857778;}', '1528861378');
INSERT INTO `ims_core_sessions` VALUES ('99ca9718919c59fea57b4e5eed700a31', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Lm8X\";i:1528857778;}', '1528861378');
INSERT INTO `ims_core_sessions` VALUES ('bbdc8aa70f631b641ad0fd0c6c90b864', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qj99\";i:1528857777;}', '1528861377');
INSERT INTO `ims_core_sessions` VALUES ('585d0608f848baf6a11892b2d4175316', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nqyl\";i:1528857777;}', '1528861377');
INSERT INTO `ims_core_sessions` VALUES ('63fc4d8619fe41c346c093fedeb90767', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aR2O\";i:1528857777;}', '1528861377');
INSERT INTO `ims_core_sessions` VALUES ('09f65c598c621d464fdd8cf57943422b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XmAE\";i:1528857777;}', '1528861377');
INSERT INTO `ims_core_sessions` VALUES ('41561ff993d87761f26bef25a4e2bac0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Su48\";i:1528857777;}', '1528861377');
INSERT INTO `ims_core_sessions` VALUES ('ad54747b49e899afff2ead376908ec06', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KCqy\";i:1528857777;}', '1528861377');
INSERT INTO `ims_core_sessions` VALUES ('992a82c5e43604c0fd50502f3bfba37d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sOpy\";i:1528857776;}', '1528861376');
INSERT INTO `ims_core_sessions` VALUES ('1ded64c7b8b59a437aff709ab32e8085', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QeEv\";i:1528857776;}', '1528861376');
INSERT INTO `ims_core_sessions` VALUES ('75b45a1ef7e213efdfd00d34bcfd8b69', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uB13\";i:1528857776;}', '1528861376');
INSERT INTO `ims_core_sessions` VALUES ('7f1e422333538c5f836e4fb398dc66c3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Eftd\";i:1528857776;}', '1528861376');
INSERT INTO `ims_core_sessions` VALUES ('c3528a902b3045a0a1a2383214534c27', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZroN\";i:1528857776;}', '1528861376');
INSERT INTO `ims_core_sessions` VALUES ('bd4d1249dbbe8e377feb1b42ac43c7b1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CKzN\";i:1528857775;}', '1528861375');
INSERT INTO `ims_core_sessions` VALUES ('fafd8d079b0ae4571ff44e30deccd20b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O0XZ\";i:1528857775;}', '1528861375');
INSERT INTO `ims_core_sessions` VALUES ('2fbcdf9c75f684684498a31a88d8d442', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MTLz\";i:1528857772;}', '1528861372');
INSERT INTO `ims_core_sessions` VALUES ('496392f313516ea88681d262b437cb81', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hiJ1\";i:1528857772;}', '1528861372');
INSERT INTO `ims_core_sessions` VALUES ('a89bbb8f674366b2fcbc82ab0d0d1d90', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CZ24\";i:1528857772;}', '1528861372');
INSERT INTO `ims_core_sessions` VALUES ('479c89aeba5dc0fedac5205743405b07', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kcaz\";i:1528857772;}', '1528861372');
INSERT INTO `ims_core_sessions` VALUES ('f8af4923bfc54c62656b4a22d23f6399', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QFP5\";i:1528857772;}', '1528861372');
INSERT INTO `ims_core_sessions` VALUES ('46e61dd17fbbf11789e4f4b4aefba685', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ToDg\";i:1528857772;}', '1528861372');
INSERT INTO `ims_core_sessions` VALUES ('0507391b1c29467240fa8b50c518c666', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t6xd\";i:1528857771;}', '1528861371');
INSERT INTO `ims_core_sessions` VALUES ('033e3f28c12c06124765be322250b471', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s8x2\";i:1528857771;}', '1528861371');
INSERT INTO `ims_core_sessions` VALUES ('fd7cd4a21c77a0ddb61b52829b4d34c6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WzUF\";i:1528857771;}', '1528861371');
INSERT INTO `ims_core_sessions` VALUES ('f83b9a0abc92ea08c5b7d2ce0370da38', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ei2p\";i:1528857770;}', '1528861370');
INSERT INTO `ims_core_sessions` VALUES ('ae57c567771e737d012fe212b01f8f21', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GMb6\";i:1528857770;}', '1528861370');
INSERT INTO `ims_core_sessions` VALUES ('5dea8c4361eba607a334b46c90e5a175', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RzwY\";i:1528857770;}', '1528861370');
INSERT INTO `ims_core_sessions` VALUES ('3bd020a1957d1a49c2cdae60b8357865', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jwt9\";i:1528857770;}', '1528861370');
INSERT INTO `ims_core_sessions` VALUES ('4398571c11529904057b9f8fbe2b90c6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q0OA\";i:1528857767;}', '1528861367');
INSERT INTO `ims_core_sessions` VALUES ('6240f4e105cefbbafff82571bc5aee84', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hka7\";i:1528857766;}', '1528861366');
INSERT INTO `ims_core_sessions` VALUES ('351da04070b7bc9938edbd64a7c34eb2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gn1b\";i:1528857766;}', '1528861366');
INSERT INTO `ims_core_sessions` VALUES ('363352f50eebc79d05c4e3ce902b6701', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AI6z\";i:1528857766;}', '1528861366');
INSERT INTO `ims_core_sessions` VALUES ('d4a0af0136f6a03e51036855fb279312', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ikBZ\";i:1528857766;}', '1528861366');
INSERT INTO `ims_core_sessions` VALUES ('35b1c22341b524e1cdcb2890b2638faa', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rcZn\";i:1528857766;}', '1528861366');
INSERT INTO `ims_core_sessions` VALUES ('59333e719bb52ba0048f4393f0f1960d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P744\";i:1528857766;}', '1528861366');
INSERT INTO `ims_core_sessions` VALUES ('3f37f719fbb1eaf93dcbfb25b39232cd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DWJP\";i:1528857765;}', '1528861365');
INSERT INTO `ims_core_sessions` VALUES ('6c3d3cffbb392c6f1740b53fd8205fc8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OsBs\";i:1528857765;}', '1528861365');
INSERT INTO `ims_core_sessions` VALUES ('452af6f4738eb7713d64b65bd76dc59e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"COqL\";i:1528857765;}', '1528861365');
INSERT INTO `ims_core_sessions` VALUES ('ecf8b2e02b359d1d20f8f6cb056610ee', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YM0M\";i:1528857764;}', '1528861364');
INSERT INTO `ims_core_sessions` VALUES ('eda1bdb9cc5532e1a03c890b6693d783', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fyk9\";i:1528857764;}', '1528861364');
INSERT INTO `ims_core_sessions` VALUES ('3d7d20f22ed8bf1eef6281060998702d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wHhH\";i:1528857764;}', '1528861364');
INSERT INTO `ims_core_sessions` VALUES ('e39eecebf4477efbea86d2e256d1bc07', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U50j\";i:1528857764;}', '1528861364');
INSERT INTO `ims_core_sessions` VALUES ('a1dae1e3ac1d7a57baf7db3a2e4ad4d9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jx6f\";i:1528857764;}', '1528861364');
INSERT INTO `ims_core_sessions` VALUES ('75924f52697ca2c02278292fce5427e7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gaa8\";i:1528857760;}', '1528861360');
INSERT INTO `ims_core_sessions` VALUES ('01103b1ddf102201a3d2908d86d49d8a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a3rf\";i:1528800968;}', '1528804568');
INSERT INTO `ims_core_sessions` VALUES ('92722b4dbf0e1c999f4bb20a3881f571', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Slj3\";i:1528852606;}', '1528856206');
INSERT INTO `ims_core_sessions` VALUES ('9536e7c7715066e871ba1f531f873f7b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wR1X\";i:1528800439;}', '1528804039');
INSERT INTO `ims_core_sessions` VALUES ('0973ed72c1af27d32f031a9272bb0473', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J5Hx\";i:1528800439;}', '1528804039');
INSERT INTO `ims_core_sessions` VALUES ('607fe7ce6e5467772e697d81d3ad2449', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"faFF\";i:1528800439;}', '1528804039');
INSERT INTO `ims_core_sessions` VALUES ('aab3fd5414e2fc75247bb5e829d01e03', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rpx6\";i:1528800439;}', '1528804039');
INSERT INTO `ims_core_sessions` VALUES ('c9c2fe5ed7fbdfdb828f70804b16fd53', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RNsk\";i:1528800516;}', '1528804116');
INSERT INTO `ims_core_sessions` VALUES ('1c79a49fedfb3262c3dc3145cc94c97f', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pN0M\";i:1528800516;}', '1528804116');
INSERT INTO `ims_core_sessions` VALUES ('511168163aa3d1b0eed40d6dd00aacd3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t4G1\";i:1528800516;}', '1528804116');
INSERT INTO `ims_core_sessions` VALUES ('e1ee7052dd01a5ca86d1112adb967032', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DAEy\";i:1528800516;}', '1528804116');
INSERT INTO `ims_core_sessions` VALUES ('f992ef199217aa5b89d288d9e91db308', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XtT5\";i:1528800533;}', '1528804133');
INSERT INTO `ims_core_sessions` VALUES ('e43a9ec9ebe00a91673ec6410e133831', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RhRa\";i:1528800533;}', '1528804133');
INSERT INTO `ims_core_sessions` VALUES ('de2365f820df248caf5062c72204e158', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sx4w\";i:1528800533;}', '1528804133');
INSERT INTO `ims_core_sessions` VALUES ('a73dc37cd056bf28fe13bcc17470c215', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n5Ih\";i:1528800533;}', '1528804133');
INSERT INTO `ims_core_sessions` VALUES ('b0a222031bd103762acbaaa3c3afafd3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cz0k\";i:1528800546;}', '1528804146');
INSERT INTO `ims_core_sessions` VALUES ('691a527dd9ff4b54cd8834a5a1f5a1a8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vIGK\";i:1528800546;}', '1528804146');
INSERT INTO `ims_core_sessions` VALUES ('6d8ec5ced9755e9484d446e4b349a02a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lwkt\";i:1528800546;}', '1528804146');
INSERT INTO `ims_core_sessions` VALUES ('dcd038ef2d45cb0ac52fb1beab1e74ad', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fy7K\";i:1528800546;}', '1528804146');
INSERT INTO `ims_core_sessions` VALUES ('178581d74d7192ce173442245e2e3d15', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z1r9\";i:1528800558;}', '1528804158');
INSERT INTO `ims_core_sessions` VALUES ('61920841b5ddc98fbf5e95bc28a977f6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ksxy\";i:1528800559;}', '1528804159');
INSERT INTO `ims_core_sessions` VALUES ('84b4d1c398fef90cfd904429ad9857b7', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o7h7\";i:1528800559;}', '1528804159');
INSERT INTO `ims_core_sessions` VALUES ('eafbfce46f15934c22d347fb436efe50', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N6iI\";i:1528800559;}', '1528804159');
INSERT INTO `ims_core_sessions` VALUES ('f8b749d2a1d1823f7170e1d3c523488d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nSL2\";i:1528800583;}', '1528804183');
INSERT INTO `ims_core_sessions` VALUES ('db7460db120eb94a7f178d37525f19c1', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KUfT\";i:1528800584;}', '1528804184');
INSERT INTO `ims_core_sessions` VALUES ('92c7df6ea060c681b480c9fc087b211a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FaJ6\";i:1528800584;}', '1528804184');
INSERT INTO `ims_core_sessions` VALUES ('3649cc79a6d9a200a1d8ff113475e317', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E57R\";i:1528800584;}', '1528804184');
INSERT INTO `ims_core_sessions` VALUES ('471638bcffc79305b2465ba460dba639', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f7Ju\";i:1528800593;}', '1528804193');
INSERT INTO `ims_core_sessions` VALUES ('47a8edcd98861f7353d979655108bd9c', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PRBS\";i:1528800593;}', '1528804193');
INSERT INTO `ims_core_sessions` VALUES ('6a99c1b0b452fa5611707826c67416ab', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UnxO\";i:1528800593;}', '1528804193');
INSERT INTO `ims_core_sessions` VALUES ('6455933a3c8d94059e1c86ef2ffc2100', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D646\";i:1528800594;}', '1528804194');
INSERT INTO `ims_core_sessions` VALUES ('2f8098a48138702d1fbedc48a734ea06', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dt1q\";i:1528800603;}', '1528804203');
INSERT INTO `ims_core_sessions` VALUES ('494dba8c4631e67adf26d76cede11053', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qCm0\";i:1528800603;}', '1528804203');
INSERT INTO `ims_core_sessions` VALUES ('dca7679adc96c582c778e70779e764cc', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AD3Z\";i:1528800603;}', '1528804203');
INSERT INTO `ims_core_sessions` VALUES ('dab39868d0c140255392a858e6a64e52', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UHu7\";i:1528800603;}', '1528804203');
INSERT INTO `ims_core_sessions` VALUES ('07302e8087d0035bb97732e5b0189173', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"icLD\";i:1528800630;}', '1528804230');
INSERT INTO `ims_core_sessions` VALUES ('9181d065a74ad63e6e3a200718a1cb15', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kkij\";i:1528800630;}', '1528804230');
INSERT INTO `ims_core_sessions` VALUES ('c9747d7d33751eec3955eea3450b8269', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ICXx\";i:1528800630;}', '1528804230');
INSERT INTO `ims_core_sessions` VALUES ('7fe843875032f4370c48e128e86a7437', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FvSs\";i:1528800630;}', '1528804230');
INSERT INTO `ims_core_sessions` VALUES ('7dc4832d565cc0a24537e54e18e49c44', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q8pm\";i:1528800642;}', '1528804242');
INSERT INTO `ims_core_sessions` VALUES ('b23053a4ba15977410f9d2dcc10d7095', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZXTh\";i:1528800642;}', '1528804242');
INSERT INTO `ims_core_sessions` VALUES ('8076cea2d40ef687197a50993ef2f025', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"edoX\";i:1528800643;}', '1528804243');
INSERT INTO `ims_core_sessions` VALUES ('f4af8c3f4cf3e09e1358d847bf5b7367', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:3:{s:4:\"O6Iv\";i:1528800437;s:4:\"q4iz\";i:1528800438;s:4:\"r6Cq\";i:1528800598;}', '1528804198');
INSERT INTO `ims_core_sessions` VALUES ('f9f7c9895e6861872a363acbadcd77d0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aLIc\";i:1528857760;}', '1528861360');
INSERT INTO `ims_core_sessions` VALUES ('a1b3c8a4899c08a7e55ed9fb9a3edc57', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oozI\";i:1528857759;}', '1528861359');
INSERT INTO `ims_core_sessions` VALUES ('df77494d52cef59b47ac4f493e198639', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jk5B\";i:1528857759;}', '1528861359');
INSERT INTO `ims_core_sessions` VALUES ('e2706d9af3ebd7b2d7c2cca0110de322', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SL9g\";i:1528857759;}', '1528861359');
INSERT INTO `ims_core_sessions` VALUES ('330b8c994db77c713683ccf3284d8859', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m11s\";i:1528857759;}', '1528861359');
INSERT INTO `ims_core_sessions` VALUES ('374657c84efaf08c3a5e947cc28a892b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HIio\";i:1528857759;}', '1528861359');
INSERT INTO `ims_core_sessions` VALUES ('bc82da9d15495d8afe2bc1aed6014146', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dIAr\";i:1528857758;}', '1528861358');
INSERT INTO `ims_core_sessions` VALUES ('0d9ef46d562a24a594a72d2a61ece874', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XkhE\";i:1528857758;}', '1528861358');
INSERT INTO `ims_core_sessions` VALUES ('1c314ce165c6412e4280e1468e493e2f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bl2T\";i:1528857757;}', '1528861357');
INSERT INTO `ims_core_sessions` VALUES ('350f56e7826c451bdd1169e616a7aad4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dqnh\";i:1528857757;}', '1528861357');
INSERT INTO `ims_core_sessions` VALUES ('031c7e9d2b86482157645ce8db81774d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y8g6\";i:1528857757;}', '1528861357');
INSERT INTO `ims_core_sessions` VALUES ('e3633457fdca9b6eee454492918cd57c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J0xm\";i:1528857757;}', '1528861357');
INSERT INTO `ims_core_sessions` VALUES ('32d489393b6537d3b525d9e4907328e6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pWh7\";i:1528857757;}', '1528861357');
INSERT INTO `ims_core_sessions` VALUES ('9b2de69fba1b660a30e5e8c0cf7bc647', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"st1V\";i:1528857756;}', '1528861356');
INSERT INTO `ims_core_sessions` VALUES ('8f5d13011db33b949730de50c36b0b2f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BGm2\";i:1528857711;}', '1528861311');
INSERT INTO `ims_core_sessions` VALUES ('8a4598b0fcebc22ca6f4d19b78bf293d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l466\";i:1528857709;}', '1528861309');
INSERT INTO `ims_core_sessions` VALUES ('0540389109b7166556e224e63919a9cc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EYea\";i:1528857708;}', '1528861308');
INSERT INTO `ims_core_sessions` VALUES ('f93d6d7523f037455e4a17ab134e2124', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tQyi\";i:1528857707;}', '1528861307');
INSERT INTO `ims_core_sessions` VALUES ('60a1a73fc7f0cf1c52be139ab96d25a3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iw5T\";i:1528857705;}', '1528861305');
INSERT INTO `ims_core_sessions` VALUES ('6348e414ed9929a18c669538ccb34a5a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TbtE\";i:1528857704;}', '1528861304');
INSERT INTO `ims_core_sessions` VALUES ('e82280dd14ed7e5360c2867c31093fa5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"um4g\";i:1528857702;}', '1528861302');
INSERT INTO `ims_core_sessions` VALUES ('65888c1b4601a3e0005ffb6bd44765ac', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dTUL\";i:1528857663;}', '1528861263');
INSERT INTO `ims_core_sessions` VALUES ('05e7749edbeafdcc0a92780390e744e8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o5tq\";i:1528857663;}', '1528861263');
INSERT INTO `ims_core_sessions` VALUES ('d691b81e0ac6f9c621423c9a1af766c7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ftl9\";i:1528857663;}', '1528861263');
INSERT INTO `ims_core_sessions` VALUES ('471ac64e7be99ec09a32cce90564fabd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DdMK\";i:1528857663;}', '1528861263');
INSERT INTO `ims_core_sessions` VALUES ('f725d84b9caf9b7c236d29299747ccda', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Os34\";i:1528857662;}', '1528861262');
INSERT INTO `ims_core_sessions` VALUES ('6f7d9482a6eb24ed00ee4fea011acfd7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bwiV\";i:1528857662;}', '1528861262');
INSERT INTO `ims_core_sessions` VALUES ('ae9eee74297ee95ba65493aedf91fae2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FHuV\";i:1528857662;}', '1528861262');
INSERT INTO `ims_core_sessions` VALUES ('15ad71bef989a5e79713fc92b10699f7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gu5N\";i:1528857662;}', '1528861262');
INSERT INTO `ims_core_sessions` VALUES ('25f5291c3e1897302731a26cb877a7a4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n5T8\";i:1528857662;}', '1528861262');
INSERT INTO `ims_core_sessions` VALUES ('0f15eb2c47c7782ee39c2c569c82d00f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xm0s\";i:1528857661;}', '1528861261');
INSERT INTO `ims_core_sessions` VALUES ('e9fe2558c243d5da14fe4278c270b489', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mXf7\";i:1528857661;}', '1528861261');
INSERT INTO `ims_core_sessions` VALUES ('2d5c022e89d5541be8ce93050519bdad', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iexy\";i:1528857661;}', '1528861261');
INSERT INTO `ims_core_sessions` VALUES ('6c11a8ba199de0cb73885759bf307b3e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nbu4\";i:1528857661;}', '1528861261');
INSERT INTO `ims_core_sessions` VALUES ('0b3e5523e667c2f58f69687179925360', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fp2E\";i:1528857661;}', '1528861261');
INSERT INTO `ims_core_sessions` VALUES ('fee91fa4802908b22ecdd72ea8c2f34c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N43i\";i:1528857661;}', '1528861261');
INSERT INTO `ims_core_sessions` VALUES ('c1baee8453b0095730cb6b4e48af095d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HJq8\";i:1528857655;}', '1528861255');
INSERT INTO `ims_core_sessions` VALUES ('e353c7b2850bdee114de446dc05b3498', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nFlR\";i:1528857655;}', '1528861255');
INSERT INTO `ims_core_sessions` VALUES ('0a03fcac9d9b6bf2cf75ac4e19ba02d0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mDL3\";i:1528857655;}', '1528861255');
INSERT INTO `ims_core_sessions` VALUES ('0ec6420211f2a705bef1cb0957207abc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jeeC\";i:1528857655;}', '1528861255');
INSERT INTO `ims_core_sessions` VALUES ('cf29b2f7a4ef13ff036c21a1339fd917', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"It7j\";i:1528857655;}', '1528861255');
INSERT INTO `ims_core_sessions` VALUES ('a7d23abee0757810ad621cbfff0d9cb3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U6cm\";i:1528857654;}', '1528861254');
INSERT INTO `ims_core_sessions` VALUES ('e65de5636e26d48b45f9ac7ed5604ddd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"opz7\";i:1528857654;}', '1528861254');
INSERT INTO `ims_core_sessions` VALUES ('ac7204c2cfecd711da1ffcf10db89104', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g8nZ\";i:1528857654;}', '1528861254');
INSERT INTO `ims_core_sessions` VALUES ('6b9e6b3e55a5da3762ab7cc1e8405220', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H5GG\";i:1528857653;}', '1528861253');
INSERT INTO `ims_core_sessions` VALUES ('e877fa7c09633fae6047076642e25bbf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vHUV\";i:1528857653;}', '1528861253');
INSERT INTO `ims_core_sessions` VALUES ('fdb54c35c849df0f071f96ad368f0082', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sz8a\";i:1528857653;}', '1528861253');
INSERT INTO `ims_core_sessions` VALUES ('5efef51b335afef9def64d9d63029f5f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rwjn\";i:1528857653;}', '1528861253');
INSERT INTO `ims_core_sessions` VALUES ('529162eed721e690ec3b120dbeb5d78f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A1kU\";i:1528857653;}', '1528861253');
INSERT INTO `ims_core_sessions` VALUES ('7abdc279e391a9d6a30d1d070bc9ac41', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HBbo\";i:1528857653;}', '1528861253');
INSERT INTO `ims_core_sessions` VALUES ('66378cea18bc8b14cc2fd03e6c4ce58d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ycsY\";i:1528857653;}', '1528861253');
INSERT INTO `ims_core_sessions` VALUES ('4b6107a9804395aca16b2dfd2cd17179', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jt2L\";i:1528857532;}', '1528861132');
INSERT INTO `ims_core_sessions` VALUES ('f47f06e327067a0bc347c5db0883f68c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fh7T\";i:1528857532;}', '1528861132');
INSERT INTO `ims_core_sessions` VALUES ('a7d35220a5572d6aca62c04013808bba', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gss5\";i:1528857532;}', '1528861132');
INSERT INTO `ims_core_sessions` VALUES ('95a0fb729532b9896e8045c9abcc2240', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mts4\";i:1528857532;}', '1528861132');
INSERT INTO `ims_core_sessions` VALUES ('9a4fc1d4ac828feef1641a8b2d581056', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t288\";i:1528857532;}', '1528861132');
INSERT INTO `ims_core_sessions` VALUES ('79128f840a3b41bb7159660d3dd24564', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bz7d\";i:1528857532;}', '1528861132');
INSERT INTO `ims_core_sessions` VALUES ('856bdf279b4a2a4c6dcd5572d457726d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R49l\";i:1528857531;}', '1528861131');
INSERT INTO `ims_core_sessions` VALUES ('7c68c81a33235c66258e7815f5b9ad5d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hykV\";i:1528857531;}', '1528861131');
INSERT INTO `ims_core_sessions` VALUES ('939bba7a5cabcbae6a44b6727b3a4186', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I352\";i:1528857531;}', '1528861131');
INSERT INTO `ims_core_sessions` VALUES ('e4c99e8643aa7d3d6ee9c7ce60190510', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y0hF\";i:1528857531;}', '1528861131');
INSERT INTO `ims_core_sessions` VALUES ('5b9eafe8c5887968b31db3d9a1af6fbf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UMYa\";i:1528857530;}', '1528861130');
INSERT INTO `ims_core_sessions` VALUES ('fb8b88de043e7e278d7e85d5ad8511cb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VMK9\";i:1528857530;}', '1528861130');
INSERT INTO `ims_core_sessions` VALUES ('9658a52b96ba550555080b33b434b74d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nc45\";i:1528857530;}', '1528861130');
INSERT INTO `ims_core_sessions` VALUES ('b13a663f1c539c7323e3a5e976a58e11', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hW67\";i:1528857530;}', '1528861130');
INSERT INTO `ims_core_sessions` VALUES ('fbd46eea4715c2492db20dcb7bdf6c33', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QEFj\";i:1528857529;}', '1528861129');
INSERT INTO `ims_core_sessions` VALUES ('dcd58f7548cf212fca1dd32e52ca4586', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x3BP\";i:1528857485;}', '1528861085');
INSERT INTO `ims_core_sessions` VALUES ('1f0e488c2e6d43830a93375a37be8f4c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t6kk\";i:1528857485;}', '1528861085');
INSERT INTO `ims_core_sessions` VALUES ('8d94fb223ea03a27312ba3afd512d0a2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OBRd\";i:1528857485;}', '1528861085');
INSERT INTO `ims_core_sessions` VALUES ('51e02cfeb13a894a9b2a35cdf0dff422', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P4uB\";i:1528857485;}', '1528861085');
INSERT INTO `ims_core_sessions` VALUES ('88daed444836668fa269ebbf42cb7b06', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mysS\";i:1528857484;}', '1528861084');
INSERT INTO `ims_core_sessions` VALUES ('1cdddc0b1ae71cf7b9832f8263935cbe', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"htb4\";i:1528857481;}', '1528861081');
INSERT INTO `ims_core_sessions` VALUES ('0e20bd1f4db77be0708babedd186c60f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z41a\";i:1528857481;}', '1528861081');
INSERT INTO `ims_core_sessions` VALUES ('8a57208d7066e4dc8f235fee8b2dc728', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BtEE\";i:1528857481;}', '1528861081');
INSERT INTO `ims_core_sessions` VALUES ('d9ee4cbdc35ccec5462bd3397d8fc1a5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XdHk\";i:1528857481;}', '1528861081');
INSERT INTO `ims_core_sessions` VALUES ('9054929848f2529bb626ce9b9da35a78', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gptv\";i:1528857480;}', '1528861080');
INSERT INTO `ims_core_sessions` VALUES ('5e1b96070d05499e3a3272fa0f28009b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bCB3\";i:1528857462;}', '1528861062');
INSERT INTO `ims_core_sessions` VALUES ('3c5a63c5359ab7272cf7770ae051078f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nta5\";i:1528857462;}', '1528861062');
INSERT INTO `ims_core_sessions` VALUES ('ba270aff7ab943b21708f35235f63c65', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C4S1\";i:1528857462;}', '1528861062');
INSERT INTO `ims_core_sessions` VALUES ('6255f55d67f00f27953598f75055aa18', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kpfw\";i:1528857462;}', '1528861062');
INSERT INTO `ims_core_sessions` VALUES ('567b174dfbe854f849a40179921d42c2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Aj7c\";i:1528857384;}', '1528860984');
INSERT INTO `ims_core_sessions` VALUES ('d34c3f49940689705f4e7f733eae4602', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dfQF\";i:1528857377;}', '1528860977');
INSERT INTO `ims_core_sessions` VALUES ('e2ff1979ddd0e296d9ce7b1c8d82837e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SJV2\";i:1528857374;}', '1528860974');
INSERT INTO `ims_core_sessions` VALUES ('79c5a7e5b48f512bb088c6977603fb63', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aTTr\";i:1528857373;}', '1528860973');
INSERT INTO `ims_core_sessions` VALUES ('add008d25d40ec8bcbf285ba60df9372', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bY63\";i:1528857373;}', '1528860973');
INSERT INTO `ims_core_sessions` VALUES ('de677a03114ffd31645cdae4f0f01f4a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y9w9\";i:1528857373;}', '1528860973');
INSERT INTO `ims_core_sessions` VALUES ('61fbf3ca7cc3a9b55d9d44f2b2ee73b8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sgfs\";i:1528857320;}', '1528860920');
INSERT INTO `ims_core_sessions` VALUES ('2e46cf2bff68fbdceb04088de2ddcf83', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YxqV\";i:1528857315;}', '1528860915');
INSERT INTO `ims_core_sessions` VALUES ('18c39de25848e42b569ecf167858c209', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OYQZ\";i:1528857314;}', '1528860914');
INSERT INTO `ims_core_sessions` VALUES ('9380da2e97710f05a7608142ccd7bc3e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YFtT\";i:1528857314;}', '1528860914');
INSERT INTO `ims_core_sessions` VALUES ('a970a2f9a19c70ff08576cdf0ff192e7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Lg3k\";i:1528857314;}', '1528860914');
INSERT INTO `ims_core_sessions` VALUES ('d5acfeade5774cf8ee8faaf733d8c202', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xsJ6\";i:1528857290;}', '1528860890');
INSERT INTO `ims_core_sessions` VALUES ('00e848111bafa0c44bd1c7f071b2ea88', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i3Q1\";i:1528857288;}', '1528860888');
INSERT INTO `ims_core_sessions` VALUES ('f762ac77815e1c49ab51f4bfaf72db96', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f6Mi\";i:1528857284;}', '1528860884');
INSERT INTO `ims_core_sessions` VALUES ('5a811b7beb4ef10ee150c31a2c160ed5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WOi5\";i:1528857283;}', '1528860883');
INSERT INTO `ims_core_sessions` VALUES ('cf962da1f71383c2c3f90e0e23ea7a8f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d4i3\";i:1528857282;}', '1528860882');
INSERT INTO `ims_core_sessions` VALUES ('739aa010905f02bee98f06167af51d80', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"itZ4\";i:1528857281;}', '1528860881');
INSERT INTO `ims_core_sessions` VALUES ('677b3441bc5dea3e55ce430e11f13269', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P3FJ\";i:1528857267;}', '1528860867');
INSERT INTO `ims_core_sessions` VALUES ('bdcbe818d18c70060b95419ff60a62fb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aSb2\";i:1528857262;}', '1528860862');
INSERT INTO `ims_core_sessions` VALUES ('1655e8a0db6a759521913c7721ccf365', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hoox\";i:1528857262;}', '1528860862');
INSERT INTO `ims_core_sessions` VALUES ('85b0fea9947d5a91ee1edb6c47094cf4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bqQL\";i:1528857262;}', '1528860862');
INSERT INTO `ims_core_sessions` VALUES ('83d71940eea708644d851250d211a72a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LFbu\";i:1528857262;}', '1528860862');
INSERT INTO `ims_core_sessions` VALUES ('caff531dece3967cedbf532c93b369ae', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fWO0\";i:1528857208;}', '1528860808');
INSERT INTO `ims_core_sessions` VALUES ('510f227e2926c4e187718141283feaa5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U0p9\";i:1528857206;}', '1528860806');
INSERT INTO `ims_core_sessions` VALUES ('307735753d06bf59f55ff62b7fcb4b95', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZQHQ\";i:1528857206;}', '1528860806');
INSERT INTO `ims_core_sessions` VALUES ('c9597e9339cd003f64c1c165dd39cb39', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z32o\";i:1528857205;}', '1528860805');
INSERT INTO `ims_core_sessions` VALUES ('ef7ef04700692105bd5aec828ef040b6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E0q9\";i:1528857205;}', '1528860805');
INSERT INTO `ims_core_sessions` VALUES ('7d4aa6d005625205ec992f7140586c7a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N5Q9\";i:1528857193;}', '1528860793');
INSERT INTO `ims_core_sessions` VALUES ('7f366993a9512e809fee164cd9228de9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a8p6\";i:1528857193;}', '1528860793');
INSERT INTO `ims_core_sessions` VALUES ('322de13f5f7ee35f4943c520376dc98d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J260\";i:1528857193;}', '1528860793');
INSERT INTO `ims_core_sessions` VALUES ('949b84d1438401eabdc5dbedd2081c0c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FvEG\";i:1528857193;}', '1528860793');
INSERT INTO `ims_core_sessions` VALUES ('c5e4305e8e43171a654601d8b7765d98', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mX3n\";i:1528857174;}', '1528860774');
INSERT INTO `ims_core_sessions` VALUES ('5dabdf7fa2e2cbadf8398a15c881ee34', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KO0Y\";i:1528857171;}', '1528860771');
INSERT INTO `ims_core_sessions` VALUES ('a6d9103c8d92a3eef6c6e3cc8f7d0d14', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gEke\";i:1528857171;}', '1528860771');
INSERT INTO `ims_core_sessions` VALUES ('8d9f9598e11771b0eac942d1b7f33ade', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EIpk\";i:1528857170;}', '1528860770');
INSERT INTO `ims_core_sessions` VALUES ('efcd65cb43717cfadf1bd53893384245', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kf2i\";i:1528857170;}', '1528860770');
INSERT INTO `ims_core_sessions` VALUES ('7982bd504de3f6355aaaf4e3ae54dc03', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VeSs\";i:1528857095;}', '1528860695');
INSERT INTO `ims_core_sessions` VALUES ('5e06a6c8524e2642815dd1623eb1793a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JeTI\";i:1528857095;}', '1528860695');
INSERT INTO `ims_core_sessions` VALUES ('792a84918872d08e6f310effc67ec2a9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E08i\";i:1528857095;}', '1528860695');
INSERT INTO `ims_core_sessions` VALUES ('0c85e6e96c4584ae3ae2a32b87e76a5d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"edKn\";i:1528857095;}', '1528860695');
INSERT INTO `ims_core_sessions` VALUES ('3e6b42cd9624bd52dac1f16d8b4d06d8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vpCx\";i:1528857079;}', '1528860679');
INSERT INTO `ims_core_sessions` VALUES ('8c826459dec5dc67d1f1a238e4e22091', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YAPr\";i:1528857077;}', '1528860677');
INSERT INTO `ims_core_sessions` VALUES ('33dc7d76989d170ee2fb58c4d7630203', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J7FR\";i:1528857077;}', '1528860677');
INSERT INTO `ims_core_sessions` VALUES ('262516aff7344bec108b74024449a211', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v5d5\";i:1528857077;}', '1528860677');
INSERT INTO `ims_core_sessions` VALUES ('766cd5dd6e34e0984c17aec69eb02463', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jBBF\";i:1528857076;}', '1528860676');
INSERT INTO `ims_core_sessions` VALUES ('d4d3d93b5b4dd4cc770ae3bab5654aaa', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VlNc\";i:1528857065;}', '1528860665');
INSERT INTO `ims_core_sessions` VALUES ('6a4519b4c84d4b22ee70c57c7022165e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x2uw\";i:1528857061;}', '1528860661');
INSERT INTO `ims_core_sessions` VALUES ('99b9e60c72a78a8d6945f825874da1d5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YH5A\";i:1528857061;}', '1528860661');
INSERT INTO `ims_core_sessions` VALUES ('dfc416c5e638fd6850688b44e1edd32a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uKiM\";i:1528857061;}', '1528860661');
INSERT INTO `ims_core_sessions` VALUES ('ab2f9093ab3a129c722dc35eec4913ff', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qwaB\";i:1528857061;}', '1528860661');
INSERT INTO `ims_core_sessions` VALUES ('844018a2212fb7b87ecb01aaecc28f7b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jtfe\";i:1528857024;}', '1528860624');
INSERT INTO `ims_core_sessions` VALUES ('25e273055bff04d59ac7c20e5c60bd72', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dd31\";i:1528857020;}', '1528860620');
INSERT INTO `ims_core_sessions` VALUES ('6099c29c7da840789a87304d77117530', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DmCH\";i:1528857020;}', '1528860620');
INSERT INTO `ims_core_sessions` VALUES ('106ced2e0a0f59e142927f8f2668ff8d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VMvh\";i:1528857020;}', '1528860620');
INSERT INTO `ims_core_sessions` VALUES ('ad8cb59a62549cbfaf9a5509cae05293', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OeNe\";i:1528857020;}', '1528860620');
INSERT INTO `ims_core_sessions` VALUES ('d369b15745d45430388bef3e5c9bbb4a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PSX2\";i:1528857006;}', '1528860606');
INSERT INTO `ims_core_sessions` VALUES ('0658f7671d2f7d143bb70ddcfebffe44', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CyPL\";i:1528857001;}', '1528860601');
INSERT INTO `ims_core_sessions` VALUES ('9c45d27b1900dd80d8a5fa11da1b7376', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qcI4\";i:1528857001;}', '1528860601');
INSERT INTO `ims_core_sessions` VALUES ('e9bec43fc7f6bb1c1f9bd11dd26b8887', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xg0L\";i:1528857001;}', '1528860601');
INSERT INTO `ims_core_sessions` VALUES ('4f572bb174cb7eb18eb86a1311b640de', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y99Q\";i:1528857001;}', '1528860601');
INSERT INTO `ims_core_sessions` VALUES ('88bdef9ad60d92db61792bf7ff28c29c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u79n\";i:1528856989;}', '1528860589');
INSERT INTO `ims_core_sessions` VALUES ('9fc202908383024e24d21ecd9bd788a6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CQs3\";i:1528856989;}', '1528860589');
INSERT INTO `ims_core_sessions` VALUES ('c2c39b2541e6f8e78a31468b5b6b04be', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E4Jm\";i:1528856989;}', '1528860589');
INSERT INTO `ims_core_sessions` VALUES ('c99480914187e0cab8647d5cf998d416', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hv1R\";i:1528856989;}', '1528860589');
INSERT INTO `ims_core_sessions` VALUES ('6a4923357cb768e262c0487b2e5327f6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"shC2\";i:1528856923;}', '1528860523');
INSERT INTO `ims_core_sessions` VALUES ('f6452fc0b455e2cb3c6986c1750057af', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"weEA\";i:1528856911;}', '1528860511');
INSERT INTO `ims_core_sessions` VALUES ('abcba7dd1bc298c1d8201ad7f9fe8c47', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A2g8\";i:1528856907;}', '1528860507');
INSERT INTO `ims_core_sessions` VALUES ('2201f82b026cddf28de3a070c2292d5a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JMaZ\";i:1528856907;}', '1528860507');
INSERT INTO `ims_core_sessions` VALUES ('59e542068074945ce82040dfd85db2f6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n4Yy\";i:1528856907;}', '1528860507');
INSERT INTO `ims_core_sessions` VALUES ('ccf85d000950b10500d0e448fae0a49d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"acKt\";i:1528856907;}', '1528860507');
INSERT INTO `ims_core_sessions` VALUES ('fbf64997f6d926ee65848083ff814ea9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ta3Q\";i:1528856794;}', '1528860394');
INSERT INTO `ims_core_sessions` VALUES ('2b5174617783b13fc6440022795a5aa2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q8Ta\";i:1528856788;}', '1528860388');
INSERT INTO `ims_core_sessions` VALUES ('63d5bb6b86f05bfe920ded8bad710112', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Edz4\";i:1528856785;}', '1528860385');
INSERT INTO `ims_core_sessions` VALUES ('5dca9ffccf6c0ec5960d2bec81a0f5b3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pip0\";i:1528856785;}', '1528860385');
INSERT INTO `ims_core_sessions` VALUES ('28c49a1b743b8fe9b1539840e3d41ac4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mvk6\";i:1528856785;}', '1528860385');
INSERT INTO `ims_core_sessions` VALUES ('b227a5084535c0664f0b0f56ae5c7bbd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gry5\";i:1528856784;}', '1528860384');
INSERT INTO `ims_core_sessions` VALUES ('30f4ec7401baaa1ea5a17021d72ef70a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pF7x\";i:1528856761;}', '1528860361');
INSERT INTO `ims_core_sessions` VALUES ('21ca8409715ac575d27edf09a102d825', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L3iV\";i:1528856757;}', '1528860357');
INSERT INTO `ims_core_sessions` VALUES ('eafa2365d14565e9318315eb081e0876', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w87k\";i:1528856757;}', '1528860357');
INSERT INTO `ims_core_sessions` VALUES ('35d4e9fd95dfbd0f7746a4ab1494c6d9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VC89\";i:1528856757;}', '1528860357');
INSERT INTO `ims_core_sessions` VALUES ('3425612c7ce529294a91dd9c78199b99', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GiFM\";i:1528856757;}', '1528860357');
INSERT INTO `ims_core_sessions` VALUES ('f18654f73cc3a67e5c4e7a1cdc21d771', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L0zw\";i:1528856724;}', '1528860324');
INSERT INTO `ims_core_sessions` VALUES ('4ea7baf05d8808b3a15ccba5a13b11ff', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tn6B\";i:1528856718;}', '1528860318');
INSERT INTO `ims_core_sessions` VALUES ('00c274a1cdee82e6335da72f53c5bc81', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PLB6\";i:1528856715;}', '1528860315');
INSERT INTO `ims_core_sessions` VALUES ('a1f166be9331871a3ab27d82c61556c3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n2V2\";i:1528856715;}', '1528860315');
INSERT INTO `ims_core_sessions` VALUES ('a223c7bb43db87423ee90f2ba2d85a7b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GdHY\";i:1528856715;}', '1528860315');
INSERT INTO `ims_core_sessions` VALUES ('5b01dec4e3f52209012d0377545a581f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s1zb\";i:1528856715;}', '1528860315');
INSERT INTO `ims_core_sessions` VALUES ('794f7cc4bde97d3d665efb6d9372ab21', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FECo\";i:1528856649;}', '1528860249');
INSERT INTO `ims_core_sessions` VALUES ('da63d4a4d5530673a33551e35a19e7eb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JG9P\";i:1528856646;}', '1528860246');
INSERT INTO `ims_core_sessions` VALUES ('e4d2fee9a3ed9d0f038bc07f20dfc7e9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ioe8\";i:1528856646;}', '1528860246');
INSERT INTO `ims_core_sessions` VALUES ('2513c3c8946bd6a103a0749c4a85ba77', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yIpd\";i:1528856646;}', '1528860246');
INSERT INTO `ims_core_sessions` VALUES ('9b5ab8565d49fe7b9b0fd75da9bad8cb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kau6\";i:1528856645;}', '1528860245');
INSERT INTO `ims_core_sessions` VALUES ('3ce2228f5882adaea46888353951b3e1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UUR3\";i:1528856614;}', '1528860214');
INSERT INTO `ims_core_sessions` VALUES ('026b5e433aa3d431686d00c3ee6a8e0e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i92r\";i:1528856611;}', '1528860211');
INSERT INTO `ims_core_sessions` VALUES ('a94a5dd6baff798e97509c9e9acf0566', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u5Du\";i:1528856611;}', '1528860211');
INSERT INTO `ims_core_sessions` VALUES ('03dfe7ee9a14f5d68558d39f8adacaf0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KMcA\";i:1528856611;}', '1528860211');
INSERT INTO `ims_core_sessions` VALUES ('fecd8563a262b16db941061b8e3caef3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DfbJ\";i:1528856610;}', '1528860210');
INSERT INTO `ims_core_sessions` VALUES ('685f23a424a8203077cb0cbebd247e62', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NhYw\";i:1528856580;}', '1528860180');
INSERT INTO `ims_core_sessions` VALUES ('731bf137aaef0241fbf42793ce3fa4fd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DuGy\";i:1528856575;}', '1528860175');
INSERT INTO `ims_core_sessions` VALUES ('67b90e3b70e49a5896586266353440bf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QqFx\";i:1528856575;}', '1528860175');
INSERT INTO `ims_core_sessions` VALUES ('0b9d7ba72a50adcaa45f164e146229b7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S194\";i:1528856575;}', '1528860175');
INSERT INTO `ims_core_sessions` VALUES ('1f894edd1190d958b6ac25447fff97a4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KJXL\";i:1528856575;}', '1528860175');
INSERT INTO `ims_core_sessions` VALUES ('724c1c60b9de4ec0a53ff34c8305bf28', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B4IK\";i:1528856551;}', '1528860151');
INSERT INTO `ims_core_sessions` VALUES ('65dc40051b524214fe871758d98514b5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rrcR\";i:1528856548;}', '1528860148');
INSERT INTO `ims_core_sessions` VALUES ('6f1c327871e9f645033c4ad57b7865db', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v4a3\";i:1528856548;}', '1528860148');
INSERT INTO `ims_core_sessions` VALUES ('fc9769edb7035460d554c087c1d10cdf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ttqe\";i:1528856507;}', '1528860107');
INSERT INTO `ims_core_sessions` VALUES ('910a425c565588b19f25308a9f1bbdd4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S2g2\";i:1528856548;}', '1528860148');
INSERT INTO `ims_core_sessions` VALUES ('58156c6b7a1fe68486f57af9796e8744', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oH5x\";i:1528856548;}', '1528860148');
INSERT INTO `ims_core_sessions` VALUES ('0de3bca0586585b73e8e59089312599f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q459\";i:1528856503;}', '1528860103');
INSERT INTO `ims_core_sessions` VALUES ('8172a37c8cacc2503c80a9d8fecb0f1a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WUZb\";i:1528856503;}', '1528860103');
INSERT INTO `ims_core_sessions` VALUES ('d0e143d244050e17a1f1a0e84d32f92d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U465\";i:1528856503;}', '1528860103');
INSERT INTO `ims_core_sessions` VALUES ('41298e426d03c1373e92d616877b07ad', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CZ66\";i:1528856503;}', '1528860103');
INSERT INTO `ims_core_sessions` VALUES ('d79d716d9451ad001fc38dbee98db360', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iOQO\";i:1528856465;}', '1528860065');
INSERT INTO `ims_core_sessions` VALUES ('69129e9eb7403076617f61d4a41e7d1b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q1SS\";i:1528856457;}', '1528860057');
INSERT INTO `ims_core_sessions` VALUES ('c5fa02d1f33ff7fad3c0d48e38b17ea9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fQmq\";i:1528856457;}', '1528860057');
INSERT INTO `ims_core_sessions` VALUES ('69b283939f6b9627d3ed309dff26c621', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X0jk\";i:1528856457;}', '1528860057');
INSERT INTO `ims_core_sessions` VALUES ('9d9606458b3a9dbeeb070bfda841a684', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZWPf\";i:1528856457;}', '1528860057');
INSERT INTO `ims_core_sessions` VALUES ('c3dd3ae2553dcd0d721fce233f8ff489', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z78e\";i:1528856411;}', '1528860011');
INSERT INTO `ims_core_sessions` VALUES ('0f2b1f39b8fc5975cadf6ac5a5eed782', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qr95\";i:1528856409;}', '1528860009');
INSERT INTO `ims_core_sessions` VALUES ('a17b14132727d07214c51b0a4149ef45', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kz01\";i:1528856409;}', '1528860009');
INSERT INTO `ims_core_sessions` VALUES ('c16202e1e1fe119294b9048289300438', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"deO2\";i:1528856408;}', '1528860008');
INSERT INTO `ims_core_sessions` VALUES ('d5b87ce832cb09b3024e01da0af82db9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jyV6\";i:1528856408;}', '1528860008');
INSERT INTO `ims_core_sessions` VALUES ('db48f44fb319902b5ad8c4ece0e0ef1d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F4I4\";i:1528856386;}', '1528859986');
INSERT INTO `ims_core_sessions` VALUES ('fa2ba7e0b649a0c5d748d54cb14fb977', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P516\";i:1528856386;}', '1528859986');
INSERT INTO `ims_core_sessions` VALUES ('e236898d79c97fc300ef5ffd73ebc727', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WE2C\";i:1528856386;}', '1528859986');
INSERT INTO `ims_core_sessions` VALUES ('e8daef0109f3f1e76eac3eab5eacd65b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a75d\";i:1528856386;}', '1528859986');
INSERT INTO `ims_core_sessions` VALUES ('d791422f6061927ec28f6ecc18649dff', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p3Yy\";i:1528856216;}', '1528859816');
INSERT INTO `ims_core_sessions` VALUES ('19e626753147cf1493dfc768a55ea519', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pjmq\";i:1528856216;}', '1528859816');
INSERT INTO `ims_core_sessions` VALUES ('65ee9ac513ee2c1115a5148c20270293', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cIa5\";i:1528856216;}', '1528859816');
INSERT INTO `ims_core_sessions` VALUES ('4f2d1efb31be82b01959642554af8fc8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lpjb\";i:1528856216;}', '1528859816');
INSERT INTO `ims_core_sessions` VALUES ('fa6468f3ed6c7ecda7e8ecf427567812', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uUXe\";i:1528856209;}', '1528859809');
INSERT INTO `ims_core_sessions` VALUES ('80843278a06c5cfcf16e68f2c4ea09ad', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kL1B\";i:1528856209;}', '1528859809');
INSERT INTO `ims_core_sessions` VALUES ('22946c0513692f2085f5c6dcdde74f78', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nqT2\";i:1528856209;}', '1528859809');
INSERT INTO `ims_core_sessions` VALUES ('6284213db6666bd93b6b0c13395aa62b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Eroe\";i:1528856209;}', '1528859809');
INSERT INTO `ims_core_sessions` VALUES ('3f9a8ec14b6175b5ac2cb2449f9aa3ed', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sLC5\";i:1528856176;}', '1528859776');
INSERT INTO `ims_core_sessions` VALUES ('d54490fa3cd790265f68d5d1435f56d5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GjmC\";i:1528856168;}', '1528859768');
INSERT INTO `ims_core_sessions` VALUES ('4618d5a865560bb027cbc7e9108fd8a4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f7KZ\";i:1528856062;}', '1528859662');
INSERT INTO `ims_core_sessions` VALUES ('13348f51e374bc7b729c6a7850aa562b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kBhO\";i:1528856053;}', '1528859653');
INSERT INTO `ims_core_sessions` VALUES ('a499584051df631122d2e387b6dd060f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nkik\";i:1528856047;}', '1528859647');
INSERT INTO `ims_core_sessions` VALUES ('9201e1de4f08fc9bfbd5f403d9b009bb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"St3L\";i:1528856044;}', '1528859644');
INSERT INTO `ims_core_sessions` VALUES ('025c99c7a7727ef69e3a65f0ce651d62', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w71o\";i:1528856044;}', '1528859644');
INSERT INTO `ims_core_sessions` VALUES ('a727777ff0bf4a960afc46c66fb71e08', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xAGN\";i:1528856044;}', '1528859644');
INSERT INTO `ims_core_sessions` VALUES ('fcb2b1bd786df52ad611ff26f60eefe4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xLYB\";i:1528856044;}', '1528859644');
INSERT INTO `ims_core_sessions` VALUES ('48e402ed713a0d9a8fe3673a84adb29a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ee65\";i:1528856040;}', '1528859640');
INSERT INTO `ims_core_sessions` VALUES ('36a4ff2406ec801bacff6c2df2164429', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QNln\";i:1528856040;}', '1528859640');
INSERT INTO `ims_core_sessions` VALUES ('0754a71611a29a8d06a32120f2f4f442', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dZ12\";i:1528856040;}', '1528859640');
INSERT INTO `ims_core_sessions` VALUES ('59141b5c18274ea681af8119952dc73d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YNQJ\";i:1528856040;}', '1528859640');
INSERT INTO `ims_core_sessions` VALUES ('4911cd86327dd5dac30672fc864eb4f2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M0hS\";i:1528856035;}', '1528859635');
INSERT INTO `ims_core_sessions` VALUES ('0862e6c379cb5a4f33046096c99330f5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K8Pr\";i:1528856035;}', '1528859635');
INSERT INTO `ims_core_sessions` VALUES ('6192633a85e47101f163da12d692871b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zrLg\";i:1528856035;}', '1528859635');
INSERT INTO `ims_core_sessions` VALUES ('b94c8e2b17608fca89577a8912d075d3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T4R7\";i:1528856035;}', '1528859635');
INSERT INTO `ims_core_sessions` VALUES ('503d893ecf86dd3831ad592120244be1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"No4f\";i:1528856028;}', '1528859628');
INSERT INTO `ims_core_sessions` VALUES ('47e8f2a70069ea6151cbfcff0c653b98', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n3Li\";i:1528856028;}', '1528859628');
INSERT INTO `ims_core_sessions` VALUES ('f1429cd647ae464b2831807272a3538e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b15t\";i:1528856028;}', '1528859628');
INSERT INTO `ims_core_sessions` VALUES ('a47b2f7dd78c156c7bccd43ef66d258b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MD2Z\";i:1528856028;}', '1528859628');
INSERT INTO `ims_core_sessions` VALUES ('2e8c50ada3bd0e66641db3da2a43a82f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tLy1\";i:1528856025;}', '1528859625');
INSERT INTO `ims_core_sessions` VALUES ('1e13d4f242869ae76ff16e000b829e29', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EiCQ\";i:1528856025;}', '1528859625');
INSERT INTO `ims_core_sessions` VALUES ('918c95580d527d2417080fd153cac560', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pfqi\";i:1528856025;}', '1528859625');
INSERT INTO `ims_core_sessions` VALUES ('3b68bd55949442655dd214143fd31957', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cw3Z\";i:1528856024;}', '1528859624');
INSERT INTO `ims_core_sessions` VALUES ('02711035a7782859dc5e2b5970c257cc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cb71\";i:1528856015;}', '1528859615');
INSERT INTO `ims_core_sessions` VALUES ('da0f97d4572762a0b4cb5668975350b3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E5aD\";i:1528856015;}', '1528859615');
INSERT INTO `ims_core_sessions` VALUES ('5781ec695ee0e14279298cbc085ccf4c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"awwo\";i:1528856015;}', '1528859615');
INSERT INTO `ims_core_sessions` VALUES ('ad92cde0635c9c170b8e543f150295a8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IcQU\";i:1528856015;}', '1528859615');
INSERT INTO `ims_core_sessions` VALUES ('a6ea5e74b15d3bf9c8a205a5f7872859', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SocP\";i:1528856002;}', '1528859602');
INSERT INTO `ims_core_sessions` VALUES ('c8db40082863fd3ed3999ba98829c5f9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zgX5\";i:1528856002;}', '1528859602');
INSERT INTO `ims_core_sessions` VALUES ('8a415f3f2bca8e02d21b810f0d93573f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k55e\";i:1528856002;}', '1528859602');
INSERT INTO `ims_core_sessions` VALUES ('372b88c9b90674e911191764a945abd6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N7TH\";i:1528856001;}', '1528859601');
INSERT INTO `ims_core_sessions` VALUES ('db3b19859e4eae36aa93040d3520455a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wd2M\";i:1528855994;}', '1528859594');
INSERT INTO `ims_core_sessions` VALUES ('41b659f03d743220221f8c1b300d0428', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K682\";i:1528855994;}', '1528859594');
INSERT INTO `ims_core_sessions` VALUES ('e34a16efa738551a2fcccecf26fc3b89', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nSWC\";i:1528855994;}', '1528859594');
INSERT INTO `ims_core_sessions` VALUES ('fae15013a2c5857af6e9a958938ebb24', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VBhD\";i:1528855993;}', '1528859593');
INSERT INTO `ims_core_sessions` VALUES ('5af675ab0de77532fb3a37310a3405a7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iTFh\";i:1528855976;}', '1528859576');
INSERT INTO `ims_core_sessions` VALUES ('c2a36ccc8e5d1d545b4e7b86104fd8bc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vcg2\";i:1528855976;}', '1528859576');
INSERT INTO `ims_core_sessions` VALUES ('7e3576d71bcb702eba543382588694c9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Zs6L\";i:1528855976;}', '1528859576');
INSERT INTO `ims_core_sessions` VALUES ('d89e6719d843ca4061c3587864664bfe', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RgOy\";i:1528855976;}', '1528859576');
INSERT INTO `ims_core_sessions` VALUES ('0bd4a0a999c670ef6b5e5ac0d4e3f558', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WGJh\";i:1528855947;}', '1528859547');
INSERT INTO `ims_core_sessions` VALUES ('1b9f600e19d5cb10e2beba8cfd4b56cb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x800\";i:1528855947;}', '1528859547');
INSERT INTO `ims_core_sessions` VALUES ('33068864da5df01b477c47beb6f886ec', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zo7N\";i:1528855947;}', '1528859547');
INSERT INTO `ims_core_sessions` VALUES ('93816cffd4bec20db5d17a72e913d496', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ugem\";i:1528855947;}', '1528859547');
INSERT INTO `ims_core_sessions` VALUES ('21e6d041d6e254aff9b8c059bdc0191c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tnn9\";i:1528855928;}', '1528859528');
INSERT INTO `ims_core_sessions` VALUES ('7edf624e92969e69f46b065a0653ee0f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dMzm\";i:1528855928;}', '1528859528');
INSERT INTO `ims_core_sessions` VALUES ('c597c8b123520539f73b11c94cde7f33', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nD9S\";i:1528855928;}', '1528859528');
INSERT INTO `ims_core_sessions` VALUES ('18094b1d005af79b9c6146a8b1dd5107', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KjU7\";i:1528855928;}', '1528859528');
INSERT INTO `ims_core_sessions` VALUES ('cd642030c2f1b0c1a95e293267494992', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Uc87\";i:1528855924;}', '1528859524');
INSERT INTO `ims_core_sessions` VALUES ('44eb47744eb2c956a34cf24ed6d87893', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cPLr\";i:1528855924;}', '1528859524');
INSERT INTO `ims_core_sessions` VALUES ('96fddccf5ee0f620384ec1776f0c5bec', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y11v\";i:1528855924;}', '1528859524');
INSERT INTO `ims_core_sessions` VALUES ('9d646b71a9efad6c3d879973c66bfc9a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ISRH\";i:1528855924;}', '1528859524');
INSERT INTO `ims_core_sessions` VALUES ('068e4eae96f6cbdd14cd399ec65eaa01', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f9pI\";i:1528855897;}', '1528859497');
INSERT INTO `ims_core_sessions` VALUES ('65f39ec81521f15ac6cc46d55217969a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AHkw\";i:1528855897;}', '1528859497');
INSERT INTO `ims_core_sessions` VALUES ('80f5e76a3d746a9ed08d71039857a63c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cJT8\";i:1528855897;}', '1528859497');
INSERT INTO `ims_core_sessions` VALUES ('c5b1177e8e91c168300ce547586d7119', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r3rn\";i:1528855897;}', '1528859497');
INSERT INTO `ims_core_sessions` VALUES ('a4a5be84f5a30d706279a2c88eea73e8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wrup\";i:1528855873;}', '1528859473');
INSERT INTO `ims_core_sessions` VALUES ('8ec1ac569339634d70a70eda79c59150', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rs1H\";i:1528855873;}', '1528859473');
INSERT INTO `ims_core_sessions` VALUES ('2b95fc0464429ad049591e9b7aad8f98', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g4R3\";i:1528855873;}', '1528859473');
INSERT INTO `ims_core_sessions` VALUES ('4667a4768fe9e784340b584f4927a991', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Zva2\";i:1528855873;}', '1528859473');
INSERT INTO `ims_core_sessions` VALUES ('cefeb52b7f09d0fd2eaf179a3b2eabdf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e5Zw\";i:1528855855;}', '1528859455');
INSERT INTO `ims_core_sessions` VALUES ('38189274fa862c07212514aaa54b8f18', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A5l7\";i:1528855855;}', '1528859455');
INSERT INTO `ims_core_sessions` VALUES ('64c98394c105809c983f5d147ed2c647', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PCu0\";i:1528855854;}', '1528859454');
INSERT INTO `ims_core_sessions` VALUES ('bee08c745d8a8f4434590a0df3d5993c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e9M2\";i:1528855854;}', '1528859454');
INSERT INTO `ims_core_sessions` VALUES ('99d1993f0613dcbc21c70db01754d2fe', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B4y0\";i:1528855851;}', '1528859451');
INSERT INTO `ims_core_sessions` VALUES ('f27d885b8d237950f421facfe269666a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bcOq\";i:1528855851;}', '1528859451');
INSERT INTO `ims_core_sessions` VALUES ('bf95c1d1f93aef3e7ee1b0ac8e4747c8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z838\";i:1528855851;}', '1528859451');
INSERT INTO `ims_core_sessions` VALUES ('c60a98a0fdd87f546282eb1e03243e56', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ObA0\";i:1528855851;}', '1528859451');
INSERT INTO `ims_core_sessions` VALUES ('fab5383f6b15fd13da9258ceaadaba14', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dyz8\";i:1528855743;}', '1528859343');
INSERT INTO `ims_core_sessions` VALUES ('0008e2ab05e568bfc94e7f92b3bb4280', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lb48\";i:1528855743;}', '1528859343');
INSERT INTO `ims_core_sessions` VALUES ('53b91884ddae99b8589bc9e7f51b9fe7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E9EQ\";i:1528855743;}', '1528859343');
INSERT INTO `ims_core_sessions` VALUES ('7682731278927a476319786b571b6b7c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sx0K\";i:1528855743;}', '1528859343');
INSERT INTO `ims_core_sessions` VALUES ('88db16455118d2d6bef89548941b77da', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MkZx\";i:1528855710;}', '1528859310');
INSERT INTO `ims_core_sessions` VALUES ('ba2478cf4c3603aad317da07e87ef45f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zV0h\";i:1528855710;}', '1528859310');
INSERT INTO `ims_core_sessions` VALUES ('eb3d6aa1fe21d6e9e81b71eb637fd7e0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XhQM\";i:1528855710;}', '1528859310');
INSERT INTO `ims_core_sessions` VALUES ('cbbb6fe4666c2efe8b5f3ee47565f57b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kcf9\";i:1528855709;}', '1528859309');
INSERT INTO `ims_core_sessions` VALUES ('ee6f0c4ffdbd7a74cbcf695bc764e5fb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ujj0\";i:1528855691;}', '1528859291');
INSERT INTO `ims_core_sessions` VALUES ('dd732a948f94326779899a8a5686e1ce', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UU67\";i:1528855691;}', '1528859291');
INSERT INTO `ims_core_sessions` VALUES ('f4fadb7a66c91076a32bd1aed60a60eb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r4UY\";i:1528855691;}', '1528859291');
INSERT INTO `ims_core_sessions` VALUES ('9062e7c75476d63cd8e25f6fc95e4ea4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PUlx\";i:1528855690;}', '1528859290');
INSERT INTO `ims_core_sessions` VALUES ('589bcd879a2531e8887d8dbff05064ce', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N66Z\";i:1528855585;}', '1528859185');
INSERT INTO `ims_core_sessions` VALUES ('6a95a56177a3f1280ae5b7eec3be5e33', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dq6z\";i:1528855585;}', '1528859185');
INSERT INTO `ims_core_sessions` VALUES ('62bf711292ce52cef986df8753fa97a7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b8NT\";i:1528855585;}', '1528859185');
INSERT INTO `ims_core_sessions` VALUES ('943c0b013b8efaabe763af9e965ebfc0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qFmn\";i:1528855585;}', '1528859185');
INSERT INTO `ims_core_sessions` VALUES ('154e5285ecfc896ee76528765c1ba6fe', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D5PO\";i:1528855575;}', '1528859175');
INSERT INTO `ims_core_sessions` VALUES ('065ce4ea31c5e7a696ce98561bc06d09', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EOLn\";i:1528855575;}', '1528859175');
INSERT INTO `ims_core_sessions` VALUES ('5292b36e32d9c9dc66133b83254921a1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tuYl\";i:1528855575;}', '1528859175');
INSERT INTO `ims_core_sessions` VALUES ('ea629c23fcaa9b25840cd536e6ece287', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PzcC\";i:1528855574;}', '1528859174');
INSERT INTO `ims_core_sessions` VALUES ('d449be8b8920955cc55334d499840e05', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NXSM\";i:1528855543;}', '1528859143');
INSERT INTO `ims_core_sessions` VALUES ('2023a8da05c13787e3b2b3f4f9ec1001', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xBaK\";i:1528855543;}', '1528859143');
INSERT INTO `ims_core_sessions` VALUES ('76190732ca7e3f31b01181fa8cdf3f3a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b2qK\";i:1528855543;}', '1528859143');
INSERT INTO `ims_core_sessions` VALUES ('3130d889ccd6f94de99a9179c3683c45', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fl6q\";i:1528855543;}', '1528859143');
INSERT INTO `ims_core_sessions` VALUES ('2c4e1c811d03bbc29147bffdc6427fe1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r5M1\";i:1528855507;}', '1528859107');
INSERT INTO `ims_core_sessions` VALUES ('8811437377a8c85d38cc6126ae0d47d4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MKIv\";i:1528855507;}', '1528859107');
INSERT INTO `ims_core_sessions` VALUES ('966e49de665387623d623fa55789e545', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CSIw\";i:1528855507;}', '1528859107');
INSERT INTO `ims_core_sessions` VALUES ('c5abcb726cdb4e1ae8f4d27bd68f0ea8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oA8k\";i:1528855507;}', '1528859107');
INSERT INTO `ims_core_sessions` VALUES ('167515a90ca9fd4d3047c18e3abd8d71', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CWCd\";i:1528855422;}', '1528859022');
INSERT INTO `ims_core_sessions` VALUES ('b85a835f8b859a82f33ebb689bb9c186', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mWnB\";i:1528855421;}', '1528859021');
INSERT INTO `ims_core_sessions` VALUES ('db43dceee98557453f4955e934a5695e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RXww\";i:1528855419;}', '1528859019');
INSERT INTO `ims_core_sessions` VALUES ('18e09caf2a0cb1ffb3fb875852632e8a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cf66\";i:1528855417;}', '1528859017');
INSERT INTO `ims_core_sessions` VALUES ('6676cf22af3037f8ff22729da8c1f433', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t3Ff\";i:1528855416;}', '1528859016');
INSERT INTO `ims_core_sessions` VALUES ('1cd61cd5f30b21389175d1fd28877451', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZsLh\";i:1528855411;}', '1528859011');
INSERT INTO `ims_core_sessions` VALUES ('6b0fdfbba05e51ec4beaaa1e05b1ec50', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LB9X\";i:1528855408;}', '1528859008');
INSERT INTO `ims_core_sessions` VALUES ('61336be672fda9a34ab5b9bea5ab67f3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IuXo\";i:1528855408;}', '1528859008');
INSERT INTO `ims_core_sessions` VALUES ('72314ee19bf71738106a420b2238aca3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B8To\";i:1528855408;}', '1528859008');
INSERT INTO `ims_core_sessions` VALUES ('a53468ca0e6f06d26643cf4347f84e4a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sJN3\";i:1528855407;}', '1528859007');
INSERT INTO `ims_core_sessions` VALUES ('6c8503b22f73bc648114692d932e8f96', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kgic\";i:1528855365;}', '1528858965');
INSERT INTO `ims_core_sessions` VALUES ('7175a2227537b88927127c816043de34', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QTO0\";i:1528855362;}', '1528858962');
INSERT INTO `ims_core_sessions` VALUES ('246dc6a688e5b49be97b4418ee30615e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I62W\";i:1528855361;}', '1528858961');
INSERT INTO `ims_core_sessions` VALUES ('c7356a16a5523be22b2f80dd65ec9016', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JYgx\";i:1528855360;}', '1528858960');
INSERT INTO `ims_core_sessions` VALUES ('2dec549d49b1e6b812669ec68d1c66f9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QluI\";i:1528855358;}', '1528858958');
INSERT INTO `ims_core_sessions` VALUES ('0a507a14ad1e05a21118eb0c3eb06ac2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hsoO\";i:1528855243;}', '1528858843');
INSERT INTO `ims_core_sessions` VALUES ('cd1af6e53d4ef11ded3c659ddc2e4d91', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PE30\";i:1528855243;}', '1528858843');
INSERT INTO `ims_core_sessions` VALUES ('3eed6d02ff68eb4ad6f8f69ceec0dae4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l5wX\";i:1528855243;}', '1528858843');
INSERT INTO `ims_core_sessions` VALUES ('a8d18e3e939a95344ed4fce07c09213e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DWQ5\";i:1528855356;}', '1528858956');
INSERT INTO `ims_core_sessions` VALUES ('e15175c851a923d90bd2889712fd98d1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mG47\";i:1528855354;}', '1528858954');
INSERT INTO `ims_core_sessions` VALUES ('ef5209bd5f07c8de2442a39429aee569', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HG62\";i:1528855353;}', '1528858953');
INSERT INTO `ims_core_sessions` VALUES ('e5d90cbe66e789d89e762498a52646ca', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AMyl\";i:1528855351;}', '1528858951');
INSERT INTO `ims_core_sessions` VALUES ('ffc44c89d5b122fb7a79bcf271470142', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ggqk\";i:1528855345;}', '1528858945');
INSERT INTO `ims_core_sessions` VALUES ('dae0319a88291ec4c44a32d6e4e50c3e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"in6W\";i:1528855345;}', '1528858945');
INSERT INTO `ims_core_sessions` VALUES ('00f7aeabec27cf61c231067dcf9a159e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f46d\";i:1528855345;}', '1528858945');
INSERT INTO `ims_core_sessions` VALUES ('8154dcf34ef18184dc790d1ca61a1340', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mpBG\";i:1528855345;}', '1528858945');
INSERT INTO `ims_core_sessions` VALUES ('0007f865199bea44c1bda125ab604b87', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h657\";i:1528855338;}', '1528858938');
INSERT INTO `ims_core_sessions` VALUES ('9376a99d2ceab747ec536d398115dda4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ht08\";i:1528855338;}', '1528858938');
INSERT INTO `ims_core_sessions` VALUES ('c8593b76ad4cea0fc62cfa3844d8b17c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hV33\";i:1528855338;}', '1528858938');
INSERT INTO `ims_core_sessions` VALUES ('5c077ef3b1985ea6f26958a567e8e10a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N1ZI\";i:1528855338;}', '1528858938');
INSERT INTO `ims_core_sessions` VALUES ('3b8fb47986c93578b72ad60382f1ff50', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bldu\";i:1528855334;}', '1528858934');
INSERT INTO `ims_core_sessions` VALUES ('cefe7c6fb8bd3e69180c2bc9b0bd37df', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qZXp\";i:1528855334;}', '1528858934');
INSERT INTO `ims_core_sessions` VALUES ('f942483dd1a09e288b0f820125513271', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AO3Z\";i:1528855334;}', '1528858934');
INSERT INTO `ims_core_sessions` VALUES ('fdcd4fac1bce4c5d32dea6759f0dfe1c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HoV6\";i:1528855334;}', '1528858934');
INSERT INTO `ims_core_sessions` VALUES ('9ceb01b67704b0302d11733e469963c8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"if20\";i:1528855298;}', '1528858898');
INSERT INTO `ims_core_sessions` VALUES ('8ac50091becc0fc8fb6465839a728162', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Reme\";i:1528855293;}', '1528858893');
INSERT INTO `ims_core_sessions` VALUES ('9d0b3118683146988af617728bd20653', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kq61\";i:1528855293;}', '1528858893');
INSERT INTO `ims_core_sessions` VALUES ('a91100e0874b51e88999d01974eb3960', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K93Z\";i:1528855293;}', '1528858893');
INSERT INTO `ims_core_sessions` VALUES ('f97170521e2a0afc320fd4484286a317', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t7VR\";i:1528855293;}', '1528858893');
INSERT INTO `ims_core_sessions` VALUES ('06de1fba9e12e5f0d800f4c57447c827', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e7VV\";i:1528855238;}', '1528858838');
INSERT INTO `ims_core_sessions` VALUES ('f9aa7ddb3d68cc0a461ee3ccce8030ca', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I87R\";i:1528855247;}', '1528858847');
INSERT INTO `ims_core_sessions` VALUES ('11aaecc5029297e2152be50980128304', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OYok\";i:1528855243;}', '1528858843');
INSERT INTO `ims_core_sessions` VALUES ('c49c97d6c9357ad8c1f6d2046f2f7146', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XP7b\";i:1528855238;}', '1528858838');
INSERT INTO `ims_core_sessions` VALUES ('ebcaf9a945699562ab24f52ca8f895f4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Uzb4\";i:1528855238;}', '1528858838');
INSERT INTO `ims_core_sessions` VALUES ('dda83eb96efbd0521973e36ac90d9744', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sPW0\";i:1528855237;}', '1528858837');
INSERT INTO `ims_core_sessions` VALUES ('6b5e160afc29f29ece86cdd5b2c4825c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HS8P\";i:1528855231;}', '1528858831');
INSERT INTO `ims_core_sessions` VALUES ('39fff7b8d578d3a04a2be36cf0a46b6f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GWRg\";i:1528855231;}', '1528858831');
INSERT INTO `ims_core_sessions` VALUES ('dd9ab407ccdec1c3db09f108a8a05195', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jn0M\";i:1528855231;}', '1528858831');
INSERT INTO `ims_core_sessions` VALUES ('7fbb3625b1806d284630cf3188ebc98a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"REMY\";i:1528855231;}', '1528858831');
INSERT INTO `ims_core_sessions` VALUES ('bda41dd81dd4a4685305b5cb6000b0a7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xOmb\";i:1528855189;}', '1528858789');
INSERT INTO `ims_core_sessions` VALUES ('83eb584f0134d79ec012ca8b1f778ea5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AQLy\";i:1528855182;}', '1528858782');
INSERT INTO `ims_core_sessions` VALUES ('3141532529085ecfd91fcfef444f208b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bCC8\";i:1528855145;}', '1528858745');
INSERT INTO `ims_core_sessions` VALUES ('5b08747f420eef45ec9fd26702398256', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p2Sx\";i:1528855143;}', '1528858743');
INSERT INTO `ims_core_sessions` VALUES ('9c7e651ad5c8272a5a8a83acfd3dedb0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h8Qi\";i:1528855121;}', '1528858721');
INSERT INTO `ims_core_sessions` VALUES ('3d6fffe73427bb3d24b3832405c8944a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YwhL\";i:1528855120;}', '1528858720');
INSERT INTO `ims_core_sessions` VALUES ('ab0e6ccd1125d0b4d81b078c1832d98d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DVM5\";i:1528855120;}', '1528858720');
INSERT INTO `ims_core_sessions` VALUES ('f4e4e96dffea5cc85662db542be44d57', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gFZ9\";i:1528855116;}', '1528858716');
INSERT INTO `ims_core_sessions` VALUES ('0b831bab0246e9d3be02a1b6387e29f1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tjGP\";i:1528855120;}', '1528858720');
INSERT INTO `ims_core_sessions` VALUES ('ab8bfefeb20a1ef2144c2c57146f5d5b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HA6Z\";i:1528855116;}', '1528858716');
INSERT INTO `ims_core_sessions` VALUES ('d1ae269eacefc08626ee57315a62ebac', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pNXf\";i:1528855116;}', '1528858716');
INSERT INTO `ims_core_sessions` VALUES ('b1d667598cd6330cb90f62f6d1c0518e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zI6I\";i:1528855115;}', '1528858715');
INSERT INTO `ims_core_sessions` VALUES ('fbb134553bfdfc5976d3279d303b6715', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rPd3\";i:1528855110;}', '1528858710');
INSERT INTO `ims_core_sessions` VALUES ('f68fa33a8d3e20af05597f1cf1cb06be', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qZQ7\";i:1528855110;}', '1528858710');
INSERT INTO `ims_core_sessions` VALUES ('070d61336e10c1adab722f70cd998d1b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w414\";i:1528855110;}', '1528858710');
INSERT INTO `ims_core_sessions` VALUES ('bc68a91d4a666a553ba1705a234f3d42', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l7Fm\";i:1528855110;}', '1528858710');
INSERT INTO `ims_core_sessions` VALUES ('4f223bb1cef49df7d27549b81a31a3bb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZEHT\";i:1528855104;}', '1528858704');
INSERT INTO `ims_core_sessions` VALUES ('a2014c60aaff013e62675da81b5b4233', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nq52\";i:1528855103;}', '1528858703');
INSERT INTO `ims_core_sessions` VALUES ('765a0a9714daa6b12b70c338b31be9bf', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ch8a\";i:1528855103;}', '1528858703');
INSERT INTO `ims_core_sessions` VALUES ('2fd9cc87b3d3ef43dd71fd36c6d7239e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dLjU\";i:1528855103;}', '1528858703');
INSERT INTO `ims_core_sessions` VALUES ('cdbb2573c7d9723e2916aa449042a65b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x1JB\";i:1528855100;}', '1528858700');
INSERT INTO `ims_core_sessions` VALUES ('5b5ee79f89f6ba56b4d4a8ee78ffdf4c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FPll\";i:1528855100;}', '1528858700');
INSERT INTO `ims_core_sessions` VALUES ('084bda19a66028c30d38d1df9d1038f6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IIAI\";i:1528855100;}', '1528858700');
INSERT INTO `ims_core_sessions` VALUES ('f4736a3b24d526f183828a333e0efaa2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bRzy\";i:1528855092;}', '1528858692');
INSERT INTO `ims_core_sessions` VALUES ('929ec847660529ed734c852d1d4235ea', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xXml\";i:1528797162;}', '1528800762');
INSERT INTO `ims_core_sessions` VALUES ('06d6347ff8654bb1b94408159a714269', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CgPG\";i:1528855100;}', '1528858700');
INSERT INTO `ims_core_sessions` VALUES ('d58ca87af39f6bb838cd9b1711706a15', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FDDD\";i:1528855092;}', '1528858692');
INSERT INTO `ims_core_sessions` VALUES ('4d319d17fdf8a4eaca376a0ade2d6cf2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TjZh\";i:1528855092;}', '1528858692');
INSERT INTO `ims_core_sessions` VALUES ('b127576d05cf494c5ac12e9b81268e80', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IzJG\";i:1528855092;}', '1528858692');
INSERT INTO `ims_core_sessions` VALUES ('fe5788a2c2a8a1944ff7c92d58317c76', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IOFs\";i:1528855080;}', '1528858680');
INSERT INTO `ims_core_sessions` VALUES ('f255a9854b348c97e91d5e73aeaf3b48', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MOr2\";i:1528855080;}', '1528858680');
INSERT INTO `ims_core_sessions` VALUES ('c0f44c4fbf3845db974ebf3890f67d88', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"INBB\";i:1528855079;}', '1528858679');
INSERT INTO `ims_core_sessions` VALUES ('7fe50d141f79254dac343b7bd524b01b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PX0A\";i:1528855079;}', '1528858679');
INSERT INTO `ims_core_sessions` VALUES ('37889b63eeab7e203295d1e92d17df14', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h46g\";i:1528855076;}', '1528858676');
INSERT INTO `ims_core_sessions` VALUES ('192c8fa02775766d469d65221d6bd673', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l5j8\";i:1528855076;}', '1528858676');
INSERT INTO `ims_core_sessions` VALUES ('eb5af49b6cbb444630ae25e55a3cd9fc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cy3a\";i:1528855076;}', '1528858676');
INSERT INTO `ims_core_sessions` VALUES ('ff7e3fd3492e3f71d9b969bdd270c7f9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LzLb\";i:1528855076;}', '1528858676');
INSERT INTO `ims_core_sessions` VALUES ('8846a95a3c838f617f07af5286a1b80d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XG4D\";i:1528855064;}', '1528858664');
INSERT INTO `ims_core_sessions` VALUES ('a1bf431999b82d3c58f85336c450b294', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fj2C\";i:1528855064;}', '1528858664');
INSERT INTO `ims_core_sessions` VALUES ('2f593914bf2eacddf409ae7ef17292dd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p22J\";i:1528855064;}', '1528858664');
INSERT INTO `ims_core_sessions` VALUES ('840ec5655d79b625dce22f33432cb375', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ci2I\";i:1528855064;}', '1528858664');
INSERT INTO `ims_core_sessions` VALUES ('79815be9d93a31b32c9fce9773d84782', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"su0i\";i:1528854867;}', '1528858467');
INSERT INTO `ims_core_sessions` VALUES ('d09ca251c620494cfa3e4c572013948f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NSKE\";i:1528854886;}', '1528858486');
INSERT INTO `ims_core_sessions` VALUES ('86d29f7304d693e90faea54693fb8188', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IGAu\";i:1528854886;}', '1528858486');
INSERT INTO `ims_core_sessions` VALUES ('0326cfab6705c720ea60999ec643953f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XIIs\";i:1528854886;}', '1528858486');
INSERT INTO `ims_core_sessions` VALUES ('83b1ef8bc2cc7363327a6b7a28642255', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SSs4\";i:1528855037;}', '1528858637');
INSERT INTO `ims_core_sessions` VALUES ('d2313a9f83977e489ff73381469dd915', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RNlV\";i:1528855037;}', '1528858637');
INSERT INTO `ims_core_sessions` VALUES ('2c5a814a25359b649a21c52d790886ed', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nDy2\";i:1528855037;}', '1528858637');
INSERT INTO `ims_core_sessions` VALUES ('62d854359c9a1a7bfa3b91b6c4c40078', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xt5D\";i:1528855037;}', '1528858637');
INSERT INTO `ims_core_sessions` VALUES ('22625ee0347361156075609084527cb0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OJ8s\";i:1528854998;}', '1528858598');
INSERT INTO `ims_core_sessions` VALUES ('cd975df00cba1b8699f0a912dd44afbb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A1OT\";i:1528854997;}', '1528858597');
INSERT INTO `ims_core_sessions` VALUES ('f56383e9a60c940d26ed2dc663fd3735', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Vsr9\";i:1528854997;}', '1528858597');
INSERT INTO `ims_core_sessions` VALUES ('e33b70acf5d2b5ba4bbf77b564bcca30', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c8if\";i:1528854997;}', '1528858597');
INSERT INTO `ims_core_sessions` VALUES ('abe33f2a20918e1d6f7a777eccc3c0b3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fLY4\";i:1528854991;}', '1528858591');
INSERT INTO `ims_core_sessions` VALUES ('557f933555e36a0ea3fd81c41eae075e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A4i2\";i:1528854991;}', '1528858591');
INSERT INTO `ims_core_sessions` VALUES ('79145b34ae1d5ad7455024c75ed5d8b3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K46G\";i:1528854990;}', '1528858590');
INSERT INTO `ims_core_sessions` VALUES ('f5d21100e4996a2ea896dea447626108', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yIzV\";i:1528854990;}', '1528858590');
INSERT INTO `ims_core_sessions` VALUES ('e35a868245c6f8af0c5ef6f227201502', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U9YY\";i:1528854972;}', '1528858572');
INSERT INTO `ims_core_sessions` VALUES ('bbfbfaaa188e1a396c4427528c4858d4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RUsY\";i:1528854972;}', '1528858572');
INSERT INTO `ims_core_sessions` VALUES ('54a1d47aa4817b4e30408e4b271d3ae8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"inXL\";i:1528854972;}', '1528858572');
INSERT INTO `ims_core_sessions` VALUES ('d7ac0e8b4fd63315f0bf5e9b86693d12', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xrfz\";i:1528854972;}', '1528858572');
INSERT INTO `ims_core_sessions` VALUES ('7e95c87d2feb43925677840c19875b55', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tQEe\";i:1528854964;}', '1528858564');
INSERT INTO `ims_core_sessions` VALUES ('037baa0ffe38498bfbeadca0aea314c2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zhiC\";i:1528854964;}', '1528858564');
INSERT INTO `ims_core_sessions` VALUES ('2dd5e261ef2239e2fdb2bea3a2c0e64c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m0X8\";i:1528854964;}', '1528858564');
INSERT INTO `ims_core_sessions` VALUES ('0a4bf4ebf5163dbd752c33c9672015df', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aI3K\";i:1528854963;}', '1528858563');
INSERT INTO `ims_core_sessions` VALUES ('846423fc2a9c6304266c86291bec3fd8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yCe7\";i:1528854956;}', '1528858556');
INSERT INTO `ims_core_sessions` VALUES ('0e91ac9d928d6a5e7ed92221c8e59af5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O12d\";i:1528854956;}', '1528858556');
INSERT INTO `ims_core_sessions` VALUES ('493811ce219d5410730a228b2069c0a7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xegh\";i:1528854955;}', '1528858555');
INSERT INTO `ims_core_sessions` VALUES ('6defeb43aa9dfb299f3d7c3272c83352', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vymi\";i:1528854955;}', '1528858555');
INSERT INTO `ims_core_sessions` VALUES ('bd0271205ae1e8312d8a4d1d47172f59', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZsO7\";i:1528854952;}', '1528858552');
INSERT INTO `ims_core_sessions` VALUES ('52cf7166f224a2863b349893b83ce35e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hU0g\";i:1528854952;}', '1528858552');
INSERT INTO `ims_core_sessions` VALUES ('78c7d92317c4c7a96b15c67fee4b605c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wxf2\";i:1528854952;}', '1528858552');
INSERT INTO `ims_core_sessions` VALUES ('4072d8530e2486434cbf4330ef890136', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aHi5\";i:1528854951;}', '1528858551');
INSERT INTO `ims_core_sessions` VALUES ('86cafc36865b9ea06af2b452c6a12247', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i198\";i:1528854948;}', '1528858548');
INSERT INTO `ims_core_sessions` VALUES ('bd2ff183adcd143f4aceb567ed34c02e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I227\";i:1528854948;}', '1528858548');
INSERT INTO `ims_core_sessions` VALUES ('4eeed4c0991346eb431e36090b38c503', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SeH9\";i:1528854948;}', '1528858548');
INSERT INTO `ims_core_sessions` VALUES ('e3b50d9513f5602b9d3ee0a5679fa524', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iWy2\";i:1528854947;}', '1528858547');
INSERT INTO `ims_core_sessions` VALUES ('64c36cf5e5ff4f334d8f934dbf9a4bce', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VGz9\";i:1528854915;}', '1528858515');
INSERT INTO `ims_core_sessions` VALUES ('db9cced864bc6c653347792e59253120', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FZHj\";i:1528854915;}', '1528858515');
INSERT INTO `ims_core_sessions` VALUES ('db1f3915e99b350d299803ec303a90ae', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l2DW\";i:1528854915;}', '1528858515');
INSERT INTO `ims_core_sessions` VALUES ('106c8ed6bf43aec6c31bdfcae16cec66', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xhpt\";i:1528854915;}', '1528858515');
INSERT INTO `ims_core_sessions` VALUES ('d4eaca466aaf509b275be782fcc6d7a6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uHYW\";i:1528854911;}', '1528858511');
INSERT INTO `ims_core_sessions` VALUES ('72e84e2a7cc4954e64c0e5f10717818e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kMtZ\";i:1528854911;}', '1528858511');
INSERT INTO `ims_core_sessions` VALUES ('9769a4f99d23b7c6b695463f5a45a88e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G86A\";i:1528854911;}', '1528858511');
INSERT INTO `ims_core_sessions` VALUES ('f1568d6a4b6ab7f29be2339bb380ca28', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JVeK\";i:1528854911;}', '1528858511');
INSERT INTO `ims_core_sessions` VALUES ('f18a62bbb45ac53c73f10a68a56180c1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cmS9\";i:1528854907;}', '1528858507');
INSERT INTO `ims_core_sessions` VALUES ('4af89106310efd0a6ba709a30fd270af', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ut7B\";i:1528854907;}', '1528858507');
INSERT INTO `ims_core_sessions` VALUES ('752b5fed52e6587f502f72cf806f5895', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xU4L\";i:1528854907;}', '1528858507');
INSERT INTO `ims_core_sessions` VALUES ('1db6daf4833b023b261ed5d7ac674893', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XkEh\";i:1528854907;}', '1528858507');
INSERT INTO `ims_core_sessions` VALUES ('de9edcd1c04a541051fc7b08434e3b2a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BK4B\";i:1528854902;}', '1528858502');
INSERT INTO `ims_core_sessions` VALUES ('4c92a58b743c719e736f7ba446b2d944', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kYyI\";i:1528854902;}', '1528858502');
INSERT INTO `ims_core_sessions` VALUES ('192632c4d6846ca2950b90f71b5b116b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L8MH\";i:1528854902;}', '1528858502');
INSERT INTO `ims_core_sessions` VALUES ('b01cf60d81c828318192bc9af1f1b085', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z6tg\";i:1528854901;}', '1528858501');
INSERT INTO `ims_core_sessions` VALUES ('845d6118d0aacae5bfa4e5d910918e81', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P25Y\";i:1528854867;}', '1528858467');
INSERT INTO `ims_core_sessions` VALUES ('89bf6d0a7a9904ab374b5fd38ee054ab', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PX8q\";i:1528854886;}', '1528858486');
INSERT INTO `ims_core_sessions` VALUES ('1ab170002efd4479bbc2562df34ad6da', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eUjW\";i:1528854867;}', '1528858467');
INSERT INTO `ims_core_sessions` VALUES ('0b95034f4fe2d8c81f8723219cb9ef3e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RfvV\";i:1528854867;}', '1528858467');
INSERT INTO `ims_core_sessions` VALUES ('e10a13819bda51917842f2409a09b165', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WfUA\";i:1528854829;}', '1528858429');
INSERT INTO `ims_core_sessions` VALUES ('0673be405c123f7bb2594ef82bb758df', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZG9F\";i:1528854829;}', '1528858429');
INSERT INTO `ims_core_sessions` VALUES ('9791b0204fcdab0647fc0eb47c63b18b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"drq4\";i:1528854829;}', '1528858429');
INSERT INTO `ims_core_sessions` VALUES ('313bee31b4d604d48c48e4b0e4d4e802', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U0JU\";i:1528854828;}', '1528858428');
INSERT INTO `ims_core_sessions` VALUES ('a161d01769b29585e4a71b6accdaadc1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"stu3\";i:1528854797;}', '1528858397');
INSERT INTO `ims_core_sessions` VALUES ('b1d983e48aa589f0189801088babc1eb', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZRls\";i:1528854797;}', '1528858397');
INSERT INTO `ims_core_sessions` VALUES ('81d5dcea40aeadbc4c2913f9e5ddb37f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qAMS\";i:1528854797;}', '1528858397');
INSERT INTO `ims_core_sessions` VALUES ('61018fb5bacf6d39064681d6f0f7ea36', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tTsO\";i:1528854797;}', '1528858397');
INSERT INTO `ims_core_sessions` VALUES ('d1d6d72337928e596d49d887f4603fdc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uFLb\";i:1528854787;}', '1528858387');
INSERT INTO `ims_core_sessions` VALUES ('b47ad25df9eb0aa7e7729eae8ccf389f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L5Qk\";i:1528854787;}', '1528858387');
INSERT INTO `ims_core_sessions` VALUES ('ecadd86cc76ed71a92abdae6764f32d3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qjl3\";i:1528854787;}', '1528858387');
INSERT INTO `ims_core_sessions` VALUES ('53fa257eadc8c11d538e170449086ca0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"li8y\";i:1528854787;}', '1528858387');
INSERT INTO `ims_core_sessions` VALUES ('e6dc79cfdde94d757563629c56f5f402', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZCcN\";i:1528854734;}', '1528858334');
INSERT INTO `ims_core_sessions` VALUES ('b9f0e0ea4ce785fbf40b5a82a6c44ad7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KTRu\";i:1528854734;}', '1528858334');
INSERT INTO `ims_core_sessions` VALUES ('15d824ec4971327270b8a98334d9b46d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JGTT\";i:1528854734;}', '1528858334');
INSERT INTO `ims_core_sessions` VALUES ('5da6870b09daac25cc96a0d9de969361', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I3SR\";i:1528854734;}', '1528858334');
INSERT INTO `ims_core_sessions` VALUES ('311094170351715eace45c1f25161035', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vilC\";i:1528854727;}', '1528858327');
INSERT INTO `ims_core_sessions` VALUES ('6c75a45d907a23729b525c1a85293d30', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kj5j\";i:1528854727;}', '1528858327');
INSERT INTO `ims_core_sessions` VALUES ('831c4e36b7958221bb0e4e80e0bc36f2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JDRv\";i:1528854727;}', '1528858327');
INSERT INTO `ims_core_sessions` VALUES ('0f682b0cded7581ca1edcd0641e5c213', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eOzN\";i:1528854727;}', '1528858327');
INSERT INTO `ims_core_sessions` VALUES ('7e74602a3263c2c35f648351232ace60', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ke27\";i:1528854676;}', '1528858276');
INSERT INTO `ims_core_sessions` VALUES ('3d8ff4e6b1d1b6ae24b6a955956e4c8b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ctlZ\";i:1528854610;}', '1528858210');
INSERT INTO `ims_core_sessions` VALUES ('0aff5d70841bb74154e78e9f0034cd75', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SEi3\";i:1528854607;}', '1528858207');
INSERT INTO `ims_core_sessions` VALUES ('1e7a254ad8463b697c919a9e5716a33a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fw6R\";i:1528854606;}', '1528858206');
INSERT INTO `ims_core_sessions` VALUES ('05ded1f853a3c185fd9cf350babe85a2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zc10\";i:1528854606;}', '1528858206');
INSERT INTO `ims_core_sessions` VALUES ('5bd5b3d059323471b707997d859f37a9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LWr3\";i:1528854606;}', '1528858206');
INSERT INTO `ims_core_sessions` VALUES ('6bc287fa8aa885e42016888edc34b615', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H8Qq\";i:1528854578;}', '1528858178');
INSERT INTO `ims_core_sessions` VALUES ('f768e63b407570dbfb320c88f8bfaf82', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wyo8\";i:1528854504;}', '1528858104');
INSERT INTO `ims_core_sessions` VALUES ('7093120145251766e8e53632bc8b7a54', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cUuu\";i:1528854504;}', '1528858104');
INSERT INTO `ims_core_sessions` VALUES ('693661236d7d1f8258441fc0fe836f07', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pdll\";i:1528854504;}', '1528858104');
INSERT INTO `ims_core_sessions` VALUES ('de3e1241ccf4d1b98f0c3958eb351919', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S980\";i:1528853665;}', '1528857265');
INSERT INTO `ims_core_sessions` VALUES ('9ac93a8dfbaf07cb9cd760a7b81e1ec1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x9nh\";i:1528854504;}', '1528858104');
INSERT INTO `ims_core_sessions` VALUES ('ec20f30b808a7d22d9580e1ccb5c37b0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fj22\";i:1528854483;}', '1528858083');
INSERT INTO `ims_core_sessions` VALUES ('8e565f21103358c88f5133dd7a0f3bb2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XomD\";i:1528854483;}', '1528858083');
INSERT INTO `ims_core_sessions` VALUES ('4abdf00ee222c10a342ad12645cca2b1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R7Ep\";i:1528854483;}', '1528858083');
INSERT INTO `ims_core_sessions` VALUES ('44f0c2fb78c06db16b0f3314c9a2e364', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"psS8\";i:1528854483;}', '1528858083');
INSERT INTO `ims_core_sessions` VALUES ('d8ff921ee1226ce20f0ad462069b4c4e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e1Sz\";i:1528854471;}', '1528858071');
INSERT INTO `ims_core_sessions` VALUES ('e98a922217b00ac0ea6ecc98e25f3fe8', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OKxr\";i:1528854471;}', '1528858071');
INSERT INTO `ims_core_sessions` VALUES ('e7f350df8bf1a04c274cf304579c0293', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FrrB\";i:1528854470;}', '1528858070');
INSERT INTO `ims_core_sessions` VALUES ('c6f119a12942c679d64828ecb9eced3a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I8w0\";i:1528854470;}', '1528858070');
INSERT INTO `ims_core_sessions` VALUES ('6f61eb43f3fff13abb29cf79fe9117a0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IK21\";i:1528854390;}', '1528857990');
INSERT INTO `ims_core_sessions` VALUES ('f05cd261e8137da71eb3a7cda84c07de', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E8ct\";i:1528854390;}', '1528857990');
INSERT INTO `ims_core_sessions` VALUES ('4217b69b628d7e90fba3ef97d64e0b6c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TYVX\";i:1528854390;}', '1528857990');
INSERT INTO `ims_core_sessions` VALUES ('d49e3d1de0c34ee6c769734934091813', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rl7E\";i:1528854390;}', '1528857990');
INSERT INTO `ims_core_sessions` VALUES ('b00808fd8053b74a27f43be0751b985a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u909\";i:1528854352;}', '1528857952');
INSERT INTO `ims_core_sessions` VALUES ('54d4ec52f57e39d4d2829176ffac8d52', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pT3p\";i:1528854352;}', '1528857952');
INSERT INTO `ims_core_sessions` VALUES ('4d1c5ab5ae44db597b07134ed896afb7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BVrb\";i:1528854352;}', '1528857952');
INSERT INTO `ims_core_sessions` VALUES ('5598a19faca212f67f730ea0476e8d58', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bqr3\";i:1528854352;}', '1528857952');
INSERT INTO `ims_core_sessions` VALUES ('fd3dd34b765ae85e1b9772f7f2033453', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Odf4\";i:1528854258;}', '1528857858');
INSERT INTO `ims_core_sessions` VALUES ('a07a47cdd87d1fe0af5eb0daf11de825', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r80B\";i:1528854248;}', '1528857848');
INSERT INTO `ims_core_sessions` VALUES ('cb05382bcb26b3cc757ebb0beeaa09be', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Tgef\";i:1528854248;}', '1528857848');
INSERT INTO `ims_core_sessions` VALUES ('a981083f77128ee7a999bf1796e3bd0c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pl16\";i:1528854248;}', '1528857848');
INSERT INTO `ims_core_sessions` VALUES ('6aeaa4ffb6d7585d7663b0b18ea4add7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kCWy\";i:1528854248;}', '1528857848');
INSERT INTO `ims_core_sessions` VALUES ('03605df0135c0ae4856d9c273aa20c76', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ovav\";i:1528854240;}', '1528857840');
INSERT INTO `ims_core_sessions` VALUES ('d1fb44f35f66870239783a711817cbe6', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N1JV\";i:1528854240;}', '1528857840');
INSERT INTO `ims_core_sessions` VALUES ('35a7e8f44c4de8d1a8674f7eaa9a105e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k909\";i:1528854240;}', '1528857840');
INSERT INTO `ims_core_sessions` VALUES ('4c735875d8900a91ca9bf66534c8aa50', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"utT0\";i:1528854240;}', '1528857840');
INSERT INTO `ims_core_sessions` VALUES ('91dda918ce13bf39011dd1c5771c676c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"islE\";i:1528854231;}', '1528857831');
INSERT INTO `ims_core_sessions` VALUES ('18615be6892b3b05fc5a290d2899da68', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bPrY\";i:1528854230;}', '1528857830');
INSERT INTO `ims_core_sessions` VALUES ('4f2949e9245a22f9aa16f43851b05548', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iF0W\";i:1528854230;}', '1528857830');
INSERT INTO `ims_core_sessions` VALUES ('545b9a813f23638a7d9ee5bcb75050c0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oQ9g\";i:1528854230;}', '1528857830');
INSERT INTO `ims_core_sessions` VALUES ('869baeca5eae3a41aa2b9031505df75f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ipZo\";i:1528854221;}', '1528857821');
INSERT INTO `ims_core_sessions` VALUES ('8648c2876e7ad015935a432966f36d48', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vBAe\";i:1528854221;}', '1528857821');
INSERT INTO `ims_core_sessions` VALUES ('4b97d445d6d9e4eb17f03f92fb903460', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YoMW\";i:1528854221;}', '1528857821');
INSERT INTO `ims_core_sessions` VALUES ('0078ab6473273d71d69d14f9ffbcd2c4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mJjB\";i:1528854221;}', '1528857821');
INSERT INTO `ims_core_sessions` VALUES ('c2c391c849421af2dc8220be8b75d129', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pZkj\";i:1528854191;}', '1528857791');
INSERT INTO `ims_core_sessions` VALUES ('6712456a7b71486da7bb75c3ae2b4330', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hekr\";i:1528854191;}', '1528857791');
INSERT INTO `ims_core_sessions` VALUES ('bbeb34d8d522253f466aaba7ea3c39de', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BoJ8\";i:1528854190;}', '1528857790');
INSERT INTO `ims_core_sessions` VALUES ('7acbc32e5c7da56dfd9bf13b1c1a47f0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wy6P\";i:1528854190;}', '1528857790');
INSERT INTO `ims_core_sessions` VALUES ('959aab7f581e896627677ed09d4809cc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nYUs\";i:1528854162;}', '1528857762');
INSERT INTO `ims_core_sessions` VALUES ('8411901b4a4a6e4ff47aa9de7263017a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SSh0\";i:1528854162;}', '1528857762');
INSERT INTO `ims_core_sessions` VALUES ('04586380c446e964f4bea5097d9870dd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z8jz\";i:1528854162;}', '1528857762');
INSERT INTO `ims_core_sessions` VALUES ('ee1c33350cd5340c8925d9eb031e9b5d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Oq78\";i:1528854162;}', '1528857762');
INSERT INTO `ims_core_sessions` VALUES ('aab374aa4eba56abaf9abdb07e326c4c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qCfB\";i:1528854102;}', '1528857702');
INSERT INTO `ims_core_sessions` VALUES ('eee6792a09d504fb92230647fb26a62d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kv0I\";i:1528854097;}', '1528857697');
INSERT INTO `ims_core_sessions` VALUES ('1c92e8587bacc267c1f0f9d37eae021f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x41m\";i:1528854090;}', '1528857690');
INSERT INTO `ims_core_sessions` VALUES ('fa641810a8f7902d59be074ee4e2fb19', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R45x\";i:1528854086;}', '1528857686');
INSERT INTO `ims_core_sessions` VALUES ('8f3ce3a4f887bafbe03891e5bb6582f7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NdfD\";i:1528854086;}', '1528857686');
INSERT INTO `ims_core_sessions` VALUES ('765a59fadabfb9f8a5b8a2184eef707d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GnBH\";i:1528854086;}', '1528857686');
INSERT INTO `ims_core_sessions` VALUES ('039eb27d91fd8bc7adb1582b85b64592', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vroR\";i:1528854086;}', '1528857686');
INSERT INTO `ims_core_sessions` VALUES ('9c872b1c58ab3363bf85f0257a23a2a7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vt3u\";i:1528854059;}', '1528857659');
INSERT INTO `ims_core_sessions` VALUES ('58c9f56b8abcfa632b165d7a7569acbc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UwWI\";i:1528854024;}', '1528857624');
INSERT INTO `ims_core_sessions` VALUES ('a9216228be9fa35d1154b499f033be1a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nlJ7\";i:1528854024;}', '1528857624');
INSERT INTO `ims_core_sessions` VALUES ('0a8e00e5363394ab0279f30a41e7c029', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O5vg\";i:1528854024;}', '1528857624');
INSERT INTO `ims_core_sessions` VALUES ('a1cdb1748e37da8b15cb5399aa7767ec', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D8qY\";i:1528854023;}', '1528857623');
INSERT INTO `ims_core_sessions` VALUES ('8924d3fa66e32578f6f3fe5b6f46d05e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lB0b\";i:1528853961;}', '1528857561');
INSERT INTO `ims_core_sessions` VALUES ('bcc6c4d14f3c45918961bd8959e724a3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xm79\";i:1528853948;}', '1528857548');
INSERT INTO `ims_core_sessions` VALUES ('712e12645955efd2aee0e4ec045579a3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"goe8\";i:1528853947;}', '1528857547');
INSERT INTO `ims_core_sessions` VALUES ('1330ccbdd284ff8b034dffc197441904', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xupA\";i:1528853947;}', '1528857547');
INSERT INTO `ims_core_sessions` VALUES ('02658812ee100a1dbf44e6cd531007a4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YWwp\";i:1528853947;}', '1528857547');
INSERT INTO `ims_core_sessions` VALUES ('dbe0961d532826c1d5239794d8afc3a5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZFJm\";i:1528853939;}', '1528857539');
INSERT INTO `ims_core_sessions` VALUES ('b557b404b94d80502262b8287535eb9e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P8I7\";i:1528853939;}', '1528857539');
INSERT INTO `ims_core_sessions` VALUES ('f36e0d4eab4bdc84dc9f22f0ddc652bc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z911\";i:1528853939;}', '1528857539');
INSERT INTO `ims_core_sessions` VALUES ('c5e2f7d4ef918e7d0446e1cd34cff97b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m3Dk\";i:1528853938;}', '1528857538');
INSERT INTO `ims_core_sessions` VALUES ('740c433d99a3e8350771b5a9473ad35e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LW3I\";i:1528853932;}', '1528857532');
INSERT INTO `ims_core_sessions` VALUES ('992e2c6cf939f278597a2674ab686016', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zhIE\";i:1528853932;}', '1528857532');
INSERT INTO `ims_core_sessions` VALUES ('2b3251610a2029067a9faeb68642440e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ee4s\";i:1528853932;}', '1528857532');
INSERT INTO `ims_core_sessions` VALUES ('6bed0963ef609564bb0491ee046f6684', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WQJk\";i:1528853932;}', '1528857532');
INSERT INTO `ims_core_sessions` VALUES ('270c98e313d45989057b46831047c27f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YGee\";i:1528853920;}', '1528857520');
INSERT INTO `ims_core_sessions` VALUES ('19b0740e880161bb437e2d2964930831', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rs4Y\";i:1528853920;}', '1528857520');
INSERT INTO `ims_core_sessions` VALUES ('e742fc907b24b4846ab8dfd8baced753', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SXAX\";i:1528853920;}', '1528857520');
INSERT INTO `ims_core_sessions` VALUES ('38e3f75d8748d2bca1735ca782ce03dc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Tb3y\";i:1528853920;}', '1528857520');
INSERT INTO `ims_core_sessions` VALUES ('23998eabd907ed64e54d49e5de012b72', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OpRK\";i:1528853906;}', '1528857506');
INSERT INTO `ims_core_sessions` VALUES ('e28da12e75f794170db3ab43b3c521e2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rrB3\";i:1528853906;}', '1528857506');
INSERT INTO `ims_core_sessions` VALUES ('108461045c3b18a4e7780e21c4ad590f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WK5C\";i:1528853906;}', '1528857506');
INSERT INTO `ims_core_sessions` VALUES ('0fddc302dbeb9f5c270568cde0933ff4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g76i\";i:1528853906;}', '1528857506');
INSERT INTO `ims_core_sessions` VALUES ('a83b7cca8e859a4a902b6fee957bab27', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jNSl\";i:1528853897;}', '1528857497');
INSERT INTO `ims_core_sessions` VALUES ('523b0d549ef90b5c2a3d9862f979d376', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FIio\";i:1528853897;}', '1528857497');
INSERT INTO `ims_core_sessions` VALUES ('12c859514b2661d444f90cac328093f7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l8iE\";i:1528853897;}', '1528857497');
INSERT INTO `ims_core_sessions` VALUES ('03d70663f947736409049010896dc165', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ULZ4\";i:1528853897;}', '1528857497');
INSERT INTO `ims_core_sessions` VALUES ('81b5eaa6fb1ac39572e78748acac7853', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m4Rp\";i:1528853856;}', '1528857456');
INSERT INTO `ims_core_sessions` VALUES ('744fe36e282b39ac1764b70684fd6477', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rgDG\";i:1528853851;}', '1528857451');
INSERT INTO `ims_core_sessions` VALUES ('79a3c5313523afab61df28bef578949d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B6nN\";i:1528853837;}', '1528857437');
INSERT INTO `ims_core_sessions` VALUES ('632d488737582d21378142771b1536ba', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fq0T\";i:1528853837;}', '1528857437');
INSERT INTO `ims_core_sessions` VALUES ('a9f90929763155df87134e2a1185c1f9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ff87\";i:1528853837;}', '1528857437');
INSERT INTO `ims_core_sessions` VALUES ('2a752262a2a37dfa52c97cb487eef688', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"exug\";i:1528853837;}', '1528857437');
INSERT INTO `ims_core_sessions` VALUES ('246d2d7eb5a1562808e6c2c358b56310', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LXd9\";i:1528853819;}', '1528857419');
INSERT INTO `ims_core_sessions` VALUES ('b90eb89e80425cb94574f01ca632b711', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dB1z\";i:1528853819;}', '1528857419');
INSERT INTO `ims_core_sessions` VALUES ('e866c6dc6f61e7b82b2e6721f7a2d82f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uR6R\";i:1528853818;}', '1528857418');
INSERT INTO `ims_core_sessions` VALUES ('a65b8059a50931bbda58e4a4d40e8d84', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y4aI\";i:1528853818;}', '1528857418');
INSERT INTO `ims_core_sessions` VALUES ('bc2cd7371d52f6f82848e01c8e2a0788', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lnNu\";i:1528853751;}', '1528857351');
INSERT INTO `ims_core_sessions` VALUES ('f6ce94b6b6486be5f670ecfed1f64829', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"imR7\";i:1528853751;}', '1528857351');
INSERT INTO `ims_core_sessions` VALUES ('f9f81614f66a8e5b8ce684013b2df1c3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qhRP\";i:1528853751;}', '1528857351');
INSERT INTO `ims_core_sessions` VALUES ('5694b5bab133a7c0a92efcf63438e4a3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gz83\";i:1528853751;}', '1528857351');
INSERT INTO `ims_core_sessions` VALUES ('578e35eb9c2f0f5aced71ea7fdfcd2a0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WZ86\";i:1528853712;}', '1528857312');
INSERT INTO `ims_core_sessions` VALUES ('efe958f7529a6cdb60cfb86a85b01034', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lpTm\";i:1528853712;}', '1528857312');
INSERT INTO `ims_core_sessions` VALUES ('ffbf693e83f0bb1b4accfd1861f2ef22', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SMiv\";i:1528853712;}', '1528857312');
INSERT INTO `ims_core_sessions` VALUES ('30cc950670c2bf9510012f313b44eafc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kDAu\";i:1528853712;}', '1528857312');
INSERT INTO `ims_core_sessions` VALUES ('6cf55c29eba37ec7dff9ce3e5f9966a3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wCYo\";i:1528853679;}', '1528857279');
INSERT INTO `ims_core_sessions` VALUES ('d8aa106f5ec3b3db952a45aa4a610274', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XE1e\";i:1528853678;}', '1528857278');
INSERT INTO `ims_core_sessions` VALUES ('3693c9791a1b58eb919cece3358fed40', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qp2b\";i:1528853678;}', '1528857278');
INSERT INTO `ims_core_sessions` VALUES ('46a35cb460c48d465deaa52a82717dfd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y05m\";i:1528853678;}', '1528857278');
INSERT INTO `ims_core_sessions` VALUES ('09a2bc8c1403eee5e0807c1d54946c8a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r6BQ\";i:1528853673;}', '1528857273');
INSERT INTO `ims_core_sessions` VALUES ('17b7c11bce9f38ffd8433c9417ee25b5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C33l\";i:1528853673;}', '1528857273');
INSERT INTO `ims_core_sessions` VALUES ('cb6c6cba4811b5a1c9286b4cf9fa7eb5', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nevb\";i:1528853673;}', '1528857273');
INSERT INTO `ims_core_sessions` VALUES ('e6b8d21536babf503fa10fa020bdfb34', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jUEu\";i:1528853672;}', '1528857272');
INSERT INTO `ims_core_sessions` VALUES ('43bebd414104425fe2ff9302c878c843', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sxE4\";i:1528853665;}', '1528857265');
INSERT INTO `ims_core_sessions` VALUES ('d09cf19e2ae116988cd522a94f17c264', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B0p8\";i:1528853665;}', '1528857265');
INSERT INTO `ims_core_sessions` VALUES ('006cb394b128de52b3e352e9af80d983', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s3dd\";i:1528853665;}', '1528857265');
INSERT INTO `ims_core_sessions` VALUES ('47a8c23cdb6d14b7e0ba6ac6b9bce77d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mg2Q\";i:1528853648;}', '1528857248');
INSERT INTO `ims_core_sessions` VALUES ('d3999346eaf0a13268e2573874356cac', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zpbP\";i:1528853648;}', '1528857248');
INSERT INTO `ims_core_sessions` VALUES ('6805b5d2d08bee6de7675d8c4a7eb4b1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZxlY\";i:1528853648;}', '1528857248');
INSERT INTO `ims_core_sessions` VALUES ('421240bd283285ae5695a9b4225a0f2c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m1iA\";i:1528853644;}', '1528857244');
INSERT INTO `ims_core_sessions` VALUES ('e4f8c43b39709a70a2600dd709176922', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mtNr\";i:1528853647;}', '1528857247');
INSERT INTO `ims_core_sessions` VALUES ('ef635dba414de332739a26a4cd98e19b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Et62\";i:1528853644;}', '1528857244');
INSERT INTO `ims_core_sessions` VALUES ('788c4998f31c4279901320787a8a0726', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PRhL\";i:1528853644;}', '1528857244');
INSERT INTO `ims_core_sessions` VALUES ('17ad7d7dbee8f8b131cf7d0e159a60ea', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f4Ld\";i:1528853644;}', '1528857244');
INSERT INTO `ims_core_sessions` VALUES ('523a6f0d568079ebe56eefed2dd4ec6b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MqDh\";i:1528853637;}', '1528857237');
INSERT INTO `ims_core_sessions` VALUES ('865ba6fd17d68798f136e2e84f396397', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ERRy\";i:1528853637;}', '1528857237');
INSERT INTO `ims_core_sessions` VALUES ('257d919431614365bb75b1ffd547dcf1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C0GJ\";i:1528853637;}', '1528857237');
INSERT INTO `ims_core_sessions` VALUES ('8ffea4b2c886be48e38080c01df6159f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vLZf\";i:1528853637;}', '1528857237');
INSERT INTO `ims_core_sessions` VALUES ('4b1b4f65d3f9b9bd282ced92d47ea9b4', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lk1F\";i:1528853626;}', '1528857226');
INSERT INTO `ims_core_sessions` VALUES ('24b0862889f9507c5220107851da307e', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JCVf\";i:1528853625;}', '1528857225');
INSERT INTO `ims_core_sessions` VALUES ('0d678ea9cc70aaacf93586065835de03', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j7o9\";i:1528853625;}', '1528857225');
INSERT INTO `ims_core_sessions` VALUES ('cb1bed239b9bf7784fefe8a194059f33', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cQPE\";i:1528853625;}', '1528857225');
INSERT INTO `ims_core_sessions` VALUES ('c8e52e9b7d1ac3e0bf47bc7b0f8e5c6c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vBT0\";i:1528853606;}', '1528857206');
INSERT INTO `ims_core_sessions` VALUES ('7c43a3ad4023ab510ffd8aa106417956', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hbte\";i:1528853606;}', '1528857206');
INSERT INTO `ims_core_sessions` VALUES ('1e5c4ba2bb95b806a0b5263b645abefd', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RqGk\";i:1528853606;}', '1528857206');
INSERT INTO `ims_core_sessions` VALUES ('96717f977230ee5c6d86d08a1fa60448', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P88I\";i:1528853606;}', '1528857206');
INSERT INTO `ims_core_sessions` VALUES ('890e0e95fad928858796f7e8b2b7b71b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Zpz4\";i:1528853559;}', '1528857159');
INSERT INTO `ims_core_sessions` VALUES ('596f38d55940e3367a68618cbbf0ed72', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wCwh\";i:1528853559;}', '1528857159');
INSERT INTO `ims_core_sessions` VALUES ('432e440330a685f7791ab0f02052556b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d5G5\";i:1528853559;}', '1528857159');
INSERT INTO `ims_core_sessions` VALUES ('f1fe4dc26f3ecf6dc24e226f633070b3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p9Ko\";i:1528853559;}', '1528857159');
INSERT INTO `ims_core_sessions` VALUES ('61fb0283f12a014832aafacf3f74030a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z0G0\";i:1528853547;}', '1528857147');
INSERT INTO `ims_core_sessions` VALUES ('611622492ffcdba7b3f870bbd54bc66f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kZ33\";i:1528853547;}', '1528857147');
INSERT INTO `ims_core_sessions` VALUES ('7161bbd76b3a3ebeac3d1d075b0e9685', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"azCm\";i:1528853547;}', '1528857147');
INSERT INTO `ims_core_sessions` VALUES ('7b50ee69fd70a12b2de6c56f98255fae', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KBFg\";i:1528853547;}', '1528857147');
INSERT INTO `ims_core_sessions` VALUES ('f76b66e18012026d08b29cfe7551656c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HUac\";i:1528853535;}', '1528857135');
INSERT INTO `ims_core_sessions` VALUES ('8255204397e0528bc7ef469a23bc9fad', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rjW3\";i:1528853535;}', '1528857135');
INSERT INTO `ims_core_sessions` VALUES ('95e0a9419bb04aae96cd1783a15e92d7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T8PW\";i:1528853535;}', '1528857135');
INSERT INTO `ims_core_sessions` VALUES ('7c442b2c1d0e120260ba24a46110163a', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vipx\";i:1528853534;}', '1528857134');
INSERT INTO `ims_core_sessions` VALUES ('5e9d4a659298152553df582b1f5739ae', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"leXH\";i:1528853529;}', '1528857129');
INSERT INTO `ims_core_sessions` VALUES ('7de722a0d7fa9aad79f8eeb9b6cce1db', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wLuc\";i:1528853528;}', '1528857128');
INSERT INTO `ims_core_sessions` VALUES ('c78d1c983140ef4a45a1e6188bf6219d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hRvo\";i:1528853528;}', '1528857128');
INSERT INTO `ims_core_sessions` VALUES ('76b34067445e8c90157942740d66e11f', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nhub\";i:1528853528;}', '1528857128');
INSERT INTO `ims_core_sessions` VALUES ('d8b4c0f42246629750aac6fdbaded1e3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j0BZ\";i:1528853522;}', '1528857122');
INSERT INTO `ims_core_sessions` VALUES ('d07093d0c0a34ed89d7215069e5515ef', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i7fn\";i:1528853522;}', '1528857122');
INSERT INTO `ims_core_sessions` VALUES ('b873dbaf0557cb8f809c08729d83cc0d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LE3e\";i:1528853522;}', '1528857122');
INSERT INTO `ims_core_sessions` VALUES ('a62cd4dd706e6694735f29f3d818c94b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V0aa\";i:1528853522;}', '1528857122');
INSERT INTO `ims_core_sessions` VALUES ('35e16137ee2887d646bec510f7bdc3cc', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YMq9\";i:1528853509;}', '1528857109');
INSERT INTO `ims_core_sessions` VALUES ('670b4b0e3a8756e4603d45110707a5d7', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cUuc\";i:1528853509;}', '1528857109');
INSERT INTO `ims_core_sessions` VALUES ('584d652ad2d00d52f9a0e0424260b606', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XOha\";i:1528853509;}', '1528857109');
INSERT INTO `ims_core_sessions` VALUES ('59b50c5531e40fba4d9330b41878c41d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z3pC\";i:1528853509;}', '1528857109');
INSERT INTO `ims_core_sessions` VALUES ('843853a2b2128533ddb2dc2118c437aa', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m83f\";i:1528853494;}', '1528857094');
INSERT INTO `ims_core_sessions` VALUES ('c6f8e1164fe1c783b1e42c4f6568be37', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jR8k\";i:1528853494;}', '1528857094');
INSERT INTO `ims_core_sessions` VALUES ('b215425ff0086ee9b099250fbcd38ef2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S0KL\";i:1528853494;}', '1528857094');
INSERT INTO `ims_core_sessions` VALUES ('5b37e374ff18a7e8b79352f858dc459b', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l55L\";i:1528853493;}', '1528857093');
INSERT INTO `ims_core_sessions` VALUES ('26ec7e2097c01fa67a41fc7289ed33e0', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tVIR\";i:1528852975;}', '1528856575');
INSERT INTO `ims_core_sessions` VALUES ('06f82a2240cdddd12f7e3427a6c842d1', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I4m0\";i:1528852948;}', '1528856548');
INSERT INTO `ims_core_sessions` VALUES ('a62f195e6cb7a55cc7abe39ce4892558', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jli3\";i:1528852947;}', '1528856547');
INSERT INTO `ims_core_sessions` VALUES ('3368bb6068740ed7dc3442b2b67581e9', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bRo5\";i:1528852947;}', '1528856547');
INSERT INTO `ims_core_sessions` VALUES ('cd5d69639362c009904bdc02f12790d2', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uR7Y\";i:1528852947;}', '1528856547');
INSERT INTO `ims_core_sessions` VALUES ('7d4fc50873bb7284dcddaac0cf4fa32d', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bg66\";i:1528852921;}', '1528856521');
INSERT INTO `ims_core_sessions` VALUES ('16d4eb0ef7641efe7c9830c71bdc0586', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xrOT\";i:1528852606;}', '1528856206');
INSERT INTO `ims_core_sessions` VALUES ('20758f44550836ba33ddcbdf33dce2e3', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dnTP\";i:1528852606;}', '1528856206');
INSERT INTO `ims_core_sessions` VALUES ('9d85c066f6761480c11e38e3e0c0e55c', '2', '123.9.216.83', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mpE8\";i:1528852606;}', '1528856206');
INSERT INTO `ims_core_sessions` VALUES ('dadf6f7ba2887eaa400b7f917dd4454b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e7MD\";i:1528800810;}', '1528804410');
INSERT INTO `ims_core_sessions` VALUES ('5a2b2374e8be8e85f97513702033e2ad', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OKC4\";i:1528800806;}', '1528804406');
INSERT INTO `ims_core_sessions` VALUES ('a4f516f3e1bef65a0fd1e0c7f91a700d', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G15M\";i:1528800806;}', '1528804406');
INSERT INTO `ims_core_sessions` VALUES ('9cbf8aff8f858c543282d0fb709baecd', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Vxq2\";i:1528800806;}', '1528804406');
INSERT INTO `ims_core_sessions` VALUES ('0abc6743b8e5e5da56016827c48cd878', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U1s6\";i:1528800805;}', '1528804405');
INSERT INTO `ims_core_sessions` VALUES ('e50d83b3e12c05fa633ffbd23a1d7078', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IidY\";i:1528800790;}', '1528804390');
INSERT INTO `ims_core_sessions` VALUES ('b1bbdffe5d8ddb21528f08af693fcf23', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p6pt\";i:1528800790;}', '1528804390');
INSERT INTO `ims_core_sessions` VALUES ('81e5a8d24e262870ba260a2393ab7cae', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U100\";i:1528800790;}', '1528804390');
INSERT INTO `ims_core_sessions` VALUES ('3d609ebbb4b37efc0f5f4372c76bda59', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g5Sf\";i:1528800789;}', '1528804389');
INSERT INTO `ims_core_sessions` VALUES ('0a2e2c239d7c86a8474edba1bfa59632', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DA75\";i:1528800776;}', '1528804376');
INSERT INTO `ims_core_sessions` VALUES ('5d96c6538c3b76ef98da9eba123be474', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A6xP\";i:1528800776;}', '1528804376');
INSERT INTO `ims_core_sessions` VALUES ('562af39fbab1ae7f8fc2eb4371cd1f76', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A26Z\";i:1528800776;}', '1528804376');
INSERT INTO `ims_core_sessions` VALUES ('42f3b625c44b804a5a4dc4f7705cade0', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rkK7\";i:1528800776;}', '1528804376');
INSERT INTO `ims_core_sessions` VALUES ('ff2f65141d649ee3536ad761ea62d203', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MV0z\";i:1528800745;}', '1528804345');
INSERT INTO `ims_core_sessions` VALUES ('e7578372c0e86170db90a9caaadb0846', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eiqT\";i:1528800742;}', '1528804342');
INSERT INTO `ims_core_sessions` VALUES ('9d7d1e5bc54db792d0737e0668549d79', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CTTt\";i:1528800742;}', '1528804342');
INSERT INTO `ims_core_sessions` VALUES ('3bfbdbba06318593f83680ab0a39adae', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uOPs\";i:1528800742;}', '1528804342');
INSERT INTO `ims_core_sessions` VALUES ('439cc56593b87cae1f334228503b688b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R92q\";i:1528800742;}', '1528804342');
INSERT INTO `ims_core_sessions` VALUES ('0fa290218aee1bef0ba67a47cf158c44', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rb83\";i:1528800717;}', '1528804317');
INSERT INTO `ims_core_sessions` VALUES ('f9db680213402680cfbb47b0f231fe96', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a2k9\";i:1528800714;}', '1528804314');
INSERT INTO `ims_core_sessions` VALUES ('a429694cdb623cf98a62b30ff027df39', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vp7E\";i:1528800714;}', '1528804314');
INSERT INTO `ims_core_sessions` VALUES ('9497b45559fb9dfb7fb7dd4f3245a124', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s5iK\";i:1528800714;}', '1528804314');
INSERT INTO `ims_core_sessions` VALUES ('774d0349f75f7fb6388856a97d5a00c3', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j5Ng\";i:1528800713;}', '1528804313');
INSERT INTO `ims_core_sessions` VALUES ('8cb4214a671a1a76e05221f7c79d8e4b', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x22z\";i:1528800662;}', '1528804262');
INSERT INTO `ims_core_sessions` VALUES ('69b83f5aa1d35549c81c3b78cfe38fb8', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J4TW\";i:1528800656;}', '1528804256');
INSERT INTO `ims_core_sessions` VALUES ('8d44c82cb67ede04b62e53b8507947ab', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OV3d\";i:1528800656;}', '1528804256');
INSERT INTO `ims_core_sessions` VALUES ('53e2b5da0b100fd4a98b6fe81718f5bd', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d3gX\";i:1528800656;}', '1528804256');
INSERT INTO `ims_core_sessions` VALUES ('50fffd3b1dff87cf8f0a96c308156c0a', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j4gD\";i:1528800656;}', '1528804256');
INSERT INTO `ims_core_sessions` VALUES ('98113aac626a8d110ebff37e197a3b27', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xh88\";i:1528800650;}', '1528804250');
INSERT INTO `ims_core_sessions` VALUES ('80dfc8806e11ba26a6138935459e42ff', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UF2e\";i:1528800650;}', '1528804250');
INSERT INTO `ims_core_sessions` VALUES ('43081d13dc9c304cf8dc474dd2f7d4b6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m001\";i:1528800650;}', '1528804250');
INSERT INTO `ims_core_sessions` VALUES ('7c9066341744125bbe611b8f913b26de', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NzBv\";i:1528800650;}', '1528804250');
INSERT INTO `ims_core_sessions` VALUES ('5a2c9da4a8cc1b645f8c211fd96140f6', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oA93\";i:1528800643;}', '1528804243');
INSERT INTO `ims_core_sessions` VALUES ('6a80319effecfa666f70bba010fed238', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WMzA\";i:1528800334;}', '1528803934');
INSERT INTO `ims_core_sessions` VALUES ('c61e9758a5a40076d91188864def8e83', '2', '120.194.35.178', 'acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ezhY\";i:1528800334;}', '1528803934');

-- ----------------------------
-- Table structure for ims_core_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_settings`;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_core_settings
-- ----------------------------
INSERT INTO `ims_core_settings` VALUES ('copyright', 'a:29:{s:6:\"status\";i:0;s:10:\"verifycode\";i:0;s:6:\"reason\";s:0:\"\";s:8:\"sitename\";s:12:\"网站设置\";s:3:\"url\";s:20:\"http://www.baidu.com\";s:8:\"statcode\";s:0:\"\";s:10:\"footerleft\";s:18:\"后台管理系统\";s:11:\"footerright\";s:18:\"后台管理系统\";s:4:\"icon\";s:0:\"\";s:5:\"flogo\";s:0:\"\";s:14:\"background_img\";s:0:\"\";s:6:\"slides\";s:216:\"a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}\";s:6:\"notice\";s:0:\"\";s:5:\"blogo\";s:0:\"\";s:8:\"baidumap\";a:2:{s:3:\"lng\";s:0:\"\";s:3:\"lat\";s:0:\"\";}s:7:\"company\";s:12:\"公司名称\";s:14:\"companyprofile\";s:13:\"<p>asdasd</p>\";s:7:\"address\";s:6:\"asdasd\";s:6:\"person\";s:3:\"asd\";s:5:\"phone\";s:3:\"asd\";s:2:\"qq\";s:3:\"asd\";s:5:\"email\";s:3:\"asd\";s:8:\"keywords\";s:18:\"后台管理系统\";s:11:\"description\";s:12:\"系统简介\";s:12:\"showhomepage\";i:0;s:13:\"leftmenufixed\";i:0;s:13:\"mobile_status\";s:1:\"0\";s:10:\"login_type\";s:1:\"0\";s:3:\"icp\";s:10:\"3243sadasd\";}');
INSERT INTO `ims_core_settings` VALUES ('site', 'a:5:{s:3:\"key\";s:23:\"61066249242196339426876\";s:5:\"token\";s:32:\"ae7a489acac6d260da3ae53eefbef1d9\";s:3:\"url\";s:22:\"http://weixin.118gb.cn\";s:7:\"version\";s:5:\"1.6.3\";s:15:\"profile_perfect\";s:1:\"1\";}');
INSERT INTO `ims_core_settings` VALUES ('cloudip', 'a:2:{s:2:\"ip\";s:13:\"47.93.53.220\";s:6:\"expire\";i:1515794386;}');
INSERT INTO `ims_core_settings` VALUES ('module_ban', 'a:0:{}');
INSERT INTO `ims_core_settings` VALUES ('module_upgrade', 'a:0:{}');
INSERT INTO `ims_core_settings` VALUES ('basic', 'a:1:{s:8:\"template\";s:7:\"default\";}');
INSERT INTO `ims_core_settings` VALUES ('thirdlogin', 'a:4:{s:6:\"system\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:2:\"qq\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:6:\"wechat\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}s:6:\"mobile\";a:3:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"authstate\";s:0:\"\";}}');

-- ----------------------------
-- Table structure for ims_coupon_location
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_location`;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_coupon_location
-- ----------------------------

-- ----------------------------
-- Table structure for ims_cover_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_cover_reply`;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_cover_reply
-- ----------------------------
INSERT INTO `ims_cover_reply` VALUES ('1', '1', '0', '7', 'mc', '', '进入个人中心', '', '', './index.php?c=mc&a=home&i=1');
INSERT INTO `ims_cover_reply` VALUES ('2', '1', '1', '8', 'site', '', '进入首页', '', '', './index.php?c=home&i=1&t=1');

-- ----------------------------
-- Table structure for ims_custom_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_custom_reply`;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_custom_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_images_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_images_reply`;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_images_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_cash_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_cash_record`;
CREATE TABLE `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `trade_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_cash_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_chats_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_chats_record`;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_chats_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_credits_recharge
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_credits_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_credits_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_record`;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_credits_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_fans_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_groups`;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_fans_groups
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_fans_tag_mapping
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_fans_tag_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_groups`;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_groups
-- ----------------------------
INSERT INTO `ims_mc_groups` VALUES ('1', '1', '默认会员组', '0', '1');

-- ----------------------------
-- Table structure for ims_mc_handsel
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_handsel`;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_handsel
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mapping_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(30) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `nickname` (`nickname`),
  KEY `updatetime` (`updatetime`),
  KEY `uid` (`uid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mapping_fans
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mapping_ucenter
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;
CREATE TABLE `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mapping_ucenter
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mass_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mass_record`;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_mass_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_address`;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_fields`;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_fields
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_property
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_property`;
CREATE TABLE `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_member_property
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_members
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_members`;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_members
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_oauth_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mc_oauth_fans
-- ----------------------------

-- ----------------------------
-- Table structure for ims_menu_event
-- ----------------------------
DROP TABLE IF EXISTS `ims_menu_event`;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_menu_event
-- ----------------------------

-- ----------------------------
-- Table structure for ims_message_notice_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_message_notice_log`;
CREATE TABLE `ims_message_notice_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `sign` varchar(22) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_message_notice_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mobilenumber
-- ----------------------------
DROP TABLE IF EXISTS `ims_mobilenumber`;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_mobilenumber
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules`;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `app_support` tinyint(1) NOT NULL,
  `welcome_support` int(2) NOT NULL,
  `oauth_type` tinyint(1) NOT NULL DEFAULT '1',
  `webapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules
-- ----------------------------
INSERT INTO `ims_modules` VALUES ('1', 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('2', 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('3', 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('4', 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('5', 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '0', '1', '0', '0', '', '', '1', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('6', 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'WeEngine Team', 'http://bbs.we7.cc', '0', 'a:0:{}', 'a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}', '1', '1', '0', '0', '', '', '1', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('7', 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('8', 'video', 'system', '基本视频回复', '1.0', '提供图片回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('9', 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('10', 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '0', '1', '0', '0', '', '', '1', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('11', 'wxcard', 'system', '微信卡券回复', '1.0', '微信卡券回复', '微信卡券回复', 'WeEngine Team', 'http://www.we7.cc/', '0', '', '', '1', '1', '0', '0', '', '', '1', '2', '0', '0', '0');
INSERT INTO `ims_modules` VALUES ('12', 'zh_tcwq', 'services', '同城微圈小程序', '8.4', '同城微圈小程序', '同城微圈小程序', '电商时代', 'http://wxxcx001.com', '0', 'a:0:{}', 'a:0:{}', '0', '0', '0', '0', 'a:0:{}', 'T', '2', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for ims_modules_bindings
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_bindings`;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `entry` varchar(30) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_bindings
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_plugin`;
CREATE TABLE `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `main_module` (`main_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_rank
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_rank`;
CREATE TABLE `ims_modules_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_rank
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_recycle
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_recycle`;
CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modulename` (`modulename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_modules_recycle
-- ----------------------------

-- ----------------------------
-- Table structure for ims_music_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_music_reply`;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_music_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_news_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_news_reply`;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_news_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_profile_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_profile_fields`;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_profile_fields
-- ----------------------------
INSERT INTO `ims_profile_fields` VALUES ('1', 'realname', '1', '真实姓名', '', '0', '1', '1', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('2', 'nickname', '1', '昵称', '', '1', '1', '0', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('3', 'avatar', '1', '头像', '', '1', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('4', 'qq', '1', 'QQ号', '', '0', '0', '0', '1', '0');
INSERT INTO `ims_profile_fields` VALUES ('5', 'mobile', '1', '手机号码', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('6', 'vip', '1', 'VIP级别', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('7', 'gender', '1', '性别', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('8', 'birthyear', '1', '出生生日', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('9', 'constellation', '1', '星座', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('10', 'zodiac', '1', '生肖', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('11', 'telephone', '1', '固定电话', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('12', 'idcard', '1', '证件号码', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('13', 'studentid', '1', '学号', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('14', 'grade', '1', '班级', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('15', 'address', '1', '邮寄地址', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('16', 'zipcode', '1', '邮编', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('17', 'nationality', '1', '国籍', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('18', 'resideprovince', '1', '居住地址', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('19', 'graduateschool', '1', '毕业学校', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('20', 'company', '1', '公司', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('21', 'education', '1', '学历', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('22', 'occupation', '1', '职业', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('23', 'position', '1', '职位', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('24', 'revenue', '1', '年收入', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('25', 'affectivestatus', '1', '情感状态', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('26', 'lookingfor', '1', ' 交友目的', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('27', 'bloodtype', '1', '血型', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('28', 'height', '1', '身高', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('29', 'weight', '1', '体重', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('30', 'alipay', '1', '支付宝帐号', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('31', 'msn', '1', 'MSN', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('32', 'email', '1', '电子邮箱', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('33', 'taobao', '1', '阿里旺旺', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('34', 'site', '1', '主页', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('35', 'bio', '1', '自我介绍', '', '0', '0', '0', '0', '0');
INSERT INTO `ims_profile_fields` VALUES ('36', 'interest', '1', '兴趣爱好', '', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for ims_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode`;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for ims_qrcode_stat
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode_stat`;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_qrcode_stat
-- ----------------------------

-- ----------------------------
-- Table structure for ims_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule`;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule
-- ----------------------------
INSERT INTO `ims_rule` VALUES ('1', '0', '城市天气', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('2', '0', '百度百科', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('3', '0', '即时翻译', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('4', '0', '今日老黄历', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('5', '0', '看新闻', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('6', '0', '快递查询', 'userapi', '255', '1', '');
INSERT INTO `ims_rule` VALUES ('7', '1', '个人中心入口设置', 'cover', '0', '1', '');
INSERT INTO `ims_rule` VALUES ('8', '1', '微擎团队入口设置', 'cover', '0', '1', '');

-- ----------------------------
-- Table structure for ims_rule_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule_keyword`;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_rule_keyword
-- ----------------------------
INSERT INTO `ims_rule_keyword` VALUES ('1', '1', '0', 'userapi', '^.+天气$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('2', '2', '0', 'userapi', '^百科.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('3', '2', '0', 'userapi', '^定义.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('4', '3', '0', 'userapi', '^@.+$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('5', '4', '0', 'userapi', '日历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('6', '4', '0', 'userapi', '万年历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('7', '4', '0', 'userapi', '黄历', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('8', '4', '0', 'userapi', '几号', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('9', '5', '0', 'userapi', '新闻', '1', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('10', '6', '0', 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', '3', '255', '1');
INSERT INTO `ims_rule_keyword` VALUES ('11', '7', '1', 'cover', '个人中心', '1', '0', '1');
INSERT INTO `ims_rule_keyword` VALUES ('12', '8', '1', 'cover', '首页', '1', '0', '1');

-- ----------------------------
-- Table structure for ims_site_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article`;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_article
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_category`;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_multi
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_multi`;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_multi
-- ----------------------------
INSERT INTO `ims_site_multi` VALUES ('1', '1', '微擎团队', '1', '', '1', '');

-- ----------------------------
-- Table structure for ims_site_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_nav`;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_nav
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_page
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_page`;
CREATE TABLE `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `multipage` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_page
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_slide
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_slide`;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_slide
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_create_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_create_account`;
CREATE TABLE `ims_site_store_create_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_create_account
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_goods`;
CREATE TABLE `ims_site_store_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `module` varchar(50) NOT NULL,
  `account_num` int(10) NOT NULL,
  `wxapp_num` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `slide` varchar(1000) NOT NULL,
  `category_id` int(10) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `module_group` int(10) NOT NULL,
  `api_num` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `category_id` (`category_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_order`;
CREATE TABLE `ims_site_store_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(28) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `buyerid` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `changeprice` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `endtime` int(15) NOT NULL,
  `wxapp` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goodid` (`goodsid`),
  KEY `buyerid` (`buyerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_store_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_styles
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles`;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles
-- ----------------------------
INSERT INTO `ims_site_styles` VALUES ('1', '1', '1', '微站默认模板_gC5C');

-- ----------------------------
-- Table structure for ims_site_styles_vars
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles_vars`;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_styles_vars
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_templates
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_templates`;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_site_templates
-- ----------------------------
INSERT INTO `ims_site_templates` VALUES ('1', 'default', '微站默认模板', '', '由微擎提供默认微站模板套系', '微擎团队', 'http://we7.cc', '1', '0');

-- ----------------------------
-- Table structure for ims_stat_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_fans`;
CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_fans
-- ----------------------------
INSERT INTO `ims_stat_fans` VALUES ('1', '1', '0', '0', '0', '20171119');
INSERT INTO `ims_stat_fans` VALUES ('2', '1', '0', '0', '0', '20171118');
INSERT INTO `ims_stat_fans` VALUES ('3', '1', '0', '0', '0', '20171117');
INSERT INTO `ims_stat_fans` VALUES ('4', '1', '0', '0', '0', '20171116');
INSERT INTO `ims_stat_fans` VALUES ('5', '1', '0', '0', '0', '20171115');
INSERT INTO `ims_stat_fans` VALUES ('6', '1', '0', '0', '0', '20171114');
INSERT INTO `ims_stat_fans` VALUES ('7', '1', '0', '0', '0', '20171113');
INSERT INTO `ims_stat_fans` VALUES ('8', '1', '0', '0', '0', '20180112');
INSERT INTO `ims_stat_fans` VALUES ('9', '1', '0', '0', '0', '20180111');
INSERT INTO `ims_stat_fans` VALUES ('10', '1', '0', '0', '0', '20180110');
INSERT INTO `ims_stat_fans` VALUES ('11', '1', '0', '0', '0', '20180109');
INSERT INTO `ims_stat_fans` VALUES ('12', '1', '0', '0', '0', '20180108');
INSERT INTO `ims_stat_fans` VALUES ('13', '1', '0', '0', '0', '20180107');
INSERT INTO `ims_stat_fans` VALUES ('14', '1', '0', '0', '0', '20180106');
INSERT INTO `ims_stat_fans` VALUES ('15', '1', '0', '0', '0', '20180527');
INSERT INTO `ims_stat_fans` VALUES ('16', '1', '0', '0', '0', '20180526');
INSERT INTO `ims_stat_fans` VALUES ('17', '1', '0', '0', '0', '20180525');
INSERT INTO `ims_stat_fans` VALUES ('18', '1', '0', '0', '0', '20180524');
INSERT INTO `ims_stat_fans` VALUES ('19', '1', '0', '0', '0', '20180523');
INSERT INTO `ims_stat_fans` VALUES ('20', '1', '0', '0', '0', '20180522');
INSERT INTO `ims_stat_fans` VALUES ('21', '1', '0', '0', '0', '20180521');
INSERT INTO `ims_stat_fans` VALUES ('22', '1', '0', '0', '0', '20180529');
INSERT INTO `ims_stat_fans` VALUES ('23', '1', '0', '0', '0', '20180528');
INSERT INTO `ims_stat_fans` VALUES ('24', '1', '0', '0', '0', '20180530');
INSERT INTO `ims_stat_fans` VALUES ('25', '1', '0', '0', '0', '20180531');
INSERT INTO `ims_stat_fans` VALUES ('26', '1', '0', '0', '0', '20180603');
INSERT INTO `ims_stat_fans` VALUES ('27', '1', '0', '0', '0', '20180602');
INSERT INTO `ims_stat_fans` VALUES ('28', '1', '0', '0', '0', '20180601');
INSERT INTO `ims_stat_fans` VALUES ('29', '1', '0', '0', '0', '20180604');
INSERT INTO `ims_stat_fans` VALUES ('30', '1', '0', '0', '0', '20180610');
INSERT INTO `ims_stat_fans` VALUES ('31', '1', '0', '0', '0', '20180609');
INSERT INTO `ims_stat_fans` VALUES ('32', '1', '0', '0', '0', '20180608');
INSERT INTO `ims_stat_fans` VALUES ('33', '1', '0', '0', '0', '20180607');
INSERT INTO `ims_stat_fans` VALUES ('34', '1', '0', '0', '0', '20180606');
INSERT INTO `ims_stat_fans` VALUES ('35', '1', '0', '0', '0', '20180605');
INSERT INTO `ims_stat_fans` VALUES ('36', '1', '0', '0', '0', '20180611');

-- ----------------------------
-- Table structure for ims_stat_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_keyword`;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_msg_history
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_msg_history`;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_msg_history
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_rule`;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_rule
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_visit
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_visit`;
CREATE TABLE `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `module` (`module`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_stat_visit
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account`;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account
-- ----------------------------
INSERT INTO `ims_uni_account` VALUES ('1', '-1', '微擎团队', '一个朝气蓬勃的团队', '1', '0', 'W');
INSERT INTO `ims_uni_account` VALUES ('2', '0', 'ruyang', '1.0', '2', null, 'R');

-- ----------------------------
-- Table structure for ims_uni_account_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_group`;
CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account_menus
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_menus`;
CREATE TABLE `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_menus
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_modules`;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_modules
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_users`;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_account_users
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_group`;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` varchar(15000) NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_group
-- ----------------------------
INSERT INTO `ims_uni_group` VALUES ('1', '0', '体验套餐服务', 'a:1:{i:0;s:7:\"zh_tcwq\";}', 'N;', '0');

-- ----------------------------
-- Table structure for ims_uni_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_settings`;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `payment` text NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  `statistics` varchar(100) NOT NULL,
  `bind_domain` varchar(200) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_settings
-- ----------------------------
INSERT INTO `ims_uni_settings` VALUES ('1', 'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}', 'a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}', '0', 'a:1:{s:6:\"status\";i:0;}', 'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}', 'a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', 'a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}', '', '1', '0', '', '', '0', '', '0', '0', '', '', '');

-- ----------------------------
-- Table structure for ims_uni_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_verifycode`;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_uni_verifycode
-- ----------------------------

-- ----------------------------
-- Table structure for ims_userapi_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_cache`;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_cache
-- ----------------------------

-- ----------------------------
-- Table structure for ims_userapi_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_reply`;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_userapi_reply
-- ----------------------------
INSERT INTO `ims_userapi_reply` VALUES ('1', '1', '\"城市名+天气\", 如: \"北京天气\"', 'weather.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('2', '2', '\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"', 'baike.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('3', '3', '\"@查询内容(中文或英文)\"', 'translate.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('4', '4', '\"日历\", \"万年历\", \"黄历\"或\"几号\"', 'calendar.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('5', '5', '\"新闻\"', 'news.php', '', '', '0');
INSERT INTO `ims_userapi_reply` VALUES ('6', '6', '\"快递+单号\", 如: \"申通1200041125\"', 'express.php', '', '', '0');

-- ----------------------------
-- Table structure for ims_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_users`;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `register_type` tinyint(3) NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users
-- ----------------------------
INSERT INTO `ims_users` VALUES ('1', '0', '1', '0', 'admin', 'a96f63d3bb6eda3f39450e688f2b6dd3a54b697c', 'f75b7d09', '0', '0', '1514363777', '', '1528508330', '120.194.35.178', '', '0', '0', '0', '');

-- ----------------------------
-- Table structure for ims_users_bind
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_bind`;
CREATE TABLE `ims_users_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `bind_sign` (`bind_sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_bind
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_failed_login
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_failed_login`;
CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_failed_login
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_founder_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_founder_group`;
CREATE TABLE `ims_users_founder_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_founder_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_group`;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_invitation
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_invitation`;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_invitation
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_permission
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_permission`;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_permission
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_profile
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_profile`;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  `is_send_mobile_status` tinyint(3) NOT NULL,
  `send_expire_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_users_profile
-- ----------------------------

-- ----------------------------
-- Table structure for ims_video_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_video_reply`;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_video_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_voice_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_voice_reply`;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_voice_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wechat_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_attachment`;
CREATE TABLE `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wechat_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wechat_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_news`;
CREATE TABLE `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `displayorder` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wechat_news
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wxapp_general_analysis
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_general_analysis`;
CREATE TABLE `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `ref_date` (`ref_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxapp_general_analysis
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wxapp_versions
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_versions`;
CREATE TABLE `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `modules` varchar(1000) NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `quickmenu` varchar(2500) NOT NULL,
  `createtime` int(10) NOT NULL,
  `type` int(2) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `appjson` text NOT NULL,
  `default_appjson` text NOT NULL,
  `use_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxapp_versions
-- ----------------------------
INSERT INTO `ims_wxapp_versions` VALUES ('1', '2', '0', '1.01', '1.0', 'a:1:{s:7:\"zh_tcwq\";a:4:{s:4:\"name\";s:7:\"zh_tcwq\";s:7:\"newicon\";N;s:7:\"version\";s:3:\"8.4\";s:12:\"defaultentry\";N;}}', '3', '0', 'a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}', '1527490250', '0', '0', '', '', '0');

-- ----------------------------
-- Table structure for ims_wxcard_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxcard_reply`;
CREATE TABLE `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_wxcard_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_ad
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_ad`;
CREATE TABLE `ims_zhtc_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '轮播图标题',
  `logo` varchar(200) NOT NULL COMMENT '图片',
  `status` int(11) NOT NULL COMMENT '1.开启  2.关闭',
  `src` varchar(100) NOT NULL COMMENT '链接',
  `orderby` int(11) NOT NULL COMMENT '排序',
  `xcx_name` varchar(20) NOT NULL,
  `appid` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `type` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `wb_src` varchar(300) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_ad
-- ----------------------------
INSERT INTO `ims_zhtc_ad` VALUES ('1', '分类广告位', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '1', '../shun/shun', '5', '', '', '2', '8', '北京市', '', '1');
INSERT INTO `ims_zhtc_ad` VALUES ('6', '123', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '1', '../shun/shun', '2', '', '', '2', '7', '洛阳市', '', '1');
INSERT INTO `ims_zhtc_ad` VALUES ('5', '123123', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '1', '../distribution/jrhhr', '1', '', '', '2', '1', '洛阳市', '', '1');

-- ----------------------------
-- Table structure for ims_zhtc_area
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_area`;
CREATE TABLE `ims_zhtc_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) NOT NULL COMMENT '区域名称',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_area
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_car
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_car`;
CREATE TABLE `ims_zhtc_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `start_place` varchar(100) NOT NULL COMMENT '出发地',
  `end_place` varchar(100) NOT NULL COMMENT '目的地',
  `start_time` varchar(30) NOT NULL COMMENT '出发时间',
  `num` int(4) NOT NULL COMMENT '乘车人数/可乘人数',
  `link_name` varchar(30) NOT NULL COMMENT '联系人',
  `link_tel` varchar(20) NOT NULL COMMENT '联系电话',
  `typename` varchar(30) NOT NULL COMMENT '分类名称',
  `other` varchar(300) NOT NULL COMMENT '补充',
  `time` int(11) NOT NULL COMMENT '发布时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `top_id` int(11) NOT NULL COMMENT '置顶ID',
  `top` int(4) NOT NULL COMMENT '是否置顶,1,是,2否',
  `uniacid` varchar(50) NOT NULL,
  `state` int(4) NOT NULL COMMENT '1待审核,2通过，3拒绝',
  `tj_place` varchar(300) NOT NULL COMMENT '途经地',
  `hw_wet` varchar(10) NOT NULL COMMENT '货物重量',
  `star_lat` varchar(20) NOT NULL COMMENT '出发地维度',
  `star_lng` varchar(20) NOT NULL COMMENT '出发地经度',
  `end_lat` varchar(20) NOT NULL COMMENT '目的地维度',
  `end_lng` varchar(20) NOT NULL COMMENT '目的地经度',
  `is_open` int(4) NOT NULL,
  `start_time2` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_car
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_car_my_tag
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_car_my_tag`;
CREATE TABLE `ims_zhtc_car_my_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL COMMENT '标签id',
  `car_id` int(11) NOT NULL COMMENT '拼车ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_car_my_tag
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_car_tag
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_car_tag`;
CREATE TABLE `ims_zhtc_car_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) NOT NULL COMMENT '分类名称',
  `tagname` varchar(30) NOT NULL COMMENT '标签名称',
  `uniacid` varchar(11) NOT NULL COMMENT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_car_tag
-- ----------------------------
INSERT INTO `ims_zhtc_car_tag` VALUES ('1', '人找车', '人 车', '2');

-- ----------------------------
-- Table structure for ims_zhtc_car_top
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_car_top`;
CREATE TABLE `ims_zhtc_car_top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1.一天2.一周3.一个月',
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `uniacid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_car_top
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_carpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_carpaylog`;
CREATE TABLE `ims_zhtc_carpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(44) NOT NULL COMMENT '拼车id',
  `money` decimal(10,2) NOT NULL COMMENT '钱',
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_carpaylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_comments
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_comments`;
CREATE TABLE `ims_zhtc_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_id` int(11) NOT NULL COMMENT '帖子id',
  `details` varchar(200) NOT NULL COMMENT '评论详情',
  `time` varchar(20) NOT NULL COMMENT '时间',
  `reply` varchar(200) NOT NULL COMMENT '回复详情',
  `hf_time` varchar(20) NOT NULL COMMENT '回复时间',
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `score` decimal(10,1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_comments
-- ----------------------------
INSERT INTO `ims_zhtc_comments` VALUES ('1', '16', '第一条评论', '1528525094', '', '', '3', '0', '0.0');
INSERT INTO `ims_zhtc_comments` VALUES ('2', '16', '第二条评论', '1528525357', '', '', '3', '0', '0.0');
INSERT INTO `ims_zhtc_comments` VALUES ('3', '16', '第三条评论', '1528525579', '', '', '3', '0', '0.0');
INSERT INTO `ims_zhtc_comments` VALUES ('4', '16', 'this is a comments', '1528525579', ' 1', ' ', '1', '0', '0.0');
INSERT INTO `ims_zhtc_comments` VALUES ('5', '16', '超级长的评论超级长的评论超级长的评论超级长的评论超级长的评论超级长的评论超级长的评论超级长的评论', '1528530758', '', '', '3', '0', '0.0');
INSERT INTO `ims_zhtc_comments` VALUES ('6', '21', '日你哥啊啊啊啊啊', '1528535168', '', '', '3', '0', '0.0');

-- ----------------------------
-- Table structure for ims_zhtc_commission_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_commission_withdrawal`;
CREATE TABLE `ims_zhtc_commission_withdrawal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1.支付宝2.银行卡',
  `state` int(11) NOT NULL COMMENT '1.审核中2.通过3.拒绝',
  `time` int(11) NOT NULL COMMENT '申请时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `uniacid` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `account` varchar(100) NOT NULL,
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际到账金额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_commission_withdrawal
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_continuous
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_continuous`;
CREATE TABLE `ims_zhtc_continuous` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `day` int(11) NOT NULL COMMENT '天数',
  `integral` int(11) NOT NULL COMMENT '积分',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_continuous
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_distribution
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_distribution`;
CREATE TABLE `ims_zhtc_distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `state` int(11) NOT NULL COMMENT '1.审核中2.通过3.拒绝',
  `uniacid` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `pay_state` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  `cityname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_distribution
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_earnings
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_earnings`;
CREATE TABLE `ims_zhtc_earnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `son_id` int(11) NOT NULL COMMENT '下线',
  `money` decimal(10,2) NOT NULL,
  `time` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_earnings
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_fx
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_fx`;
CREATE TABLE `ims_zhtc_fx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `zf_user_id` int(11) NOT NULL COMMENT '转发人ID',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `time` int(11) NOT NULL COMMENT '时间戳',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_fx
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_fxlevel
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_fxlevel`;
CREATE TABLE `ims_zhtc_fxlevel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `money` decimal(10,2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `commission` int(11) NOT NULL COMMENT '1级佣金比例',
  `commission2` int(11) NOT NULL COMMENT '2级佣金比例',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_fxlevel
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_fxset
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_fxset`;
CREATE TABLE `ims_zhtc_fxset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fx_details` text NOT NULL COMMENT '分销商申请协议',
  `tx_details` text NOT NULL COMMENT '佣金提现协议',
  `is_fx` int(11) NOT NULL COMMENT '1.开启分销审核2.不开启',
  `is_ej` int(11) NOT NULL COMMENT '是否开启二级分销1.是2.否',
  `tx_rate` int(11) NOT NULL COMMENT '提现手续费',
  `commission` varchar(10) NOT NULL COMMENT '一级佣金',
  `commission2` varchar(10) NOT NULL COMMENT '二级佣金',
  `tx_money` int(11) NOT NULL COMMENT '提现门槛',
  `img` varchar(100) NOT NULL COMMENT '分销中心图片',
  `img2` varchar(100) NOT NULL COMMENT '申请分销图片',
  `uniacid` int(11) NOT NULL,
  `is_open` int(11) NOT NULL DEFAULT '1' COMMENT '1.开启2关闭',
  `instructions` text NOT NULL COMMENT '分销商说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_fxset
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_fxuser
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_fxuser`;
CREATE TABLE `ims_zhtc_fxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '一级分销',
  `fx_user` int(11) NOT NULL COMMENT '二级分销',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_fxuser
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_goods`;
CREATE TABLE `ims_zhtc_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '商家ID',
  `spec_id` int(11) NOT NULL COMMENT '主规格ID',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `goods_num` int(11) NOT NULL COMMENT '商品数量',
  `goods_cost` decimal(10,2) NOT NULL,
  `freight` decimal(10,2) NOT NULL COMMENT '运费',
  `delivery` varchar(500) NOT NULL COMMENT '关于发货',
  `quality` int(4) NOT NULL COMMENT '正品1是,0否',
  `free` int(4) NOT NULL COMMENT '包邮1是,0否',
  `all_day` int(4) NOT NULL COMMENT '24小时发货1是,0否',
  `service` int(4) NOT NULL COMMENT '售后服务1是,0否',
  `refund` int(4) NOT NULL COMMENT '极速退款1是,0否',
  `weeks` int(4) NOT NULL COMMENT '7天包邮1是，0否',
  `lb_imgs` varchar(500) NOT NULL COMMENT '轮播图',
  `imgs` varchar(500) NOT NULL COMMENT '商品介绍图',
  `time` int(11) NOT NULL COMMENT '时间',
  `uniacid` varchar(50) NOT NULL,
  `goods_details` text NOT NULL COMMENT '商品详细',
  `state` int(4) NOT NULL COMMENT '1待审核,2通过，3拒绝',
  `sy_num` int(11) NOT NULL COMMENT '剩余数量',
  `is_show` int(11) NOT NULL DEFAULT '1',
  `sales` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_goods_spec`;
CREATE TABLE `ims_zhtc_goods_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(100) NOT NULL COMMENT '规格名称',
  `sort` int(4) NOT NULL COMMENT '排序',
  `uniacid` varchar(50) NOT NULL COMMENT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_goods_spec
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_hblq
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_hblq`;
CREATE TABLE `ims_zhtc_hblq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `tz_id` int(11) NOT NULL COMMENT '帖子ID',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `time` int(11) NOT NULL COMMENT '时间戳',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_hblq
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_help
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_help`;
CREATE TABLE `ims_zhtc_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL COMMENT '标题',
  `answer` text NOT NULL COMMENT '回答',
  `sort` int(4) NOT NULL COMMENT '排序',
  `uniacid` varchar(50) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_help
-- ----------------------------
INSERT INTO `ims_zhtc_help` VALUES ('1', '这里是后台添加的帮助信息', '帮助信息正文', '1', '2', '2018-05-29 17:39:53');
INSERT INTO `ims_zhtc_help` VALUES ('2', '这是帮助二信息', '在后台的系统设置中添加帮助中心', '2', '2', '2018-06-12 15:25:14');

-- ----------------------------
-- Table structure for ims_zhtc_hotcity
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_hotcity`;
CREATE TABLE `ims_zhtc_hotcity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(50) NOT NULL COMMENT '城市名称',
  `time` int(11) NOT NULL COMMENT '创建时间',
  `uniacid` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_hotcity
-- ----------------------------
INSERT INTO `ims_zhtc_hotcity` VALUES ('1', '洛阳市', '1527842784', '2', '0');
INSERT INTO `ims_zhtc_hotcity` VALUES ('2', '洛阳市', '1528358559', '2', '1');
INSERT INTO `ims_zhtc_hotcity` VALUES ('3', '洛阳市', '1528525137', '2', '3');

-- ----------------------------
-- Table structure for ims_zhtc_in
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_in`;
CREATE TABLE `ims_zhtc_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1.一天2.半年3.一年',
  `money` decimal(10,2) NOT NULL,
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_in
-- ----------------------------
INSERT INTO `ims_zhtc_in` VALUES ('1', '3', '1000.00', '1', '2');

-- ----------------------------
-- Table structure for ims_zhtc_information
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_information`;
CREATE TABLE `ims_zhtc_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` text NOT NULL COMMENT '内容',
  `img` text NOT NULL COMMENT '图片',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '联系人',
  `user_tel` varchar(20) NOT NULL COMMENT '电话',
  `hot` int(11) NOT NULL COMMENT '1.热门 2.不热门',
  `top` int(11) NOT NULL COMMENT '1.置顶 2.不置顶',
  `givelike` int(11) NOT NULL COMMENT '点赞数',
  `views` int(11) NOT NULL COMMENT '浏览量',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `type2_id` int(11) NOT NULL COMMENT '分类二id',
  `type_id` int(11) NOT NULL,
  `state` int(11) NOT NULL COMMENT '1.待审核 2.通过3拒绝',
  `money` decimal(10,2) NOT NULL,
  `time` int(20) NOT NULL COMMENT '发布时间',
  `sh_time` int(20) NOT NULL,
  `top_type` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `hb_money` decimal(10,2) NOT NULL,
  `hb_num` int(11) NOT NULL,
  `hb_type` int(11) NOT NULL,
  `hb_keyword` varchar(20) NOT NULL,
  `hb_random` int(11) NOT NULL,
  `hong` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `del` int(11) NOT NULL DEFAULT '2',
  `user_img2` varchar(200) NOT NULL,
  `dq_time` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `hbfx_num` int(11) NOT NULL,
  `money_clf` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '赏金任务 赏金',
  `time_end` varchar(255) DEFAULT NULL COMMENT '单子需要结束时间',
  `tatus` int(10) NOT NULL DEFAULT '1' COMMENT '当前状态 1：未被接单 2: 正在执行，3已经完成，待付款，4 已完成，成功付款，5.撤销',
  `mytype` int(5) NOT NULL DEFAULT '2' COMMENT '1 任务  2 帖子',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_information
-- ----------------------------
INSERT INTO `ims_zhtc_information` VALUES ('20', '这是内容详情', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg,images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '1', '张三', '18338811833', '0', '2', '1', '979', '2', '1', '1', '2', '0.00', '1528533480', '1528533480', '0', '河南省洛阳市', '0.00', '0', '0', '', '0', '', '0', '2', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg', '-28800', '洛阳市', '0', '21.00', '1527843614', '4', '1');
INSERT INTO `ims_zhtc_information` VALUES ('21', '这是内容详情', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg,images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '1', '张三', '18338811833', '0', '2', '1', '1045', '2', '1', '1', '2', '0.00', '1528533760', '1528533760', '0', '河南省洛阳市', '0.00', '0', '0', '', '0', '', '0', '2', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg', '-28800', '洛阳市', '0', '10.05', '1527843614', '5', '1');
INSERT INTO `ims_zhtc_information` VALUES ('22', '这是内容详情', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg,images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '3', '李四', '18338811833', '0', '2', '0', '19', '2', '1', '1', '2', '0.00', '1528791046', '1528791046', '0', '河南省洛阳市', '0.00', '0', '0', '', '0', '', '0', '2', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg', '-28800', '洛阳市', '0', '21.00', '1527843614', '1', '1');

-- ----------------------------
-- Table structure for ims_zhtc_integral
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_integral`;
CREATE TABLE `ims_zhtc_integral` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `score` int(11) NOT NULL COMMENT '分数',
  `type` int(4) NOT NULL COMMENT '1加,2减',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `cerated_time` datetime NOT NULL COMMENT '创建时间',
  `uniacid` varchar(50) NOT NULL,
  `note` varchar(20) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_integral
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_jfgoods
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_jfgoods`;
CREATE TABLE `ims_zhtc_jfgoods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `img` varchar(100) NOT NULL,
  `money` int(11) NOT NULL COMMENT '价格',
  `type_id` int(11) NOT NULL COMMENT '分类id',
  `goods_details` text NOT NULL,
  `process_details` text NOT NULL,
  `attention_details` text NOT NULL,
  `number` int(11) NOT NULL COMMENT '数量',
  `time` varchar(50) NOT NULL COMMENT '期限',
  `is_open` int(11) NOT NULL COMMENT '1.开启2关闭',
  `type` int(11) NOT NULL COMMENT '1.余额2.实物',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  `hb_moeny` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_jfgoods
-- ----------------------------
INSERT INTO `ims_zhtc_jfgoods` VALUES ('1', '苹果7', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '1000', '1', '', '', '', '123', '', '1', '2', '1', '2', '0.00');

-- ----------------------------
-- Table structure for ims_zhtc_jfrecord
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_jfrecord`;
CREATE TABLE `ims_zhtc_jfrecord` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `good_id` int(11) NOT NULL COMMENT '商品id',
  `time` varchar(20) NOT NULL COMMENT '兑换时间',
  `user_name` varchar(20) NOT NULL COMMENT '用户地址',
  `user_tel` varchar(20) NOT NULL COMMENT '用户电话',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `note` varchar(20) NOT NULL,
  `integral` int(11) NOT NULL COMMENT '积分',
  `good_name` varchar(50) NOT NULL COMMENT '商品名称',
  `good_img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_jfrecord
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_jftype
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_jftype`;
CREATE TABLE `ims_zhtc_jftype` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_jftype
-- ----------------------------
INSERT INTO `ims_zhtc_jftype` VALUES ('1', '手机', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '12', '2');

-- ----------------------------
-- Table structure for ims_zhtc_label
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_label`;
CREATE TABLE `ims_zhtc_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(20) NOT NULL,
  `type2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_label
-- ----------------------------
INSERT INTO `ims_zhtc_label` VALUES ('1', '234', '2');

-- ----------------------------
-- Table structure for ims_zhtc_like
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_like`;
CREATE TABLE `ims_zhtc_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_id` int(11) NOT NULL COMMENT '帖子id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `zx_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_like
-- ----------------------------
INSERT INTO `ims_zhtc_like` VALUES ('1', '13', '0', '0');
INSERT INTO `ims_zhtc_like` VALUES ('2', '20', '3', '0');
INSERT INTO `ims_zhtc_like` VALUES ('3', '21', '3', '0');

-- ----------------------------
-- Table structure for ims_zhtc_mtype
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_mtype`;
CREATE TABLE `ims_zhtc_mtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL COMMENT '分类名称',
  `img` varchar(100) NOT NULL COMMENT '分类图片',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `num` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  `sx_money` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_mtype
-- ----------------------------
INSERT INTO `ims_zhtc_mtype` VALUES ('1', '买东西', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '2', '7', '0.00', '1', '0.00');
INSERT INTO `ims_zhtc_mtype` VALUES ('3', '寻物', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '2', '3', '0.00', '1', '0.00');

-- ----------------------------
-- Table structure for ims_zhtc_mtype2
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_mtype2`;
CREATE TABLE `ims_zhtc_mtype2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `type_id` int(11) NOT NULL COMMENT '主分类id',
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_mtype2
-- ----------------------------
INSERT INTO `ims_zhtc_mtype2` VALUES ('2', '寻找宠物', '3', '0', '2', '2');

-- ----------------------------
-- Table structure for ims_zhtc_mylabel
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_mylabel`;
CREATE TABLE `ims_zhtc_mylabel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `information_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_mylabel
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_nav`;
CREATE TABLE `ims_zhtc_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '名称',
  `logo` varchar(200) NOT NULL COMMENT '图标',
  `status` int(11) NOT NULL COMMENT '1.开启  2.关闭',
  `src` varchar(100) NOT NULL COMMENT '内部链接',
  `orderby` int(11) NOT NULL COMMENT '排序',
  `xcx_name` varchar(20) NOT NULL COMMENT '小程序名称',
  `appid` varchar(20) NOT NULL COMMENT 'APPID',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `wb_src` varchar(300) NOT NULL COMMENT '外部链接',
  `state` int(4) NOT NULL DEFAULT '1' COMMENT '1内部，2外部,3跳转',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_nav
-- ----------------------------
INSERT INTO `ims_zhtc_nav` VALUES ('1', '测试', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg', '1', '../shun/shun', '1000', '', '', '2', '', '1');
INSERT INTO `ims_zhtc_nav` VALUES ('2', '123123', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '1', '../shun/shun', '3', '', '', '2', '', '1');

-- ----------------------------
-- Table structure for ims_zhtc_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_news`;
CREATE TABLE `ims_zhtc_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '公告标题',
  `details` text NOT NULL COMMENT '公告详情',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_news
-- ----------------------------
INSERT INTO `ims_zhtc_news` VALUES ('1', '公告一', '<p>公告一</p>', '6', '2', '1527593587', '', '1', '4', '北京市');
INSERT INTO `ims_zhtc_news` VALUES ('2', '公告', '<p>asdasdasd</p>', '100', '2', '1527593609', '', '1', '1', '北京市');

-- ----------------------------
-- Table structure for ims_zhtc_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_order`;
CREATE TABLE `ims_zhtc_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `user_name` varchar(20) NOT NULL COMMENT '联系人',
  `address` varchar(200) NOT NULL COMMENT '联系地址',
  `tel` varchar(20) NOT NULL COMMENT '电话',
  `time` int(11) NOT NULL COMMENT '下单时间',
  `pay_time` int(11) NOT NULL,
  `complete_time` int(11) NOT NULL,
  `fh_time` int(11) NOT NULL COMMENT '发货时间',
  `state` int(11) NOT NULL COMMENT '1.待付款 2.待发货3.待确认4.已完成5.退款中6.已退款7.退款拒绝',
  `order_num` varchar(20) NOT NULL COMMENT '订单号',
  `good_id` int(11) NOT NULL,
  `good_name` varchar(100) NOT NULL,
  `good_img` varchar(100) NOT NULL,
  `good_money` decimal(10,2) NOT NULL,
  `out_trade_no` varchar(50) NOT NULL,
  `good_spec` varchar(200) NOT NULL COMMENT '商品规格',
  `del` int(11) NOT NULL COMMENT '用户删除1是  2否 ',
  `del2` int(11) NOT NULL COMMENT '商家删除1.是2.否',
  `uniacid` int(11) NOT NULL,
  `freight` decimal(10,2) NOT NULL,
  `note` varchar(100) NOT NULL,
  `good_num` int(11) NOT NULL,
  `is_zt` int(11) NOT NULL DEFAULT '2',
  `zt_time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_paylog`;
CREATE TABLE `ims_zhtc_paylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL COMMENT '外键id(商家,帖子,黄页,拼车)',
  `money` decimal(10,2) NOT NULL COMMENT '钱',
  `time` datetime NOT NULL COMMENT '时间',
  `uniacid` varchar(50) NOT NULL COMMENT '50',
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_qbmx
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_qbmx`;
CREATE TABLE `ims_zhtc_qbmx` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `money` decimal(10,2) NOT NULL,
  `type` int(11) NOT NULL,
  `note` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_qbmx
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_share`;
CREATE TABLE `ims_zhtc_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_id` int(11) NOT NULL COMMENT '帖子id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_share
-- ----------------------------
INSERT INTO `ims_zhtc_share` VALUES ('2', '16', '0', '0');
INSERT INTO `ims_zhtc_share` VALUES ('4', '0', '1', '2');

-- ----------------------------
-- Table structure for ims_zhtc_signlist
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_signlist`;
CREATE TABLE `ims_zhtc_signlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `time` varchar(20) NOT NULL COMMENT '签到时间',
  `time2` int(11) NOT NULL,
  `integral` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `time3` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_signlist
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_signset
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_signset`;
CREATE TABLE `ims_zhtc_signset` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `one` int(11) NOT NULL COMMENT '首次奖励积分',
  `integral` int(11) NOT NULL COMMENT '每天签到积分',
  `is_open` int(11) NOT NULL COMMENT '1.开启2.关闭  签到',
  `is_bq` int(11) NOT NULL COMMENT '1.开启2.关闭  补签',
  `bq_integral` int(11) NOT NULL COMMENT '补签扣除积分',
  `details` text NOT NULL COMMENT '签到说明',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_signset
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_sms
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_sms`;
CREATE TABLE `ims_zhtc_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appkey` varchar(100) NOT NULL,
  `tpl_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `is_open` int(11) NOT NULL DEFAULT '2',
  `tid1` varchar(50) NOT NULL,
  `tid2` varchar(50) NOT NULL,
  `tid3` varchar(50) NOT NULL,
  `tpl2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_sms
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_spec_value
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_spec_value`;
CREATE TABLE `ims_zhtc_spec_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `spec_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `num` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_spec_value
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_special
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_special`;
CREATE TABLE `ims_zhtc_special` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `day` varchar(20) NOT NULL COMMENT '日期',
  `integral` int(11) NOT NULL COMMENT '积分',
  `title` varchar(20) NOT NULL COMMENT '标题说明',
  `color` varchar(20) NOT NULL COMMENT '颜色',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_special
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_store`;
CREATE TABLE `ims_zhtc_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `store_name` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(200) NOT NULL COMMENT '商家地址',
  `announcement` varchar(100) NOT NULL COMMENT '公告',
  `storetype_id` int(11) NOT NULL COMMENT '主行业分类id',
  `storetype2_id` int(11) NOT NULL COMMENT '商家子分类id',
  `area_id` int(11) NOT NULL COMMENT '区域id',
  `yy_time` varchar(50) NOT NULL COMMENT '营业时间',
  `keyword` varchar(50) NOT NULL COMMENT '关键字',
  `skzf` int(11) NOT NULL COMMENT '1.是 2否(刷卡支付)',
  `wifi` int(11) NOT NULL COMMENT '1.是 2否',
  `mftc` int(11) NOT NULL COMMENT '1.是 2否(免费停车)',
  `jzxy` int(11) NOT NULL COMMENT '1.是 2否(禁止吸烟)',
  `tgbj` int(11) NOT NULL COMMENT '1.是 2否(提供包间)',
  `sfxx` int(11) NOT NULL COMMENT '1.是 2否(沙发休闲)',
  `tel` varchar(20) NOT NULL COMMENT '手机号',
  `logo` varchar(100) NOT NULL,
  `weixin_logo` varchar(100) NOT NULL,
  `ad` text NOT NULL COMMENT '轮播图',
  `state` int(11) NOT NULL COMMENT '1.待审核2通过3拒绝',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `password` varchar(100) NOT NULL COMMENT '核销密码',
  `details` text NOT NULL COMMENT '商家简介',
  `uniacid` int(11) NOT NULL,
  `coordinates` varchar(50) NOT NULL,
  `views` int(11) NOT NULL,
  `score` decimal(10,1) NOT NULL,
  `type` int(11) NOT NULL,
  `sh_time` int(11) NOT NULL,
  `time_over` int(11) NOT NULL,
  `img` text NOT NULL,
  `vr_link` text NOT NULL,
  `num` int(11) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `wallet` decimal(10,2) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `dq_time` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `fx_num` int(11) NOT NULL,
  `ewm_logo` varchar(100) NOT NULL,
  `is_top` int(4) NOT NULL DEFAULT '2',
  `yyzz_img` varchar(100) NOT NULL,
  `sfz_img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_store
-- ----------------------------
INSERT INTO `ims_zhtc_store` VALUES ('3', '0', '测试商家2', '河南省郑州市', '这是商家2 的公告', '1', '1', '0', '', '2', '1', '1', '0', '0', '0', '0', '19999999999', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg,images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '2', '0.00', '', '商家简介', '2', '34.705493,112.458801', '115', '0.0', '3', '1527585891', '2', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg,images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '', '23', '17:15', '21:45', '0.00', '', 'd41d8cd98f00b204e9800998ecf8427e', '1558022400', '', '0000-00-00 00:00:00', '0', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '1', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg');
INSERT INTO `ims_zhtc_store` VALUES ('2', '0', '测试商家', '河南省洛阳市', '这是公告', '1', '1', '0', '', '测试', '1', '1', '1', '1', '1', '1', '18338811833', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg,images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg,images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '2', '0.00', '', '简介', '2', '34.677264,112.468414', '1231241', '0.0', '2', '1527584832', '2', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg,images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '', '1', '17:05', '21:45', '0.00', '', '', '1543309632', '', '0000-00-00 00:00:00', '0', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '1', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg');

-- ----------------------------
-- Table structure for ims_zhtc_store_wallet
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_store_wallet`;
CREATE TABLE `ims_zhtc_store_wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `note` varchar(20) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1加2减',
  `time` varchar(20) NOT NULL,
  `tx_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_store_wallet
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_storepaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_storepaylog`;
CREATE TABLE `ims_zhtc_storepaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '商家ID',
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  `note` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_storepaylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_storetype
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_storetype`;
CREATE TABLE `ims_zhtc_storetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL COMMENT '分类名称',
  `img` varchar(100) NOT NULL COMMENT '分类图片',
  `uniacid` int(11) NOT NULL,
  `num` int(11) NOT NULL COMMENT '排序',
  `money` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_storetype
-- ----------------------------
INSERT INTO `ims_zhtc_storetype` VALUES ('1', '餐饮美食', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg', '2', '12', '0.00', '1');
INSERT INTO `ims_zhtc_storetype` VALUES ('2', '餐饮', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '2', '2', '0.00', '1');
INSERT INTO `ims_zhtc_storetype` VALUES ('3', '测试三', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '2', '3', '0.00', '1');
INSERT INTO `ims_zhtc_storetype` VALUES ('4', '测试叁', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg', '2', '5', '0.00', '1');
INSERT INTO `ims_zhtc_storetype` VALUES ('5', '测试五', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '2', '6', '0.00', '1');
INSERT INTO `ims_zhtc_storetype` VALUES ('6', '测试7', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '2', '10', '0.00', '1');

-- ----------------------------
-- Table structure for ims_zhtc_storetype2
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_storetype2`;
CREATE TABLE `ims_zhtc_storetype2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT '主分类id',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_storetype2
-- ----------------------------
INSERT INTO `ims_zhtc_storetype2` VALUES ('1', '烧烤', '1', '1', '2', '1');
INSERT INTO `ims_zhtc_storetype2` VALUES ('2', '火锅', '1', '2', '2', '1');
INSERT INTO `ims_zhtc_storetype2` VALUES ('3', '男装', '2', '2', '2', '1');
INSERT INTO `ims_zhtc_storetype2` VALUES ('4', '女装', '2', '1', '2', '1');

-- ----------------------------
-- Table structure for ims_zhtc_system
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_system`;
CREATE TABLE `ims_zhtc_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(100) NOT NULL COMMENT 'appid',
  `appsecret` varchar(200) NOT NULL COMMENT 'appsecret',
  `mchid` varchar(20) NOT NULL COMMENT '商户号',
  `wxkey` varchar(100) NOT NULL COMMENT '商户秘钥',
  `uniacid` varchar(50) NOT NULL,
  `url_name` varchar(20) NOT NULL COMMENT '网址名称',
  `details` text NOT NULL COMMENT '关于我们',
  `url_logo` varchar(100) NOT NULL COMMENT '网址logo',
  `bq_name` varchar(50) NOT NULL COMMENT '版权名称',
  `link_name` varchar(30) NOT NULL COMMENT '网站名称',
  `link_logo` varchar(100) NOT NULL COMMENT '网站logo',
  `support` varchar(20) NOT NULL COMMENT '技术支持',
  `bq_logo` varchar(100) NOT NULL,
  `color` varchar(20) NOT NULL,
  `tz_appid` varchar(30) NOT NULL,
  `tz_name` varchar(30) NOT NULL,
  `pt_name` varchar(30) NOT NULL COMMENT '平台名称',
  `tz_audit` int(11) NOT NULL COMMENT '帖子审核1.是 2否',
  `sj_audit` int(11) NOT NULL COMMENT '商家审核1.是 2否',
  `mapkey` varchar(200) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `gd_key` varchar(100) NOT NULL,
  `rz_xuz` text NOT NULL,
  `ft_xuz` text NOT NULL,
  `fx_money` decimal(10,2) NOT NULL,
  `hb_sxf` int(11) NOT NULL,
  `tx_money` decimal(10,2) NOT NULL,
  `tx_sxf` int(11) NOT NULL,
  `tx_details` text NOT NULL,
  `is_hhr` int(4) NOT NULL DEFAULT '2',
  `is_hbfl` int(4) NOT NULL DEFAULT '2',
  `is_zx` int(4) NOT NULL DEFAULT '2',
  `is_car` int(4) NOT NULL,
  `pc_xuz` text NOT NULL,
  `pc_money` decimal(10,2) NOT NULL,
  `is_sjrz` int(4) NOT NULL,
  `is_pcfw` int(4) NOT NULL,
  `total_num` int(11) NOT NULL,
  `is_goods` int(4) NOT NULL,
  `apiclient_cert` text NOT NULL,
  `apiclient_key` text NOT NULL,
  `is_openzx` int(4) NOT NULL,
  `is_hyset` int(4) NOT NULL,
  `is_tzopen` int(4) NOT NULL,
  `is_pageopen` int(4) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `is_tel` int(4) NOT NULL DEFAULT '1',
  `tx_mode` int(4) NOT NULL DEFAULT '1',
  `many_city` int(4) NOT NULL DEFAULT '2',
  `tx_type` int(4) NOT NULL DEFAULT '2',
  `is_hbzf` int(4) NOT NULL DEFAULT '1',
  `hb_img` varchar(100) NOT NULL,
  `tz_num` int(11) NOT NULL,
  `client_ip` varchar(30) NOT NULL,
  `hb_content` varchar(100) NOT NULL,
  `is_tzhb` int(4) NOT NULL DEFAULT '1',
  `sj_max` varchar(1) NOT NULL,
  `zfwl_max` varchar(1) NOT NULL,
  `zfwl_open` int(4) NOT NULL DEFAULT '1',
  `zx_type` int(4) NOT NULL DEFAULT '1',
  `ft_num` int(11) NOT NULL,
  `is_img` int(11) NOT NULL DEFAULT '2',
  `is_sjhb` int(11) NOT NULL DEFAULT '1',
  `is_tzdz` int(11) NOT NULL DEFAULT '1',
  `is_rz` int(11) NOT NULL DEFAULT '1',
  `integral` int(11) NOT NULL,
  `integral2` int(11) NOT NULL,
  `is_jf` int(11) NOT NULL DEFAULT '1',
  `is_kf` int(11) NOT NULL DEFAULT '1',
  `dw_more` int(11) NOT NULL DEFAULT '2',
  `is_zxrz` int(11) NOT NULL DEFAULT '1',
  `tzmc` varchar(20) NOT NULL,
  `is_dnss` int(11) NOT NULL DEFAULT '1',
  `is_vr` int(11) NOT NULL DEFAULT '1',
  `is_yysj` int(11) NOT NULL DEFAULT '1',
  `tc_img` varchar(100) NOT NULL,
  `tc_gg` varchar(100) NOT NULL,
  `renwu_num` int(5) NOT NULL DEFAULT '2' COMMENT '每人可领取的赏金任务数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_system
-- ----------------------------
INSERT INTO `ims_zhtc_system` VALUES ('1', 'wxf0a17caf981a4e6e', 'ad1d6b3804a2f83af58821b0be6f6be4', '', '', '2', '', '<p>在后台的系统设置中的基本信息 里设置 关于我们</p>', '', '汝阳生活圈版权信息', '汝阳生活圈后台管理系统', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg', 'cc', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '#3c78d8', '', '', '汝阳', '1', '1', 'JBHBZ-EJGL6-CQTSN-E3QTP-YFIYF-EIBH3', '18338811833', 'bd612391433ba7b7a7a244f795327541', '', '<p>这是发贴须知  通过后台进行编辑</p>', '0.00', '0', '0.00', '0', '', '2', '1', '2', '0', '', '0.00', '1', '2', '1679', '0', '', '', '0', '0', '1', '1', '洛阳市', '1', '1', '1', '2', '1', '', '1', '', '', '1', '', '', '1', '1', '0', '2', '1', '1', '2', '0', '0', '2', '1', '2', '1', '', '1', '1', '1', '', '获取用户信息', '2');

-- ----------------------------
-- Table structure for ims_zhtc_top
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_top`;
CREATE TABLE `ims_zhtc_top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1.一天2.一周3.一个月',
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `uniacid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_top
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_type`;
CREATE TABLE `ims_zhtc_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL COMMENT '分类名称',
  `img` varchar(100) NOT NULL COMMENT '分类图片',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `num` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  `sx_money` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_type
-- ----------------------------
INSERT INTO `ims_zhtc_type` VALUES ('1', '广告', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '2', '7', '0.00', '1', '0.00');
INSERT INTO `ims_zhtc_type` VALUES ('5', '招聘求职', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '2', '4', '0.00', '1', '0.00');
INSERT INTO `ims_zhtc_type` VALUES ('4', '人找车', 'images/2/2018/06/c1K6L3nPGGNkj0pxshN66qLQ6nlWXW.jpg', '2', '3', '0.00', '1', '0.00');

-- ----------------------------
-- Table structure for ims_zhtc_type2
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_type2`;
CREATE TABLE `ims_zhtc_type2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `type_id` int(11) NOT NULL COMMENT '主分类id',
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_type2
-- ----------------------------
INSERT INTO `ims_zhtc_type2` VALUES ('1', '酒类广告', '1', '3', '2', '2');

-- ----------------------------
-- Table structure for ims_zhtc_tzpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_tzpaylog`;
CREATE TABLE `ims_zhtc_tzpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tz_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  `note` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_tzpaylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_user`;
CREATE TABLE `ims_zhtc_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL COMMENT 'openid',
  `img` varchar(200) NOT NULL COMMENT '头像',
  `time` varchar(20) NOT NULL COMMENT '注册时间',
  `name` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `commission` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  `total_score` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `ruyang_money` decimal(10,2) NOT NULL,
  `money_dj` decimal(10,2) NOT NULL COMMENT '要冻结的金额',
  `renwu_num` int(5) NOT NULL DEFAULT '0' COMMENT '该用户已领取的赏金任务数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_user
-- ----------------------------
INSERT INTO `ims_zhtc_user` VALUES ('1', 'ogffL4qbD33c1G8ruwMoahMseWU4', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKcZXiaTBAicoIZxuMTUo0J0LVnR2ibx7CF3JudorCDchovzElavbgic4uK7cSa1RVHcFXGakkoDIDYqw/132', '1527589414', '℃', '2', '10.00', '', '', '', '0.00', '1', '0', '0', '242.83', '1.10', '0');
INSERT INTO `ims_zhtc_user` VALUES ('2', 'ogffL4qbD33c1G8ruwMoahMseWU4', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKcZXiaTBAicoIZxuMTUo0J0LVnR2ibx7CF3JudorCDchovzElavbgic4uK7cSa1RVHcFXGakkoDIDYqw/132', '1527589414', 'pp', '2', '10.00', '', '', '', '0.00', '1', '0', '0', '111.00', '0.00', '0');
INSERT INTO `ims_zhtc_user` VALUES ('3', 'ogffL4s53umnKvP2xngab0b2U_mE', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJSlGOyeng3NNTQaJK8ic2yb2fPW7dM3Ek5icyvP3DBqkAnRbOiaUPJM9RuymO2mTEjjibDYicfWNL4ibMQ/132', '1528525036', 'Geek', '2', '0.00', '', '', '', '0.00', '1', '0', '0', '871.77', '21.00', '0');

-- ----------------------------
-- Table structure for ims_zhtc_userformid
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_userformid`;
CREATE TABLE `ims_zhtc_userformid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `form_id` varchar(50) NOT NULL COMMENT 'form_id',
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL COMMENT 'openid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=371 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_userformid
-- ----------------------------
INSERT INTO `ims_zhtc_userformid` VALUES ('1', '0', 'the formId is a mock one', '2018-05-29 17:12:53', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('2', '0', 'the formId is a mock one', '2018-05-29 17:14:13', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('3', '0', 'the formId is a mock one', '2018-05-29 17:14:14', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('4', '0', 'the formId is a mock one', '2018-05-29 17:14:15', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('5', '0', 'the formId is a mock one', '2018-05-29 17:14:19', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('6', '0', 'the formId is a mock one', '2018-05-29 17:14:22', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('7', '0', 'the formId is a mock one', '2018-05-29 17:35:19', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('8', '0', 'the formId is a mock one', '2018-05-29 17:35:25', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('168', '3', 'the formId is a mock one', '2018-06-09 14:18:55', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('10', '0', 'the formId is a mock one', '2018-06-01 16:47:00', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('11', '0', 'the formId is a mock one', '2018-06-01 16:47:47', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('12', '0', 'the formId is a mock one', '2018-06-01 16:47:54', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('13', '0', 'the formId is a mock one', '2018-06-01 16:48:49', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('14', '0', 'the formId is a mock one', '2018-06-01 16:49:18', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('15', '0', 'the formId is a mock one', '2018-06-01 16:50:02', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('16', '0', 'the formId is a mock one', '2018-06-01 16:50:41', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('17', '0', 'the formId is a mock one', '2018-06-01 16:51:10', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('18', '0', 'the formId is a mock one', '2018-06-01 16:51:32', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('19', '0', 'the formId is a mock one', '2018-06-01 16:51:54', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('20', '0', 'the formId is a mock one', '2018-06-01 16:51:59', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('21', '0', 'the formId is a mock one', '2018-06-01 16:59:01', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('22', '0', 'the formId is a mock one', '2018-06-01 17:05:58', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('23', '0', 'the formId is a mock one', '2018-06-01 17:11:06', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('24', '0', 'the formId is a mock one', '2018-06-01 17:15:26', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('25', '0', 'the formId is a mock one', '2018-06-04 14:54:45', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('26', '0', 'the formId is a mock one', '2018-06-04 14:57:50', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('27', '0', 'the formId is a mock one', '2018-06-04 15:08:54', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('28', '0', 'the formId is a mock one', '2018-06-04 15:14:41', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('29', '0', 'the formId is a mock one', '2018-06-04 15:15:13', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('30', '0', 'the formId is a mock one', '2018-06-04 15:21:25', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('31', '0', 'the formId is a mock one', '2018-06-04 15:26:13', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('32', '0', 'the formId is a mock one', '2018-06-04 15:26:32', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('33', '0', 'the formId is a mock one', '2018-06-04 15:26:38', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('34', '0', 'the formId is a mock one', '2018-06-04 15:26:43', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('35', '0', 'the formId is a mock one', '2018-06-04 16:45:10', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('36', '0', 'the formId is a mock one', '2018-06-07 16:04:10', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('37', '0', 'the formId is a mock one', '2018-06-07 16:04:14', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('38', '0', 'the formId is a mock one', '2018-06-07 16:04:22', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('39', '0', 'the formId is a mock one', '2018-06-07 16:04:25', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('40', '0', 'the formId is a mock one', '2018-06-07 16:04:25', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('41', '0', 'the formId is a mock one', '2018-06-08 15:08:04', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('42', '0', 'the formId is a mock one', '2018-06-08 15:12:03', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('43', '0', 'the formId is a mock one', '2018-06-08 15:19:57', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('44', '0', 'the formId is a mock one', '2018-06-08 15:22:02', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('45', '0', 'the formId is a mock one', '2018-06-08 15:24:47', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('46', '0', 'the formId is a mock one', '2018-06-08 15:26:13', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('47', '0', 'the formId is a mock one', '2018-06-08 15:26:38', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('48', '0', 'the formId is a mock one', '2018-06-08 15:27:31', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('49', '0', 'the formId is a mock one', '2018-06-08 15:28:12', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('50', '0', 'the formId is a mock one', '2018-06-08 15:28:34', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('51', '0', 'the formId is a mock one', '2018-06-08 15:29:18', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('52', '0', 'the formId is a mock one', '2018-06-08 15:29:48', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('53', '0', 'the formId is a mock one', '2018-06-08 15:30:18', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('54', '0', 'the formId is a mock one', '2018-06-08 15:36:10', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('55', '0', 'the formId is a mock one', '2018-06-08 15:38:28', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('56', '0', 'the formId is a mock one', '2018-06-08 15:38:42', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('57', '0', 'the formId is a mock one', '2018-06-08 15:38:47', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('58', '0', 'the formId is a mock one', '2018-06-08 15:40:18', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('59', '0', 'the formId is a mock one', '2018-06-08 15:44:22', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('60', '0', 'the formId is a mock one', '2018-06-08 15:45:13', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('61', '0', 'the formId is a mock one', '2018-06-08 15:45:16', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('62', '0', 'the formId is a mock one', '2018-06-08 15:45:22', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('63', '0', 'the formId is a mock one', '2018-06-08 15:47:44', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('64', '0', 'the formId is a mock one', '2018-06-08 15:48:26', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('65', '0', 'the formId is a mock one', '2018-06-08 15:50:04', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('66', '0', 'the formId is a mock one', '2018-06-08 15:51:22', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('67', '0', 'the formId is a mock one', '2018-06-08 15:52:06', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('68', '0', 'the formId is a mock one', '2018-06-08 15:53:21', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('69', '0', 'the formId is a mock one', '2018-06-08 15:53:26', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('70', '0', 'the formId is a mock one', '2018-06-08 15:53:41', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('71', '0', 'the formId is a mock one', '2018-06-08 15:54:16', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('72', '0', 'the formId is a mock one', '2018-06-08 15:56:39', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('73', '0', 'the formId is a mock one', '2018-06-09 09:44:21', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('74', '0', 'the formId is a mock one', '2018-06-09 09:44:34', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('75', '0', 'the formId is a mock one', '2018-06-09 10:20:02', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('76', '0', 'the formId is a mock one', '2018-06-09 10:24:43', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('77', '0', 'the formId is a mock one', '2018-06-09 10:24:47', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('78', '0', 'the formId is a mock one', '2018-06-09 10:29:02', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('79', '0', 'the formId is a mock one', '2018-06-09 10:29:23', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('80', '0', 'the formId is a mock one', '2018-06-09 10:32:14', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('81', '0', 'the formId is a mock one', '2018-06-09 10:34:31', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('82', '0', 'the formId is a mock one', '2018-06-09 10:35:29', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('83', '0', 'the formId is a mock one', '2018-06-09 10:35:50', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('84', '0', 'the formId is a mock one', '2018-06-09 10:56:35', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('85', '0', 'the formId is a mock one', '2018-06-09 10:57:28', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('86', '0', 'the formId is a mock one', '2018-06-09 10:59:39', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('87', '0', 'the formId is a mock one', '2018-06-09 10:59:44', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('88', '0', 'the formId is a mock one', '2018-06-09 11:00:53', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('89', '0', 'the formId is a mock one', '2018-06-09 11:01:37', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('90', '0', 'the formId is a mock one', '2018-06-09 11:01:53', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('91', '0', 'the formId is a mock one', '2018-06-09 11:05:55', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('92', '0', 'the formId is a mock one', '2018-06-09 11:12:45', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('93', '0', 'the formId is a mock one', '2018-06-09 11:14:22', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('94', '0', 'the formId is a mock one', '2018-06-09 11:22:16', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('95', '0', 'the formId is a mock one', '2018-06-09 11:24:21', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('96', '0', 'the formId is a mock one', '2018-06-09 11:25:03', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('97', '0', 'the formId is a mock one', '2018-06-09 11:26:41', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('98', '0', 'the formId is a mock one', '2018-06-09 11:28:46', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('99', '0', 'the formId is a mock one', '2018-06-09 11:30:12', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('100', '0', 'the formId is a mock one', '2018-06-09 11:32:54', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('101', '0', 'the formId is a mock one', '2018-06-09 11:33:27', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('102', '0', 'the formId is a mock one', '2018-06-09 11:34:09', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('103', '0', 'the formId is a mock one', '2018-06-09 11:34:37', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('104', '0', 'the formId is a mock one', '2018-06-09 11:35:19', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('105', '0', 'the formId is a mock one', '2018-06-09 11:36:43', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('106', '0', 'the formId is a mock one', '2018-06-09 11:37:41', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('107', '0', 'the formId is a mock one', '2018-06-09 11:39:59', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('108', '0', 'the formId is a mock one', '2018-06-09 11:42:04', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('109', '0', 'the formId is a mock one', '2018-06-09 11:44:24', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('110', '0', 'the formId is a mock one', '2018-06-09 11:44:57', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('111', '0', 'the formId is a mock one', '2018-06-09 11:45:24', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('112', '0', 'the formId is a mock one', '2018-06-09 11:46:53', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('113', '0', 'the formId is a mock one', '2018-06-09 11:47:44', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('114', '0', 'the formId is a mock one', '2018-06-09 11:48:07', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('115', '0', 'the formId is a mock one', '2018-06-09 11:48:35', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('116', '0', 'the formId is a mock one', '2018-06-09 11:49:08', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('117', '0', 'the formId is a mock one', '2018-06-09 11:50:02', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('118', '0', 'the formId is a mock one', '2018-06-09 11:50:38', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('119', '0', 'the formId is a mock one', '2018-06-09 11:52:26', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('120', '0', 'the formId is a mock one', '2018-06-09 11:53:20', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('121', '0', 'the formId is a mock one', '2018-06-09 11:56:37', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('122', '0', 'the formId is a mock one', '2018-06-09 11:57:50', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('123', '0', 'the formId is a mock one', '2018-06-09 11:58:20', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('124', '0', 'the formId is a mock one', '2018-06-09 11:59:27', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('125', '0', 'the formId is a mock one', '2018-06-09 12:01:10', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('126', '0', 'the formId is a mock one', '2018-06-09 12:02:22', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('127', '0', 'the formId is a mock one', '2018-06-09 13:07:58', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('128', '0', 'the formId is a mock one', '2018-06-09 13:16:04', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('129', '0', 'the formId is a mock one', '2018-06-09 13:17:03', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('130', '0', 'the formId is a mock one', '2018-06-09 13:17:10', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('131', '0', 'the formId is a mock one', '2018-06-09 13:17:46', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('132', '0', 'the formId is a mock one', '2018-06-09 13:18:22', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('133', '0', 'the formId is a mock one', '2018-06-09 13:19:37', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('134', '0', 'the formId is a mock one', '2018-06-09 13:21:01', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('135', '0', 'the formId is a mock one', '2018-06-09 13:21:38', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('136', '0', 'the formId is a mock one', '2018-06-09 13:22:17', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('137', '0', 'the formId is a mock one', '2018-06-09 13:26:09', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('138', '0', 'the formId is a mock one', '2018-06-09 13:26:51', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('139', '0', 'the formId is a mock one', '2018-06-09 13:29:36', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('140', '0', 'the formId is a mock one', '2018-06-09 13:30:52', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('141', '0', 'the formId is a mock one', '2018-06-09 13:31:49', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('142', '0', 'the formId is a mock one', '2018-06-09 13:32:39', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('143', '0', 'the formId is a mock one', '2018-06-09 13:33:38', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('144', '0', 'the formId is a mock one', '2018-06-09 13:33:41', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('145', '0', 'the formId is a mock one', '2018-06-09 13:34:13', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('146', '0', 'the formId is a mock one', '2018-06-09 13:35:24', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('147', '0', 'the formId is a mock one', '2018-06-09 13:35:30', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('148', '0', 'the formId is a mock one', '2018-06-09 13:35:37', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('149', '0', 'the formId is a mock one', '2018-06-09 13:36:04', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('150', '0', 'the formId is a mock one', '2018-06-09 13:41:28', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('151', '0', 'the formId is a mock one', '2018-06-09 13:41:31', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('152', '0', 'the formId is a mock one', '2018-06-09 13:43:00', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('153', '0', 'the formId is a mock one', '2018-06-09 13:46:49', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('154', '0', 'the formId is a mock one', '2018-06-09 13:46:55', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('155', '0', 'the formId is a mock one', '2018-06-09 13:47:04', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('156', '0', 'the formId is a mock one', '2018-06-09 13:47:17', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('157', '0', 'the formId is a mock one', '2018-06-09 13:51:39', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('158', '0', 'the formId is a mock one', '2018-06-09 13:51:58', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('159', '0', 'the formId is a mock one', '2018-06-09 14:04:14', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('160', '0', 'the formId is a mock one', '2018-06-09 14:06:04', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('161', '0', 'the formId is a mock one', '2018-06-09 14:06:34', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('162', '0', 'the formId is a mock one', '2018-06-09 14:06:40', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('163', '0', 'the formId is a mock one', '2018-06-09 14:06:45', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('164', '0', 'the formId is a mock one', '2018-06-09 14:06:49', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('165', '3', 'the formId is a mock one', '2018-06-09 14:17:50', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('166', '3', 'the formId is a mock one', '2018-06-09 14:17:54', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('167', '3', 'the formId is a mock one', '2018-06-09 14:18:14', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('169', '3', 'the formId is a mock one', '2018-06-09 14:20:27', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('170', '3', 'the formId is a mock one', '2018-06-09 14:20:33', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('171', '3', 'the formId is a mock one', '2018-06-09 14:20:38', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('172', '3', 'the formId is a mock one', '2018-06-09 14:21:53', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('173', '3', 'the formId is a mock one', '2018-06-09 14:22:03', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('174', '3', 'the formId is a mock one', '2018-06-09 14:22:04', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('175', '3', 'the formId is a mock one', '2018-06-09 14:22:10', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('176', '3', 'the formId is a mock one', '2018-06-09 14:22:11', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('177', '3', 'the formId is a mock one', '2018-06-09 14:22:21', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('178', '3', 'the formId is a mock one', '2018-06-09 14:22:25', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('179', '3', 'the formId is a mock one', '2018-06-09 14:22:37', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('180', '3', 'the formId is a mock one', '2018-06-09 14:22:43', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('181', '3', 'the formId is a mock one', '2018-06-09 14:23:03', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('182', '3', 'the formId is a mock one', '2018-06-09 14:25:13', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('183', '3', 'the formId is a mock one', '2018-06-09 14:25:16', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('184', '3', 'the formId is a mock one', '2018-06-09 14:26:02', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('185', '3', 'the formId is a mock one', '2018-06-09 14:26:19', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('186', '0', 'the formId is a mock one', '2018-06-09 14:27:33', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('187', '0', 'the formId is a mock one', '2018-06-09 14:27:38', '2', '');
INSERT INTO `ims_zhtc_userformid` VALUES ('188', '3', 'the formId is a mock one', '2018-06-09 14:29:31', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('189', '3', 'the formId is a mock one', '2018-06-09 14:31:52', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('190', '3', 'the formId is a mock one', '2018-06-09 14:33:00', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('191', '3', 'the formId is a mock one', '2018-06-09 14:33:28', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('192', '3', 'the formId is a mock one', '2018-06-09 14:35:16', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('193', '3', 'the formId is a mock one', '2018-06-09 14:35:51', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('194', '3', 'the formId is a mock one', '2018-06-09 14:36:18', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('195', '3', 'the formId is a mock one', '2018-06-09 14:37:05', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('196', '3', 'the formId is a mock one', '2018-06-09 14:37:36', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('197', '3', 'the formId is a mock one', '2018-06-09 14:46:14', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('198', '3', 'the formId is a mock one', '2018-06-09 14:50:58', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('199', '3', 'the formId is a mock one', '2018-06-09 14:52:22', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('200', '3', 'the formId is a mock one', '2018-06-09 14:52:34', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('201', '3', 'the formId is a mock one', '2018-06-09 14:53:05', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('202', '3', 'the formId is a mock one', '2018-06-09 14:53:12', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('203', '3', 'the formId is a mock one', '2018-06-09 14:53:45', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('204', '3', 'the formId is a mock one', '2018-06-09 14:55:27', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('205', '3', 'the formId is a mock one', '2018-06-09 14:55:50', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('206', '3', 'the formId is a mock one', '2018-06-09 14:55:52', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('207', '3', 'the formId is a mock one', '2018-06-09 14:56:01', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('208', '3', 'the formId is a mock one', '2018-06-09 15:00:01', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('289', '3', 'the formId is a mock one', '2018-06-09 17:03:47', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('288', '3', 'the formId is a mock one', '2018-06-09 17:03:29', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('287', '3', 'the formId is a mock one', '2018-06-09 17:03:27', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('286', '3', 'the formId is a mock one', '2018-06-09 17:03:25', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('285', '3', 'the formId is a mock one', '2018-06-09 17:03:23', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('284', '3', 'the formId is a mock one', '2018-06-09 17:03:17', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('283', '3', 'the formId is a mock one', '2018-06-09 17:02:16', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('282', '3', 'the formId is a mock one', '2018-06-09 17:02:08', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('281', '3', 'the formId is a mock one', '2018-06-09 17:01:50', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('280', '3', 'the formId is a mock one', '2018-06-09 17:01:19', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('279', '3', 'the formId is a mock one', '2018-06-09 16:58:39', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('278', '3', 'the formId is a mock one', '2018-06-09 16:57:50', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('277', '3', 'the formId is a mock one', '2018-06-09 16:57:11', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('276', '3', 'the formId is a mock one', '2018-06-09 16:57:07', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('275', '3', 'the formId is a mock one', '2018-06-09 16:56:49', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('274', '3', 'the formId is a mock one', '2018-06-09 16:56:45', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('273', '3', 'the formId is a mock one', '2018-06-09 16:56:44', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('272', '3', 'the formId is a mock one', '2018-06-09 16:56:41', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('271', '3', 'the formId is a mock one', '2018-06-09 16:56:40', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('270', '3', 'the formId is a mock one', '2018-06-09 16:56:38', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('269', '3', 'the formId is a mock one', '2018-06-09 16:56:35', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('268', '3', 'the formId is a mock one', '2018-06-09 16:56:32', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('267', '3', 'the formId is a mock one', '2018-06-09 16:07:34', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('266', '3', 'the formId is a mock one', '2018-06-09 15:59:06', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('265', '3', 'the formId is a mock one', '2018-06-09 15:58:25', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('264', '3', 'the formId is a mock one', '2018-06-09 15:57:53', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('263', '3', 'the formId is a mock one', '2018-06-09 15:57:06', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('262', '3', 'the formId is a mock one', '2018-06-09 15:56:25', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('261', '3', 'the formId is a mock one', '2018-06-09 15:55:00', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('260', '3', 'the formId is a mock one', '2018-06-09 15:54:23', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('239', '3', 'the formId is a mock one', '2018-06-09 15:31:04', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('240', '3', 'the formId is a mock one', '2018-06-09 15:33:50', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('241', '3', 'the formId is a mock one', '2018-06-09 15:35:14', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('242', '3', 'the formId is a mock one', '2018-06-09 15:36:40', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('243', '3', 'the formId is a mock one', '2018-06-09 15:40:06', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('244', '3', 'the formId is a mock one', '2018-06-09 15:43:42', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('245', '3', 'the formId is a mock one', '2018-06-09 15:44:44', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('246', '3', 'the formId is a mock one', '2018-06-09 15:45:34', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('247', '3', 'the formId is a mock one', '2018-06-09 15:46:05', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('248', '3', 'the formId is a mock one', '2018-06-09 15:46:44', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('249', '3', 'the formId is a mock one', '2018-06-09 15:47:24', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('250', '3', 'the formId is a mock one', '2018-06-09 15:48:00', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('251', '3', 'the formId is a mock one', '2018-06-09 15:48:57', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('252', '3', 'the formId is a mock one', '2018-06-09 15:49:35', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('253', '3', 'the formId is a mock one', '2018-06-09 15:50:04', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('254', '3', 'the formId is a mock one', '2018-06-09 15:50:53', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('255', '3', 'the formId is a mock one', '2018-06-09 15:51:41', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('256', '3', 'the formId is a mock one', '2018-06-09 15:51:58', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('257', '3', 'the formId is a mock one', '2018-06-09 15:52:12', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('258', '3', 'the formId is a mock one', '2018-06-09 15:52:16', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('259', '3', 'the formId is a mock one', '2018-06-09 15:52:37', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('290', '3', 'the formId is a mock one', '2018-06-09 17:04:10', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('291', '3', 'the formId is a mock one', '2018-06-09 17:04:15', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('292', '3', 'the formId is a mock one', '2018-06-09 17:04:19', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('293', '3', 'the formId is a mock one', '2018-06-09 17:04:25', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('294', '3', 'the formId is a mock one', '2018-06-09 17:04:33', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('295', '3', 'the formId is a mock one', '2018-06-09 17:04:37', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('296', '3', 'the formId is a mock one', '2018-06-09 17:04:37', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('297', '3', 'the formId is a mock one', '2018-06-09 17:04:39', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('298', '3', 'the formId is a mock one', '2018-06-09 17:04:44', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('299', '3', 'the formId is a mock one', '2018-06-09 17:04:50', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('300', '3', 'the formId is a mock one', '2018-06-09 17:05:07', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('301', '3', 'the formId is a mock one', '2018-06-09 17:05:13', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('302', '3', 'the formId is a mock one', '2018-06-09 17:05:18', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('303', '3', 'the formId is a mock one', '2018-06-09 17:05:31', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('304', '3', 'the formId is a mock one', '2018-06-09 17:05:37', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('305', '3', 'the formId is a mock one', '2018-06-09 17:05:56', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('306', '3', 'the formId is a mock one', '2018-06-09 17:06:08', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('307', '3', 'the formId is a mock one', '2018-06-09 17:06:45', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('308', '3', 'the formId is a mock one', '2018-06-09 17:08:56', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('309', '3', 'the formId is a mock one', '2018-06-09 17:11:13', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('310', '3', 'the formId is a mock one', '2018-06-09 17:13:46', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('311', '3', 'the formId is a mock one', '2018-06-09 17:14:42', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('312', '3', 'the formId is a mock one', '2018-06-09 17:15:53', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('313', '3', 'the formId is a mock one', '2018-06-09 17:16:30', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('314', '3', 'the formId is a mock one', '2018-06-09 17:17:01', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('315', '3', 'the formId is a mock one', '2018-06-09 17:17:29', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('316', '3', 'the formId is a mock one', '2018-06-09 17:17:52', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('317', '3', 'the formId is a mock one', '2018-06-09 17:18:02', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('318', '1', 'the formId is a mock one', '2018-06-09 17:43:15', '2', 'ogffL4qbD33c1G8ruwMoahMseWU4');
INSERT INTO `ims_zhtc_userformid` VALUES ('319', '1', 'the formId is a mock one', '2018-06-09 17:43:59', '2', 'ogffL4qbD33c1G8ruwMoahMseWU4');
INSERT INTO `ims_zhtc_userformid` VALUES ('320', '3', 'the formId is a mock one', '2018-06-09 17:46:48', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('321', '3', 'the formId is a mock one', '2018-06-09 18:38:50', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('322', '3', 'the formId is a mock one', '2018-06-10 10:09:55', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('323', '3', 'the formId is a mock one', '2018-06-10 10:10:04', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('324', '3', 'the formId is a mock one', '2018-06-10 10:10:12', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('325', '3', 'the formId is a mock one', '2018-06-10 10:22:09', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('326', '3', 'the formId is a mock one', '2018-06-10 10:22:44', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('327', '3', 'the formId is a mock one', '2018-06-10 10:22:44', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('328', '3', 'the formId is a mock one', '2018-06-10 10:22:45', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('329', '3', 'the formId is a mock one', '2018-06-10 10:29:02', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('330', '3', 'the formId is a mock one', '2018-06-10 10:29:09', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('331', '3', 'the formId is a mock one', '2018-06-10 10:29:10', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('332', '3', 'the formId is a mock one', '2018-06-10 10:29:11', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('333', '3', 'the formId is a mock one', '2018-06-10 10:29:11', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('334', '3', 'the formId is a mock one', '2018-06-10 10:29:11', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('335', '3', 'the formId is a mock one', '2018-06-10 10:29:11', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('336', '3', 'the formId is a mock one', '2018-06-10 10:29:14', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('337', '3', 'the formId is a mock one', '2018-06-10 10:29:14', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('338', '3', 'the formId is a mock one', '2018-06-10 10:29:14', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('339', '3', 'the formId is a mock one', '2018-06-10 10:29:14', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('340', '3', 'the formId is a mock one', '2018-06-10 10:29:14', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('341', '3', 'the formId is a mock one', '2018-06-10 10:29:15', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('342', '3', 'the formId is a mock one', '2018-06-10 10:29:15', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('343', '3', 'the formId is a mock one', '2018-06-10 10:29:16', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('344', '3', 'the formId is a mock one', '2018-06-10 10:29:16', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('345', '3', 'the formId is a mock one', '2018-06-10 10:29:17', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('346', '3', 'the formId is a mock one', '2018-06-10 10:29:17', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('347', '3', 'the formId is a mock one', '2018-06-10 10:29:18', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('348', '3', 'the formId is a mock one', '2018-06-10 10:29:18', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('349', '3', 'the formId is a mock one', '2018-06-10 10:29:20', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('350', '3', 'the formId is a mock one', '2018-06-10 10:29:21', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('351', '3', 'the formId is a mock one', '2018-06-10 10:29:22', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('352', '3', 'the formId is a mock one', '2018-06-10 10:29:25', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('353', '3', 'the formId is a mock one', '2018-06-10 10:29:26', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('354', '3', 'the formId is a mock one', '2018-06-10 10:47:04', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('355', '3', 'the formId is a mock one', '2018-06-10 10:47:17', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('356', '3', 'the formId is a mock one', '2018-06-10 10:47:20', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('357', '3', 'the formId is a mock one', '2018-06-10 10:47:26', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('358', '3', 'the formId is a mock one', '2018-06-10 10:55:59', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('359', '3', 'the formId is a mock one', '2018-06-10 13:11:33', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('360', '3', 'the formId is a mock one', '2018-06-10 13:21:33', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('361', '1', 'the formId is a mock one', '2018-06-12 15:28:42', '2', 'ogffL4qbD33c1G8ruwMoahMseWU4');
INSERT INTO `ims_zhtc_userformid` VALUES ('362', '3', 'the formId is a mock one', '2018-06-13 11:05:55', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('363', '3', 'the formId is a mock one', '2018-06-13 11:06:00', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('364', '3', 'the formId is a mock one', '2018-06-13 11:12:35', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('365', '3', 'the formId is a mock one', '2018-06-13 11:13:05', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('366', '3', 'the formId is a mock one', '2018-06-13 11:14:19', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('367', '3', 'the formId is a mock one', '2018-06-13 11:15:00', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('368', '3', 'the formId is a mock one', '2018-06-13 11:17:14', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('369', '3', 'the formId is a mock one', '2018-06-13 11:17:26', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');
INSERT INTO `ims_zhtc_userformid` VALUES ('370', '3', 'the formId is a mock one', '2018-06-13 11:18:06', '2', 'ogffL4s53umnKvP2xngab0b2U_mE');

-- ----------------------------
-- Table structure for ims_zhtc_video
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_video`;
CREATE TABLE `ims_zhtc_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL COMMENT '分类ID',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `time` datetime NOT NULL,
  `yd_num` int(11) NOT NULL COMMENT '阅读数量',
  `pl_num` int(11) NOT NULL COMMENT '评论数量',
  `dz_num` int(11) NOT NULL COMMENT '点赞数量',
  `uniacid` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL COMMENT '视频链接',
  `logo` varchar(200) NOT NULL COMMENT '发布人logo',
  `nick_name` varchar(30) NOT NULL COMMENT '昵称',
  `cityname` varchar(50) NOT NULL COMMENT '城市名称',
  `num` int(11) NOT NULL COMMENT '排序',
  `fm_logo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_video
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_videodz
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_videodz`;
CREATE TABLE `ims_zhtc_videodz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_videodz
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_videopl
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_videopl`;
CREATE TABLE `ims_zhtc_videopl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `video_id` int(11) NOT NULL,
  `time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_videopl
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_videotype
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_videotype`;
CREATE TABLE `ims_zhtc_videotype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL COMMENT '分类名称',
  `img` varchar(100) NOT NULL COMMENT '分类图片',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `num` int(11) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_videotype
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_withdrawal`;
CREATE TABLE `ims_zhtc_withdrawal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL COMMENT '真实姓名',
  `username` varchar(100) NOT NULL COMMENT '账号',
  `type` int(11) NOT NULL COMMENT '1支付宝 2.微信 3.银行',
  `time` int(11) NOT NULL COMMENT '申请时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `state` int(11) NOT NULL COMMENT '1.待审核 2.通过  3.拒绝',
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际金额',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `uniacid` int(11) NOT NULL,
  `method` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_withdrawal
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_yellowpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_yellowpaylog`;
CREATE TABLE `ims_zhtc_yellowpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hy_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_yellowpaylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_yellowset
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_yellowset`;
CREATE TABLE `ims_zhtc_yellowset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` int(11) NOT NULL COMMENT '入住天数',
  `money` decimal(10,2) NOT NULL,
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_yellowset
-- ----------------------------
INSERT INTO `ims_zhtc_yellowset` VALUES ('1', '100', '2000.00', '1', '2');

-- ----------------------------
-- Table structure for ims_zhtc_yellowstore
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_yellowstore`;
CREATE TABLE `ims_zhtc_yellowstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `logo` varchar(200) NOT NULL COMMENT 'logo图片',
  `company_name` varchar(100) NOT NULL COMMENT '公司名称',
  `company_address` varchar(200) NOT NULL COMMENT '公司地址',
  `type_id` int(11) NOT NULL COMMENT '二级分类',
  `link_tel` varchar(20) NOT NULL COMMENT '联系电话',
  `sort` int(11) NOT NULL COMMENT '排序',
  `rz_time` int(11) NOT NULL COMMENT '入住时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `state` int(4) NOT NULL COMMENT '1待,2通过,3拒绝',
  `rz_type` int(4) NOT NULL COMMENT '入驻类型',
  `time_over` int(4) NOT NULL COMMENT '1到期,2没到期',
  `uniacid` varchar(50) NOT NULL,
  `coordinates` varchar(50) NOT NULL COMMENT '坐标',
  `content` text NOT NULL COMMENT '简介',
  `imgs` varchar(500) NOT NULL COMMENT '多图',
  `views` int(11) NOT NULL,
  `tel2` varchar(20) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `dq_time` int(11) NOT NULL,
  `type2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_yellowstore
-- ----------------------------
INSERT INTO `ims_zhtc_yellowstore` VALUES ('1', '0', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg', '公司信息', '公司地址', '1', '18338811833', '2', '0', '1527593503', '2', '1', '2', '2', '34.677264,112.468414', '公司简介', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg,images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '100', '', '北京市', '1536233503', '1');

-- ----------------------------
-- Table structure for ims_zhtc_yellowtype
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_yellowtype`;
CREATE TABLE `ims_zhtc_yellowtype` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL COMMENT '分类名称',
  `img` varchar(100) NOT NULL COMMENT '分类图片',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `num` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1' COMMENT '1启用,2禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_yellowtype
-- ----------------------------
INSERT INTO `ims_zhtc_yellowtype` VALUES ('1', '分类一', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '2', '1', '0.00', '1');

-- ----------------------------
-- Table structure for ims_zhtc_yellowtype2
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_yellowtype2`;
CREATE TABLE `ims_zhtc_yellowtype2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `type_id` int(11) NOT NULL COMMENT '主分类id',
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1' COMMENT '1启用,2禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_yellowtype2
-- ----------------------------
INSERT INTO `ims_zhtc_yellowtype2` VALUES ('1', '分类一子类', '1', '2', '2', '1');

-- ----------------------------
-- Table structure for ims_zhtc_yjset
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_yjset`;
CREATE TABLE `ims_zhtc_yjset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(4) NOT NULL DEFAULT '1' COMMENT '1统一模式,2分开模式',
  `typer` varchar(10) NOT NULL COMMENT '统一比例',
  `sjper` varchar(10) NOT NULL COMMENT '商家比例',
  `hyper` varchar(10) NOT NULL COMMENT '黄页比例',
  `pcper` varchar(10) NOT NULL COMMENT '拼车比例',
  `tzper` varchar(10) NOT NULL COMMENT '帖子比例',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_yjset
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_yjtx
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_yjtx`;
CREATE TABLE `ims_zhtc_yjtx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL COMMENT '账号id',
  `tx_type` int(4) NOT NULL COMMENT '提现方式 1,支付宝,2微信,3银联',
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `status` int(4) NOT NULL COMMENT '状态 1申请,2通过,3拒绝',
  `uniacid` varchar(50) NOT NULL,
  `cerated_time` datetime NOT NULL COMMENT '日期',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际金额',
  `account` varchar(30) NOT NULL COMMENT '账户',
  `name` varchar(30) NOT NULL COMMENT '姓名',
  `sx_cost` decimal(10,2) NOT NULL COMMENT '手续费',
  `time` datetime NOT NULL COMMENT '审核时间',
  `is_del` int(4) NOT NULL DEFAULT '1' COMMENT '1正常,2删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_yjtx
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_zx
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_zx`;
CREATE TABLE `ims_zhtc_zx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL COMMENT '分类ID',
  `user_id` int(11) NOT NULL COMMENT '发布人ID',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `time` datetime NOT NULL,
  `yd_num` int(11) NOT NULL COMMENT '阅读数量',
  `pl_num` int(11) NOT NULL COMMENT '评论数量',
  `uniacid` varchar(50) NOT NULL,
  `imgs` text NOT NULL COMMENT '图片',
  `state` int(4) NOT NULL,
  `sh_time` datetime NOT NULL,
  `type` int(4) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_zx
-- ----------------------------
INSERT INTO `ims_zhtc_zx` VALUES ('1', '1', '0', '这是一条测试的资讯', '<p>这<strong>是测试测试</strong></p>', '2018-05-28 15:00:46', '111111', '0', '2', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg,images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '2', '0000-00-00 00:00:00', '2', '');
INSERT INTO `ims_zhtc_zx` VALUES ('2', '2', '0', 'azsfzxcv', '<p>fdsgsdfg</p>', '2018-05-29 18:45:02', '5', '0', '2', 'images/2/2018/05/p9JXl04uUDx976DU99u947X0lQ0Wd5.jpg', '2', '0000-00-00 00:00:00', '2', '北京市');

-- ----------------------------
-- Table structure for ims_zhtc_zx_assess
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_zx_assess`;
CREATE TABLE `ims_zhtc_zx_assess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zx_id` int(4) NOT NULL,
  `score` int(11) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(500) NOT NULL,
  `cerated_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  `status` int(4) NOT NULL,
  `reply` text NOT NULL,
  `reply_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_zx_assess
-- ----------------------------

-- ----------------------------
-- Table structure for ims_zhtc_zx_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_zx_type`;
CREATE TABLE `ims_zhtc_zx_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL COMMENT '分类名称',
  `icon` varchar(100) NOT NULL COMMENT '图标',
  `sort` int(4) NOT NULL COMMENT '排序',
  `time` datetime NOT NULL COMMENT '时间',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_zx_type
-- ----------------------------
INSERT INTO `ims_zhtc_zx_type` VALUES ('1', '这是测试分类', 'images/2/2018/05/IM136jQSkw3mLJMM3f7jLZso9WoJZV.jpg', '1', '2018-05-28 14:59:26', '2');
INSERT INTO `ims_zhtc_zx_type` VALUES ('2', '商家分类一', 'images/2/2018/05/dmB3BHhBE3q7BGT2rL2tHpqZ3z72u2.jpg', '123', '2018-05-29 18:43:56', '2');

-- ----------------------------
-- Table structure for ims_zhtc_zx_zj
-- ----------------------------
DROP TABLE IF EXISTS `ims_zhtc_zx_zj`;
CREATE TABLE `ims_zhtc_zx_zj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zx_id` int(11) NOT NULL COMMENT '资讯ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `uniacid` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_zhtc_zx_zj
-- ----------------------------
