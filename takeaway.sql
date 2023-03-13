/*
 Navicat Premium Data Transfer

 Source Server         : 本地环境
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : takeaway

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 13/03/2023 17:13:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ims_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_account`;
CREATE TABLE `ims_account`  (
  `acid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `hash` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) UNSIGNED NOT NULL,
  `endtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_account
-- ----------------------------
INSERT INTO `ims_account` VALUES (1, 1, 'uRr8qvQV', 1, 0, 0, 0);

-- ----------------------------
-- Table structure for ims_account_aliapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_aliapp`;
CREATE TABLE `ims_account_aliapp`  (
  `acid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `level` tinyint(4) UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_account_aliapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_account_phoneapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_phoneapp`;
CREATE TABLE `ims_account_phoneapp`  (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_account_phoneapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_account_webapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_webapp`;
CREATE TABLE `ims_account_webapp`  (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_account_webapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_account_wechats
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wechats`;
CREATE TABLE `ims_account_wechats`  (
  `acid` int(10) UNSIGNED NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encodingaeskey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` tinyint(4) UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `original` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signature` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastupdate` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secret` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `styleid` int(10) UNSIGNED NOT NULL,
  `subscribeurl` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auth_refresh_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `idx_key`(`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_account_wechats
-- ----------------------------
INSERT INTO `ims_account_wechats` VALUES (1, 1, 'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP', '', 1, 'we7team', '', '', '', '', '', '', '', '', 0, '', '', 1, '', '');

-- ----------------------------
-- Table structure for ims_account_wxapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_wxapp`;
CREATE TABLE `ims_account_wxapp`  (
  `acid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encodingaeskey` varchar(43) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `original` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secret` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `appdomain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_account_wxapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_account_xzapp
-- ----------------------------
DROP TABLE IF EXISTS `ims_account_xzapp`;
CREATE TABLE `ims_account_xzapp`  (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `original` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastupdate` int(10) NOT NULL,
  `styleid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encodingaeskey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xzapp_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` tinyint(4) UNSIGNED NOT NULL,
  `key` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secret` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_account_xzapp
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_category`;
CREATE TABLE `ims_article_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_comment`;
CREATE TABLE `ims_article_comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_like` tinyint(1) NOT NULL,
  `is_reply` tinyint(1) NOT NULL,
  `like_num` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `articleid`(`articleid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_news`;
CREATE TABLE `ims_article_news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cateid` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `is_display` tinyint(3) UNSIGNED NOT NULL,
  `is_show_home` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `click` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `cateid`(`cateid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_article_news
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_notice`;
CREATE TABLE `ims_article_notice`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cateid` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `is_display` tinyint(3) UNSIGNED NOT NULL,
  `is_show_home` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `click` int(10) UNSIGNED NOT NULL,
  `style` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `cateid`(`cateid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_article_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_article_unread_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_article_unread_notice`;
CREATE TABLE `ims_article_unread_notice`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `is_new` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `notice_id`(`notice_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_article_unread_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_attachment_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_attachment_group`;
CREATE TABLE `ims_attachment_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `type` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_attachment_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_basic_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_basic_reply`;
CREATE TABLE `ims_basic_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_basic_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_business
-- ----------------------------
DROP TABLE IF EXISTS `ims_business`;
CREATE TABLE `ims_business`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `weid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dist` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lng` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lat` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `industry1` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `industry2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_lat_lng`(`lng`, `lat`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_business
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_attachment`;
CREATE TABLE `ims_core_attachment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `module_upload_dir` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_attachment
-- ----------------------------
INSERT INTO `ims_core_attachment` VALUES (1, 1, 1, 'YxHP1XP989W9NX7j18TIN10mQx8771', 'images/1/2023/03/YxHP1XP989W9NX7j18TIN10mQx8771.jpg', 1, 1677850203, '', NULL);
INSERT INTO `ims_core_attachment` VALUES (2, 1, 1, 'KsjCSzfmfGsssacZ0eSMjcFFjRa0J5', 'images/1/2023/03/KsjCSzfmfGsssacZ0eSMjcFFjRa0J5.jpg', 1, 1678111499, '', NULL);
INSERT INTO `ims_core_attachment` VALUES (3, 1, 1, 'jU1gfsYbSUj1VV2YWb1KkkX3vXNJyk', 'images/1/2023/03/jU1gfsYbSUj1VV2YWb1KkkX3vXNJyk.jpg', 1, 1678111646, '', NULL);
INSERT INTO `ims_core_attachment` VALUES (4, 1, 1, 'ov4gmNBAaI9X9GmRArgZg79giij93q', 'images/1/2023/03/ov4gmNBAaI9X9GmRArgZg79giij93q.jpg', 1, 1678111663, '', NULL);
INSERT INTO `ims_core_attachment` VALUES (5, 1, 1, 'Hyz3GT9BUHV88Z93toBRGVpvOHz8O8', 'images/1/2023/03/Hyz3GT9BUHV88Z93toBRGVpvOHz8O8.jpg', 1, 1678111685, '', NULL);
INSERT INTO `ims_core_attachment` VALUES (6, 1, 1, 'H06DKvEmwqWjE06w0D9B6GDQW0qbll', 'images/1/2023/03/H06DKvEmwqWjE06w0D9B6GDQW0qbll.jpg', 1, 1678114070, '', NULL);

-- ----------------------------
-- Table structure for ims_core_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cache`;
CREATE TABLE `ims_core_cache`  (
  `key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_cache
-- ----------------------------
INSERT INTO `ims_core_cache` VALUES ('setting', 'a:5:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:8:\"platform\";a:5:{s:5:\"token\";s:32:\"y3P9rRUr3M11415nJxUjR1xZ4j5gsj13\";s:14:\"encodingaeskey\";s:43:\"nxhc4CgczJEJSZD0zzp89UuHEjxR3E08pG4646xPN6S\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:system_frame:0', 'a:12:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:3:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:5:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:7:\"profile\";a:3:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:32:\"./index.php?c=statistics&a=fans&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:12:\"wxapp_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:12:\"wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"parameter_setting\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:13:\"wxapp_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:4:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:3:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"域名访问设置\";s:3:\"url\";s:35:\"./index.php?c=webapp&a=bind-domain&\";s:15:\"permission_name\";s:18:\"webapp_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:13:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=account_support\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=wxapp_support\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=welcome_support\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=webapp_support\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:61:\"./index.php?c=module&a=manage-system&support=phoneapp_support\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"xzapp\";a:2:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"menu\";a:2:{s:12:\"system_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"熊掌号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=9\";s:15:\"permission_name\";s:12:\"system_xzapp\";s:4:\"icon\";s:11:\"wi wi-xzapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"system_module_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"熊掌号应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=xzapp_support\";s:15:\"permission_name\";s:19:\"system_module_xzapp\";s:4:\"icon\";s:17:\"wi wi-xzapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"aliapp\";a:2:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"menu\";a:2:{s:13:\"system_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"支付宝小程序\";s:3:\"url\";s:46:\"./index.php?c=account&a=manage&account_type=11\";s:15:\"permission_name\";s:13:\"system_aliapp\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:24:\"支付宝小程序应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=aliapp_support\";s:15:\"permission_name\";s:20:\"system_module_aliapp\";s:4:\"icon\";s:18:\"wi wi-aliapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:12;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:13;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:setting', 'a:4:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:userbasefields', 'a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:usersfields', 'a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_receive_enable', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:we7_wmall', 'a:32:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:9:\"we7_wmall\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:14:\"LL外卖跑腿\";s:7:\"version\";s:6:\"18.3.0\";s:7:\"ability\";s:109:\"微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统|跑腿|随意购|配送员\";s:11:\"description\";s:82:\"微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统\";s:6:\"author\";s:12:\"宇艺网络\";s:3:\"url\";s:20:\"http://wwww.y198.cn/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:2:{i:0;s:8:\"location\";i:1;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:13:\"title_initial\";s:1:\"L\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"1\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:75:\"http://lalademo.hjout.zeroproject.cn/addons/we7_wmall/icon.jpg?v=1618919316\";s:7:\"preview\";s:65:\"http://lalademo.hjout.zeroproject.cn/addons/we7_wmall/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:store', 'a:32:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/store/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/store/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:wxcard', 'a:32:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:72:\"http://lalademo.hjout.zeroproject.cn/addons/wxcard/icon.jpg?v=1618919293\";s:7:\"preview\";s:62:\"http://lalademo.hjout.zeroproject.cn/addons/wxcard/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:chats', 'a:32:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/chats/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/chats/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:voice', 'a:32:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/voice/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/voice/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:video', 'a:32:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/video/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/video/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:images', 'a:32:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:72:\"http://lalademo.hjout.zeroproject.cn/addons/images/icon.jpg?v=1618919293\";s:7:\"preview\";s:62:\"http://lalademo.hjout.zeroproject.cn/addons/images/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:custom', 'a:32:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:72:\"http://lalademo.hjout.zeroproject.cn/addons/custom/icon.jpg?v=1618919293\";s:7:\"preview\";s:62:\"http://lalademo.hjout.zeroproject.cn/addons/custom/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:recharge', 'a:32:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:74:\"http://lalademo.hjout.zeroproject.cn/addons/recharge/icon.jpg?v=1618919293\";s:7:\"preview\";s:64:\"http://lalademo.hjout.zeroproject.cn/addons/recharge/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:userapi', 'a:32:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:73:\"http://lalademo.hjout.zeroproject.cn/addons/userapi/icon.jpg?v=1618919293\";s:7:\"preview\";s:63:\"http://lalademo.hjout.zeroproject.cn/addons/userapi/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:music', 'a:32:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/music/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/music/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:news', 'a:32:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:70:\"http://lalademo.hjout.zeroproject.cn/addons/news/icon.jpg?v=1618919293\";s:7:\"preview\";s:60:\"http://lalademo.hjout.zeroproject.cn/addons/news/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_info:basic', 'a:32:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/basic/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/basic/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unisetting:1', 'a:29:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:10:\"pay_switch\";b:1;s:15:\"recharge_switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";N;s:15:\"attachment_size\";N;}');
INSERT INTO `ims_core_cache` VALUES ('we7:uniaccount:1', 'a:37:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:9:\"type_sign\";s:7:\"account\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:29:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:10:\"pay_switch\";b:1;s:15:\"recharge_switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";N;s:15:\"attachment_size\";N;}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:60:\"https://takeaway.me/attachment/headimg_1.jpg?time=1678179821\";s:6:\"qrcode\";s:59:\"https://takeaway.me/attachment/qrcode_1.jpg?time=1678179821\";s:9:\"type_name\";s:9:\"公众号\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:c7lr4', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:user_modules:1', 'a:13:{s:9:\"we7_wmall\";s:3:\"all\";s:5:\"store\";s:3:\"all\";s:6:\"wxcard\";s:3:\"all\";s:5:\"chats\";s:3:\"all\";s:5:\"voice\";s:3:\"all\";s:5:\"video\";s:3:\"all\";s:6:\"images\";s:3:\"all\";s:6:\"custom\";s:3:\"all\";s:8:\"recharge\";s:3:\"all\";s:7:\"userapi\";s:3:\"all\";s:5:\"music\";s:3:\"all\";s:4:\"news\";s:3:\"all\";s:5:\"basic\";s:3:\"all\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account_type', 's:7:\"account\";');
INSERT INTO `ims_core_cache` VALUES ('we7:system_frame:1', 'a:12:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:5:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:32:\"./index.php?c=statistics&a=fans&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:12:\"wxapp_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:12:\"wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"parameter_setting\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:13:\"wxapp_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:4:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:3:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"域名访问设置\";s:3:\"url\";s:35:\"./index.php?c=webapp&a=bind-domain&\";s:15:\"permission_name\";s:18:\"webapp_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:13:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=account_support\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=wxapp_support\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=welcome_support\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=webapp_support\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:61:\"./index.php?c=module&a=manage-system&support=phoneapp_support\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"xzapp\";a:2:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"menu\";a:2:{s:12:\"system_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"熊掌号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=9\";s:15:\"permission_name\";s:12:\"system_xzapp\";s:4:\"icon\";s:11:\"wi wi-xzapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"system_module_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"熊掌号应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=xzapp_support\";s:15:\"permission_name\";s:19:\"system_module_xzapp\";s:4:\"icon\";s:17:\"wi wi-xzapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"aliapp\";a:2:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"menu\";a:2:{s:13:\"system_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"支付宝小程序\";s:3:\"url\";s:46:\"./index.php?c=account&a=manage&account_type=11\";s:15:\"permission_name\";s:13:\"system_aliapp\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:24:\"支付宝小程序应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=aliapp_support\";s:15:\"permission_name\";s:20:\"system_module_aliapp\";s:4:\"icon\";s:18:\"wi wi-aliapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:12;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:13;}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:1:', 'a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:9:\"we7_wmall\";a:1:{s:4:\"name\";s:9:\"we7_wmall\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:basic:1', 'a:1:{s:6:\"module\";s:5:\"basic\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:news:1', 'a:1:{s:6:\"module\";s:4:\"news\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:music:1', 'a:1:{s:6:\"module\";s:5:\"music\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:userapi:1', 'a:1:{s:6:\"module\";s:7:\"userapi\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:recharge:1', 'a:1:{s:6:\"module\";s:8:\"recharge\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:custom:1', 'a:1:{s:6:\"module\";s:6:\"custom\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:images:1', 'a:1:{s:6:\"module\";s:6:\"images\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:video:1', 'a:1:{s:6:\"module\";s:5:\"video\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:voice:1', 'a:1:{s:6:\"module\";s:5:\"voice\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:chats:1', 'a:1:{s:6:\"module\";s:5:\"chats\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:wxcard:1', 'a:1:{s:6:\"module\";s:6:\"wxcard\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:store:1', 'a:1:{s:6:\"module\";s:5:\"store\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:module_setting:we7_wmall:1', 'a:1:{s:6:\"module\";s:9:\"we7_wmall\";}');
INSERT INTO `ims_core_cache` VALUES ('we7:stat_todaylock:1', 'a:1:{s:6:\"expire\";i:1678187001;}');
INSERT INTO `ims_core_cache` VALUES ('we7:unicount:1', 's:1:\"1\";');
INSERT INTO `ims_core_cache` VALUES ('checkupgrade:we7_wmall', 'a:1:{s:10:\"lastupdate\";i:1678259091;}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:1:1', 'a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:9:\"we7_wmall\";a:1:{s:4:\"name\";s:9:\"we7_wmall\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:1:task:lock:60', 'a:1:{s:9:\"starttime\";i:1678698776;}');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:1:task:lock:120', 'a:1:{s:9:\"starttime\";i:1678698776;}');
INSERT INTO `ims_core_cache` VALUES ('itime', 'i:0;');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:1:task:lock:300', 'a:1:{s:9:\"starttime\";i:1678698776;}');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:1:task:lock:3600', 'a:1:{s:9:\"starttime\";i:1678697503;}');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:1:task:lock:86400', 'a:1:{s:9:\"starttime\";i:1678697503;}');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:0:task:lock:7200', 'a:1:{s:9:\"starttime\";i:1678345850;}');
INSERT INTO `ims_core_cache` VALUES ('we7:uni_groups', 'a:1:{i:1;a:12:{s:2:\"id\";s:1:\"1\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:18:\"体验套餐服务\";s:7:\"modules\";a:1:{i:0;s:9:\"we7_wmall\";}s:9:\"templates\";a:0:{}s:7:\"uniacid\";s:1:\"0\";s:3:\"uid\";s:1:\"0\";s:6:\"aliapp\";a:0:{}s:5:\"xzapp\";a:0:{}s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:0:{}}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:0:', 'a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:9:\"we7_wmall\";a:1:{s:4:\"name\";s:9:\"we7_wmall\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:E2clF', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:T0d0b', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:jH9HW', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:deliveryers:1:0', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:aexkb', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:cqB3l', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:UwfzG', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:YcAx2', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:proxy_wechatpay_account', 'a:2:{s:7:\"service\";a:0:{}s:6:\"borrow\";a:0:{}}');
INSERT INTO `ims_core_cache` VALUES ('we7:user_accounts:wechats:1', 'a:1:{i:1;a:8:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:4:\"type\";s:1:\"1\";s:5:\"level\";s:1:\"1\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";}}');

-- ----------------------------
-- Table structure for ims_core_cron
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron`;
CREATE TABLE `ims_core_cron`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) UNSIGNED NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastruntime` int(10) UNSIGNED NOT NULL,
  `nextruntime` int(10) UNSIGNED NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `createtime`(`createtime`) USING BTREE,
  INDEX `nextruntime`(`nextruntime`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `cloudid`(`cloudid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_cron
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_cron_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_cron_record`;
CREATE TABLE `ims_core_cron_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE,
  INDEX `module`(`module`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_cron_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_job
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_job`;
CREATE TABLE `ims_core_job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_job
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_menu`;
CREATE TABLE `ims_core_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `append_title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `append_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_display` tinyint(3) UNSIGNED NOT NULL,
  `is_system` tinyint(3) UNSIGNED NOT NULL,
  `permission_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_menu
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_paylog`;
CREATE TABLE `ims_core_paylog`  (
  `plid` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniontid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` decimal(10, 2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_usecard` tinyint(3) UNSIGNED NOT NULL,
  `card_type` tinyint(3) UNSIGNED NOT NULL,
  `card_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `encrypt_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`plid`) USING BTREE,
  INDEX `idx_openid`(`openid`) USING BTREE,
  INDEX `idx_tid`(`tid`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `uniontid`(`uniontid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_performance
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_performance`;
CREATE TABLE `ims_core_performance`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `runurl` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `runsql` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_performance
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_queue
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_queue`;
CREATE TABLE `ims_core_queue`  (
  `qid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `message` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `params` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyword` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`qid`) USING BTREE,
  INDEX `uniacid`(`uniacid`, `acid`) USING BTREE,
  INDEX `module`(`module`) USING BTREE,
  INDEX `dateline`(`dateline`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_queue
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_refundlog
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_refundlog`;
CREATE TABLE `ims_core_refundlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reason` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniontid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` decimal(10, 2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `refund_uniontid`(`refund_uniontid`) USING BTREE,
  INDEX `uniontid`(`uniontid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_refundlog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_resource
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_resource`;
CREATE TABLE `ims_core_resource`  (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `media_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trunk` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`mid`) USING BTREE,
  INDEX `acid`(`uniacid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_resource
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_sendsms_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sendsms_log`;
CREATE TABLE `ims_core_sendsms_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_sendsms_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_core_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_sessions`;
CREATE TABLE `ims_core_sessions`  (
  `sid` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiretime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_sessions
-- ----------------------------
INSERT INTO `ims_core_sessions` VALUES ('c2256fbaf8a562616aef61bb99baa436', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EbZ7\";i:1678698776;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678699377;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678702376);
INSERT INTO `ims_core_sessions` VALUES ('1eaae7b61f17d7d5ff65d0725406d0dd', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QK5G\";i:1678698776;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678699376;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678702376);
INSERT INTO `ims_core_sessions` VALUES ('644b575640dbcfe6cc6469d7377ce5b8', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zLqn\";i:1678697503;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678698104;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678701103);
INSERT INTO `ims_core_sessions` VALUES ('668245e01ab3f049d5334ae39323470a', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ue25\";i:1678350634;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678351234;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678354234);
INSERT INTO `ims_core_sessions` VALUES ('5d66f674efee3a608bfd0cfd3da228b1', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l07u\";i:1678350514;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678351114;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678354114);
INSERT INTO `ims_core_sessions` VALUES ('3a84c464d1684aa66a2cc215a9531575', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vdII\";i:1678350514;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678351114;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678354114);
INSERT INTO `ims_core_sessions` VALUES ('d3cbd47dfb029ea3a1f482305b61c781', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Opic\";i:1678350394;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350994;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353994);
INSERT INTO `ims_core_sessions` VALUES ('aa60affa3f4dd425d8cc7329adab599d', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p100\";i:1678350274;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350874;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353874);
INSERT INTO `ims_core_sessions` VALUES ('a9c41e929541ba104211442f4fbe6f27', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ulLD\";i:1678350154;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350754;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353754);
INSERT INTO `ims_core_sessions` VALUES ('025804fb8db142b9234d1df2a263d179', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tpUk\";i:1678350154;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350754;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353754);
INSERT INTO `ims_core_sessions` VALUES ('5f58cc285d62938036d57390f99b404e', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Seer\";i:1678350034;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350634;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353634);
INSERT INTO `ims_core_sessions` VALUES ('7c02b3263cd1624a15ab7d614ff75296', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"v3k6\";i:1678349914;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350514;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353514);
INSERT INTO `ims_core_sessions` VALUES ('317b28b7804e2c32d2857b6e9179a345', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U3EZ\";i:1678349794;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350394;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353394);
INSERT INTO `ims_core_sessions` VALUES ('9d7fe3c29a466876ff7180cb6c274806', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vsj7\";i:1678349794;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350394;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353394);
INSERT INTO `ims_core_sessions` VALUES ('ed799e916464618b673d86d624553c0d', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H8wW\";i:1678349674;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350274;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353274);
INSERT INTO `ims_core_sessions` VALUES ('3c1004364687a4dc9c4d65a7110a508a', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"PPh2\";i:1678349554;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350154;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353154);
INSERT INTO `ims_core_sessions` VALUES ('a39853948a1deb3bf74fe094fda75d23', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mJ2G\";i:1678349434;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350034;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353034);
INSERT INTO `ims_core_sessions` VALUES ('8a68d7357b15160ecd40bcbce93395f1', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"j1J3\";i:1678349434;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678350034;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678353034);
INSERT INTO `ims_core_sessions` VALUES ('a7f68e54b18f58ee6956ad76cc2673bf', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ydo2\";i:1678349314;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678349914;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678352914);
INSERT INTO `ims_core_sessions` VALUES ('8b22e054771520121af84011045f4562', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xiF6\";i:1678349194;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678349794;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678352794);
INSERT INTO `ims_core_sessions` VALUES ('6ff3373a3396a9d00c9bce46a28d6957', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pZdV\";i:1678697503;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678698103;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678701103);
INSERT INTO `ims_core_sessions` VALUES ('30582b9da64293d93253f1441771fb10', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"A9PT\";i:1678349074;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678349674;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678352674);
INSERT INTO `ims_core_sessions` VALUES ('b9bf2892e2582c4a7643f1d268182c8e', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RDrr\";i:1678348954;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678349554;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678352554);
INSERT INTO `ims_core_sessions` VALUES ('cb5178750db764910c67b599eb78a1ae', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Bvg1\";i:1678348834;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678349434;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678352434);
INSERT INTO `ims_core_sessions` VALUES ('33590bd25202cef8e44e4e9dd47e1133', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"s9v2\";i:1678348774;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678349374;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678352374);
INSERT INTO `ims_core_sessions` VALUES ('b6e92e93992250d9f7b1dc0939fbcd1d', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"X3xS\";i:1678348714;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678349314;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678352314);
INSERT INTO `ims_core_sessions` VALUES ('50e54e06e8ecb8924a6849c24ba0b465', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fBG1\";i:1678348594;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678349194;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678352194);
INSERT INTO `ims_core_sessions` VALUES ('5b3d5d4bbe9aed54805728cd391c419e', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OyI4\";i:1678348474;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678349074;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678352074);
INSERT INTO `ims_core_sessions` VALUES ('242765a4985e765ff106e21c00079073', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ImEQ\";i:1678348414;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678349014;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678352014);
INSERT INTO `ims_core_sessions` VALUES ('5b9945e0455c86a216afa1b488ab9cd1', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"e3pp\";i:1678348354;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348954;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351954);
INSERT INTO `ims_core_sessions` VALUES ('d584d4c3b8d4074e9bd394fafb0ee39e', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qxxX\";i:1678348234;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348834;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351834);
INSERT INTO `ims_core_sessions` VALUES ('2da48a49bb9df123a723e28ac739ed32', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"E5MZ\";i:1678348114;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348714;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351714);
INSERT INTO `ims_core_sessions` VALUES ('b2e9ae1aa3e2fdf2b81fdc79cc676464', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Nyv5\";i:1678348054;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348654;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351654);
INSERT INTO `ims_core_sessions` VALUES ('6ddc0708037388df3168888607d22b0f', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pmRH\";i:1678347994;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348594;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351594);
INSERT INTO `ims_core_sessions` VALUES ('7d6pbpfsh79pvip7l49rgbqp95', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"bycQ\";i:1678698776;s:4:\"R5Et\";i:1678698778;s:4:\"hmeO\";i:1678698778;s:4:\"V41q\";i:1678698780;s:4:\"fLN7\";i:1678698780;s:4:\"wrgX\";i:1678698780;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678699374;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678702380);
INSERT INTO `ims_core_sessions` VALUES ('f0565480e7a289670e09a587a62b35ca', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Epu3\";i:1678347114;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347714;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350714);
INSERT INTO `ims_core_sessions` VALUES ('f5567c01f2ed49ec6d442774d8c8793f', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZV08\";i:1678346369;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678346969;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678349969);
INSERT INTO `ims_core_sessions` VALUES ('237cb807aee5a8c71fef3f8757fda65d', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BI5z\";i:1678347874;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348474;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351474);
INSERT INTO `ims_core_sessions` VALUES ('afe6988813dfef792b657b50b0d72f83', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EVw0\";i:1678347813;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348413;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351413);
INSERT INTO `ims_core_sessions` VALUES ('37ab2914897876bccdcd41adb6b2169b', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NN6n\";i:1678347752;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348352;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351352);
INSERT INTO `ims_core_sessions` VALUES ('f10e7075e51c5729a9984c2767f913c5', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i0m5\";i:1678347752;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348352;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351352);
INSERT INTO `ims_core_sessions` VALUES ('513e901d692f1b71bf5164e50db3cac0', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VMz8\";i:1678347691;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348291;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351291);
INSERT INTO `ims_core_sessions` VALUES ('4cb3fef33103936f1168e785c3cd2028', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"B0h0\";i:1678347630;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348230;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351230);
INSERT INTO `ims_core_sessions` VALUES ('16ae09304ce0e8fd52dccaed26fd82e6', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ov6v\";i:1678347569;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348169;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351169);
INSERT INTO `ims_core_sessions` VALUES ('cc7b0f9cef61c9dc6a6a4b970a870c71', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"d9QQ\";i:1678347508;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348108;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351108);
INSERT INTO `ims_core_sessions` VALUES ('b856f7b5febe920551eb0b0ab22949f1', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JOZ2\";i:1678347447;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348047;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351047);
INSERT INTO `ims_core_sessions` VALUES ('4c5ff0ed5ff8e2b21477a20b6885bc8a', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ahjD\";i:1678347447;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678348047;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678351047);
INSERT INTO `ims_core_sessions` VALUES ('9acbd5aa350be7b0e031a3b2f7759d2e', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Hi8x\";i:1678346491;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347091;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350091);
INSERT INTO `ims_core_sessions` VALUES ('09a29d057eb6bf40865cdcc6ca89f099', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dRLL\";i:1678347386;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347986;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350986);
INSERT INTO `ims_core_sessions` VALUES ('4b15a44d197d7320b983532312f1bb03', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yv0v\";i:1678346491;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347091;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350091);
INSERT INTO `ims_core_sessions` VALUES ('c88debf81a60e3662d042da733aab908', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Pu7D\";i:1678346430;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347030;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350030);
INSERT INTO `ims_core_sessions` VALUES ('d3b7527e1bab4c8eb385fe2aa43ba9f3', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"LKLE\";i:1678346308;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678346908;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678349908);
INSERT INTO `ims_core_sessions` VALUES ('92f5c68b39b3de003362bd3ff1513318', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EPQ1\";i:1678346247;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678346847;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678349847);
INSERT INTO `ims_core_sessions` VALUES ('28638db91f85efbfae2d3c1fc202d165', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SUZP\";i:1678347325;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347925;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350925);
INSERT INTO `ims_core_sessions` VALUES ('5c7e8d3e5c63b13d774a760cfbbea85f', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NWOT\";i:1678349102;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678349702;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678352702);
INSERT INTO `ims_core_sessions` VALUES ('d61c08f21210f026efef91cea5c8c777', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AbN0\";i:1678347264;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347864;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350864);
INSERT INTO `ims_core_sessions` VALUES ('a46b93f46e18a0cb1bcc30b9bce05673', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aO6c\";i:1678346186;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678346786;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678349786);
INSERT INTO `ims_core_sessions` VALUES ('cc315587d9875a60a87283effc96b0ec', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Cm20\";i:1678345850;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678346450;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678349450);
INSERT INTO `ims_core_sessions` VALUES ('ca3dc513a75441e569219ed1fac430a5', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kvKi\";i:1678345851;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678346451;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678349451);
INSERT INTO `ims_core_sessions` VALUES ('c11bdd8b3a490e777e46496196bb2866', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NqW9\";i:1678345913;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678346513;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678349513);
INSERT INTO `ims_core_sessions` VALUES ('0cdffb724176017cd58cfaa51502ea63', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mz1u\";i:1678345975;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678346575;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678349575);
INSERT INTO `ims_core_sessions` VALUES ('2e085852975b2b06524385177b54885a', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FKU4\";i:1678346065;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678346665;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678349665);
INSERT INTO `ims_core_sessions` VALUES ('d50228de989964481cd799b440ffc1bd', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ct2X\";i:1678346186;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678346786;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678349786);
INSERT INTO `ims_core_sessions` VALUES ('844ab8f5b2009fb9a655390f6dc03308', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eBQ4\";i:1678347175;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347775;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350775);
INSERT INTO `ims_core_sessions` VALUES ('3ce6d0c4c0f2accf7d569c57deac2c78', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XZi9\";i:1678347114;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347714;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350714);
INSERT INTO `ims_core_sessions` VALUES ('25025fa7fb9a642f2dee49e651324914', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AETe\";i:1678347029;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347629;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350629);
INSERT INTO `ims_core_sessions` VALUES ('bfc10e6fd771f9533870402380dc034a', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eizh\";i:1678346914;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347514;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350514);
INSERT INTO `ims_core_sessions` VALUES ('bba17a1772100c9955c881228ae78124', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eWI0\";i:1678346794;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347394;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350394);
INSERT INTO `ims_core_sessions` VALUES ('8f4bad481d3c1689147aedccadd1ff28', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"N3Dl\";i:1678346794;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347394;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350394);
INSERT INTO `ims_core_sessions` VALUES ('f0caec18a7a1185884399d72a4ffbdb3', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pqNT\";i:1678346674;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347274;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350274);
INSERT INTO `ims_core_sessions` VALUES ('8931f5c09e434914b30264113fce5198', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pCLQ\";i:1678346613;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347213;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350213);
INSERT INTO `ims_core_sessions` VALUES ('6fde9954489334acc5dfb625142a1df0', 1, '127.0.0.1', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"o5dz\";i:1678346552;}languageData_zh-cn|s:1233:\"a:2:{s:11:\"expire_time\";i:1678347152;s:5:\"datas\";a:14:{s:17:\"内含{num}张券\";s:17:\"内含{num}张券\";s:27:\"满{condition}减{discount}\";s:27:\"满{condition}减{discount}\";s:36:\"满{delivery_free_price}免配送费\";s:36:\"满{delivery_free_price}免配送费\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:79:\"商户配送范围{serve_radius}公里, 当前地址不在商户配送范围内\";s:27:\"仅限{time_cn}时段使用\";s:27:\"仅限{time_cn}时段使用\";s:31:\"仅限{category_cn}分类使用\";s:31:\"仅限{category_cn}分类使用\";s:36:\"{predict_delivery_price}元配送费\";s:36:\"{predict_delivery_price}元配送费\";s:39:\"配送费{predict_delivery_price}元起\";s:39:\"配送费{predict_delivery_price}元起\";s:23:\"{num}张可用代金券\";s:23:\"{num}张可用代金券\";s:20:\"{num}个可用红包\";s:20:\"{num}个可用红包\";s:13:\"{money}元券\";s:13:\"{money}元券\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:49:\"下单后{remind_time_start}分钟才可以催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:65:\"距离上次催单不超过{remind_time_limit}分钟,不能催单\";s:14:\"已售{num}份\";s:14:\"已售{num}份\";}}\";', 1678350152);

-- ----------------------------
-- Table structure for ims_core_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_core_settings`;
CREATE TABLE `ims_core_settings`  (
  `key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_settings
-- ----------------------------
INSERT INTO `ims_core_settings` VALUES ('copyright', 'a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}');
INSERT INTO `ims_core_settings` VALUES ('authmode', 'i:1;');
INSERT INTO `ims_core_settings` VALUES ('close', 'a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}');
INSERT INTO `ims_core_settings` VALUES ('register', 'a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}');
INSERT INTO `ims_core_settings` VALUES ('platform', 'a:5:{s:5:\"token\";s:32:\"y3P9rRUr3M11415nJxUjR1xZ4j5gsj13\";s:14:\"encodingaeskey\";s:43:\"nxhc4CgczJEJSZD0zzp89UuHEjxR3E08pG4646xPN6S\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}');

-- ----------------------------
-- Table structure for ims_coupon_location
-- ----------------------------
DROP TABLE IF EXISTS `ims_coupon_location`;
CREATE TABLE `ims_coupon_location`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `business_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `branch_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `longitude` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `latitude` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo_list` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avg_price` int(10) UNSIGNED NOT NULL,
  `open_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recommend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `special` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `offset_type` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`, `acid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_coupon_location
-- ----------------------------

-- ----------------------------
-- Table structure for ims_cover_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_cover_reply`;
CREATE TABLE `ims_cover_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `multiid` int(10) UNSIGNED NOT NULL,
  `rid` int(10) UNSIGNED NOT NULL,
  `module` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `do` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_cover_reply
-- ----------------------------
INSERT INTO `ims_cover_reply` VALUES (1, 1, 0, 7, 'mc', '', '进入个人中心', '', '', './index.php?c=mc&a=home&i=1');
INSERT INTO `ims_cover_reply` VALUES (2, 1, 1, 8, 'site', '', '进入首页', '', '', './index.php?c=home&i=1&t=1');

-- ----------------------------
-- Table structure for ims_custom_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_custom_reply`;
CREATE TABLE `ims_custom_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_custom_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_images_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_images_reply`;
CREATE TABLE `ims_images_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_images_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_job
-- ----------------------------
DROP TABLE IF EXISTS `ims_job`;
CREATE TABLE `ims_job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `isdeleted` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_job
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_cash_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_cash_record`;
CREATE TABLE `ims_mc_cash_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `clerk_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `clerk_type` tinyint(3) UNSIGNED NOT NULL,
  `fee` decimal(10, 2) UNSIGNED NOT NULL,
  `final_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `credit1` int(10) UNSIGNED NOT NULL,
  `credit1_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `credit2` decimal(10, 2) UNSIGNED NOT NULL,
  `cash` decimal(10, 2) UNSIGNED NOT NULL,
  `return_cash` decimal(10, 2) UNSIGNED NOT NULL,
  `final_cash` decimal(10, 2) UNSIGNED NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `trade_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_cash_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_chats_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_chats_record`;
CREATE TABLE `ims_mc_chats_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `flag` tinyint(3) UNSIGNED NOT NULL,
  `openid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msgtype` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`, `acid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_chats_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_credits_recharge
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
CREATE TABLE `ims_mc_credits_recharge`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `transid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `backtype` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid_uid`(`uniacid`, `uid`) USING BTREE,
  INDEX `idx_tid`(`tid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_credits_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_credits_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_credits_record`;
CREATE TABLE `ims_mc_credits_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` decimal(10, 2) NOT NULL,
  `operator` int(10) UNSIGNED NOT NULL,
  `module` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clerk_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `clerk_type` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_credits_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_fans_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_groups`;
CREATE TABLE `ims_mc_fans_groups`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `groups` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_fans_groups
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_fans_tag_mapping
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
CREATE TABLE `ims_mc_fans_tag_mapping`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fanid` int(11) UNSIGNED NOT NULL,
  `tagid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mapping`(`fanid`, `tagid`) USING BTREE,
  INDEX `fanid_index`(`fanid`) USING BTREE,
  INDEX `tagid_index`(`tagid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_fans_tag_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_groups`;
CREATE TABLE `ims_mc_groups`  (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `credit` int(10) UNSIGNED NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_groups
-- ----------------------------
INSERT INTO `ims_mc_groups` VALUES (1, 1, '默认会员组', 0, 1);

-- ----------------------------
-- Table structure for ims_mc_handsel
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_handsel`;
CREATE TABLE `ims_mc_handsel`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) UNSIGNED NOT NULL,
  `fromuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sign` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `credit_value` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`touid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_handsel
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mapping_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
CREATE TABLE `ims_mc_mapping_fans`  (
  `fanid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `acid` int(10) UNSIGNED NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `follow` tinyint(1) UNSIGNED NOT NULL,
  `followtime` int(10) UNSIGNED NOT NULL,
  `unfollowtime` int(10) UNSIGNED NOT NULL,
  `tag` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updatetime` int(10) UNSIGNED NULL DEFAULT NULL,
  `unionid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`fanid`) USING BTREE,
  UNIQUE INDEX `openid_2`(`openid`) USING BTREE,
  INDEX `acid`(`acid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `nickname`(`nickname`) USING BTREE,
  INDEX `updatetime`(`updatetime`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_mapping_fans
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mapping_ucenter
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;
CREATE TABLE `ims_mc_mapping_ucenter`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `centeruid` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_mc_mapping_ucenter
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_mass_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_mass_record`;
CREATE TABLE `ims_mc_mass_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `groupname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fansnum` int(10) UNSIGNED NOT NULL,
  `msgtype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) UNSIGNED NOT NULL,
  `media_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `cron_id` int(10) UNSIGNED NOT NULL,
  `sendtime` int(10) UNSIGNED NOT NULL,
  `finalsendtime` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`, `acid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_mass_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_address`;
CREATE TABLE `ims_mc_member_address`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(50) UNSIGNED NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zipcode` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isdefault` tinyint(1) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uinacid`(`uniacid`) USING BTREE,
  INDEX `idx_uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_fields`;
CREATE TABLE `ims_mc_member_fields`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE,
  INDEX `idx_fieldid`(`fieldid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_member_fields
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_member_property
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_member_property`;
CREATE TABLE `ims_mc_member_property`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_member_property
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_members
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_members`;
CREATE TABLE `ims_mc_members`  (
  `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `mobile` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10, 2) UNSIGNED NOT NULL,
  `credit2` decimal(10, 2) UNSIGNED NOT NULL,
  `credit3` decimal(10, 2) UNSIGNED NOT NULL,
  `credit4` decimal(10, 2) UNSIGNED NOT NULL,
  `credit5` decimal(10, 2) UNSIGNED NOT NULL,
  `credit6` decimal(10, 2) NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `realname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vip` tinyint(3) UNSIGNED NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) UNSIGNED NOT NULL,
  `birthmonth` tinyint(3) UNSIGNED NOT NULL,
  `birthday` tinyint(3) UNSIGNED NOT NULL,
  `constellation` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zodiac` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idcard` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `studentid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zipcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nationality` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resideprovince` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `residecity` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `residedist` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `graduateschool` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `education` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `occupation` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `revenue` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `affectivestatus` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lookingfor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bloodtype` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `height` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alipay` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `taobao` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bio` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `interest` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `groupid`(`groupid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_members
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mc_oauth_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
CREATE TABLE `ims_mc_oauth_fans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_oauthopenid_acid`(`oauth_openid`, `acid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_mc_oauth_fans
-- ----------------------------

-- ----------------------------
-- Table structure for ims_menu_event
-- ----------------------------
DROP TABLE IF EXISTS `ims_menu_event`;
CREATE TABLE `ims_menu_event`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `picmd5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `picmd5`(`picmd5`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_menu_event
-- ----------------------------

-- ----------------------------
-- Table structure for ims_message_notice_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_message_notice_log`;
CREATE TABLE `ims_message_notice_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_read` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `sign` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) NOT NULL,
  `status` tinyint(3) NULL DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_message_notice_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_mobilenumber
-- ----------------------------
DROP TABLE IF EXISTS `ims_mobilenumber`;
CREATE TABLE `ims_mobilenumber`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL,
  `dateline` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_mobilenumber
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules`;
CREATE TABLE `ims_modules`  (
  `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ability` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handles` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) UNSIGNED NOT NULL,
  `target` int(10) UNSIGNED NOT NULL,
  `iscard` tinyint(3) UNSIGNED NOT NULL,
  `permissions` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_initial` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `welcome_support` int(2) NOT NULL,
  `oauth_type` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  `account_support` tinyint(1) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `app_support` tinyint(1) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`mid`) USING BTREE,
  INDEX `idx_name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_modules
-- ----------------------------
INSERT INTO `ims_modules` VALUES (1, 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (2, 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (3, 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (4, 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (5, 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (6, 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'WeEngine Team', 'http://bbs.we7.cc', 0, 'a:0:{}', 'a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (7, 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (8, 'video', 'system', '基本视频回复', '1.0', '提供图片回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (9, 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (10, 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (11, 'wxcard', 'system', '微信卡券回复', '1.0', '微信卡券回复', '微信卡券回复', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (12, 'store', 'business', '站内商城', '1.0', '站内商城', '站内商城', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0);
INSERT INTO `ims_modules` VALUES (13, 'we7_wmall', 'business', 'LL外卖跑腿', '18.3.0', '微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统|跑腿|随意购|配送员', '微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统', '宇艺网络', 'http://wwww.y198.cn/', 0, 'a:0:{}', 'a:2:{i:0;s:8:\"location\";i:1;s:4:\"text\";}', 0, 0, 0, 0, 'a:0:{}', 'L', 1, 1, 1, 1, 1, 2, 1, 0, 1);

-- ----------------------------
-- Table structure for ims_modules_bindings
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_bindings`;
CREATE TABLE `ims_modules_bindings`  (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `call` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `do` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(255) UNSIGNED NOT NULL,
  PRIMARY KEY (`eid`) USING BTREE,
  INDEX `idx_module`(`module`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_modules_bindings
-- ----------------------------
INSERT INTO `ims_modules_bindings` VALUES (1, 'we7_wmall', 'menu', '', '后台管理', 'web', '', 0, '', 'fa fa-puzzle-piece', 0);

-- ----------------------------
-- Table structure for ims_modules_cloud
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_cloud`;
CREATE TABLE `ims_modules_cloud`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_initial` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `install_status` tinyint(4) NOT NULL,
  `account_support` tinyint(4) NOT NULL,
  `wxapp_support` tinyint(4) NOT NULL,
  `webapp_support` tinyint(4) NOT NULL,
  `phoneapp_support` tinyint(4) NOT NULL,
  `welcome_support` tinyint(4) NOT NULL,
  `main_module_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `main_module_logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `has_new_version` tinyint(1) NOT NULL,
  `has_new_branch` tinyint(1) NOT NULL,
  `is_ban` tinyint(4) NOT NULL,
  `lastupdatetime` int(11) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `lastupdatetime`(`lastupdatetime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_modules_cloud
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_ignore
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_ignore`;
CREATE TABLE `ims_modules_ignore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 374 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_modules_ignore
-- ----------------------------
INSERT INTO `ims_modules_ignore` VALUES (373, 'we7_wmall', '');

-- ----------------------------
-- Table structure for ims_modules_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_plugin`;
CREATE TABLE `ims_modules_plugin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_module` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `main_module`(`main_module`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_modules_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_rank
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_rank`;
CREATE TABLE `ims_modules_rank`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `module_name`(`module_name`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_modules_rank
-- ----------------------------

-- ----------------------------
-- Table structure for ims_modules_recycle
-- ----------------------------
DROP TABLE IF EXISTS `ims_modules_recycle`;
CREATE TABLE `ims_modules_recycle`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `modulename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `modulename`(`modulename`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_modules_recycle
-- ----------------------------

-- ----------------------------
-- Table structure for ims_music_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_music_reply`;
CREATE TABLE `ims_music_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hqurl` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_music_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_news_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_news_reply`;
CREATE TABLE `ims_news_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_news_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_phoneapp_versions
-- ----------------------------
DROP TABLE IF EXISTS `ims_phoneapp_versions`;
CREATE TABLE `ims_phoneapp_versions`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modules` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `version`(`version`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_phoneapp_versions
-- ----------------------------

-- ----------------------------
-- Table structure for ims_profile_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_profile_fields`;
CREATE TABLE `ims_profile_fields`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_profile_fields
-- ----------------------------
INSERT INTO `ims_profile_fields` VALUES (1, 'realname', 1, '真实姓名', '', 0, 1, 1, 1, 0);
INSERT INTO `ims_profile_fields` VALUES (2, 'nickname', 1, '昵称', '', 1, 1, 0, 1, 0);
INSERT INTO `ims_profile_fields` VALUES (3, 'avatar', 1, '头像', '', 1, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (4, 'qq', 1, 'QQ号', '', 0, 0, 0, 1, 0);
INSERT INTO `ims_profile_fields` VALUES (5, 'mobile', 1, '手机号码', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (6, 'vip', 1, 'VIP级别', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (7, 'gender', 1, '性别', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (8, 'birthyear', 1, '出生生日', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (9, 'constellation', 1, '星座', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (10, 'zodiac', 1, '生肖', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (11, 'telephone', 1, '固定电话', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (12, 'idcard', 1, '证件号码', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (13, 'studentid', 1, '学号', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (14, 'grade', 1, '班级', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (15, 'address', 1, '邮寄地址', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (16, 'zipcode', 1, '邮编', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (17, 'nationality', 1, '国籍', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (18, 'resideprovince', 1, '居住地址', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (19, 'graduateschool', 1, '毕业学校', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (20, 'company', 1, '公司', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (21, 'education', 1, '学历', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (22, 'occupation', 1, '职业', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (23, 'position', 1, '职位', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (24, 'revenue', 1, '年收入', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (25, 'affectivestatus', 1, '情感状态', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (26, 'lookingfor', 1, ' 交友目的', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (27, 'bloodtype', 1, '血型', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (28, 'height', 1, '身高', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (29, 'weight', 1, '体重', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (30, 'alipay', 1, '支付宝帐号', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (31, 'msn', 1, 'MSN', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (32, 'email', 1, '电子邮箱', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (33, 'taobao', 1, '阿里旺旺', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (34, 'site', 1, '主页', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (35, 'bio', 1, '自我介绍', '', 0, 0, 0, 0, 0);
INSERT INTO `ims_profile_fields` VALUES (36, 'interest', 1, '兴趣爱好', '', 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for ims_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode`;
CREATE TABLE `ims_qrcode`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra` int(10) UNSIGNED NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyword` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` tinyint(1) UNSIGNED NOT NULL,
  `ticket` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire` int(10) UNSIGNED NOT NULL,
  `subnum` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_qrcid`(`qrcid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `ticket`(`ticket`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for ims_qrcode_stat
-- ----------------------------
DROP TABLE IF EXISTS `ims_qrcode_stat`;
CREATE TABLE `ims_qrcode_stat`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `qid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `qrcid` bigint(20) UNSIGNED NOT NULL,
  `scene_str` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_qrcode_stat
-- ----------------------------

-- ----------------------------
-- Table structure for ims_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule`;
CREATE TABLE `ims_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  `containtype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_rule
-- ----------------------------
INSERT INTO `ims_rule` VALUES (1, 0, '城市天气', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (2, 0, '百度百科', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (3, 0, '即时翻译', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (4, 0, '今日老黄历', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (5, 0, '看新闻', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (6, 0, '快递查询', 'userapi', 255, 1, '', 0);
INSERT INTO `ims_rule` VALUES (7, 1, '个人中心入口设置', 'cover', 0, 1, '', 0);
INSERT INTO `ims_rule` VALUES (8, 1, '微擎团队入口设置', 'cover', 0, 1, '', 0);

-- ----------------------------
-- Table structure for ims_rule_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_rule_keyword`;
CREATE TABLE `ims_rule_keyword`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_content`(`content`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  INDEX `idx_rid`(`rid`) USING BTREE,
  INDEX `idx_uniacid_type_content`(`uniacid`, `type`, `content`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_rule_keyword
-- ----------------------------
INSERT INTO `ims_rule_keyword` VALUES (1, 1, 0, 'userapi', '^.+天气$', 3, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (2, 2, 0, 'userapi', '^百科.+$', 3, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (3, 2, 0, 'userapi', '^定义.+$', 3, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (4, 3, 0, 'userapi', '^@.+$', 3, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (5, 4, 0, 'userapi', '日历', 1, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (6, 4, 0, 'userapi', '万年历', 1, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (7, 4, 0, 'userapi', '黄历', 1, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (8, 4, 0, 'userapi', '几号', 1, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (9, 5, 0, 'userapi', '新闻', 1, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (10, 6, 0, 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', 3, 255, 1);
INSERT INTO `ims_rule_keyword` VALUES (11, 7, 1, 'cover', '个人中心', 1, 0, 1);
INSERT INTO `ims_rule_keyword` VALUES (12, 8, 1, 'cover', '首页', 1, 0, 1);

-- ----------------------------
-- Table structure for ims_site_article
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article`;
CREATE TABLE `ims_site_article`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `rid` int(10) UNSIGNED NOT NULL,
  `kid` int(10) UNSIGNED NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) UNSIGNED NOT NULL,
  `pcate` int(10) UNSIGNED NOT NULL,
  `ccate` int(10) UNSIGNED NOT NULL,
  `template` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` int(10) UNSIGNED NOT NULL,
  `linkurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `credit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iscommend`(`iscommend`) USING BTREE,
  INDEX `idx_ishot`(`ishot`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_article
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_article_comment`;
CREATE TABLE `ims_site_article_comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_read` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `articleid`(`articleid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_category`;
CREATE TABLE `ims_site_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `nid` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parentid` int(10) UNSIGNED NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `styleid` int(10) UNSIGNED NOT NULL,
  `linkurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) UNSIGNED NOT NULL,
  `css` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_multi
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_multi`;
CREATE TABLE `ims_site_multi`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `styleid` int(10) UNSIGNED NOT NULL,
  `site_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `bindhost` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `bindhost`(`bindhost`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_multi
-- ----------------------------
INSERT INTO `ims_site_multi` VALUES (1, 1, '微擎团队', 1, '', 1, '');

-- ----------------------------
-- Table structure for ims_site_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_nav`;
CREATE TABLE `ims_site_nav`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `multiid` int(10) UNSIGNED NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `css` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  `categoryid` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `multiid`(`multiid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_nav
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_page
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_page`;
CREATE TABLE `ims_site_page`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `multiid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `params` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `multipage` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `goodnum` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `multiid`(`multiid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_page
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_slide
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_slide`;
CREATE TABLE `ims_site_slide`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `multiid` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `multiid`(`multiid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_slide
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_create_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_create_account`;
CREATE TABLE `ims_site_store_create_account`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `endtime` int(12) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_site_store_create_account
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_goods`;
CREATE TABLE `ims_site_store_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account_num` int(10) NOT NULL,
  `wxapp_num` int(10) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `unit` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slide` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_id` int(10) NOT NULL,
  `title_initial` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module_group` int(10) NOT NULL,
  `api_num` int(10) NOT NULL,
  `user_group` int(10) NOT NULL,
  `user_group_price` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `module`(`module`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  INDEX `price`(`price`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_store_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_store_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_store_order`;
CREATE TABLE `ims_site_store_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `orderid` varchar(28) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsid` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `buyer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buyerid` int(10) NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `changeprice` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `endtime` int(15) NOT NULL,
  `wxapp` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goodid`(`goodsid`) USING BTREE,
  INDEX `buyerid`(`buyerid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_store_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_styles
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles`;
CREATE TABLE `ims_site_styles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `templateid` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_styles
-- ----------------------------
INSERT INTO `ims_site_styles` VALUES (1, 1, 1, '微站默认模板_gC5C');

-- ----------------------------
-- Table structure for ims_site_styles_vars
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_styles_vars`;
CREATE TABLE `ims_site_styles_vars`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `templateid` int(10) UNSIGNED NOT NULL,
  `styleid` int(10) UNSIGNED NOT NULL,
  `variable` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_styles_vars
-- ----------------------------

-- ----------------------------
-- Table structure for ims_site_templates
-- ----------------------------
DROP TABLE IF EXISTS `ims_site_templates`;
CREATE TABLE `ims_site_templates`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sections` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_site_templates
-- ----------------------------
INSERT INTO `ims_site_templates` VALUES (1, 'default', '微站默认模板', '', '由微擎提供默认微站模板套系', '微擎团队', 'http://we7.cc', '1', 0);

-- ----------------------------
-- Table structure for ims_stat_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_fans`;
CREATE TABLE `ims_stat_fans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `new` int(10) UNSIGNED NOT NULL,
  `cancel` int(10) UNSIGNED NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`, `date`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_stat_fans
-- ----------------------------
INSERT INTO `ims_stat_fans` VALUES (1, 1, 0, 0, 0, '20210419');
INSERT INTO `ims_stat_fans` VALUES (2, 1, 0, 0, 0, '20210418');
INSERT INTO `ims_stat_fans` VALUES (3, 1, 0, 0, 0, '20210417');
INSERT INTO `ims_stat_fans` VALUES (4, 1, 0, 0, 0, '20210416');
INSERT INTO `ims_stat_fans` VALUES (5, 1, 0, 0, 0, '20210415');
INSERT INTO `ims_stat_fans` VALUES (6, 1, 0, 0, 0, '20210414');
INSERT INTO `ims_stat_fans` VALUES (7, 1, 0, 0, 0, '20210413');
INSERT INTO `ims_stat_fans` VALUES (8, 1, 0, 0, 0, '20210526');
INSERT INTO `ims_stat_fans` VALUES (9, 1, 0, 0, 0, '20210525');
INSERT INTO `ims_stat_fans` VALUES (10, 1, 0, 0, 0, '20210524');
INSERT INTO `ims_stat_fans` VALUES (11, 1, 0, 0, 0, '20210523');
INSERT INTO `ims_stat_fans` VALUES (12, 1, 0, 0, 0, '20210522');
INSERT INTO `ims_stat_fans` VALUES (13, 1, 0, 0, 0, '20210521');
INSERT INTO `ims_stat_fans` VALUES (14, 1, 0, 0, 0, '20210520');
INSERT INTO `ims_stat_fans` VALUES (15, 1, 0, 0, 0, '20210608');
INSERT INTO `ims_stat_fans` VALUES (16, 1, 0, 0, 0, '20210607');
INSERT INTO `ims_stat_fans` VALUES (17, 1, 0, 0, 0, '20210606');
INSERT INTO `ims_stat_fans` VALUES (18, 1, 0, 0, 0, '20210605');
INSERT INTO `ims_stat_fans` VALUES (19, 1, 0, 0, 0, '20210604');
INSERT INTO `ims_stat_fans` VALUES (20, 1, 0, 0, 0, '20210603');
INSERT INTO `ims_stat_fans` VALUES (21, 1, 0, 0, 0, '20210602');
INSERT INTO `ims_stat_fans` VALUES (22, 1, 0, 0, 0, '20210615');
INSERT INTO `ims_stat_fans` VALUES (23, 1, 0, 0, 0, '20210614');
INSERT INTO `ims_stat_fans` VALUES (24, 1, 0, 0, 0, '20210613');
INSERT INTO `ims_stat_fans` VALUES (25, 1, 0, 0, 0, '20210612');
INSERT INTO `ims_stat_fans` VALUES (26, 1, 0, 0, 0, '20210611');
INSERT INTO `ims_stat_fans` VALUES (27, 1, 0, 0, 0, '20210610');
INSERT INTO `ims_stat_fans` VALUES (28, 1, 0, 0, 0, '20210609');
INSERT INTO `ims_stat_fans` VALUES (29, 1, 0, 0, 0, '20230216');
INSERT INTO `ims_stat_fans` VALUES (30, 1, 0, 0, 0, '20230215');
INSERT INTO `ims_stat_fans` VALUES (31, 1, 0, 0, 0, '20230214');
INSERT INTO `ims_stat_fans` VALUES (32, 1, 0, 0, 0, '20230213');
INSERT INTO `ims_stat_fans` VALUES (33, 1, 0, 0, 0, '20230212');
INSERT INTO `ims_stat_fans` VALUES (34, 1, 0, 0, 0, '20230211');
INSERT INTO `ims_stat_fans` VALUES (35, 1, 0, 0, 0, '20230210');
INSERT INTO `ims_stat_fans` VALUES (36, 1, 0, 0, 0, '20230302');
INSERT INTO `ims_stat_fans` VALUES (37, 1, 0, 0, 0, '20230301');
INSERT INTO `ims_stat_fans` VALUES (38, 1, 0, 0, 0, '20230228');
INSERT INTO `ims_stat_fans` VALUES (39, 1, 0, 0, 0, '20230227');
INSERT INTO `ims_stat_fans` VALUES (40, 1, 0, 0, 0, '20230226');
INSERT INTO `ims_stat_fans` VALUES (41, 1, 0, 0, 0, '20230225');
INSERT INTO `ims_stat_fans` VALUES (42, 1, 0, 0, 0, '20230224');
INSERT INTO `ims_stat_fans` VALUES (43, 1, 0, 0, 0, '20230303');
INSERT INTO `ims_stat_fans` VALUES (44, 1, 0, 0, 0, '20230304');
INSERT INTO `ims_stat_fans` VALUES (45, 1, 0, 0, 0, '20230305');
INSERT INTO `ims_stat_fans` VALUES (46, 1, 0, 0, 0, '20230306');

-- ----------------------------
-- Table structure for ims_stat_keyword
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_keyword`;
CREATE TABLE `ims_stat_keyword`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `rid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kid` int(10) UNSIGNED NOT NULL,
  `hit` int(10) UNSIGNED NOT NULL,
  `lastupdate` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_stat_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_msg_history
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_msg_history`;
CREATE TABLE `ims_stat_msg_history`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `rid` int(10) UNSIGNED NOT NULL,
  `kid` int(10) UNSIGNED NOT NULL,
  `from_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_stat_msg_history
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_rule
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_rule`;
CREATE TABLE `ims_stat_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `rid` int(10) UNSIGNED NOT NULL,
  `hit` int(10) UNSIGNED NOT NULL,
  `lastupdate` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createtime`(`createtime`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_stat_rule
-- ----------------------------

-- ----------------------------
-- Table structure for ims_stat_visit
-- ----------------------------
DROP TABLE IF EXISTS `ims_stat_visit`;
CREATE TABLE `ims_stat_visit`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `module`(`module`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_stat_visit
-- ----------------------------
INSERT INTO `ims_stat_visit` VALUES (2, 0, '', 14, 20210420, 'web');
INSERT INTO `ims_stat_visit` VALUES (3, 1, 'we7_account', 2, 20210420, 'web');
INSERT INTO `ims_stat_visit` VALUES (4, 0, '', 7, 20210512, 'web');
INSERT INTO `ims_stat_visit` VALUES (5, 0, '', 2, 20210521, 'web');
INSERT INTO `ims_stat_visit` VALUES (6, 0, '', 23, 20210527, 'web');
INSERT INTO `ims_stat_visit` VALUES (7, 0, 'we7_account', 1, 20210527, 'web');
INSERT INTO `ims_stat_visit` VALUES (8, 1, 'we7_account', 2, 20210527, 'web');
INSERT INTO `ims_stat_visit` VALUES (9, 0, '', 4, 20210609, 'web');
INSERT INTO `ims_stat_visit` VALUES (10, 1, 'we7_account', 16, 20210609, 'web');
INSERT INTO `ims_stat_visit` VALUES (11, 0, '', 7, 20210616, 'web');
INSERT INTO `ims_stat_visit` VALUES (12, 1, 'we7_account', 1, 20210616, 'web');
INSERT INTO `ims_stat_visit` VALUES (13, 0, '', 10, 20210817, 'web');
INSERT INTO `ims_stat_visit` VALUES (14, 0, 'we7_account', 2, 20210817, 'web');
INSERT INTO `ims_stat_visit` VALUES (15, 0, '', 2, 20210923, 'web');
INSERT INTO `ims_stat_visit` VALUES (16, 0, '', 6, 20211208, 'web');
INSERT INTO `ims_stat_visit` VALUES (17, 0, '', 3, 20220624, 'web');
INSERT INTO `ims_stat_visit` VALUES (18, 0, 'we7_account', 1, 20220624, 'web');
INSERT INTO `ims_stat_visit` VALUES (19, 0, '', 7, 20220712, 'web');
INSERT INTO `ims_stat_visit` VALUES (20, 0, '', 2, 20230217, 'web');
INSERT INTO `ims_stat_visit` VALUES (21, 1, 'we7_account', 1, 20230217, 'web');
INSERT INTO `ims_stat_visit` VALUES (22, 0, '', 4, 20230227, 'web');
INSERT INTO `ims_stat_visit` VALUES (23, 1, '', 2, 20230303, 'web');
INSERT INTO `ims_stat_visit` VALUES (24, 1, 'we7_account', 15, 20230303, 'web');
INSERT INTO `ims_stat_visit` VALUES (25, 1, 'we7_account', 1, 20230304, 'web');
INSERT INTO `ims_stat_visit` VALUES (26, 1, 'we7_account', 3, 20230305, 'web');
INSERT INTO `ims_stat_visit` VALUES (27, 1, 'we7_account', 3, 20230306, 'web');
INSERT INTO `ims_stat_visit` VALUES (28, 1, 'we7_account', 6, 20230307, 'web');

-- ----------------------------
-- Table structure for ims_system_stat_visit
-- ----------------------------
DROP TABLE IF EXISTS `ims_system_stat_visit`;
CREATE TABLE `ims_system_stat_visit`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_system_stat_visit
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_activity_bargain
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_activity_bargain`;
CREATE TABLE `ims_tiny_wmall_activity_bargain`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `goods_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starthour` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `endhour` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `use_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'ongoing',
  `total_updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'bargain',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_activity_bargain
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_activity_bargain_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_activity_bargain_goods`;
CREATE TABLE `ims_tiny_wmall_activity_bargain_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bargain_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `discount_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `max_buy_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `poi_user_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'all',
  `discount_total` int(10) NOT NULL DEFAULT -1,
  `discount_available_total` int(10) NOT NULL DEFAULT -1,
  `dosage` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `mall_displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `bargain_id`(`bargain_id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `mall_displayorder`(`mall_displayorder`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_activity_bargain_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_activity_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_activity_coupon`;
CREATE TABLE `ims_tiny_wmall_activity_coupon`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '公号序号',
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '公号序号',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'collect',
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `discount` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '折扣券(折扣率), 代金券(面额)',
  `condition` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单满多少可用',
  `type_limit` int(10) NOT NULL DEFAULT 1 COMMENT '1:所有用户都可领取,2:新用户可领取',
  `dosage` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '已领取数量',
  `amount` int(10) UNSIGNED NOT NULL COMMENT '总发行数量',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:可领取,2:暂停领取',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '开始时间',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '结束时间',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发行时间',
  `activity_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `coupons` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `starttime`(`starttime`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `activity_id`(`activity_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_activity_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_activity_coupon_grant_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_activity_coupon_grant_log`;
CREATE TABLE `ims_tiny_wmall_activity_coupon_grant_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `couponid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户编号',
  `grant_type` tinyint(3) NOT NULL DEFAULT 1 COMMENT '状态: 1:一次性领取,2:每天领取 ',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `couponid`(`couponid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_tiny_wmall_activity_coupon_grant_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_activity_coupon_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_activity_coupon_record`;
CREATE TABLE `ims_tiny_wmall_activity_coupon_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `couponid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户编号',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 1 COMMENT '状态: 1:未使用,2:已使用 ',
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `granttime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发放时间',
  `usetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '使用时间',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'couponCollect',
  `discount` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `condition` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `channel` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_notice` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `noticetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `give_status` tinyint(3) NOT NULL DEFAULT 0,
  `from_uid` int(10) NOT NULL DEFAULT 0,
  `givetime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `couponid`(`couponid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `is_notice`(`is_notice`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE,
  INDEX `noticetime`(`noticetime`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE,
  INDEX `uniacid_sid_uid_orderid`(`uniacid`, `sid`, `uid`, `order_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_activity_coupon_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_activity_redpacket_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_activity_redpacket_record`;
CREATE TABLE `ims_tiny_wmall_activity_redpacket_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activity_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `channel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `discount` decimal(10, 2) UNSIGNED NOT NULL,
  `condition` decimal(10, 2) UNSIGNED NOT NULL,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `granttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `usetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `category_limit` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `times_limit` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_show` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `super_share_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `scene` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'waimai',
  `is_notice` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `noticetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grantday` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_type_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `redpacketid`(`activity_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `is_show`(`is_show`) USING BTREE,
  INDEX `scene`(`scene`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE,
  INDEX `is_notice`(`is_notice`) USING BTREE,
  INDEX `noticetime`(`noticetime`) USING BTREE,
  INDEX `uniacid_uid_orderid`(`uniacid`, `uid`, `order_id`) USING BTREE,
  INDEX `uniacid_type_uid_aid`(`uniacid`, `type`, `uid`, `activity_id`) USING BTREE,
  INDEX `uniacid_type_openid_aid`(`uniacid`, `type`, `openid`, `activity_id`) USING BTREE,
  INDEX `uniacid_status_endtime`(`uniacid`, `status`, `endtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 426 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_activity_redpacket_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_activity_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_activity_share`;
CREATE TABLE `ims_tiny_wmall_activity_share`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formuser_redpacket_min` tinyint(3) NOT NULL DEFAULT 1,
  `formuser_redpacket_max` tinyint(3) NOT NULL DEFAULT 10,
  `formuser_redpacket_time_limit` tinyint(3) NOT NULL DEFAULT 7,
  `touser_redpacket_min` tinyint(3) NOT NULL DEFAULT 1,
  `touser_redpacket_max` tinyint(3) NOT NULL DEFAULT 10,
  `touser_redpacket_time_limit` tinyint(3) NOT NULL DEFAULT 7,
  `share` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agreement` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_activity_share
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_address`;
CREATE TABLE `ims_tiny_wmall_address`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `realname` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_x` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_y` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:收货地址, 2:服务地址',
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'favorite',
  `area_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `area_parentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1658 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_address
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_advertise_trade
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_advertise_trade`;
CREATE TABLE `ims_tiny_wmall_advertise_trade`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `days` tinyint(10) NOT NULL,
  `data` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `type`(`displayorder`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `starttime`(`starttime`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_advertise_trade
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_agent
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_agent`;
CREATE TABLE `ims_tiny_wmall_agent`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `initial` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `sysset` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pluginset` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `fee` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `geofence` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `uniacid_token`(`uniacid`, `token`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_agent
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_agent_current_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_agent_current_log`;
CREATE TABLE `ims_tiny_wmall_agent_current_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `order_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` decimal(10, 2) NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hash` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hash`(`hash`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_agent_current_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_agent_getcash_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_agent_getcash_log`;
CREATE TABLE `ims_tiny_wmall_agent_getcash_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `get_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `take_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `final_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `account` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `channel` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'weixin',
  `toaccount_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_agent_getcash_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_area_list
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_area_list`;
CREATE TABLE `ims_tiny_wmall_area_list`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_x` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_y` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `uniacid_agentid_status`(`uniacid`, `agentid`, `status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_area_list
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_assign_board
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_assign_board`;
CREATE TABLE `ims_tiny_wmall_assign_board`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `guest_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_notify` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 390 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_assign_board
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_assign_queue
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_assign_queue`;
CREATE TABLE `ims_tiny_wmall_assign_queue`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `guest_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `notify_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `endtime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prefix` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '前缀',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '根据这个时间,判断是否将position重新至0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_assign_queue
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_cache`;
CREATE TABLE `ims_tiny_wmall_cache`  (
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime|562|errander_deliveryerApp|17.9.0|20190325190505` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_cache
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_category`;
CREATE TABLE `ims_tiny_wmall_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'member',
  `alias` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_system` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `score` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 242 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_category
-- ----------------------------
INSERT INTO `ims_tiny_wmall_category` VALUES (240, 1, 'TY_store_label', 'new', '新店', '#ff2d4b', 0, 1, 0);
INSERT INTO `ims_tiny_wmall_category` VALUES (241, 1, 'TY_store_label', 'brand', '品牌', '#ffa60b', 0, 1, 0);

-- ----------------------------
-- Table structure for ims_tiny_wmall_clerk
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_clerk`;
CREATE TABLE `ims_tiny_wmall_clerk`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid_wxapp` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid_wxapp_manager` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `openid_wxapp`(`openid_wxapp`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 523 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_clerk
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_cloudgoods_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_cloudgoods_goods`;
CREATE TABLE `ims_tiny_wmall_cloudgoods_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menu_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `old_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `box_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `is_options` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unitname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '份',
  `total` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_hot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slides` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attrs` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `ts_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  INDEX `is_hot`(`is_hot`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `displayorder`(`displayorder`) USING BTREE,
  INDEX `menu_id`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_cloudgoods_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_cloudgoods_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_cloudgoods_goods_category`;
CREATE TABLE `ims_tiny_wmall_cloudgoods_goods_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menu_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `store_categoryid`(`menu_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_cloudgoods_goods_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_cloudgoods_goods_options
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_cloudgoods_goods_options`;
CREATE TABLE `ims_tiny_wmall_cloudgoods_goods_options`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total` int(10) NOT NULL DEFAULT -1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_cloudgoods_goods_options
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_cloudgoods_menu_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_cloudgoods_menu_category`;
CREATE TABLE `ims_tiny_wmall_cloudgoods_menu_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_cloudgoods_menu_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_complain
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_complain`;
CREATE TABLE `ims_tiny_wmall_complain`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT 0,
  `uid` int(10) NOT NULL DEFAULT 0,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `addtime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_complain
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_config
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_config`;
CREATE TABLE `ims_tiny_wmall_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sysset` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pluginset` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 522 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_config
-- ----------------------------
INSERT INTO `ims_tiny_wmall_config` VALUES (520, 0, '', '');
INSERT INTO `ims_tiny_wmall_config` VALUES (521, 1, 'a:8:{s:5:\"wxapp\";N;s:7:\"takeout\";a:1:{s:5:\"range\";a:1:{s:3:\"map\";a:2:{s:10:\"location_x\";s:9:\"39.908743\";s:10:\"location_y\";s:10:\"116.397573\";}}}s:3:\"sms\";a:1:{s:6:\"verify\";a:2:{s:14:\"clerk_register\";i:1;s:17:\"consumer_register\";i:1;}}s:5:\"store\";a:1:{s:8:\"activity\";a:1:{s:4:\"perm\";a:12:{s:13:\"mallNewMember\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:9:\"newMember\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:8:\"discount\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:9:\"cashGrant\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:5:\"grant\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:7:\"bargain\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:13:\"couponCollect\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:11:\"couponGrant\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:12:\"selfDelivery\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:19:\"deliveryFeeDiscount\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:10:\"selfPickup\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:13:\"svipRedpacket\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}}}}s:7:\"getcash\";a:1:{s:7:\"channel\";a:1:{s:6:\"wechat\";s:6:\"wechat\";}}s:8:\"recharge\";a:2:{s:6:\"status\";i:2;s:5:\"items\";N;}s:7:\"payment\";a:15:{s:6:\"wechat\";a:5:{s:4:\"type\";s:7:\"default\";s:7:\"default\";a:11:{s:7:\"version\";i:2;s:5:\"appid\";s:2:\"12\";s:9:\"appsecret\";s:2:\"23\";s:5:\"mchid\";s:5:\"12321\";s:6:\"apikey\";s:4:\"1232\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:7:\"signkey\";s:0:\"\";s:14:\"apiclient_cert\";s:10:\"jaoKWn6g6o\";s:13:\"apiclient_key\";s:10:\"ca3yTgYB18\";s:6:\"rootca\";s:10:\"Zl1dYZUwE9\";}s:6:\"borrow\";N;s:7:\"partner\";a:10:{s:7:\"version\";i:2;s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"sub_appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:10:\"sub_mch_id\";s:0:\"\";s:6:\"apikey\";s:0:\"\";s:14:\"apiclient_cert\";N;s:13:\"apiclient_key\";N;s:6:\"rootca\";N;}s:14:\"borrow_partner\";a:10:{s:7:\"version\";i:2;s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"sub_appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:10:\"sub_mch_id\";s:0:\"\";s:6:\"apikey\";s:0:\"\";s:14:\"apiclient_cert\";N;s:13:\"apiclient_key\";N;s:6:\"rootca\";N;}}s:6:\"alipay\";a:7:{s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:8:\"rsa_type\";s:3:\"RSA\";s:11:\"private_key\";N;s:10:\"public_key\";N;}s:6:\"yimafu\";a:3:{s:4:\"host\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:9:\"h5_wechat\";a:7:{s:5:\"appid\";s:3:\"123\";s:9:\"appsecret\";s:3:\"123\";s:5:\"mchid\";s:3:\"123\";s:6:\"apikey\";s:3:\"123\";s:14:\"apiclient_cert\";s:10:\"pqOYT0pFLO\";s:13:\"apiclient_key\";s:10:\"MWhFX4zh8K\";s:6:\"rootca\";s:10:\"TBRxsYQyYS\";}s:10:\"app_wechat\";a:8:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:9:\"merchname\";s:0:\"\";s:6:\"apikey\";s:0:\"\";s:14:\"apiclient_cert\";N;s:13:\"apiclient_key\";N;s:6:\"rootca\";N;}s:10:\"app_alipay\";a:4:{s:5:\"appid\";s:0:\"\";s:8:\"rsa_type\";s:3:\"RSA\";s:11:\"private_key\";N;s:10:\"public_key\";N;}s:6:\"weixin\";a:2:{i:0;s:6:\"credit\";i:1;s:8:\"delivery\";}s:3:\"wap\";a:2:{i:0;s:6:\"alipay\";i:1;s:6:\"credit\";}s:3:\"app\";a:1:{i:0;s:6:\"credit\";}s:7:\"peerpay\";a:0:{}s:8:\"epayment\";a:5:{s:2:\"on\";N;s:5:\"appid\";s:0:\"\";s:12:\"mch_store_id\";s:0:\"\";s:19:\"authentication_code\";s:0:\"\";s:2:\"bz\";s:0:\"\";}s:6:\"suppay\";a:5:{s:2:\"on\";N;s:5:\"appid\";s:0:\"\";s:5:\"mchId\";s:0:\"\";s:6:\"md5Key\";s:0:\"\";s:2:\"bz\";s:0:\"\";}s:6:\"stripe\";a:4:{s:2:\"on\";N;s:2:\"pk\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"bz\";s:0:\"\";}s:7:\"attract\";a:5:{s:2:\"on\";N;s:5:\"appid\";s:0:\"\";s:12:\"mch_store_id\";s:0:\"\";s:19:\"authentication_code\";s:0:\"\";s:2:\"bz\";s:0:\"\";}s:9:\"available\";a:2:{i:0;s:6:\"credit\";i:1;s:8:\"delivery\";}}s:13:\"currency_info\";a:2:{s:4:\"rate\";i:100;s:11:\"expire_time\";i:1678702374;}}', '');

-- ----------------------------
-- Table structure for ims_tiny_wmall_creditshop_adv
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_creditshop_adv`;
CREATE TABLE `ims_tiny_wmall_creditshop_adv`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NULL DEFAULT 0,
  `advname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `wxapp_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `displayorder` int(10) NULL DEFAULT 0,
  `status` int(10) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `displayorder`(`displayorder`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_creditshop_adv
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_creditshop_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_creditshop_category`;
CREATE TABLE `ims_tiny_wmall_creditshop_category`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `displayorder` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `status` tinyint(3) NULL DEFAULT 1,
  `advimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `advurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `isrecommand` tinyint(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `displayorder`(`displayorder`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_creditshop_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_creditshop_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_creditshop_goods`;
CREATE TABLE `ims_tiny_wmall_creditshop_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_id` int(10) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `old_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `chance` tinyint(3) UNSIGNED NOT NULL,
  `totalday` tinyint(3) UNSIGNED NOT NULL,
  `use_credit1` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `use_credit2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `credit2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `redpacket` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_creditshop_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_creditshop_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_creditshop_order`;
CREATE TABLE `ims_tiny_wmall_creditshop_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `credits` decimal(10, 2) UNSIGNED NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `itemcode` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `actualprice` decimal(10, 2) UNSIGNED NOT NULL,
  `faceprice` decimal(10, 2) UNSIGNED NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordernum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordersn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_creditshop_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_creditshop_order_new
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_creditshop_order_new`;
CREATE TABLE `ims_tiny_wmall_creditshop_order_new`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `acid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `total_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `discount_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `transaction_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `use_credit1` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `use_credit2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grant_status` int(10) NOT NULL DEFAULT 0,
  `use_credit1_status` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `paytime`(`paytime`) USING BTREE,
  INDEX `is_pay`(`is_pay`) USING BTREE,
  INDEX `pay_type`(`pay_type`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_creditshop_order_new
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_cube
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_cube`;
CREATE TABLE `ims_tiny_wmall_cube`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tips` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NULL DEFAULT 0,
  `wxapp_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 439 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_cube
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_delivery_cards
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_delivery_cards`;
CREATE TABLE `ims_tiny_wmall_delivery_cards`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `days` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `day_free_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `delivery_fee_free_limit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_delivery_cards
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_delivery_cards_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_delivery_cards_order`;
CREATE TABLE `ims_tiny_wmall_delivery_cards_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `acid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordersn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 306 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_delivery_cards_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_deliveryer
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer`;
CREATE TABLE `ims_tiny_wmall_deliveryer`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `credit1` decimal(10, 2) NOT NULL,
  `credit2` decimal(10, 2) NOT NULL,
  `work_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `location_x` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_y` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_takeout_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order_errander_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `auth_info` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_takeout` tinyint(3) NOT NULL DEFAULT 0,
  `is_errander` tinyint(3) NOT NULL DEFAULT 0,
  `extra` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid_wxapp` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `collect_max_takeout` int(10) NOT NULL,
  `collect_max_errander` int(10) NOT NULL,
  `perm_transfer` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `perm_cancel` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_delivery` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_getcash` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `registration_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid_wxapp_deliveryer` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `deltime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `work_status`(`work_status`) USING BTREE,
  INDEX `token`(`token`) USING BTREE,
  INDEX `is_takeout`(`is_takeout`) USING BTREE,
  INDEX `is_errander`(`is_errander`) USING BTREE,
  INDEX `openid_wxapp`(`openid_wxapp`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `registration_id`(`registration_id`) USING BTREE,
  INDEX `uniacid_token`(`uniacid`, `token`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 388 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_deliveryer
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_deliveryer_current_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer_current_log`;
CREATE TABLE `ims_tiny_wmall_deliveryer_current_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deliveryer_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'order',
  `trade_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:订单入账, 2: 申请提现',
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` decimal(10, 2) NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_month` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hash` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hash`(`hash`) USING BTREE,
  INDEX `deliveryer_id`(`deliveryer_id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `trade_type`(`trade_type`) USING BTREE,
  INDEX `uniacid_stat_month`(`uniacid`, `deliveryer_id`, `stat_month`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 531 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_deliveryer_current_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_deliveryer_getcash_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer_getcash_log`;
CREATE TABLE `ims_tiny_wmall_deliveryer_getcash_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deliveryer_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `get_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `take_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `final_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT '1:申请成功,2:申请中',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `account` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `channel` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'weixin',
  `toaccount_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `deliveryer_id`(`deliveryer_id`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_deliveryer_getcash_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_deliveryer_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer_groups`;
CREATE TABLE `ims_tiny_wmall_deliveryer_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `group_condition` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_fee` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_deliveryer_groups
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_deliveryer_location_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer_location_log`;
CREATE TABLE `ims_tiny_wmall_deliveryer_location_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deliveryer_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `location_x` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_y` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime_cn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'app',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `deliveryer_id`(`deliveryer_id`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_deliveryer_location_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_deliveryer_transfer_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer_transfer_log`;
CREATE TABLE `ims_tiny_wmall_deliveryer_transfer_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deliveryer_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'takeout',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_year` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_month` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_day` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `deliveryer_id`(`deliveryer_id`) USING BTREE,
  INDEX `stat_year`(`stat_year`) USING BTREE,
  INDEX `stat_month`(`stat_month`) USING BTREE,
  INDEX `stat_day`(`stat_day`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_deliveryer_transfer_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_diypage
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_diypage`;
CREATE TABLE `ims_tiny_wmall_diypage`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `diymenu` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `version`(`version`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 315 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_diypage
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_diypage_menu
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_diypage_menu`;
CREATE TABLE `ims_tiny_wmall_diypage_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `updatetime`(`updatetime`) USING BTREE,
  INDEX `version`(`version`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_diypage_menu
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_diypage_template
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_diypage_template`;
CREATE TABLE `ims_tiny_wmall_diypage_template`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_diypage_template
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_errander_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_errander_category`;
CREATE TABLE `ims_tiny_wmall_errander_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'buy',
  `label` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_km` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pre_km` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `pre_km_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `weight_fee_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight_fee` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tip_min` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `tip_max` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `goods_thumbs_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_on_upload` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_within_days` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_times` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `multiaddress` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_discount` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `labels` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notice` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deliveryers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `distance_calculate_type` tinyint(3) NOT NULL,
  `goods_value_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_errander_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_errander_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_errander_order`;
CREATE TABLE `ims_tiny_wmall_errander_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `acid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_sn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_channel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wap',
  `order_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'buy',
  `order_cid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_price` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_weight` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buy_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buy_sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buy_mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buy_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buy_location_x` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buy_location_y` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accept_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accept_sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accept_mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accept_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accept_location_x` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accept_location_y` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `distance` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `deliveryer_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_handle_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wechat',
  `delivery_assign_time` int(10) NOT NULL DEFAULT 0,
  `delivery_instore_time` int(10) NOT NULL DEFAULT 0,
  `delivery_success_time` int(10) NOT NULL DEFAULT 0,
  `delivery_success_location_x` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_success_location_y` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `print_nums` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_tips` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discount_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `deliveryer_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deliveryer_total_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_remind` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_anonymous` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `anonymous_username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `out_trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refund_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `refund_out_no` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refund_apply_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refund_success_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refund_channel` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refund_account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat_year` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_month` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_day` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumbs` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `transaction_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agent_discount_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `agent_serve_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `agent_serve` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agent_final_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `plateform_serve_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `plateform_serve` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_collect_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `transfer_deliveryer_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `transfer_delivery_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `spread1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spread2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spreadbalance` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `paytime`(`paytime`) USING BTREE,
  INDEX `is_pay`(`is_pay`) USING BTREE,
  INDEX `pay_type`(`pay_type`) USING BTREE,
  INDEX `refund_status`(`refund_status`) USING BTREE,
  INDEX `delivery_status`(`delivery_status`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `deliveryer_id`(`deliveryer_id`) USING BTREE,
  INDEX `stat_year`(`stat_year`) USING BTREE,
  INDEX `stat_month`(`stat_month`) USING BTREE,
  INDEX `stat_day`(`stat_day`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `delivery_collect_type`(`delivery_collect_type`) USING BTREE,
  INDEX `transfer_deliveryer_id`(`delivery_collect_type`) USING BTREE,
  INDEX `transfer_delivery_status`(`delivery_collect_type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_errander_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_errander_order_discount
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_errander_order_discount`;
CREATE TABLE `ims_tiny_wmall_errander_order_discount`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `store_discount_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `agent_discount_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `plateform_discount_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_errander_order_discount
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_errander_order_status_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_errander_order_status_log`;
CREATE TABLE `ims_tiny_wmall_errander_order_status_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_cn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_errander_order_status_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_errander_page
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_errander_page`;
CREATE TABLE `ims_tiny_wmall_errander_page`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'sence',
  `scene` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agreement` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isdefault` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_hour` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00:00',
  `end_hour` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '23:59',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `isdefault`(`isdefault`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_errander_page
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_errander_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_errander_store`;
CREATE TABLE `ims_tiny_wmall_errander_store`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_in_business` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_rest` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_price` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `delivery_free_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pack_price` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `delivery_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:商家配送,2:到店自提,3:两种都支持',
  `delivery_within_days` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_reserve_days` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `serve_radius` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `serve_fee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_x` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_y` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sns` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notice` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告',
  `tips` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `invoice_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `token_status` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `remind_time_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `remind_reply` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_reply` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sailed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `score` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_order_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `discount_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `grant_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `bargain_price_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reserve_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `collect_coupon_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `grant_coupon_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `comment_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '评论审核.1:直接通过',
  `sms_use_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '短信使用条数',
  `wechat_qrcode` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custom_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtype` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:后台添加,2:申请入驻',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `template` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'index',
  `pc_notice_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `not_in_serve_radius` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `auto_handel_order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `auto_get_address` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `auto_notice_deliveryer` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `click` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_recommend` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_stick` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `position` tinyint(3) NOT NULL DEFAULT 0,
  `is_assign` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_reserve` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_meal` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_paybill` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `forward_mode` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `forward_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `assign_mode` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `assign_qrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_mode` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `delivery_fee_mode` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `delivery_times` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_areas` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单备注',
  `qualification` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label` int(10) NOT NULL DEFAULT 0,
  `push_token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `self_audit_comment` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '额外配送费',
  `elemeShopId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `eleme_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `meituanShopId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `meituan_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `fee_order` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `is_recommend`(`is_recommend`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `label`(`label`) USING BTREE,
  INDEX `displayorder`(`displayorder`) USING BTREE,
  INDEX `is_stick`(`is_stick`) USING BTREE,
  INDEX `elemeShopId`(`elemeShopId`) USING BTREE,
  INDEX `meituanShopId`(`meituanShopId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 576 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_errander_store
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_errander_store_current_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_errander_store_current_log`;
CREATE TABLE `ims_tiny_wmall_errander_store_current_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:订单入账, 2: 申请提现,3:账户变动，4:买单订单入驻',
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` decimal(10, 2) NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_errander_store_current_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_freelunch
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_freelunch`;
CREATE TABLE `ims_tiny_wmall_freelunch`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `max_partake_times` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `partake_grant_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reward_grant_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `redpacket_days_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pre_partaker_num` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pre_partaker_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `pre_reward_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `pre_max_partake_times` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plus_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `plus_thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `plus_partaker_num` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plus_reward_num` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `plus_pre_partaker_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `pre_plus_reward_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `plus_pre_max_partake_times` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `serial_sn` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `plus_serial_sn` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `share` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agreement` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `starttime`(`starttime`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_freelunch
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_freelunch_partaker
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_freelunch_partaker`;
CREATE TABLE `ims_tiny_wmall_freelunch_partaker`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `freelunch_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `record_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `serial_sn` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `number` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `final_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `freelunch_id`(`freelunch_id`) USING BTREE,
  INDEX `record_id`(`record_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `serial_sn`(`serial_sn`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_freelunch_partaker
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_freelunch_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_freelunch_record`;
CREATE TABLE `ims_tiny_wmall_freelunch_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `freelunch_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `serial_sn` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'common',
  `partaker_total` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `partaker_dosage` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `partaker_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `reward_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `reward_uid` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reward_number` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `startime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `freelunch_id`(`freelunch_id`) USING BTREE,
  INDEX `serial_sn`(`serial_sn`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_freelunch_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_gohome_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_category`;
CREATE TABLE `ims_tiny_wmall_gohome_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wxapp_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_gohome_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_gohome_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_comment`;
CREATE TABLE `ims_tiny_wmall_gohome_comment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_quality` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `store_service` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `score` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumbs` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `replytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `addtime` int(10) NOT NULL DEFAULT 0,
  `data` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `uniacid_goods_id`(`uniacid`, `agentid`, `goods_id`, `status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_gohome_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_gohome_favorite
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_favorite`;
CREATE TABLE `ims_tiny_wmall_gohome_favorite`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_uid_type_goodsid`(`uniacid`, `uid`, `type`, `goods_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_gohome_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_gohome_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_notice`;
CREATE TABLE `ims_tiny_wmall_gohome_notice`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wxapp_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_gohome_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_gohome_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_order`;
CREATE TABLE `ims_tiny_wmall_gohome_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `order_channel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wechat',
  `is_team` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `team_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `team_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `takepart_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordersn` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `num` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `discount_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `final_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `is_pay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pay_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `paytime` varchar(145) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `transaction_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `out_trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buyremark` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refund_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `refund_out_no` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refund_apply_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refund_success_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refund_channel` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refund_account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spec` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fightstatus` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fightgroupid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expressid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `recordid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refundtime` varchar(145) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applyrefund` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `applytime` varchar(145) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `disorderid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `failtimes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vipbuyflag` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `specid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `paidprid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shareid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `settlementmoney` decimal(10, 2) NOT NULL,
  `goodsprice` decimal(10, 2) NOT NULL,
  `overtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `changedispatchprice` decimal(10, 2) NOT NULL,
  `changeprice` decimal(10, 2) NOT NULL,
  `originalprice` decimal(10, 2) NOT NULL,
  `estimatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `store_discount_fee` decimal(10, 2) NOT NULL,
  `store_final_fee` decimal(10, 2) NOT NULL,
  `plateform_discount_fee` decimal(10, 2) NOT NULL,
  `plateform_serve_fee` decimal(10, 2) NOT NULL,
  `plateform_serve` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agent_final_fee` decimal(10, 2) NOT NULL,
  `agent_serve_fee` decimal(10, 2) NOT NULL,
  `agent_serve` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agent_discount_fee` decimal(10, 2) NOT NULL,
  `stat_year` int(10) UNSIGNED NOT NULL,
  `stat_month` int(10) UNSIGNED NOT NULL,
  `stat_day` int(10) UNSIGNED NOT NULL,
  `print_nums` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `print_sn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `print_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `spread1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spread2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spreadbalance` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_uid_status`(`uniacid`, `uid`, `status`) USING BTREE,
  INDEX `uniacid_sid_status`(`uniacid`, `sid`, `status`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_gohome_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_gohome_slide
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_slide`;
CREATE TABLE `ims_tiny_wmall_gohome_slide`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wxapp_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'gohome',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_gohome_slide
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_goods`;
CREATE TABLE `ims_tiny_wmall_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_th` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语标题',
  `price` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price_thb` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `box_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `box_price_thb` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `is_options` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unitname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '份',
  `unitname_th` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'ชิ้น' COMMENT '泰语单位名称',
  `total` int(10) NOT NULL DEFAULT 0,
  `total_update_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `sailed` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_hot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slides` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label_th` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语标签',
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_th` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语内容',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description_th` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '泰语描述',
  `comment_total` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comment_good` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `print_label` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attrs` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attrs_th` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `old_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `old_price_thb` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `elemeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `meituanId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `openplateformCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_warning` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `child_id` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `is_showtime` tinyint(3) NOT NULL DEFAULT 0,
  `start_time1` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_time1` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_time2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `week` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 3,
  `ts_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `ts_price_thb` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0.00',
  `svip_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `svip_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `svip_price_thb` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `unitnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `data` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `huangou_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `displayorder`(`displayorder`) USING BTREE,
  INDEX `elemeId`(`elemeId`) USING BTREE,
  INDEX `meituanId`(`meituanId`) USING BTREE,
  INDEX `openplateformCode`(`openplateformCode`) USING BTREE,
  INDEX `is_showtime`(`is_showtime`) USING BTREE,
  INDEX `sid`(`uniacid`, `sid`) USING BTREE,
  INDEX `cid`(`uniacid`, `sid`, `type`, `status`, `cid`) USING BTREE,
  INDEX `title`(`uniacid`, `sid`, `title`) USING BTREE,
  INDEX `is_hot`(`uniacid`, `sid`, `type`, `status`, `is_hot`) USING BTREE,
  INDEX `status`(`uniacid`, `sid`, `type`, `status`) USING BTREE,
  INDEX `child_id`(`uniacid`, `sid`, `type`, `status`, `cid`, `child_id`) USING BTREE,
  INDEX `uniacid_svip_status_status`(`uniacid`, `status`, `svip_status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15991 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_goods
-- ----------------------------
INSERT INTO `ims_tiny_wmall_goods` VALUES (15988, 1, 1310, 2469, '商品名称', '', '0', NULL, '0', '0', 1, '商品单位', 'ชิ้น', -1, 1, 0, 1, 0, 'images/1/2023/03/YxHP1XP989W9NX7j18TIN10mQx8771.jpg', 'a:0:{}', '自定义标签', '', 0, '简单描述', '', '<p>商品详情</p>', NULL, 0, 0, 0, 'N1222', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"属性\";s:5:\"label\";a:1:{i:0;s:6:\"辣度\";}}}', NULL, '0', NULL, '0', '0', '0', 0, 0, 0, '', '', '', '', '', 1, '0', '0.00', 0, '0', '0', 1, '', 1);
INSERT INTO `ims_tiny_wmall_goods` VALUES (15990, 1, 1311, 2470, '商品名称', '商品名称（泰语', '5', NULL, '1', '0', 1, '份', '份泰语', -1, 1, 0, 1, 0, 'images/1/2023/03/H06DKvEmwqWjE06w0D9B6GDQW0qbll.jpg', 'a:3:{i:0;s:51:\"images/1/2023/03/Hyz3GT9BUHV88Z93toBRGVpvOHz8O8.jpg\";i:1;s:51:\"images/1/2023/03/ov4gmNBAaI9X9GmRArgZg79giij93q.jpg\";i:2;s:51:\"images/1/2023/03/KsjCSzfmfGsssacZ0eSMjcFFjRa0J5.jpg\";}', '标签', '标签（泰语）', 0, '简单描述', '简单描述（泰语）', '<p><span style=\"color: rgb(51, 51, 51); font-family: Helvetica, STHeiti, \" microsoft=\"\" font-size:=\"\" background-color:=\"\">商品详情</span></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: Helvetica, STHeiti, \" microsoft=\"\" font-size:=\"\" background-color:=\"\">商品详情(泰语)</span></p>', 0, 0, 0, 'CCC', 'a:1:{i:0;a:2:{s:4:\"name\";s:6:\"属性\";s:5:\"label\";a:2:{i:0;s:7:\"属性1\";i:1;s:7:\"属性2\";}}}', 'a:1:{i:0;a:2:{s:4:\"name\";s:14:\"属性(泰语)\";s:5:\"label\";a:2:{i:0;s:14:\"泰语属性1 \";i:1;s:14:\" 泰语属性2\";}}}', '6', NULL, '0', '0', '0', 0, 2471, 0, '', '', '', '', '', 1, '4', '0.00', 1, '2', '0', 1, '', 1);

-- ----------------------------
-- Table structure for ims_tiny_wmall_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_goods_category`;
CREATE TABLE `ims_tiny_wmall_goods_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_th` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语标题',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `min_fee` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `min_fee_thb` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `elemeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT 0,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description_th` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语描述',
  `is_showtime` tinyint(3) NOT NULL DEFAULT 0,
  `start_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `week` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `displayorder`(`displayorder`) USING BTREE,
  INDEX `elemeId`(`elemeId`) USING BTREE,
  INDEX `is_showtime`(`is_showtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2472 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_goods_category
-- ----------------------------
INSERT INTO `ims_tiny_wmall_goods_category` VALUES (2468, 1, 1309, '商品分类', '', 1, 0, 0, 0, '0', 0, '分类描述', '', 0, '', '', '');
INSERT INTO `ims_tiny_wmall_goods_category` VALUES (2469, 1, 1310, '商品分类1', '', 1, 0, 0, 0, '0', 0, '商品分类描述', '', 0, '', '', '');
INSERT INTO `ims_tiny_wmall_goods_category` VALUES (2470, 1, 1311, '分类1', '泰语分类1', 1, 0, 0, 0, '0', 0, '分类描述1', '泰语分类描述1', 0, '', '', '');
INSERT INTO `ims_tiny_wmall_goods_category` VALUES (2471, 1, 1311, '子分类', '子分类（泰语）', 1, 0, 0, 0, '0', 2470, '', '', 0, '', '', '');

-- ----------------------------
-- Table structure for ims_tiny_wmall_goods_options
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_goods_options`;
CREATE TABLE `ims_tiny_wmall_goods_options`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_th` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语规格名称',
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price_thb` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total` int(10) NOT NULL DEFAULT -1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `total_warning` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `svip_price` decimal(10, 2) UNSIGNED NOT NULL,
  `svip_price_thb` decimal(10, 2) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 819 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_goods_options
-- ----------------------------
INSERT INTO `ims_tiny_wmall_goods_options` VALUES (815, 1, 1310, 15988, '规格1', '', '1', NULL, -1, 0, 0, 1.00, NULL);
INSERT INTO `ims_tiny_wmall_goods_options` VALUES (816, 1, 1310, 15988, '规格2', '', '2', NULL, -1, 0, 0, 2.00, NULL);
INSERT INTO `ims_tiny_wmall_goods_options` VALUES (818, 1, 1311, 15990, '规格1', '泰语规格1', '34', NULL, -1, 0, 0, 20.00, NULL);

-- ----------------------------
-- Table structure for ims_tiny_wmall_haodian_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_haodian_category`;
CREATE TABLE `ims_tiny_wmall_haodian_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_agentid`(`uniacid`, `agentid`) USING BTREE,
  INDEX `uniacid_agentid_status`(`uniacid`, `agentid`, `status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_haodian_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_haodian_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_haodian_order`;
CREATE TABLE `ims_tiny_wmall_haodian_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `days` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordersn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_channel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `transaction_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `out_trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agent_final_fee` decimal(10, 2) NOT NULL,
  `agent_serve_fee` decimal(10, 2) NOT NULL,
  `agent_serve` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_uid`(`uniacid`, `uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_haodian_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_help
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_help`;
CREATE TABLE `ims_tiny_wmall_help`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime|319|errander_deliveryerApp|10.6.0|20180111192949` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `click` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_help
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_kanjia
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_kanjia`;
CREATE TABLE `ims_tiny_wmall_kanjia`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cateid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `oldprice` decimal(10, 2) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `vipprice` decimal(10, 2) NOT NULL,
  `submitmoneylimit` decimal(10, 2) NOT NULL,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `helplimit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dayhelplimit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `joinlimit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `falsejoinnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `falselooknum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `falsesharenum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumbs` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bgmusic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activity_rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vipstatus` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total` int(10) NOT NULL DEFAULT 0,
  `sailed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `displayorder` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `malldisplayorder` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `looknum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sharenum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `usestatus` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `share` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_update_type` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_agentid_status`(`uniacid`, `agentid`, `status`) USING BTREE,
  INDEX `uniacid_agentid_cateid_status`(`uniacid`, `agentid`, `cateid`, `status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_kanjia
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_kanjia_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_kanjia_category`;
CREATE TABLE `ims_tiny_wmall_kanjia_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_agentid`(`uniacid`, `agentid`) USING BTREE,
  INDEX `uniacid_agentid_status`(`uniacid`, `agentid`, `status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_kanjia_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_kanjia_helprecord
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_kanjia_helprecord`;
CREATE TABLE `ims_tiny_wmall_kanjia_helprecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `agentid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `bargainprice` decimal(10, 2) NOT NULL,
  `afterprice` decimal(10, 2) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_tiny_wmall_kanjia_helprecord
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_kanjia_userlist
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_kanjia_userlist`;
CREATE TABLE `ims_tiny_wmall_kanjia_userlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `agentid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `qrcode` int(11) NOT NULL,
  `usetimes` int(11) NOT NULL,
  `usedtime` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expressid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_kanjia_userlist
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_lewaimai_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_lewaimai_log`;
CREATE TABLE `ims_tiny_wmall_lewaimai_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `storeidOrgoodsid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'goods',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `storeidOrgoodsid`(`storeidOrgoodsid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2820 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_lewaimai_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_mealredpacket_exchange
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_mealredpacket_exchange`;
CREATE TABLE `ims_tiny_wmall_mealredpacket_exchange`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `redpacketid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `discount` decimal(10, 2) UNSIGNED NOT NULL,
  `condition` decimal(10, 2) UNSIGNED NOT NULL,
  `grant_days_effect` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `use_days_limit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `redpacketid`(`redpacketid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_tiny_wmall_mealredpacket_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_member_black
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_member_black`;
CREATE TABLE `ims_tiny_wmall_member_black`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plugin` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_uid_plugin`(`uniacid`, `uid`, `plugin`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_member_black
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_member_footmark
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_member_footmark`;
CREATE TABLE `ims_tiny_wmall_member_footmark`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_day` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `stat_day`(`stat_day`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1244 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_tiny_wmall_member_footmark
-- ----------------------------
INSERT INTO `ims_tiny_wmall_member_footmark` VALUES (1238, 1, 155716544, 1310, 1677916674, 20230304, 0);
INSERT INTO `ims_tiny_wmall_member_footmark` VALUES (1239, 1, 155716544, 1311, 1678159084, 20230307, 0);
INSERT INTO `ims_tiny_wmall_member_footmark` VALUES (1240, 1, 155716544, 1310, 1678168729, 20230307, 0);
INSERT INTO `ims_tiny_wmall_member_footmark` VALUES (1241, 1, 155716544, 1311, 1678328583, 20230309, 0);
INSERT INTO `ims_tiny_wmall_member_footmark` VALUES (1242, 1, 155716544, 1310, 1678345868, 20230309, 0);
INSERT INTO `ims_tiny_wmall_member_footmark` VALUES (1243, 1, 155716544, 1311, 1678697512, 20230313, 0);

-- ----------------------------
-- Table structure for ims_tiny_wmall_member_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_member_groups`;
CREATE TABLE `ims_tiny_wmall_member_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `group_condition` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_member_groups
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_member_invoice
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_member_invoice`;
CREATE TABLE `ims_tiny_wmall_member_invoice`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `recognition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_member_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_member_recharge
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_member_recharge`;
CREATE TABLE `ims_tiny_wmall_member_recharge`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_sn` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `final_fee` decimal(10, 2) NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'credit',
  `tag` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(1) NOT NULL DEFAULT 0,
  `pay_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime|146|errander_deliveryerApp|5.3.0|20170304144427` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_member_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_members
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_members`;
CREATE TABLE `ims_tiny_wmall_members`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `setmeal_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `setmeal_day_free_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `setmeal_starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `setmeal_endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `first_order_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_order_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `success_num` int(10) UNSIGNED NULL DEFAULT 0,
  `success_price` decimal(10, 2) NOT NULL,
  `cancel_num` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cancel_price` decimal(10, 2) NOT NULL,
  `is_sys` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:系统会员, 2:模块兼容会员',
  `search_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile_audit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `salt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid_qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid_wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `register_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wechat',
  `success_first_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `success_last_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cancel_first_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cancel_last_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `credit1` decimal(10, 2) UNSIGNED NOT NULL,
  `credit2` decimal(10, 2) UNSIGNED NOT NULL,
  `uid_qianfan` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid_majia` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_spread` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `spreadcredit2` decimal(10, 2) UNSIGNED NOT NULL,
  `spreadtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `groupid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spread1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spread2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spreadfixed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `spread_groupid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spread_status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `groupid_updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid_wxapp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `spread_groupid_change_from` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'system',
  `setmeal_deliveryfee_free_limit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `svip_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `svip_starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `svip_endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `svip_credit1` decimal(10, 2) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `cancel_first_time`(`cancel_first_time`) USING BTREE,
  INDEX `cancel_last_time`(`cancel_last_time`) USING BTREE,
  INDEX `success_first_time`(`success_first_time`) USING BTREE,
  INDEX `success_last_time`(`success_last_time`) USING BTREE,
  INDEX `first_order_time`(`success_first_time`) USING BTREE,
  INDEX `last_order_time`(`success_last_time`) USING BTREE,
  INDEX `uid_qianfan`(`uid_qianfan`) USING BTREE,
  INDEX `is_spread`(`is_spread`) USING BTREE,
  INDEX `spreadtime`(`spreadtime`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `uid_majia`(`uid_majia`) USING BTREE,
  INDEX `spread1`(`spread1`) USING BTREE,
  INDEX `spread2`(`spread2`) USING BTREE,
  INDEX `spead_groupid`(`spread_groupid`) USING BTREE,
  INDEX `spead_status`(`spread_status`) USING BTREE,
  INDEX `speadid1`(`spread1`) USING BTREE,
  INDEX `speadid2`(`spread2`) USING BTREE,
  INDEX `openid_wxapp`(`openid_wxapp`) USING BTREE,
  INDEX `unionId`(`unionId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5580 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_members
-- ----------------------------
INSERT INTO `ims_tiny_wmall_members` VALUES (5579, 1, 155716544, '', '', '', '', '', '15880260510', 0, 0, 0, 0, 0, 0, 0, 0.00, 0, 0.00, 2, '', 1677916636, 1, '757046', 'f7aa1c217c339528745242f7ea4fd322', '', '', 'mobile', 0, 0, 0, 0, 1, 'sDALvgw33YG9ol4dV99ZA7c72jVAJago', 0.00, 0.00, 0, 0, 0, 0.00, 0, 0, 0, 0, 0, 0, 0, 1678698774, '', '', 'system', 0, 0, 0, 0, 0.00);

-- ----------------------------
-- Table structure for ims_tiny_wmall_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_news`;
CREATE TABLE `ims_tiny_wmall_news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cateid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_display` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_show_home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `click` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `cateid`(`cateid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_news
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_news_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_news_category`;
CREATE TABLE `ims_tiny_wmall_news_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_news_category
-- ----------------------------
INSERT INTO `ims_tiny_wmall_news_category` VALUES (29, 1, '资讯分类1', 0, '', 0);

-- ----------------------------
-- Table structure for ims_tiny_wmall_notice
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_notice`;
CREATE TABLE `ims_tiny_wmall_notice`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'member',
  `title` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flag` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime|562|errander_deliveryerApp|14.2.0|20180721162124` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wxapp_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_notice
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_notice_read_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_notice_read_log`;
CREATE TABLE `ims_tiny_wmall_notice_read_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_new` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `notice_id`(`notice_id`) USING BTREE,
  INDEX `is_new`(`is_new`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 402 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_tiny_wmall_notice_read_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_oauth_fans
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_oauth_fans`;
CREATE TABLE `ims_tiny_wmall_oauth_fans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `oauth_openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wechat',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `appid`(`appid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `oauth_openid`(`oauth_openid`) USING BTREE,
  INDEX `appid_openid`(`appid`, `openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_oauth_fans
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_operate_log`;
CREATE TABLE `ims_tiny_wmall_operate_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT 0,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(10) NOT NULL DEFAULT 0,
  `role` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_operate_log
-- ----------------------------
INSERT INTO `ims_tiny_wmall_operate_log` VALUES (32, 1, '平台创始人', 1, 'founder', 2000, '平台后台添加商户(商户id:1308)', '106.122.239.2', '', '', 1618919341);
INSERT INTO `ims_tiny_wmall_operate_log` VALUES (33, 1, '平台创始人', 1, 'founder', 2000, '平台后台添加商户(商户id:1309)', '127.0.0.1', '', '', 1677850219);
INSERT INTO `ims_tiny_wmall_operate_log` VALUES (34, 1, '平台创始人', 1, 'founder', 2000, '平台后台添加商户(商户id:1310)', '127.0.0.1', '', '', 1677851395);
INSERT INTO `ims_tiny_wmall_operate_log` VALUES (35, 1, '平台创始人', 1, 'founder', 2000, '平台后台添加商户(商户id:1311)', '127.0.0.1', '', '', 1678111525);

-- ----------------------------
-- Table structure for ims_tiny_wmall_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order`;
CREATE TABLE `ims_tiny_wmall_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `acid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `groupid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_pay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordersn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_x` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_y` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `num` tinyint(3) UNSIGNED NOT NULL,
  `delivery_day` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_handle_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wechat',
  `delivery_success_location_x` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_success_location_y` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_assign_time` int(10) NOT NULL DEFAULT 0,
  `delivery_instore_time` int(10) NOT NULL DEFAULT 0,
  `delivery_success_time` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `delivery_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '3:待配送, 4:配送中, 5: 配送成功, 6: 配送失败',
  `delivery_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_comment` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `print_nums` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_fee` decimal(10, 2) UNSIGNED NOT NULL COMMENT '外卖配送费',
  `pack_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `serve_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discount_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `total_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `vip_free_delivery_fee` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `invoice` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_remind` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `deliveryer_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_refund` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `person_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `table_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `table_cid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reserve_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reserve_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `transaction_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '第三方支付交易号',
  `box_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `deliveryingtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deliveryinstoretime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deliverysuccesstime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `serial_sn` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `handletime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refund_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `out_trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `store_final_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `store_discount_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `plateform_discount_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `plateform_serve_rate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `plateform_serve_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `plateform_delivery_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `plateform_deliveryer_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `refund_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `stat_year` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_month` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_day` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_channel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wap',
  `mall_first_order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `plateform_serve` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deductcredit2` decimal(10, 2) UNSIGNED NOT NULL,
  `is_timeout` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agent_serve` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agent_final_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `agent_serve_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `agent_discount_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `spread1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spread2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `clerk_notify_collect_time` int(10) NOT NULL DEFAULT 0,
  `distance` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `last_notify_deliveryer_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_notify_clerk_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `notify_deliveryer_total` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `notify_clerk_total` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `elemeOrderId` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `elemeDowngraded` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `eleme_store_final_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `order_plateform` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'we7_wmall',
  `spreadbalance` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `meituanOrderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `meituan_store_final_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `delivery_takegoods_time` int(10) NOT NULL DEFAULT 0,
  `extra_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `is_delete` tinyint(3) NOT NULL DEFAULT 0,
  `print_sn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `stat_week` tinyint(3) UNSIGNED NOT NULL,
  `meals_cn` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_collect_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `transfer_deliveryer_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `transfer_delivery_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `print_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `deliverytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_reserve` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `dispatch_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reserve_notify_clerk_starttime` int(10) NOT NULL DEFAULT 0,
  `pindan_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `zhunshibao_price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `zhunshibao_compensate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `zhunshibao_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `currency` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'CNY' COMMENT '货币单位',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_sid`(`uniacid`, `sid`) USING BTREE,
  INDEX `delivery_status`(`delivery_status`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `delivery_type`(`delivery_type`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `order_type`(`order_type`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `refund_status`(`refund_status`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `paytime`(`paytime`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE,
  INDEX `pay_type`(`pay_type`) USING BTREE,
  INDEX `stat_year`(`stat_year`) USING BTREE,
  INDEX `stat_month`(`stat_month`) USING BTREE,
  INDEX `stat_day`(`stat_day`) USING BTREE,
  INDEX `is_pay`(`is_pay`) USING BTREE,
  INDEX `deliveryer_id`(`deliveryer_id`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `clerk_notify_collect_time`(`clerk_notify_collect_time`) USING BTREE,
  INDEX `handletime`(`handletime`) USING BTREE,
  INDEX `elemeOrderId`(`elemeOrderId`) USING BTREE,
  INDEX `order_plateform`(`order_plateform`) USING BTREE,
  INDEX `elemeDowngraded`(`elemeDowngraded`) USING BTREE,
  INDEX `spread1`(`spread1`) USING BTREE,
  INDEX `spread2`(`spread2`) USING BTREE,
  INDEX `spreadbalance`(`spreadbalance`) USING BTREE,
  INDEX `meituanOrderId`(`meituanOrderId`) USING BTREE,
  INDEX `order_channel`(`order_channel`) USING BTREE,
  INDEX `print_sn`(`print_sn`) USING BTREE,
  INDEX `print_nums`(`print_nums`) USING BTREE,
  INDEX `delivery_collect_type`(`delivery_collect_type`) USING BTREE,
  INDEX `transfer_deliveryer_id`(`delivery_collect_type`) USING BTREE,
  INDEX `transfer_delivery_status`(`delivery_collect_type`) USING BTREE,
  INDEX `stat_week`(`stat_week`) USING BTREE,
  INDEX `meals_cn`(`meals_cn`) USING BTREE,
  INDEX `is_remind`(`is_remind`) USING BTREE,
  INDEX `uniacid_printstatus_addtime`(`uniacid`, `print_status`, `addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 160 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_cart
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_cart`;
CREATE TABLE `ims_tiny_wmall_order_cart`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `groupid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `num` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10, 2) UNSIGNED NOT NULL,
  `original_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `original_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bargain_use_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `box_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `is_buysvip` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pindan_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pindan_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `currency` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'CNY' COMMENT '货币单位',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `uniacid_sid_uid`(`uniacid`, `sid`, `uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9335 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_cart
-- ----------------------------
INSERT INTO `ims_tiny_wmall_order_cart` VALUES (9334, 1, 1311, 155716544, 0, 2, 68.00, '0.00', 'a:1:{i:15990;a:2:{s:7:\"818_0s0\";a:10:{s:5:\"title\";s:29:\"商品名称(规格1+属性1)\";s:12:\"option_title\";s:15:\"规格1+属性1\";s:3:\"num\";i:1;s:5:\"price\";s:2:\"34\";s:14:\"discount_price\";s:2:\"34\";s:12:\"discount_num\";i:0;s:9:\"price_num\";N;s:11:\"total_price\";d:34;s:20:\"total_discount_price\";d:34;s:10:\"bargain_id\";i:0;}s:7:\"818_0s1\";a:10:{s:5:\"title\";s:29:\"商品名称(规格1+属性2)\";s:12:\"option_title\";s:15:\"规格1+属性2\";s:3:\"num\";i:1;s:5:\"price\";s:2:\"34\";s:14:\"discount_price\";s:2:\"34\";s:12:\"discount_num\";i:0;s:9:\"price_num\";N;s:11:\"total_price\";d:34;s:20:\"total_discount_price\";d:34;s:10:\"bargain_id\";i:0;}}}', 'a:2:{i:15990;a:3:{s:8:\"goods_id\";s:5:\"15990\";s:5:\"title\";s:12:\"商品名称\";s:7:\"options\";a:2:{s:7:\"818_0s0\";a:7:{s:9:\"option_id\";s:7:\"818_0s0\";s:4:\"name\";s:15:\"规格1 属性1\";s:3:\"num\";i:1;s:9:\"price_num\";i:1;s:12:\"discount_num\";i:0;s:10:\"bargain_id\";i:0;s:11:\"price_total\";s:2:\"34\";}s:7:\"818_0s1\";a:7:{s:9:\"option_id\";s:7:\"818_0s1\";s:4:\"name\";s:15:\"规格1 属性2\";s:3:\"num\";i:1;s:9:\"price_num\";i:1;s:12:\"discount_num\";i:0;s:10:\"bargain_id\";i:0;s:11:\"price_total\";s:2:\"34\";}}}i:88888;a:3:{s:5:\"title\";s:9:\"餐盒费\";s:8:\"goods_id\";i:0;s:7:\"options\";a:1:{i:0;a:5:{s:3:\"num\";i:2;s:4:\"name\";s:0:\"\";s:12:\"discount_num\";i:0;s:9:\"price_num\";i:0;s:11:\"price_total\";s:4:\"2.00\";}}}}', 0, 1678698780, 0, '2', 0, 0, 0, 'CNY');

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_comment`;
CREATE TABLE `ims_tiny_wmall_order_comment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_quality` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_service` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `score` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumbs` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `replytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `addtime` int(10) NOT NULL DEFAULT 0,
  `is_share` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deliveryer_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `taste_score` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `package_score` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `deliveryer_tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `delivery_service`(`delivery_service`) USING BTREE,
  INDEX `deliveryer_id`(`deliveryer_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 130 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_discount
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_discount`;
CREATE TABLE `ims_tiny_wmall_order_discount`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `store_discount_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `plateform_discount_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `agent_discount_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4151 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_discount
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_grant
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_grant`;
CREATE TABLE `ims_tiny_wmall_order_grant`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `max` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `continuous` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `continuous`(`continuous`) USING BTREE,
  INDEX `sum`(`sum`) USING BTREE,
  INDEX `updatetime`(`updatetime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_tiny_wmall_order_grant
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_grant_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_grant_record`;
CREATE TABLE `ims_tiny_wmall_order_grant_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `days` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `grant` decimal(10, 2) UNSIGNED NOT NULL,
  `credittype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `stat_month` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `times`(`days`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_grant_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_peerpay
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_peerpay`;
CREATE TABLE `ims_tiny_wmall_order_peerpay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `orderid` int(11) NOT NULL DEFAULT 0,
  `peerpay_type` tinyint(1) NOT NULL DEFAULT 0,
  `peerpay_price` decimal(10, 2) NOT NULL,
  `peerpay_maxprice` decimal(10, 2) NOT NULL,
  `peerpay_realprice` decimal(10, 2) NOT NULL,
  `peerpay_selfpay` decimal(10, 2) NOT NULL,
  `peerpay_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `orderid`(`orderid`) USING BTREE,
  INDEX `plid`(`plid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_peerpay
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_peerpay_payinfo
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_peerpay_payinfo`;
CREATE TABLE `ims_tiny_wmall_order_peerpay_payinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(11) NOT NULL DEFAULT 0,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `usay` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `final_fee` decimal(10, 2) NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `headimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `refundstatus` tinyint(1) NOT NULL DEFAULT 0,
  `refundprice` decimal(10, 2) NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `is_pay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `order_sn`(`order_sn`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_peerpay_payinfo
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_refund
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_refund`;
CREATE TABLE `ims_tiny_wmall_order_refund`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `acid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `out_trade_no` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `out_refund_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `apply_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `handle_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `success_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `channel` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_channel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wap',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'order',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 150 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_refund
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_refund_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_refund_log`;
CREATE TABLE `ims_tiny_wmall_order_refund_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'order',
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refund_id` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `refund_id`(`uniacid`, `refund_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 302 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_refund_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_remind_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_remind_log`;
CREATE TABLE `ims_tiny_wmall_order_remind_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `remindid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `channel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'system',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `remindid`(`remindid`) USING BTREE,
  INDEX `channel`(`channel`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_remind_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_stat
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_stat`;
CREATE TABLE `ims_tiny_wmall_order_stat`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_cid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_num` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_discount_num` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_unit_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_price` decimal(10, 2) UNSIGNED NOT NULL,
  `goods_original_price` decimal(10, 2) UNSIGNED NOT NULL,
  `bargain_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_update_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `print_label` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `addtime` int(10) NOT NULL DEFAULT 0,
  `goods_category_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat_year` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_month` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_week` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_day` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_plateform` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'we7_wmall',
  `goods_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal',
  `data` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `currency` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'CNY' COMMENT '货币单位',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `bargain_id`(`bargain_id`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `order_plateform`(`order_plateform`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7412 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_stat
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_order_status_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_order_status_log`;
CREATE TABLE `ims_tiny_wmall_order_status_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_cn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hash` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hash`(`hash`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 891 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_status_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_paybill_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_paybill_order`;
CREATE TABLE `ims_tiny_wmall_paybill_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `acid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `serial_sn` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `total_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `no_discount_part` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `discount_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `plateform_serve_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `plateform_serve` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `store_final_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `out_trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `transaction_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat_year` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_month` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_day` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agent_serve_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `agent_serve` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agent_final_fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0.00',
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_sn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `stat_year`(`stat_year`) USING BTREE,
  INDEX `stat_month`(`stat_month`) USING BTREE,
  INDEX `stat_day`(`stat_day`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `paytime`(`paytime`) USING BTREE,
  INDEX `is_pay`(`is_pay`) USING BTREE,
  INDEX `pay_type`(`pay_type`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_paybill_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_paylog`;
CREATE TABLE `ims_tiny_wmall_paylog`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_sn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `out_trade_order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `order_sn`(`order_sn`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_perm_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_perm_account`;
CREATE TABLE `ims_tiny_wmall_perm_account`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plugins` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `max_store` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_perm_account
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_perm_role
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_perm_role`;
CREATE TABLE `ims_tiny_wmall_perm_role`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT 0,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_perm_role
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_perm_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_perm_user`;
CREATE TABLE `ims_tiny_wmall_perm_user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT 0,
  `uid` int(10) NOT NULL DEFAULT 0,
  `roleid` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `roleid`(`roleid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_perm_user
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_pintuan_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_pintuan_category`;
CREATE TABLE `ims_tiny_wmall_pintuan_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_agentid`(`uniacid`, `agentid`) USING BTREE,
  INDEX `uniacid_agentid_status`(`uniacid`, `agentid`, `status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_pintuan_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_pintuan_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_pintuan_goods`;
CREATE TABLE `ims_tiny_wmall_pintuan_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` decimal(10, 2) NOT NULL,
  `aloneprice` decimal(10, 2) NOT NULL,
  `oldprice` decimal(10, 2) NOT NULL,
  `peoplenum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `grouptime` decimal(10, 2) NOT NULL,
  `specstatus` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `specdetail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cateid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tag` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `total` int(10) NOT NULL DEFAULT 0,
  `sailed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `falesailed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `falselooknum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `falsesharenum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `displayorder` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buylimit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumbs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `share` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usetype` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `click` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `looknum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sharenum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_update_type` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_agentid_status`(`uniacid`, `agentid`, `status`) USING BTREE,
  INDEX `uniacid_agentid_cateid_status`(`uniacid`, `agentid`, `cateid`, `status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_pintuan_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_plugin`;
CREATE TABLE `ims_tiny_wmall_plugin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ability` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(10) NULL DEFAULT 0,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_show` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 542 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_plugin
-- ----------------------------
INSERT INTO `ims_tiny_wmall_plugin` VALUES (1, 'errander', 'biz', 'LL跑腿', '../addons/we7_wmall/static/img/plugin/errander.png', '', '随意购,帮人取,帮人送，实现足不出户购买一切你想购买，跑腿功能一网打尽', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (2, 'deliveryCard', 'biz', '配送会员卡', '../addons/we7_wmall/static/img/plugin/deliveryCard.png', '', '配送会员卡', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (3, 'customerApp', 'tool', '顾客端APP', '../addons/we7_wmall/static/img/plugin/customerApp.png', '', '顾客端APP', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (4, 'bargain', 'activity', '天天特价', '../addons/we7_wmall/static/img/plugin/bargain.png', '', '天天特价', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (5, 'shareRedpacket', 'activity', '分享有礼', '../addons/we7_wmall/static/img/plugin/shareRedpacket.png', '', '分享订单，赠送余额或积分！！！！！！', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (6, 'freeLunch', 'activity', '霸王餐', '../addons/we7_wmall/static/img/plugin/freeLunch.png', '', '霸王餐', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (7, 'diypage', 'biz', '平台装修', '../addons/we7_wmall/static/img/plugin/diypage.png', '', '可自定义底部菜单，设置订单弹幕，自定义活动页面等', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (8, 'deliveryerApp', 'tool', '配送员APP', '../addons/we7_wmall/static/img/plugin/deliveryerApp.png', '', '可在手机上接单 顾客可实时查看配送员位置', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (9, 'ordergrant', 'activity', '下单有礼', '../addons/we7_wmall/static/img/plugin/ordergrant.png', '', '下单给顾客送积分或余额', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (10, 'creditshop', 'activity', '积分商城', '../addons/we7_wmall/static/img/plugin/creditshop.png', '', '积分兑换好礼活动利器', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (11, 'test', 'biz', 'LL外卖', '../addons/we7_wmall/static/img/plugin/test.png', '', '费用支付，测试功能， 不要购买', 1, 0, 0);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (12, 'qianfanApp', 'tool', '千帆APP整合', '../addons/we7_wmall/static/img/plugin/qianfanApp.png', '', '千帆APP整合', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (13, 'majiaApp', 'tool', '马甲APP整合', '../addons/we7_wmall/static/img/plugin/majiaApp.png', '', '马甲APP整合', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (14, 'managerApp', 'tool', '商户APP', '../addons/we7_wmall/static/img/plugin/managerApp.png', '', '商户APP', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (15, 'superRedpacket', 'activity', '超级红包', '../addons/we7_wmall/static/img/plugin/superRedpacket.png', '', '超级红包可实现主动发送和分享红包功能！！！！！！', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (16, 'eleme', 'biz', '饿了么平台对接', '../addons/we7_wmall/static/img/plugin/eleme.png', '', '拉取饿了么商户商品信息，对接饿了么订单进行配送', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (17, 'spread', 'biz', 'LL推广', '../addons/we7_wmall/static/img/plugin/spread.png', '', 'LL推广', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (18, 'meituan', 'biz', '美团平台对接', '../addons/we7_wmall/static/img/plugin/meituan.png', '', '美团平台对接', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (19, 'wxapp', 'biz', 'LL外卖小程序', '../addons/we7_wmall/static/img/plugin/wxapp.png', '', 'LL外卖小程序，小程序将对页面UI就行优化改进，客户体验更好。', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (20, 'poster', 'activity', '活动海报', '../addons/we7_wmall/static/img/plugin/poster.png', '', '活动海报', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (21, 'agent', 'biz', '区域代理', '../addons/we7_wmall/static/img/plugin/agent.png', '', '区域代理,平台可发展其他区域进行代理,建议有发展代理能力的平台购买 ! ', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (22, 'dada', 'biz', '达达开放平台对接', '../addons/we7_wmall/static/img/plugin/dada.png', '', '达达开放平台对接', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (23, 'lewaimai', 'biz', '乐外卖采集', '../addons/we7_wmall/static/img/plugin/lewaimai.png', '', '可采集乐外卖的商家和商品图片', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (24, 'advertise', 'biz', '商户广告通', '../addons/we7_wmall/static/img/plugin/advertise.png', '', '商户自行购买为你优选，置顶，幻灯片广告位', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (25, 'mealRedpacket', 'activity', '套餐红包', '../addons/we7_wmall/static/img/plugin/mealRedpacket.png', '', '套餐红包', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (26, 'superCoupon', 'activity', '超级代金券', '../addons/we7_wmall/static/img/plugin/superCoupon.png', '', '超级代金券可实现商户针对不同的人群发送代金券', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (27, 'cloudGoods', 'biz', '云商品库', '../addons/we7_wmall/static/img/plugin/cloudGoods.png', '', '总平台可以维护一个商品库， 商户在添加商品的时候，可以直接从商品库中选择商品', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (28, 'wheel', 'activity', '大转盘', '../addons/we7_wmall/static/img/plugin/wheel.png', '', '顾客在订单支付后，可以直接跳转到抽奖页面进行抽奖', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (29, 'storebd', 'biz', '店铺业务员', '../addons/we7_wmall/static/img/plugin/storebd.png', '', '店铺业务员', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (30, 'wxapp_manager', 'biz', '商户管理小程序', '../addons/we7_wmall/static/img/plugin/wxapp_manager.png', '', '商户管理小程序', 1, 0, 0);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (31, 'uupaotui', 'biz', 'UU跑腿对接', '../addons/we7_wmall/static/img/plugin/uupaotui.png', '', '可将本平台的订单推送到达达，由达达的配送员进行配送', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (32, 'plateformApp', 'tool', '平台管理APP', '../addons/we7_wmall/static/img/plugin/plateformApp.png', '', '平台管理APP', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (33, 'gohome', 'biz', 'LL生活圈', '../addons/we7_wmall/static/img/plugin/gohome.png', '', 'LL生活圈', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (34, 'svip', 'activity', '超级会员svip', '../addons/we7_wmall/static/img/plugin/svip.png', '', '超级SVIP', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (35, 'plugincenter', 'biz', '应用授权管理', '../addons/we7_wmall/static/img/plugin/plugincenter.jpg', '', '应用授权管理，是为LL外卖用户提供的，便于向您的客户销售外卖插件授权的功能。它可为您简化插件授权销售流程，操作便捷为您省心。', 1, 0, 0);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (36, 'area', 'biz', '指定区域', '../addons/we7_wmall/static/img/plugin/area.png', '', '指定区域', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (37, 'zhunshibao', 'biz', '准时宝', '../addons/we7_wmall/static/img/plugin/zhunshibao.png', '', '准时宝', 1, 0, 1);
INSERT INTO `ims_tiny_wmall_plugin` VALUES (40, 'huangou', 'biz', '超值换购', '../addons/we7_wmall/static/img/plugin/huangou.png', '', '超值换购', 1, 0, 1);

-- ----------------------------
-- Table structure for ims_tiny_wmall_plugincenter_grant_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_plugincenter_grant_log`;
CREATE TABLE `ims_tiny_wmall_plugincenter_grant_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT 0,
  `pluginname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pluginid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_id` int(10) UNSIGNED NULL DEFAULT 0,
  `month` int(10) NOT NULL DEFAULT 0,
  `starttime` int(10) NOT NULL DEFAULT 0,
  `endtime` int(10) NOT NULL DEFAULT 0,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'system',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_plugincenter_grant_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_plugincenter_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_plugincenter_order`;
CREATE TABLE `ims_tiny_wmall_plugincenter_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pluginid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pluginname` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `month` tinyint(10) NOT NULL,
  `data` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) NOT NULL DEFAULT 0,
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`username`) USING BTREE,
  INDEX `status`(`paytime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_plugincenter_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_plugincenter_package
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_plugincenter_package`;
CREATE TABLE `ims_tiny_wmall_plugincenter_package`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pluginid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pluginname` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sailed` int(10) UNSIGNED NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addtime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_plugincenter_package
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_plugincenter_plugin
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_plugincenter_plugin`;
CREATE TABLE `ims_tiny_wmall_plugincenter_plugin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pluginid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pluginname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sailed` int(10) UNSIGNED NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `plugintype` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addtime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `pluginid`(`pluginid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_plugincenter_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_plugincenter_slide
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_plugincenter_slide`;
CREATE TABLE `ims_tiny_wmall_plugincenter_slide`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_plugincenter_slide
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_printer
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_printer`;
CREATE TABLE `ims_tiny_wmall_printer`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'feie',
  `print_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `member_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '飞蛾打印机机器号',
  `key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `print_nums` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `qrcode_link` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `print_header` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `print_footer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `api_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `print_label` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_print_all` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `qrcode_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'custom',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_printer
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_printer_label
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_printer_label`;
CREATE TABLE `ims_tiny_wmall_printer_label`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_printer_label
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_reply`;
CREATE TABLE `ims_tiny_wmall_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `table_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `extra` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_report
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_report`;
CREATE TABLE `ims_tiny_wmall_report`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `acid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumbs` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_report
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_reserve
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_reserve`;
CREATE TABLE `ims_tiny_wmall_reserve`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `time` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_cid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 339 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_reserve
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_seckill_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_goods`;
CREATE TABLE `ims_tiny_wmall_seckill_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `oldprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total` int(10) NOT NULL DEFAULT 0,
  `sailed` int(10) UNSIGNED NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumbs` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click` int(10) UNSIGNED NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buy_note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL,
  `use_limit_day` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `falsejoinnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `falselooknum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `falsesharenum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `looknum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sharenum` int(10) UNSIGNED NULL DEFAULT 0,
  `total_update_type` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE,
  INDEX `displayorder`(`displayorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_seckill_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_seckill_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_goods_category`;
CREATE TABLE `ims_tiny_wmall_seckill_goods_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_seckill_goods_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_seckill_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_order`;
CREATE TABLE `ims_tiny_wmall_seckill_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_channel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wap',
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_num` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `out_trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `transaction_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refund_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `refund_out_no` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refund_apply_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refund_success_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refund_channel` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refund_account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_seckill_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_seckill_slide
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_slide`;
CREATE TABLE `ims_tiny_wmall_seckill_slide`  (
  `id` int(10) UNSIGNED NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `taskid` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `taskid`(`taskid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_seckill_slide
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_seckill_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_task`;
CREATE TABLE `ims_tiny_wmall_seckill_task`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `times` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_seckill_task
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_seckill_task_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_task_goods`;
CREATE TABLE `ims_tiny_wmall_seckill_task_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `task_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `room_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `discount_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `max_buy_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `discount_total` int(10) NOT NULL DEFAULT -1,
  `displayorder` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `task_id`(`task_id`) USING BTREE,
  INDEX `room_id`(`room_id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_seckill_task_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_seckill_task_time
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_task_time`;
CREATE TABLE `ims_tiny_wmall_seckill_task_time`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `taskid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `time` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 538 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_seckill_task_time
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_shareredpacket
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_shareredpacket`;
CREATE TABLE `ims_tiny_wmall_shareredpacket`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `share_redpacket_condition` decimal(10, 2) UNSIGNED NOT NULL,
  `share_redpacket_min` decimal(10, 2) UNSIGNED NOT NULL,
  `share_redpacket_max` decimal(10, 2) UNSIGNED NOT NULL,
  `share_redpacket_days_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `follow_redpacket_min` decimal(10, 2) UNSIGNED NOT NULL,
  `follow_redpacket_max` decimal(10, 2) UNSIGNED NOT NULL,
  `follow_redpacket_days_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `share` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agreement` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_shareredpacket
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_shareredpacket_invite_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_shareredpacket_invite_record`;
CREATE TABLE `ims_tiny_wmall_shareredpacket_invite_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `activity_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `share_uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `follow_uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `share_redpacket_condition` decimal(10, 2) UNSIGNED NOT NULL,
  `share_redpacket_discount` decimal(10, 2) UNSIGNED NOT NULL,
  `share_redpacket_days_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `follow_redpacket_condition` decimal(10, 2) UNSIGNED NOT NULL,
  `follow_redpacket_discount` decimal(10, 2) UNSIGNED NOT NULL,
  `follow_redpacket_days_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `activity_id`(`activity_id`) USING BTREE,
  INDEX `share_uid`(`share_uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_tiny_wmall_shareredpacket_invite_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_slide
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_slide`;
CREATE TABLE `ims_tiny_wmall_slide`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'homeTop',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wxapp_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 234 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_slide
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_spread_current_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_spread_current_log`;
CREATE TABLE `ims_tiny_wmall_spread_current_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spreadid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` decimal(10, 2) NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `spreadid`(`spreadid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_spread_current_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_spread_getcash_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_spread_getcash_log`;
CREATE TABLE `ims_tiny_wmall_spread_getcash_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spreadid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `get_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `take_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `final_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `channel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wechat',
  `account` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `channel_from` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'weixin',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `spreadid`(`spreadid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_spread_getcash_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_spread_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_spread_groups`;
CREATE TABLE `ims_tiny_wmall_spread_groups`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `commission1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `commission2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `group_condition` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `commission_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'ratio',
  `become_child_limit` tinyint(3) UNSIGNED NOT NULL,
  `valid_period` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_update_rules` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `takeout_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `paotui_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gohome_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_spread_groups
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_store`;
CREATE TABLE `ims_tiny_wmall_store`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_th` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语标题',
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `business_hours` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_in_business` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description_th` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '泰语内容',
  `send_price` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `send_price_thb` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `delivery_price_thb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `delivery_free_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_free_price_thb` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pack_price` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `pack_price_thb` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `delivery_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:商家配送,2:到店自提,3:两种都支持',
  `delivery_type_023wx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_type_mine` int(10) NOT NULL,
  `delivery_within_days` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_reserve_days` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `serve_radius` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `serve_fee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_area_th` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配送区域',
  `thumbs` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_th` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语地址',
  `location_x` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location_y` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sns` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notice` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告',
  `notice_th` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语公告',
  `tips` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tips_th` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语提示',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_th` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语内容',
  `payment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `invoice_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `token_status` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `remind_time_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `remind_reply` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remind_reply_th` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '泰语关注回复',
  `comment_reply` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_reply_th` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '泰语评论回复',
  `sailed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `score` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_order_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `discount_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `grant_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `bargain_price_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reserve_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `collect_coupon_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `grant_coupon_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `comment_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '评论审核.1:直接通过',
  `sms_use_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '短信使用条数',
  `wechat_qrcode` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custom_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtype` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:后台添加,2:申请入驻',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `template` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'index',
  `pc_notice_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `not_in_serve_radius` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `auto_handel_order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `auto_get_address` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `auto_notice_deliveryer` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `click` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_recommend` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_assign` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_reserve` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_meal` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `forward_mode` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `assign_mode` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `assign_qrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_mode` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `order_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单备注',
  `order_note_th` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '泰语订单备注',
  `delivery_fee_mode` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `delivery_times` varchar(7000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `forward_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qualification` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label` int(10) NOT NULL DEFAULT 0,
  `new_member_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_rest` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_stick` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_areas` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `push_token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_paybill` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `self_audit_comment` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `elemeShopId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `eleme_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `meituan_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meituanShopId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `openplateform_extra` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` tinyint(3) NOT NULL DEFAULT 1,
  `deltime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `remind_time_start` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `consume_per_person` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `consume_per_person_thb` int(10) NOT NULL DEFAULT 0,
  `waimai_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `haodian_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `haodian_cid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `haodian_child_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `haodian_starttime` int(10) UNSIGNED NOT NULL,
  `haodian_endtime` int(10) UNSIGNED NOT NULL,
  `is_waimai` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_haodian` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `haodian_score` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `haodian_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rest_can_order` tinyint(3) NOT NULL DEFAULT 0,
  `cate_parentid1` int(10) UNSIGNED NOT NULL,
  `cate_childid1` int(10) UNSIGNED NOT NULL,
  `cate_parentid2` int(10) UNSIGNED NOT NULL,
  `cate_childid2` int(10) UNSIGNED NOT NULL,
  `delivery_areas1` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auto_print_order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `menu` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `is_recommend`(`is_recommend`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `label`(`label`) USING BTREE,
  INDEX `displayorder`(`displayorder`) USING BTREE,
  INDEX `is_stick`(`is_stick`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `elemeShopId`(`elemeShopId`) USING BTREE,
  INDEX `meituanShopId`(`meituanShopId`) USING BTREE,
  INDEX `uniacid_id`(`uniacid`, `id`) USING BTREE,
  INDEX `uniacid_agentid_status_is_waimai`(`uniacid`, `agentid`, `status`, `is_waimai`) USING BTREE,
  INDEX `uniacid_agentid_status_is_haodian`(`uniacid`, `agentid`, `status`, `is_haodian`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1312 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_store
-- ----------------------------
INSERT INTO `ims_tiny_wmall_store` VALUES (1308, 1, '||', '1', '', '', '1', 'a:0:{}', 1, '', NULL, 0, 0, '0', '0', 0, 0, 0.00, 0.00, 0, 1, 0, 0, 0, 0, '0.00', '', '', '', '', '', '', '', '', 1, 0, '', '', '', '', '', '1', '', '', 0, 0, 10, '', NULL, '', NULL, 0, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', 1, 1618919341, 'index', 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, '', 1, '', 1, '', '', 1, 'a:0:{}', '', '', 0, 0, 1, 0, '', 'jzG9mm4PCAroU7PPcwcuCzo4zoU2uZm9', 0, 0, 0, '', '0', 0, 0, '', '0', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, '0', '', 0, 0, 0, 0, 0, '', 0, '');
INSERT INTO `ims_tiny_wmall_store` VALUES (1309, 1, '||', '测试门店', '', 'images/1/2023/03/YxHP1XP989W9NX7j18TIN10mQx8771.jpg', '123456', 'a:0:{}', 1, '<p>门店特色</p>', NULL, 0, 0, '0', '0', 0, 0, 0.00, 0.00, 0, 1, 0, 0, 0, 0, '0', 'a:2:{s:4:\"type\";i:1;s:3:\"fee\";s:0:\"\";}', '', '', '', '详细地址', '', '32.222', '123.233', 1, 0, 'a:2:{s:2:\"qq\";s:0:\"\";s:6:\"weixin\";s:0:\"\";}', '', '', '', '', '门店描述', '', 'N;', 0, 0, 10, 'a:0:{}', NULL, 'N;', NULL, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'a:0:{}', 1, 1677850219, 'index', 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, '0', 1, '', 1, 'a:0:{}', '', 1, 'a:0:{}', '', 'a:4:{s:8:\"business\";a:1:{s:5:\"thumb\";s:0:\"\";}s:7:\"service\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more1\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more2\";a:1:{s:5:\"thumb\";s:0:\"\";}}', 0, 0, 1, 0, 'a:0:{}', 'pVC8DEO2rDRWVcCVBR8OOVdxvkfN7xRJ', 0, 0, 0, '', '0', 0, 0, 'a:8:{s:7:\"reserve\";a:2:{s:18:\"reserve_time_limit\";i:0;s:28:\"notice_clerk_before_delivery\";i:0;}s:2:\"cn\";a:2:{s:9:\"box_price\";s:9:\"餐盒费\";s:8:\"pack_fee\";s:9:\"包装费\";}s:10:\"order_form\";a:1:{s:10:\"person_num\";i:0;}s:5:\"eleme\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:7:\"meituan\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:4:\"dada\";a:3:{s:6:\"shopno\";s:0:\"\";s:6:\"status\";i:0;s:8:\"citycode\";s:0:\"\";}s:8:\"uupaotui\";a:4:{s:6:\"status\";i:0;s:5:\"appid\";N;s:6:\"appkey\";N;s:6:\"openid\";N;}s:14:\"service_titles\";a:0:{}}', '0', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, '0', '', 0, 0, 0, 0, 0, '', 0, '');
INSERT INTO `ims_tiny_wmall_store` VALUES (1310, 1, '||', '测试门店2', '', 'images/1/2023/03/YxHP1XP989W9NX7j18TIN10mQx8771.jpg', 'ssss', 'a:2:{i:0;a:2:{s:1:\"s\";s:5:\"00:00\";s:1:\"e\";s:5:\"23:55\";}i:1;a:2:{s:1:\"s\";s:5:\"23:55\";s:1:\"e\";s:5:\"03:30\";}}', 1, '', NULL, 0, 0, '0', '0', 0, 0, 0.00, 0.00, 0, 1, 0, 0, 0, 0, '0', 'a:2:{s:4:\"type\";i:1;s:3:\"fee\";s:0:\"\";}', '', '', '', '详细地址详细地址', '', '24.879947', '118.682447', 1, 0, 'a:2:{s:2:\"qq\";s:0:\"\";s:6:\"weixin\";s:0:\"\";}', '门店公告', '', '进入商品列表页提示', '', '门店描述', '', 'a:1:{i:0;s:6:\"credit\";}', 0, 0, 10, 'a:0:{}', NULL, 'N;', NULL, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'a:0:{}', 1, 1677851395, 'index', 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, '0', 1, '', 1, 'a:0:{}', '', 1, 'a:0:{}', '', 'a:4:{s:8:\"business\";a:1:{s:5:\"thumb\";s:0:\"\";}s:7:\"service\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more1\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more2\";a:1:{s:5:\"thumb\";s:0:\"\";}}', 0, 0, 0, 0, 'a:0:{}', 'a0NzZO4Pt8UUM6Pp4TTlTLoTPa3J04jo', 0, 1, 0, '', '0', 0, 0, 'a:8:{s:7:\"reserve\";a:2:{s:18:\"reserve_time_limit\";i:0;s:28:\"notice_clerk_before_delivery\";i:0;}s:2:\"cn\";a:2:{s:9:\"box_price\";s:9:\"餐盒费\";s:8:\"pack_fee\";s:9:\"包装费\";}s:10:\"order_form\";a:1:{s:10:\"person_num\";i:0;}s:5:\"eleme\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:7:\"meituan\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:4:\"dada\";a:3:{s:6:\"shopno\";s:0:\"\";s:6:\"status\";i:0;s:8:\"citycode\";s:0:\"\";}s:8:\"uupaotui\";a:4:{s:6:\"status\";i:0;s:5:\"appid\";N;s:6:\"appkey\";N;s:6:\"openid\";N;}s:14:\"service_titles\";a:0:{}}', '0', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, '0', '', 0, 0, 0, 0, 0, '', 0, '');
INSERT INTO `ims_tiny_wmall_store` VALUES (1311, 1, '||', '门店名称', '门店名称（泰语）', 'images/1/2023/03/KsjCSzfmfGsssacZ0eSMjcFFjRa0J5.jpg', '15888888888', 'a:2:{i:0;a:2:{s:1:\"s\";s:5:\"00:00\";s:1:\"e\";s:5:\"12:20\";}i:1;a:2:{s:1:\"s\";s:5:\"12:00\";s:1:\"e\";s:5:\"00:00\";}}', 1, '<p>门店特色</p>', '<p>门店特色泰语</p>', 0, 0, '0', '0', 0, 0, 0.00, 0.00, 0, 1, 0, 0, 0, 0, '0', 'a:2:{s:4:\"type\";i:1;s:3:\"fee\";s:0:\"\";}', '配送区域', '配送区域（泰语）', 'a:1:{i:0;a:2:{s:5:\"image\";s:82:\"https://takeaway.me/attachment/images/1/2023/03/Hyz3GT9BUHV88Z93toBRGVpvOHz8O8.jpg\";s:3:\"url\";s:0:\"\";}}', '详细地址', '详细地址（泰语）', '24.879947', '118.682447', 1, 3, 'a:2:{s:2:\"qq\";s:8:\"QQ123456\";s:6:\"weixin\";s:12:\"wechat123456\";}', '公告', '公告（泰语）', '进入商品列表页提示', '进入商品列表页提示（泰语）', '门店描述', '门店描述（泰语）', 'a:2:{i:0;s:6:\"credit\";i:1;s:8:\"delivery\";}', 0, 0, 10, 'a:1:{i:0;s:21:\"自定义催单回复\";}', 'a:2:{i:0;s:33:\"自定义催单回复（泰语）\";i:1;s:34:\"自定义催单回复2（泰语）\";}', 'a:1:{i:0;s:21:\"自定义评价回复\";}', 'a:2:{i:0;s:33:\"自定义评价回复（泰语）\";i:1;s:34:\"自定义评价回复2（泰语）\";}', 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'a:1:{i:0;a:4:{s:5:\"title\";s:12:\"链接文字\";s:8:\"title_th\";s:24:\"链接文字（泰语）\";s:3:\"url\";s:1:\"C\";s:10:\"wxapp_link\";s:1:\"D\";}}', 1, 1678111525, 'index', 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, '0', 1, '', 1, 'a:1:{i:0;s:7:\"备注1\";}', 'a:1:{i:0;s:15:\"备注1(泰语)\";}', 1, 'a:0:{}', '', 'a:4:{s:8:\"business\";a:1:{s:5:\"thumb\";s:0:\"\";}s:7:\"service\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more1\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more2\";a:1:{s:5:\"thumb\";s:0:\"\";}}', 0, 0, 0, 0, 'a:0:{}', 'b256064DW61jrMHzYryr005Mv52145RJ', 0, 1, 0, '', '0', 0, 0, 'a:10:{s:7:\"reserve\";a:2:{s:18:\"reserve_time_limit\";i:0;s:28:\"notice_clerk_before_delivery\";i:0;}s:2:\"cn\";a:2:{s:9:\"box_price\";s:12:\"餐盒费名\";s:8:\"pack_fee\";s:12:\"包装费名\";}s:10:\"order_form\";a:1:{s:10:\"person_num\";i:0;}s:5:\"eleme\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:7:\"meituan\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:4:\"dada\";a:3:{s:6:\"shopno\";s:0:\"\";s:6:\"status\";i:0;s:8:\"citycode\";s:0:\"\";}s:8:\"uupaotui\";a:4:{s:6:\"status\";i:0;s:5:\"appid\";N;s:6:\"appkey\";N;s:6:\"openid\";N;}s:14:\"service_titles\";a:5:{s:7:\"takeout\";s:6:\"外卖\";s:7:\"tangshi\";s:12:\"店内点餐\";s:6:\"assign\";s:6:\"排号\";s:7:\"reserve\";s:6:\"预定\";s:7:\"paybill\";s:9:\"当面付\";}s:17:\"service_titles_th\";a:5:{s:7:\"takeout\";s:18:\"外卖（泰语）\";s:7:\"tangshi\";s:24:\"店内点餐（泰语）\";s:6:\"assign\";s:18:\"排号（泰语）\";s:7:\"reserve\";s:18:\"预定（泰语）\";s:7:\"paybill\";s:21:\"当面付（泰语）\";}s:5:\"cn_th\";a:2:{s:9:\"box_price\";s:17:\"餐盒费(泰语)\";s:8:\"pack_fee\";s:21:\"包装费（泰语）\";}}', '0', '', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, '0', '', 0, 0, 0, 0, 0, '', 0, '');

-- ----------------------------
-- Table structure for ims_tiny_wmall_store_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_store_account`;
CREATE TABLE `ims_tiny_wmall_store_account`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(10, 2) NOT NULL,
  `fee_limit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fee_rate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `fee_min` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fee_max` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wechat` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_takeout` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_instore` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fee_paybill` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_eleme` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_meituan` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_selfDelivery` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_goods` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_period` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `deposit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fee_gohome` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bank` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alipay` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1379 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_store_account
-- ----------------------------
INSERT INTO `ims_tiny_wmall_store_account` VALUES (1375, 1, 1308, 0.00, 0, '', 0, 0, '', 'N;', 'N;', 0, 'N;', '', '', 'N;', '', 0, 0, '', '', '');
INSERT INTO `ims_tiny_wmall_store_account` VALUES (1376, 1, 1309, 0.00, 0, '', 0, 0, '', 'N;', 'N;', 0, 'N;', '', '', 'N;', '', 0, 0, '', '', '');
INSERT INTO `ims_tiny_wmall_store_account` VALUES (1377, 1, 1310, 0.00, 0, '', 0, 0, '', 'N;', 'N;', 0, 'N;', '', '', 'N;', '', 0, 0, '', '', '');
INSERT INTO `ims_tiny_wmall_store_account` VALUES (1378, 1, 1311, 0.00, 0, '', 0, 0, '', 'N;', 'N;', 0, 'N;', '', '', 'N;', '', 0, 0, '', '', '');

-- ----------------------------
-- Table structure for ims_tiny_wmall_store_activity
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_store_activity`;
CREATE TABLE `ims_tiny_wmall_store_activity`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `starttime`(`starttime`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE,
  INDEX `uniacid_agentid`(`uniacid`, `agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 282 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_store_activity
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_store_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_store_category`;
CREATE TABLE `ims_tiny_wmall_store_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slide_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slide` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nav_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `nav` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wxapp_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 518 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_store_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_store_clerk
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_store_clerk`;
CREATE TABLE `ims_tiny_wmall_store_clerk`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `clerk_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime|146|errander_deliveryerApp|9.4.1|20171121164734` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `extra` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `clerk_id`(`clerk_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 477 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_store_clerk
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_store_current_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_store_current_log`;
CREATE TABLE `ims_tiny_wmall_store_current_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:订单入账, 2: 申请提现',
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` decimal(10, 2) NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hash` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hash`(`hash`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 729 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_store_current_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_store_deliveryer
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_store_deliveryer`;
CREATE TABLE `ims_tiny_wmall_store_deliveryer`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deliveryer_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `work_status` tinyint(3) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_tiny_wmall_store_deliveryer
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_store_favorite
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_store_favorite`;
CREATE TABLE `ims_tiny_wmall_store_favorite`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid_sid`(`uid`, `sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 482 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_tiny_wmall_store_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_store_getcash_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_store_getcash_log`;
CREATE TABLE `ims_tiny_wmall_store_getcash_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `get_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `take_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `final_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `account` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT '1:申请成功,2:申请中',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `channel` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'weixin',
  `toaccount_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_store_getcash_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_store_members
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_store_members`;
CREATE TABLE `ims_tiny_wmall_store_members`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_order_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_order_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `success_num` int(10) UNSIGNED NULL DEFAULT 0,
  `success_price` decimal(10, 2) NOT NULL,
  `cancel_num` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cancel_price` decimal(10, 2) NOT NULL,
  `is_sys` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `success_first_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `success_last_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cancel_first_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cancel_last_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `first_order_time`(`success_first_time`) USING BTREE,
  INDEX `last_order_time`(`success_last_time`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1643 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_store_members
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_store_page
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_store_page`;
CREATE TABLE `ims_tiny_wmall_store_page`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_store_page
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_storebd_current_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_storebd_current_log`;
CREATE TABLE `ims_tiny_wmall_storebd_current_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bd_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee` decimal(10, 2) NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uniacid_bdid_tradetype`(`uniacid`, `bd_id`, `trade_type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_storebd_current_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_storebd_getcash_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_storebd_getcash_log`;
CREATE TABLE `ims_tiny_wmall_storebd_getcash_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bd_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trade_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `channel` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'weixin',
  `get_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `take_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `final_fee` decimal(10, 2) UNSIGNED NOT NULL,
  `account` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_bd_id`(`uniacid`, `bd_id`) USING BTREE,
  INDEX `uniacid_status`(`uniacid`, `status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_storebd_getcash_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_storebd_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_storebd_store`;
CREATE TABLE `ims_tiny_wmall_storebd_store`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bd_id` int(10) NOT NULL DEFAULT 0,
  `fee_takeout` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_instore` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_sid_bdid`(`uniacid`, `sid`, `bd_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_storebd_store
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_storebd_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_storebd_user`;
CREATE TABLE `ims_tiny_wmall_storebd_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid_wxapp` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `credit2` decimal(10, 2) UNSIGNED NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `openid_wxapp`(`openid_wxapp`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_storebd_user
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_stripe
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_stripe`;
CREATE TABLE `ims_tiny_wmall_stripe`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL DEFAULT 0,
  `stripe_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `acid`(`acid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_stripe
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_supercoupon_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_supercoupon_coupon`;
CREATE TABLE `ims_tiny_wmall_supercoupon_coupon`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_supercoupon_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_supercoupon_member_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_supercoupon_member_group`;
CREATE TABLE `ims_tiny_wmall_supercoupon_member_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_condition` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_system` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_supercoupon_member_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_superredpacket
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_superredpacket`;
CREATE TABLE `ims_tiny_wmall_superredpacket`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grant_object` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `condition` decimal(10, 2) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_superredpacket
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_superredpacket_grant
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_superredpacket_grant`;
CREATE TABLE `ims_tiny_wmall_superredpacket_grant`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_id` int(10) NOT NULL DEFAULT 0,
  `activity_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `packet_dosage` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `packet_total` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_tiny_wmall_superredpacket_grant
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_superredpacket_meal_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_superredpacket_meal_order`;
CREATE TABLE `ims_tiny_wmall_superredpacket_meal_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `meal_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'mealRedpacket',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_superredpacket_meal_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_superredpacket_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_superredpacket_share`;
CREATE TABLE `ims_tiny_wmall_superredpacket_share`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT 0,
  `activity_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discount` decimal(10, 2) UNSIGNED NOT NULL,
  `condition` decimal(10, 2) UNSIGNED NOT NULL,
  `grant_days_effect` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `use_days_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 3,
  `times_limit` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_limit` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nums` int(10) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_superredpacket_share
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_svip_code
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_svip_code`;
CREATE TABLE `ims_tiny_wmall_svip_code`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `days` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `exchangetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_code`(`uniacid`, `code`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_svip_code
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_svip_meal
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_svip_meal`;
CREATE TABLE `ims_tiny_wmall_svip_meal`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `days` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10, 2) UNSIGNED NOT NULL,
  `oldprice` decimal(10, 2) UNSIGNED NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_svip_meal
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_svip_meal_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_svip_meal_order`;
CREATE TABLE `ims_tiny_wmall_svip_meal_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `acid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordersn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meal_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_channel` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wechat',
  `data` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_uid`(`uniacid`, `uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_svip_meal_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_svip_redpacket
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_svip_redpacket`;
CREATE TABLE `ims_tiny_wmall_svip_redpacket`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `discount` decimal(10, 2) UNSIGNED NOT NULL,
  `condition` decimal(10, 2) UNSIGNED NOT NULL,
  `use_days_limit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(10) UNSIGNED NOT NULL,
  `can_exchange` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `exchange_cost` decimal(10, 2) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `starttime`(`starttime`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_svip_redpacket
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_svip_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_svip_task`;
CREATE TABLE `ims_tiny_wmall_svip_task`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`uniacid`, `status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_svip_task
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_svip_task_records
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_svip_task_records`;
CREATE TABLE `ims_tiny_wmall_svip_task_records`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `task_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `task_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `overtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_uid`(`uniacid`, `task_type`, `uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_svip_task_records
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_system_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_system_log`;
CREATE TABLE `ims_tiny_wmall_system_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_system_log
-- ----------------------------
INSERT INTO `ims_tiny_wmall_system_log` VALUES (1, 1, 'alidayuSms', '阿里大鱼短信通知验证码', 'a:1:{s:4:\"code\";s:6:\"863676\";}', 's:30:\"平台没有设置短信参数\";', 1677916538);

-- ----------------------------
-- Table structure for ims_tiny_wmall_tables
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_tables`;
CREATE TABLE `ims_tiny_wmall_tables`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guest_num` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `scan_num` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `qrcode` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `wxapp_version` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cart_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_sid`(`uniacid`, `sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 186 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_tables
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_tables_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_tables_category`;
CREATE TABLE `ims_tiny_wmall_tables_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `limit_price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reservation_price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 160 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_tables_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_tables_scan
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_tables_scan`;
CREATE TABLE `ims_tiny_wmall_tables_scan`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `table_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `table_id`(`table_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_tables_scan
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_text
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_text`;
CREATE TABLE `ims_tiny_wmall_text`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `agentid`(`agentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 256 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_text
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_tongcheng_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_tongcheng_category`;
CREATE TABLE `ims_tiny_wmall_tongcheng_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) UNSIGNED NOT NULL,
  `tags` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `config` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_hot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_agentid`(`uniacid`, `agentid`) USING BTREE,
  INDEX `uniacid_agentid_status`(`uniacid`, `agentid`, `status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_tongcheng_category
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_tongcheng_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_tongcheng_comment`;
CREATE TABLE `ims_tiny_wmall_tongcheng_comment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tid` int(10) UNSIGNED NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_tid`(`uniacid`, `tid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_tongcheng_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_tongcheng_information
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_tongcheng_information`;
CREATE TABLE `ims_tiny_wmall_tongcheng_information`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) NOT NULL,
  `nickname` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `childid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `thumbs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sid` int(10) NOT NULL,
  `is_stick` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `looknum` int(10) NOT NULL DEFAULT 0,
  `likenum` int(11) NOT NULL DEFAULT 0,
  `like_uid` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sharenum` int(11) NOT NULL DEFAULT 0,
  `share_title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL,
  `overtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edit_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `channel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'wechat',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_tongcheng_information
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_tongcheng_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_tongcheng_order`;
CREATE TABLE `ims_tiny_wmall_tongcheng_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10, 2) UNSIGNED NOT NULL,
  `stick_price` decimal(10, 2) UNSIGNED NOT NULL,
  `final_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `days` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordersn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_pay` tinyint(3) NOT NULL DEFAULT 0,
  `order_channel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `transaction_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `out_trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agent_final_fee` decimal(10, 2) NOT NULL,
  `agent_serve_fee` decimal(10, 2) NOT NULL,
  `agent_serve` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_type`(`uniacid`, `type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_tongcheng_order
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_tongcheng_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_tongcheng_reply`;
CREATE TABLE `ims_tiny_wmall_tongcheng_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cid` int(10) UNSIGNED NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `from_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `to_uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `to_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `to_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid_tid_cid`(`uniacid`, `tid`, `cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_tongcheng_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_wheel
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_wheel`;
CREATE TABLE `ims_tiny_wmall_wheel`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `starttime`(`starttime`) USING BTREE,
  INDEX `endtime`(`endtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_wheel
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_wheel_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_wheel_record`;
CREATE TABLE `ims_tiny_wmall_wheel_record`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `activity_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat_day` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `award` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `award_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handletime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `activity_id`(`activity_id`) USING BTREE,
  INDEX `stat_day`(`stat_day`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_wheel_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_wxapp_formid_log
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_wxapp_formid_log`;
CREATE TABLE `ims_tiny_wmall_wxapp_formid_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `appid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formid` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime_cn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `formid`(`uniacid`, `appid`, `openid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_wxapp_formid_log
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_wxapp_page
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_wxapp_page`;
CREATE TABLE `ims_tiny_wmall_wxapp_page`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isdefault` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `isdefault`(`isdefault`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_wxapp_page
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account`;
CREATE TABLE `ims_uni_account`  (
  `uniacid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_acid` int(10) UNSIGNED NOT NULL,
  `rank` int(10) NULL DEFAULT NULL,
  `title_initial` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_uni_account
-- ----------------------------
INSERT INTO `ims_uni_account` VALUES (1, -1, '微擎团队', '一个朝气蓬勃的团队', 1, NULL, 'W');

-- ----------------------------
-- Table structure for ims_uni_account_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_group`;
CREATE TABLE `ims_uni_account_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_uni_account_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account_menus
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_menus`;
CREATE TABLE `ims_uni_account_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `menuid` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` tinyint(3) UNSIGNED NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) UNSIGNED NOT NULL,
  `area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `isdeleted` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `menuid`(`menuid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_uni_account_menus
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account_modules
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_modules`;
CREATE TABLE `ims_uni_account_modules`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL,
  `settings` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shortcut` tinyint(1) UNSIGNED NOT NULL,
  `displayorder` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_module`(`module`) USING BTREE,
  INDEX `idx_uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_uni_account_modules
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_account_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_account_users`;
CREATE TABLE `ims_uni_account_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_memberid`(`uid`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_uni_account_users
-- ----------------------------

-- ----------------------------
-- Table structure for ims_uni_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_group`;
CREATE TABLE `ims_uni_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `templates` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_uni_group
-- ----------------------------
INSERT INTO `ims_uni_group` VALUES (1, 0, '体验套餐服务', 'a:5:{s:7:\"modules\";a:1:{i:0;s:9:\"we7_wmall\";}s:5:\"wxapp\";a:1:{i:0;s:9:\"we7_wmall\";}s:6:\"webapp\";a:1:{i:0;s:9:\"we7_wmall\";}s:5:\"xzapp\";a:1:{i:0;s:9:\"we7_wmall\";}s:8:\"phoneapp\";a:1:{i:0;s:9:\"we7_wmall\";}}', 'N;', 0, 0);

-- ----------------------------
-- Table structure for ims_uni_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_settings`;
CREATE TABLE `ims_uni_settings`  (
  `uniacid` int(10) UNSIGNED NOT NULL,
  `passport` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `oauth` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jsauth_acid` int(10) UNSIGNED NOT NULL,
  `uc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notify` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `creditnames` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `creditbehaviors` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `welcome` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_message` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stat` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_site` int(10) UNSIGNED NULL DEFAULT NULL,
  `sync` tinyint(3) UNSIGNED NOT NULL,
  `recharge` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tplnotice` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grouplevel` tinyint(3) UNSIGNED NOT NULL,
  `mcplugin` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exchange_enable` tinyint(3) UNSIGNED NOT NULL,
  `coupon_type` tinyint(3) UNSIGNED NOT NULL,
  `menuset` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `statistics` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bind_domain` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
  `reply_setting` tinyint(4) NOT NULL,
  `default_module` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attachment_limit` int(11) NULL DEFAULT NULL,
  `attachment_size` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uniacid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_uni_settings
-- ----------------------------
INSERT INTO `ims_uni_settings` VALUES (1, 'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}', 'a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}', 0, 'a:1:{s:6:\"status\";i:0;}', 'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}', 'a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', 'a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:10:\"pay_switch\";b:1;s:15:\"recharge_switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}', '', 1, 0, '', '', 0, '', 0, 0, '', '', '', 0, 0, '', NULL, NULL);

-- ----------------------------
-- Table structure for ims_uni_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `ims_uni_verifycode`;
CREATE TABLE `ims_uni_verifycode`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `receiver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verifycode` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total` tinyint(3) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_uni_verifycode
-- ----------------------------
INSERT INTO `ims_uni_verifycode` VALUES (1, 1, '15880260510', '863676', 1, 1677916538);

-- ----------------------------
-- Table structure for ims_userapi_cache
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_cache`;
CREATE TABLE `ims_userapi_cache`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastupdate` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_userapi_cache
-- ----------------------------

-- ----------------------------
-- Table structure for ims_userapi_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_userapi_reply`;
CREATE TABLE `ims_userapi_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apiurl` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cachetime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_userapi_reply
-- ----------------------------
INSERT INTO `ims_userapi_reply` VALUES (1, 1, '\"城市名+天气\", 如: \"北京天气\"', 'weather.php', '', '', 0);
INSERT INTO `ims_userapi_reply` VALUES (2, 2, '\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"', 'baike.php', '', '', 0);
INSERT INTO `ims_userapi_reply` VALUES (3, 3, '\"@查询内容(中文或英文)\"', 'translate.php', '', '', 0);
INSERT INTO `ims_userapi_reply` VALUES (4, 4, '\"日历\", \"万年历\", \"黄历\"或\"几号\"', 'calendar.php', '', '', 0);
INSERT INTO `ims_userapi_reply` VALUES (5, 5, '\"新闻\"', 'news.php', '', '', 0);
INSERT INTO `ims_userapi_reply` VALUES (6, 6, '\"快递+单号\", 如: \"申通1200041125\"', 'express.php', '', '', 0);

-- ----------------------------
-- Table structure for ims_users
-- ----------------------------
DROP TABLE IF EXISTS `ims_users`;
CREATE TABLE `ims_users`  (
  `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `groupid` int(10) UNSIGNED NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) UNSIGNED NOT NULL,
  `joinip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastvisit` int(10) UNSIGNED NOT NULL,
  `lastip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` int(10) UNSIGNED NOT NULL,
  `endtime` int(10) UNSIGNED NOT NULL,
  `register_type` tinyint(3) NOT NULL,
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `welcome_link` tinyint(4) NOT NULL,
  `is_bind` tinyint(1) NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_users
-- ----------------------------
INSERT INTO `ims_users` VALUES (1, 0, 1, 0, 'admin', 'f174c43df6e4ba30f0be05e0f7cd467895626fcc', '1afbd422', 0, 0, 1618919186, '', 1677848568, '127.0.0.1', '', 0, 0, 0, '', 0, 0);

-- ----------------------------
-- Table structure for ims_users_bind
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_bind`;
CREATE TABLE `ims_users_bind`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `bind_sign`(`bind_sign`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_users_bind
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_failed_login
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_failed_login`;
CREATE TABLE `ims_users_failed_login`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` tinyint(1) UNSIGNED NOT NULL,
  `lastupdate` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ip_username`(`ip`, `username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_users_failed_login
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_founder_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_founder_group`;
CREATE TABLE `ims_users_founder_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `package` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxaccount` int(10) UNSIGNED NOT NULL,
  `maxsubaccount` int(10) UNSIGNED NOT NULL,
  `timelimit` int(10) UNSIGNED NOT NULL,
  `maxwxapp` int(10) UNSIGNED NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_users_founder_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_group
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_group`;
CREATE TABLE `ims_users_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `package` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maxaccount` int(10) UNSIGNED NOT NULL,
  `maxsubaccount` int(10) UNSIGNED NOT NULL,
  `timelimit` int(10) UNSIGNED NOT NULL,
  `maxwxapp` int(10) UNSIGNED NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_users_group
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_invitation
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_invitation`;
CREATE TABLE `ims_users_invitation`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fromuid` int(10) UNSIGNED NOT NULL,
  `inviteuid` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_code`(`code`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_users_invitation
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_permission
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_permission`;
CREATE TABLE `ims_users_permission`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_users_permission
-- ----------------------------

-- ----------------------------
-- Table structure for ims_users_profile
-- ----------------------------
DROP TABLE IF EXISTS `ims_users_profile`;
CREATE TABLE `ims_users_profile`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fakeid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vip` tinyint(3) UNSIGNED NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) UNSIGNED NOT NULL,
  `birthmonth` tinyint(3) UNSIGNED NOT NULL,
  `birthday` tinyint(3) UNSIGNED NOT NULL,
  `constellation` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zodiac` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idcard` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `studentid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zipcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nationality` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resideprovince` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `residecity` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `residedist` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `graduateschool` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `education` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `occupation` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `revenue` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `affectivestatus` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lookingfor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bloodtype` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `height` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alipay` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `taobao` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bio` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `interest` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `workerid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_send_mobile_status` tinyint(3) NOT NULL,
  `send_expire_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_users_profile
-- ----------------------------

-- ----------------------------
-- Table structure for ims_video_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_video_reply`;
CREATE TABLE `ims_video_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_video_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_voice_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_voice_reply`;
CREATE TABLE `ims_voice_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mediaid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_voice_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wechat_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_attachment`;
CREATE TABLE `ims_wechat_attachment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `acid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `media_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `width` int(10) UNSIGNED NOT NULL,
  `height` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) UNSIGNED NOT NULL,
  `module_upload_dir` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `media_id`(`media_id`) USING BTREE,
  INDEX `acid`(`acid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_wechat_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wechat_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_wechat_news`;
CREATE TABLE `ims_wechat_news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NULL DEFAULT NULL,
  `attach_id` int(10) UNSIGNED NOT NULL,
  `thumb_media_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `digest` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_source_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_cover_pic` tinyint(3) UNSIGNED NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` int(2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `attach_id`(`attach_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_wechat_news
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wxapp_general_analysis
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_general_analysis`;
CREATE TABLE `ims_wxapp_general_analysis`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stay_time_session` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `visit_depth` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ref_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `ref_date`(`ref_date`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_wxapp_general_analysis
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wxapp_versions
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxapp_versions`;
CREATE TABLE `ims_wxapp_versions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL,
  `multiid` int(10) UNSIGNED NOT NULL,
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modules` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `quickmenu` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int(10) NOT NULL,
  `type` int(2) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `appjson` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_appjson` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `use_default` tinyint(1) NOT NULL,
  `redirect` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `connection` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_modules` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `version`(`version`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_wxapp_versions
-- ----------------------------

-- ----------------------------
-- Table structure for ims_wxcard_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_wxcard_reply`;
CREATE TABLE `ims_wxcard_reply`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cid` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `success` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `error` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_wxcard_reply
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
