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

 Date: 27/02/2023 14:02:37
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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_core_attachment
-- ----------------------------

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
INSERT INTO `ims_core_cache` VALUES ('we7:unisetting:1', 'a:29:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";N;s:15:\"attachment_size\";N;}');
INSERT INTO `ims_core_cache` VALUES ('we7:uniaccount:1', 'a:37:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:9:\"type_sign\";s:7:\"account\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:29:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";N;s:15:\"attachment_size\";N;}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:77:\"http://lalademo.hjout.zeroproject.cn/attachment/headimg_1.jpg?time=1618919298\";s:6:\"qrcode\";s:76:\"http://lalademo.hjout.zeroproject.cn/attachment/qrcode_1.jpg?time=1618919298\";s:9:\"type_name\";s:9:\"公众号\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}');
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
INSERT INTO `ims_core_cache` VALUES ('we7:stat_todaylock:1', 'a:1:{s:6:\"expire\";i:1676634869;}');
INSERT INTO `ims_core_cache` VALUES ('we7:unicount:1', 's:1:\"1\";');
INSERT INTO `ims_core_cache` VALUES ('checkupgrade:we7_wmall', 'a:1:{s:10:\"lastupdate\";i:1676627671;}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:1:1', 'a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:9:\"we7_wmall\";a:1:{s:4:\"name\";s:9:\"we7_wmall\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:1:task:lock:60', 'a:1:{s:9:\"starttime\";i:1676627671;}');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:1:task:lock:120', 'a:1:{s:9:\"starttime\";i:1676627671;}');
INSERT INTO `ims_core_cache` VALUES ('itime', 'i:0;');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:1:task:lock:300', 'a:1:{s:9:\"starttime\";i:1676627671;}');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:1:task:lock:3600', 'a:1:{s:9:\"starttime\";i:1676627671;}');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:1:task:lock:86400', 'a:1:{s:9:\"starttime\";i:1676627671;}');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:0:task:lock:7200', 'a:1:{s:9:\"starttime\";i:1676627671;}');
INSERT INTO `ims_core_cache` VALUES ('we7:uni_groups', 'a:1:{i:1;a:12:{s:2:\"id\";s:1:\"1\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:18:\"体验套餐服务\";s:7:\"modules\";a:1:{i:0;s:9:\"we7_wmall\";}s:9:\"templates\";a:0:{}s:7:\"uniacid\";s:1:\"0\";s:3:\"uid\";s:1:\"0\";s:6:\"aliapp\";a:0:{}s:5:\"xzapp\";a:0:{}s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:0:{}}}');
INSERT INTO `ims_core_cache` VALUES ('we7:unimodules:0:', 'a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:9:\"we7_wmall\";a:1:{s:4:\"name\";s:9:\"we7_wmall\";}}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:E2clF', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:T0d0b', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:jH9HW', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7_wmall:deliveryers:1:0', 'a:0:{}');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:aexkb', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:cqB3l', 'i:1;');
INSERT INTO `ims_core_cache` VALUES ('we7:last_account:UwfzG', 'i:1;');

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
INSERT INTO `ims_core_sessions` VALUES ('692c4af0b57db1d8d44ac6c039d9db8c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HY1F\";i:1622163097;}', 1622166697);
INSERT INTO `ims_core_sessions` VALUES ('9c167540f1b82387b51f27594e73a926', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XAfA\";i:1622163097;}', 1622166697);
INSERT INTO `ims_core_sessions` VALUES ('d7878c0add02031b3e94e9635ac03583', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jz88\";i:1622162977;}', 1622166577);
INSERT INTO `ims_core_sessions` VALUES ('209bdb0d47b37db55623ef515f5088f8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Iuvk\";i:1622162857;}', 1622166457);
INSERT INTO `ims_core_sessions` VALUES ('024617e685c370fc611f80897b2963d7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oTR7\";i:1622162737;}', 1622166337);
INSERT INTO `ims_core_sessions` VALUES ('7970f349be80e292da0e8c5fefd48da8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ka8A\";i:1622162737;}', 1622166337);
INSERT INTO `ims_core_sessions` VALUES ('b8798604709fe6b3e662577d8fad305b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"G7A8\";i:1622162617;}', 1622166217);
INSERT INTO `ims_core_sessions` VALUES ('426337a3b0987d7875f6af5f6b60c31b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UZp3\";i:1622162497;}', 1622166097);
INSERT INTO `ims_core_sessions` VALUES ('f3c59fae083154d895fcb3159c0fa916', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Im1M\";i:1622162377;}', 1622165977);
INSERT INTO `ims_core_sessions` VALUES ('731fa4f7a814212880b55f9bab939d76', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i9Z2\";i:1622162377;}', 1622165977);
INSERT INTO `ims_core_sessions` VALUES ('04c4ae6880d51c1e298721d944a8b651', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kLEi\";i:1622162257;}', 1622165857);
INSERT INTO `ims_core_sessions` VALUES ('b64677ce97c2f6e06cf3db10f67ca50d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"k2rH\";i:1622162137;}', 1622165737);
INSERT INTO `ims_core_sessions` VALUES ('9c2451b1b74f671167e7f28a9336fb86', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eLg1\";i:1622162017;}', 1622165617);
INSERT INTO `ims_core_sessions` VALUES ('0ccb340ad9da757b9ead3e2e926f708a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XxxQ\";i:1622162017;}', 1622165617);
INSERT INTO `ims_core_sessions` VALUES ('5940f67acf6b106906e15c071a794d25', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"e3F4\";i:1622161897;}', 1622165497);
INSERT INTO `ims_core_sessions` VALUES ('b6dec0691a2a07ac6a4d560a4b8ae8ef', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lfE9\";i:1622161777;}', 1622165377);
INSERT INTO `ims_core_sessions` VALUES ('5708c871b92139c452e9775f17b84c9f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fRI3\";i:1622161657;}', 1622165257);
INSERT INTO `ims_core_sessions` VALUES ('45ee28de7d054d4b809c0954ac599f45', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QKZj\";i:1622161657;}', 1622165257);
INSERT INTO `ims_core_sessions` VALUES ('c70ee3b40222d6adef3a3bed3e5f8c27', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IPRf\";i:1622161537;}', 1622165137);
INSERT INTO `ims_core_sessions` VALUES ('d0d3584aa8b1fde8d24ef5684be2c410', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xpqj\";i:1622161420;}', 1622165020);
INSERT INTO `ims_core_sessions` VALUES ('4d7e10aca9eff0f032423288d594b7e9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"h9zE\";i:1622161297;}', 1622164897);
INSERT INTO `ims_core_sessions` VALUES ('c9b063f5a202a4029c7353afa9004dab', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vERu\";i:1622161297;}', 1622164897);
INSERT INTO `ims_core_sessions` VALUES ('8d375075080b2ec3280bd9f718dcdf25', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DP8X\";i:1622161177;}', 1622164777);
INSERT INTO `ims_core_sessions` VALUES ('7d39a3ac99e9ea9ba2c3248ba5b42970', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wvGz\";i:1622161057;}', 1622164657);
INSERT INTO `ims_core_sessions` VALUES ('2521664469588c9b4739e0e3cde541d1', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DpQr\";i:1622160937;}', 1622164537);
INSERT INTO `ims_core_sessions` VALUES ('bbd15e8a7f2d2d0be38f726a8126c7a6', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EOWE\";i:1622160937;}', 1622164537);
INSERT INTO `ims_core_sessions` VALUES ('045e4b9393fb0bd250e9f7832f195847', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eC1v\";i:1622160817;}', 1622164417);
INSERT INTO `ims_core_sessions` VALUES ('36f0611224fb06c6fda61da4f1aca974', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hmnP\";i:1622160697;}', 1622164297);
INSERT INTO `ims_core_sessions` VALUES ('968eac4b4ef2b357d3200acd7b0f1bca', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oYcn\";i:1622160577;}', 1622164177);
INSERT INTO `ims_core_sessions` VALUES ('8600967c7d76da2d6571c16d826da5f7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"njpl\";i:1622160577;}', 1622164177);
INSERT INTO `ims_core_sessions` VALUES ('5ea203b34a4495384e61b23ffa71d433', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jrww\";i:1622160457;}', 1622164057);
INSERT INTO `ims_core_sessions` VALUES ('aca73f4986cc06b0d7f7c4c096cc6ec7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"PEa4\";i:1622160337;}', 1622163937);
INSERT INTO `ims_core_sessions` VALUES ('77ca481e66e225efeec41c02af499117', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eGev\";i:1622160217;}', 1622163817);
INSERT INTO `ims_core_sessions` VALUES ('2d64d9273c837843fabcdb1cf7633506', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xfEn\";i:1622160217;}', 1622163817);
INSERT INTO `ims_core_sessions` VALUES ('26c01dedf4728bf0644ff5a004508458', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aMXA\";i:1622160097;}', 1622163697);
INSERT INTO `ims_core_sessions` VALUES ('4788d74ecc45bedf1e3f39dd051fa336', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rNTt\";i:1622159977;}', 1622163577);
INSERT INTO `ims_core_sessions` VALUES ('26921e7cc4cad0823c1c33186e3c2c88', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uFBf\";i:1622159857;}', 1622163457);
INSERT INTO `ims_core_sessions` VALUES ('7947df9cd412f6aa04912d2e96619745', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KFME\";i:1622159857;}', 1622163457);
INSERT INTO `ims_core_sessions` VALUES ('d7d62d3de84f6bc321c7b1a9ad7920c4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ncx9\";i:1622159737;}', 1622163337);
INSERT INTO `ims_core_sessions` VALUES ('9f375029e153d8bfeab68e37133eb664', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Inrv\";i:1622159617;}', 1622163217);
INSERT INTO `ims_core_sessions` VALUES ('c5d02e3217626233206a3e8f114f2162', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xJlV\";i:1622159497;}', 1622163097);
INSERT INTO `ims_core_sessions` VALUES ('364b64258e4481dd39a0a64cadd71001', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TcXw\";i:1622159497;}', 1622163097);
INSERT INTO `ims_core_sessions` VALUES ('bb9af70997eb34ca000f64f87db15902', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RDsC\";i:1622159377;}', 1622162977);
INSERT INTO `ims_core_sessions` VALUES ('62569f8df095242cc1407e00ee24056f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Sn6w\";i:1622159257;}', 1622162857);
INSERT INTO `ims_core_sessions` VALUES ('efee3a154bc65996be853eca4b78f0f4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mO8n\";i:1622159137;}', 1622162737);
INSERT INTO `ims_core_sessions` VALUES ('03f5d1b3784f06b88a5751888cbfbf3e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"A6rM\";i:1622159137;}', 1622162737);
INSERT INTO `ims_core_sessions` VALUES ('0beb8f22a35b22c3fdf2f9072931ba4a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FZnz\";i:1622159017;}', 1622162617);
INSERT INTO `ims_core_sessions` VALUES ('c74d115c8ab9df58bc51926123b771f4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lu8B\";i:1622158897;}', 1622162497);
INSERT INTO `ims_core_sessions` VALUES ('14947b999307efc4bac77d73e17d2773', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YI8H\";i:1622158777;}', 1622162377);
INSERT INTO `ims_core_sessions` VALUES ('00d1d8fe13b03834b946482e36e6c1f6', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"G17i\";i:1622158777;}', 1622162377);
INSERT INTO `ims_core_sessions` VALUES ('b61aa5d1659b6468dbf75e148cd1ced4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RdWi\";i:1622158657;}', 1622162257);
INSERT INTO `ims_core_sessions` VALUES ('becd3937e2b6c7307e3b8a40f0fe1f6d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yhe2\";i:1622158537;}', 1622162137);
INSERT INTO `ims_core_sessions` VALUES ('7b34ed49a68e2ec4fe9aed7e2b918a02', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CNFT\";i:1622158417;}', 1622162017);
INSERT INTO `ims_core_sessions` VALUES ('42e7908a52cdc1d58dca8c2ffb45b88c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i2Su\";i:1622158417;}', 1622162017);
INSERT INTO `ims_core_sessions` VALUES ('cdf32df45a4143a9af8156778aa0c871', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HcF4\";i:1622158297;}', 1622161897);
INSERT INTO `ims_core_sessions` VALUES ('9703b48aa214a1ddea008142c7db2b99', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qPPm\";i:1622158177;}', 1622161777);
INSERT INTO `ims_core_sessions` VALUES ('782761d37669563d692fe1a700601ff1', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hMsA\";i:1622158057;}', 1622161657);
INSERT INTO `ims_core_sessions` VALUES ('48af7686519a64b8d7e476b6dce3bb98', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CCul\";i:1622158057;}', 1622161657);
INSERT INTO `ims_core_sessions` VALUES ('d99180f0ab93dc153308a5a2be68bde4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZOxa\";i:1622157937;}', 1622161537);
INSERT INTO `ims_core_sessions` VALUES ('4490f50a1f84cf7d13eb2214ef52e73f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wom6\";i:1622157817;}', 1622161417);
INSERT INTO `ims_core_sessions` VALUES ('76f1509f0968fcda96baa3ffdcacecad', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aaA4\";i:1622157697;}', 1622161297);
INSERT INTO `ims_core_sessions` VALUES ('c9c72b5b581fb5b693c5a6b5ccd662cc', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"c717\";i:1622157697;}', 1622161297);
INSERT INTO `ims_core_sessions` VALUES ('a46bf73629dda67b70dadb652af79bc3', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mR7C\";i:1622157577;}', 1622161177);
INSERT INTO `ims_core_sessions` VALUES ('6db94e4eb7746dfb718f29aeb32004ed', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Z2Lg\";i:1622157457;}', 1622161057);
INSERT INTO `ims_core_sessions` VALUES ('b64b4ae3d195beb112bf819c89458f28', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dNnV\";i:1622157337;}', 1622160937);
INSERT INTO `ims_core_sessions` VALUES ('91a31a169c4218e8908a9098a4c17c13', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hokI\";i:1622157337;}', 1622160937);
INSERT INTO `ims_core_sessions` VALUES ('c43016b76ff7abbbbc989cb66889d071', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gv7U\";i:1622157217;}', 1622160817);
INSERT INTO `ims_core_sessions` VALUES ('2eda8b3a5c3d58cb656b90a453709c32', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cPwZ\";i:1622157097;}', 1622160697);
INSERT INTO `ims_core_sessions` VALUES ('e7476f9828ffe15134009f5e5b49e957', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MKnV\";i:1622156977;}', 1622160577);
INSERT INTO `ims_core_sessions` VALUES ('ab1d943c1bec8dc5b0290f29d2680d15', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"m7Ta\";i:1622156977;}', 1622160577);
INSERT INTO `ims_core_sessions` VALUES ('e9105074d566604c38dde3d4a8df8d63', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tm4x\";i:1622156857;}', 1622160457);
INSERT INTO `ims_core_sessions` VALUES ('bbd88bb788e53c98602c478a1767e9e7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sH3F\";i:1622156737;}', 1622160337);
INSERT INTO `ims_core_sessions` VALUES ('32808f07220c0ee7830032502085a37b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dwK0\";i:1622156617;}', 1622160217);
INSERT INTO `ims_core_sessions` VALUES ('e6af4c37b0b11cc19efde914be237305', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uRu5\";i:1622156617;}', 1622160217);
INSERT INTO `ims_core_sessions` VALUES ('aa83d696ce7d6163eeb2b7fcdee413da', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JkOP\";i:1622156497;}', 1622160097);
INSERT INTO `ims_core_sessions` VALUES ('b84af955dccfd1a7a766e75a35b823df', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BX1K\";i:1622156377;}', 1622159977);
INSERT INTO `ims_core_sessions` VALUES ('ee734cc6559b8e7ab403631d35c36136', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eB0F\";i:1622156257;}', 1622159857);
INSERT INTO `ims_core_sessions` VALUES ('c48c2589de495afea7cfdf35ccd6a0d4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qjAX\";i:1622156257;}', 1622159857);
INSERT INTO `ims_core_sessions` VALUES ('d173cf0036e4557ff72aab265ee44df0', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XywW\";i:1622156137;}', 1622159737);
INSERT INTO `ims_core_sessions` VALUES ('a9ceb68d140f87d8590ddd678f7f6bf9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Uf4K\";i:1622156017;}', 1622159617);
INSERT INTO `ims_core_sessions` VALUES ('c6148edf64aab66a35dae48e32b7f8d3', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oHUI\";i:1622155897;}', 1622159497);
INSERT INTO `ims_core_sessions` VALUES ('3562989d2b7d5de10a91ac3a044557bc', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J4NH\";i:1622155897;}', 1622159497);
INSERT INTO `ims_core_sessions` VALUES ('6c637f89ade643077c538b836a9e0b3f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OfiF\";i:1622155777;}', 1622159377);
INSERT INTO `ims_core_sessions` VALUES ('d105f9c6b4a1b68dc7c4400e1bc8361e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XgG3\";i:1622155657;}', 1622159257);
INSERT INTO `ims_core_sessions` VALUES ('b6cd0592efc3080e365f2ae2f0e82238', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UsTn\";i:1622155537;}', 1622159137);
INSERT INTO `ims_core_sessions` VALUES ('8d0ba8e31e7e60fec420930a5935ea1c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BNbd\";i:1622155537;}', 1622159137);
INSERT INTO `ims_core_sessions` VALUES ('a0b1b4872aa2146e3e77e120aabf2d8a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"x7Y0\";i:1622155417;}', 1622159017);
INSERT INTO `ims_core_sessions` VALUES ('641d9fbab0f7f3258c6aa992aa930ea3', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Lzx2\";i:1622155297;}', 1622158897);
INSERT INTO `ims_core_sessions` VALUES ('467a6a9a7fd2a102179c59d854cc02eb', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"So4o\";i:1622155177;}', 1622158777);
INSERT INTO `ims_core_sessions` VALUES ('accb7033385f4b08a2974678a0c05c8b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u4T1\";i:1622155177;}', 1622158777);
INSERT INTO `ims_core_sessions` VALUES ('5b539de09810cbce6b3fe80cea4ec992', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aO6o\";i:1622155057;}', 1622158657);
INSERT INTO `ims_core_sessions` VALUES ('89cf8564f0183421d3838e1d032d012e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z078\";i:1622154937;}', 1622158537);
INSERT INTO `ims_core_sessions` VALUES ('ffcfe6827ad10d2ebc8a6e7aab7aeb44', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EcZO\";i:1622154817;}', 1622158417);
INSERT INTO `ims_core_sessions` VALUES ('48aeba740b278be75afa1b84591358bb', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VK91\";i:1622154817;}', 1622158417);
INSERT INTO `ims_core_sessions` VALUES ('e19f4bf0158af7048f723c7bd3983528', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lzz4\";i:1622154697;}', 1622158297);
INSERT INTO `ims_core_sessions` VALUES ('7f836ae619e010707f01f3ca7a84234a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xCc7\";i:1622154577;}', 1622158177);
INSERT INTO `ims_core_sessions` VALUES ('edfe3e16edc4776b0dc368282b75683f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KZln\";i:1622154457;}', 1622158057);
INSERT INTO `ims_core_sessions` VALUES ('964bd86a1fbeaaf0ad87d3361718b11a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QuJJ\";i:1622154457;}', 1622158057);
INSERT INTO `ims_core_sessions` VALUES ('fe16921b5be028f138eb905e36e96d68', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D88d\";i:1622154337;}', 1622157937);
INSERT INTO `ims_core_sessions` VALUES ('4993f1060f0380547e2d98d97a150cce', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QdX1\";i:1622154217;}', 1622157817);
INSERT INTO `ims_core_sessions` VALUES ('0fd8637e47a83e6a14dcae18d7d149da', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"o8z8\";i:1622154097;}', 1622157697);
INSERT INTO `ims_core_sessions` VALUES ('ca2499f2d679753969cecb1cf965160c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ufI3\";i:1622154097;}', 1622157697);
INSERT INTO `ims_core_sessions` VALUES ('61216e8b8c0458690c77ad581f4da5ad', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HMmn\";i:1622153977;}', 1622157577);
INSERT INTO `ims_core_sessions` VALUES ('c9e4b5ac1e8035a605e2d6871aff4972', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VVDT\";i:1622153857;}', 1622157457);
INSERT INTO `ims_core_sessions` VALUES ('01bec70fc7196aabd6a77932c5edc334', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Fkj3\";i:1622153737;}', 1622157337);
INSERT INTO `ims_core_sessions` VALUES ('6a438eb2bb887027a9bccc409aab2407', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AY26\";i:1622153737;}', 1622157337);
INSERT INTO `ims_core_sessions` VALUES ('2733a840d467a4d3563be5a69c1cc0aa', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u94G\";i:1622153617;}', 1622157217);
INSERT INTO `ims_core_sessions` VALUES ('fcf7c5fcc8e2cc1470891503c0752b89', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"slyk\";i:1622153497;}', 1622157097);
INSERT INTO `ims_core_sessions` VALUES ('94294c835c61837e344be7764745ddf5', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"t02a\";i:1622153377;}', 1622156977);
INSERT INTO `ims_core_sessions` VALUES ('5c3602acf38d280da500b205c44ca492', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hboq\";i:1622153377;}', 1622156977);
INSERT INTO `ims_core_sessions` VALUES ('c5f3d55d82fcc5ad10c953ae45586fe2', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BHZ8\";i:1622153257;}', 1622156857);
INSERT INTO `ims_core_sessions` VALUES ('68481fa7ceb787be2a27448de84b8a46', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"huGt\";i:1622153137;}', 1622156737);
INSERT INTO `ims_core_sessions` VALUES ('a12e64bed42631187cdcd35dcd6f8d55', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CY2y\";i:1622153017;}', 1622156617);
INSERT INTO `ims_core_sessions` VALUES ('6035226eee88a9b35ec2feb3bec938c1', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Iuuk\";i:1622153017;}', 1622156617);
INSERT INTO `ims_core_sessions` VALUES ('b718373d5f9a88ac611dfe526af85077', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f7jO\";i:1622152897;}', 1622156497);
INSERT INTO `ims_core_sessions` VALUES ('ab02131ec274fc423c5345edbed05902', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H17g\";i:1622152777;}', 1622156377);
INSERT INTO `ims_core_sessions` VALUES ('b373b69c95dd1b434b50164b72e360b8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"d9yX\";i:1622152657;}', 1622156257);
INSERT INTO `ims_core_sessions` VALUES ('28b858b1d74af04ee6b11d0ebd42503f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZdOZ\";i:1622152657;}', 1622156257);
INSERT INTO `ims_core_sessions` VALUES ('a8533a31dffdd75f696adbe2f0d508ab', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ep84\";i:1622152537;}', 1622156137);
INSERT INTO `ims_core_sessions` VALUES ('95b676d515bafed44e7785043946eb61', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oSD2\";i:1622152417;}', 1622156017);
INSERT INTO `ims_core_sessions` VALUES ('e7984a1086392c4792b3b51e8dc31344', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"laro\";i:1622152297;}', 1622155897);
INSERT INTO `ims_core_sessions` VALUES ('1dc5b31b5f5db7a9d62c8bcf9d519e67', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D2Py\";i:1622152297;}', 1622155897);
INSERT INTO `ims_core_sessions` VALUES ('09c7ee5515e000faace45bf831333682', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YV15\";i:1622152177;}', 1622155777);
INSERT INTO `ims_core_sessions` VALUES ('de0eb1fcf812fe63ee193d3cef6bf165', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Mt9Z\";i:1622152057;}', 1622155657);
INSERT INTO `ims_core_sessions` VALUES ('d26cba7e52a2b7863397aef85d85349b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"A5Kd\";i:1622151937;}', 1622155537);
INSERT INTO `ims_core_sessions` VALUES ('90bdcba1a07eea097538db6dfa69a0c0', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YZoE\";i:1622151937;}', 1622155537);
INSERT INTO `ims_core_sessions` VALUES ('4048cc808fc9d723edf504fe44130c77', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Dn4b\";i:1622151817;}', 1622155417);
INSERT INTO `ims_core_sessions` VALUES ('39a65f298a2cb7af5f263272ae6ee728', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lQ2x\";i:1622151697;}', 1622155297);
INSERT INTO `ims_core_sessions` VALUES ('fa5c3173ec22fce795fc57f1520a021d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bWwl\";i:1622151577;}', 1622155177);
INSERT INTO `ims_core_sessions` VALUES ('888ba5f57916b09a2427424f13548a3b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UlBz\";i:1622151577;}', 1622155177);
INSERT INTO `ims_core_sessions` VALUES ('21e73add9057cb51d02c66234e76c4ab', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T5HR\";i:1622151457;}', 1622155057);
INSERT INTO `ims_core_sessions` VALUES ('ca6ee4ddde652a3acd2bc46547ab1715', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"m1eW\";i:1622151337;}', 1622154937);
INSERT INTO `ims_core_sessions` VALUES ('5ec6ef04617e58c784e1a92330e73cb0', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RcvC\";i:1622151217;}', 1622154817);
INSERT INTO `ims_core_sessions` VALUES ('a7b0fae5e0cf9cde90d6ac75ffc1f12d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"G0Zl\";i:1622151217;}', 1622154817);
INSERT INTO `ims_core_sessions` VALUES ('74d9c3a25660e1800058a09b9408f052', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vh05\";i:1622151097;}', 1622154697);
INSERT INTO `ims_core_sessions` VALUES ('db2f7832241827a541a9d9bac9d38e7f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FGk4\";i:1622150977;}', 1622154577);
INSERT INTO `ims_core_sessions` VALUES ('033127e134c6786eab084a733107f3f5', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Zuei\";i:1622150857;}', 1622154457);
INSERT INTO `ims_core_sessions` VALUES ('4c1b6d5e4e555578be4f40e62548a0b8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"t2hp\";i:1622150857;}', 1622154457);
INSERT INTO `ims_core_sessions` VALUES ('a0aff6139c1081abbad9e71e105df1ca', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gTVZ\";i:1622150737;}', 1622154337);
INSERT INTO `ims_core_sessions` VALUES ('53d110aac7dc0cb3711c66fed68c136b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VCHz\";i:1622150617;}', 1622154217);
INSERT INTO `ims_core_sessions` VALUES ('c45db42abd4475056283c07760d053e6', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"W8pi\";i:1622150497;}', 1622154097);
INSERT INTO `ims_core_sessions` VALUES ('8b3a2a9667f221b47a044c7a9a848474', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QNk7\";i:1622150497;}', 1622154097);
INSERT INTO `ims_core_sessions` VALUES ('b7df37addd57b3b2270f1a925618947c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RSNE\";i:1622150377;}', 1622153977);
INSERT INTO `ims_core_sessions` VALUES ('3d997df1765d3bf4fa2104fae305c997', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XUqK\";i:1622150257;}', 1622153857);
INSERT INTO `ims_core_sessions` VALUES ('7ab9162309292c7fc18fe6bf22f6bb63', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZZqq\";i:1622150137;}', 1622153737);
INSERT INTO `ims_core_sessions` VALUES ('43127642027107f24aa2ed50d06e6b18', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NmZW\";i:1622150137;}', 1622153737);
INSERT INTO `ims_core_sessions` VALUES ('4db297c0d38c9496a0105cb62fd721c8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g4qr\";i:1622150017;}', 1622153617);
INSERT INTO `ims_core_sessions` VALUES ('69a235c9a14127f3e75b5eebad653562', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oHnR\";i:1622149897;}', 1622153497);
INSERT INTO `ims_core_sessions` VALUES ('7c601de7dc60cfe224d700d7ac545b1f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RQ0e\";i:1622149777;}', 1622153377);
INSERT INTO `ims_core_sessions` VALUES ('f9fa4dfddecbc3a12afebadfbbdff6fe', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dapQ\";i:1622149777;}', 1622153377);
INSERT INTO `ims_core_sessions` VALUES ('8c6a7254e944d88c5e1686e15cfc0f66', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Nz3i\";i:1622149657;}', 1622153257);
INSERT INTO `ims_core_sessions` VALUES ('061466b328ef139f26df84a0d38af4e7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pa2s\";i:1622149537;}', 1622153137);
INSERT INTO `ims_core_sessions` VALUES ('47d4d01eceda7bb0fe65f5c9b602a693', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JFys\";i:1622149417;}', 1622153017);
INSERT INTO `ims_core_sessions` VALUES ('33d93b147d8aab5f52f70e0489d5c7c0', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Rw7M\";i:1622149417;}', 1622153017);
INSERT INTO `ims_core_sessions` VALUES ('6889a12864245eefcbc9eb9f2ab42720', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"In07\";i:1622149297;}', 1622152897);
INSERT INTO `ims_core_sessions` VALUES ('b0cf543fb77cd337e250466947aaf51d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Qf4K\";i:1622149177;}', 1622152777);
INSERT INTO `ims_core_sessions` VALUES ('fa323649c8f27170fc1934205fea4040', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UQF7\";i:1622149057;}', 1622152657);
INSERT INTO `ims_core_sessions` VALUES ('2a2f9d6f4c3a3e47853c42e8f8c05a6c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SWoa\";i:1622149057;}', 1622152657);
INSERT INTO `ims_core_sessions` VALUES ('ffb718c1867e69693b054ac46a00fdc6', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"W53c\";i:1622148937;}', 1622152537);
INSERT INTO `ims_core_sessions` VALUES ('7144bdb724a434778f94c9c685ebdfe2', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KEkY\";i:1622148817;}', 1622152417);
INSERT INTO `ims_core_sessions` VALUES ('e9ab109cf3cca6c765efba267cc1c6e2', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T7Eq\";i:1622148697;}', 1622152297);
INSERT INTO `ims_core_sessions` VALUES ('0602fecfd965a6022cfbdfe30c522f2e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hddG\";i:1622148697;}', 1622152297);
INSERT INTO `ims_core_sessions` VALUES ('362c98b74cc639b0f48b7d717bad78b7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ujTE\";i:1622148577;}', 1622152177);
INSERT INTO `ims_core_sessions` VALUES ('afc1f0412365422a12d3a6c1244f9609', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f69I\";i:1622148457;}', 1622152057);
INSERT INTO `ims_core_sessions` VALUES ('d5709aeaffa34d45d1ba2155ef4a55ef', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EeWD\";i:1622148337;}', 1622151937);
INSERT INTO `ims_core_sessions` VALUES ('6fb68272368b6feed9de278c420afc80', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Kj97\";i:1622148337;}', 1622151937);
INSERT INTO `ims_core_sessions` VALUES ('aeb5869f74ffa10163998c3611ec619a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MomW\";i:1622148217;}', 1622151817);
INSERT INTO `ims_core_sessions` VALUES ('fc4d92d4ed7c51b017ee7f4669fdf73d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"v4D2\";i:1622148097;}', 1622151697);
INSERT INTO `ims_core_sessions` VALUES ('a892d4442cb0280f386b554404964b8d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tfeP\";i:1622147977;}', 1622151577);
INSERT INTO `ims_core_sessions` VALUES ('b2a57b7d37d865044abec6b533e014c5', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aOFK\";i:1622147977;}', 1622151577);
INSERT INTO `ims_core_sessions` VALUES ('21e9556a86f64463ca4db2746d62bce9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DR5P\";i:1622147917;}', 1622151517);
INSERT INTO `ims_core_sessions` VALUES ('0e99474fc4d72f26f23c6f6a931698d5', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jCoE\";i:1622147797;}', 1622151397);
INSERT INTO `ims_core_sessions` VALUES ('6af389225d9859c65899b2320cc180de', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RiNL\";i:1622147677;}', 1622151277);
INSERT INTO `ims_core_sessions` VALUES ('5348c1f997163f0f0fc95a5800be2aad', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KZst\";i:1622147677;}', 1622151277);
INSERT INTO `ims_core_sessions` VALUES ('c230ee9fb0c29cf3a7616bba4dfde2ea', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XTY8\";i:1622147557;}', 1622151157);
INSERT INTO `ims_core_sessions` VALUES ('7f13db2765c02964774a3e7e77fb6eda', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"c7sr\";i:1622147437;}', 1622151037);
INSERT INTO `ims_core_sessions` VALUES ('8654c89daa6db2a955906f5f297780d6', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AD2S\";i:1622147377;}', 1622150977);
INSERT INTO `ims_core_sessions` VALUES ('91eea86bec666cdf1552a54ca1556676', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r1mi\";i:1622147317;}', 1622150917);
INSERT INTO `ims_core_sessions` VALUES ('ee313217df14aa36d74bd91d967a8ed7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bTc0\";i:1622147257;}', 1622150857);
INSERT INTO `ims_core_sessions` VALUES ('844823eba687073f936be7137013853a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"O1z8\";i:1622147137;}', 1622150737);
INSERT INTO `ims_core_sessions` VALUES ('2e660b1a72bf278812ec07cc61541e61', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l99h\";i:1622147017;}', 1622150617);
INSERT INTO `ims_core_sessions` VALUES ('747771a52d0f1882b3f9a8b8fe71b831', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Hsg6\";i:1622146957;}', 1622150557);
INSERT INTO `ims_core_sessions` VALUES ('51e1e9d8cc2919e97853dee218db1dd4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w5Zm\";i:1622146897;}', 1622150497);
INSERT INTO `ims_core_sessions` VALUES ('31e8cfc101a4f57c5f6c0a113d1c9944', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Pf4j\";i:1622146777;}', 1622150377);
INSERT INTO `ims_core_sessions` VALUES ('7ec00671c25b8b18a9593ab7848f3d1c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mm1w\";i:1622146657;}', 1622150257);
INSERT INTO `ims_core_sessions` VALUES ('7b3d2b2c4678f9dcf8fb9923b369e1f4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oi51\";i:1622146597;}', 1622150197);
INSERT INTO `ims_core_sessions` VALUES ('f227ed6309360df44997c33b8006be6f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eZ6x\";i:1622146537;}', 1622150137);
INSERT INTO `ims_core_sessions` VALUES ('c5371d9129c54ef68b535a17139c130c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Fps6\";i:1622146417;}', 1622150017);
INSERT INTO `ims_core_sessions` VALUES ('6667253cef7f4fa8339dce7a56cc8567', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RnNO\";i:1622146297;}', 1622149897);
INSERT INTO `ims_core_sessions` VALUES ('4356a2fb6b3e05ff83e09746f56a4226', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uiZd\";i:1622146237;}', 1622149837);
INSERT INTO `ims_core_sessions` VALUES ('3de37018582c0ecba35e8b530d5dbe3f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cc16\";i:1622146177;}', 1622149777);
INSERT INTO `ims_core_sessions` VALUES ('26fc54f04798b93e6f0ede46ceee1d23', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AF6q\";i:1622146056;}', 1622149656);
INSERT INTO `ims_core_sessions` VALUES ('daee66487471a219dc57149cf28dfbba', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"x400\";i:1622145937;}', 1622149537);
INSERT INTO `ims_core_sessions` VALUES ('0eedee0c9f8f8c26149a42e8392c9541', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T7uH\";i:1622145877;}', 1622149477);
INSERT INTO `ims_core_sessions` VALUES ('426986b723497ef7745cc84413218cc8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U88m\";i:1622145817;}', 1622149417);
INSERT INTO `ims_core_sessions` VALUES ('c6f77c7f433699ae44416e02db7b0957', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cVzk\";i:1622145697;}', 1622149297);
INSERT INTO `ims_core_sessions` VALUES ('e75bebdd6e440cf32b7181bb48f9cea5', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NRB9\";i:1622145577;}', 1622149177);
INSERT INTO `ims_core_sessions` VALUES ('22fb520c86bb2769934fdee866013711', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w38b\";i:1622145517;}', 1622149117);
INSERT INTO `ims_core_sessions` VALUES ('038e7d7e8fdf50e6118128d5b3bd8798', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V2e9\";i:1622145457;}', 1622149057);
INSERT INTO `ims_core_sessions` VALUES ('3409806d54c2d9c92b12bd2973070095', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"je2h\";i:1622145337;}', 1622148937);
INSERT INTO `ims_core_sessions` VALUES ('a0310e96c10ca06464e6a901be439b32', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Gen1\";i:1622145216;}', 1622148816);
INSERT INTO `ims_core_sessions` VALUES ('84a7b494b81601429a7348dd8ed94fd7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lh8v\";i:1622145157;}', 1622148757);
INSERT INTO `ims_core_sessions` VALUES ('591fab585d34953758c067de01671587', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IWoZ\";i:1622145096;}', 1622148696);
INSERT INTO `ims_core_sessions` VALUES ('de94f88f55dd917bac8b4b927c004f97', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cEHZ\";i:1622144977;}', 1622148577);
INSERT INTO `ims_core_sessions` VALUES ('212835333acfa5bd6e9eb07b1c4b4681', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MAAA\";i:1622144857;}', 1622148457);
INSERT INTO `ims_core_sessions` VALUES ('b4eab7b1542e72e7ee97387f4a6b48fd', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OZ0P\";i:1622144797;}', 1622148397);
INSERT INTO `ims_core_sessions` VALUES ('73ff5f5431d2b1454bb600bf242d93ca', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BSFF\";i:1622144736;}', 1622148336);
INSERT INTO `ims_core_sessions` VALUES ('f11616bddd629fbb72693e0c18017ee8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Gx22\";i:1622144617;}', 1622148217);
INSERT INTO `ims_core_sessions` VALUES ('a8bad671078d9213446f93af30a99fcf', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ryqm\";i:1622144497;}', 1622148097);
INSERT INTO `ims_core_sessions` VALUES ('ffce5dba9d3d1b2049bc2c1d54676322', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QXXE\";i:1622144436;}', 1622148036);
INSERT INTO `ims_core_sessions` VALUES ('da2dcd6f04bf470c452092aa08b8254c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HasU\";i:1622144376;}', 1622147976);
INSERT INTO `ims_core_sessions` VALUES ('985e05dc2cd5b81f9c2bbc9a52cf918e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fZ9R\";i:1622144256;}', 1622147856);
INSERT INTO `ims_core_sessions` VALUES ('9c40f5c5fc8de1ffd494afe4c93fc081', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"k2HT\";i:1622144136;}', 1622147736);
INSERT INTO `ims_core_sessions` VALUES ('a94ec2889478ae036e412e3a5dd7c468', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nRm4\";i:1622144076;}', 1622147676);
INSERT INTO `ims_core_sessions` VALUES ('4328f39a529e19c5c673ad8a83bbbf65', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oF8v\";i:1622144016;}', 1622147616);
INSERT INTO `ims_core_sessions` VALUES ('147277fc0f8db1331779d8739220edad', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"h9Wm\";i:1622143896;}', 1622147496);
INSERT INTO `ims_core_sessions` VALUES ('5af30b039c3594e3577ec146d7a825a7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hu57\";i:1622143776;}', 1622147376);
INSERT INTO `ims_core_sessions` VALUES ('3c530d25274b169a242724d7a294075b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"j3s1\";i:1622143717;}', 1622147317);
INSERT INTO `ims_core_sessions` VALUES ('23c9c201f21d209528e43bf076eadd53', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l955\";i:1622143656;}', 1622147256);
INSERT INTO `ims_core_sessions` VALUES ('b71fc956f5f86d9c7212e2a52b772fbd', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uFcc\";i:1622143536;}', 1622147136);
INSERT INTO `ims_core_sessions` VALUES ('802d8ffde39902c3c4f72563944101c4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Vh6C\";i:1622143416;}', 1622147016);
INSERT INTO `ims_core_sessions` VALUES ('9818edd791e0204203b008b94a338277', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JMeC\";i:1622143356;}', 1622146956);
INSERT INTO `ims_core_sessions` VALUES ('2f0144478b7166998430145ea259a2c9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Nmc4\";i:1622143296;}', 1622146896);
INSERT INTO `ims_core_sessions` VALUES ('cf90e44858058dec30f08f8b7d980b6a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JuRS\";i:1622143176;}', 1622146776);
INSERT INTO `ims_core_sessions` VALUES ('8111fa2589373dd8b2352ea3ca08d054', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KG3L\";i:1622143056;}', 1622146656);
INSERT INTO `ims_core_sessions` VALUES ('c71623660f92cf53dd5e30465435442c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fy8y\";i:1622142996;}', 1622146596);
INSERT INTO `ims_core_sessions` VALUES ('a2380f0f39a95199287b4f3b3484e972', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lKRZ\";i:1622142936;}', 1622146536);
INSERT INTO `ims_core_sessions` VALUES ('cb8dfdd60b2f4ad55479cda4ad808286', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qcjm\";i:1622142816;}', 1622146416);
INSERT INTO `ims_core_sessions` VALUES ('17c579fd9c66b9180b7f3ae61a5e8ea9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T9kP\";i:1622142696;}', 1622146296);
INSERT INTO `ims_core_sessions` VALUES ('a5271fc78454f3ef1bbac0741bf9a8fb', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VbaL\";i:1622142636;}', 1622146236);
INSERT INTO `ims_core_sessions` VALUES ('09af1412a760220aa5ddd706175e8a20', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FE9M\";i:1622142576;}', 1622146176);
INSERT INTO `ims_core_sessions` VALUES ('3380715184deff1812c3c0d0aa44886b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zubz\";i:1622142456;}', 1622146056);
INSERT INTO `ims_core_sessions` VALUES ('1c83e4f2d6f81b9de54341403c672c63', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Tb7b\";i:1622142336;}', 1622145936);
INSERT INTO `ims_core_sessions` VALUES ('29c5fb430b04b1c6ac1f7235cf2c7a6a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rKx4\";i:1622142276;}', 1622145876);
INSERT INTO `ims_core_sessions` VALUES ('5690d001937bfa67da305f9f8684f7e6', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bgnl\";i:1622142216;}', 1622145816);
INSERT INTO `ims_core_sessions` VALUES ('cbfced3b164d0bf604348604162c877a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iZ2C\";i:1622142096;}', 1622145696);
INSERT INTO `ims_core_sessions` VALUES ('e925d91bee6e1cdf679f39bead72505d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JnZY\";i:1622141976;}', 1622145576);
INSERT INTO `ims_core_sessions` VALUES ('97f243bbf739a9657f3b565ca5d773b3', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D9B2\";i:1622141916;}', 1622145516);
INSERT INTO `ims_core_sessions` VALUES ('3aa9d5bb775cfacde5fc4dedb6233493', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ydzS\";i:1622141856;}', 1622145456);
INSERT INTO `ims_core_sessions` VALUES ('ac67bb1c204a0be0e67fda9d0468a43a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dYl1\";i:1622141736;}', 1622145336);
INSERT INTO `ims_core_sessions` VALUES ('d09ba58f45cf5a7cc2af79ee6441d43c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EkXX\";i:1622141616;}', 1622145216);
INSERT INTO `ims_core_sessions` VALUES ('4b1a6f696f01d7db93944da25fbbe4cc', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"L4OO\";i:1622141556;}', 1622145156);
INSERT INTO `ims_core_sessions` VALUES ('f40b1a01f7e6960d7b756ad41b5214aa', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M1W5\";i:1622141496;}', 1622145096);
INSERT INTO `ims_core_sessions` VALUES ('3b45594a986286e1dc4549c124650381', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ynll\";i:1622141376;}', 1622144976);
INSERT INTO `ims_core_sessions` VALUES ('2985fa9d3affdb13536ee097d2d4cd1f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sP29\";i:1622141256;}', 1622144856);
INSERT INTO `ims_core_sessions` VALUES ('0fc0bbdcdcf21f2a33912ad07bb9a4e2', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wDwH\";i:1622141196;}', 1622144796);
INSERT INTO `ims_core_sessions` VALUES ('170afff1ab2a9b78424426b3dbe24084', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H0la\";i:1622141136;}', 1622144736);
INSERT INTO `ims_core_sessions` VALUES ('2da8600af44f420bcf39901a75186bea', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jA53\";i:1622141016;}', 1622144616);
INSERT INTO `ims_core_sessions` VALUES ('e3970bb615b536b48d1a3830559e946d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r88B\";i:1622140896;}', 1622144496);
INSERT INTO `ims_core_sessions` VALUES ('610c975641bb2b5c4a8ac345bfda7c6c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BBsl\";i:1622140836;}', 1622144436);
INSERT INTO `ims_core_sessions` VALUES ('27e1840c8afab597bf728ba31e4c54f9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BMWX\";i:1622140776;}', 1622144376);
INSERT INTO `ims_core_sessions` VALUES ('1d8b32fad702c1fec2a599cfb4e313c6', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YgQu\";i:1622140656;}', 1622144256);
INSERT INTO `ims_core_sessions` VALUES ('10414e7f90e9f39b03a468056a3eac9d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Att6\";i:1622140536;}', 1622144136);
INSERT INTO `ims_core_sessions` VALUES ('ad5717ef155cfd7ce2fa66059aac9856', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DmwV\";i:1622140476;}', 1622144076);
INSERT INTO `ims_core_sessions` VALUES ('94f060dd3d901c624bacd04088f4c6bc', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"b2Ok\";i:1622140416;}', 1622144016);
INSERT INTO `ims_core_sessions` VALUES ('edb2c7d4a7466c7a906e88f66b774880', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Qu55\";i:1622140296;}', 1622143896);
INSERT INTO `ims_core_sessions` VALUES ('31d2a5574b9c405d9eaba8010da6cca8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qXIu\";i:1622140176;}', 1622143776);
INSERT INTO `ims_core_sessions` VALUES ('70d79c4082be44209672d2bcf480180f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V7ru\";i:1622140116;}', 1622143716);
INSERT INTO `ims_core_sessions` VALUES ('f271e56be59f13c7159459af62f718c1', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tEeF\";i:1622140056;}', 1622143656);
INSERT INTO `ims_core_sessions` VALUES ('1fb618e52528870479117760967d67b3', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"br8R\";i:1622139936;}', 1622143536);
INSERT INTO `ims_core_sessions` VALUES ('fbab2e716e6a7b142c75ce559f638d94', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"S701\";i:1622139816;}', 1622143416);
INSERT INTO `ims_core_sessions` VALUES ('f1a5642882bc75eb1c33665294aefe10', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"texG\";i:1622139756;}', 1622143356);
INSERT INTO `ims_core_sessions` VALUES ('9a111967d8e5c344cda6f391c3b79529', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yTaO\";i:1622139696;}', 1622143296);
INSERT INTO `ims_core_sessions` VALUES ('d328aad62d2c68b0b0ce005a6e43d95a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bbQw\";i:1622139576;}', 1622143176);
INSERT INTO `ims_core_sessions` VALUES ('0e94b5b1bfcd09bd6575f0596d2e1b1b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w6z8\";i:1622139456;}', 1622143056);
INSERT INTO `ims_core_sessions` VALUES ('7b234d54bb60a9f9c0539c6e72a634f7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"LUkj\";i:1622139396;}', 1622142996);
INSERT INTO `ims_core_sessions` VALUES ('e3a53448ff8eae646e9ff4a8963d7737', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VLl3\";i:1622139336;}', 1622142936);
INSERT INTO `ims_core_sessions` VALUES ('afcfac3c84fbf02ce90dbac5283a7122', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vKc2\";i:1622139216;}', 1622142816);
INSERT INTO `ims_core_sessions` VALUES ('e6d9d826bbf2026d4ae7b2b662ff2ea3', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D4at\";i:1622139096;}', 1622142696);
INSERT INTO `ims_core_sessions` VALUES ('f56309de1d6ccc119ffc115e35a6df48', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g2P2\";i:1622139036;}', 1622142636);
INSERT INTO `ims_core_sessions` VALUES ('ee20ced24522da68581f75a344f7d512', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g1qC\";i:1622138976;}', 1622142576);
INSERT INTO `ims_core_sessions` VALUES ('d87c7542be8e7c30c8f790507bc95751', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nSbu\";i:1622138856;}', 1622142456);
INSERT INTO `ims_core_sessions` VALUES ('b992387e02a5dcc77206cbe3e48d4feb', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dRBb\";i:1622138736;}', 1622142336);
INSERT INTO `ims_core_sessions` VALUES ('f5a34e055b551e903d02f94a4bc5391b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nwGI\";i:1622138676;}', 1622142276);
INSERT INTO `ims_core_sessions` VALUES ('a99bc7c7d844e8d7a28f90576229fc44', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"O3K4\";i:1622138616;}', 1622142216);
INSERT INTO `ims_core_sessions` VALUES ('6d19eb7565b3a7ce841c041770e0438c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"C9U0\";i:1622138496;}', 1622142096);
INSERT INTO `ims_core_sessions` VALUES ('69e9069d0ee022b47df8a2673c349cf7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z3Am\";i:1622138376;}', 1622141976);
INSERT INTO `ims_core_sessions` VALUES ('b632ea7ee5c02e4b4333f758ff6c6b9b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zVzd\";i:1622138316;}', 1622141916);
INSERT INTO `ims_core_sessions` VALUES ('bb7e9472a500cb277d27b34741d89b30', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EGOG\";i:1622138256;}', 1622141856);
INSERT INTO `ims_core_sessions` VALUES ('3670407cf1807000ee54204ccfc176ed', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FynV\";i:1622138136;}', 1622141736);
INSERT INTO `ims_core_sessions` VALUES ('1e8618b7e3f97d2bb371755050a54b13', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jVVr\";i:1622138016;}', 1622141616);
INSERT INTO `ims_core_sessions` VALUES ('148267065616d8798fc701014f2cec48', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Qxgx\";i:1622137956;}', 1622141556);
INSERT INTO `ims_core_sessions` VALUES ('96791bae0bdcace21409fe4486877d01', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u1g8\";i:1622137896;}', 1622141496);
INSERT INTO `ims_core_sessions` VALUES ('08c0c3cb60cb57f3240c0d032eea6637', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RJDW\";i:1622137776;}', 1622141376);
INSERT INTO `ims_core_sessions` VALUES ('128a68bedc421caf9a15e35fcccd94e4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gOG5\";i:1622137656;}', 1622141256);
INSERT INTO `ims_core_sessions` VALUES ('51b1432c3e2fc45572a7a3088c97722e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H22f\";i:1622137596;}', 1622141196);
INSERT INTO `ims_core_sessions` VALUES ('e6cf4a06de467d906db8bb952fcd9a3d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bctz\";i:1622137536;}', 1622141136);
INSERT INTO `ims_core_sessions` VALUES ('db3909fe9d060920f364d8a3f13a7e07', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ku8b\";i:1622137416;}', 1622141016);
INSERT INTO `ims_core_sessions` VALUES ('63686d27b024340993786489cbad87c9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ak2a\";i:1622137296;}', 1622140896);
INSERT INTO `ims_core_sessions` VALUES ('898f1002b94a4759fa3e4d084577e938', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gf8J\";i:1622137236;}', 1622140836);
INSERT INTO `ims_core_sessions` VALUES ('04cac4b1934f4a0689da81e76c969755', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Vu1u\";i:1622137176;}', 1622140776);
INSERT INTO `ims_core_sessions` VALUES ('6911cb92295ed0dfdcbe5ebbbc72eb23', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"h9rh\";i:1622137056;}', 1622140656);
INSERT INTO `ims_core_sessions` VALUES ('f51aaae2d5f5318e734b42327af3069d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NTus\";i:1622136936;}', 1622140536);
INSERT INTO `ims_core_sessions` VALUES ('e9a4850d4d0b7a095b89da03a27f9a18', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qlxr\";i:1622136876;}', 1622140476);
INSERT INTO `ims_core_sessions` VALUES ('b80a0813fa976f8c4583c7f19cd4319b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vz1M\";i:1622136816;}', 1622140416);
INSERT INTO `ims_core_sessions` VALUES ('e7787e3e8c3501fe0bf2c82db6232335', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Oz4Q\";i:1622136696;}', 1622140296);
INSERT INTO `ims_core_sessions` VALUES ('d5fa5fd6b97ebb99d6f308cc45348564', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bjzD\";i:1622136576;}', 1622140176);
INSERT INTO `ims_core_sessions` VALUES ('79b1dbe3df3fba9978117df83089fb7d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yYaS\";i:1622136516;}', 1622140116);
INSERT INTO `ims_core_sessions` VALUES ('649220b163cc4467f6520ff8d4a83872', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r73u\";i:1622136456;}', 1622140056);
INSERT INTO `ims_core_sessions` VALUES ('34be7d53bb3b1bee79ffe1f150afd7c7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IwWw\";i:1622136336;}', 1622139936);
INSERT INTO `ims_core_sessions` VALUES ('af7daabcfa15a2326405f9bcaea6fb20', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"WqUI\";i:1622136216;}', 1622139816);
INSERT INTO `ims_core_sessions` VALUES ('c28ef35e7aa19f3f870c665e4036536d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U3i0\";i:1622136156;}', 1622139756);
INSERT INTO `ims_core_sessions` VALUES ('974636119ebe7cf1cceb7328f76835bb', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z1he\";i:1622136096;}', 1622139696);
INSERT INTO `ims_core_sessions` VALUES ('c67ac25594e0d5e569460a9273094191', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sqng\";i:1622135976;}', 1622139576);
INSERT INTO `ims_core_sessions` VALUES ('f9499808e3685db48ecb14075067019f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"o47c\";i:1622135856;}', 1622139456);
INSERT INTO `ims_core_sessions` VALUES ('18875c6486fbcff0e7999dd266f60a65', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OFc3\";i:1622135796;}', 1622139396);
INSERT INTO `ims_core_sessions` VALUES ('e217b9e8bf2947dd445c1452250bc277', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"x92j\";i:1622135736;}', 1622139336);
INSERT INTO `ims_core_sessions` VALUES ('853036dfb7127f2f0955a2c61e7638b4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i0cA\";i:1622135616;}', 1622139216);
INSERT INTO `ims_core_sessions` VALUES ('5b50ea1b2cba96b988a527a86b4ac74b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eYYk\";i:1622135497;}', 1622139097);
INSERT INTO `ims_core_sessions` VALUES ('9b896462bbd797e3588eb1db7c52f084', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kB5Z\";i:1622135436;}', 1622139036);
INSERT INTO `ims_core_sessions` VALUES ('1138302ea6ac4481f86fee94a76ae3b9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rz1E\";i:1622135436;}', 1622139036);
INSERT INTO `ims_core_sessions` VALUES ('06ea2563d2aa0678b53911dfcff12891', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"v0WD\";i:1622135316;}', 1622138916);
INSERT INTO `ims_core_sessions` VALUES ('b731ff76540b60b9db221ef4db1a08bd', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"t65z\";i:1622135196;}', 1622138796);
INSERT INTO `ims_core_sessions` VALUES ('4a001b10d8338a3a85360ebd9cb1e8ae', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DWDB\";i:1622135076;}', 1622138676);
INSERT INTO `ims_core_sessions` VALUES ('5124d7985141be4d6257415c6f397fea', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IBGC\";i:1622131476;}', 1622135076);
INSERT INTO `ims_core_sessions` VALUES ('203e97902ffb9e2eccdf0abc3075d88a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ED2o\";i:1622131476;}', 1622135076);
INSERT INTO `ims_core_sessions` VALUES ('cefcd825fb76bf1ed8c506b14e4de852', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ac8e\";i:1622131596;}', 1622135196);
INSERT INTO `ims_core_sessions` VALUES ('3731d3309ba481e4bc93897e22289c13', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XoG9\";i:1622131716;}', 1622135316);
INSERT INTO `ims_core_sessions` VALUES ('c2f0443ab339e56de105ad23057640ab', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"LU7H\";i:1622131837;}', 1622135437);
INSERT INTO `ims_core_sessions` VALUES ('85de8ca8c8142f8a3cb276ee27900e08', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CpSP\";i:1622131837;}', 1622135437);
INSERT INTO `ims_core_sessions` VALUES ('3d6800f2b01f2073762b3117db3e52ce', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zFkc\";i:1622131956;}', 1622135556);
INSERT INTO `ims_core_sessions` VALUES ('9a1a4b969666173dc6922306130f991f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sv2Z\";i:1622132076;}', 1622135676);
INSERT INTO `ims_core_sessions` VALUES ('136d46613eb9d01b08be382e65dd9db6', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Iql6\";i:1622132196;}', 1622135796);
INSERT INTO `ims_core_sessions` VALUES ('c40b4f2c023c7b53ece05f491b8d1dea', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RcHc\";i:1622132196;}', 1622135796);
INSERT INTO `ims_core_sessions` VALUES ('bfbff7e0260a1e55b6825843d2b7577e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EaSe\";i:1622132316;}', 1622135916);
INSERT INTO `ims_core_sessions` VALUES ('242a62d8205eda52ad7da4a9ba4172b4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FqVr\";i:1622132436;}', 1622136036);
INSERT INTO `ims_core_sessions` VALUES ('e02864b5543f3583e6a16a904f67117e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vbOm\";i:1622132556;}', 1622136156);
INSERT INTO `ims_core_sessions` VALUES ('cf03365c891b5cf067930765f4266794', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nuM9\";i:1622132556;}', 1622136156);
INSERT INTO `ims_core_sessions` VALUES ('b5e800c4137fc4c3790052dbc41f4edd', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Muzn\";i:1622132676;}', 1622136276);
INSERT INTO `ims_core_sessions` VALUES ('815eb1f47a7eba1711353fdac4686a58', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u0FR\";i:1622132797;}', 1622136397);
INSERT INTO `ims_core_sessions` VALUES ('8c67c715c89e36dcd15e1359f715a96e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tH8e\";i:1622132916;}', 1622136516);
INSERT INTO `ims_core_sessions` VALUES ('2370279b94793f83d8a8e8c571c6be54', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lBkz\";i:1622132916;}', 1622136516);
INSERT INTO `ims_core_sessions` VALUES ('42746dbd3339c24886f4d2a8cc307e1c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"X9I7\";i:1622133036;}', 1622136636);
INSERT INTO `ims_core_sessions` VALUES ('891c3b3798d85f96eb8a0dd1f858b1b0', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p5Be\";i:1622133156;}', 1622136756);
INSERT INTO `ims_core_sessions` VALUES ('036d8d288b7cc2c7763c46bf1d412bc9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ALYS\";i:1622133276;}', 1622136876);
INSERT INTO `ims_core_sessions` VALUES ('e6cb38a9b33bcf3e7b020cbf88d39625', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V29A\";i:1622133276;}', 1622136876);
INSERT INTO `ims_core_sessions` VALUES ('78e1a3699ed73fa2b22a8ed8f83eb41b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xa92\";i:1622133396;}', 1622136996);
INSERT INTO `ims_core_sessions` VALUES ('073b57e99e6e349ee53c1dee58519121', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rwMu\";i:1622133516;}', 1622137116);
INSERT INTO `ims_core_sessions` VALUES ('378efe4dea07b77eab42dde358154ce2', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"B0MR\";i:1622133636;}', 1622137236);
INSERT INTO `ims_core_sessions` VALUES ('6db140d0102a29798f95667c5deb6566', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VglX\";i:1622133636;}', 1622137236);
INSERT INTO `ims_core_sessions` VALUES ('c504a49b43e2b524d22e2d3e2e249cf9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"y8Go\";i:1622133757;}', 1622137357);
INSERT INTO `ims_core_sessions` VALUES ('2c38a93e2709bf4c2a68bccc307249e7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T8YD\";i:1622133876;}', 1622137476);
INSERT INTO `ims_core_sessions` VALUES ('757936932085ebd75c4747f653228f12', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BrRr\";i:1622133996;}', 1622137596);
INSERT INTO `ims_core_sessions` VALUES ('683f5619ad533a776f3d52f5fbab784c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Qd2F\";i:1622133996;}', 1622137596);
INSERT INTO `ims_core_sessions` VALUES ('cbcd6252e54efe1ba3b8ef7ff05151ae', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gg45\";i:1622134116;}', 1622137716);
INSERT INTO `ims_core_sessions` VALUES ('04cfc69af210e80a8b7795612eee0322', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qLC5\";i:1622134236;}', 1622137836);
INSERT INTO `ims_core_sessions` VALUES ('aa5988af034521ca1d7573b29110c82c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Wib3\";i:1622134356;}', 1622137956);
INSERT INTO `ims_core_sessions` VALUES ('de71a9bad1d19dab7483ac2f437bc81d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oobG\";i:1622134356;}', 1622137956);
INSERT INTO `ims_core_sessions` VALUES ('be6ebc5b5a2244c93876a8efdb47247f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qpba\";i:1622134476;}', 1622138076);
INSERT INTO `ims_core_sessions` VALUES ('37874d4e353ef25cf575f31b902cf3f1', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MRbu\";i:1622134596;}', 1622138196);
INSERT INTO `ims_core_sessions` VALUES ('7be0700fdf09b2c7dfd479cbdacf239c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NJgz\";i:1622134716;}', 1622138316);
INSERT INTO `ims_core_sessions` VALUES ('0fb483ec80eacceffe68572d200f9696', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l7Lm\";i:1622134716;}', 1622138316);
INSERT INTO `ims_core_sessions` VALUES ('0df5f1dc93c8a6d59676e346e02427f5', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z05N\";i:1622134836;}', 1622138436);
INSERT INTO `ims_core_sessions` VALUES ('0b9990132dcb1eb8491be24687cda826', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dR4w\";i:1622134956;}', 1622138556);
INSERT INTO `ims_core_sessions` VALUES ('01e1845e3a6ff21bc0864b09de81b90d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J93H\";i:1622135076;}', 1622138676);
INSERT INTO `ims_core_sessions` VALUES ('e5209f7dae5728d4d671164d80cc5d42', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"to5A\";i:1622163217;}', 1622166817);
INSERT INTO `ims_core_sessions` VALUES ('d45c1dbdd009fb95d59f967ea7c74af1', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Cb9i\";i:1622163337;}', 1622166937);
INSERT INTO `ims_core_sessions` VALUES ('e852cda4f4661e5359d341f4ea9a2458', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tB28\";i:1622163457;}', 1622167057);
INSERT INTO `ims_core_sessions` VALUES ('dc693f40b7f64175c8082e705ac6910c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UCUu\";i:1622163457;}', 1622167057);
INSERT INTO `ims_core_sessions` VALUES ('6ee99713ec9cbba51d6ea80a5ed01401', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z398\";i:1622163577;}', 1622167177);
INSERT INTO `ims_core_sessions` VALUES ('a26153d39856b18ba27d086d5e53848a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SzPB\";i:1622163697;}', 1622167297);
INSERT INTO `ims_core_sessions` VALUES ('37df08b5386a4a9d45233bd5f09da41d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wqcc\";i:1622163817;}', 1622167417);
INSERT INTO `ims_core_sessions` VALUES ('5ee5778a6b2b3a65095ec1aeee745e34', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ckM8\";i:1622163817;}', 1622167417);
INSERT INTO `ims_core_sessions` VALUES ('d1c602ca832feb0af948f2a40864be83', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aqZQ\";i:1622163937;}', 1622167537);
INSERT INTO `ims_core_sessions` VALUES ('17b83783defe21c5611e1b023c1b9b8f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vBaQ\";i:1622164057;}', 1622167657);
INSERT INTO `ims_core_sessions` VALUES ('a671edf28ff63bf2203ceee0a06b30c7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OLKO\";i:1622164179;}', 1622167779);
INSERT INTO `ims_core_sessions` VALUES ('1572af22ad81c65e09bd0ee7d92c5e5f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z7u2\";i:1622164179;}', 1622167779);
INSERT INTO `ims_core_sessions` VALUES ('988fe852125a4bb21cf161a9e150b0fb', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nfof\";i:1622164297;}', 1622167897);
INSERT INTO `ims_core_sessions` VALUES ('b609ad7353048794624022872260209c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZXYz\";i:1622164417;}', 1622168017);
INSERT INTO `ims_core_sessions` VALUES ('944bab92b99f041d9bc8ce86221ab13c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lZl4\";i:1622164537;}', 1622168137);
INSERT INTO `ims_core_sessions` VALUES ('24abfaf3cf74861f63a9d40c3dfc6fc1', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"t5ga\";i:1622164537;}', 1622168137);
INSERT INTO `ims_core_sessions` VALUES ('f73faf3b6d6e157e96b44948db59734c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hZN2\";i:1622164657;}', 1622168257);
INSERT INTO `ims_core_sessions` VALUES ('8008fd989792931921fb9a5a3fcfecf7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yeFy\";i:1622164777;}', 1622168377);
INSERT INTO `ims_core_sessions` VALUES ('bf96d0f00794cabf18b1c4e908507420', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xxWI\";i:1622164897;}', 1622168497);
INSERT INTO `ims_core_sessions` VALUES ('976e1b5167090b31e3422b2c2ddb9d2f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wE2k\";i:1622164897;}', 1622168497);
INSERT INTO `ims_core_sessions` VALUES ('d564781e775e3a7f114f3197d29c96e6', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"LL0Y\";i:1622165017;}', 1622168617);
INSERT INTO `ims_core_sessions` VALUES ('d165397bfef4318a4d17c553248e87e3', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ueop\";i:1622165137;}', 1622168737);
INSERT INTO `ims_core_sessions` VALUES ('18e221aa107417ffd090976f88bd14ac', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"C4OD\";i:1622165257;}', 1622168857);
INSERT INTO `ims_core_sessions` VALUES ('04bbbc023976d57d73140ff0cb6f51dd', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XQz3\";i:1622165257;}', 1622168857);
INSERT INTO `ims_core_sessions` VALUES ('7ca78562a0d3c26c2456c21ff1aaace3', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V31f\";i:1622165377;}', 1622168977);
INSERT INTO `ims_core_sessions` VALUES ('3c9fb8f89c4fd3ac8460198c222a5b69', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ud8D\";i:1622165497;}', 1622169097);
INSERT INTO `ims_core_sessions` VALUES ('25a90e277b4502f6334236e7335f8df6', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tqb7\";i:1622165617;}', 1622169217);
INSERT INTO `ims_core_sessions` VALUES ('fb3e98f4bcc8b5ba3908a7ec1c1e064c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Fggs\";i:1622165617;}', 1622169217);
INSERT INTO `ims_core_sessions` VALUES ('f65ea77f11c9f3ad3cf93df71e56b646', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Yobg\";i:1622165737;}', 1622169337);
INSERT INTO `ims_core_sessions` VALUES ('f7f72cde7e098da897cf225a439aa68c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"I44R\";i:1622165857;}', 1622169457);
INSERT INTO `ims_core_sessions` VALUES ('3ca24463bd891107bafffcddf1e86320', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"j3g3\";i:1622165977;}', 1622169577);
INSERT INTO `ims_core_sessions` VALUES ('37ddc28afa7f8e0621353a66dc5fd441', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Rpp6\";i:1622165977;}', 1622169577);
INSERT INTO `ims_core_sessions` VALUES ('588d514ccf88ea6d124a309b21209fa9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZuIf\";i:1622166097;}', 1622169697);
INSERT INTO `ims_core_sessions` VALUES ('249a7eba1e796befdc085884da76a714', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"I0YU\";i:1622166217;}', 1622169817);
INSERT INTO `ims_core_sessions` VALUES ('bb21dc8fc92584a8270d6b4c00dd4f92', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"S9me\";i:1622166337;}', 1622169937);
INSERT INTO `ims_core_sessions` VALUES ('89410dc9a3ad8d7183725b5b0711efbe', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Nhh9\";i:1622166337;}', 1622169937);
INSERT INTO `ims_core_sessions` VALUES ('40c14b2b6e2f0da5ccfc6d66af3420ea', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"obb0\";i:1622166457;}', 1622170057);
INSERT INTO `ims_core_sessions` VALUES ('e674f5c71af85a0f6677bacda2a873f8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qOZD\";i:1622166577;}', 1622170177);
INSERT INTO `ims_core_sessions` VALUES ('c42f0df9dbbd49f77d2ee6e9996b2f5a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wNiL\";i:1622166697;}', 1622170297);
INSERT INTO `ims_core_sessions` VALUES ('eb7275782e989a6cb3a086f76593618e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sRo1\";i:1622166697;}', 1622170297);
INSERT INTO `ims_core_sessions` VALUES ('f5ee5f60e09be681b4ab5ce0de33a619', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eMrp\";i:1622166817;}', 1622170417);
INSERT INTO `ims_core_sessions` VALUES ('c166eb3f1e1950f18b96bb7da7be7b56', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"utzQ\";i:1622166937;}', 1622170537);
INSERT INTO `ims_core_sessions` VALUES ('b2c6039703ef229bdcd0b56a19dbdb0b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Mo60\";i:1622167057;}', 1622170657);
INSERT INTO `ims_core_sessions` VALUES ('dd055581d4ea7a952d340d138c1fa60a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YTMX\";i:1622167057;}', 1622170657);
INSERT INTO `ims_core_sessions` VALUES ('509c6645facc897623c00285365d6e95', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U1KM\";i:1622167177;}', 1622170777);
INSERT INTO `ims_core_sessions` VALUES ('d0f3a1525388adf2dcd9423f6c788fc5', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"edqZ\";i:1622167297;}', 1622170897);
INSERT INTO `ims_core_sessions` VALUES ('69599df0d0dc8338bd9a0ee0154bbec2', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tH3D\";i:1622167417;}', 1622171017);
INSERT INTO `ims_core_sessions` VALUES ('e33876db60b536eff80d56254c0c28ad', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uect\";i:1622167417;}', 1622171017);
INSERT INTO `ims_core_sessions` VALUES ('af97fecffa0b59f84ef87c2ce246972f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Hs62\";i:1622167537;}', 1622171137);
INSERT INTO `ims_core_sessions` VALUES ('a1714294369dcced3688a2bb325ad3d4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ac87\";i:1622167657;}', 1622171257);
INSERT INTO `ims_core_sessions` VALUES ('e2140a50b10f18dc9225c15447e87dfe', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p9b6\";i:1622167777;}', 1622171377);
INSERT INTO `ims_core_sessions` VALUES ('1618497e7d45abc1e2be1ebde062be42', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"X7vm\";i:1622167777;}', 1622171377);
INSERT INTO `ims_core_sessions` VALUES ('890d9e0a15b0b7dec0371787786fee6f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"m92x\";i:1622167897;}', 1622171497);
INSERT INTO `ims_core_sessions` VALUES ('b2c8976fa257b4710c870a909bd517e8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M0nO\";i:1622168017;}', 1622171617);
INSERT INTO `ims_core_sessions` VALUES ('20251ec0ea3fade4071cdd046f2a7c61', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"phGg\";i:1622168137;}', 1622171737);
INSERT INTO `ims_core_sessions` VALUES ('b9add2287325597b4d402c42857aa334', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DzZk\";i:1622168137;}', 1622171737);
INSERT INTO `ims_core_sessions` VALUES ('0baa8236f4cb3582db96a7a2ea831ed2', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fuUu\";i:1622168257;}', 1622171857);
INSERT INTO `ims_core_sessions` VALUES ('aecd3fdcc3ba94e39fa09e608e819566', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dTyt\";i:1622168377;}', 1622171977);
INSERT INTO `ims_core_sessions` VALUES ('a18d36a0175f43a81c963f42d2e8c44b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uZQA\";i:1622168497;}', 1622172097);
INSERT INTO `ims_core_sessions` VALUES ('c7a83a2a58cad909cb6f9c1b0b108e17', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mZea\";i:1622168497;}', 1622172097);
INSERT INTO `ims_core_sessions` VALUES ('1f1f3f24b0b8a1482bebfd662801504f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"E80D\";i:1622168617;}', 1622172217);
INSERT INTO `ims_core_sessions` VALUES ('4ccb90ca70666bb4bb5c2f9bf9ae8635', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QQ71\";i:1622168737;}', 1622172337);
INSERT INTO `ims_core_sessions` VALUES ('b82d0ca015a60f038175015dd297a4cb', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cY21\";i:1622168857;}', 1622172457);
INSERT INTO `ims_core_sessions` VALUES ('fc5eaec847e96cc48aecd73ed1b0ce8c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Jz8J\";i:1622168857;}', 1622172457);
INSERT INTO `ims_core_sessions` VALUES ('3540595ba553484e5ffa1c4140c8b22f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z2uy\";i:1622168977;}', 1622172577);
INSERT INTO `ims_core_sessions` VALUES ('d6ede96664c7020ff8082db21458b7be', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jfea\";i:1622169097;}', 1622172697);
INSERT INTO `ims_core_sessions` VALUES ('1a97bd0d92752d99bd381e4361559aa8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vcCM\";i:1622169217;}', 1622172817);
INSERT INTO `ims_core_sessions` VALUES ('a859618b12ac9c91f10f0923ab62754e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TUji\";i:1622169217;}', 1622172817);
INSERT INTO `ims_core_sessions` VALUES ('030700468dd7ec64111e48ace2164617', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KTKy\";i:1622169337;}', 1622172937);
INSERT INTO `ims_core_sessions` VALUES ('b817af5e9d5ae069d03e1aa08e951ebe', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BCmx\";i:1622169457;}', 1622173057);
INSERT INTO `ims_core_sessions` VALUES ('d80520b173fe371d0292609ee74f967b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BqTd\";i:1622169577;}', 1622173177);
INSERT INTO `ims_core_sessions` VALUES ('6246e8d997f7de7815dff55d9834c596', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pC43\";i:1622169577;}', 1622173177);
INSERT INTO `ims_core_sessions` VALUES ('46b4030a7395e48b0d614c2e658bf7ea', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"B55k\";i:1622169697;}', 1622173297);
INSERT INTO `ims_core_sessions` VALUES ('05430cb56cda79eb1ee5f67415f43c7b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vEMV\";i:1622169817;}', 1622173417);
INSERT INTO `ims_core_sessions` VALUES ('e54180a5a91026203966d73f4ce70f62', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gVuq\";i:1622169937;}', 1622173537);
INSERT INTO `ims_core_sessions` VALUES ('9b785193610a58317db7dca93e419c84', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Xt7Z\";i:1622169937;}', 1622173537);
INSERT INTO `ims_core_sessions` VALUES ('94d01dea1f11c70cd205e5e5c62eee5e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"n5In\";i:1622170057;}', 1622173657);
INSERT INTO `ims_core_sessions` VALUES ('ea906266772a67d26995b9d72f0359c1', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SMJM\";i:1622170177;}', 1622173777);
INSERT INTO `ims_core_sessions` VALUES ('da7495c6fdf6c3f8227390643421982b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aNxP\";i:1622170297;}', 1622173897);
INSERT INTO `ims_core_sessions` VALUES ('f11057a420a3d332f932196ca972ed61', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Q0ea\";i:1622170297;}', 1622173897);
INSERT INTO `ims_core_sessions` VALUES ('096aa387c659d09f865a0032773236fc', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zzI2\";i:1622170417;}', 1622174017);
INSERT INTO `ims_core_sessions` VALUES ('43ab5091fa8817978a31fc8f6de3dee2', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rJ9V\";i:1622170537;}', 1622174137);
INSERT INTO `ims_core_sessions` VALUES ('bfb2c4956d5a7b0af369604cb568332a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Q2hy\";i:1622170657;}', 1622174257);
INSERT INTO `ims_core_sessions` VALUES ('491053274e4ce6b8a029f525dd201db9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"P0I1\";i:1622170657;}', 1622174257);
INSERT INTO `ims_core_sessions` VALUES ('f7978bc91a26dab7f141534e77e009cd', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eBt6\";i:1622170777;}', 1622174377);
INSERT INTO `ims_core_sessions` VALUES ('942539b3e16fcb2dc95f1a56b44df4f8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M2Po\";i:1622170897;}', 1622174497);
INSERT INTO `ims_core_sessions` VALUES ('ea5cd05bba103ca5c0f368776e41fd76', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gVVE\";i:1622171017;}', 1622174617);
INSERT INTO `ims_core_sessions` VALUES ('ada3a55c5b103130564c789957f2d8d5', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g9vV\";i:1622171017;}', 1622174617);
INSERT INTO `ims_core_sessions` VALUES ('1d330f78be7eb1f0156bfef9346e3a3e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Cdz3\";i:1622171137;}', 1622174737);
INSERT INTO `ims_core_sessions` VALUES ('f7ec223f744514a3a7e5ebc820ec0c03', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Xq6y\";i:1622171257;}', 1622174857);
INSERT INTO `ims_core_sessions` VALUES ('29cfb63fc0d55a2227da37cdb775d5eb', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZtR0\";i:1622171377;}', 1622174977);
INSERT INTO `ims_core_sessions` VALUES ('752aaeabfd84596314c1cf2c0af7123b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GqMI\";i:1622171377;}', 1622174977);
INSERT INTO `ims_core_sessions` VALUES ('0b69675deb1c0179d381b7715fe81946', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZGNz\";i:1622171497;}', 1622175097);
INSERT INTO `ims_core_sessions` VALUES ('9abde8e71497133d4a5464fd30f4b748', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"e5vm\";i:1622171617;}', 1622175217);
INSERT INTO `ims_core_sessions` VALUES ('40b56b8b352d8db99087c06e7ebae50c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U9kT\";i:1622171737;}', 1622175337);
INSERT INTO `ims_core_sessions` VALUES ('1ed636aea3fd7c52d5f5350b84ef174a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"LVdm\";i:1622171737;}', 1622175337);
INSERT INTO `ims_core_sessions` VALUES ('94b6ffefd5415f62780080b9f24d8d51', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Lk1K\";i:1622171857;}', 1622175457);
INSERT INTO `ims_core_sessions` VALUES ('c9ed30bf62792611c5454d8094124de4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Vbgp\";i:1622171977;}', 1622175577);
INSERT INTO `ims_core_sessions` VALUES ('05bfb7e32a59542daf9b06595e24b643', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"b1KQ\";i:1622172097;}', 1622175697);
INSERT INTO `ims_core_sessions` VALUES ('bbe256fdd399d26a35d47fc0ce7e979c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p19T\";i:1622172097;}', 1622175697);
INSERT INTO `ims_core_sessions` VALUES ('1ab61ae5f57a07601502081fb8633363', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GZTM\";i:1622172217;}', 1622175817);
INSERT INTO `ims_core_sessions` VALUES ('ad9253dd13d6740145b862d8501b1610', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VX9U\";i:1622172337;}', 1622175937);
INSERT INTO `ims_core_sessions` VALUES ('e7e277b317787a0769e287fae4c537f4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yLGv\";i:1622172457;}', 1622176057);
INSERT INTO `ims_core_sessions` VALUES ('c6fab7a5d243601abed42f0fed3896f0', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w2J5\";i:1622172457;}', 1622176057);
INSERT INTO `ims_core_sessions` VALUES ('d0bb0e18b68673d4406e33078446956e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ApSj\";i:1622172577;}', 1622176177);
INSERT INTO `ims_core_sessions` VALUES ('e819ee1cb6b97b78f7f426eabedc57fa', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UJ2E\";i:1622172697;}', 1622176297);
INSERT INTO `ims_core_sessions` VALUES ('94792e982d94b0e1c070f6be0ce5baab', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kwjE\";i:1622172817;}', 1622176417);
INSERT INTO `ims_core_sessions` VALUES ('8e2180314d0e46d8e610b393a8427437', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fw2c\";i:1622172817;}', 1622176417);
INSERT INTO `ims_core_sessions` VALUES ('1592be9ceef9ec10c05231a3aa241041', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f1Zy\";i:1622172937;}', 1622176537);
INSERT INTO `ims_core_sessions` VALUES ('bc400e84b0b3fe4031ff2783df08363d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"WzGd\";i:1622173057;}', 1622176657);
INSERT INTO `ims_core_sessions` VALUES ('5d936af364f1202f437b417eee2ec6b1', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"A9sS\";i:1622173177;}', 1622176777);
INSERT INTO `ims_core_sessions` VALUES ('0cff9140dcd1562591cfb0f025b74188', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iq4z\";i:1622173177;}', 1622176777);
INSERT INTO `ims_core_sessions` VALUES ('22c9db523077e385f36181d6d7e19d51', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ui0S\";i:1622173297;}', 1622176897);
INSERT INTO `ims_core_sessions` VALUES ('69008bcac25f2f05184f12dc83c03db4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M8W7\";i:1622173417;}', 1622177017);
INSERT INTO `ims_core_sessions` VALUES ('db22b1f81d940e856072985c2a6b68c4', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tk59\";i:1622173537;}', 1622177137);
INSERT INTO `ims_core_sessions` VALUES ('38dd5900240688a94a12df85bf9d2b05', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BD5w\";i:1622173537;}', 1622177137);
INSERT INTO `ims_core_sessions` VALUES ('ebc971c1206fd013b7e78dae2364053e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GMLl\";i:1622173657;}', 1622177257);
INSERT INTO `ims_core_sessions` VALUES ('6d6ee4ce14512375c25d6067d4c541a8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pqJt\";i:1622173777;}', 1622177377);
INSERT INTO `ims_core_sessions` VALUES ('0588b2d0bfb19f896a875fb71f8d960e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AGpL\";i:1622173897;}', 1622177497);
INSERT INTO `ims_core_sessions` VALUES ('f767d28ea9517dfffbea89d5220a888a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hV6r\";i:1622173897;}', 1622177497);
INSERT INTO `ims_core_sessions` VALUES ('8710f2e44c5ecc064be303929e485f63', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"q36v\";i:1622174017;}', 1622177617);
INSERT INTO `ims_core_sessions` VALUES ('23e40ca82406dcbb3d49bae5d16bf64a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qoKv\";i:1622174137;}', 1622177737);
INSERT INTO `ims_core_sessions` VALUES ('7079ad17af8d4597793da27ecf781090', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CW4i\";i:1622174257;}', 1622177857);
INSERT INTO `ims_core_sessions` VALUES ('d7a10570d823775441f93e87ac54f72d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ibBV\";i:1622174257;}', 1622177857);
INSERT INTO `ims_core_sessions` VALUES ('cb612e64fb554cf60f3be3f344897d23', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r1dY\";i:1622174377;}', 1622177977);
INSERT INTO `ims_core_sessions` VALUES ('f12534ef27dad65659d660d449fee31d', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Gu1K\";i:1622174497;}', 1622178097);
INSERT INTO `ims_core_sessions` VALUES ('78ca27a797a9fc407b75dbbc1aed7e2a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ps18\";i:1622174617;}', 1622178217);
INSERT INTO `ims_core_sessions` VALUES ('8e1213855b1003b8522969f6e0669720', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JsuK\";i:1622174617;}', 1622178217);
INSERT INTO `ims_core_sessions` VALUES ('135e794a5e2dba6756601f6a36c9ca8a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YEZ6\";i:1622174737;}', 1622178337);
INSERT INTO `ims_core_sessions` VALUES ('ef6cbe2950f4b555e766c77ba2b4ac3a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Nicb\";i:1622174857;}', 1622178457);
INSERT INTO `ims_core_sessions` VALUES ('7ab0b829a9839228d98c161effcbb4f5', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Yp4P\";i:1622174977;}', 1622178577);
INSERT INTO `ims_core_sessions` VALUES ('2ed619e4a446ad6b724bd1945153ee80', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qYZ9\";i:1622174977;}', 1622178577);
INSERT INTO `ims_core_sessions` VALUES ('a3531e5d925b35a71814d146b547f473', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Jsg2\";i:1622175097;}', 1622178697);
INSERT INTO `ims_core_sessions` VALUES ('5c2de898a91226849fe7c9d86944b432', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"n92a\";i:1622175217;}', 1622178817);
INSERT INTO `ims_core_sessions` VALUES ('22be8498f52e8c7deace5bbce4cc494c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"chg6\";i:1622175337;}', 1622178937);
INSERT INTO `ims_core_sessions` VALUES ('0061b2dd58c3d0addf9008e103deecb0', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l5iK\";i:1622175337;}', 1622178937);
INSERT INTO `ims_core_sessions` VALUES ('600b66996444b649e0622a8dac27f234', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hw2w\";i:1622175457;}', 1622179057);
INSERT INTO `ims_core_sessions` VALUES ('c53637f54494391af7ffc1c1eb657446', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CSz1\";i:1622175577;}', 1622179177);
INSERT INTO `ims_core_sessions` VALUES ('6840178e196b976b5578fad137db74d3', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OsZ1\";i:1622175697;}', 1622179297);
INSERT INTO `ims_core_sessions` VALUES ('8d96f5e0abf6415b399b0756b83aaf29', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AFF2\";i:1622175697;}', 1622179297);
INSERT INTO `ims_core_sessions` VALUES ('9c8dc983271f45f4911def8dc652acbc', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"E12R\";i:1622175817;}', 1622179417);
INSERT INTO `ims_core_sessions` VALUES ('773ebe7a984346819be861749e872e3a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iDZ4\";i:1622175937;}', 1622179537);
INSERT INTO `ims_core_sessions` VALUES ('2c9bfd7323b3bf1d8a0ebd23e126b85e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vGOj\";i:1622176057;}', 1622179657);
INSERT INTO `ims_core_sessions` VALUES ('6d7b3004df20259eeae128ce9781bcb8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gKgb\";i:1622176057;}', 1622179657);
INSERT INTO `ims_core_sessions` VALUES ('1daf92262f2d1d2ca6cc80a04c59cbbe', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u2o7\";i:1622176177;}', 1622179777);
INSERT INTO `ims_core_sessions` VALUES ('db20465800b8e7350db76df20036dd6a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aiUE\";i:1622176297;}', 1622179897);
INSERT INTO `ims_core_sessions` VALUES ('c9d152ba578da11738d51e1e45208faf', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"C27e\";i:1622176418;}', 1622180018);
INSERT INTO `ims_core_sessions` VALUES ('10ee3e281759ef415fa09c2fc8b44e47', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"e4NF\";i:1622176418;}', 1622180018);
INSERT INTO `ims_core_sessions` VALUES ('dc7d216bcf87344fd01e9df86280a1bc', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"PRiv\";i:1622176537;}', 1622180137);
INSERT INTO `ims_core_sessions` VALUES ('6412684c8870dab45c4bf24bc8f7ffe9', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wFXA\";i:1622176657;}', 1622180257);
INSERT INTO `ims_core_sessions` VALUES ('acb2294f9ac6eb8ba10666d2d8f10136', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aDU0\";i:1622176777;}', 1622180377);
INSERT INTO `ims_core_sessions` VALUES ('f11f0ead3058911d001bbe53511235b3', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dGXU\";i:1622176777;}', 1622180377);
INSERT INTO `ims_core_sessions` VALUES ('475259e312bb3cbaa17b19d0a9278c0a', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l646\";i:1622176897;}', 1622180497);
INSERT INTO `ims_core_sessions` VALUES ('247124ff7d1ecedae730d785fb4517b7', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"K4b6\";i:1622177017;}', 1622180617);
INSERT INTO `ims_core_sessions` VALUES ('ecd2a15beb4dacc9197c1e1669505a85', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"b0uU\";i:1622177137;}', 1622180737);
INSERT INTO `ims_core_sessions` VALUES ('22dbe0e7ae30859d177e380742634b11', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Tx3U\";i:1622177137;}', 1622180737);
INSERT INTO `ims_core_sessions` VALUES ('b55b056ebb484268487f149f7a796993', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZCKm\";i:1622177257;}', 1622180857);
INSERT INTO `ims_core_sessions` VALUES ('d44443418c4a70e553eee72a1f986a35', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UA57\";i:1622177377;}', 1622180977);
INSERT INTO `ims_core_sessions` VALUES ('f7243203971abe52abc5a1c2fd7f9896', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Vkck\";i:1622177497;}', 1622181097);
INSERT INTO `ims_core_sessions` VALUES ('e2ec2f5d5edcb0dfa36b67309bdcea99', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V0tL\";i:1622177498;}', 1622181098);
INSERT INTO `ims_core_sessions` VALUES ('9d9e965281bb87f74c7d495e249b01e1', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J5Kk\";i:1622177617;}', 1622181217);
INSERT INTO `ims_core_sessions` VALUES ('78fdbd7da7e3adea0db08a5cedfc9ecf', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KGym\";i:1622177737;}', 1622181337);
INSERT INTO `ims_core_sessions` VALUES ('982879b469c797e32147870198fd9b1b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CC97\";i:1622177857;}', 1622181457);
INSERT INTO `ims_core_sessions` VALUES ('c18d5a9635f7d67e1444ffbea895c9d5', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MsG0\";i:1622177858;}', 1622181458);
INSERT INTO `ims_core_sessions` VALUES ('b00e6944956b81e5220385db0dfe76e8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yvRC\";i:1622177977;}', 1622181577);
INSERT INTO `ims_core_sessions` VALUES ('80730dd47ed9907b9ea97aba03611d40', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"WpTZ\";i:1622178097;}', 1622181697);
INSERT INTO `ims_core_sessions` VALUES ('328a7b336f53a0bb9100e6ac767cdfa1', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"m4Zs\";i:1622178218;}', 1622181818);
INSERT INTO `ims_core_sessions` VALUES ('84e77290adeb286f24927cee0d2e9379', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l7Ii\";i:1622178218;}', 1622181818);
INSERT INTO `ims_core_sessions` VALUES ('af0ee8c6b6f393d95668170e5ec35839', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Yq7c\";i:1622178337;}', 1622181937);
INSERT INTO `ims_core_sessions` VALUES ('2ad3e418da6fb97a3048021b0aa84f2c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GkPo\";i:1622178457;}', 1622182057);
INSERT INTO `ims_core_sessions` VALUES ('c4baebd4cc705d0055cc7464fe606180', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r1gw\";i:1622178578;}', 1622182178);
INSERT INTO `ims_core_sessions` VALUES ('053092c06a38ab56997c6c0db38ea90b', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QrxF\";i:1622178578;}', 1622182178);
INSERT INTO `ims_core_sessions` VALUES ('31861d7280d9537fd66e649edda87130', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EXX8\";i:1622178698;}', 1622182298);
INSERT INTO `ims_core_sessions` VALUES ('3f17972d101569ca12cbf8a8d2299b17', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M9ln\";i:1622178818;}', 1622182418);
INSERT INTO `ims_core_sessions` VALUES ('032faf64994449389828ea07237ccb9f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i759\";i:1622178938;}', 1622182538);
INSERT INTO `ims_core_sessions` VALUES ('0e9622505f2eac2b9fb15b24a5273d70', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u7L7\";i:1622178938;}', 1622182538);
INSERT INTO `ims_core_sessions` VALUES ('737892e78d4f3fae57427f332388987c', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QCd8\";i:1622179058;}', 1622182658);
INSERT INTO `ims_core_sessions` VALUES ('9d2ecec69a3d16ff5cd4d65926b6b325', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gIIr\";i:1622179178;}', 1622182778);
INSERT INTO `ims_core_sessions` VALUES ('3fac255d61f86d5ee87ca27278da9cc5', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H6JY\";i:1622179298;}', 1622182898);
INSERT INTO `ims_core_sessions` VALUES ('e04bc0658f89b1ff03be514dd95a4e4e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D5Xj\";i:1622179298;}', 1622182898);
INSERT INTO `ims_core_sessions` VALUES ('17a63f8c8a4703b90ce4458ba0be4384', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tzL6\";i:1622179418;}', 1622183018);
INSERT INTO `ims_core_sessions` VALUES ('a5e3922fb530fed840514f76b5ad6994', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wMJZ\";i:1622179538;}', 1622183138);
INSERT INTO `ims_core_sessions` VALUES ('aa5c6bb945c744a6c8021922ecf0ecfc', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TciM\";i:1622179658;}', 1622183258);
INSERT INTO `ims_core_sessions` VALUES ('18c556618d6122b11bbaaaa80e16dd61', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"y00A\";i:1622179658;}', 1622183258);
INSERT INTO `ims_core_sessions` VALUES ('a8dcb2b5ba15a73f279a388fcbb9f092', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i4z4\";i:1622179778;}', 1622183378);
INSERT INTO `ims_core_sessions` VALUES ('37a419e8aa05e9047d4e501ab2dfee08', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gGiE\";i:1622186941;}', 1622190541);
INSERT INTO `ims_core_sessions` VALUES ('574aadf950ed7bafbe357f3771954975', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"b3B3\";i:1622186941;}', 1622190541);
INSERT INTO `ims_core_sessions` VALUES ('13aca6a2b42038a3f3845ccab07345f8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"X4GS\";i:1623222500;}', 1623226100);
INSERT INTO `ims_core_sessions` VALUES ('8ce4fa5c0cb26599d12c1e4796f7f29e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"d45K\";i:1623222500;}', 1623226100);
INSERT INTO `ims_core_sessions` VALUES ('92d58de6a14541aba248f0e8a4f883fd', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"E0Bx\";i:1623222594;}', 1623226194);
INSERT INTO `ims_core_sessions` VALUES ('fc2efed3e4ca3c63d9ee0e4feacdb7be', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Lx2D\";i:1623222674;}', 1623226274);
INSERT INTO `ims_core_sessions` VALUES ('93ed2f97d143b5a46ea5e594c238951e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YzTa\";i:1623222743;}', 1623226343);
INSERT INTO `ims_core_sessions` VALUES ('30d09f50d8306c80f258160b9de82845', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"alg2\";i:1623222884;}', 1623226484);
INSERT INTO `ims_core_sessions` VALUES ('d6db0df595c90d3b7882ede27d9f1b16', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oxu6\";i:1623222884;}', 1623226484);
INSERT INTO `ims_core_sessions` VALUES ('6b0ab21971203fe8b246b97d8a5d9aa8', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CCzf\";i:1623222958;}', 1623226558);
INSERT INTO `ims_core_sessions` VALUES ('2667d1829729db71ee50292d7df4e7d6', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kZmF\";i:1623223024;}', 1623226624);
INSERT INTO `ims_core_sessions` VALUES ('5edc0408c5e157edf00ee8ee11285b57', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vX5o\";i:1623830271;}', 1623833871);
INSERT INTO `ims_core_sessions` VALUES ('7f4d66fca0573f5cc515878b8e09ef3f', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bNM9\";i:1623830271;}', 1623833871);
INSERT INTO `ims_core_sessions` VALUES ('48d93db10230835c1257a9e15bb92838', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Wa79\";i:1623830344;}', 1623833944);
INSERT INTO `ims_core_sessions` VALUES ('ab77c8ffa05bfd81e940470d8417357e', 1, '47.242.30.191', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BTO1\";i:1623830434;}', 1623834034);
INSERT INTO `ims_core_sessions` VALUES ('77a29574077b1bb211a52f449e88228e', 1, '8.212.19.100', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JFIN\";i:1632404098;}', 1632407698);
INSERT INTO `ims_core_sessions` VALUES ('5f8f266def2c6f01ea6108239eedd72a', 1, '8.212.19.100', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"WCxG\";i:1632404098;}', 1632407698);
INSERT INTO `ims_core_sessions` VALUES ('866689952fec3a9dccc0ed71a6fe3d43', 1, '47.243.231.144', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kyF4\";i:1676627671;}', 1676631271);
INSERT INTO `ims_core_sessions` VALUES ('ce742e7f30e1cc553e0d2c5e6b806fd5', 1, '47.243.231.144', 'acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M8iJ\";i:1676627672;}', 1676631272);

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
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_modules_ignore
-- ----------------------------
INSERT INTO `ims_modules_ignore` VALUES (35, 'we7_wmall', '');

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
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM AUTO_INCREMENT = 240 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_category
-- ----------------------------

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
INSERT INTO `ims_tiny_wmall_config` VALUES (521, 1, '', '');

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
  `price` decimal(10, 2) NULL,
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
  `price` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `box_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `is_options` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unitname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '份',
  `total` int(10) NOT NULL DEFAULT 0,
  `total_update_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `sailed` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_hot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slides` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_total` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comment_good` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `print_label` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attrs` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `old_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
  `svip_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `svip_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
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
) ENGINE = MyISAM AUTO_INCREMENT = 15988 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_goods
-- ----------------------------

-- ----------------------------
-- Table structure for ims_tiny_wmall_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_tiny_wmall_goods_category`;
CREATE TABLE `ims_tiny_wmall_goods_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `min_fee` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `elemeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT 0,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
) ENGINE = MyISAM AUTO_INCREMENT = 2468 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_goods_category
-- ----------------------------

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
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total` int(10) NOT NULL DEFAULT -1,
  `displayorder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `total_warning` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `svip_price` decimal(10, 2) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 815 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_goods_options
-- ----------------------------

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
) ENGINE = MyISAM AUTO_INCREMENT = 1238 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ims_tiny_wmall_member_footmark
-- ----------------------------

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
) ENGINE = MyISAM AUTO_INCREMENT = 5579 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_members
-- ----------------------------

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
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_news_category
-- ----------------------------

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
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_operate_log
-- ----------------------------
INSERT INTO `ims_tiny_wmall_operate_log` VALUES (32, 1, '平台创始人', 1, 'founder', 2000, '平台后台添加商户(商户id:1308)', '106.122.239.2', '', '', 1618919341);

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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniacid`(`uniacid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `uniacid_sid_uid`(`uniacid`, `sid`, `uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9334 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_order_cart
-- ----------------------------

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
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `business_hours` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_in_business` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_price` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `delivery_free_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pack_price` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `delivery_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1:商家配送,2:到店自提,3:两种都支持',
  `delivery_type_023wx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_type_mine` int(10) NOT NULL,
  `delivery_within_days` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delivery_reserve_days` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `serve_radius` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `serve_fee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumbs` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
  `is_assign` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_reserve` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_meal` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `forward_mode` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `assign_mode` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `assign_qrcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delivery_mode` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `order_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单备注',
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
) ENGINE = MyISAM AUTO_INCREMENT = 1309 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_store
-- ----------------------------
INSERT INTO `ims_tiny_wmall_store` VALUES (1308, 1, '||', '1', '', '1', 'a:0:{}', 1, '', 0, '0', 0, 0.00, 0, 1, 0, 0, 0, 0, '0.00', '', '', '', '', '', '', 1, 0, '', '', '', '1', '', 0, 0, 10, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', 1, 1618919341, 'index', 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, '', 1, '', 1, '', 1, 'a:0:{}', '', '', 0, 0, 1, 0, '', 'jzG9mm4PCAroU7PPcwcuCzo4zoU2uZm9', 0, 0, 0, '', '0', 0, 0, '', '0', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, '0', '', 0, 0, 0, 0, 0, '', 0, '');

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
) ENGINE = MyISAM AUTO_INCREMENT = 1376 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_store_account
-- ----------------------------
INSERT INTO `ims_tiny_wmall_store_account` VALUES (1375, 1, 1308, 0.00, 0, '', 0, 0, '', 'N;', 'N;', 0, 'N;', '', '', 'N;', '', 0, 0, '', '', '');

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_tiny_wmall_system_log
-- ----------------------------

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
INSERT INTO `ims_uni_settings` VALUES (1, 'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}', 'a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}', 0, 'a:1:{s:6:\"status\";i:0;}', 'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}', 'a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}', 'a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}', '', '', '', 'a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}', '', 1, 0, '', '', 0, '', 0, 0, '', '', '', 0, 0, '', NULL, NULL);

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ims_uni_verifycode
-- ----------------------------

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
INSERT INTO `ims_users` VALUES (1, 0, 1, 0, 'admin', '23c844eea7e8b368bc89daf14605941ec8dfe5a9', '1afbd422', 0, 0, 1618919186, '', 1676627664, '110.87.88.129', '', 0, 0, 0, '', 0, 0);

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
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
