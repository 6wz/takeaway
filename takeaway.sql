/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.26 : Database - takeaway
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `ims_account` */

DROP TABLE IF EXISTS `ims_account`;

CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_account` */

insert  into `ims_account`(`acid`,`uniacid`,`hash`,`type`,`isconnect`,`isdeleted`,`endtime`) values (1,1,'uRr8qvQV',1,0,0,0);

/*Table structure for table `ims_account_aliapp` */

DROP TABLE IF EXISTS `ims_account_aliapp`;

CREATE TABLE `ims_account_aliapp` (
  `acid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `key` varchar(16) NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_account_aliapp` */

/*Table structure for table `ims_account_phoneapp` */

DROP TABLE IF EXISTS `ims_account_phoneapp`;

CREATE TABLE `ims_account_phoneapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_account_phoneapp` */

/*Table structure for table `ims_account_webapp` */

DROP TABLE IF EXISTS `ims_account_webapp`;

CREATE TABLE `ims_account_webapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_account_webapp` */

/*Table structure for table `ims_account_wechats` */

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
  PRIMARY KEY (`acid`) USING BTREE,
  KEY `idx_key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_account_wechats` */

insert  into `ims_account_wechats`(`acid`,`uniacid`,`token`,`encodingaeskey`,`level`,`name`,`account`,`original`,`signature`,`country`,`province`,`city`,`username`,`password`,`lastupdate`,`key`,`secret`,`styleid`,`subscribeurl`,`auth_refresh_token`) values (1,1,'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP','',1,'we7team','','','','','','','','',0,'','',1,'','');

/*Table structure for table `ims_account_wxapp` */

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
  PRIMARY KEY (`acid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_account_wxapp` */

/*Table structure for table `ims_account_xzapp` */

DROP TABLE IF EXISTS `ims_account_xzapp`;

CREATE TABLE `ims_account_xzapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `original` varchar(50) NOT NULL,
  `lastupdate` int(10) NOT NULL,
  `styleid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `xzapp_id` varchar(30) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `key` varchar(80) NOT NULL,
  `secret` varchar(80) NOT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_account_xzapp` */

/*Table structure for table `ims_article_category` */

DROP TABLE IF EXISTS `ims_article_category`;

CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_article_category` */

/*Table structure for table `ims_article_comment` */

DROP TABLE IF EXISTS `ims_article_comment`;

CREATE TABLE `ims_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `is_like` tinyint(1) NOT NULL,
  `is_reply` tinyint(1) NOT NULL,
  `like_num` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `articleid` (`articleid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_article_comment` */

/*Table structure for table `ims_article_news` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `title` (`title`) USING BTREE,
  KEY `cateid` (`cateid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_article_news` */

/*Table structure for table `ims_article_notice` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `title` (`title`) USING BTREE,
  KEY `cateid` (`cateid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_article_notice` */

/*Table structure for table `ims_article_unread_notice` */

DROP TABLE IF EXISTS `ims_article_unread_notice`;

CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `notice_id` (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_article_unread_notice` */

/*Table structure for table `ims_attachment_group` */

DROP TABLE IF EXISTS `ims_attachment_group`;

CREATE TABLE `ims_attachment_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_attachment_group` */

/*Table structure for table `ims_basic_reply` */

DROP TABLE IF EXISTS `ims_basic_reply`;

CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_basic_reply` */

/*Table structure for table `ims_business` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_lat_lng` (`lng`,`lat`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_business` */

/*Table structure for table `ims_core_attachment` */

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
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_attachment` */

insert  into `ims_core_attachment`(`id`,`uniacid`,`uid`,`filename`,`attachment`,`type`,`createtime`,`module_upload_dir`,`group_id`) values (1,1,1,'YxHP1XP989W9NX7j18TIN10mQx8771','images/1/2023/03/YxHP1XP989W9NX7j18TIN10mQx8771.jpg',1,1677850203,'',NULL),(2,1,1,'KsjCSzfmfGsssacZ0eSMjcFFjRa0J5','images/1/2023/03/KsjCSzfmfGsssacZ0eSMjcFFjRa0J5.jpg',1,1678111499,'',NULL),(3,1,1,'jU1gfsYbSUj1VV2YWb1KkkX3vXNJyk','images/1/2023/03/jU1gfsYbSUj1VV2YWb1KkkX3vXNJyk.jpg',1,1678111646,'',NULL),(4,1,1,'ov4gmNBAaI9X9GmRArgZg79giij93q','images/1/2023/03/ov4gmNBAaI9X9GmRArgZg79giij93q.jpg',1,1678111663,'',NULL),(5,1,1,'Hyz3GT9BUHV88Z93toBRGVpvOHz8O8','images/1/2023/03/Hyz3GT9BUHV88Z93toBRGVpvOHz8O8.jpg',1,1678111685,'',NULL),(6,1,1,'H06DKvEmwqWjE06w0D9B6GDQW0qbll','images/1/2023/03/H06DKvEmwqWjE06w0D9B6GDQW0qbll.jpg',1,1678114070,'',NULL);

/*Table structure for table `ims_core_cache` */

DROP TABLE IF EXISTS `ims_core_cache`;

CREATE TABLE `ims_core_cache` (
  `key` varchar(100) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_cache` */

insert  into `ims_core_cache`(`key`,`value`) values ('setting','a:5:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:8:\"platform\";a:5:{s:5:\"token\";s:32:\"y3P9rRUr3M11415nJxUjR1xZ4j5gsj13\";s:14:\"encodingaeskey\";s:43:\"nxhc4CgczJEJSZD0zzp89UuHEjxR3E08pG4646xPN6S\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}}'),('we7:system_frame:0','a:12:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:3:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:5:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:7:\"profile\";a:3:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:32:\"./index.php?c=statistics&a=fans&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:12:\"wxapp_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:12:\"wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"parameter_setting\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:13:\"wxapp_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:4:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:3:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"域名访问设置\";s:3:\"url\";s:35:\"./index.php?c=webapp&a=bind-domain&\";s:15:\"permission_name\";s:18:\"webapp_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:13:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=account_support\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=wxapp_support\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=welcome_support\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=webapp_support\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:61:\"./index.php?c=module&a=manage-system&support=phoneapp_support\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"xzapp\";a:2:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"menu\";a:2:{s:12:\"system_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"熊掌号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=9\";s:15:\"permission_name\";s:12:\"system_xzapp\";s:4:\"icon\";s:11:\"wi wi-xzapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"system_module_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"熊掌号应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=xzapp_support\";s:15:\"permission_name\";s:19:\"system_module_xzapp\";s:4:\"icon\";s:17:\"wi wi-xzapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"aliapp\";a:2:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"menu\";a:2:{s:13:\"system_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"支付宝小程序\";s:3:\"url\";s:46:\"./index.php?c=account&a=manage&account_type=11\";s:15:\"permission_name\";s:13:\"system_aliapp\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:24:\"支付宝小程序应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=aliapp_support\";s:15:\"permission_name\";s:20:\"system_module_aliapp\";s:4:\"icon\";s:18:\"wi wi-aliapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:12;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:13;}}'),('we7:setting','a:4:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}}'),('we7:userbasefields','a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('we7:usersfields','a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('we7:module_receive_enable','a:0:{}'),('we7:module_info:we7_wmall','a:32:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:9:\"we7_wmall\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:14:\"LL外卖跑腿\";s:7:\"version\";s:6:\"18.3.0\";s:7:\"ability\";s:109:\"微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统|跑腿|随意购|配送员\";s:11:\"description\";s:82:\"微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统\";s:6:\"author\";s:12:\"宇艺网络\";s:3:\"url\";s:20:\"http://wwww.y198.cn/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:2:{i:0;s:8:\"location\";i:1;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:13:\"title_initial\";s:1:\"L\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"1\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:75:\"http://lalademo.hjout.zeroproject.cn/addons/we7_wmall/icon.jpg?v=1618919316\";s:7:\"preview\";s:65:\"http://lalademo.hjout.zeroproject.cn/addons/we7_wmall/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:store','a:32:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/store/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/store/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:wxcard','a:32:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:72:\"http://lalademo.hjout.zeroproject.cn/addons/wxcard/icon.jpg?v=1618919293\";s:7:\"preview\";s:62:\"http://lalademo.hjout.zeroproject.cn/addons/wxcard/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:chats','a:32:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/chats/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/chats/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:voice','a:32:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/voice/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/voice/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:video','a:32:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/video/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/video/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:images','a:32:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:72:\"http://lalademo.hjout.zeroproject.cn/addons/images/icon.jpg?v=1618919293\";s:7:\"preview\";s:62:\"http://lalademo.hjout.zeroproject.cn/addons/images/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:custom','a:32:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:72:\"http://lalademo.hjout.zeroproject.cn/addons/custom/icon.jpg?v=1618919293\";s:7:\"preview\";s:62:\"http://lalademo.hjout.zeroproject.cn/addons/custom/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:recharge','a:32:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:74:\"http://lalademo.hjout.zeroproject.cn/addons/recharge/icon.jpg?v=1618919293\";s:7:\"preview\";s:64:\"http://lalademo.hjout.zeroproject.cn/addons/recharge/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:userapi','a:32:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:73:\"http://lalademo.hjout.zeroproject.cn/addons/userapi/icon.jpg?v=1618919293\";s:7:\"preview\";s:63:\"http://lalademo.hjout.zeroproject.cn/addons/userapi/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:music','a:32:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/music/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/music/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:news','a:32:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:70:\"http://lalademo.hjout.zeroproject.cn/addons/news/icon.jpg?v=1618919293\";s:7:\"preview\";s:60:\"http://lalademo.hjout.zeroproject.cn/addons/news/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:module_info:basic','a:32:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"0\";s:11:\"app_support\";s:1:\"0\";s:14:\"aliapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:71:\"http://lalademo.hjout.zeroproject.cn/addons/basic/icon.jpg?v=1618919293\";s:7:\"preview\";s:61:\"http://lalademo.hjout.zeroproject.cn/addons/basic/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}}'),('we7:unisetting:1','a:29:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";N;s:15:\"attachment_size\";N;}'),('we7:uniaccount:1','a:37:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:9:\"type_sign\";s:7:\"account\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:29:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";N;s:15:\"attachment_size\";N;}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:77:\"http://lalademo.hjout.zeroproject.cn/attachment/headimg_1.jpg?time=1618919298\";s:6:\"qrcode\";s:76:\"http://lalademo.hjout.zeroproject.cn/attachment/qrcode_1.jpg?time=1618919298\";s:9:\"type_name\";s:9:\"公众号\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:last_account:c7lr4','i:1;'),('we7:user_modules:1','a:13:{s:9:\"we7_wmall\";s:3:\"all\";s:5:\"store\";s:3:\"all\";s:6:\"wxcard\";s:3:\"all\";s:5:\"chats\";s:3:\"all\";s:5:\"voice\";s:3:\"all\";s:5:\"video\";s:3:\"all\";s:6:\"images\";s:3:\"all\";s:6:\"custom\";s:3:\"all\";s:8:\"recharge\";s:3:\"all\";s:7:\"userapi\";s:3:\"all\";s:5:\"music\";s:3:\"all\";s:4:\"news\";s:3:\"all\";s:5:\"basic\";s:3:\"all\";}'),('we7:last_account_type','s:7:\"account\";'),('we7:system_frame:1','a:12:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:5:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:2:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:32:\"./index.php?c=statistics&a=fans&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:12:\"wxapp_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:12:\"wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"parameter_setting\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:13:\"wxapp_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:15:\"statistics_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:15:\"statistics_fans\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:4:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:3:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"域名访问设置\";s:3:\"url\";s:35:\"./index.php?c=webapp&a=bind-domain&\";s:15:\"permission_name\";s:18:\"webapp_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:3:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:14:\"statistics_app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:0;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:13:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=account_support\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=wxapp_support\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=welcome_support\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=webapp_support\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:61:\"./index.php?c=module&a=manage-system&support=phoneapp_support\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"xzapp\";a:2:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"menu\";a:2:{s:12:\"system_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"熊掌号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=9\";s:15:\"permission_name\";s:12:\"system_xzapp\";s:4:\"icon\";s:11:\"wi wi-xzapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"system_module_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"熊掌号应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=xzapp_support\";s:15:\"permission_name\";s:19:\"system_module_xzapp\";s:4:\"icon\";s:17:\"wi wi-xzapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"aliapp\";a:2:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"menu\";a:2:{s:13:\"system_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"支付宝小程序\";s:3:\"url\";s:46:\"./index.php?c=account&a=manage&account_type=11\";s:15:\"permission_name\";s:13:\"system_aliapp\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_aliapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:24:\"支付宝小程序应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=aliapp_support\";s:15:\"permission_name\";s:20:\"system_module_aliapp\";s:4:\"icon\";s:18:\"wi wi-aliapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:12;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:13;}}'),('we7:unimodules:1:','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:9:\"we7_wmall\";a:1:{s:4:\"name\";s:9:\"we7_wmall\";}}'),('we7:module_setting:basic:1','a:1:{s:6:\"module\";s:5:\"basic\";}'),('we7:module_setting:news:1','a:1:{s:6:\"module\";s:4:\"news\";}'),('we7:module_setting:music:1','a:1:{s:6:\"module\";s:5:\"music\";}'),('we7:module_setting:userapi:1','a:1:{s:6:\"module\";s:7:\"userapi\";}'),('we7:module_setting:recharge:1','a:1:{s:6:\"module\";s:8:\"recharge\";}'),('we7:module_setting:custom:1','a:1:{s:6:\"module\";s:6:\"custom\";}'),('we7:module_setting:images:1','a:1:{s:6:\"module\";s:6:\"images\";}'),('we7:module_setting:video:1','a:1:{s:6:\"module\";s:5:\"video\";}'),('we7:module_setting:voice:1','a:1:{s:6:\"module\";s:5:\"voice\";}'),('we7:module_setting:chats:1','a:1:{s:6:\"module\";s:5:\"chats\";}'),('we7:module_setting:wxcard:1','a:1:{s:6:\"module\";s:6:\"wxcard\";}'),('we7:module_setting:store:1','a:1:{s:6:\"module\";s:5:\"store\";}'),('we7:module_setting:we7_wmall:1','a:1:{s:6:\"module\";s:9:\"we7_wmall\";}'),('we7:stat_todaylock:1','a:1:{s:6:\"expire\";i:1678118641;}'),('we7:unicount:1','s:1:\"1\";'),('checkupgrade:we7_wmall','a:1:{s:10:\"lastupdate\";i:1678115095;}'),('we7:unimodules:1:1','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:9:\"we7_wmall\";a:1:{s:4:\"name\";s:9:\"we7_wmall\";}}'),('we7_wmall:1:task:lock:60','a:1:{s:9:\"starttime\";i:1678116075;}'),('we7_wmall:1:task:lock:120','a:1:{s:9:\"starttime\";i:1678116075;}'),('itime','i:0;'),('we7_wmall:1:task:lock:300','a:1:{s:9:\"starttime\";i:1678115811;}'),('we7_wmall:1:task:lock:3600','a:1:{s:9:\"starttime\";i:1678115065;}'),('we7_wmall:1:task:lock:86400','a:1:{s:9:\"starttime\";i:1678111445;}'),('we7_wmall:0:task:lock:7200','a:1:{s:9:\"starttime\";i:1678111445;}'),('we7:uni_groups','a:1:{i:1;a:12:{s:2:\"id\";s:1:\"1\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:18:\"体验套餐服务\";s:7:\"modules\";a:1:{i:0;s:9:\"we7_wmall\";}s:9:\"templates\";a:0:{}s:7:\"uniacid\";s:1:\"0\";s:3:\"uid\";s:1:\"0\";s:6:\"aliapp\";a:0:{}s:5:\"xzapp\";a:0:{}s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:0:{}}}'),('we7:unimodules:0:','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:9:\"we7_wmall\";a:1:{s:4:\"name\";s:9:\"we7_wmall\";}}'),('we7:last_account:E2clF','i:1;'),('we7:last_account:T0d0b','i:1;'),('we7:last_account:jH9HW','i:1;'),('we7_wmall:deliveryers:1:0','a:0:{}'),('we7:last_account:aexkb','i:1;'),('we7:last_account:cqB3l','i:1;'),('we7:last_account:UwfzG','i:1;'),('we7:last_account:YcAx2','i:1;'),('we7:proxy_wechatpay_account','a:2:{s:7:\"service\";a:0:{}s:6:\"borrow\";a:0:{}}'),('we7:user_accounts:wechats:1','a:1:{i:1;a:8:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:4:\"type\";s:1:\"1\";s:5:\"level\";s:1:\"1\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";}}');

/*Table structure for table `ims_core_cron` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `createtime` (`createtime`) USING BTREE,
  KEY `nextruntime` (`nextruntime`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `cloudid` (`cloudid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_cron` */

/*Table structure for table `ims_core_cron_record` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `tid` (`tid`) USING BTREE,
  KEY `module` (`module`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_cron_record` */

/*Table structure for table `ims_core_job` */

DROP TABLE IF EXISTS `ims_core_job`;

CREATE TABLE `ims_core_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_job` */

/*Table structure for table `ims_core_menu` */

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_menu` */

/*Table structure for table `ims_core_paylog` */

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
  PRIMARY KEY (`plid`) USING BTREE,
  KEY `idx_openid` (`openid`) USING BTREE,
  KEY `idx_tid` (`tid`) USING BTREE,
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `uniontid` (`uniontid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_paylog` */

/*Table structure for table `ims_core_performance` */

DROP TABLE IF EXISTS `ims_core_performance`;

CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_performance` */

/*Table structure for table `ims_core_queue` */

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
  PRIMARY KEY (`qid`) USING BTREE,
  KEY `uniacid` (`uniacid`,`acid`) USING BTREE,
  KEY `module` (`module`) USING BTREE,
  KEY `dateline` (`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_queue` */

/*Table structure for table `ims_core_refundlog` */

DROP TABLE IF EXISTS `ims_core_refundlog`;

CREATE TABLE `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `refund_uniontid` (`refund_uniontid`) USING BTREE,
  KEY `uniontid` (`uniontid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_refundlog` */

/*Table structure for table `ims_core_resource` */

DROP TABLE IF EXISTS `ims_core_resource`;

CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`) USING BTREE,
  KEY `acid` (`uniacid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_resource` */

/*Table structure for table `ims_core_sendsms_log` */

DROP TABLE IF EXISTS `ims_core_sendsms_log`;

CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_sendsms_log` */

/*Table structure for table `ims_core_sessions` */

DROP TABLE IF EXISTS `ims_core_sessions`;

CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_sessions` */

insert  into `ims_core_sessions`(`sid`,`uniacid`,`openid`,`data`,`expiretime`) values ('692c4af0b57db1d8d44ac6c039d9db8c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HY1F\";i:1622163097;}',1622166697),('9c167540f1b82387b51f27594e73a926',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XAfA\";i:1622163097;}',1622166697),('d7878c0add02031b3e94e9635ac03583',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jz88\";i:1622162977;}',1622166577),('209bdb0d47b37db55623ef515f5088f8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Iuvk\";i:1622162857;}',1622166457),('024617e685c370fc611f80897b2963d7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oTR7\";i:1622162737;}',1622166337),('7970f349be80e292da0e8c5fefd48da8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ka8A\";i:1622162737;}',1622166337),('b8798604709fe6b3e662577d8fad305b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"G7A8\";i:1622162617;}',1622166217),('426337a3b0987d7875f6af5f6b60c31b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UZp3\";i:1622162497;}',1622166097),('f3c59fae083154d895fcb3159c0fa916',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Im1M\";i:1622162377;}',1622165977),('731fa4f7a814212880b55f9bab939d76',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i9Z2\";i:1622162377;}',1622165977),('04c4ae6880d51c1e298721d944a8b651',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kLEi\";i:1622162257;}',1622165857),('b64677ce97c2f6e06cf3db10f67ca50d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"k2rH\";i:1622162137;}',1622165737),('9c2451b1b74f671167e7f28a9336fb86',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eLg1\";i:1622162017;}',1622165617),('0ccb340ad9da757b9ead3e2e926f708a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XxxQ\";i:1622162017;}',1622165617),('5940f67acf6b106906e15c071a794d25',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"e3F4\";i:1622161897;}',1622165497),('b6dec0691a2a07ac6a4d560a4b8ae8ef',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lfE9\";i:1622161777;}',1622165377),('5708c871b92139c452e9775f17b84c9f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fRI3\";i:1622161657;}',1622165257),('45ee28de7d054d4b809c0954ac599f45',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QKZj\";i:1622161657;}',1622165257),('c70ee3b40222d6adef3a3bed3e5f8c27',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IPRf\";i:1622161537;}',1622165137),('d0d3584aa8b1fde8d24ef5684be2c410',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xpqj\";i:1622161420;}',1622165020),('4d7e10aca9eff0f032423288d594b7e9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"h9zE\";i:1622161297;}',1622164897),('c9b063f5a202a4029c7353afa9004dab',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vERu\";i:1622161297;}',1622164897),('8d375075080b2ec3280bd9f718dcdf25',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DP8X\";i:1622161177;}',1622164777),('7d39a3ac99e9ea9ba2c3248ba5b42970',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wvGz\";i:1622161057;}',1622164657),('2521664469588c9b4739e0e3cde541d1',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DpQr\";i:1622160937;}',1622164537),('bbd15e8a7f2d2d0be38f726a8126c7a6',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EOWE\";i:1622160937;}',1622164537),('045e4b9393fb0bd250e9f7832f195847',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eC1v\";i:1622160817;}',1622164417),('36f0611224fb06c6fda61da4f1aca974',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hmnP\";i:1622160697;}',1622164297),('968eac4b4ef2b357d3200acd7b0f1bca',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oYcn\";i:1622160577;}',1622164177),('8600967c7d76da2d6571c16d826da5f7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"njpl\";i:1622160577;}',1622164177),('5ea203b34a4495384e61b23ffa71d433',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jrww\";i:1622160457;}',1622164057),('aca73f4986cc06b0d7f7c4c096cc6ec7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"PEa4\";i:1622160337;}',1622163937),('77ca481e66e225efeec41c02af499117',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eGev\";i:1622160217;}',1622163817),('2d64d9273c837843fabcdb1cf7633506',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xfEn\";i:1622160217;}',1622163817),('26c01dedf4728bf0644ff5a004508458',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aMXA\";i:1622160097;}',1622163697),('4788d74ecc45bedf1e3f39dd051fa336',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rNTt\";i:1622159977;}',1622163577),('26921e7cc4cad0823c1c33186e3c2c88',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uFBf\";i:1622159857;}',1622163457),('7947df9cd412f6aa04912d2e96619745',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KFME\";i:1622159857;}',1622163457),('d7d62d3de84f6bc321c7b1a9ad7920c4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ncx9\";i:1622159737;}',1622163337),('9f375029e153d8bfeab68e37133eb664',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Inrv\";i:1622159617;}',1622163217),('c5d02e3217626233206a3e8f114f2162',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xJlV\";i:1622159497;}',1622163097),('364b64258e4481dd39a0a64cadd71001',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TcXw\";i:1622159497;}',1622163097),('bb9af70997eb34ca000f64f87db15902',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RDsC\";i:1622159377;}',1622162977),('62569f8df095242cc1407e00ee24056f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Sn6w\";i:1622159257;}',1622162857),('efee3a154bc65996be853eca4b78f0f4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mO8n\";i:1622159137;}',1622162737),('03f5d1b3784f06b88a5751888cbfbf3e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"A6rM\";i:1622159137;}',1622162737),('0beb8f22a35b22c3fdf2f9072931ba4a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FZnz\";i:1622159017;}',1622162617),('c74d115c8ab9df58bc51926123b771f4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lu8B\";i:1622158897;}',1622162497),('14947b999307efc4bac77d73e17d2773',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YI8H\";i:1622158777;}',1622162377),('00d1d8fe13b03834b946482e36e6c1f6',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"G17i\";i:1622158777;}',1622162377),('b61aa5d1659b6468dbf75e148cd1ced4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RdWi\";i:1622158657;}',1622162257),('becd3937e2b6c7307e3b8a40f0fe1f6d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yhe2\";i:1622158537;}',1622162137),('7b34ed49a68e2ec4fe9aed7e2b918a02',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CNFT\";i:1622158417;}',1622162017),('42e7908a52cdc1d58dca8c2ffb45b88c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i2Su\";i:1622158417;}',1622162017),('cdf32df45a4143a9af8156778aa0c871',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HcF4\";i:1622158297;}',1622161897),('9703b48aa214a1ddea008142c7db2b99',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qPPm\";i:1622158177;}',1622161777),('782761d37669563d692fe1a700601ff1',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hMsA\";i:1622158057;}',1622161657),('48af7686519a64b8d7e476b6dce3bb98',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CCul\";i:1622158057;}',1622161657),('d99180f0ab93dc153308a5a2be68bde4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZOxa\";i:1622157937;}',1622161537),('4490f50a1f84cf7d13eb2214ef52e73f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wom6\";i:1622157817;}',1622161417),('76f1509f0968fcda96baa3ffdcacecad',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aaA4\";i:1622157697;}',1622161297),('c9c72b5b581fb5b693c5a6b5ccd662cc',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"c717\";i:1622157697;}',1622161297),('a46bf73629dda67b70dadb652af79bc3',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mR7C\";i:1622157577;}',1622161177),('6db94e4eb7746dfb718f29aeb32004ed',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Z2Lg\";i:1622157457;}',1622161057),('b64b4ae3d195beb112bf819c89458f28',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dNnV\";i:1622157337;}',1622160937),('91a31a169c4218e8908a9098a4c17c13',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hokI\";i:1622157337;}',1622160937),('c43016b76ff7abbbbc989cb66889d071',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gv7U\";i:1622157217;}',1622160817),('2eda8b3a5c3d58cb656b90a453709c32',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cPwZ\";i:1622157097;}',1622160697),('e7476f9828ffe15134009f5e5b49e957',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MKnV\";i:1622156977;}',1622160577),('ab1d943c1bec8dc5b0290f29d2680d15',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"m7Ta\";i:1622156977;}',1622160577),('e9105074d566604c38dde3d4a8df8d63',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tm4x\";i:1622156857;}',1622160457),('bbd88bb788e53c98602c478a1767e9e7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sH3F\";i:1622156737;}',1622160337),('32808f07220c0ee7830032502085a37b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dwK0\";i:1622156617;}',1622160217),('e6af4c37b0b11cc19efde914be237305',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uRu5\";i:1622156617;}',1622160217),('aa83d696ce7d6163eeb2b7fcdee413da',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JkOP\";i:1622156497;}',1622160097),('b84af955dccfd1a7a766e75a35b823df',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BX1K\";i:1622156377;}',1622159977),('ee734cc6559b8e7ab403631d35c36136',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eB0F\";i:1622156257;}',1622159857),('c48c2589de495afea7cfdf35ccd6a0d4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qjAX\";i:1622156257;}',1622159857),('d173cf0036e4557ff72aab265ee44df0',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XywW\";i:1622156137;}',1622159737),('a9ceb68d140f87d8590ddd678f7f6bf9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Uf4K\";i:1622156017;}',1622159617),('c6148edf64aab66a35dae48e32b7f8d3',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oHUI\";i:1622155897;}',1622159497),('3562989d2b7d5de10a91ac3a044557bc',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J4NH\";i:1622155897;}',1622159497),('6c637f89ade643077c538b836a9e0b3f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OfiF\";i:1622155777;}',1622159377),('d105f9c6b4a1b68dc7c4400e1bc8361e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XgG3\";i:1622155657;}',1622159257),('b6cd0592efc3080e365f2ae2f0e82238',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UsTn\";i:1622155537;}',1622159137),('8d0ba8e31e7e60fec420930a5935ea1c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BNbd\";i:1622155537;}',1622159137),('a0b1b4872aa2146e3e77e120aabf2d8a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"x7Y0\";i:1622155417;}',1622159017),('641d9fbab0f7f3258c6aa992aa930ea3',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Lzx2\";i:1622155297;}',1622158897),('467a6a9a7fd2a102179c59d854cc02eb',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"So4o\";i:1622155177;}',1622158777),('accb7033385f4b08a2974678a0c05c8b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u4T1\";i:1622155177;}',1622158777),('5b539de09810cbce6b3fe80cea4ec992',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aO6o\";i:1622155057;}',1622158657),('89cf8564f0183421d3838e1d032d012e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z078\";i:1622154937;}',1622158537),('ffcfe6827ad10d2ebc8a6e7aab7aeb44',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EcZO\";i:1622154817;}',1622158417),('48aeba740b278be75afa1b84591358bb',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VK91\";i:1622154817;}',1622158417),('e19f4bf0158af7048f723c7bd3983528',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lzz4\";i:1622154697;}',1622158297),('7f836ae619e010707f01f3ca7a84234a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xCc7\";i:1622154577;}',1622158177),('edfe3e16edc4776b0dc368282b75683f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KZln\";i:1622154457;}',1622158057),('964bd86a1fbeaaf0ad87d3361718b11a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QuJJ\";i:1622154457;}',1622158057),('fe16921b5be028f138eb905e36e96d68',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D88d\";i:1622154337;}',1622157937),('4993f1060f0380547e2d98d97a150cce',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QdX1\";i:1622154217;}',1622157817),('0fd8637e47a83e6a14dcae18d7d149da',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"o8z8\";i:1622154097;}',1622157697),('ca2499f2d679753969cecb1cf965160c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ufI3\";i:1622154097;}',1622157697),('61216e8b8c0458690c77ad581f4da5ad',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HMmn\";i:1622153977;}',1622157577),('c9e4b5ac1e8035a605e2d6871aff4972',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VVDT\";i:1622153857;}',1622157457),('01bec70fc7196aabd6a77932c5edc334',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Fkj3\";i:1622153737;}',1622157337),('6a438eb2bb887027a9bccc409aab2407',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AY26\";i:1622153737;}',1622157337),('2733a840d467a4d3563be5a69c1cc0aa',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u94G\";i:1622153617;}',1622157217),('fcf7c5fcc8e2cc1470891503c0752b89',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"slyk\";i:1622153497;}',1622157097),('94294c835c61837e344be7764745ddf5',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"t02a\";i:1622153377;}',1622156977),('5c3602acf38d280da500b205c44ca492',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hboq\";i:1622153377;}',1622156977),('c5f3d55d82fcc5ad10c953ae45586fe2',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BHZ8\";i:1622153257;}',1622156857),('68481fa7ceb787be2a27448de84b8a46',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"huGt\";i:1622153137;}',1622156737),('a12e64bed42631187cdcd35dcd6f8d55',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CY2y\";i:1622153017;}',1622156617),('6035226eee88a9b35ec2feb3bec938c1',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Iuuk\";i:1622153017;}',1622156617),('b718373d5f9a88ac611dfe526af85077',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f7jO\";i:1622152897;}',1622156497),('ab02131ec274fc423c5345edbed05902',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H17g\";i:1622152777;}',1622156377),('b373b69c95dd1b434b50164b72e360b8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"d9yX\";i:1622152657;}',1622156257),('28b858b1d74af04ee6b11d0ebd42503f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZdOZ\";i:1622152657;}',1622156257),('a8533a31dffdd75f696adbe2f0d508ab',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ep84\";i:1622152537;}',1622156137),('95b676d515bafed44e7785043946eb61',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oSD2\";i:1622152417;}',1622156017),('e7984a1086392c4792b3b51e8dc31344',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"laro\";i:1622152297;}',1622155897),('1dc5b31b5f5db7a9d62c8bcf9d519e67',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D2Py\";i:1622152297;}',1622155897),('09c7ee5515e000faace45bf831333682',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YV15\";i:1622152177;}',1622155777),('de0eb1fcf812fe63ee193d3cef6bf165',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Mt9Z\";i:1622152057;}',1622155657),('d26cba7e52a2b7863397aef85d85349b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"A5Kd\";i:1622151937;}',1622155537),('90bdcba1a07eea097538db6dfa69a0c0',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YZoE\";i:1622151937;}',1622155537),('4048cc808fc9d723edf504fe44130c77',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Dn4b\";i:1622151817;}',1622155417),('39a65f298a2cb7af5f263272ae6ee728',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lQ2x\";i:1622151697;}',1622155297),('fa5c3173ec22fce795fc57f1520a021d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bWwl\";i:1622151577;}',1622155177),('888ba5f57916b09a2427424f13548a3b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UlBz\";i:1622151577;}',1622155177),('21e73add9057cb51d02c66234e76c4ab',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T5HR\";i:1622151457;}',1622155057),('ca6ee4ddde652a3acd2bc46547ab1715',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"m1eW\";i:1622151337;}',1622154937),('5ec6ef04617e58c784e1a92330e73cb0',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RcvC\";i:1622151217;}',1622154817),('a7b0fae5e0cf9cde90d6ac75ffc1f12d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"G0Zl\";i:1622151217;}',1622154817),('74d9c3a25660e1800058a09b9408f052',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vh05\";i:1622151097;}',1622154697),('db2f7832241827a541a9d9bac9d38e7f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FGk4\";i:1622150977;}',1622154577),('033127e134c6786eab084a733107f3f5',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Zuei\";i:1622150857;}',1622154457),('4c1b6d5e4e555578be4f40e62548a0b8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"t2hp\";i:1622150857;}',1622154457),('a0aff6139c1081abbad9e71e105df1ca',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gTVZ\";i:1622150737;}',1622154337),('53d110aac7dc0cb3711c66fed68c136b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VCHz\";i:1622150617;}',1622154217),('c45db42abd4475056283c07760d053e6',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"W8pi\";i:1622150497;}',1622154097),('8b3a2a9667f221b47a044c7a9a848474',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QNk7\";i:1622150497;}',1622154097),('b7df37addd57b3b2270f1a925618947c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RSNE\";i:1622150377;}',1622153977),('3d997df1765d3bf4fa2104fae305c997',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XUqK\";i:1622150257;}',1622153857),('7ab9162309292c7fc18fe6bf22f6bb63',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZZqq\";i:1622150137;}',1622153737),('43127642027107f24aa2ed50d06e6b18',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NmZW\";i:1622150137;}',1622153737),('4db297c0d38c9496a0105cb62fd721c8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g4qr\";i:1622150017;}',1622153617),('69a235c9a14127f3e75b5eebad653562',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oHnR\";i:1622149897;}',1622153497),('7c601de7dc60cfe224d700d7ac545b1f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RQ0e\";i:1622149777;}',1622153377),('f9fa4dfddecbc3a12afebadfbbdff6fe',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dapQ\";i:1622149777;}',1622153377),('8c6a7254e944d88c5e1686e15cfc0f66',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Nz3i\";i:1622149657;}',1622153257),('061466b328ef139f26df84a0d38af4e7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pa2s\";i:1622149537;}',1622153137),('47d4d01eceda7bb0fe65f5c9b602a693',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JFys\";i:1622149417;}',1622153017),('33d93b147d8aab5f52f70e0489d5c7c0',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Rw7M\";i:1622149417;}',1622153017),('6889a12864245eefcbc9eb9f2ab42720',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"In07\";i:1622149297;}',1622152897),('b0cf543fb77cd337e250466947aaf51d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Qf4K\";i:1622149177;}',1622152777),('fa323649c8f27170fc1934205fea4040',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UQF7\";i:1622149057;}',1622152657),('2a2f9d6f4c3a3e47853c42e8f8c05a6c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SWoa\";i:1622149057;}',1622152657),('ffb718c1867e69693b054ac46a00fdc6',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"W53c\";i:1622148937;}',1622152537),('7144bdb724a434778f94c9c685ebdfe2',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KEkY\";i:1622148817;}',1622152417),('e9ab109cf3cca6c765efba267cc1c6e2',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T7Eq\";i:1622148697;}',1622152297),('0602fecfd965a6022cfbdfe30c522f2e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hddG\";i:1622148697;}',1622152297),('362c98b74cc639b0f48b7d717bad78b7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ujTE\";i:1622148577;}',1622152177),('afc1f0412365422a12d3a6c1244f9609',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f69I\";i:1622148457;}',1622152057),('d5709aeaffa34d45d1ba2155ef4a55ef',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EeWD\";i:1622148337;}',1622151937),('6fb68272368b6feed9de278c420afc80',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Kj97\";i:1622148337;}',1622151937),('aeb5869f74ffa10163998c3611ec619a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MomW\";i:1622148217;}',1622151817),('fc4d92d4ed7c51b017ee7f4669fdf73d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"v4D2\";i:1622148097;}',1622151697),('a892d4442cb0280f386b554404964b8d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tfeP\";i:1622147977;}',1622151577),('b2a57b7d37d865044abec6b533e014c5',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aOFK\";i:1622147977;}',1622151577),('21e9556a86f64463ca4db2746d62bce9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DR5P\";i:1622147917;}',1622151517),('0e99474fc4d72f26f23c6f6a931698d5',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jCoE\";i:1622147797;}',1622151397),('6af389225d9859c65899b2320cc180de',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RiNL\";i:1622147677;}',1622151277),('5348c1f997163f0f0fc95a5800be2aad',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KZst\";i:1622147677;}',1622151277),('c230ee9fb0c29cf3a7616bba4dfde2ea',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XTY8\";i:1622147557;}',1622151157),('7f13db2765c02964774a3e7e77fb6eda',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"c7sr\";i:1622147437;}',1622151037),('8654c89daa6db2a955906f5f297780d6',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AD2S\";i:1622147377;}',1622150977),('91eea86bec666cdf1552a54ca1556676',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r1mi\";i:1622147317;}',1622150917),('ee313217df14aa36d74bd91d967a8ed7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bTc0\";i:1622147257;}',1622150857),('844823eba687073f936be7137013853a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"O1z8\";i:1622147137;}',1622150737),('2e660b1a72bf278812ec07cc61541e61',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l99h\";i:1622147017;}',1622150617),('747771a52d0f1882b3f9a8b8fe71b831',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Hsg6\";i:1622146957;}',1622150557),('51e1e9d8cc2919e97853dee218db1dd4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w5Zm\";i:1622146897;}',1622150497),('31e8cfc101a4f57c5f6c0a113d1c9944',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Pf4j\";i:1622146777;}',1622150377),('7ec00671c25b8b18a9593ab7848f3d1c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mm1w\";i:1622146657;}',1622150257),('7b3d2b2c4678f9dcf8fb9923b369e1f4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oi51\";i:1622146597;}',1622150197),('f227ed6309360df44997c33b8006be6f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eZ6x\";i:1622146537;}',1622150137),('c5371d9129c54ef68b535a17139c130c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Fps6\";i:1622146417;}',1622150017),('6667253cef7f4fa8339dce7a56cc8567',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RnNO\";i:1622146297;}',1622149897),('4356a2fb6b3e05ff83e09746f56a4226',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uiZd\";i:1622146237;}',1622149837),('3de37018582c0ecba35e8b530d5dbe3f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cc16\";i:1622146177;}',1622149777),('26fc54f04798b93e6f0ede46ceee1d23',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AF6q\";i:1622146056;}',1622149656),('daee66487471a219dc57149cf28dfbba',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"x400\";i:1622145937;}',1622149537),('0eedee0c9f8f8c26149a42e8392c9541',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T7uH\";i:1622145877;}',1622149477),('426986b723497ef7745cc84413218cc8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U88m\";i:1622145817;}',1622149417),('c6f77c7f433699ae44416e02db7b0957',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cVzk\";i:1622145697;}',1622149297),('e75bebdd6e440cf32b7181bb48f9cea5',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NRB9\";i:1622145577;}',1622149177),('22fb520c86bb2769934fdee866013711',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w38b\";i:1622145517;}',1622149117),('038e7d7e8fdf50e6118128d5b3bd8798',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V2e9\";i:1622145457;}',1622149057),('3409806d54c2d9c92b12bd2973070095',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"je2h\";i:1622145337;}',1622148937),('a0310e96c10ca06464e6a901be439b32',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Gen1\";i:1622145216;}',1622148816),('84a7b494b81601429a7348dd8ed94fd7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lh8v\";i:1622145157;}',1622148757),('591fab585d34953758c067de01671587',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IWoZ\";i:1622145096;}',1622148696),('de94f88f55dd917bac8b4b927c004f97',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cEHZ\";i:1622144977;}',1622148577),('212835333acfa5bd6e9eb07b1c4b4681',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MAAA\";i:1622144857;}',1622148457),('b4eab7b1542e72e7ee97387f4a6b48fd',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OZ0P\";i:1622144797;}',1622148397),('73ff5f5431d2b1454bb600bf242d93ca',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BSFF\";i:1622144736;}',1622148336),('f11616bddd629fbb72693e0c18017ee8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Gx22\";i:1622144617;}',1622148217),('a8bad671078d9213446f93af30a99fcf',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ryqm\";i:1622144497;}',1622148097),('ffce5dba9d3d1b2049bc2c1d54676322',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QXXE\";i:1622144436;}',1622148036),('da2dcd6f04bf470c452092aa08b8254c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HasU\";i:1622144376;}',1622147976),('985e05dc2cd5b81f9c2bbc9a52cf918e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fZ9R\";i:1622144256;}',1622147856),('9c40f5c5fc8de1ffd494afe4c93fc081',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"k2HT\";i:1622144136;}',1622147736),('a94ec2889478ae036e412e3a5dd7c468',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nRm4\";i:1622144076;}',1622147676),('4328f39a529e19c5c673ad8a83bbbf65',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oF8v\";i:1622144016;}',1622147616),('147277fc0f8db1331779d8739220edad',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"h9Wm\";i:1622143896;}',1622147496),('5af30b039c3594e3577ec146d7a825a7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hu57\";i:1622143776;}',1622147376),('3c530d25274b169a242724d7a294075b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"j3s1\";i:1622143717;}',1622147317),('23c9c201f21d209528e43bf076eadd53',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l955\";i:1622143656;}',1622147256),('b71fc956f5f86d9c7212e2a52b772fbd',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uFcc\";i:1622143536;}',1622147136),('802d8ffde39902c3c4f72563944101c4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Vh6C\";i:1622143416;}',1622147016),('9818edd791e0204203b008b94a338277',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JMeC\";i:1622143356;}',1622146956),('2f0144478b7166998430145ea259a2c9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Nmc4\";i:1622143296;}',1622146896),('cf90e44858058dec30f08f8b7d980b6a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JuRS\";i:1622143176;}',1622146776),('8111fa2589373dd8b2352ea3ca08d054',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KG3L\";i:1622143056;}',1622146656),('c71623660f92cf53dd5e30465435442c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fy8y\";i:1622142996;}',1622146596),('a2380f0f39a95199287b4f3b3484e972',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lKRZ\";i:1622142936;}',1622146536),('cb8dfdd60b2f4ad55479cda4ad808286',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qcjm\";i:1622142816;}',1622146416),('17c579fd9c66b9180b7f3ae61a5e8ea9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T9kP\";i:1622142696;}',1622146296),('a5271fc78454f3ef1bbac0741bf9a8fb',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VbaL\";i:1622142636;}',1622146236),('09af1412a760220aa5ddd706175e8a20',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FE9M\";i:1622142576;}',1622146176),('3380715184deff1812c3c0d0aa44886b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zubz\";i:1622142456;}',1622146056),('1c83e4f2d6f81b9de54341403c672c63',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Tb7b\";i:1622142336;}',1622145936),('29c5fb430b04b1c6ac1f7235cf2c7a6a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rKx4\";i:1622142276;}',1622145876),('5690d001937bfa67da305f9f8684f7e6',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bgnl\";i:1622142216;}',1622145816),('cbfced3b164d0bf604348604162c877a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iZ2C\";i:1622142096;}',1622145696),('e925d91bee6e1cdf679f39bead72505d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JnZY\";i:1622141976;}',1622145576),('97f243bbf739a9657f3b565ca5d773b3',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D9B2\";i:1622141916;}',1622145516),('3aa9d5bb775cfacde5fc4dedb6233493',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ydzS\";i:1622141856;}',1622145456),('ac67bb1c204a0be0e67fda9d0468a43a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dYl1\";i:1622141736;}',1622145336),('d09ba58f45cf5a7cc2af79ee6441d43c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EkXX\";i:1622141616;}',1622145216),('4b1a6f696f01d7db93944da25fbbe4cc',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"L4OO\";i:1622141556;}',1622145156),('f40b1a01f7e6960d7b756ad41b5214aa',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M1W5\";i:1622141496;}',1622145096),('3b45594a986286e1dc4549c124650381',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ynll\";i:1622141376;}',1622144976),('2985fa9d3affdb13536ee097d2d4cd1f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sP29\";i:1622141256;}',1622144856),('0fc0bbdcdcf21f2a33912ad07bb9a4e2',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wDwH\";i:1622141196;}',1622144796),('170afff1ab2a9b78424426b3dbe24084',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H0la\";i:1622141136;}',1622144736),('2da8600af44f420bcf39901a75186bea',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jA53\";i:1622141016;}',1622144616),('e3970bb615b536b48d1a3830559e946d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r88B\";i:1622140896;}',1622144496),('610c975641bb2b5c4a8ac345bfda7c6c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BBsl\";i:1622140836;}',1622144436),('27e1840c8afab597bf728ba31e4c54f9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BMWX\";i:1622140776;}',1622144376),('1d8b32fad702c1fec2a599cfb4e313c6',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YgQu\";i:1622140656;}',1622144256),('10414e7f90e9f39b03a468056a3eac9d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Att6\";i:1622140536;}',1622144136),('ad5717ef155cfd7ce2fa66059aac9856',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DmwV\";i:1622140476;}',1622144076),('94f060dd3d901c624bacd04088f4c6bc',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"b2Ok\";i:1622140416;}',1622144016),('edb2c7d4a7466c7a906e88f66b774880',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Qu55\";i:1622140296;}',1622143896),('31d2a5574b9c405d9eaba8010da6cca8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qXIu\";i:1622140176;}',1622143776),('70d79c4082be44209672d2bcf480180f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V7ru\";i:1622140116;}',1622143716),('f271e56be59f13c7159459af62f718c1',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tEeF\";i:1622140056;}',1622143656),('1fb618e52528870479117760967d67b3',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"br8R\";i:1622139936;}',1622143536),('fbab2e716e6a7b142c75ce559f638d94',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"S701\";i:1622139816;}',1622143416),('f1a5642882bc75eb1c33665294aefe10',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"texG\";i:1622139756;}',1622143356),('9a111967d8e5c344cda6f391c3b79529',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yTaO\";i:1622139696;}',1622143296),('d328aad62d2c68b0b0ce005a6e43d95a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bbQw\";i:1622139576;}',1622143176),('0e94b5b1bfcd09bd6575f0596d2e1b1b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w6z8\";i:1622139456;}',1622143056),('7b234d54bb60a9f9c0539c6e72a634f7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"LUkj\";i:1622139396;}',1622142996),('e3a53448ff8eae646e9ff4a8963d7737',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VLl3\";i:1622139336;}',1622142936),('afcfac3c84fbf02ce90dbac5283a7122',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vKc2\";i:1622139216;}',1622142816),('e6d9d826bbf2026d4ae7b2b662ff2ea3',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D4at\";i:1622139096;}',1622142696),('f56309de1d6ccc119ffc115e35a6df48',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g2P2\";i:1622139036;}',1622142636),('ee20ced24522da68581f75a344f7d512',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g1qC\";i:1622138976;}',1622142576),('d87c7542be8e7c30c8f790507bc95751',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nSbu\";i:1622138856;}',1622142456),('b992387e02a5dcc77206cbe3e48d4feb',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dRBb\";i:1622138736;}',1622142336),('f5a34e055b551e903d02f94a4bc5391b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nwGI\";i:1622138676;}',1622142276),('a99bc7c7d844e8d7a28f90576229fc44',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"O3K4\";i:1622138616;}',1622142216),('6d19eb7565b3a7ce841c041770e0438c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"C9U0\";i:1622138496;}',1622142096),('69e9069d0ee022b47df8a2673c349cf7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z3Am\";i:1622138376;}',1622141976),('b632ea7ee5c02e4b4333f758ff6c6b9b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zVzd\";i:1622138316;}',1622141916),('bb7e9472a500cb277d27b34741d89b30',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EGOG\";i:1622138256;}',1622141856),('3670407cf1807000ee54204ccfc176ed',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FynV\";i:1622138136;}',1622141736),('1e8618b7e3f97d2bb371755050a54b13',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jVVr\";i:1622138016;}',1622141616),('148267065616d8798fc701014f2cec48',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Qxgx\";i:1622137956;}',1622141556),('96791bae0bdcace21409fe4486877d01',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u1g8\";i:1622137896;}',1622141496),('08c0c3cb60cb57f3240c0d032eea6637',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RJDW\";i:1622137776;}',1622141376),('128a68bedc421caf9a15e35fcccd94e4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gOG5\";i:1622137656;}',1622141256),('51b1432c3e2fc45572a7a3088c97722e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H22f\";i:1622137596;}',1622141196),('e6cf4a06de467d906db8bb952fcd9a3d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bctz\";i:1622137536;}',1622141136),('db3909fe9d060920f364d8a3f13a7e07',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ku8b\";i:1622137416;}',1622141016),('63686d27b024340993786489cbad87c9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ak2a\";i:1622137296;}',1622140896),('898f1002b94a4759fa3e4d084577e938',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gf8J\";i:1622137236;}',1622140836),('04cac4b1934f4a0689da81e76c969755',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Vu1u\";i:1622137176;}',1622140776),('6911cb92295ed0dfdcbe5ebbbc72eb23',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"h9rh\";i:1622137056;}',1622140656),('f51aaae2d5f5318e734b42327af3069d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NTus\";i:1622136936;}',1622140536),('e9a4850d4d0b7a095b89da03a27f9a18',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qlxr\";i:1622136876;}',1622140476),('b80a0813fa976f8c4583c7f19cd4319b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vz1M\";i:1622136816;}',1622140416),('e7787e3e8c3501fe0bf2c82db6232335',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Oz4Q\";i:1622136696;}',1622140296),('d5fa5fd6b97ebb99d6f308cc45348564',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bjzD\";i:1622136576;}',1622140176),('79b1dbe3df3fba9978117df83089fb7d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yYaS\";i:1622136516;}',1622140116),('649220b163cc4467f6520ff8d4a83872',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r73u\";i:1622136456;}',1622140056),('34be7d53bb3b1bee79ffe1f150afd7c7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IwWw\";i:1622136336;}',1622139936),('af7daabcfa15a2326405f9bcaea6fb20',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"WqUI\";i:1622136216;}',1622139816),('c28ef35e7aa19f3f870c665e4036536d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U3i0\";i:1622136156;}',1622139756),('974636119ebe7cf1cceb7328f76835bb',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z1he\";i:1622136096;}',1622139696),('c67ac25594e0d5e569460a9273094191',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sqng\";i:1622135976;}',1622139576),('f9499808e3685db48ecb14075067019f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"o47c\";i:1622135856;}',1622139456),('18875c6486fbcff0e7999dd266f60a65',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OFc3\";i:1622135796;}',1622139396),('e217b9e8bf2947dd445c1452250bc277',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"x92j\";i:1622135736;}',1622139336),('853036dfb7127f2f0955a2c61e7638b4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i0cA\";i:1622135616;}',1622139216),('5b50ea1b2cba96b988a527a86b4ac74b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eYYk\";i:1622135497;}',1622139097),('9b896462bbd797e3588eb1db7c52f084',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kB5Z\";i:1622135436;}',1622139036),('1138302ea6ac4481f86fee94a76ae3b9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rz1E\";i:1622135436;}',1622139036),('06ea2563d2aa0678b53911dfcff12891',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"v0WD\";i:1622135316;}',1622138916),('b731ff76540b60b9db221ef4db1a08bd',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"t65z\";i:1622135196;}',1622138796),('4a001b10d8338a3a85360ebd9cb1e8ae',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DWDB\";i:1622135076;}',1622138676),('5124d7985141be4d6257415c6f397fea',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IBGC\";i:1622131476;}',1622135076),('203e97902ffb9e2eccdf0abc3075d88a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ED2o\";i:1622131476;}',1622135076),('cefcd825fb76bf1ed8c506b14e4de852',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ac8e\";i:1622131596;}',1622135196),('3731d3309ba481e4bc93897e22289c13',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XoG9\";i:1622131716;}',1622135316),('c2f0443ab339e56de105ad23057640ab',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"LU7H\";i:1622131837;}',1622135437),('85de8ca8c8142f8a3cb276ee27900e08',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CpSP\";i:1622131837;}',1622135437),('3d6800f2b01f2073762b3117db3e52ce',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zFkc\";i:1622131956;}',1622135556),('9a1a4b969666173dc6922306130f991f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sv2Z\";i:1622132076;}',1622135676),('136d46613eb9d01b08be382e65dd9db6',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Iql6\";i:1622132196;}',1622135796),('c40b4f2c023c7b53ece05f491b8d1dea',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RcHc\";i:1622132196;}',1622135796),('bfbff7e0260a1e55b6825843d2b7577e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EaSe\";i:1622132316;}',1622135916),('242a62d8205eda52ad7da4a9ba4172b4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FqVr\";i:1622132436;}',1622136036),('e02864b5543f3583e6a16a904f67117e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vbOm\";i:1622132556;}',1622136156),('cf03365c891b5cf067930765f4266794',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nuM9\";i:1622132556;}',1622136156),('b5e800c4137fc4c3790052dbc41f4edd',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Muzn\";i:1622132676;}',1622136276),('815eb1f47a7eba1711353fdac4686a58',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u0FR\";i:1622132797;}',1622136397),('8c67c715c89e36dcd15e1359f715a96e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tH8e\";i:1622132916;}',1622136516),('2370279b94793f83d8a8e8c571c6be54',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lBkz\";i:1622132916;}',1622136516),('42746dbd3339c24886f4d2a8cc307e1c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"X9I7\";i:1622133036;}',1622136636),('891c3b3798d85f96eb8a0dd1f858b1b0',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p5Be\";i:1622133156;}',1622136756),('036d8d288b7cc2c7763c46bf1d412bc9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ALYS\";i:1622133276;}',1622136876),('e6cb38a9b33bcf3e7b020cbf88d39625',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V29A\";i:1622133276;}',1622136876),('78e1a3699ed73fa2b22a8ed8f83eb41b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xa92\";i:1622133396;}',1622136996),('073b57e99e6e349ee53c1dee58519121',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rwMu\";i:1622133516;}',1622137116),('378efe4dea07b77eab42dde358154ce2',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"B0MR\";i:1622133636;}',1622137236),('6db140d0102a29798f95667c5deb6566',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VglX\";i:1622133636;}',1622137236),('c504a49b43e2b524d22e2d3e2e249cf9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"y8Go\";i:1622133757;}',1622137357),('2c38a93e2709bf4c2a68bccc307249e7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T8YD\";i:1622133876;}',1622137476),('757936932085ebd75c4747f653228f12',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BrRr\";i:1622133996;}',1622137596),('683f5619ad533a776f3d52f5fbab784c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Qd2F\";i:1622133996;}',1622137596),('cbcd6252e54efe1ba3b8ef7ff05151ae',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gg45\";i:1622134116;}',1622137716),('04cfc69af210e80a8b7795612eee0322',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qLC5\";i:1622134236;}',1622137836),('aa5988af034521ca1d7573b29110c82c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Wib3\";i:1622134356;}',1622137956),('de71a9bad1d19dab7483ac2f437bc81d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oobG\";i:1622134356;}',1622137956),('be6ebc5b5a2244c93876a8efdb47247f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qpba\";i:1622134476;}',1622138076),('37874d4e353ef25cf575f31b902cf3f1',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MRbu\";i:1622134596;}',1622138196),('7be0700fdf09b2c7dfd479cbdacf239c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NJgz\";i:1622134716;}',1622138316),('0fb483ec80eacceffe68572d200f9696',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l7Lm\";i:1622134716;}',1622138316),('0df5f1dc93c8a6d59676e346e02427f5',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z05N\";i:1622134836;}',1622138436),('0b9990132dcb1eb8491be24687cda826',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dR4w\";i:1622134956;}',1622138556),('01e1845e3a6ff21bc0864b09de81b90d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J93H\";i:1622135076;}',1622138676),('e5209f7dae5728d4d671164d80cc5d42',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"to5A\";i:1622163217;}',1622166817),('d45c1dbdd009fb95d59f967ea7c74af1',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Cb9i\";i:1622163337;}',1622166937),('e852cda4f4661e5359d341f4ea9a2458',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tB28\";i:1622163457;}',1622167057),('dc693f40b7f64175c8082e705ac6910c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UCUu\";i:1622163457;}',1622167057),('6ee99713ec9cbba51d6ea80a5ed01401',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z398\";i:1622163577;}',1622167177),('a26153d39856b18ba27d086d5e53848a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SzPB\";i:1622163697;}',1622167297),('37df08b5386a4a9d45233bd5f09da41d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wqcc\";i:1622163817;}',1622167417),('5ee5778a6b2b3a65095ec1aeee745e34',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ckM8\";i:1622163817;}',1622167417),('d1c602ca832feb0af948f2a40864be83',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aqZQ\";i:1622163937;}',1622167537),('17b83783defe21c5611e1b023c1b9b8f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vBaQ\";i:1622164057;}',1622167657),('a671edf28ff63bf2203ceee0a06b30c7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OLKO\";i:1622164179;}',1622167779),('1572af22ad81c65e09bd0ee7d92c5e5f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z7u2\";i:1622164179;}',1622167779),('988fe852125a4bb21cf161a9e150b0fb',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nfof\";i:1622164297;}',1622167897),('b609ad7353048794624022872260209c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZXYz\";i:1622164417;}',1622168017),('944bab92b99f041d9bc8ce86221ab13c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lZl4\";i:1622164537;}',1622168137),('24abfaf3cf74861f63a9d40c3dfc6fc1',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"t5ga\";i:1622164537;}',1622168137),('f73faf3b6d6e157e96b44948db59734c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hZN2\";i:1622164657;}',1622168257),('8008fd989792931921fb9a5a3fcfecf7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yeFy\";i:1622164777;}',1622168377),('bf96d0f00794cabf18b1c4e908507420',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xxWI\";i:1622164897;}',1622168497),('976e1b5167090b31e3422b2c2ddb9d2f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wE2k\";i:1622164897;}',1622168497),('d564781e775e3a7f114f3197d29c96e6',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"LL0Y\";i:1622165017;}',1622168617),('d165397bfef4318a4d17c553248e87e3',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ueop\";i:1622165137;}',1622168737),('18e221aa107417ffd090976f88bd14ac',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"C4OD\";i:1622165257;}',1622168857),('04bbbc023976d57d73140ff0cb6f51dd',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XQz3\";i:1622165257;}',1622168857),('7ca78562a0d3c26c2456c21ff1aaace3',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V31f\";i:1622165377;}',1622168977),('3c9fb8f89c4fd3ac8460198c222a5b69',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ud8D\";i:1622165497;}',1622169097),('25a90e277b4502f6334236e7335f8df6',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tqb7\";i:1622165617;}',1622169217),('fb3e98f4bcc8b5ba3908a7ec1c1e064c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Fggs\";i:1622165617;}',1622169217),('f65ea77f11c9f3ad3cf93df71e56b646',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Yobg\";i:1622165737;}',1622169337),('f7f72cde7e098da897cf225a439aa68c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"I44R\";i:1622165857;}',1622169457),('3ca24463bd891107bafffcddf1e86320',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"j3g3\";i:1622165977;}',1622169577),('37ddc28afa7f8e0621353a66dc5fd441',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Rpp6\";i:1622165977;}',1622169577),('588d514ccf88ea6d124a309b21209fa9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZuIf\";i:1622166097;}',1622169697),('249a7eba1e796befdc085884da76a714',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"I0YU\";i:1622166217;}',1622169817),('bb21dc8fc92584a8270d6b4c00dd4f92',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"S9me\";i:1622166337;}',1622169937),('89410dc9a3ad8d7183725b5b0711efbe',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Nhh9\";i:1622166337;}',1622169937),('40c14b2b6e2f0da5ccfc6d66af3420ea',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"obb0\";i:1622166457;}',1622170057),('e674f5c71af85a0f6677bacda2a873f8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qOZD\";i:1622166577;}',1622170177),('c42f0df9dbbd49f77d2ee6e9996b2f5a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wNiL\";i:1622166697;}',1622170297),('eb7275782e989a6cb3a086f76593618e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sRo1\";i:1622166697;}',1622170297),('f5ee5f60e09be681b4ab5ce0de33a619',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eMrp\";i:1622166817;}',1622170417),('c166eb3f1e1950f18b96bb7da7be7b56',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"utzQ\";i:1622166937;}',1622170537),('b2c6039703ef229bdcd0b56a19dbdb0b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Mo60\";i:1622167057;}',1622170657),('dd055581d4ea7a952d340d138c1fa60a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YTMX\";i:1622167057;}',1622170657),('509c6645facc897623c00285365d6e95',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U1KM\";i:1622167177;}',1622170777),('d0f3a1525388adf2dcd9423f6c788fc5',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"edqZ\";i:1622167297;}',1622170897),('69599df0d0dc8338bd9a0ee0154bbec2',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tH3D\";i:1622167417;}',1622171017),('e33876db60b536eff80d56254c0c28ad',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uect\";i:1622167417;}',1622171017),('af97fecffa0b59f84ef87c2ce246972f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Hs62\";i:1622167537;}',1622171137),('a1714294369dcced3688a2bb325ad3d4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ac87\";i:1622167657;}',1622171257),('e2140a50b10f18dc9225c15447e87dfe',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p9b6\";i:1622167777;}',1622171377),('1618497e7d45abc1e2be1ebde062be42',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"X7vm\";i:1622167777;}',1622171377),('890d9e0a15b0b7dec0371787786fee6f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"m92x\";i:1622167897;}',1622171497),('b2c8976fa257b4710c870a909bd517e8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M0nO\";i:1622168017;}',1622171617),('20251ec0ea3fade4071cdd046f2a7c61',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"phGg\";i:1622168137;}',1622171737),('b9add2287325597b4d402c42857aa334',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DzZk\";i:1622168137;}',1622171737),('0baa8236f4cb3582db96a7a2ea831ed2',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fuUu\";i:1622168257;}',1622171857),('aecd3fdcc3ba94e39fa09e608e819566',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dTyt\";i:1622168377;}',1622171977),('a18d36a0175f43a81c963f42d2e8c44b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uZQA\";i:1622168497;}',1622172097),('c7a83a2a58cad909cb6f9c1b0b108e17',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mZea\";i:1622168497;}',1622172097),('1f1f3f24b0b8a1482bebfd662801504f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"E80D\";i:1622168617;}',1622172217),('4ccb90ca70666bb4bb5c2f9bf9ae8635',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QQ71\";i:1622168737;}',1622172337),('b82d0ca015a60f038175015dd297a4cb',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cY21\";i:1622168857;}',1622172457),('fc5eaec847e96cc48aecd73ed1b0ce8c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Jz8J\";i:1622168857;}',1622172457),('3540595ba553484e5ffa1c4140c8b22f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z2uy\";i:1622168977;}',1622172577),('d6ede96664c7020ff8082db21458b7be',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jfea\";i:1622169097;}',1622172697),('1a97bd0d92752d99bd381e4361559aa8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vcCM\";i:1622169217;}',1622172817),('a859618b12ac9c91f10f0923ab62754e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TUji\";i:1622169217;}',1622172817),('030700468dd7ec64111e48ace2164617',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KTKy\";i:1622169337;}',1622172937),('b817af5e9d5ae069d03e1aa08e951ebe',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BCmx\";i:1622169457;}',1622173057),('d80520b173fe371d0292609ee74f967b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BqTd\";i:1622169577;}',1622173177),('6246e8d997f7de7815dff55d9834c596',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pC43\";i:1622169577;}',1622173177),('46b4030a7395e48b0d614c2e658bf7ea',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"B55k\";i:1622169697;}',1622173297),('05430cb56cda79eb1ee5f67415f43c7b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vEMV\";i:1622169817;}',1622173417),('e54180a5a91026203966d73f4ce70f62',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gVuq\";i:1622169937;}',1622173537),('9b785193610a58317db7dca93e419c84',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Xt7Z\";i:1622169937;}',1622173537),('94d01dea1f11c70cd205e5e5c62eee5e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"n5In\";i:1622170057;}',1622173657),('ea906266772a67d26995b9d72f0359c1',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SMJM\";i:1622170177;}',1622173777),('da7495c6fdf6c3f8227390643421982b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aNxP\";i:1622170297;}',1622173897),('f11057a420a3d332f932196ca972ed61',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Q0ea\";i:1622170297;}',1622173897),('096aa387c659d09f865a0032773236fc',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zzI2\";i:1622170417;}',1622174017),('43ab5091fa8817978a31fc8f6de3dee2',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rJ9V\";i:1622170537;}',1622174137),('bfb2c4956d5a7b0af369604cb568332a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Q2hy\";i:1622170657;}',1622174257),('491053274e4ce6b8a029f525dd201db9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"P0I1\";i:1622170657;}',1622174257),('f7978bc91a26dab7f141534e77e009cd',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eBt6\";i:1622170777;}',1622174377),('942539b3e16fcb2dc95f1a56b44df4f8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M2Po\";i:1622170897;}',1622174497),('ea5cd05bba103ca5c0f368776e41fd76',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gVVE\";i:1622171017;}',1622174617),('ada3a55c5b103130564c789957f2d8d5',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g9vV\";i:1622171017;}',1622174617),('1d330f78be7eb1f0156bfef9346e3a3e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Cdz3\";i:1622171137;}',1622174737),('f7ec223f744514a3a7e5ebc820ec0c03',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Xq6y\";i:1622171257;}',1622174857),('29cfb63fc0d55a2227da37cdb775d5eb',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZtR0\";i:1622171377;}',1622174977),('752aaeabfd84596314c1cf2c0af7123b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GqMI\";i:1622171377;}',1622174977),('0b69675deb1c0179d381b7715fe81946',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZGNz\";i:1622171497;}',1622175097),('9abde8e71497133d4a5464fd30f4b748',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"e5vm\";i:1622171617;}',1622175217),('40b56b8b352d8db99087c06e7ebae50c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U9kT\";i:1622171737;}',1622175337),('1ed636aea3fd7c52d5f5350b84ef174a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"LVdm\";i:1622171737;}',1622175337),('94b6ffefd5415f62780080b9f24d8d51',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Lk1K\";i:1622171857;}',1622175457),('c9ed30bf62792611c5454d8094124de4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Vbgp\";i:1622171977;}',1622175577),('05bfb7e32a59542daf9b06595e24b643',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"b1KQ\";i:1622172097;}',1622175697),('bbe256fdd399d26a35d47fc0ce7e979c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p19T\";i:1622172097;}',1622175697),('1ab61ae5f57a07601502081fb8633363',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GZTM\";i:1622172217;}',1622175817),('ad9253dd13d6740145b862d8501b1610',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VX9U\";i:1622172337;}',1622175937),('e7e277b317787a0769e287fae4c537f4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yLGv\";i:1622172457;}',1622176057),('c6fab7a5d243601abed42f0fed3896f0',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w2J5\";i:1622172457;}',1622176057),('d0bb0e18b68673d4406e33078446956e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ApSj\";i:1622172577;}',1622176177),('e819ee1cb6b97b78f7f426eabedc57fa',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UJ2E\";i:1622172697;}',1622176297),('94792e982d94b0e1c070f6be0ce5baab',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kwjE\";i:1622172817;}',1622176417),('8e2180314d0e46d8e610b393a8427437',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fw2c\";i:1622172817;}',1622176417),('1592be9ceef9ec10c05231a3aa241041',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f1Zy\";i:1622172937;}',1622176537),('bc400e84b0b3fe4031ff2783df08363d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"WzGd\";i:1622173057;}',1622176657),('5d936af364f1202f437b417eee2ec6b1',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"A9sS\";i:1622173177;}',1622176777),('0cff9140dcd1562591cfb0f025b74188',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iq4z\";i:1622173177;}',1622176777),('22c9db523077e385f36181d6d7e19d51',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ui0S\";i:1622173297;}',1622176897),('69008bcac25f2f05184f12dc83c03db4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M8W7\";i:1622173417;}',1622177017),('db22b1f81d940e856072985c2a6b68c4',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tk59\";i:1622173537;}',1622177137),('38dd5900240688a94a12df85bf9d2b05',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BD5w\";i:1622173537;}',1622177137),('ebc971c1206fd013b7e78dae2364053e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GMLl\";i:1622173657;}',1622177257),('6d6ee4ce14512375c25d6067d4c541a8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pqJt\";i:1622173777;}',1622177377),('0588b2d0bfb19f896a875fb71f8d960e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AGpL\";i:1622173897;}',1622177497),('f767d28ea9517dfffbea89d5220a888a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hV6r\";i:1622173897;}',1622177497),('8710f2e44c5ecc064be303929e485f63',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"q36v\";i:1622174017;}',1622177617),('23e40ca82406dcbb3d49bae5d16bf64a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qoKv\";i:1622174137;}',1622177737),('7079ad17af8d4597793da27ecf781090',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CW4i\";i:1622174257;}',1622177857),('d7a10570d823775441f93e87ac54f72d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ibBV\";i:1622174257;}',1622177857),('cb612e64fb554cf60f3be3f344897d23',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r1dY\";i:1622174377;}',1622177977),('f12534ef27dad65659d660d449fee31d',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Gu1K\";i:1622174497;}',1622178097),('78ca27a797a9fc407b75dbbc1aed7e2a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ps18\";i:1622174617;}',1622178217),('8e1213855b1003b8522969f6e0669720',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JsuK\";i:1622174617;}',1622178217),('135e794a5e2dba6756601f6a36c9ca8a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YEZ6\";i:1622174737;}',1622178337),('ef6cbe2950f4b555e766c77ba2b4ac3a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Nicb\";i:1622174857;}',1622178457),('7ab0b829a9839228d98c161effcbb4f5',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Yp4P\";i:1622174977;}',1622178577),('2ed619e4a446ad6b724bd1945153ee80',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qYZ9\";i:1622174977;}',1622178577),('a3531e5d925b35a71814d146b547f473',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Jsg2\";i:1622175097;}',1622178697),('5c2de898a91226849fe7c9d86944b432',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"n92a\";i:1622175217;}',1622178817),('22be8498f52e8c7deace5bbce4cc494c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"chg6\";i:1622175337;}',1622178937),('0061b2dd58c3d0addf9008e103deecb0',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l5iK\";i:1622175337;}',1622178937),('600b66996444b649e0622a8dac27f234',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hw2w\";i:1622175457;}',1622179057),('c53637f54494391af7ffc1c1eb657446',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CSz1\";i:1622175577;}',1622179177),('6840178e196b976b5578fad137db74d3',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OsZ1\";i:1622175697;}',1622179297),('8d96f5e0abf6415b399b0756b83aaf29',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AFF2\";i:1622175697;}',1622179297),('9c8dc983271f45f4911def8dc652acbc',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"E12R\";i:1622175817;}',1622179417),('773ebe7a984346819be861749e872e3a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iDZ4\";i:1622175937;}',1622179537),('2c9bfd7323b3bf1d8a0ebd23e126b85e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vGOj\";i:1622176057;}',1622179657),('6d7b3004df20259eeae128ce9781bcb8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gKgb\";i:1622176057;}',1622179657),('1daf92262f2d1d2ca6cc80a04c59cbbe',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u2o7\";i:1622176177;}',1622179777),('db20465800b8e7350db76df20036dd6a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aiUE\";i:1622176297;}',1622179897),('c9d152ba578da11738d51e1e45208faf',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"C27e\";i:1622176418;}',1622180018),('10ee3e281759ef415fa09c2fc8b44e47',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"e4NF\";i:1622176418;}',1622180018),('dc7d216bcf87344fd01e9df86280a1bc',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"PRiv\";i:1622176537;}',1622180137),('6412684c8870dab45c4bf24bc8f7ffe9',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wFXA\";i:1622176657;}',1622180257),('acb2294f9ac6eb8ba10666d2d8f10136',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aDU0\";i:1622176777;}',1622180377),('f11f0ead3058911d001bbe53511235b3',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dGXU\";i:1622176777;}',1622180377),('475259e312bb3cbaa17b19d0a9278c0a',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l646\";i:1622176897;}',1622180497),('247124ff7d1ecedae730d785fb4517b7',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"K4b6\";i:1622177017;}',1622180617),('ecd2a15beb4dacc9197c1e1669505a85',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"b0uU\";i:1622177137;}',1622180737),('22dbe0e7ae30859d177e380742634b11',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Tx3U\";i:1622177137;}',1622180737),('b55b056ebb484268487f149f7a796993',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZCKm\";i:1622177257;}',1622180857),('d44443418c4a70e553eee72a1f986a35',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UA57\";i:1622177377;}',1622180977),('f7243203971abe52abc5a1c2fd7f9896',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Vkck\";i:1622177497;}',1622181097),('e2ec2f5d5edcb0dfa36b67309bdcea99',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V0tL\";i:1622177498;}',1622181098),('9d9e965281bb87f74c7d495e249b01e1',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J5Kk\";i:1622177617;}',1622181217),('78fdbd7da7e3adea0db08a5cedfc9ecf',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KGym\";i:1622177737;}',1622181337),('982879b469c797e32147870198fd9b1b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CC97\";i:1622177857;}',1622181457),('c18d5a9635f7d67e1444ffbea895c9d5',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MsG0\";i:1622177858;}',1622181458),('b00e6944956b81e5220385db0dfe76e8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yvRC\";i:1622177977;}',1622181577),('80730dd47ed9907b9ea97aba03611d40',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"WpTZ\";i:1622178097;}',1622181697),('328a7b336f53a0bb9100e6ac767cdfa1',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"m4Zs\";i:1622178218;}',1622181818),('84e77290adeb286f24927cee0d2e9379',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l7Ii\";i:1622178218;}',1622181818),('af0ee8c6b6f393d95668170e5ec35839',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Yq7c\";i:1622178337;}',1622181937),('2ad3e418da6fb97a3048021b0aa84f2c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GkPo\";i:1622178457;}',1622182057),('c4baebd4cc705d0055cc7464fe606180',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r1gw\";i:1622178578;}',1622182178),('053092c06a38ab56997c6c0db38ea90b',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QrxF\";i:1622178578;}',1622182178),('31861d7280d9537fd66e649edda87130',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EXX8\";i:1622178698;}',1622182298),('3f17972d101569ca12cbf8a8d2299b17',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M9ln\";i:1622178818;}',1622182418),('032faf64994449389828ea07237ccb9f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i759\";i:1622178938;}',1622182538),('0e9622505f2eac2b9fb15b24a5273d70',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u7L7\";i:1622178938;}',1622182538),('737892e78d4f3fae57427f332388987c',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QCd8\";i:1622179058;}',1622182658),('9d2ecec69a3d16ff5cd4d65926b6b325',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gIIr\";i:1622179178;}',1622182778),('3fac255d61f86d5ee87ca27278da9cc5',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H6JY\";i:1622179298;}',1622182898),('e04bc0658f89b1ff03be514dd95a4e4e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D5Xj\";i:1622179298;}',1622182898),('17a63f8c8a4703b90ce4458ba0be4384',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tzL6\";i:1622179418;}',1622183018),('a5e3922fb530fed840514f76b5ad6994',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wMJZ\";i:1622179538;}',1622183138),('aa5c6bb945c744a6c8021922ecf0ecfc',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TciM\";i:1622179658;}',1622183258),('18c556618d6122b11bbaaaa80e16dd61',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"y00A\";i:1622179658;}',1622183258),('a8dcb2b5ba15a73f279a388fcbb9f092',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i4z4\";i:1622179778;}',1622183378),('37a419e8aa05e9047d4e501ab2dfee08',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gGiE\";i:1622186941;}',1622190541),('574aadf950ed7bafbe357f3771954975',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"b3B3\";i:1622186941;}',1622190541),('13aca6a2b42038a3f3845ccab07345f8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"X4GS\";i:1623222500;}',1623226100),('8ce4fa5c0cb26599d12c1e4796f7f29e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"d45K\";i:1623222500;}',1623226100),('92d58de6a14541aba248f0e8a4f883fd',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"E0Bx\";i:1623222594;}',1623226194),('fc2efed3e4ca3c63d9ee0e4feacdb7be',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Lx2D\";i:1623222674;}',1623226274),('93ed2f97d143b5a46ea5e594c238951e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YzTa\";i:1623222743;}',1623226343),('30d09f50d8306c80f258160b9de82845',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"alg2\";i:1623222884;}',1623226484),('d6db0df595c90d3b7882ede27d9f1b16',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oxu6\";i:1623222884;}',1623226484),('6b0ab21971203fe8b246b97d8a5d9aa8',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CCzf\";i:1623222958;}',1623226558),('2667d1829729db71ee50292d7df4e7d6',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kZmF\";i:1623223024;}',1623226624),('5edc0408c5e157edf00ee8ee11285b57',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vX5o\";i:1623830271;}',1623833871),('7f4d66fca0573f5cc515878b8e09ef3f',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bNM9\";i:1623830271;}',1623833871),('48d93db10230835c1257a9e15bb92838',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Wa79\";i:1623830344;}',1623833944),('ab77c8ffa05bfd81e940470d8417357e',1,'47.242.30.191','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BTO1\";i:1623830434;}',1623834034),('77a29574077b1bb211a52f449e88228e',1,'8.212.19.100','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JFIN\";i:1632404098;}',1632407698),('5f8f266def2c6f01ea6108239eedd72a',1,'8.212.19.100','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"WCxG\";i:1632404098;}',1632407698),('866689952fec3a9dccc0ed71a6fe3d43',1,'47.243.231.144','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kyF4\";i:1676627671;}',1676631271),('ce742e7f30e1cc553e0d2c5e6b806fd5',1,'47.243.231.144','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M8iJ\";i:1676627672;}',1676631272),('418455eec2696df99cbd85bfe6e1f341',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w9z3\";i:1677503008;}',1677506608),('bead280b6bde571141489367885dcc6d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XDIG\";i:1677503008;}',1677506608),('924594bd1f1caa3808d51034cb2bd63e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"j9tb\";i:1677503206;s:4:\"WQ8z\";i:1677503222;s:4:\"ow42\";i:1677503222;s:4:\"emYC\";i:1677503223;s:4:\"xl51\";i:1677503243;s:4:\"Pxk3\";i:1677503244;}',1677506844),('46015ac2a6984ce90f587681f8627592',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"N66O\";i:1677503087;}',1677506687),('5c9854d84ac623c1891946ed7fe5eb5b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"n2y1\";i:1677503156;}',1677506756),('4a7257c5e1a28ecf42e3a070f7eaafb0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"S99o\";i:1677503223;}',1677506823),('2dd6763569a79f29ebbecfb1aeecc1e8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sZm9\";i:1677503306;}',1677506906),('63835c34be27e66fa89ee11bd8d82e49',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"LlLW\";i:1677503336;}',1677506936),('f0e0d41e7118c1d3258e2f28684b7a01',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Y22f\";i:1677503366;}',1677506966),('4b900739996d34736288ad6fc8405522',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"geE3\";i:1677503473;}',1677507073),('924564779c00d39cd47fd28c253a09b1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pVyR\";i:1677503593;}',1677507193),('816a6eb0382cd707e2747c5b14986473',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Jav2\";i:1677503653;}',1677507253),('ed24c26c892349527c1eaaf8537ede12',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gb8R\";i:1677503713;}',1677507313),('b54b9371a07d5e73b2a6102cdb3a9477',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aZ9e\";i:1677503773;}',1677507373),('366b0c16222fb624b7423aa782b1fece',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rckk\";i:1677503893;}',1677507493),('0c0380c74825b1e26e30b6efb48aea18',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ad59\";i:1677503953;}',1677507553),('0e0dd1827ec13b8725626521add23777',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i4r2\";i:1677504013;}',1677507613),('4dfcaddcadc5da1f417530651a2453cb',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Z5z9\";i:1677504073;}',1677507673),('20af05d9bb27ea71669150418a78e536',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p1ff\";i:1677504193;}',1677507793),('abadfb4df6e90af2719fb01fb714b213',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Dhll\";i:1677504253;}',1677507853),('5913e3f6feb3f0af2bad6f8e64c9ac98',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kl5z\";i:1677504313;}',1677507913),('d2bb8cec0b59048fe6052723e4852a53',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nAxu\";i:1677504373;}',1677507973),('52df40765dd8db5512b4e659faeb33b5',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BpWY\";i:1677504493;}',1677508093),('beab438f2785d2084a834471587408f1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Gn7U\";i:1677504553;}',1677508153),('79726ef43fb123ace6999cab96d30fb1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YuN4\";i:1677504673;}',1677508273),('c5cbae67944eff80a02201d002e56086',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"b99o\";i:1677504673;}',1677508273),('a95cdae892996254c12d0f1e8c3f7c2b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BBhC\";i:1677504793;}',1677508393),('92fe096223cacdda0031ecc704055f75',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hQD6\";i:1677504853;}',1677508453),('4d4c6ec3b72409351b3051d664c1241c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FxY2\";i:1677504973;}',1677508573),('cbccaf51dce77db93b82603f552271ab',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cyRl\";i:1677505033;}',1677508633),('1441529c174015fddbfc72da7f1c3a33',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EK4k\";i:1677505093;}',1677508693),('db6657199c358414d47d89e63e1f33a0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yd29\";i:1677505213;}',1677508813),('594cfd8aa29e5705e880966e2cbffcb6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lDoV\";i:1677505273;}',1677508873),('b7982d94033b7b4e291fd2f06abc23f0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gRdL\";i:1677505393;}',1677508993),('3d51c55579ed0377f986e547ac7418d8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Iq1C\";i:1677505393;}',1677508993),('6919d49a7b0f496b79c60317775c6ec6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"C1Ad\";i:1677505513;}',1677509113),('aa163d4aebd64dff60ded324fed77d37',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AvIy\";i:1677505633;}',1677509233),('8709b89cada1ba1c053073b40ebfa69a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xhPv\";i:1677505753;}',1677509353),('26c3fea877a0e261c8bd48628ae12960',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"E2sf\";i:1677505753;}',1677509353),('e45dfc56d732a7938b526e6b3783f8fe',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BG9Z\";i:1677505873;}',1677509473),('5f219f4fab8fe52035402f30cc13527e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bK63\";i:1677505993;}',1677509593),('662645bb916b412c8347efdadb921066',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"j5UV\";i:1677506113;}',1677509713),('e78a17b106668221fa9dd4397c174862',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Qaa8\";i:1677506113;}',1677509713),('c57d1127f1ff653fbed65ac755258491',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AGGb\";i:1677506233;}',1677509833),('87717a133c2b04dcda0094c0076f2255',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BV52\";i:1677506293;}',1677509893),('9ffaea1540fe750bdd30ee7b564d3e68',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BO0O\";i:1677506413;}',1677510013),('ca0da799bb00a36ee6379e298ffc53e4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"a9cZ\";i:1677506473;}',1677510073),('2d788328184b95a5f8a797e213459ac0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H8uu\";i:1677506533;}',1677510133),('a8e5fb77d72a1ad8fe06241fd632fdae',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kIZL\";i:1677506593;}',1677510193),('b0c95b0fa673be12885d207969fda7ab',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"T1Ik\";i:1677768994;s:4:\"Pk6K\";i:1677768994;s:4:\"wpCx\";i:1677768994;s:4:\"XJbz\";i:1677769069;s:4:\"H0hv\";i:1677769069;s:4:\"Ubby\";i:1677769069;}',1677772669),('d317e315db41718f6a63cc1aedbf7e6e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dji9\";i:1677767255;}',1677770855),('acf83de380257d30aa90ff7c8f756949',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Kt3t\";i:1677767255;}',1677770855),('6205b4c53bf0cc738e5d7ef60370bf54',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"k1Yv\";i:1677768141;}',1677771741),('0e98de4bb49d0d60cfb3e11c959e5213',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HVq2\";i:1677767487;}',1677771087),('663530e25505c54098024c78bb9206dc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UIzq\";i:1677767548;}',1677771148),('d3e2fe730ffce4b4de382ccaaf4b4daf',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D1ZB\";i:1677767623;}',1677771223),('3f99a68a5702a80d905cbd3bd8d35e10',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"x5pL\";i:1677767623;}',1677771223),('6a531146eefd5cb322b27c3850e6a63b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H7SV\";i:1677767773;}',1677771373),('2258f6c42ad593695bf433c4a938d47c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"F9r3\";i:1677768141;}',1677771741),('55a8e4e084aed4816fd6046338e45fb4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kQni\";i:1677768218;}',1677771818),('d46b0aafc09ce258c027b36dde0d6b7b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"G17k\";i:1677768331;}',1677771931),('882cddd1f8aea4071427f217cfc08697',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SZv1\";i:1677768428;}',1677772028),('57c6ab0d0e3941b5f75ebe22c77e3dd5',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IftN\";i:1677768460;}',1677772060),('4532d17d79918234953525d10cfa338d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"O9hy\";i:1677768533;}',1677772133),('ac4da78a468aba259f3e736ea52b4986',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IbVk\";i:1677768611;}',1677772211),('15518fd9596e0cd4502f6554bb9749eb',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SG2E\";i:1677768672;}',1677772272),('84b20164cabbdf29d801ded1d647dd85',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H7L2\";i:1677768783;}',1677772383),('f7e44eaa6105255cf62db7110bd9d67e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sn3w\";i:1677768783;}',1677772383),('71039d47ba42e48cfa0d757881afc536',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GXIg\";i:1677768903;}',1677772503),('7e62174fd22df15b6dade2ffb60a1314',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mhjJ\";i:1677768994;}',1677772594),('023d3da59c9313e738311815f33cd2bc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MEcC\";i:1677769069;}',1677772669),('5a78ad1359696b4486805cb084999b1d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Km32\";i:1677848576;}',1677852176),('42c7831986dacf2cfa3931506edc0984',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Oqjb\";i:1677848576;}',1677852176),('da43a0243454197acdecf05058181019',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"YU7j\";i:1677848949;s:4:\"Fhrh\";i:1677848949;s:4:\"s6T2\";i:1677848953;s:4:\"rhF0\";i:1677848954;s:4:\"nZpy\";i:1677849073;s:4:\"Gw22\";i:1677849172;}',1677852772),('3cc76aa1dc3ea5f417ba3a6927e64cb4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"L3zK\";i:1677848644;}',1677852244),('348bc5b66156c71910088ee5a5e17f30',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kE52\";i:1677848790;}',1677852390),('fc490866308ebcc9ddd246d59e07a170',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cpDV\";i:1677848904;}',1677852504),('c80a25fa44506ea6a18f3f903770b704',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XoLL\";i:1677848904;}',1677852504),('6f3fcedcbb926bce2f1aabdc5a69f047',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZQ37\";i:1677849994;}',1677853594),('982985901e661d5ea5767ff2b42548d9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XMOs\";i:1677849994;}',1677853594),('dbef8c2b18417503047e6229c8090642',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VkAX\";i:1677850069;}',1677853669),('cf03aaa05e8b516f98a810e5b7170e55',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"emri\";i:1677850140;}',1677853740),('2b4759d48532f7f2283c28206e6bc13f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AWAO\";i:1677850213;}',1677853813),('5e564737c68c8bd906f07f9bdf125c0c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ueq2\";i:1677850279;}',1677853879),('d61a06556601d7d93a4712d94646df92',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"C7YU\";i:1677850300;}',1677853900),('2081be57a18e6390fa708f410248fbc7',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Yd20\";i:1677850341;}',1677853941),('22b2a3a1cdd019953184be6b70f80d88',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"R11z\";i:1677850402;}',1677854002),('7abae9a643c026c37f931cba689c4684',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GLep\";i:1677850476;}',1677854076),('a71abf3f33ec87dbf50d2cf9022d5398',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"h8dW\";i:1677850552;}',1677854152),('f3ef68fe01ced0fed0495a3aed8ce9e1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l2Ro\";i:1677850612;}',1677854212),('10a0952a475d60bc883db3c1734f149d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JexX\";i:1677850620;}',1677854220),('d6d631752debe2c1c70305529184a960',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"PX2I\";i:1677850686;}',1677854286),('de8de5d68b83b91efb4166beea16acbb',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wyBj\";i:1677850748;}',1677854348),('44b6f416d377059d650fe107d26c1132',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"d1x4\";i:1677850810;}',1677854410),('456f54e96d42bb14501915497981323c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uiK6\";i:1677850870;}',1677854470),('5fb705ef40038edad36e085cb967bf95',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nU3z\";i:1677850914;}',1677854514),('89b3d991ddeb42034a48611fc79ba6f6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jJ9S\";i:1677850936;}',1677854536),('87f9f621302a55e35dca5c61afeedc48',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u3Aw\";i:1677851006;}',1677854606),('53501d44c2c0d0b6ddced7244b4f771a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Oavv\";i:1677851086;}',1677854686),('a92b7510c3a53dc0e8c097c2856659ef',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"COVO\";i:1677851154;}',1677854754),('45f74632b6c0567d79218a867a8317cd',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Vmvu\";i:1677851216;}',1677854816),('48cb6978e72e7aa910ccba9710051748',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FRIi\";i:1677851216;}',1677854816),('9ecbc22559b454dcb944dd9d6f289031',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KQeK\";i:1677851280;}',1677854880),('da3cd490906995c2d367b1bf87af78c3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tr8Z\";i:1677851280;}',1677854880),('ad945b3f465bbc81d5df688cc01085aa',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OSVO\";i:1677851280;}',1677854880),('15bedf8ddd29eae990c4dcb2a035d01f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"R26j\";i:1677851346;}',1677854946),('b12b0aed7933697a4dcc9d5029becbc2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U8ju\";i:1677851413;}',1677855013),('32b05a09a1b86a630c4212bc879519ba',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Haf7\";i:1677851478;}',1677855078),('ca3ca3675cadd04a2881266929e25700',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QJjz\";i:1677851517;}',1677855117),('7c7de0893c07a89284013e38e6881013',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g9I6\";i:1677851542;}',1677855142),('0f8abdb3a61b47bff843cb9e81a06994',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D1Ds\";i:1677851610;}',1677855210),('25a840edb506e4c2c36df84a94813005',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"m2y0\";i:1677851671;}',1677855271),('7fa6aa523190e8634195462dbc875a9b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MMUU\";i:1677851738;}',1677855338),('aaf53102e938c31d9e80a140adcb1825',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T59X\";i:1677914229;}',1677917829),('039b30a375cc43cb5d8bf6a2df79c330',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BY2y\";i:1677914229;}',1677917829),('6cb52166f79f3123d682156777e98366',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uPjt\";i:1677914294;}',1677917894),('74a78c8a286504dff22e4b0efe3a2f7d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"W1qO\";i:1677914356;}',1677917956),('a27f6b22ab9af8aa217dbb0f6d3c01d4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TIBv\";i:1677914424;}',1677918024),('dea946a06074aa85e472bf1cb8977e60',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gbQo\";i:1677914500;}',1677918100),('70ce81cdb11df7cd9cc9a7d9e9769363',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pwGa\";i:1677914544;}',1677918144),('fb409d0f019d9c2b2edf4b1dceed2f2f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"j19f\";i:1677914574;}',1677918174),('a05a27821575258d9131911449372b01',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MHmb\";i:1677914636;}',1677918236),('d313acd9373a12d5081ea2daf8310e61',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TaNx\";i:1677914724;}',1677918324),('067d6ec16144c46c8e744480d5390422',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Zi4o\";i:1677914791;}',1677918391),('0066bd9c0f2407de98de4b2a9de8f004',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gBcO\";i:1677914852;}',1677918452),('b9e27e27b7ff1021e9c136e766faaa32',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"esmo\";i:1677914860;}',1677918460),('c6a5b4a596563d5a93d1ac6fed14e9e3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Lbhl\";i:1677914924;}',1677918524),('befc6895540ae030ff5185e3112f2a93',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GibR\";i:1677914999;}',1677918599),('f57fb7d605cd38537b6b191e4a34c98e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r5Jx\";i:1677915071;}',1677918671),('8ade16326615c4a317da94140be254a3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"PT2n\";i:1677915145;}',1677918745),('5d490a2f649ef456debf8908c615b1ee',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kz9G\";i:1677915162;}',1677918762),('07613fb059e59f8240948647bafeb5b2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"I2d7\";i:1677915219;}',1677918819),('7c73c77a5df7a7d1aafe8800ffa93451',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Q3DD\";i:1677915294;}',1677918894),('34e30b744a594d25237090d65db72519',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"StE0\";i:1677934883;s:4:\"rv2t\";i:1677934883;s:4:\"J9v8\";i:1677934883;s:4:\"njLB\";i:1677934886;s:4:\"fWI0\";i:1677934886;s:4:\"X9lm\";i:1677934886;}',1677938486),('8b553a473ef30f128221ac5edacccd45',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"S1Pf\";i:1677915355;}',1677918955),('dd8cd0964d9b20fe23380b987d40f292',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hi47\";i:1677915429;}',1677919029),('6b6b8ac6f8ec8171cfaffd9b3d1fec3b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"k8rk\";i:1677915472;}',1677919072),('a046a6eb08e9339652665f48cb7c67a0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Yx3z\";i:1677915502;}',1677919102),('072d5fa5dcffb52b1799568b22b0083e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w7fU\";i:1677915592;}',1677919192),('f8e6efa04ed9ba9995e71b773c29d1ec',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Jz4s\";i:1677915659;}',1677919259),('16c1340c29eb3986a2a23f01b4cdf667',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AOZi\";i:1677915659;}',1677919259),('bb731e590829da813ada89ab61fc8dde',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"W344\";i:1677915659;}',1677919259),('5b839bc6b66b91f0f807ebb330ae9c30',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"l02a\";i:1677915779;}',1677919379),('58cb6ad7557b5b282ce2da964792f9f1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JlE8\";i:1677915779;}',1677919379),('5ba001d2203da7e721ef00c9098cbe52',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ckNa\";i:1677915779;}',1677919379),('32f3483d4855fe73e5e15d7991e9532c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gpB9\";i:1677915779;}',1677919379),('cec26375cb7ac5c2b390029126fa0e06',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VlNL\";i:1677915779;}',1677919379),('d4107eeff7d96f28b1dc9ab3e044aaaf',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g42g\";i:1677915899;}',1677919499),('18265f55961692866871de2b7ff5d0b8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QbtC\";i:1677915899;}',1677919499),('82b95a28d53b32fa93c9252986a376dc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Kxxa\";i:1677915899;}',1677919499),('26512b9c63586678b5c1ea91add426aa',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bsEq\";i:1677915985;}',1677919585),('2ed725dbf32dc63378fdb0c024d02d1c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"r48f\";i:1677916079;}',1677919679),('b8ddfc69763b4a02f25a25a032d0b1de',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"s74M\";i:1677916079;}',1677919679),('1487a7883a9f244bc778ff70f2f8254e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mc70\";i:1677916079;}',1677919679),('e43970521d14aeaa6ca544994a56f623',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ED99\";i:1677916139;}',1677919739),('abce6b182392a8513389a79b4d290a6e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AYIB\";i:1677916139;}',1677919739),('a0ee6a21e88cfb26312439db8c7b9ac0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"I0zT\";i:1677916139;}',1677919739),('62b6934077f90d96b6b54df2dc4c66d9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TxLh\";i:1677916151;}',1677919751),('8bf7037631d68c17596088d843b6996f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"P1KE\";i:1677916219;}',1677919819),('eec5918ffbd904f59cc7fdad0aa29b02',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"F324\";i:1677916282;}',1677919882),('357e6f93c7bea2298f52b6d7d70c39e9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"I98w\";i:1677916345;}',1677919945),('296466cc73c2d90da86735db44182fc2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gG06\";i:1677916410;}',1677920010),('09e12ab89b4fee5c3b2cb44b3e274a21',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lmd4\";i:1677916440;}',1677920040),('9ecf2458b665836f80d0ba68fc2fe456',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QR1C\";i:1677917099;}',1677920699),('835fe5eee29aedbaa0e695c8f139a374',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"O8Yv\";i:1677916477;}',1677920077),('85e0aa0937aa2c00e926a408876aa021',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w1r6\";i:1677916544;}',1677920144),('9066e7a18a4b9c134123c9dfe2a5f594',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XnmJ\";i:1677916604;}',1677920204),('c797c1fa3c51d0d1cab816dcbbdf5bda',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"PcpW\";i:1677916680;}',1677920280),('7c5bd27a210a21670657f632892123f9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zjtQ\";i:1677916741;}',1677920341),('59dd7db510ecf34cb0e546cdd4e062a4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ag1f\";i:1677916741;}',1677920341),('56f55a2d6017ec96a0a103dbcf9a125f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eqq3\";i:1677916811;}',1677920411),('65f9720877a5793b8d7a8b8a6584a1da',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"WzDs\";i:1677916890;}',1677920490),('cbfe7ccaa076e5012545d162dfaac9ca',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wqF7\";i:1677916961;}',1677920561),('ac77b48eca279a69e11d68f40709a3a6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UeC8\";i:1677917039;}',1677920639),('d1b419a6adc43494a3b3278921de4002',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Cbnc\";i:1677917039;}',1677920639),('a087a7a1ac78ad4b73065b452f9364e1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rvhH\";i:1677917039;}',1677920639),('74a80bef971f5e27f282fbc240a88500',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mssS\";i:1677917099;}',1677920699),('9511dcf14cc610e4fa037aa847dc1d1c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ROo8\";i:1677917099;}',1677920699),('2566176ee339981926331f0d02bd073c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"N3gu\";i:1677917159;}',1677920759),('d92640f96ae67c8a7f7821cb9327400d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Y77J\";i:1677917159;}',1677920759),('044109d2d89a6d54a73d79b480e50a2f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cu7Y\";i:1677917159;}',1677920759),('11e05c13beec0af6fc29f798a2c656d0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MIwY\";i:1677918480;}',1677922080),('1ac9c4e95de50108e12557f1ce8b08fe',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z623\";i:1677917279;}',1677920879),('79af3388c1b62be5c60dbd3b454d3ce3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Me0A\";i:1677917279;}',1677920879),('c8e3be1faf319a3cc209fe4bcc0f8017',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zKS3\";i:1677917279;}',1677920879),('c1169936925a7f1438ad07bc1f66cc2f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YeS5\";i:1677917399;}',1677920999),('1cd8234a6dcdc971f3503d0c21bcb908',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nQoF\";i:1677917399;}',1677920999),('07dd3aaee7e67b6887ada7fca55704ce',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u99q\";i:1677917399;}',1677920999),('65795b11bb805f54b71514315c2b8ae4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zdMM\";i:1677917459;}',1677921059),('fbbde7379959ef901f986816aea0dd44',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uwZw\";i:1677917459;}',1677921059),('c73c8c700122f08f0d7800c2d1111fb8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cIE7\";i:1677917459;}',1677921059),('497d59c7e2e8506d01054bfd49a409ce',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bA5O\";i:1677917519;}',1677921119),('01dac1d6a935bf4881f4485cc6b7ba1b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ENwN\";i:1677917519;}',1677921119),('8264b2a96103264d7affaac7816bdb9c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M4cq\";i:1677917519;}',1677921119),('22993c58aa95643293f4678610f1ef7c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QUAw\";i:1677917639;}',1677921239),('ba69afd3236d129607e033c9c6b39999',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IxfG\";i:1677917639;}',1677921239),('294ce3815a91f4d7b6b7adb4e1882f95',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EZFI\";i:1677917639;}',1677921239),('fb4f96e843be9a2989eeff9286b0b45b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rR9K\";i:1677917759;}',1677921359),('33a3e3919325c9b86f31b759e8fe3de9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HB5Y\";i:1677917759;}',1677921359),('25ee63907313f0ac58676d87d9d8ecce',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jT13\";i:1677917759;}',1677921359),('e3f5b4c81fd3d09bbaad0a0e24e8bbe8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cGob\";i:1677917819;}',1677921419),('68a0783720b90d8d73cabcfcead5f4b8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bSEN\";i:1677917819;}',1677921419),('25c1fb6a62e622c9f9affeeffb844a83',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Pl42\";i:1677917819;}',1677921419),('1d488de0c6d44d438624d8baa9c5bb8b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gWho\";i:1677917879;}',1677921479),('72042fa8903664206193e79db11a68ca',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T2zW\";i:1677917879;}',1677921479),('25a807240dbede38d469c617ec4e9c97',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OwUc\";i:1677917879;}',1677921479),('6c11fbbff91a2806d62bc1edec5c0f36',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"G1tt\";i:1677917999;}',1677921599),('383239fdb28c2813f7c9decc167c72d2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DMm6\";i:1677917999;}',1677921599),('6f6eac4253488e20d8ba193070cf59fb',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pz6I\";i:1677917999;}',1677921599),('c0c2621d33e9c86e9149d61afa204ea5',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cx39\";i:1677918119;}',1677921719),('f80e474e860885a1573a818ce32562cb',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"juug\";i:1677918119;}',1677921719),('c5ec9514b73ebac208bbf6f35a3ae57f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sI52\";i:1677918119;}',1677921719),('acc78e515f80b72940e16e7820b4fff1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tW8y\";i:1677918179;}',1677921779),('5fe55c21f834bca3c9497435b2d87dd7',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i6d8\";i:1677918179;}',1677921779),('f5f5399cc3ac70fe2e98e936fbb139c8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EsS7\";i:1677918179;}',1677921779),('eb295a39f9060bd1136aeff9ebb0352c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NIul\";i:1677918479;}',1677922079),('21d0f71bb55b96d1d417a82fda9b2b80',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Dvv2\";i:1677918479;}',1677922079),('0a12eefb6e9001c1a7e41a999e4278c4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"F41k\";i:1677918540;}',1677922140),('cf2169b6f08df6bc4e6916bfc8c0ff45',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"q4BJ\";i:1677919449;}',1677923049),('1a16d7f38f74ecf9a32b8cd9476a5a0c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sMfJ\";i:1677918659;}',1677922259),('accba5c3038d69c4a49199576d0a5ba9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Q8v3\";i:1677918659;}',1677922259),('44e52e76117f5bac14079f2c2a67cdbe',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z943\";i:1677918659;}',1677922259),('aa4eec64e0a722fcc1b058507a18fedc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Udqb\";i:1677918779;}',1677922379),('d9690c34f8bb0640a690ce7d56d8ff55',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U1UD\";i:1677918779;}',1677922379),('8082737f062ffd19289b7ac9baf618a1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XAk7\";i:1677918779;}',1677922379),('e919a7e54b66d07fbde9a4842334e337',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gLZ5\";i:1677918839;}',1677922439),('0fc1b39daeb2c901cf00fab6507d4c67',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vx6f\";i:1677918839;}',1677922439),('e3af5e83fa2d9140b28cea8fbd16ccab',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i3ZU\";i:1677918839;}',1677922439),('7fe90d01900b924ff2daa888cd832da9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iz69\";i:1677918862;}',1677922462),('0066a4cdbbbec9fe699fed7ab60f958d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OQJA\";i:1677918947;}',1677922547),('b9deb0fa63ff2d0ae0d40ac3835fbdc6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gKf6\";i:1677919019;}',1677922619),('cbb11bb319762c6eadbcc86f4fafd464',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FoRN\";i:1677919019;}',1677922619),('53c048dfc4cb6f878c3db97833a9100a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YSZq\";i:1677919019;}',1677922619),('1a5828e70e6d8f582a4c9779f1440926',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pI9Q\";i:1677919139;}',1677922739),('1cb2c43766f47cb5e72822da55852d1d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KRnS\";i:1677919139;}',1677922739),('5bcfb1c460bbd84691d94164744b069a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"e2zG\";i:1677919139;}',1677922739),('1486e185904c4d4329641ca6e4d1e7aa',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ekg0\";i:1677919199;}',1677922799),('49b845b55d4641a09c74cc9102d6bdcf',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VZng\";i:1677919199;}',1677922799),('55f312b765f09983825c6ed180f708ac',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"QMAe\";i:1677919199;}',1677922799),('742ef555215d4b3ddcfd158749148142',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DTsR\";i:1677919259;}',1677922859),('dd4c901df279c02c650f7df488602584',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SnUK\";i:1677919259;}',1677922859),('aaa120328e862a89689533e113dda69a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f512\";i:1677919259;}',1677922859),('37844e097da7df6f843bec6377ad8d11',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aLeq\";i:1677919379;}',1677922979),('82de3375ffa573718bf8f095298804da',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"S01t\";i:1677919379;}',1677922979),('7ee973ceaa6bb8055c31b4b2a67a3d0c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J47U\";i:1677919379;}',1677922979),('0d01b84e5a98cc273e2a0b9db34038e2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kIqS\";i:1677934872;}',1677938472),('4b3ee2fcad00412e5fb9d6dd2eeda6dc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KHz3\";i:1677920819;}',1677924419),('402716dffc3f5468d0bd4de3b7226a15',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yFXW\";i:1677919506;}',1677923106),('bf45f4e31e906ae465c676decf870b72',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"c8S8\";i:1677919510;}',1677923110),('00b95a5dbd38727c628288aa92c4dcb1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Yc4d\";i:1677919588;}',1677923188),('ddc0e1f32a071f39d8abc4099a5e73c9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kNEX\";i:1677919679;}',1677923279),('7982bc65e5fdc07008cea3added82fe2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Hoal\";i:1677919679;}',1677923279),('7e62e0422165cee061ce58b9f66de5a6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"E38G\";i:1677919679;}',1677923279),('5b8f7bff4c0f13a95764d047b4777b42',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cSkr\";i:1677919761;}',1677923361),('96a81af0f710469bc5a95565d79d0add',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ydx1\";i:1677919828;}',1677923428),('e8e7afe6df6fc2abbb589d49f47f725e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MK3o\";i:1677919828;}',1677923428),('8bcc3b5d27f96c7475d2b73f218b8d23',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KUDk\";i:1677919919;}',1677923519),('abb872abd9270a3831a6ca4aacea1d66',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dzl6\";i:1677919919;}',1677923519),('c2374a8a5a1a06c2705930e927c399b0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"oioZ\";i:1677919919;}',1677923519),('ef7026bfecd3672aadf43d24dadf73e7',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BYS3\";i:1677920039;}',1677923639),('814398904117ce620133ff7910cbc079',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"h61g\";i:1677920039;}',1677923639),('4ee714d6826df201c6a82305bbff1675',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lPmC\";i:1677920039;}',1677923639),('f0c16adc9f962e710254900b9af5d5b6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"q9EU\";i:1677920136;}',1677923736),('a227b9d9d58c200f9c83f5896ee89e29',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V8LG\";i:1677920137;}',1677923737),('38e2d3e90bb193865dbd4326686481a3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Wds2\";i:1677920219;}',1677923819),('50b15eeb21d23e452caea9c751ad0900',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mr66\";i:1677920219;}',1677923819),('77555e66312d3c317b70af03a2cd7d93',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TA3b\";i:1677920219;}',1677923819),('926c9df4dad860eada951058398e88f1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zJ0j\";i:1677920319;}',1677923919),('4b3101e2fa580ec835ccdf059b3841fd',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YC3i\";i:1677920399;}',1677923999),('45365414df96f92a127ad4630af39af0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TeUZ\";i:1677920438;}',1677924038),('c238afd642a940820cdad8f5a756d3a2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KgN8\";i:1677920519;}',1677924119),('7429cb1c1cd78aa3605c7bec1ba67e33',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pSi7\";i:1677920639;}',1677924239),('35c5c037935afbde4f48995d52d5fcef',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iy1V\";i:1677920759;}',1677924359),('6f91020ad7f678c289952e09f3415f9b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tvBj\";i:1677920759;}',1677924359),('c9ccb8d9c6870397910810b7d081be9d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VvjG\";i:1677920939;}',1677924539),('a7320f603700f76a96805fcb5bfdd59a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"n0y2\";i:1677921059;}',1677924659),('13fd2f47f8464477094cce78ee3c666a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g6O7\";i:1677921119;}',1677924719),('08acd46f37d58004d7379c02bfe55ba3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"phy5\";i:1677921179;}',1677924779),('3468dfb2eb296a0ffd81aea0b3782f33',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mbhh\";i:1677921299;}',1677924899),('10b77cb87adfc272a8bc607407d8d81d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"c5ny\";i:1677921419;}',1677925019),('7168a85fb8068426d63bbe076e3c48f4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Mh4r\";i:1677921479;}',1677925079),('e6912ef599d94d8dce01ba9b2db641be',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"arZC\";i:1677921479;}',1677925079),('906af33b964d53b72e52872d1e32ce68',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M9Ir\";i:1677921599;}',1677925199),('15e5bc53f9ffe5ce0a5a283f2c74bc48',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OJ14\";i:1677921719;}',1677925319),('3819c2899559eb65ceb90f8a6c1d2e06',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zz71\";i:1677921839;}',1677925439),('75b2947510076f6f9d9eafcc4ac2b49d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Pu0e\";i:1677921839;}',1677925439),('2662751b78abbd60f3c227712818c269',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ySgc\";i:1677934872;}',1677938472),('5fe9568f79b68dd4a8ab1cd94a6d371e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cI4v\";i:1677997623;}',1678001223),('69576476f7504fd9bddd532a37387bc6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ny1g\";i:1677997623;}',1678001223),('22bbb2c8e451369905049dbd00c47005',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wZ72\";i:1677997688;}',1678001288),('57c1c6edf609822f1fdc702afd8ad0e8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:6:{s:4:\"zKH2\";i:1677997717;s:4:\"ZFl1\";i:1677997718;s:4:\"j1aY\";i:1677997725;s:4:\"zw2C\";i:1677997725;s:4:\"BlqM\";i:1677997726;s:4:\"DRAw\";i:1677997726;}',1678001326),('46f725b2994ff6981e2e7300d54fc473',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"j9zD\";i:1677997761;}',1678001361),('88db09083338993fe30e7ab648ca6490',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vFPj\";i:1677997831;}',1678001431),('ec844c4821bdc81c576071b60b4707ed',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HC99\";i:1677997911;}',1678001511),('fdec120aa2d1bd09e4b74f2960cec650',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"e36v\";i:1677997941;}',1678001541),('284c5e6b4a8917dd4323478851714a8b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Y1v6\";i:1677997981;}',1678001581),('c850e6f99a60ebcb27614ab35237d4cd',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sZ9e\";i:1677998061;}',1678001661),('762145cb3738dc8e31603883e39b2f57',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TH6g\";i:1677998131;}',1678001731),('46057065d30ff6150866dda18e88e4ab',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yGBN\";i:1677998211;}',1678001811),('f82dfb0f1564ccb44b2c68cb87c2061b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"B00B\";i:1677998251;}',1678001851),('ac22ea3516150e70c871eb412b135510',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gQjF\";i:1677998277;}',1678001877),('99b0ccab22837ad0a6cdcb436d0e3ffc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Y4a7\";i:1677998397;}',1678001997),('c19f1658572f7583021648bc97498ec7',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CDmZ\";i:1677998397;}',1678001997),('4e1d1f3f7cf9ae38df1c13f2ebe0f7d4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZEXT\";i:1677998517;}',1678002117),('2f641f016ea29b394e72447961b9b1c4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"e7S8\";i:1677998517;}',1678002117),('ea0f103a4008d89e119c3a6af345882c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vXZz\";i:1677998577;}',1678002177),('bbd5098b240b40061665a1f6acc5b837',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"op3X\";i:1677998577;}',1678002177),('29388aa085c13aee0c0f0cb64c33ceaf',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"e2g3\";i:1677998637;}',1678002237),('bfb505f3c7b2050d07501293cc46667d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NC97\";i:1677998637;}',1678002237),('1fd1f053f8fea9a550a9d150e790cda8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GSDj\";i:1677998757;}',1678002357),('3507efbd61796a11d556d4df05dda603',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"W5e0\";i:1677998757;}',1678002357),('78579156a50893e0eb8edc34409b1059',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VT2W\";i:1677998877;}',1678002477),('f3c51765a7384294ccac5977341c0a83',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qxS7\";i:1677998877;}',1678002477),('20a6b4ecf127e463eab18dedb206c672',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"S62x\";i:1677998937;}',1678002537),('3cc410b3edf287d7f6c3ee7e39060fcd',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NLP4\";i:1677998937;}',1678002537),('b267442a5549add7cadafc77a1d411a1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hGsQ\";i:1677998960;}',1678002560),('34158a4dbe64d02d1e9f9e355f2828ef',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"erfO\";i:1677999027;}',1678002627),('b6c86394d438956b0da21412d570c834',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CffY\";i:1677999094;}',1678002694),('7df728dc627e6ae4ec8d1593dd03a165',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"P702\";i:1677999177;}',1678002777),('9f2b3b258dfa67a2a872e334883fc68f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"A15B\";i:1677999177;}',1678002777),('a5a0a8ca2d6a91d5d5205986e58f49db',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EmX7\";i:1677999244;}',1678002844),('31ddc79220462eebdbcdb70bbdfbfe67',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"A87M\";i:1677999244;}',1678002844),('115d1e5705f9a0dbea4c4e709b54e259',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dgPs\";i:1677999327;}',1678002927),('24267ee71a16c8da830a55d3c3fc6c2d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sBfX\";i:1677999417;}',1678003017),('976d8103864233c317bd26adf1920897',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iWXZ\";i:1677999417;}',1678003017),('9553357c4c7f7435c03825adb28491c4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H47F\";i:1677999417;}',1678003017),('f17c75f2305213f12053fc15967c4ca1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"R887\";i:1677999507;}',1678003107),('68fe9bbda8e9dcb498481d313e764814',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yhTc\";i:1677999567;}',1678003167),('88afde8e7f02bbec100abf2c9dca043c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"c7Sl\";i:1677999597;}',1678003197),('fc7dc06e4596b542fcaf41dc119f38ec',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ITKK\";i:1677999597;}',1678003197),('9d33864a32a8bd513848bbd05828271a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CkZO\";i:1677999597;}',1678003197),('7a7382178edc404472c27e7a02baf8e2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Eu3Y\";i:1677999658;}',1678003258),('c8f1e04d2532e2a9653c80849d4c16ac',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZKcF\";i:1677999748;}',1678003348),('e2c16325dee000992318797918c3b968',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pmiM\";i:1677999837;}',1678003437),('5d9df265d742123dee861f03083ed56d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jL2N\";i:1677999837;}',1678003437),('849871ee0050fb76e56b9646224be249',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kGeG\";i:1677999868;}',1678003468),('7dcbf3e65f0405c4f200e7936b91b4c6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Se7D\";i:1677999898;}',1678003498),('4ebf8a76d3f5f5d984551893fa1e1477',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u778\";i:1678000017;}',1678003617),('64b630d340c44a7ec9b8653fb82e4c9b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"N0Zs\";i:1678000017;}',1678003617),('bf401d038ebaa1418d7c5d2d9b87e56b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TCWm\";i:1678000017;}',1678003617),('f6a9231329f2233b3ed0f4811b5fa197',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MEfF\";i:1678000137;}',1678003737),('df8bb0276f357f24e2e22ac789687461',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"us6x\";i:1678000137;}',1678003737),('9b15e069d9a82c68053b795136704385',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w5ZM\";i:1678000137;}',1678003737),('24ea967e8e7ec5f13b72dbb0934b24b1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p5EE\";i:1678000197;}',1678003797),('9a1223edec8b46f2e102dd3e8ccddd4c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"y9K5\";i:1678000197;}',1678003797),('6ef2ba27626a3b5f7e6b68553b098446',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f0JB\";i:1678000197;}',1678003797),('7541942834516e6408405a54159dec5c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pw3E\";i:1678000257;}',1678003857),('451711337451755d4698a675730a2a3c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uYP0\";i:1678000257;}',1678003857),('2a943cbb2072163cfb0388617ebe61cf',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UO7o\";i:1678000257;}',1678003857),('c9aa3600d732ce956d5f6766b00addd5',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w66j\";i:1678000377;}',1678003977),('8a75cd886008bb87cf871afb134e7e08',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f00S\";i:1678000377;}',1678003977),('532141c9ec6a83d724cab66f4446344c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iKIA\";i:1678000377;}',1678003977),('703f7a50be592f094ee40a348bf08c4c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VnrP\";i:1678000497;}',1678004097),('0844577b853416fa5f34c21dc2f3f94f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XH9C\";i:1678000497;}',1678004097),('4b2c85f6cf2d5a05895f80094958f74c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ms2Q\";i:1678000497;}',1678004097),('7707fb30a837657a1159d62867753ded',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KPHD\";i:1678000557;}',1678004157),('1d906d5e03fa92ec0a8cbfc87a552218',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"x8Kw\";i:1678000557;}',1678004157),('205e6384c3dd1282ec672b563c66734d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IdKX\";i:1678000557;}',1678004157),('949ef794b3dc8b489b6eb05e4e8d429b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"U001\";i:1678000617;}',1678004217),('9e3fb35d99f8f109ac2b8ca034409412',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JL8F\";i:1678000617;}',1678004217),('ea16651df9d2fbabf513f8b56f25c7c2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fz27\";i:1678000617;}',1678004217),('8078c1d9586b2e6d6df28008e4c16aeb',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wUh7\";i:1678000737;}',1678004337),('d17200a79d5e4f95d6e281e99fac4b3b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w9Sc\";i:1678000737;}',1678004337),('4a0c6e634d13786978358ebddb0f71b7',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zfOB\";i:1678000737;}',1678004337),('1353f13fe1a28e1515d8eddf869f7021',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eL5H\";i:1678000857;}',1678004457),('f8aabf329276b778b72d18cb3b0087b5',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tC2b\";i:1678000857;}',1678004457),('2238c16d51ce6a682262c3f3fc10a162',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"O22G\";i:1678000857;}',1678004457),('d3f72760dd6ca3ec85e0342bca4a5244',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uG9V\";i:1678000917;}',1678004517),('18ba8758a57dfb4855b66d16fb1070a5',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YN1N\";i:1678000917;}',1678004517),('aa785c616348e411214487fba4ce5d96',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uz1z\";i:1678000917;}',1678004517),('5cd15748530627b6c0172a4abfa7e1bd',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uidd\";i:1678000977;}',1678004577),('ce4995adbbfc6a2fdd2cbf8bffe7d7c3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iTeU\";i:1678000977;}',1678004577),('234a65ffb98308323ed5a8cb4a16523d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eQbe\";i:1678000977;}',1678004577),('a45ad4d7f69c7ae24ae10444aaaf7f37',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"j25U\";i:1678001097;}',1678004697),('acc378bb7138e77250839174d5207815',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J2D8\";i:1678001097;}',1678004697),('edfbf0780a8ca3fa52d160f12b25a52e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Uoce\";i:1678001097;}',1678004697),('466e1b1d9c7d80013f85fa94a723ea7e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"larM\";i:1678001217;}',1678004817),('1a1e17e7bf7e480075a8964e72f92bcb',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zqdY\";i:1678001217;}',1678004817),('c1a3b0f739872a4a1962069ce2a82aa5',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pkRt\";i:1678001217;}',1678004817),('233b90bf3429269cd745dc341a03a518',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"t6zk\";i:1678001277;}',1678004877),('5867687a825ccfa53238fedf03103f83',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hYa8\";i:1678001277;}',1678004877),('620f78a981de7fc7238cb642c7efa598',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TsMP\";i:1678001277;}',1678004877),('ea91ad504af9b62b8a06b2e6693ed688',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"H1t0\";i:1678001337;}',1678004937),('0b11a71726a64e882c63795ae1913ee7',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SOWo\";i:1678001337;}',1678004937),('c42f5db15cf53c4c8d364459b0580551',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FG0X\";i:1678001337;}',1678004937),('b90512e3bc216dc2ad2a36dc3d7a7a6a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VMIG\";i:1678001457;}',1678005057),('8240f14ca2180e568d10982d474c8c1d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J2Wx\";i:1678001457;}',1678005057),('1670093b00a06a3147dc7bde0a65cf27',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T5ie\";i:1678001457;}',1678005057),('e62f34cdb85b4317700bfafe6e27d7dc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RGgY\";i:1678001577;}',1678005177),('3894e6c59564d29ea36c66d8c443060b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"La1c\";i:1678001577;}',1678005177),('d1bcdcfdf64b783a9b50bc6822d9c1bd',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Yf89\";i:1678001637;}',1678005237),('dcd3c39933833dea52c0b2f2fe3bd30e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iZZN\";i:1678001637;}',1678005237),('82076bdd97d0c1a3e8d789f14edd2e73',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rsQi\";i:1678001697;}',1678005297),('012f0d817bb0adbbe2d31fd2400549fe',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZJrM\";i:1678001697;}',1678005297),('0a5921cb571d2007bc151711f03553bc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dvt4\";i:1678001817;}',1678005417),('67a9131349e2e8cf786afd30b116e196',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"uiWI\";i:1678001817;}',1678005417),('62c2376faaacbf6a009c13651f2f3fac',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"imzv\";i:1678001937;}',1678005537),('5752ad038a651c78d011340a1de14c7c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YJJo\";i:1678001937;}',1678005537),('7203a2d6e036a58ffb89bf54fbab5f95',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"eEKf\";i:1678001997;}',1678005597),('c9a827562fddc3bd337b2a7668a25367',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IaN6\";i:1678001997;}',1678005597),('5ee7d6542f39560fdc7c9ef8e4c1c0c3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"RQ8r\";i:1678002057;}',1678005657),('0d458a2f856cc8bc6fa3d6a925695ce0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Z4co\";i:1678002057;}',1678005657),('5e70fd0a05e14b55c50f4493dd7ce8a6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f0HW\";i:1678002177;}',1678005777),('5f4b3e707d2fda5e1a62dac19b6b052b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tRti\";i:1678002177;}',1678005777),('cda9cdb88ffa2be57c3f7f0030810331',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wfF7\";i:1678002297;}',1678005897),('dd192fbfa93bd15255523e00252bfce1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TkyY\";i:1678002297;}',1678005897),('15b400cf4fb3650bde2652ba1bab9f41',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"a1VD\";i:1678002357;}',1678005957),('f28f03e704cebd06f52671667a07fb9c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J9A7\";i:1678002357;}',1678005957),('c7c7aa6274d7faf3d4440fdbdb152e9c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Jijc\";i:1678002417;}',1678006017),('e1356586611174d53979d84bac54c9e0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"UMM4\";i:1678002417;}',1678006017),('cb0f8f5490e52a54d64ffcee339df21e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"N8Oq\";i:1678002537;}',1678006137),('d21e8dc316e6886d679c0cd84515be82',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zHSm\";i:1678002537;}',1678006137),('3492caf39729703e121aa63193efb4f9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sQpw\";i:1678002657;}',1678006257),('f9c91571e51ebc7beb87f1b5fdf75add',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"up7h\";i:1678002717;}',1678006317),('0e0364aa085c5439e2f6974753caa2a9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"vAAn\";i:1678002777;}',1678006377),('bdf92121d52c3b82bd902f603274ebc2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"A9S9\";i:1678002897;}',1678006497),('26de65d03466ee1a6a9c1776539ab922',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"GBib\";i:1678003017;}',1678006617),('6f015b4fd0d69e2a2c07a73d816c6343',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ErvV\";i:1678003077;}',1678006677),('e294754043a90f264c4c7aa836696ee9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BZHN\";i:1678003119;}',1678006719),('9747e3b4207c1e1eed9e16cad9e6249b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V6L6\";i:1678003192;}',1678006792),('067438a2a27c40d8afc4a95974f667f2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yQ20\";i:1678003282;}',1678006882),('dc395a0bfcdf4cfffa699ecd9baa368c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TSZ2\";i:1678003356;}',1678006956),('b4aece4878d6fb37649fe2a970cab804',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"K7ye\";i:1678003406;}',1678007006),('75652d94b10981ae8199b8b9c3e4cd42',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SzI1\";i:1678003436;}',1678007036),('3ff3fadd3701d932760454a7b381d53b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"w0EA\";i:1678003526;}',1678007126),('3e15a0953a33c0d4638250f860ce491c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tm5H\";i:1678003616;}',1678007216),('3e6e0dfc6bf8d878a5054277270d0e27',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"X9yl\";i:1678003737;}',1678007337),('503d77889a33a04786c086ca00dec2b7',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"kIVv\";i:1678003737;}',1678007337),('ad0f42097efeb421c0932eb0c77d6188',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DUb7\";i:1678003857;}',1678007457),('890eca785bef4b537ea522b37bdd8bde',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Dx9j\";i:1678003977;}',1678007577),('00537167df751463311414c01aaffe9b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dTR8\";i:1678004097;}',1678007697),('e8acc6485e13236659ac6ff2267b8934',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"J0il\";i:1678004097;}',1678007697),('8da573e3f3e96445892834a5e7551c6a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"c1Io\";i:1678004217;}',1678007817),('72470f7238df7a4888005ea3fce87f12',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SSxX\";i:1678004337;}',1678007937),('cf425bfb5e03a58f3d810d7fd5df3a15',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NL86\";i:1678004457;}',1678008057),('411e2c3738a83f201d3d60d149ff01b0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"fC7w\";i:1678004457;}',1678008057),('2d11c7979fd35bfd591b1109e7e5ab9e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"c2YP\";i:1678004577;}',1678008177),('74039a88aca0cfe24e20edaa24cf5ebe',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wYoO\";i:1678004697;}',1678008297),('bc72f35dcb5fec32d683ef34d4be2d27',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Neq5\";i:1678004817;}',1678008417),('092e810185c3fff62670cef64b34e2dc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rlc1\";i:1678004817;}',1678008417),('0abf2f785533b6117d605f904d7257be',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"IuLz\";i:1678004937;}',1678008537),('ae6885081a2f0f1842c345321f45de56',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"F5dd\";i:1678005057;}',1678008657),('ddaa87481dba945820efe36209e379d4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BUpT\";i:1678005177;}',1678008777),('99bac917ab24f28051ed74d3627ce97d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p0ii\";i:1678005177;}',1678008777),('4ec40bf54d6987b84905650326da94ed',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XE23\";i:1678005297;}',1678008897),('091c3f3c00e43c9b3c64e44cd79d9da9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"n73Y\";i:1678005417;}',1678009017),('4b03b027a53fc569ec2316623256ee8e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EY9h\";i:1678005537;}',1678009137),('961aa45f08378bf4c56d48c7c37779c8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"nokX\";i:1678005537;}',1678009137),('256b2b1474ac64efebac5ebcc9d7bfe0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Pe8O\";i:1678005657;}',1678009257),('4904ec0e621eaa9781e4298ec2a16e72',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DaEE\";i:1678005777;}',1678009377),('3788131b2db6e3319e4e804824d40fa3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"lPs2\";i:1678005897;}',1678009497),('ea1bc634739a976342a110d714d7fa38',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cizu\";i:1678005897;}',1678009497),('f0042360457389beceb823ba0fa2c33a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hHQK\";i:1678006017;}',1678009617),('9f39a54609a876215504cc384fb5e298',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"XBim\";i:1678006137;}',1678009737),('1de9aa317996d7943cba43705e9a46dd',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bVXQ\";i:1678006257;}',1678009857),('fd881733b55a3cf69c253f36056ebe62',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"E9e8\";i:1678006257;}',1678009857),('d129b881100d37bb503bc8c983dcba78',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sLq9\";i:1678006377;}',1678009977),('a9f027a584ec199c78d41c858fb5776d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Wr6V\";i:1678006497;}',1678010097),('d68c132ada75e867edba148fc9c8f791',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"dD44\";i:1678006617;}',1678010217),('5c4f0e5a245de77f15eb0231a6c0c573',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pWwD\";i:1678006617;}',1678010217),('d76bc159c32e23872cf792de9c8f5c1d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"KL57\";i:1678006737;}',1678010337),('2393ebec862b553aae0dea274144966c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Cv3f\";i:1678006857;}',1678010457),('5d32e5740ccdf5510829c46a7ffe77df',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"k9cu\";i:1678006977;}',1678010577),('01e77dd828ef810e5a3e0ca8cbac523c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"VWJa\";i:1678006977;}',1678010577),('7faf273bc1af2e5a5c822ba1a1139f54',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"G8or\";i:1678008398;}',1678011998),('00383539febc0e3576e5b9860ba66fdc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"rs4Z\";i:1678008398;}',1678011998),('433becf32ca3802692c44747ecb73b01',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"M8Ju\";i:1678008466;}',1678012066),('552cbbd651c6c351a3544491deb82585',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JR7h\";i:1678008530;}',1678012130),('15f1875e2d080add181554aa99311b58',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yCLT\";i:1678111445;}',1678115045),('5be8effe4f08ab0d5ca5df262daf3d3c',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"xXOL\";i:1678111445;}',1678115045),('8d0b279b2ebd3c52e7843f22eee427e6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sAqp\";i:1678111510;}',1678115110),('f734c4ac6bf508459c7f0d8af716615d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"i5C3\";i:1678111574;}',1678115174),('9f4d06bea9a3d4a40ca572f89523242b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qMto\";i:1678111642;}',1678115242),('9c46d5980d75538ecb8d11c36fdcb7e3',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SBOn\";i:1678111708;}',1678115308),('92a287db1938ba9ed66143473fdbe4ca',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"n7uF\";i:1678111762;}',1678115362),('c769e6dffe3dd818edb3eb0224e12338',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"SqbK\";i:1678111770;}',1678115370),('060dd37a49e20c1e5eb2241a18219dae',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"z4Nc\";i:1678111852;}',1678115452),('2a57c282085d98235da00a438a6714af',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sVPa\";i:1678111919;}',1678115519),('74f797eca18034e74aeeb18e69432a26',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"aUUU\";i:1678112010;}',1678115610),('77a44d5c7055869afeaa0f8c81c7f6de',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zNyI\";i:1678112070;}',1678115670),('0e0b6132d198f7659af3a616b5c58a17',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"HGg9\";i:1678112091;}',1678115691),('9a677d0d4a905943daa056691a4d9828',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Ciiw\";i:1678112152;}',1678115752),('89937ca57d02ad52687432a1576b2842',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZJSM\";i:1678112219;}',1678115819),('22852db4cab8892858ad30216566fc04',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"WCIR\";i:1678112302;}',1678115902),('338853124252f9c2f9531b50a9180de6',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ErRz\";i:1678112369;}',1678115969),('adae36bc40bee485b5c24a840e24675e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"tt0i\";i:1678112392;}',1678115992),('ff18122e000a3025665e7c89d7e837fc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"TWrn\";i:1678112430;}',1678116030),('97e0d6f50261815e681fe8a3e622fc62',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"p3Xq\";i:1678112511;}',1678116111),('f0fb026677eaf93eddf0b6e52d20001b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"T1PA\";i:1678112580;}',1678116180),('f35affdbacb604434c6074e26e9b7fe2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yUHU\";i:1678112670;}',1678116270),('a49d3444222c3be3633ccfec71c4ab1d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"NSCC\";i:1678112700;}',1678116300),('7981f4317ae946e665c2a389a6d105dc',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mZJg\";i:1678112751;}',1678116351),('d12e2de6f446c704824d00d3a9e95919',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"MF9A\";i:1678112820;}',1678116420),('1c2bdc1445d0afd1654477b49d8a14e8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YxRo\";i:1678112893;}',1678116493),('afe20723acccae14e364df7f0787be16',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"qA4R\";i:1678112961;}',1678116561),('a6f3c6a6028b6875ca6f88c1cd47228d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"zYUz\";i:1678113002;}',1678116602),('03f6691f91909bb4369062fb00d42102',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"DNPB\";i:1678113033;}',1678116633),('2f9606ba8f5c92f556f0f03e4c6cea5d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"R5VB\";i:1678113111;}',1678116711),('f84474ac343861be27fc8948a23d0216',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ZZGN\";i:1678113183;}',1678116783),('f6e52c52c8b21a10cba29d4c8e286a5f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"glHs\";i:1678113272;}',1678116872),('6068ef1b0915402984b384d5b95d5de4',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"gg8d\";i:1678113330;}',1678116930),('455e30f8bbf86b7a46e97be495e1233a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FE8D\";i:1678113351;}',1678116951),('f4e31a3aa1ed405fb01046dcfcea6b40',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"X2h7\";i:1678113432;}',1678117032),('11579fc2268004659e3a048b39edf895',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cL4k\";i:1678113496;}',1678117096),('a3fc76338c6024e289b5eed6a35462d9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"AINn\";i:1678113586;}',1678117186),('941418599be0f031db110131995eb645',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Tf6F\";i:1678113633;}',1678117233),('365cdfbf011f7e2f7a791e9b05211b3b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"yHtH\";i:1678113647;}',1678117247),('22e9d52c40ca8b58e7610ef9cdb2c613',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"V79j\";i:1678113711;}',1678117311),('d5cfcf4cd48a405373a86a8526e4b544',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"EOI6\";i:1678113779;}',1678117379),('b20930db3e588cac6fa16a98c1f38558',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OzAp\";i:1678113845;}',1678117445),('2c3470a8b3df0c84391b45926405ef1e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iBQB\";i:1678113906;}',1678117506),('3057cd2f156be4c41ace783534bf1984',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"psp2\";i:1678113944;}',1678117544),('1c255fb0448d9b16206d9f70c273c3ff',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"hdrp\";i:1678113994;}',1678117594),('5bbcdbe9cbed7a1c054d02e581b19c57',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YSoN\";i:1678114059;}',1678117659),('4947ced8688160465e98fd21f68c69cf',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"wqQZ\";i:1678114131;}',1678117731),('ec290ac5a0bb5227f373429b2e6ff72a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bkS6\";i:1678114200;}',1678117800),('fd00652896c04e3b36c4d39f99d2df8b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ylB5\";i:1678114251;}',1678117851),('3ccc67aeb4e331be3dbb57942ec39ae1',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bm13\";i:1678114271;}',1678117871),('ca435c053d23c74bbecc706382c4e650',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"u2ir\";i:1678114337;}',1678117937),('daa66f5fdbcdc7ce164e18b4527eaede',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iVC1\";i:1678114427;}',1678118027),('70caf88fa149145d26a869a9daf115a0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"JmE5\";i:1678114491;}',1678118091),('199b5214efc0a03b968ade5d47638b84',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"pQJd\";i:1678114561;}',1678118161),('1d6555aeb69fefdd70e9c37dd470cf0a',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"R6ed\";i:1678114561;}',1678118161),('bd684741285f402c205ff8ca9a970f31',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CdJb\";i:1678114622;}',1678118222),('adc2d85b8b766318e6fba652b1011910',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Qt51\";i:1678114705;}',1678118305),('8a27c911661f0701210eea9afbc70c63',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"bAC6\";i:1678114791;}',1678118391),('03eaa773fe96a58a0ff75b8730a1cf6f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"CC1K\";i:1678114855;}',1678118455),('6e1355aacdb6a932140768ad744d24b5',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"FqH4\";i:1678114885;}',1678118485),('a818c8a2d9b59cedeb39344e8f424f45',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"W27T\";i:1678114945;}',1678118545),('5047277d3c0034d94e0e201b292d95f2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"syI2\";i:1678115006;}',1678118606),('8209fc719c1ebc0270fbf6787b6f2fb7',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"BxRp\";i:1678115091;}',1678118691),('99c6fdce7213e6ca23110578016dd4f2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Co9a\";i:1678115162;}',1678118762),('ab5eb70875f8d6ad6b96c8d66a2caa5e',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"g9l5\";i:1678115200;}',1678118800),('da80f6cb797b7a5777dd3454d159cdc2',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Yt3j\";i:1678115233;}',1678118833),('567d936e33de682dcfb71efcfb1c3dc7',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"YsEB\";i:1678115297;}',1678118897),('72008dc70211b16c6081c2ee03feea15',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"y0NR\";i:1678115362;}',1678118962),('86ce636980d38dd8138aae45cba2d382',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"OUMM\";i:1678115447;}',1678119047),('4cb8354d2df54a936176303d656f484d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Gdv1\";i:1678115507;}',1678119107),('a47da9c809e0c2314fa0c0c1212f037d',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"cKgG\";i:1678115512;}',1678119112),('4cd3846e072b3c0bcf1a2f33d6bc26f7',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"D4yn\";i:1678115597;}',1678119197),('e8b60bd20371887401dc78aad18944b8',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Whp1\";i:1678115662;}',1678119262),('8a04c841a92355b6843721d2bc92d9ea',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"ORz4\";i:1678115747;}',1678119347),('702753bd662312dc4efa897ab343491b',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"G4Z5\";i:1678115811;}',1678119411),('0ad540f8d138847b298f0480af4a0238',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"sssd\";i:1678115811;}',1678119411),('ddaaf948c67cc893ff5d47c312c8cc8f',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"mold\";i:1678115811;}',1678119411),('4eba050b8e822fef7726738a47de2f97',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"iZ95\";i:1678115811;}',1678119411),('afa74dc80140821f26aef127af84cfa0',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"f831\";i:1678115872;}',1678119472),('70ebec67fdcbf4277687ab95ab6fb0ef',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"jwff\";i:1678115935;}',1678119535),('90a02eee7d293969ed5b7a7fe4b934fd',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"Y6WV\";i:1678116013;}',1678119613),('70288e08344037cf05e6c6482b3ad3d9',1,'127.0.0.1','acid|s:1:\"1\";uniacid|i:1;token|a:1:{s:4:\"js8g\";i:1678116075;}',1678119675);

/*Table structure for table `ims_core_settings` */

DROP TABLE IF EXISTS `ims_core_settings`;

CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_core_settings` */

insert  into `ims_core_settings`(`key`,`value`) values ('copyright','a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}'),('authmode','i:1;'),('close','a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}'),('register','a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}'),('platform','a:5:{s:5:\"token\";s:32:\"y3P9rRUr3M11415nJxUjR1xZ4j5gsj13\";s:14:\"encodingaeskey\";s:43:\"nxhc4CgczJEJSZD0zzp89UuHEjxR3E08pG4646xPN6S\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}');

/*Table structure for table `ims_coupon_location` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`,`acid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_coupon_location` */

/*Table structure for table `ims_cover_reply` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_cover_reply` */

insert  into `ims_cover_reply`(`id`,`uniacid`,`multiid`,`rid`,`module`,`do`,`title`,`description`,`thumb`,`url`) values (1,1,0,7,'mc','','进入个人中心','','','./index.php?c=mc&a=home&i=1'),(2,1,1,8,'site','','进入首页','','','./index.php?c=home&i=1&t=1');

/*Table structure for table `ims_custom_reply` */

DROP TABLE IF EXISTS `ims_custom_reply`;

CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_custom_reply` */

/*Table structure for table `ims_images_reply` */

DROP TABLE IF EXISTS `ims_images_reply`;

CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_images_reply` */

/*Table structure for table `ims_job` */

DROP TABLE IF EXISTS `ims_job`;

CREATE TABLE `ims_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_job` */

/*Table structure for table `ims_mc_cash_record` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_cash_record` */

/*Table structure for table `ims_mc_chats_record` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`,`acid`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE,
  KEY `createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_chats_record` */

/*Table structure for table `ims_mc_credits_recharge` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_uniacid_uid` (`uniacid`,`uid`) USING BTREE,
  KEY `idx_tid` (`tid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_credits_recharge` */

/*Table structure for table `ims_mc_credits_record` */

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
  `real_uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_credits_record` */

/*Table structure for table `ims_mc_fans_groups` */

DROP TABLE IF EXISTS `ims_mc_fans_groups`;

CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_fans_groups` */

/*Table structure for table `ims_mc_fans_tag_mapping` */

DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;

CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `mapping` (`fanid`,`tagid`) USING BTREE,
  KEY `fanid_index` (`fanid`) USING BTREE,
  KEY `tagid_index` (`tagid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_fans_tag_mapping` */

/*Table structure for table `ims_mc_groups` */

DROP TABLE IF EXISTS `ims_mc_groups`;

CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_groups` */

insert  into `ims_mc_groups`(`groupid`,`uniacid`,`title`,`credit`,`isdefault`) values (1,1,'默认会员组',0,1);

/*Table structure for table `ims_mc_handsel` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`touid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_handsel` */

/*Table structure for table `ims_mc_mapping_fans` */

DROP TABLE IF EXISTS `ims_mc_mapping_fans`;

CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(60) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`) USING BTREE,
  UNIQUE KEY `openid_2` (`openid`) USING BTREE,
  KEY `acid` (`acid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `nickname` (`nickname`) USING BTREE,
  KEY `updatetime` (`updatetime`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_mapping_fans` */

/*Table structure for table `ims_mc_mapping_ucenter` */

DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;

CREATE TABLE `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_mc_mapping_ucenter` */

/*Table structure for table `ims_mc_mass_record` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`,`acid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_mass_record` */

/*Table structure for table `ims_mc_member_address` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_uinacid` (`uniacid`) USING BTREE,
  KEY `idx_uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_member_address` */

/*Table structure for table `ims_mc_member_fields` */

DROP TABLE IF EXISTS `ims_mc_member_fields`;

CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_uniacid` (`uniacid`) USING BTREE,
  KEY `idx_fieldid` (`fieldid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_member_fields` */

/*Table structure for table `ims_mc_member_property` */

DROP TABLE IF EXISTS `ims_mc_member_property`;

CREATE TABLE `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_member_property` */

/*Table structure for table `ims_mc_members` */

DROP TABLE IF EXISTS `ims_mc_members`;

CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(18) NOT NULL,
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
  `pay_password` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  KEY `groupid` (`groupid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `mobile` (`mobile`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_members` */

/*Table structure for table `ims_mc_oauth_fans` */

DROP TABLE IF EXISTS `ims_mc_oauth_fans`;

CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_mc_oauth_fans` */

/*Table structure for table `ims_menu_event` */

DROP TABLE IF EXISTS `ims_menu_event`;

CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `picmd5` (`picmd5`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_menu_event` */

/*Table structure for table `ims_message_notice_log` */

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
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_message_notice_log` */

/*Table structure for table `ims_mobilenumber` */

DROP TABLE IF EXISTS `ims_mobilenumber`;

CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_mobilenumber` */

/*Table structure for table `ims_modules` */

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
  `welcome_support` int(2) NOT NULL,
  `oauth_type` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  `account_support` tinyint(1) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `app_support` tinyint(1) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`mid`) USING BTREE,
  KEY `idx_name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_modules` */

insert  into `ims_modules`(`mid`,`name`,`type`,`title`,`version`,`ability`,`description`,`author`,`url`,`settings`,`subscribes`,`handles`,`isrulefields`,`issystem`,`target`,`iscard`,`permissions`,`title_initial`,`wxapp_support`,`welcome_support`,`oauth_type`,`webapp_support`,`phoneapp_support`,`account_support`,`xzapp_support`,`app_support`,`aliapp_support`) values (1,'basic','system','基本文字回复','1.0','和您进行简单对话','一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,0,2,0,0,0),(2,'news','system','基本混合图文回复','1.0','为你提供生动的图文资讯','一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,0,2,0,0,0),(3,'music','system','基本音乐回复','1.0','提供语音、音乐等音频类回复','在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,0,2,0,0,0),(4,'userapi','system','自定义接口回复','1.1','更方便的第三方接口设置','自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,0,2,0,0,0),(5,'recharge','system','会员中心充值模块','1.0','提供会员充值功能','','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,1,1,1,0,2,0,0,0),(6,'custom','system','多客服转接','1.0.0','用来接入腾讯的多客服系统','','WeEngine Team','http://bbs.we7.cc',0,'a:0:{}','a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}',1,1,0,0,'','',1,1,1,1,0,2,0,0,0),(7,'images','system','基本图片回复','1.0','提供图片回复','在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,0,2,0,0,0),(8,'video','system','基本视频回复','1.0','提供图片回复','在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,0,2,0,0,0),(9,'voice','system','基本语音回复','1.0','提供语音回复','在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,0,2,0,0,0),(10,'chats','system','发送客服消息','1.0','公众号可以在粉丝最后发送消息的48小时内无限制发送消息','','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,1,1,1,0,2,0,0,0),(11,'wxcard','system','微信卡券回复','1.0','微信卡券回复','微信卡券回复','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,0,2,0,0,0),(12,'store','business','站内商城','1.0','站内商城','站内商城','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,1,1,1,0,2,0,0,0),(13,'we7_wmall','business','LL外卖跑腿','18.3.0','微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统|跑腿|随意购|配送员','微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统','宇艺网络','http://wwww.y198.cn/',0,'a:0:{}','a:2:{i:0;s:8:\"location\";i:1;s:4:\"text\";}',0,0,0,0,'a:0:{}','L',1,1,1,1,1,2,1,0,1);

/*Table structure for table `ims_modules_bindings` */

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
  PRIMARY KEY (`eid`) USING BTREE,
  KEY `idx_module` (`module`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_modules_bindings` */

insert  into `ims_modules_bindings`(`eid`,`module`,`entry`,`call`,`title`,`do`,`state`,`direct`,`url`,`icon`,`displayorder`) values (1,'we7_wmall','menu','','后台管理','web','',0,'','fa fa-puzzle-piece',0);

/*Table structure for table `ims_modules_cloud` */

DROP TABLE IF EXISTS `ims_modules_cloud`;

CREATE TABLE `ims_modules_cloud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `install_status` tinyint(4) NOT NULL,
  `account_support` tinyint(4) NOT NULL,
  `wxapp_support` tinyint(4) NOT NULL,
  `webapp_support` tinyint(4) NOT NULL,
  `phoneapp_support` tinyint(4) NOT NULL,
  `welcome_support` tinyint(4) NOT NULL,
  `main_module_name` varchar(50) NOT NULL,
  `main_module_logo` varchar(100) NOT NULL,
  `has_new_version` tinyint(1) NOT NULL,
  `has_new_branch` tinyint(1) NOT NULL,
  `is_ban` tinyint(4) NOT NULL,
  `lastupdatetime` int(11) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `lastupdatetime` (`lastupdatetime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_modules_cloud` */

/*Table structure for table `ims_modules_ignore` */

DROP TABLE IF EXISTS `ims_modules_ignore`;

CREATE TABLE `ims_modules_ignore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=313 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_modules_ignore` */

insert  into `ims_modules_ignore`(`id`,`name`,`version`) values (312,'we7_wmall','');

/*Table structure for table `ims_modules_plugin` */

DROP TABLE IF EXISTS `ims_modules_plugin`;

CREATE TABLE `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `main_module` (`main_module`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_modules_plugin` */

/*Table structure for table `ims_modules_rank` */

DROP TABLE IF EXISTS `ims_modules_rank`;

CREATE TABLE `ims_modules_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `module_name` (`module_name`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_modules_rank` */

/*Table structure for table `ims_modules_recycle` */

DROP TABLE IF EXISTS `ims_modules_recycle`;

CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `modulename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `modulename` (`modulename`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_modules_recycle` */

/*Table structure for table `ims_music_reply` */

DROP TABLE IF EXISTS `ims_music_reply`;

CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_music_reply` */

/*Table structure for table `ims_news_reply` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_news_reply` */

/*Table structure for table `ims_phoneapp_versions` */

DROP TABLE IF EXISTS `ims_phoneapp_versions`;

CREATE TABLE `ims_phoneapp_versions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `version` varchar(20) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `modules` text,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `version` (`version`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_phoneapp_versions` */

/*Table structure for table `ims_profile_fields` */

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_profile_fields` */

insert  into `ims_profile_fields`(`id`,`field`,`available`,`title`,`description`,`displayorder`,`required`,`unchangeable`,`showinregister`,`field_length`) values (1,'realname',1,'真实姓名','',0,1,1,1,0),(2,'nickname',1,'昵称','',1,1,0,1,0),(3,'avatar',1,'头像','',1,0,0,0,0),(4,'qq',1,'QQ号','',0,0,0,1,0),(5,'mobile',1,'手机号码','',0,0,0,0,0),(6,'vip',1,'VIP级别','',0,0,0,0,0),(7,'gender',1,'性别','',0,0,0,0,0),(8,'birthyear',1,'出生生日','',0,0,0,0,0),(9,'constellation',1,'星座','',0,0,0,0,0),(10,'zodiac',1,'生肖','',0,0,0,0,0),(11,'telephone',1,'固定电话','',0,0,0,0,0),(12,'idcard',1,'证件号码','',0,0,0,0,0),(13,'studentid',1,'学号','',0,0,0,0,0),(14,'grade',1,'班级','',0,0,0,0,0),(15,'address',1,'邮寄地址','',0,0,0,0,0),(16,'zipcode',1,'邮编','',0,0,0,0,0),(17,'nationality',1,'国籍','',0,0,0,0,0),(18,'resideprovince',1,'居住地址','',0,0,0,0,0),(19,'graduateschool',1,'毕业学校','',0,0,0,0,0),(20,'company',1,'公司','',0,0,0,0,0),(21,'education',1,'学历','',0,0,0,0,0),(22,'occupation',1,'职业','',0,0,0,0,0),(23,'position',1,'职位','',0,0,0,0,0),(24,'revenue',1,'年收入','',0,0,0,0,0),(25,'affectivestatus',1,'情感状态','',0,0,0,0,0),(26,'lookingfor',1,' 交友目的','',0,0,0,0,0),(27,'bloodtype',1,'血型','',0,0,0,0,0),(28,'height',1,'身高','',0,0,0,0,0),(29,'weight',1,'体重','',0,0,0,0,0),(30,'alipay',1,'支付宝帐号','',0,0,0,0,0),(31,'msn',1,'MSN','',0,0,0,0,0),(32,'email',1,'电子邮箱','',0,0,0,0,0),(33,'taobao',1,'阿里旺旺','',0,0,0,0,0),(34,'site',1,'主页','',0,0,0,0,0),(35,'bio',1,'自我介绍','',0,0,0,0,0),(36,'interest',1,'兴趣爱好','',0,0,0,0,0);

/*Table structure for table `ims_qrcode` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_qrcid` (`qrcid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `ticket` (`ticket`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_qrcode` */

/*Table structure for table `ims_qrcode_stat` */

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_qrcode_stat` */

/*Table structure for table `ims_rule` */

DROP TABLE IF EXISTS `ims_rule`;

CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  `reply_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_rule` */

insert  into `ims_rule`(`id`,`uniacid`,`name`,`module`,`displayorder`,`status`,`containtype`,`reply_type`) values (1,0,'城市天气','userapi',255,1,'',0),(2,0,'百度百科','userapi',255,1,'',0),(3,0,'即时翻译','userapi',255,1,'',0),(4,0,'今日老黄历','userapi',255,1,'',0),(5,0,'看新闻','userapi',255,1,'',0),(6,0,'快递查询','userapi',255,1,'',0),(7,1,'个人中心入口设置','cover',0,1,'',0),(8,1,'微擎团队入口设置','cover',0,1,'',0);

/*Table structure for table `ims_rule_keyword` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_content` (`content`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE,
  KEY `idx_rid` (`rid`) USING BTREE,
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_rule_keyword` */

insert  into `ims_rule_keyword`(`id`,`rid`,`uniacid`,`module`,`content`,`type`,`displayorder`,`status`) values (1,1,0,'userapi','^.+天气$',3,255,1),(2,2,0,'userapi','^百科.+$',3,255,1),(3,2,0,'userapi','^定义.+$',3,255,1),(4,3,0,'userapi','^@.+$',3,255,1),(5,4,0,'userapi','日历',1,255,1),(6,4,0,'userapi','万年历',1,255,1),(7,4,0,'userapi','黄历',1,255,1),(8,4,0,'userapi','几号',1,255,1),(9,5,0,'userapi','新闻',1,255,1),(10,6,0,'userapi','^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$',3,255,1),(11,7,1,'cover','个人中心',1,0,1),(12,8,1,'cover','首页',1,0,1);

/*Table structure for table `ims_site_article` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_iscommend` (`iscommend`) USING BTREE,
  KEY `idx_ishot` (`ishot`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_article` */

/*Table structure for table `ims_site_article_comment` */

DROP TABLE IF EXISTS `ims_site_article_comment`;

CREATE TABLE `ims_site_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `content` text,
  `is_read` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `articleid` (`articleid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_article_comment` */

/*Table structure for table `ims_site_category` */

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_category` */

/*Table structure for table `ims_site_multi` */

DROP TABLE IF EXISTS `ims_site_multi`;

CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `bindhost` (`bindhost`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_multi` */

insert  into `ims_site_multi`(`id`,`uniacid`,`title`,`styleid`,`site_info`,`status`,`bindhost`) values (1,1,'微擎团队',1,'',1,'');

/*Table structure for table `ims_site_nav` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `multiid` (`multiid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_nav` */

/*Table structure for table `ims_site_page` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `multiid` (`multiid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_page` */

/*Table structure for table `ims_site_slide` */

DROP TABLE IF EXISTS `ims_site_slide`;

CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `multiid` (`multiid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_slide` */

/*Table structure for table `ims_site_store_create_account` */

DROP TABLE IF EXISTS `ims_site_store_create_account`;

CREATE TABLE `ims_site_store_create_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `endtime` int(12) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_site_store_create_account` */

/*Table structure for table `ims_site_store_goods` */

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
  `user_group` int(10) NOT NULL,
  `user_group_price` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `module` (`module`) USING BTREE,
  KEY `category_id` (`category_id`) USING BTREE,
  KEY `price` (`price`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_store_goods` */

/*Table structure for table `ims_site_store_order` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `goodid` (`goodsid`) USING BTREE,
  KEY `buyerid` (`buyerid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_store_order` */

/*Table structure for table `ims_site_styles` */

DROP TABLE IF EXISTS `ims_site_styles`;

CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_styles` */

insert  into `ims_site_styles`(`id`,`uniacid`,`templateid`,`name`) values (1,1,1,'微站默认模板_gC5C');

/*Table structure for table `ims_site_styles_vars` */

DROP TABLE IF EXISTS `ims_site_styles_vars`;

CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_styles_vars` */

/*Table structure for table `ims_site_templates` */

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_site_templates` */

insert  into `ims_site_templates`(`id`,`name`,`title`,`version`,`description`,`author`,`url`,`type`,`sections`) values (1,'default','微站默认模板','','由微擎提供默认微站模板套系','微擎团队','http://we7.cc','1',0);

/*Table structure for table `ims_stat_fans` */

DROP TABLE IF EXISTS `ims_stat_fans`;

CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`,`date`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_stat_fans` */

insert  into `ims_stat_fans`(`id`,`uniacid`,`new`,`cancel`,`cumulate`,`date`) values (1,1,0,0,0,'20210419'),(2,1,0,0,0,'20210418'),(3,1,0,0,0,'20210417'),(4,1,0,0,0,'20210416'),(5,1,0,0,0,'20210415'),(6,1,0,0,0,'20210414'),(7,1,0,0,0,'20210413'),(8,1,0,0,0,'20210526'),(9,1,0,0,0,'20210525'),(10,1,0,0,0,'20210524'),(11,1,0,0,0,'20210523'),(12,1,0,0,0,'20210522'),(13,1,0,0,0,'20210521'),(14,1,0,0,0,'20210520'),(15,1,0,0,0,'20210608'),(16,1,0,0,0,'20210607'),(17,1,0,0,0,'20210606'),(18,1,0,0,0,'20210605'),(19,1,0,0,0,'20210604'),(20,1,0,0,0,'20210603'),(21,1,0,0,0,'20210602'),(22,1,0,0,0,'20210615'),(23,1,0,0,0,'20210614'),(24,1,0,0,0,'20210613'),(25,1,0,0,0,'20210612'),(26,1,0,0,0,'20210611'),(27,1,0,0,0,'20210610'),(28,1,0,0,0,'20210609'),(29,1,0,0,0,'20230216'),(30,1,0,0,0,'20230215'),(31,1,0,0,0,'20230214'),(32,1,0,0,0,'20230213'),(33,1,0,0,0,'20230212'),(34,1,0,0,0,'20230211'),(35,1,0,0,0,'20230210'),(36,1,0,0,0,'20230302'),(37,1,0,0,0,'20230301'),(38,1,0,0,0,'20230228'),(39,1,0,0,0,'20230227'),(40,1,0,0,0,'20230226'),(41,1,0,0,0,'20230225'),(42,1,0,0,0,'20230224'),(43,1,0,0,0,'20230303'),(44,1,0,0,0,'20230304'),(45,1,0,0,0,'20230305');

/*Table structure for table `ims_stat_keyword` */

DROP TABLE IF EXISTS `ims_stat_keyword`;

CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_stat_keyword` */

/*Table structure for table `ims_stat_msg_history` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_stat_msg_history` */

/*Table structure for table `ims_stat_rule` */

DROP TABLE IF EXISTS `ims_stat_rule`;

CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_createtime` (`createtime`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_stat_rule` */

/*Table structure for table `ims_stat_visit` */

DROP TABLE IF EXISTS `ims_stat_visit`;

CREATE TABLE `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `date` (`date`) USING BTREE,
  KEY `module` (`module`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_stat_visit` */

insert  into `ims_stat_visit`(`id`,`uniacid`,`module`,`count`,`date`,`type`) values (2,0,'',14,20210420,'web'),(3,1,'we7_account',2,20210420,'web'),(4,0,'',7,20210512,'web'),(5,0,'',2,20210521,'web'),(6,0,'',23,20210527,'web'),(7,0,'we7_account',1,20210527,'web'),(8,1,'we7_account',2,20210527,'web'),(9,0,'',4,20210609,'web'),(10,1,'we7_account',16,20210609,'web'),(11,0,'',7,20210616,'web'),(12,1,'we7_account',1,20210616,'web'),(13,0,'',10,20210817,'web'),(14,0,'we7_account',2,20210817,'web'),(15,0,'',2,20210923,'web'),(16,0,'',6,20211208,'web'),(17,0,'',3,20220624,'web'),(18,0,'we7_account',1,20220624,'web'),(19,0,'',7,20220712,'web'),(20,0,'',2,20230217,'web'),(21,1,'we7_account',1,20230217,'web'),(22,0,'',4,20230227,'web'),(23,1,'',2,20230303,'web'),(24,1,'we7_account',15,20230303,'web'),(25,1,'we7_account',1,20230304,'web'),(26,1,'we7_account',3,20230305,'web'),(27,1,'we7_account',3,20230306,'web');

/*Table structure for table `ims_system_stat_visit` */

DROP TABLE IF EXISTS `ims_system_stat_visit`;

CREATE TABLE `ims_system_stat_visit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_system_stat_visit` */

/*Table structure for table `ims_tiny_wmall_activity_bargain` */

DROP TABLE IF EXISTS `ims_tiny_wmall_activity_bargain`;

CREATE TABLE `ims_tiny_wmall_activity_bargain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `order_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starthour` smallint(5) unsigned NOT NULL DEFAULT '0',
  `endhour` smallint(5) unsigned NOT NULL DEFAULT '0',
  `use_limit` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL DEFAULT 'ongoing',
  `total_updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(15) NOT NULL DEFAULT 'bargain',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_activity_bargain` */

/*Table structure for table `ims_tiny_wmall_activity_bargain_goods` */

DROP TABLE IF EXISTS `ims_tiny_wmall_activity_bargain_goods`;

CREATE TABLE `ims_tiny_wmall_activity_bargain_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `bargain_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `discount_price` varchar(10) NOT NULL DEFAULT '0',
  `max_buy_limit` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `poi_user_type` varchar(10) NOT NULL DEFAULT 'all',
  `discount_total` int(10) NOT NULL DEFAULT '-1',
  `discount_available_total` int(10) NOT NULL DEFAULT '-1',
  `dosage` int(10) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `mall_displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `bargain_id` (`bargain_id`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `mall_displayorder` (`mall_displayorder`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_activity_bargain_goods` */

/*Table structure for table `ims_tiny_wmall_activity_coupon` */

DROP TABLE IF EXISTS `ims_tiny_wmall_activity_coupon`;

CREATE TABLE `ims_tiny_wmall_activity_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公号序号',
  `sid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公号序号',
  `type` varchar(20) NOT NULL DEFAULT 'collect',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标题',
  `discount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '折扣券(折扣率), 代金券(面额)',
  `condition` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单满多少可用',
  `type_limit` int(10) NOT NULL DEFAULT '1' COMMENT '1:所有用户都可领取,2:新用户可领取',
  `dosage` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已领取数量',
  `amount` int(10) unsigned NOT NULL COMMENT '总发行数量',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:可领取,2:暂停领取',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发行时间',
  `activity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `coupons` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `starttime` (`starttime`) USING BTREE,
  KEY `endtime` (`endtime`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `activity_id` (`activity_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_activity_coupon` */

/*Table structure for table `ims_tiny_wmall_activity_coupon_grant_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_activity_coupon_grant_log`;

CREATE TABLE `ims_tiny_wmall_activity_coupon_grant_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `couponid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL COMMENT '用户编号',
  `grant_type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态: 1:一次性领取,2:每天领取 ',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `couponid` (`couponid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_tiny_wmall_activity_coupon_grant_log` */

/*Table structure for table `ims_tiny_wmall_activity_coupon_record` */

DROP TABLE IF EXISTS `ims_tiny_wmall_activity_coupon_record`;

CREATE TABLE `ims_tiny_wmall_activity_coupon_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `couponid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL COMMENT '用户编号',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `code` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态: 1:未使用,2:已使用 ',
  `remark` varchar(300) NOT NULL DEFAULT '',
  `granttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发放时间',
  `usetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `type` varchar(20) NOT NULL DEFAULT 'couponCollect',
  `discount` varchar(10) NOT NULL DEFAULT '0',
  `condition` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `channel` varchar(30) NOT NULL,
  `is_notice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `noticetime` int(10) unsigned NOT NULL DEFAULT '0',
  `give_status` tinyint(3) NOT NULL DEFAULT '0',
  `from_uid` int(10) NOT NULL DEFAULT '0',
  `givetime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `couponid` (`couponid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_notice` (`is_notice`) USING BTREE,
  KEY `channel` (`channel`) USING BTREE,
  KEY `noticetime` (`noticetime`) USING BTREE,
  KEY `endtime` (`endtime`) USING BTREE,
  KEY `uniacid_sid_uid_orderid` (`uniacid`,`sid`,`uid`,`order_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_activity_coupon_record` */

/*Table structure for table `ims_tiny_wmall_activity_redpacket_record` */

DROP TABLE IF EXISTS `ims_tiny_wmall_activity_redpacket_record`;

CREATE TABLE `ims_tiny_wmall_activity_redpacket_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `activity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `channel` varchar(20) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `code` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `discount` decimal(10,2) unsigned NOT NULL,
  `condition` decimal(10,2) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `remark` varchar(300) NOT NULL DEFAULT '',
  `granttime` int(10) unsigned NOT NULL DEFAULT '0',
  `usetime` int(10) unsigned NOT NULL DEFAULT '0',
  `category_limit` varchar(500) NOT NULL,
  `times_limit` varchar(500) NOT NULL,
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `super_share_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scene` varchar(100) NOT NULL DEFAULT 'waimai',
  `is_notice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `noticetime` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `grantday` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `order_type_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `redpacketid` (`activity_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE,
  KEY `scene` (`scene`) USING BTREE,
  KEY `endtime` (`endtime`) USING BTREE,
  KEY `is_notice` (`is_notice`) USING BTREE,
  KEY `noticetime` (`noticetime`) USING BTREE,
  KEY `uniacid_uid_orderid` (`uniacid`,`uid`,`order_id`) USING BTREE,
  KEY `uniacid_type_uid_aid` (`uniacid`,`type`,`uid`,`activity_id`) USING BTREE,
  KEY `uniacid_type_openid_aid` (`uniacid`,`type`,`openid`,`activity_id`) USING BTREE,
  KEY `uniacid_status_endtime` (`uniacid`,`status`,`endtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=426 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_activity_redpacket_record` */

/*Table structure for table `ims_tiny_wmall_activity_share` */

DROP TABLE IF EXISTS `ims_tiny_wmall_activity_share`;

CREATE TABLE `ims_tiny_wmall_activity_share` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(40) NOT NULL,
  `formuser_redpacket_min` tinyint(3) NOT NULL DEFAULT '1',
  `formuser_redpacket_max` tinyint(3) NOT NULL DEFAULT '10',
  `formuser_redpacket_time_limit` tinyint(3) NOT NULL DEFAULT '7',
  `touser_redpacket_min` tinyint(3) NOT NULL DEFAULT '1',
  `touser_redpacket_max` tinyint(3) NOT NULL DEFAULT '10',
  `touser_redpacket_time_limit` tinyint(3) NOT NULL DEFAULT '7',
  `share` varchar(500) NOT NULL,
  `agreement` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_activity_share` */

/*Table structure for table `ims_tiny_wmall_address` */

DROP TABLE IF EXISTS `ims_tiny_wmall_address`;

CREATE TABLE `ims_tiny_wmall_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `realname` varchar(15) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(50) NOT NULL,
  `number` varchar(60) NOT NULL,
  `location_x` varchar(20) NOT NULL,
  `location_y` varchar(20) NOT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:收货地址, 2:服务地址',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `mode` varchar(20) NOT NULL DEFAULT 'favorite',
  `area_id` int(10) unsigned NOT NULL DEFAULT '0',
  `area_parentid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1658 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_address` */

/*Table structure for table `ims_tiny_wmall_advertise_trade` */

DROP TABLE IF EXISTS `ims_tiny_wmall_advertise_trade`;

CREATE TABLE `ims_tiny_wmall_advertise_trade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `displayorder` tinyint(3) NOT NULL,
  `type` varchar(50) NOT NULL,
  `final_fee` varchar(20) NOT NULL,
  `days` tinyint(10) NOT NULL,
  `data` varchar(1000) NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `order_sn` varchar(50) NOT NULL,
  `pay_type` varchar(20) NOT NULL,
  `is_pay` tinyint(3) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `type` (`displayorder`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `starttime` (`starttime`) USING BTREE,
  KEY `endtime` (`endtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_advertise_trade` */

/*Table structure for table `ims_tiny_wmall_agent` */

DROP TABLE IF EXISTS `ims_tiny_wmall_agent`;

CREATE TABLE `ims_tiny_wmall_agent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `realname` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `area` varchar(30) NOT NULL,
  `initial` varchar(10) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` tinyint(3) unsigned DEFAULT '0',
  `sysset` text NOT NULL,
  `pluginset` text NOT NULL,
  `account` varchar(1000) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `fee` varchar(5000) NOT NULL,
  `geofence` text NOT NULL,
  `data` text NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `uniacid_token` (`uniacid`,`token`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_agent` */

/*Table structure for table `ims_tiny_wmall_agent_current_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_agent_current_log`;

CREATE TABLE `ims_tiny_wmall_agent_current_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `order_type` varchar(20) NOT NULL,
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  `hash` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `hash` (`hash`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_agent_current_log` */

/*Table structure for table `ims_tiny_wmall_agent_getcash_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_agent_getcash_log`;

CREATE TABLE `ims_tiny_wmall_agent_getcash_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(20) NOT NULL,
  `get_fee` decimal(10,2) unsigned NOT NULL,
  `take_fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `account` varchar(500) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `channel` varchar(10) NOT NULL DEFAULT 'weixin',
  `toaccount_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_agent_getcash_log` */

/*Table structure for table `ims_tiny_wmall_area_list` */

DROP TABLE IF EXISTS `ims_tiny_wmall_area_list`;

CREATE TABLE `ims_tiny_wmall_area_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `location_x` varchar(20) NOT NULL,
  `location_y` varchar(20) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_area_list` */

/*Table structure for table `ims_tiny_wmall_assign_board` */

DROP TABLE IF EXISTS `ims_tiny_wmall_assign_board`;

CREATE TABLE `ims_tiny_wmall_assign_board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(15) NOT NULL,
  `openid` varchar(64) NOT NULL,
  `guest_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `number` varchar(20) NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_notify` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=390 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_assign_board` */

/*Table structure for table `ims_tiny_wmall_assign_queue` */

DROP TABLE IF EXISTS `ims_tiny_wmall_assign_queue`;

CREATE TABLE `ims_tiny_wmall_assign_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `guest_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `notify_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `starttime` varchar(10) NOT NULL,
  `endtime` varchar(10) NOT NULL,
  `prefix` varchar(10) NOT NULL COMMENT '前缀',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `position` int(10) unsigned NOT NULL DEFAULT '1',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '根据这个时间,判断是否将position重新至0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_assign_queue` */

/*Table structure for table `ims_tiny_wmall_cache` */

DROP TABLE IF EXISTS `ims_tiny_wmall_cache`;

CREATE TABLE `ims_tiny_wmall_cache` (
  `name` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `starttime|562|errander_deliveryerApp|17.9.0|20190325190505` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_cache` */

/*Table structure for table `ims_tiny_wmall_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_category`;

CREATE TABLE `ims_tiny_wmall_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'member',
  `alias` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `color` varchar(15) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_system` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_category` */

insert  into `ims_tiny_wmall_category`(`id`,`uniacid`,`type`,`alias`,`title`,`color`,`displayorder`,`is_system`,`score`) values (240,1,'TY_store_label','new','新店','#ff2d4b',0,1,0),(241,1,'TY_store_label','brand','品牌','#ffa60b',0,1,0);

/*Table structure for table `ims_tiny_wmall_clerk` */

DROP TABLE IF EXISTS `ims_tiny_wmall_clerk`;

CREATE TABLE `ims_tiny_wmall_clerk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(15) NOT NULL,
  `nickname` varchar(15) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(6) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL,
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `token` varchar(50) NOT NULL,
  `openid_wxapp` varchar(60) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid_wxapp_manager` varchar(60) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `openid_wxapp` (`openid_wxapp`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=523 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_clerk` */

/*Table structure for table `ims_tiny_wmall_cloudgoods_goods` */

DROP TABLE IF EXISTS `ims_tiny_wmall_cloudgoods_goods`;

CREATE TABLE `ims_tiny_wmall_cloudgoods_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `menu_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `number` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `old_price` varchar(10) NOT NULL,
  `box_price` varchar(10) NOT NULL DEFAULT '0',
  `is_options` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unitname` varchar(10) NOT NULL DEFAULT '份',
  `total` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_hot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL,
  `slides` varchar(1000) NOT NULL,
  `label` varchar(5) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `content` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `attrs` varchar(1000) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ts_price` varchar(10) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `category_id` (`category_id`) USING BTREE,
  KEY `is_hot` (`is_hot`) USING BTREE,
  KEY `title` (`title`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `displayorder` (`displayorder`) USING BTREE,
  KEY `menu_id` (`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_cloudgoods_goods` */

/*Table structure for table `ims_tiny_wmall_cloudgoods_goods_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_cloudgoods_goods_category`;

CREATE TABLE `ims_tiny_wmall_cloudgoods_goods_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `menu_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `store_categoryid` (`menu_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_cloudgoods_goods_category` */

/*Table structure for table `ims_tiny_wmall_cloudgoods_goods_options` */

DROP TABLE IF EXISTS `ims_tiny_wmall_cloudgoods_goods_options`;

CREATE TABLE `ims_tiny_wmall_cloudgoods_goods_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `total` int(10) NOT NULL DEFAULT '-1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_cloudgoods_goods_options` */

/*Table structure for table `ims_tiny_wmall_cloudgoods_menu_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_cloudgoods_menu_category`;

CREATE TABLE `ims_tiny_wmall_cloudgoods_menu_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_cloudgoods_menu_category` */

/*Table structure for table `ims_tiny_wmall_complain` */

DROP TABLE IF EXISTS `ims_tiny_wmall_complain`;

CREATE TABLE `ims_tiny_wmall_complain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `addtime` varchar(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_complain` */

/*Table structure for table `ims_tiny_wmall_config` */

DROP TABLE IF EXISTS `ims_tiny_wmall_config`;

CREATE TABLE `ims_tiny_wmall_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sysset` text NOT NULL,
  `pluginset` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=522 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_config` */

insert  into `ims_tiny_wmall_config`(`id`,`uniacid`,`sysset`,`pluginset`) values (520,0,'',''),(521,1,'a:7:{s:5:\"wxapp\";N;s:7:\"takeout\";a:1:{s:5:\"range\";a:1:{s:3:\"map\";a:2:{s:10:\"location_x\";s:9:\"39.908743\";s:10:\"location_y\";s:10:\"116.397573\";}}}s:3:\"sms\";a:1:{s:6:\"verify\";a:2:{s:14:\"clerk_register\";i:1;s:17:\"consumer_register\";i:1;}}s:5:\"store\";a:1:{s:8:\"activity\";a:1:{s:4:\"perm\";a:12:{s:13:\"mallNewMember\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:9:\"newMember\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:8:\"discount\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:9:\"cashGrant\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:5:\"grant\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:7:\"bargain\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:13:\"couponCollect\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:11:\"couponGrant\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:12:\"selfDelivery\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:19:\"deliveryFeeDiscount\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:10:\"selfPickup\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}s:13:\"svipRedpacket\";a:2:{s:6:\"status\";i:1;s:13:\"cancel_status\";i:1;}}}}s:7:\"getcash\";a:1:{s:7:\"channel\";a:1:{s:6:\"wechat\";s:6:\"wechat\";}}s:8:\"recharge\";a:2:{s:6:\"status\";i:2;s:5:\"items\";N;}s:7:\"payment\";a:15:{s:6:\"wechat\";a:5:{s:4:\"type\";s:7:\"default\";s:7:\"default\";a:11:{s:7:\"version\";i:2;s:5:\"appid\";s:2:\"12\";s:9:\"appsecret\";s:2:\"23\";s:5:\"mchid\";s:5:\"12321\";s:6:\"apikey\";s:4:\"1232\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:7:\"signkey\";s:0:\"\";s:14:\"apiclient_cert\";s:10:\"jaoKWn6g6o\";s:13:\"apiclient_key\";s:10:\"ca3yTgYB18\";s:6:\"rootca\";s:10:\"Zl1dYZUwE9\";}s:6:\"borrow\";N;s:7:\"partner\";a:10:{s:7:\"version\";i:2;s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"sub_appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:10:\"sub_mch_id\";s:0:\"\";s:6:\"apikey\";s:0:\"\";s:14:\"apiclient_cert\";N;s:13:\"apiclient_key\";N;s:6:\"rootca\";N;}s:14:\"borrow_partner\";a:10:{s:7:\"version\";i:2;s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"sub_appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:10:\"sub_mch_id\";s:0:\"\";s:6:\"apikey\";s:0:\"\";s:14:\"apiclient_cert\";N;s:13:\"apiclient_key\";N;s:6:\"rootca\";N;}}s:6:\"alipay\";a:7:{s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:8:\"rsa_type\";s:3:\"RSA\";s:11:\"private_key\";N;s:10:\"public_key\";N;}s:6:\"yimafu\";a:3:{s:4:\"host\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:9:\"h5_wechat\";a:7:{s:5:\"appid\";s:3:\"123\";s:9:\"appsecret\";s:3:\"123\";s:5:\"mchid\";s:3:\"123\";s:6:\"apikey\";s:3:\"123\";s:14:\"apiclient_cert\";s:10:\"pqOYT0pFLO\";s:13:\"apiclient_key\";s:10:\"MWhFX4zh8K\";s:6:\"rootca\";s:10:\"TBRxsYQyYS\";}s:10:\"app_wechat\";a:8:{s:5:\"appid\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:9:\"merchname\";s:0:\"\";s:6:\"apikey\";s:0:\"\";s:14:\"apiclient_cert\";N;s:13:\"apiclient_key\";N;s:6:\"rootca\";N;}s:10:\"app_alipay\";a:4:{s:5:\"appid\";s:0:\"\";s:8:\"rsa_type\";s:3:\"RSA\";s:11:\"private_key\";N;s:10:\"public_key\";N;}s:6:\"weixin\";a:1:{i:0;s:6:\"credit\";}s:3:\"wap\";a:1:{i:0;s:6:\"alipay\";}s:3:\"app\";a:0:{}s:7:\"peerpay\";a:0:{}s:8:\"epayment\";a:5:{s:2:\"on\";N;s:5:\"appid\";s:0:\"\";s:12:\"mch_store_id\";s:0:\"\";s:19:\"authentication_code\";s:0:\"\";s:2:\"bz\";s:0:\"\";}s:6:\"suppay\";a:5:{s:2:\"on\";N;s:5:\"appid\";s:0:\"\";s:5:\"mchId\";s:0:\"\";s:6:\"md5Key\";s:0:\"\";s:2:\"bz\";s:0:\"\";}s:6:\"stripe\";a:4:{s:2:\"on\";N;s:2:\"pk\";s:0:\"\";s:2:\"sk\";s:0:\"\";s:2:\"bz\";s:0:\"\";}s:7:\"attract\";a:5:{s:2:\"on\";N;s:5:\"appid\";s:0:\"\";s:12:\"mch_store_id\";s:0:\"\";s:19:\"authentication_code\";s:0:\"\";s:2:\"bz\";s:0:\"\";}s:9:\"available\";a:1:{i:0;s:6:\"credit\";}}}','');

/*Table structure for table `ims_tiny_wmall_creditshop_adv` */

DROP TABLE IF EXISTS `ims_tiny_wmall_creditshop_adv`;

CREATE TABLE `ims_tiny_wmall_creditshop_adv` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `wxapp_link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(10) DEFAULT '0',
  `status` int(10) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `displayorder` (`displayorder`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_creditshop_adv` */

/*Table structure for table `ims_tiny_wmall_creditshop_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_creditshop_category`;

CREATE TABLE `ims_tiny_wmall_creditshop_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `displayorder` tinyint(3) unsigned DEFAULT '0',
  `status` tinyint(3) DEFAULT '1',
  `advimg` varchar(255) DEFAULT '',
  `advurl` varchar(500) DEFAULT '',
  `isrecommand` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `displayorder` (`displayorder`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_creditshop_category` */

/*Table structure for table `ims_tiny_wmall_creditshop_goods` */

DROP TABLE IF EXISTS `ims_tiny_wmall_creditshop_goods`;

CREATE TABLE `ims_tiny_wmall_creditshop_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `category_id` int(10) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL,
  `old_price` varchar(10) NOT NULL,
  `chance` tinyint(3) unsigned NOT NULL,
  `totalday` tinyint(3) unsigned NOT NULL,
  `use_credit1` varchar(10) NOT NULL DEFAULT '0',
  `use_credit2` varchar(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `credit2` varchar(10) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `redpacket` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_creditshop_goods` */

/*Table structure for table `ims_tiny_wmall_creditshop_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_creditshop_order`;

CREATE TABLE `ims_tiny_wmall_creditshop_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credits` decimal(10,2) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `itemcode` int(10) unsigned NOT NULL DEFAULT '0',
  `actualprice` decimal(10,2) unsigned NOT NULL,
  `faceprice` decimal(10,2) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  `ordernum` varchar(255) NOT NULL,
  `ordersn` varchar(50) NOT NULL,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_creditshop_order` */

/*Table structure for table `ims_tiny_wmall_creditshop_order_new` */

DROP TABLE IF EXISTS `ims_tiny_wmall_creditshop_order_new`;

CREATE TABLE `ims_tiny_wmall_creditshop_order_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` varchar(20) NOT NULL,
  `order_sn` varchar(50) NOT NULL,
  `pay_type` varchar(15) NOT NULL,
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `total_fee` varchar(10) NOT NULL DEFAULT '0.00',
  `discount_fee` varchar(20) NOT NULL DEFAULT '0.00',
  `final_fee` varchar(20) NOT NULL DEFAULT '0.00',
  `transaction_id` varchar(60) NOT NULL,
  `use_credit1` varchar(10) NOT NULL DEFAULT '0.00',
  `use_credit2` varchar(10) NOT NULL DEFAULT '0.00',
  `data` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `grant_status` int(10) NOT NULL DEFAULT '0',
  `use_credit1_status` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `paytime` (`paytime`) USING BTREE,
  KEY `is_pay` (`is_pay`) USING BTREE,
  KEY `pay_type` (`pay_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_creditshop_order_new` */

/*Table structure for table `ims_tiny_wmall_cube` */

DROP TABLE IF EXISTS `ims_tiny_wmall_cube`;

CREATE TABLE `ims_tiny_wmall_cube` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `tips` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned DEFAULT '0',
  `wxapp_link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=439 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_cube` */

/*Table structure for table `ims_tiny_wmall_delivery_cards` */

DROP TABLE IF EXISTS `ims_tiny_wmall_delivery_cards`;

CREATE TABLE `ims_tiny_wmall_delivery_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `day_free_limit` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `delivery_fee_free_limit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_delivery_cards` */

/*Table structure for table `ims_tiny_wmall_delivery_cards_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_delivery_cards_order`;

CREATE TABLE `ims_tiny_wmall_delivery_cards_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(60) NOT NULL,
  `ordersn` varchar(20) NOT NULL,
  `card_id` int(10) unsigned NOT NULL DEFAULT '0',
  `final_fee` varchar(20) NOT NULL,
  `pay_type` varchar(20) NOT NULL,
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=306 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_delivery_cards_order` */

/*Table structure for table `ims_tiny_wmall_deliveryer` */

DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer`;

CREATE TABLE `ims_tiny_wmall_deliveryer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(15) NOT NULL,
  `nickname` varchar(15) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(6) NOT NULL,
  `token` varchar(32) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `age` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `credit1` decimal(10,2) NOT NULL,
  `credit2` decimal(10,2) NOT NULL,
  `work_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `location_x` varchar(20) NOT NULL,
  `location_y` varchar(20) NOT NULL,
  `order_takeout_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order_errander_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `auth_info` varchar(500) NOT NULL,
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `is_takeout` tinyint(3) NOT NULL DEFAULT '0',
  `is_errander` tinyint(3) NOT NULL DEFAULT '0',
  `extra` varchar(500) NOT NULL,
  `openid_wxapp` varchar(60) NOT NULL,
  `collect_max_takeout` int(10) NOT NULL,
  `collect_max_errander` int(10) NOT NULL,
  `perm_transfer` varchar(200) NOT NULL,
  `perm_cancel` varchar(200) NOT NULL,
  `fee_delivery` varchar(500) NOT NULL,
  `fee_getcash` varchar(500) NOT NULL,
  `registration_id` varchar(50) NOT NULL,
  `openid_wxapp_deliveryer` varchar(60) NOT NULL,
  `account` varchar(2000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `deltime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `work_status` (`work_status`) USING BTREE,
  KEY `token` (`token`) USING BTREE,
  KEY `is_takeout` (`is_takeout`) USING BTREE,
  KEY `is_errander` (`is_errander`) USING BTREE,
  KEY `openid_wxapp` (`openid_wxapp`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE,
  KEY `registration_id` (`registration_id`) USING BTREE,
  KEY `uniacid_token` (`uniacid`,`token`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=388 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_deliveryer` */

/*Table structure for table `ims_tiny_wmall_deliveryer_current_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer_current_log`;

CREATE TABLE `ims_tiny_wmall_deliveryer_current_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_type` varchar(20) NOT NULL DEFAULT 'order',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:订单入账, 2: 申请提现',
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_month` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `hash` (`hash`) USING BTREE,
  KEY `deliveryer_id` (`deliveryer_id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `trade_type` (`trade_type`) USING BTREE,
  KEY `uniacid_stat_month` (`uniacid`,`deliveryer_id`,`stat_month`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=531 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_deliveryer_current_log` */

/*Table structure for table `ims_tiny_wmall_deliveryer_getcash_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer_getcash_log`;

CREATE TABLE `ims_tiny_wmall_deliveryer_getcash_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(20) NOT NULL,
  `get_fee` decimal(10,2) unsigned NOT NULL,
  `take_fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '1:申请成功,2:申请中',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `account` varchar(1000) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `channel` varchar(10) NOT NULL DEFAULT 'weixin',
  `toaccount_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `deliveryer_id` (`deliveryer_id`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_deliveryer_getcash_log` */

/*Table structure for table `ims_tiny_wmall_deliveryer_groups` */

DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer_groups`;

CREATE TABLE `ims_tiny_wmall_deliveryer_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL DEFAULT '',
  `group_condition` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_fee` varchar(2000) NOT NULL DEFAULT '',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_deliveryer_groups` */

/*Table structure for table `ims_tiny_wmall_deliveryer_location_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer_location_log`;

CREATE TABLE `ims_tiny_wmall_deliveryer_location_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `location_x` varchar(20) NOT NULL,
  `location_y` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime_cn` varchar(50) NOT NULL,
  `from` varchar(10) NOT NULL DEFAULT 'app',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `deliveryer_id` (`deliveryer_id`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_deliveryer_location_log` */

/*Table structure for table `ims_tiny_wmall_deliveryer_transfer_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_deliveryer_transfer_log`;

CREATE TABLE `ims_tiny_wmall_deliveryer_transfer_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_type` varchar(20) NOT NULL DEFAULT 'takeout',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_year` smallint(10) unsigned NOT NULL DEFAULT '0',
  `stat_month` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `deliveryer_id` (`deliveryer_id`) USING BTREE,
  KEY `stat_year` (`stat_year`) USING BTREE,
  KEY `stat_month` (`stat_month`) USING BTREE,
  KEY `stat_day` (`stat_day`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_deliveryer_transfer_log` */

/*Table structure for table `ims_tiny_wmall_diypage` */

DROP TABLE IF EXISTS `ims_tiny_wmall_diypage`;

CREATE TABLE `ims_tiny_wmall_diypage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `diymenu` int(10) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `version` (`version`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=315 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_diypage` */

/*Table structure for table `ims_tiny_wmall_diypage_menu` */

DROP TABLE IF EXISTS `ims_tiny_wmall_diypage_menu`;

CREATE TABLE `ims_tiny_wmall_diypage_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `updatetime` (`updatetime`) USING BTREE,
  KEY `version` (`version`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_diypage_menu` */

/*Table structure for table `ims_tiny_wmall_diypage_template` */

DROP TABLE IF EXISTS `ims_tiny_wmall_diypage_template`;

CREATE TABLE `ims_tiny_wmall_diypage_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `preview` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_diypage_template` */

/*Table structure for table `ims_tiny_wmall_errander_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_errander_category`;

CREATE TABLE `ims_tiny_wmall_errander_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'buy',
  `label` varchar(1000) NOT NULL,
  `start_fee` varchar(10) NOT NULL,
  `start_km` varchar(10) NOT NULL,
  `pre_km` varchar(10) NOT NULL DEFAULT '1',
  `pre_km_fee` varchar(10) NOT NULL DEFAULT '0',
  `weight_fee_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `weight_fee` text NOT NULL,
  `tip_min` varchar(10) NOT NULL DEFAULT '0',
  `tip_max` varchar(10) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rule` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `goods_thumbs_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_on_upload` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delivery_within_days` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delivery_times` text NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `multiaddress` varchar(500) NOT NULL,
  `group_discount` varchar(1000) NOT NULL,
  `labels` varchar(1000) NOT NULL,
  `notice` varchar(500) NOT NULL,
  `deliveryers` varchar(255) NOT NULL,
  `distance_calculate_type` tinyint(3) NOT NULL,
  `goods_value_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_errander_category` */

/*Table structure for table `ims_tiny_wmall_errander_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_errander_order`;

CREATE TABLE `ims_tiny_wmall_errander_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_channel` varchar(20) NOT NULL DEFAULT 'wap',
  `order_type` varchar(20) NOT NULL DEFAULT 'buy',
  `order_cid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(60) NOT NULL,
  `goods_price` varchar(30) NOT NULL,
  `goods_weight` varchar(10) NOT NULL,
  `buy_username` varchar(20) NOT NULL,
  `buy_sex` varchar(5) NOT NULL,
  `buy_mobile` varchar(15) NOT NULL,
  `buy_address` varchar(100) NOT NULL,
  `buy_location_x` varchar(20) NOT NULL,
  `buy_location_y` varchar(20) NOT NULL,
  `accept_username` varchar(20) NOT NULL,
  `accept_sex` varchar(5) NOT NULL,
  `accept_mobile` varchar(15) NOT NULL,
  `accept_address` varchar(100) NOT NULL,
  `accept_location_x` varchar(20) NOT NULL,
  `accept_location_y` varchar(20) NOT NULL,
  `distance` varchar(20) NOT NULL,
  `delivery_time` varchar(30) NOT NULL,
  `pay_type` varchar(15) NOT NULL,
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_handle_type` varchar(15) NOT NULL DEFAULT 'wechat',
  `delivery_assign_time` int(10) NOT NULL DEFAULT '0',
  `delivery_instore_time` int(10) NOT NULL DEFAULT '0',
  `delivery_success_time` int(10) NOT NULL DEFAULT '0',
  `delivery_success_location_x` varchar(15) NOT NULL,
  `delivery_success_location_y` varchar(15) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `print_nums` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delivery_fee` varchar(10) NOT NULL,
  `delivery_tips` varchar(10) NOT NULL,
  `total_fee` varchar(10) NOT NULL,
  `discount_fee` varchar(20) NOT NULL DEFAULT '0.00',
  `final_fee` varchar(20) NOT NULL DEFAULT '0.00',
  `deliveryer_fee` varchar(10) NOT NULL,
  `deliveryer_total_fee` varchar(10) NOT NULL DEFAULT '0',
  `note` varchar(200) NOT NULL,
  `is_remind` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_anonymous` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `anonymous_username` varchar(15) NOT NULL,
  `out_trade_no` varchar(50) NOT NULL,
  `refund_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `refund_out_no` varchar(40) NOT NULL,
  `refund_apply_time` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_success_time` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_channel` varchar(30) NOT NULL,
  `refund_account` varchar(30) NOT NULL,
  `stat_year` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_month` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_day` int(10) unsigned NOT NULL DEFAULT '0',
  `thumbs` varchar(1000) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `agent_discount_fee` varchar(10) NOT NULL DEFAULT '0.00',
  `agent_serve_fee` varchar(10) NOT NULL DEFAULT '0.00',
  `agent_serve` varchar(1000) NOT NULL,
  `agent_final_fee` varchar(10) NOT NULL DEFAULT '0.00',
  `plateform_serve_fee` varchar(10) NOT NULL DEFAULT '0.00',
  `plateform_serve` varchar(1000) NOT NULL,
  `data` text NOT NULL,
  `delivery_collect_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `transfer_deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `transfer_delivery_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spread1` int(10) unsigned NOT NULL DEFAULT '0',
  `spread2` int(10) unsigned NOT NULL DEFAULT '0',
  `spreadbalance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `paytime` (`paytime`) USING BTREE,
  KEY `is_pay` (`is_pay`) USING BTREE,
  KEY `pay_type` (`pay_type`) USING BTREE,
  KEY `refund_status` (`refund_status`) USING BTREE,
  KEY `delivery_status` (`delivery_status`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `deliveryer_id` (`deliveryer_id`) USING BTREE,
  KEY `stat_year` (`stat_year`) USING BTREE,
  KEY `stat_month` (`stat_month`) USING BTREE,
  KEY `stat_day` (`stat_day`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `delivery_collect_type` (`delivery_collect_type`) USING BTREE,
  KEY `transfer_deliveryer_id` (`delivery_collect_type`) USING BTREE,
  KEY `transfer_delivery_status` (`delivery_collect_type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_errander_order` */

/*Table structure for table `ims_tiny_wmall_errander_order_discount` */

DROP TABLE IF EXISTS `ims_tiny_wmall_errander_order_discount`;

CREATE TABLE `ims_tiny_wmall_errander_order_discount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `note` varchar(50) NOT NULL,
  `fee` varchar(20) NOT NULL DEFAULT '0.00',
  `store_discount_fee` varchar(10) NOT NULL DEFAULT '0',
  `agent_discount_fee` varchar(10) NOT NULL DEFAULT '0',
  `plateform_discount_fee` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `oid` (`oid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_errander_order_discount` */

/*Table structure for table `ims_tiny_wmall_errander_order_status_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_errander_order_status_log`;

CREATE TABLE `ims_tiny_wmall_errander_order_status_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `note` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `role` varchar(30) NOT NULL,
  `role_cn` varchar(30) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `oid` (`oid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_errander_order_status_log` */

/*Table structure for table `ims_tiny_wmall_errander_page` */

DROP TABLE IF EXISTS `ims_tiny_wmall_errander_page`;

CREATE TABLE `ims_tiny_wmall_errander_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'sence',
  `scene` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `agreement` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL,
  `start_hour` varchar(20) NOT NULL DEFAULT '00:00',
  `end_hour` varchar(20) NOT NULL DEFAULT '23:59',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `isdefault` (`isdefault`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_errander_page` */

/*Table structure for table `ims_tiny_wmall_errander_store` */

DROP TABLE IF EXISTS `ims_tiny_wmall_errander_store`;

CREATE TABLE `ims_tiny_wmall_errander_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `is_in_business` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_rest` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `send_price` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delivery_price` varchar(255) NOT NULL DEFAULT '0',
  `delivery_free_price` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `delivery_time` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:商家配送,2:到店自提,3:两种都支持',
  `delivery_within_days` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delivery_reserve_days` tinyint(3) unsigned DEFAULT '0',
  `serve_radius` varchar(30) NOT NULL DEFAULT '0.00',
  `serve_fee` varchar(255) NOT NULL,
  `delivery_area` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `location_x` varchar(15) NOT NULL,
  `location_y` varchar(15) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sns` varchar(255) NOT NULL,
  `notice` varchar(100) NOT NULL COMMENT '公告',
  `tips` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `invoice_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `token_status` tinyint(3) unsigned DEFAULT '0',
  `remind_time_limit` tinyint(3) unsigned NOT NULL DEFAULT '10',
  `remind_reply` varchar(1500) NOT NULL,
  `comment_reply` varchar(2000) NOT NULL,
  `sailed` int(10) unsigned NOT NULL DEFAULT '0',
  `score` varchar(10) NOT NULL,
  `first_order_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `discount_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grant_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bargain_price_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reserve_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `collect_coupon_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grant_coupon_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论审核.1:直接通过',
  `sms_use_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '短信使用条数',
  `wechat_qrcode` varchar(500) NOT NULL,
  `custom_url` varchar(1000) NOT NULL,
  `addtype` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:后台添加,2:申请入驻',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `template` varchar(20) NOT NULL DEFAULT 'index',
  `pc_notice_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `not_in_serve_radius` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `auto_handel_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `auto_get_address` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `auto_notice_deliveryer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `is_recommend` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_stick` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(3) NOT NULL DEFAULT '0',
  `is_assign` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_reserve` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_meal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_paybill` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `forward_mode` varchar(15) NOT NULL,
  `forward_url` varchar(100) NOT NULL,
  `assign_mode` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `assign_qrcode` varchar(255) NOT NULL,
  `delivery_mode` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `delivery_fee_mode` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `delivery_times` varchar(10000) NOT NULL,
  `delivery_areas` text NOT NULL,
  `order_note` varchar(255) NOT NULL COMMENT '订单备注',
  `qualification` varchar(1000) NOT NULL,
  `label` int(10) NOT NULL DEFAULT '0',
  `push_token` varchar(50) NOT NULL,
  `self_audit_comment` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delivery_extra` varchar(255) NOT NULL COMMENT '额外配送费',
  `elemeShopId` varchar(30) NOT NULL DEFAULT '0',
  `eleme_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `meituanShopId` varchar(30) DEFAULT '0',
  `meituan_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `fee_order` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `title` (`title`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `is_recommend` (`is_recommend`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `label` (`label`) USING BTREE,
  KEY `displayorder` (`displayorder`) USING BTREE,
  KEY `is_stick` (`is_stick`) USING BTREE,
  KEY `elemeShopId` (`elemeShopId`) USING BTREE,
  KEY `meituanShopId` (`meituanShopId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=576 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_errander_store` */

/*Table structure for table `ims_tiny_wmall_errander_store_current_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_errander_store_current_log`;

CREATE TABLE `ims_tiny_wmall_errander_store_current_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:订单入账, 2: 申请提现,3:账户变动，4:买单订单入驻',
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_errander_store_current_log` */

/*Table structure for table `ims_tiny_wmall_freelunch` */

DROP TABLE IF EXISTS `ims_tiny_wmall_freelunch`;

CREATE TABLE `ims_tiny_wmall_freelunch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `max_partake_times` int(10) unsigned NOT NULL DEFAULT '0',
  `partake_grant_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reward_grant_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `redpacket_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pre_partaker_num` int(10) unsigned NOT NULL DEFAULT '0',
  `pre_partaker_fee` decimal(10,2) unsigned NOT NULL,
  `pre_reward_fee` decimal(10,2) unsigned NOT NULL,
  `pre_max_partake_times` int(10) unsigned NOT NULL DEFAULT '0',
  `plus_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `plus_thumb` varchar(255) NOT NULL,
  `plus_partaker_num` int(10) unsigned NOT NULL DEFAULT '0',
  `plus_reward_num` int(10) unsigned NOT NULL DEFAULT '1',
  `plus_pre_partaker_fee` decimal(10,2) unsigned NOT NULL,
  `pre_plus_reward_fee` decimal(10,2) unsigned NOT NULL,
  `plus_pre_max_partake_times` int(10) unsigned NOT NULL DEFAULT '0',
  `serial_sn` int(10) unsigned NOT NULL DEFAULT '1',
  `plus_serial_sn` int(10) unsigned NOT NULL DEFAULT '1',
  `share` varchar(3000) NOT NULL,
  `agreement` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `starttime` (`starttime`) USING BTREE,
  KEY `endtime` (`endtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_freelunch` */

/*Table structure for table `ims_tiny_wmall_freelunch_partaker` */

DROP TABLE IF EXISTS `ims_tiny_wmall_freelunch_partaker`;

CREATE TABLE `ims_tiny_wmall_freelunch_partaker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `freelunch_id` int(10) unsigned NOT NULL DEFAULT '0',
  `record_id` int(10) unsigned NOT NULL DEFAULT '0',
  `serial_sn` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `order_sn` varchar(50) NOT NULL,
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `freelunch_id` (`freelunch_id`) USING BTREE,
  KEY `record_id` (`record_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `serial_sn` (`serial_sn`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_freelunch_partaker` */

/*Table structure for table `ims_tiny_wmall_freelunch_record` */

DROP TABLE IF EXISTS `ims_tiny_wmall_freelunch_record`;

CREATE TABLE `ims_tiny_wmall_freelunch_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `freelunch_id` int(10) unsigned NOT NULL DEFAULT '0',
  `serial_sn` int(10) unsigned NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL DEFAULT 'common',
  `partaker_total` int(10) unsigned NOT NULL DEFAULT '0',
  `partaker_dosage` int(10) unsigned NOT NULL DEFAULT '0',
  `partaker_fee` decimal(10,2) unsigned NOT NULL,
  `reward_fee` decimal(10,2) unsigned NOT NULL,
  `reward_uid` varchar(1000) NOT NULL,
  `reward_number` int(10) unsigned NOT NULL DEFAULT '0',
  `startime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `freelunch_id` (`freelunch_id`) USING BTREE,
  KEY `serial_sn` (`serial_sn`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_freelunch_record` */

/*Table structure for table `ims_tiny_wmall_gohome_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_category`;

CREATE TABLE `ims_tiny_wmall_gohome_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `wxapp_link` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_gohome_category` */

/*Table structure for table `ims_tiny_wmall_gohome_comment` */

DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_comment`;

CREATE TABLE `ims_tiny_wmall_gohome_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `goods_quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `store_service` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  `thumbs` varchar(3000) NOT NULL,
  `reply` varchar(500) NOT NULL,
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `data` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `oid` (`oid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `uniacid_goods_id` (`uniacid`,`agentid`,`goods_id`,`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_gohome_comment` */

/*Table structure for table `ims_tiny_wmall_gohome_favorite` */

DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_favorite`;

CREATE TABLE `ims_tiny_wmall_gohome_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_uid_type_goodsid` (`uniacid`,`uid`,`type`,`goods_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_gohome_favorite` */

/*Table structure for table `ims_tiny_wmall_gohome_notice` */

DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_notice`;

CREATE TABLE `ims_tiny_wmall_gohome_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `wxapp_link` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_gohome_notice` */

/*Table structure for table `ims_tiny_wmall_gohome_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_order`;

CREATE TABLE `ims_tiny_wmall_gohome_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(60) NOT NULL,
  `order_type` varchar(32) NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `order_channel` varchar(20) NOT NULL DEFAULT 'wechat',
  `is_team` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `team_id` int(10) unsigned NOT NULL DEFAULT '0',
  `team_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `takepart_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordersn` varchar(60) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `discount_fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_type` varchar(20) NOT NULL,
  `paytime` varchar(145) NOT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `remark` text,
  `transaction_id` varchar(60) NOT NULL,
  `out_trade_no` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `buyremark` text NOT NULL,
  `refund_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `refund_out_no` varchar(40) NOT NULL,
  `refund_apply_time` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_success_time` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_channel` varchar(30) NOT NULL,
  `refund_account` varchar(30) NOT NULL,
  `spec` text NOT NULL,
  `fightstatus` int(10) unsigned NOT NULL DEFAULT '0',
  `fightgroupid` int(10) unsigned NOT NULL DEFAULT '0',
  `expressid` int(10) unsigned NOT NULL DEFAULT '0',
  `recordid` int(10) unsigned NOT NULL DEFAULT '0',
  `refundtime` varchar(145) NOT NULL,
  `applyrefund` int(10) unsigned NOT NULL DEFAULT '0',
  `applytime` varchar(145) NOT NULL,
  `disorderid` int(10) unsigned NOT NULL DEFAULT '0',
  `failtimes` int(10) unsigned NOT NULL DEFAULT '0',
  `vipbuyflag` int(10) unsigned NOT NULL DEFAULT '0',
  `specid` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(60) NOT NULL DEFAULT '',
  `paidprid` int(10) unsigned NOT NULL DEFAULT '0',
  `shareid` int(10) unsigned NOT NULL DEFAULT '0',
  `settlementmoney` decimal(10,2) NOT NULL,
  `goodsprice` decimal(10,2) NOT NULL,
  `overtime` int(10) unsigned NOT NULL DEFAULT '0',
  `changedispatchprice` decimal(10,2) NOT NULL,
  `changeprice` decimal(10,2) NOT NULL,
  `originalprice` decimal(10,2) NOT NULL,
  `estimatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `store_discount_fee` decimal(10,2) NOT NULL,
  `store_final_fee` decimal(10,2) NOT NULL,
  `plateform_discount_fee` decimal(10,2) NOT NULL,
  `plateform_serve_fee` decimal(10,2) NOT NULL,
  `plateform_serve` varchar(500) NOT NULL,
  `agent_final_fee` decimal(10,2) NOT NULL,
  `agent_serve_fee` decimal(10,2) NOT NULL,
  `agent_serve` varchar(500) NOT NULL,
  `agent_discount_fee` decimal(10,2) NOT NULL,
  `stat_year` int(10) unsigned NOT NULL,
  `stat_month` int(10) unsigned NOT NULL,
  `stat_day` int(10) unsigned NOT NULL,
  `print_nums` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `print_sn` varchar(100) NOT NULL DEFAULT '0',
  `print_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `spread1` int(10) unsigned NOT NULL DEFAULT '0',
  `spread2` int(10) unsigned NOT NULL DEFAULT '0',
  `spreadbalance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_uid_status` (`uniacid`,`uid`,`status`) USING BTREE,
  KEY `uniacid_sid_status` (`uniacid`,`sid`,`status`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_gohome_order` */

/*Table structure for table `ims_tiny_wmall_gohome_slide` */

DROP TABLE IF EXISTS `ims_tiny_wmall_gohome_slide`;

CREATE TABLE `ims_tiny_wmall_gohome_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `wxapp_link` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'gohome',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_gohome_slide` */

/*Table structure for table `ims_tiny_wmall_goods` */

DROP TABLE IF EXISTS `ims_tiny_wmall_goods`;

CREATE TABLE `ims_tiny_wmall_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `title_th` varchar(30) NOT NULL DEFAULT '' COMMENT '泰语标题',
  `price` varchar(500) NOT NULL,
  `box_price` varchar(10) NOT NULL DEFAULT '0',
  `is_options` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unitname` varchar(10) NOT NULL DEFAULT '份',
  `unitname_th` varchar(10) NOT NULL DEFAULT 'ชิ้น' COMMENT '泰语单位名称',
  `total` int(10) NOT NULL DEFAULT '0',
  `total_update_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sailed` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_hot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL,
  `slides` varchar(1000) NOT NULL,
  `label` varchar(5) NOT NULL,
  `label_th` varchar(20) NOT NULL DEFAULT '' COMMENT '泰语标签',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `content` varchar(100) NOT NULL,
  `content_th` varchar(100) NOT NULL DEFAULT '' COMMENT '泰语内容',
  `description` text NOT NULL,
  `description_th` text COMMENT '泰语描述',
  `comment_total` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_good` int(10) unsigned NOT NULL DEFAULT '0',
  `print_label` int(10) unsigned NOT NULL DEFAULT '0',
  `number` varchar(50) NOT NULL,
  `attrs` varchar(1000) NOT NULL,
  `attrs_th` varchar(1000) DEFAULT NULL,
  `old_price` varchar(10) NOT NULL,
  `elemeId` varchar(50) NOT NULL DEFAULT '0',
  `meituanId` varchar(50) NOT NULL DEFAULT '0',
  `openplateformCode` varchar(50) NOT NULL DEFAULT '0',
  `total_warning` int(10) unsigned NOT NULL DEFAULT '0',
  `child_id` int(20) unsigned NOT NULL DEFAULT '0',
  `is_showtime` tinyint(3) NOT NULL DEFAULT '0',
  `start_time1` varchar(10) NOT NULL,
  `end_time1` varchar(10) NOT NULL,
  `start_time2` varchar(10) NOT NULL,
  `end_time2` varchar(10) NOT NULL,
  `week` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `ts_price` varchar(10) NOT NULL DEFAULT '0.00',
  `svip_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `svip_price` varchar(10) NOT NULL DEFAULT '0',
  `unitnum` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `data` varchar(2000) NOT NULL,
  `huangou_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `displayorder` (`displayorder`) USING BTREE,
  KEY `elemeId` (`elemeId`) USING BTREE,
  KEY `meituanId` (`meituanId`) USING BTREE,
  KEY `openplateformCode` (`openplateformCode`) USING BTREE,
  KEY `is_showtime` (`is_showtime`) USING BTREE,
  KEY `sid` (`uniacid`,`sid`) USING BTREE,
  KEY `cid` (`uniacid`,`sid`,`type`,`status`,`cid`) USING BTREE,
  KEY `title` (`uniacid`,`sid`,`title`) USING BTREE,
  KEY `is_hot` (`uniacid`,`sid`,`type`,`status`,`is_hot`) USING BTREE,
  KEY `status` (`uniacid`,`sid`,`type`,`status`) USING BTREE,
  KEY `child_id` (`uniacid`,`sid`,`type`,`status`,`cid`,`child_id`) USING BTREE,
  KEY `uniacid_svip_status_status` (`uniacid`,`status`,`svip_status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15991 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_goods` */

insert  into `ims_tiny_wmall_goods`(`id`,`uniacid`,`sid`,`cid`,`title`,`title_th`,`price`,`box_price`,`is_options`,`unitname`,`unitname_th`,`total`,`total_update_type`,`sailed`,`status`,`is_hot`,`thumb`,`slides`,`label`,`label_th`,`displayorder`,`content`,`content_th`,`description`,`description_th`,`comment_total`,`comment_good`,`print_label`,`number`,`attrs`,`attrs_th`,`old_price`,`elemeId`,`meituanId`,`openplateformCode`,`total_warning`,`child_id`,`is_showtime`,`start_time1`,`end_time1`,`start_time2`,`end_time2`,`week`,`type`,`ts_price`,`svip_status`,`svip_price`,`unitnum`,`data`,`huangou_type`) values (15988,1,1310,2469,'商品名称','','0','0',1,'商品单位','ชิ้น',-1,1,0,1,0,'images/1/2023/03/YxHP1XP989W9NX7j18TIN10mQx8771.jpg','a:0:{}','自定义标签','',0,'简单描述','','<p>商品详情</p>',NULL,0,0,0,'N1222','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"属性\";s:5:\"label\";a:1:{i:0;s:6:\"辣度\";}}}',NULL,'0','0','0','0',0,0,0,'','','','','',1,'0',0,'0',1,'',1),(15990,1,1311,0,'商品名称','商品名称（泰语','5','0',1,'份','份泰语',-1,1,0,1,0,'','a:0:{}','标签','标签（泰语）',0,'简单描述','简单描述（泰语）','<p><span style=\"color: rgb(51, 51, 51); font-family: Helvetica, STHeiti, \" microsoft=\"\" font-size:=\"\" background-color:=\"\">商品详情</span></p>','<p><span style=\"color: rgb(51, 51, 51); font-family: Helvetica, STHeiti, \" microsoft=\"\" font-size:=\"\" background-color:=\"\">商品详情(泰语)</span></p>',0,0,0,'CCC','a:1:{i:0;a:2:{s:4:\"name\";s:6:\"属性\";s:5:\"label\";a:2:{i:0;s:7:\"属性1\";i:1;s:7:\"属性2\";}}}','a:1:{i:0;a:2:{s:4:\"name\";s:14:\"属性(泰语)\";s:5:\"label\";a:2:{i:0;s:14:\"泰语属性1 \";i:1;s:14:\" 泰语属性2\";}}}','6','0','0','0',0,0,0,'','','','','',1,'0',0,'0',1,'',1);

/*Table structure for table `ims_tiny_wmall_goods_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_goods_category`;

CREATE TABLE `ims_tiny_wmall_goods_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `title_th` varchar(20) NOT NULL DEFAULT '' COMMENT '泰语标题',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_fee` int(10) unsigned NOT NULL DEFAULT '0',
  `elemeId` varchar(50) NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT '0',
  `description` varchar(100) NOT NULL,
  `description_th` varchar(100) NOT NULL DEFAULT '' COMMENT '泰语描述',
  `is_showtime` tinyint(3) NOT NULL DEFAULT '0',
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `week` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `displayorder` (`displayorder`) USING BTREE,
  KEY `elemeId` (`elemeId`) USING BTREE,
  KEY `is_showtime` (`is_showtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2472 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_goods_category` */

insert  into `ims_tiny_wmall_goods_category`(`id`,`uniacid`,`sid`,`title`,`title_th`,`status`,`displayorder`,`min_fee`,`elemeId`,`parentid`,`description`,`description_th`,`is_showtime`,`start_time`,`end_time`,`week`) values (2468,1,1309,'商品分类','',1,0,0,'0',0,'分类描述','',0,'','',''),(2469,1,1310,'商品分类1','',1,0,0,'0',0,'商品分类描述','',0,'','',''),(2470,1,1311,'分类1','泰语分类1',1,0,0,'0',0,'分类描述1','泰语分类描述1',0,'','',''),(2471,1,1311,'子分类','子分类（泰语）',1,0,0,'0',2470,'','',0,'','','');

/*Table structure for table `ims_tiny_wmall_goods_options` */

DROP TABLE IF EXISTS `ims_tiny_wmall_goods_options`;

CREATE TABLE `ims_tiny_wmall_goods_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `name_th` varchar(50) NOT NULL DEFAULT '' COMMENT '泰语规格名称',
  `price` varchar(50) NOT NULL,
  `total` int(10) NOT NULL DEFAULT '-1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `total_warning` int(10) unsigned NOT NULL DEFAULT '0',
  `svip_price` decimal(10,2) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=819 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_goods_options` */

insert  into `ims_tiny_wmall_goods_options`(`id`,`uniacid`,`sid`,`goods_id`,`name`,`name_th`,`price`,`total`,`displayorder`,`total_warning`,`svip_price`) values (815,1,1310,15988,'规格1','','1',-1,0,0,'1.00'),(816,1,1310,15988,'规格2','','2',-1,0,0,'2.00'),(818,1,1311,15990,'规格1','泰语规格1','34',-1,0,0,'20.00');

/*Table structure for table `ims_tiny_wmall_haodian_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_haodian_category`;

CREATE TABLE `ims_tiny_wmall_haodian_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_agentid` (`uniacid`,`agentid`) USING BTREE,
  KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_haodian_category` */

/*Table structure for table `ims_tiny_wmall_haodian_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_haodian_order`;

CREATE TABLE `ims_tiny_wmall_haodian_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `final_fee` varchar(20) NOT NULL,
  `days` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ordersn` varchar(50) NOT NULL,
  `pay_type` varchar(20) NOT NULL,
  `is_pay` tinyint(3) NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `order_channel` varchar(15) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `out_trade_no` varchar(50) NOT NULL,
  `agent_final_fee` decimal(10,2) NOT NULL,
  `agent_serve_fee` decimal(10,2) NOT NULL,
  `agent_serve` varchar(500) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_uid` (`uniacid`,`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_haodian_order` */

/*Table structure for table `ims_tiny_wmall_help` */

DROP TABLE IF EXISTS `ims_tiny_wmall_help`;

CREATE TABLE `ims_tiny_wmall_help` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime|319|errander_deliveryerApp|10.6.0|20180111192949` int(10) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `title` (`title`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_help` */

/*Table structure for table `ims_tiny_wmall_kanjia` */

DROP TABLE IF EXISTS `ims_tiny_wmall_kanjia`;

CREATE TABLE `ims_tiny_wmall_kanjia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `cateid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `oldprice` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `vipprice` decimal(10,2) NOT NULL,
  `submitmoneylimit` decimal(10,2) NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `helplimit` int(10) unsigned NOT NULL DEFAULT '0',
  `dayhelplimit` int(10) unsigned NOT NULL DEFAULT '0',
  `joinlimit` int(10) unsigned NOT NULL DEFAULT '0',
  `falsejoinnum` int(10) unsigned NOT NULL DEFAULT '0',
  `falselooknum` int(10) unsigned NOT NULL DEFAULT '0',
  `falsesharenum` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumbs` text NOT NULL,
  `unit` varchar(45) NOT NULL,
  `bgmusic` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `activity_rules` text NOT NULL,
  `rules` text NOT NULL,
  `vipstatus` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) NOT NULL DEFAULT '0',
  `sailed` int(10) unsigned NOT NULL DEFAULT '0',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `malldisplayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `looknum` int(10) unsigned NOT NULL DEFAULT '0',
  `sharenum` int(10) unsigned NOT NULL DEFAULT '0',
  `usestatus` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `share` varchar(2000) NOT NULL,
  `total_update_type` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`) USING BTREE,
  KEY `uniacid_agentid_cateid_status` (`uniacid`,`agentid`,`cateid`,`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_kanjia` */

/*Table structure for table `ims_tiny_wmall_kanjia_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_kanjia_category`;

CREATE TABLE `ims_tiny_wmall_kanjia_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_agentid` (`uniacid`,`agentid`) USING BTREE,
  KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_kanjia_category` */

/*Table structure for table `ims_tiny_wmall_kanjia_helprecord` */

DROP TABLE IF EXISTS `ims_tiny_wmall_kanjia_helprecord`;

CREATE TABLE `ims_tiny_wmall_kanjia_helprecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `agentid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `bargainprice` decimal(10,2) NOT NULL,
  `afterprice` decimal(10,2) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_tiny_wmall_kanjia_helprecord` */

/*Table structure for table `ims_tiny_wmall_kanjia_userlist` */

DROP TABLE IF EXISTS `ims_tiny_wmall_kanjia_userlist`;

CREATE TABLE `ims_tiny_wmall_kanjia_userlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `agentid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `qrcode` int(11) NOT NULL,
  `usetimes` int(11) NOT NULL,
  `usedtime` text NOT NULL,
  `expressid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_kanjia_userlist` */

/*Table structure for table `ims_tiny_wmall_lewaimai_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_lewaimai_log`;

CREATE TABLE `ims_tiny_wmall_lewaimai_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `storeidOrgoodsid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT 'goods',
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `storeidOrgoodsid` (`storeidOrgoodsid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2820 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_lewaimai_log` */

/*Table structure for table `ims_tiny_wmall_mealredpacket_exchange` */

DROP TABLE IF EXISTS `ims_tiny_wmall_mealredpacket_exchange`;

CREATE TABLE `ims_tiny_wmall_mealredpacket_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `redpacketid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) unsigned NOT NULL,
  `condition` decimal(10,2) unsigned NOT NULL,
  `grant_days_effect` int(10) unsigned NOT NULL DEFAULT '0',
  `use_days_limit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `redpacketid` (`redpacketid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_tiny_wmall_mealredpacket_exchange` */

/*Table structure for table `ims_tiny_wmall_member_black` */

DROP TABLE IF EXISTS `ims_tiny_wmall_member_black`;

CREATE TABLE `ims_tiny_wmall_member_black` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `plugin` varchar(30) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_uid_plugin` (`uniacid`,`uid`,`plugin`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_member_black` */

/*Table structure for table `ims_tiny_wmall_member_footmark` */

DROP TABLE IF EXISTS `ims_tiny_wmall_member_footmark`;

CREATE TABLE `ims_tiny_wmall_member_footmark` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_day` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `stat_day` (`stat_day`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1239 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_tiny_wmall_member_footmark` */

insert  into `ims_tiny_wmall_member_footmark`(`id`,`uniacid`,`uid`,`sid`,`addtime`,`stat_day`,`agentid`) values (1238,1,155716544,1310,1677916674,20230304,0);

/*Table structure for table `ims_tiny_wmall_member_groups` */

DROP TABLE IF EXISTS `ims_tiny_wmall_member_groups`;

CREATE TABLE `ims_tiny_wmall_member_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL DEFAULT '',
  `group_condition` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_member_groups` */

/*Table structure for table `ims_tiny_wmall_member_invoice` */

DROP TABLE IF EXISTS `ims_tiny_wmall_member_invoice`;

CREATE TABLE `ims_tiny_wmall_member_invoice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `recognition` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_member_invoice` */

/*Table structure for table `ims_tiny_wmall_member_recharge` */

DROP TABLE IF EXISTS `ims_tiny_wmall_member_recharge`;

CREATE TABLE `ims_tiny_wmall_member_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `order_sn` varchar(40) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `final_fee` decimal(10,2) NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT 'credit',
  `tag` varchar(1000) NOT NULL,
  `is_pay` tinyint(1) NOT NULL DEFAULT '0',
  `pay_type` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime|146|errander_deliveryerApp|5.3.0|20170304144427` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_member_recharge` */

/*Table structure for table `ims_tiny_wmall_members` */

DROP TABLE IF EXISTS `ims_tiny_wmall_members`;

CREATE TABLE `ims_tiny_wmall_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `setmeal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `setmeal_day_free_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `setmeal_starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `setmeal_endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `first_order_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_order_time` int(10) unsigned NOT NULL DEFAULT '0',
  `success_num` int(10) unsigned DEFAULT '0',
  `success_price` decimal(10,2) NOT NULL,
  `cancel_num` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_price` decimal(10,2) NOT NULL,
  `is_sys` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:系统会员, 2:模块兼容会员',
  `search_data` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile_audit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `salt` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `openid_qq` varchar(50) NOT NULL,
  `openid_wx` varchar(50) NOT NULL,
  `register_type` varchar(20) NOT NULL DEFAULT 'wechat',
  `success_first_time` int(10) unsigned NOT NULL DEFAULT '0',
  `success_last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_first_time` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `token` varchar(50) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `uid_qianfan` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_majia` int(10) unsigned NOT NULL DEFAULT '0',
  `is_spread` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spreadcredit2` decimal(10,2) unsigned NOT NULL,
  `spreadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `spread1` int(10) unsigned NOT NULL DEFAULT '0',
  `spread2` int(10) unsigned NOT NULL DEFAULT '0',
  `spreadfixed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spread_groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `spread_status` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid_updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `openid_wxapp` varchar(50) NOT NULL,
  `unionId` varchar(50) NOT NULL,
  `spread_groupid_change_from` varchar(10) NOT NULL DEFAULT 'system',
  `setmeal_deliveryfee_free_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `svip_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `svip_starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `svip_endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `svip_credit1` decimal(10,2) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `cancel_first_time` (`cancel_first_time`) USING BTREE,
  KEY `cancel_last_time` (`cancel_last_time`) USING BTREE,
  KEY `success_first_time` (`success_first_time`) USING BTREE,
  KEY `success_last_time` (`success_last_time`) USING BTREE,
  KEY `first_order_time` (`success_first_time`) USING BTREE,
  KEY `last_order_time` (`success_last_time`) USING BTREE,
  KEY `uid_qianfan` (`uid_qianfan`) USING BTREE,
  KEY `is_spread` (`is_spread`) USING BTREE,
  KEY `spreadtime` (`spreadtime`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE,
  KEY `uid_majia` (`uid_majia`) USING BTREE,
  KEY `spread1` (`spread1`) USING BTREE,
  KEY `spread2` (`spread2`) USING BTREE,
  KEY `spead_groupid` (`spread_groupid`) USING BTREE,
  KEY `spead_status` (`spread_status`) USING BTREE,
  KEY `speadid1` (`spread1`) USING BTREE,
  KEY `speadid2` (`spread2`) USING BTREE,
  KEY `openid_wxapp` (`openid_wxapp`) USING BTREE,
  KEY `unionId` (`unionId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5580 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_members` */

insert  into `ims_tiny_wmall_members`(`id`,`uniacid`,`uid`,`openid`,`avatar`,`nickname`,`sex`,`realname`,`mobile`,`setmeal_id`,`setmeal_day_free_limit`,`setmeal_starttime`,`setmeal_endtime`,`first_order_time`,`last_order_time`,`success_num`,`success_price`,`cancel_num`,`cancel_price`,`is_sys`,`search_data`,`addtime`,`mobile_audit`,`salt`,`password`,`openid_qq`,`openid_wx`,`register_type`,`success_first_time`,`success_last_time`,`cancel_first_time`,`cancel_last_time`,`status`,`token`,`credit1`,`credit2`,`uid_qianfan`,`uid_majia`,`is_spread`,`spreadcredit2`,`spreadtime`,`groupid`,`spread1`,`spread2`,`spreadfixed`,`spread_groupid`,`spread_status`,`groupid_updatetime`,`openid_wxapp`,`unionId`,`spread_groupid_change_from`,`setmeal_deliveryfee_free_limit`,`svip_status`,`svip_starttime`,`svip_endtime`,`svip_credit1`) values (5579,1,155716544,'','','','','','15880260510',0,0,0,0,0,0,0,'0.00',0,'0.00',2,'',1677916636,1,'757046','f7aa1c217c339528745242f7ea4fd322','','','mobile',0,0,0,0,1,'sDALvgw33YG9ol4dV99ZA7c72jVAJago','0.00','0.00',0,0,0,'0.00',0,0,0,0,0,0,0,1677997717,'','','system',0,0,0,0,'0.00');

/*Table structure for table `ims_tiny_wmall_news` */

DROP TABLE IF EXISTS `ims_tiny_wmall_news`;

CREATE TABLE `ims_tiny_wmall_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `cateid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_show_home` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `title` (`title`) USING BTREE,
  KEY `cateid` (`cateid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_news` */

/*Table structure for table `ims_tiny_wmall_news_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_news_category`;

CREATE TABLE `ims_tiny_wmall_news_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` varchar(15) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_news_category` */

insert  into `ims_tiny_wmall_news_category`(`id`,`uniacid`,`title`,`displayorder`,`type`,`agentid`) values (29,1,'资讯分类1',0,'',0);

/*Table structure for table `ims_tiny_wmall_notice` */

DROP TABLE IF EXISTS `ims_tiny_wmall_notice`;

CREATE TABLE `ims_tiny_wmall_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'member',
  `title` varchar(60) NOT NULL,
  `link` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `flag` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime|562|errander_deliveryerApp|14.2.0|20180721162124` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `wxapp_link` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_notice` */

/*Table structure for table `ims_tiny_wmall_notice_read_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_notice_read_log`;

CREATE TABLE `ims_tiny_wmall_notice_read_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `notice_id` (`notice_id`) USING BTREE,
  KEY `is_new` (`is_new`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=402 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_tiny_wmall_notice_read_log` */

/*Table structure for table `ims_tiny_wmall_oauth_fans` */

DROP TABLE IF EXISTS `ims_tiny_wmall_oauth_fans`;

CREATE TABLE `ims_tiny_wmall_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `oauth_openid` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'wechat',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `appid` (`appid`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE,
  KEY `oauth_openid` (`oauth_openid`) USING BTREE,
  KEY `appid_openid` (`appid`,`openid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_oauth_fans` */

/*Table structure for table `ims_tiny_wmall_operate_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_operate_log`;

CREATE TABLE `ims_tiny_wmall_operate_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `role` varchar(20) NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `content` varchar(500) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `source` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_operate_log` */

insert  into `ims_tiny_wmall_operate_log`(`id`,`uniacid`,`username`,`uid`,`role`,`type`,`content`,`ip`,`address`,`source`,`addtime`) values (32,1,'平台创始人',1,'founder',2000,'平台后台添加商户(商户id:1308)','106.122.239.2','','',1618919341),(33,1,'平台创始人',1,'founder',2000,'平台后台添加商户(商户id:1309)','127.0.0.1','','',1677850219),(34,1,'平台创始人',1,'founder',2000,'平台后台添加商户(商户id:1310)','127.0.0.1','','',1677851395),(35,1,'平台创始人',1,'founder',2000,'平台后台添加商户(商户id:1311)','127.0.0.1','','',1678111525);

/*Table structure for table `ims_tiny_wmall_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order`;

CREATE TABLE `ims_tiny_wmall_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordersn` varchar(20) NOT NULL,
  `code` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `number` varchar(60) NOT NULL,
  `location_x` varchar(20) NOT NULL,
  `location_y` varchar(20) NOT NULL,
  `note` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `num` tinyint(3) unsigned NOT NULL,
  `delivery_day` varchar(20) NOT NULL,
  `delivery_time` varchar(20) NOT NULL,
  `pay_type` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_handle_type` varchar(20) NOT NULL DEFAULT 'wechat',
  `delivery_success_location_x` varchar(15) NOT NULL,
  `delivery_success_location_y` varchar(15) NOT NULL,
  `delivery_assign_time` int(10) NOT NULL DEFAULT '0',
  `delivery_instore_time` int(10) NOT NULL DEFAULT '0',
  `delivery_success_time` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `delivery_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '3:待配送, 4:配送中, 5: 配送成功, 6: 配送失败',
  `delivery_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_comment` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `print_nums` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delivery_fee` decimal(10,2) unsigned NOT NULL COMMENT '外卖配送费',
  `pack_fee` decimal(10,2) unsigned NOT NULL,
  `serve_fee` varchar(10) NOT NULL,
  `discount_fee` varchar(20) NOT NULL DEFAULT '0.00',
  `total_fee` varchar(20) NOT NULL DEFAULT '0.00',
  `final_fee` varchar(20) NOT NULL DEFAULT '0.00',
  `vip_free_delivery_fee` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `invoice` varchar(500) NOT NULL,
  `data` text NOT NULL,
  `is_remind` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `is_refund` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `person_num` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `table_id` int(10) unsigned NOT NULL DEFAULT '0',
  `table_cid` int(10) unsigned NOT NULL DEFAULT '0',
  `reserve_type` varchar(10) NOT NULL,
  `reserve_time` varchar(30) NOT NULL,
  `transaction_id` varchar(60) NOT NULL COMMENT '第三方支付交易号',
  `box_price` varchar(10) NOT NULL DEFAULT '0',
  `deliveryingtime` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryinstoretime` int(10) unsigned NOT NULL DEFAULT '0',
  `deliverysuccesstime` int(10) unsigned NOT NULL DEFAULT '0',
  `serial_sn` int(10) unsigned NOT NULL DEFAULT '1',
  `handletime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `out_trade_no` varchar(50) NOT NULL,
  `store_final_fee` varchar(10) NOT NULL DEFAULT '0',
  `store_discount_fee` varchar(10) NOT NULL DEFAULT '0',
  `plateform_discount_fee` varchar(10) NOT NULL DEFAULT '0',
  `plateform_serve_rate` varchar(10) NOT NULL DEFAULT '0',
  `plateform_serve_fee` varchar(10) NOT NULL DEFAULT '0',
  `plateform_delivery_fee` varchar(10) NOT NULL DEFAULT '0',
  `plateform_deliveryer_fee` varchar(10) NOT NULL DEFAULT '0',
  `refund_fee` varchar(10) NOT NULL DEFAULT '0',
  `stat_year` smallint(10) unsigned NOT NULL DEFAULT '0',
  `stat_month` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_day` int(10) unsigned NOT NULL DEFAULT '0',
  `order_channel` varchar(20) NOT NULL DEFAULT 'wap',
  `mall_first_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `plateform_serve` varchar(500) NOT NULL,
  `deductcredit2` decimal(10,2) unsigned NOT NULL,
  `is_timeout` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `agent_serve` varchar(500) NOT NULL,
  `agent_final_fee` varchar(10) NOT NULL DEFAULT '0',
  `agent_serve_fee` varchar(10) NOT NULL DEFAULT '0',
  `agent_discount_fee` varchar(10) NOT NULL DEFAULT '0',
  `spread1` int(10) unsigned NOT NULL DEFAULT '0',
  `spread2` int(10) unsigned NOT NULL DEFAULT '0',
  `clerk_notify_collect_time` int(10) NOT NULL DEFAULT '0',
  `distance` varchar(20) NOT NULL DEFAULT '0.00',
  `last_notify_deliveryer_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_notify_clerk_time` int(10) unsigned NOT NULL DEFAULT '0',
  `notify_deliveryer_total` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `notify_clerk_total` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `elemeOrderId` varchar(60) NOT NULL,
  `elemeDowngraded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `eleme_store_final_fee` varchar(10) NOT NULL DEFAULT '0.00',
  `order_plateform` varchar(20) NOT NULL DEFAULT 'we7_wmall',
  `spreadbalance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `meituanOrderId` varchar(50) NOT NULL DEFAULT '0',
  `meituan_store_final_fee` varchar(10) NOT NULL DEFAULT '0.00',
  `delivery_takegoods_time` int(10) NOT NULL DEFAULT '0',
  `extra_fee` varchar(20) NOT NULL DEFAULT '0.00',
  `is_delete` tinyint(3) NOT NULL DEFAULT '0',
  `print_sn` varchar(100) NOT NULL DEFAULT '0',
  `stat_week` tinyint(3) unsigned NOT NULL,
  `meals_cn` varchar(10) NOT NULL,
  `delivery_collect_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `transfer_deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `transfer_delivery_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `print_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `deliverytime` int(10) unsigned NOT NULL DEFAULT '0',
  `is_reserve` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dispatch_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reserve_notify_clerk_starttime` int(10) NOT NULL DEFAULT '0',
  `pindan_id` int(10) unsigned NOT NULL DEFAULT '0',
  `zhunshibao_price` varchar(20) NOT NULL DEFAULT '0',
  `zhunshibao_compensate` varchar(20) NOT NULL DEFAULT '0',
  `zhunshibao_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_sid` (`uniacid`,`sid`) USING BTREE,
  KEY `delivery_status` (`delivery_status`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `delivery_type` (`delivery_type`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `order_type` (`order_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `refund_status` (`refund_status`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `paytime` (`paytime`) USING BTREE,
  KEY `endtime` (`endtime`) USING BTREE,
  KEY `pay_type` (`pay_type`) USING BTREE,
  KEY `stat_year` (`stat_year`) USING BTREE,
  KEY `stat_month` (`stat_month`) USING BTREE,
  KEY `stat_day` (`stat_day`) USING BTREE,
  KEY `is_pay` (`is_pay`) USING BTREE,
  KEY `deliveryer_id` (`deliveryer_id`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `clerk_notify_collect_time` (`clerk_notify_collect_time`) USING BTREE,
  KEY `handletime` (`handletime`) USING BTREE,
  KEY `elemeOrderId` (`elemeOrderId`) USING BTREE,
  KEY `order_plateform` (`order_plateform`) USING BTREE,
  KEY `elemeDowngraded` (`elemeDowngraded`) USING BTREE,
  KEY `spread1` (`spread1`) USING BTREE,
  KEY `spread2` (`spread2`) USING BTREE,
  KEY `spreadbalance` (`spreadbalance`) USING BTREE,
  KEY `meituanOrderId` (`meituanOrderId`) USING BTREE,
  KEY `order_channel` (`order_channel`) USING BTREE,
  KEY `print_sn` (`print_sn`) USING BTREE,
  KEY `print_nums` (`print_nums`) USING BTREE,
  KEY `delivery_collect_type` (`delivery_collect_type`) USING BTREE,
  KEY `transfer_deliveryer_id` (`delivery_collect_type`) USING BTREE,
  KEY `transfer_delivery_status` (`delivery_collect_type`) USING BTREE,
  KEY `stat_week` (`stat_week`) USING BTREE,
  KEY `meals_cn` (`meals_cn`) USING BTREE,
  KEY `is_remind` (`is_remind`) USING BTREE,
  KEY `uniacid_printstatus_addtime` (`uniacid`,`print_status`,`addtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order` */

/*Table structure for table `ims_tiny_wmall_order_cart` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_cart`;

CREATE TABLE `ims_tiny_wmall_order_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL,
  `original_price` varchar(10) NOT NULL DEFAULT '0.00',
  `data` text NOT NULL,
  `original_data` text NOT NULL,
  `bargain_use_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `box_price` varchar(10) NOT NULL DEFAULT '0',
  `is_buysvip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pindan_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pindan_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `uniacid_sid_uid` (`uniacid`,`sid`,`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9334 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order_cart` */

/*Table structure for table `ims_tiny_wmall_order_comment` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_comment`;

CREATE TABLE `ims_tiny_wmall_order_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `goods_quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delivery_service` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  `data` varchar(1000) NOT NULL,
  `thumbs` varchar(3000) NOT NULL,
  `reply` varchar(500) NOT NULL,
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `is_share` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `taste_score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `package_score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deliveryer_tag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `oid` (`oid`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `delivery_service` (`delivery_service`) USING BTREE,
  KEY `deliveryer_id` (`deliveryer_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order_comment` */

/*Table structure for table `ims_tiny_wmall_order_discount` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_discount`;

CREATE TABLE `ims_tiny_wmall_order_discount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `note` varchar(50) NOT NULL,
  `fee` varchar(20) NOT NULL DEFAULT '0.00',
  `store_discount_fee` varchar(10) NOT NULL DEFAULT '0',
  `plateform_discount_fee` varchar(10) NOT NULL DEFAULT '0',
  `agent_discount_fee` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `oid` (`oid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4151 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order_discount` */

/*Table structure for table `ims_tiny_wmall_order_grant` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_grant`;

CREATE TABLE `ims_tiny_wmall_order_grant` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `max` int(10) unsigned NOT NULL DEFAULT '0',
  `continuous` int(10) unsigned NOT NULL DEFAULT '0',
  `sum` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `continuous` (`continuous`) USING BTREE,
  KEY `sum` (`sum`) USING BTREE,
  KEY `updatetime` (`updatetime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_tiny_wmall_order_grant` */

/*Table structure for table `ims_tiny_wmall_order_grant_record` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_grant_record`;

CREATE TABLE `ims_tiny_wmall_order_grant_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `grant` decimal(10,2) unsigned NOT NULL,
  `credittype` varchar(20) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_month` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `mark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `times` (`days`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order_grant_record` */

/*Table structure for table `ims_tiny_wmall_order_peerpay` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_peerpay`;

CREATE TABLE `ims_tiny_wmall_order_peerpay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `plid` int(10) unsigned NOT NULL DEFAULT '0',
  `orderid` int(11) NOT NULL DEFAULT '0',
  `peerpay_type` tinyint(1) NOT NULL DEFAULT '0',
  `peerpay_price` decimal(10,2) NOT NULL,
  `peerpay_maxprice` decimal(10,2) NOT NULL,
  `peerpay_realprice` decimal(10,2) NOT NULL,
  `peerpay_selfpay` decimal(10,2) NOT NULL,
  `peerpay_message` varchar(500) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `data` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `orderid` (`orderid`) USING BTREE,
  KEY `plid` (`plid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order_peerpay` */

/*Table structure for table `ims_tiny_wmall_order_peerpay_payinfo` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_peerpay_payinfo`;

CREATE TABLE `ims_tiny_wmall_order_peerpay_payinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `order_sn` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `uname` varchar(255) NOT NULL DEFAULT '',
  `usay` varchar(500) NOT NULL DEFAULT '',
  `final_fee` decimal(10,2) NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `headimg` varchar(255) DEFAULT NULL,
  `refundstatus` tinyint(1) NOT NULL DEFAULT '0',
  `refundprice` decimal(10,2) NOT NULL,
  `openid` varchar(255) NOT NULL DEFAULT '',
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE,
  KEY `order_sn` (`order_sn`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order_peerpay_payinfo` */

/*Table structure for table `ims_tiny_wmall_order_refund` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_refund`;

CREATE TABLE `ims_tiny_wmall_order_refund` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_sn` varchar(50) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `pay_type` varchar(15) NOT NULL,
  `fee` varchar(10) NOT NULL DEFAULT '0',
  `out_trade_no` varchar(60) NOT NULL DEFAULT '0',
  `out_refund_no` varchar(50) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `apply_time` int(10) unsigned NOT NULL DEFAULT '0',
  `handle_time` int(10) unsigned NOT NULL DEFAULT '0',
  `success_time` int(10) unsigned NOT NULL DEFAULT '0',
  `channel` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `order_channel` varchar(20) NOT NULL DEFAULT 'wap',
  `data` text NOT NULL,
  `total_fee` varchar(10) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'order',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order_refund` */

/*Table structure for table `ims_tiny_wmall_order_refund_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_refund_log`;

CREATE TABLE `ims_tiny_wmall_order_refund_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_type` varchar(20) NOT NULL DEFAULT 'order',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `note` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `oid` (`oid`) USING BTREE,
  KEY `refund_id` (`uniacid`,`refund_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order_refund_log` */

/*Table structure for table `ims_tiny_wmall_order_remind_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_remind_log`;

CREATE TABLE `ims_tiny_wmall_order_remind_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `remindid` varchar(50) NOT NULL DEFAULT '0',
  `channel` varchar(15) NOT NULL DEFAULT 'system',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reply` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `oid` (`oid`) USING BTREE,
  KEY `remindid` (`remindid`) USING BTREE,
  KEY `channel` (`channel`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order_remind_log` */

/*Table structure for table `ims_tiny_wmall_order_stat` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_stat`;

CREATE TABLE `ims_tiny_wmall_order_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_cid` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_num` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_discount_num` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_title` varchar(30) NOT NULL,
  `goods_unit_price` varchar(10) NOT NULL,
  `goods_price` decimal(10,2) unsigned NOT NULL,
  `goods_original_price` decimal(10,2) unsigned NOT NULL,
  `bargain_id` int(10) unsigned NOT NULL DEFAULT '0',
  `total_update_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `print_label` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `goods_category_title` varchar(20) NOT NULL,
  `stat_year` smallint(10) unsigned NOT NULL DEFAULT '0',
  `stat_month` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_week` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_day` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_number` varchar(30) NOT NULL,
  `order_plateform` varchar(20) NOT NULL DEFAULT 'we7_wmall',
  `goods_type` varchar(10) NOT NULL DEFAULT 'normal',
  `data` varchar(1000) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `bargain_id` (`bargain_id`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `oid` (`oid`) USING BTREE,
  KEY `order_plateform` (`order_plateform`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7412 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order_stat` */

/*Table structure for table `ims_tiny_wmall_order_status_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_order_status_log`;

CREATE TABLE `ims_tiny_wmall_order_status_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `note` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `role` varchar(30) NOT NULL,
  `role_cn` varchar(50) NOT NULL,
  `hash` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `hash` (`hash`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `oid` (`oid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=891 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_order_status_log` */

/*Table structure for table `ims_tiny_wmall_paybill_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_paybill_order`;

CREATE TABLE `ims_tiny_wmall_paybill_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `serial_sn` int(10) unsigned NOT NULL DEFAULT '0',
  `order_sn` varchar(50) NOT NULL,
  `pay_type` varchar(15) NOT NULL,
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `total_fee` varchar(10) NOT NULL DEFAULT '0.00',
  `no_discount_part` varchar(10) NOT NULL DEFAULT '0.00',
  `discount_fee` varchar(20) NOT NULL DEFAULT '0.00',
  `final_fee` varchar(20) NOT NULL DEFAULT '0.00',
  `plateform_serve_fee` varchar(10) NOT NULL DEFAULT '0.00',
  `plateform_serve` varchar(1000) NOT NULL,
  `store_final_fee` varchar(10) NOT NULL DEFAULT '0',
  `out_trade_no` varchar(50) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `stat_year` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_month` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_day` int(10) unsigned NOT NULL DEFAULT '0',
  `agent_serve_fee` varchar(10) NOT NULL DEFAULT '0.00',
  `agent_serve` varchar(1000) NOT NULL,
  `agent_final_fee` varchar(10) DEFAULT '0.00',
  `note` varchar(200) NOT NULL,
  `table_sn` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `stat_year` (`stat_year`) USING BTREE,
  KEY `stat_month` (`stat_month`) USING BTREE,
  KEY `stat_day` (`stat_day`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `paytime` (`paytime`) USING BTREE,
  KEY `is_pay` (`is_pay`) USING BTREE,
  KEY `pay_type` (`pay_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_paybill_order` */

/*Table structure for table `ims_tiny_wmall_paylog` */

DROP TABLE IF EXISTS `ims_tiny_wmall_paylog`;

CREATE TABLE `ims_tiny_wmall_paylog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_type` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `out_trade_order_id` varchar(50) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `data` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `order_sn` (`order_sn`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_paylog` */

/*Table structure for table `ims_tiny_wmall_perm_account` */

DROP TABLE IF EXISTS `ims_tiny_wmall_perm_account`;

CREATE TABLE `ims_tiny_wmall_perm_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `plugins` text,
  `max_store` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_perm_account` */

/*Table structure for table `ims_tiny_wmall_perm_role` */

DROP TABLE IF EXISTS `ims_tiny_wmall_perm_role`;

CREATE TABLE `ims_tiny_wmall_perm_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `rolename` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `perms` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_perm_role` */

/*Table structure for table `ims_tiny_wmall_perm_user` */

DROP TABLE IF EXISTS `ims_tiny_wmall_perm_user`;

CREATE TABLE `ims_tiny_wmall_perm_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `roleid` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `perms` text NOT NULL,
  `realname` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `roleid` (`roleid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_perm_user` */

/*Table structure for table `ims_tiny_wmall_pintuan_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_pintuan_category`;

CREATE TABLE `ims_tiny_wmall_pintuan_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_agentid` (`uniacid`,`agentid`) USING BTREE,
  KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_pintuan_category` */

/*Table structure for table `ims_tiny_wmall_pintuan_goods` */

DROP TABLE IF EXISTS `ims_tiny_wmall_pintuan_goods`;

CREATE TABLE `ims_tiny_wmall_pintuan_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `detail` text,
  `price` decimal(10,2) NOT NULL,
  `aloneprice` decimal(10,2) NOT NULL,
  `oldprice` decimal(10,2) NOT NULL,
  `peoplenum` int(10) unsigned NOT NULL DEFAULT '0',
  `grouptime` decimal(10,2) NOT NULL,
  `specstatus` int(10) unsigned NOT NULL DEFAULT '0',
  `specdetail` text,
  `cateid` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` text,
  `total` int(10) NOT NULL DEFAULT '0',
  `sailed` int(10) unsigned NOT NULL DEFAULT '0',
  `falesailed` int(10) unsigned NOT NULL DEFAULT '0',
  `falselooknum` int(10) unsigned NOT NULL DEFAULT '0',
  `falsesharenum` int(10) unsigned NOT NULL DEFAULT '0',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `buylimit` int(10) unsigned NOT NULL DEFAULT '0',
  `unit` varchar(32) NOT NULL,
  `thumbs` text,
  `share` varchar(2000) NOT NULL,
  `usetype` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `looknum` int(10) unsigned NOT NULL DEFAULT '0',
  `sharenum` int(10) unsigned NOT NULL DEFAULT '0',
  `total_update_type` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`) USING BTREE,
  KEY `uniacid_agentid_cateid_status` (`uniacid`,`agentid`,`cateid`,`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_pintuan_goods` */

/*Table structure for table `ims_tiny_wmall_plugin` */

DROP TABLE IF EXISTS `ims_tiny_wmall_plugin`;

CREATE TABLE `ims_tiny_wmall_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL,
  `thumb` varchar(255) DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `ability` varchar(255) NOT NULL,
  `status` int(10) DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=542 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_plugin` */

insert  into `ims_tiny_wmall_plugin`(`id`,`name`,`type`,`title`,`thumb`,`version`,`ability`,`status`,`displayorder`,`is_show`) values (1,'errander','biz','LL跑腿','../addons/we7_wmall/static/img/plugin/errander.png','','随意购,帮人取,帮人送，实现足不出户购买一切你想购买，跑腿功能一网打尽',1,0,1),(2,'deliveryCard','biz','配送会员卡','../addons/we7_wmall/static/img/plugin/deliveryCard.png','','配送会员卡',1,0,1),(3,'customerApp','tool','顾客端APP','../addons/we7_wmall/static/img/plugin/customerApp.png','','顾客端APP',1,0,1),(4,'bargain','activity','天天特价','../addons/we7_wmall/static/img/plugin/bargain.png','','天天特价',1,0,1),(5,'shareRedpacket','activity','分享有礼','../addons/we7_wmall/static/img/plugin/shareRedpacket.png','','分享订单，赠送余额或积分！！！！！！',1,0,1),(6,'freeLunch','activity','霸王餐','../addons/we7_wmall/static/img/plugin/freeLunch.png','','霸王餐',1,0,1),(7,'diypage','biz','平台装修','../addons/we7_wmall/static/img/plugin/diypage.png','','可自定义底部菜单，设置订单弹幕，自定义活动页面等',1,0,1),(8,'deliveryerApp','tool','配送员APP','../addons/we7_wmall/static/img/plugin/deliveryerApp.png','','可在手机上接单 顾客可实时查看配送员位置',1,0,1),(9,'ordergrant','activity','下单有礼','../addons/we7_wmall/static/img/plugin/ordergrant.png','','下单给顾客送积分或余额',1,0,1),(10,'creditshop','activity','积分商城','../addons/we7_wmall/static/img/plugin/creditshop.png','','积分兑换好礼活动利器',1,0,1),(11,'test','biz','LL外卖','../addons/we7_wmall/static/img/plugin/test.png','','费用支付，测试功能， 不要购买',1,0,0),(12,'qianfanApp','tool','千帆APP整合','../addons/we7_wmall/static/img/plugin/qianfanApp.png','','千帆APP整合',1,0,1),(13,'majiaApp','tool','马甲APP整合','../addons/we7_wmall/static/img/plugin/majiaApp.png','','马甲APP整合',1,0,1),(14,'managerApp','tool','商户APP','../addons/we7_wmall/static/img/plugin/managerApp.png','','商户APP',1,0,1),(15,'superRedpacket','activity','超级红包','../addons/we7_wmall/static/img/plugin/superRedpacket.png','','超级红包可实现主动发送和分享红包功能！！！！！！',1,0,1),(16,'eleme','biz','饿了么平台对接','../addons/we7_wmall/static/img/plugin/eleme.png','','拉取饿了么商户商品信息，对接饿了么订单进行配送',1,0,1),(17,'spread','biz','LL推广','../addons/we7_wmall/static/img/plugin/spread.png','','LL推广',1,0,1),(18,'meituan','biz','美团平台对接','../addons/we7_wmall/static/img/plugin/meituan.png','','美团平台对接',1,0,1),(19,'wxapp','biz','LL外卖小程序','../addons/we7_wmall/static/img/plugin/wxapp.png','','LL外卖小程序，小程序将对页面UI就行优化改进，客户体验更好。',1,0,1),(20,'poster','activity','活动海报','../addons/we7_wmall/static/img/plugin/poster.png','','活动海报',1,0,1),(21,'agent','biz','区域代理','../addons/we7_wmall/static/img/plugin/agent.png','','区域代理,平台可发展其他区域进行代理,建议有发展代理能力的平台购买 ! ',1,0,1),(22,'dada','biz','达达开放平台对接','../addons/we7_wmall/static/img/plugin/dada.png','','达达开放平台对接',1,0,1),(23,'lewaimai','biz','乐外卖采集','../addons/we7_wmall/static/img/plugin/lewaimai.png','','可采集乐外卖的商家和商品图片',1,0,1),(24,'advertise','biz','商户广告通','../addons/we7_wmall/static/img/plugin/advertise.png','','商户自行购买为你优选，置顶，幻灯片广告位',1,0,1),(25,'mealRedpacket','activity','套餐红包','../addons/we7_wmall/static/img/plugin/mealRedpacket.png','','套餐红包',1,0,1),(26,'superCoupon','activity','超级代金券','../addons/we7_wmall/static/img/plugin/superCoupon.png','','超级代金券可实现商户针对不同的人群发送代金券',1,0,1),(27,'cloudGoods','biz','云商品库','../addons/we7_wmall/static/img/plugin/cloudGoods.png','','总平台可以维护一个商品库， 商户在添加商品的时候，可以直接从商品库中选择商品',1,0,1),(28,'wheel','activity','大转盘','../addons/we7_wmall/static/img/plugin/wheel.png','','顾客在订单支付后，可以直接跳转到抽奖页面进行抽奖',1,0,1),(29,'storebd','biz','店铺业务员','../addons/we7_wmall/static/img/plugin/storebd.png','','店铺业务员',1,0,1),(30,'wxapp_manager','biz','商户管理小程序','../addons/we7_wmall/static/img/plugin/wxapp_manager.png','','商户管理小程序',1,0,0),(31,'uupaotui','biz','UU跑腿对接','../addons/we7_wmall/static/img/plugin/uupaotui.png','','可将本平台的订单推送到达达，由达达的配送员进行配送',1,0,1),(32,'plateformApp','tool','平台管理APP','../addons/we7_wmall/static/img/plugin/plateformApp.png','','平台管理APP',1,0,1),(33,'gohome','biz','LL生活圈','../addons/we7_wmall/static/img/plugin/gohome.png','','LL生活圈',1,0,1),(34,'svip','activity','超级会员svip','../addons/we7_wmall/static/img/plugin/svip.png','','超级SVIP',1,0,1),(35,'plugincenter','biz','应用授权管理','../addons/we7_wmall/static/img/plugin/plugincenter.jpg','','应用授权管理，是为LL外卖用户提供的，便于向您的客户销售外卖插件授权的功能。它可为您简化插件授权销售流程，操作便捷为您省心。',1,0,0),(36,'area','biz','指定区域','../addons/we7_wmall/static/img/plugin/area.png','','指定区域',1,0,1),(37,'zhunshibao','biz','准时宝','../addons/we7_wmall/static/img/plugin/zhunshibao.png','','准时宝',1,0,1),(40,'huangou','biz','超值换购','../addons/we7_wmall/static/img/plugin/huangou.png','','超值换购',1,0,1);

/*Table structure for table `ims_tiny_wmall_plugincenter_grant_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_plugincenter_grant_log`;

CREATE TABLE `ims_tiny_wmall_plugincenter_grant_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `pluginname` varchar(50) NOT NULL,
  `pluginid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned DEFAULT '0',
  `month` int(10) NOT NULL DEFAULT '0',
  `starttime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `type` varchar(15) NOT NULL DEFAULT 'system',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_plugincenter_grant_log` */

/*Table structure for table `ims_tiny_wmall_plugincenter_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_plugincenter_order`;

CREATE TABLE `ims_tiny_wmall_plugincenter_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL,
  `pluginid` varchar(255) NOT NULL,
  `pluginname` varchar(500) NOT NULL,
  `final_fee` varchar(20) NOT NULL,
  `month` tinyint(10) NOT NULL,
  `data` varchar(1000) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) NOT NULL DEFAULT '0',
  `order_sn` varchar(50) NOT NULL,
  `pay_type` varchar(20) NOT NULL,
  `is_pay` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`username`) USING BTREE,
  KEY `status` (`paytime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_plugincenter_order` */

/*Table structure for table `ims_tiny_wmall_plugincenter_package` */

DROP TABLE IF EXISTS `ims_tiny_wmall_plugincenter_package`;

CREATE TABLE `ims_tiny_wmall_plugincenter_package` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `pluginid` varchar(255) NOT NULL,
  `pluginname` varchar(500) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sailed` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `data` text,
  `addtime` varchar(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_plugincenter_package` */

/*Table structure for table `ims_tiny_wmall_plugincenter_plugin` */

DROP TABLE IF EXISTS `ims_tiny_wmall_plugincenter_plugin`;

CREATE TABLE `ims_tiny_wmall_plugincenter_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `pluginid` int(10) unsigned NOT NULL DEFAULT '0',
  `pluginname` varchar(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `sailed` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `plugintype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text,
  `addtime` varchar(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `pluginid` (`pluginid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `displayorder` (`displayorder`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_plugincenter_plugin` */

/*Table structure for table `ims_tiny_wmall_plugincenter_slide` */

DROP TABLE IF EXISTS `ims_tiny_wmall_plugincenter_slide`;

CREATE TABLE `ims_tiny_wmall_plugincenter_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_plugincenter_slide` */

/*Table structure for table `ims_tiny_wmall_printer` */

DROP TABLE IF EXISTS `ims_tiny_wmall_printer`;

CREATE TABLE `ims_tiny_wmall_printer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'feie',
  `print_no` varchar(30) NOT NULL,
  `member_code` varchar(50) NOT NULL COMMENT '飞蛾打印机机器号',
  `key` varchar(50) NOT NULL,
  `print_nums` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `qrcode_link` varchar(100) NOT NULL,
  `print_header` varchar(50) NOT NULL,
  `print_footer` varchar(50) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `api_key` varchar(100) NOT NULL,
  `print_label` varchar(50) NOT NULL,
  `is_print_all` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `qrcode_type` varchar(20) NOT NULL DEFAULT 'custom',
  `data` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_printer` */

/*Table structure for table `ims_tiny_wmall_printer_label` */

DROP TABLE IF EXISTS `ims_tiny_wmall_printer_label`;

CREATE TABLE `ims_tiny_wmall_printer_label` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_printer_label` */

/*Table structure for table `ims_tiny_wmall_reply` */

DROP TABLE IF EXISTS `ims_tiny_wmall_reply`;

CREATE TABLE `ims_tiny_wmall_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `table_id` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_reply` */

/*Table structure for table `ims_tiny_wmall_report` */

DROP TABLE IF EXISTS `ims_tiny_wmall_report`;

CREATE TABLE `ims_tiny_wmall_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `thumbs` varchar(2000) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_report` */

/*Table structure for table `ims_tiny_wmall_reserve` */

DROP TABLE IF EXISTS `ims_tiny_wmall_reserve`;

CREATE TABLE `ims_tiny_wmall_reserve` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `time` varchar(15) NOT NULL,
  `table_cid` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=339 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_reserve` */

/*Table structure for table `ims_tiny_wmall_seckill_goods` */

DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_goods`;

CREATE TABLE `ims_tiny_wmall_seckill_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `price` varchar(10) NOT NULL,
  `oldprice` varchar(10) NOT NULL,
  `total` int(10) NOT NULL DEFAULT '0',
  `sailed` int(10) unsigned NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumbs` varchar(1000) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `content` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `buy_note` text NOT NULL,
  `share` varchar(2000) NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL,
  `use_limit_day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `falsejoinnum` int(10) unsigned NOT NULL DEFAULT '0',
  `falselooknum` int(10) unsigned NOT NULL DEFAULT '0',
  `falsesharenum` int(10) unsigned NOT NULL DEFAULT '0',
  `looknum` int(10) unsigned NOT NULL DEFAULT '0',
  `sharenum` int(10) unsigned DEFAULT '0',
  `total_update_type` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `displayorder` (`displayorder`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_seckill_goods` */

/*Table structure for table `ims_tiny_wmall_seckill_goods_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_goods_category`;

CREATE TABLE `ims_tiny_wmall_seckill_goods_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(10) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_seckill_goods_category` */

/*Table structure for table `ims_tiny_wmall_seckill_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_order`;

CREATE TABLE `ims_tiny_wmall_seckill_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(60) NOT NULL,
  `order_channel` varchar(20) NOT NULL DEFAULT 'wap',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` varchar(20) NOT NULL,
  `goods_num` int(10) unsigned NOT NULL DEFAULT '0',
  `order_sn` varchar(50) NOT NULL,
  `final_fee` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `pay_type` varchar(20) NOT NULL,
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL,
  `data` text NOT NULL,
  `out_trade_no` varchar(50) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `refund_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `refund_out_no` varchar(40) NOT NULL,
  `refund_apply_time` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_success_time` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_channel` varchar(30) NOT NULL,
  `refund_account` varchar(30) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_seckill_order` */

/*Table structure for table `ims_tiny_wmall_seckill_slide` */

DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_slide`;

CREATE TABLE `ims_tiny_wmall_seckill_slide` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `taskid` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `taskid` (`taskid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_seckill_slide` */

/*Table structure for table `ims_tiny_wmall_seckill_task` */

DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_task`;

CREATE TABLE `ims_tiny_wmall_seckill_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `times` varchar(255) NOT NULL,
  `share` varchar(1000) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_seckill_task` */

/*Table structure for table `ims_tiny_wmall_seckill_task_goods` */

DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_task_goods`;

CREATE TABLE `ims_tiny_wmall_seckill_task_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `task_id` int(10) unsigned NOT NULL DEFAULT '0',
  `room_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `discount_price` varchar(10) NOT NULL DEFAULT '0',
  `max_buy_limit` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `discount_total` int(10) NOT NULL DEFAULT '-1',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `task_id` (`task_id`) USING BTREE,
  KEY `room_id` (`room_id`) USING BTREE,
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_seckill_task_goods` */

/*Table structure for table `ims_tiny_wmall_seckill_task_time` */

DROP TABLE IF EXISTS `ims_tiny_wmall_seckill_task_time`;

CREATE TABLE `ims_tiny_wmall_seckill_task_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `taskid` int(10) unsigned NOT NULL DEFAULT '0',
  `time` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=538 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_seckill_task_time` */

/*Table structure for table `ims_tiny_wmall_shareredpacket` */

DROP TABLE IF EXISTS `ims_tiny_wmall_shareredpacket`;

CREATE TABLE `ims_tiny_wmall_shareredpacket` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `share_redpacket_condition` decimal(10,2) unsigned NOT NULL,
  `share_redpacket_min` decimal(10,2) unsigned NOT NULL,
  `share_redpacket_max` decimal(10,2) unsigned NOT NULL,
  `share_redpacket_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `follow_redpacket_min` decimal(10,2) unsigned NOT NULL,
  `follow_redpacket_max` decimal(10,2) unsigned NOT NULL,
  `follow_redpacket_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `share` varchar(3000) NOT NULL,
  `agreement` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_shareredpacket` */

/*Table structure for table `ims_tiny_wmall_shareredpacket_invite_record` */

DROP TABLE IF EXISTS `ims_tiny_wmall_shareredpacket_invite_record`;

CREATE TABLE `ims_tiny_wmall_shareredpacket_invite_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `activity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `share_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `follow_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `share_redpacket_condition` decimal(10,2) unsigned NOT NULL,
  `share_redpacket_discount` decimal(10,2) unsigned NOT NULL,
  `share_redpacket_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `follow_redpacket_condition` decimal(10,2) unsigned NOT NULL,
  `follow_redpacket_discount` decimal(10,2) unsigned NOT NULL,
  `follow_redpacket_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `activity_id` (`activity_id`) USING BTREE,
  KEY `share_uid` (`share_uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_tiny_wmall_shareredpacket_invite_record` */

/*Table structure for table `ims_tiny_wmall_slide` */

DROP TABLE IF EXISTS `ims_tiny_wmall_slide`;

CREATE TABLE `ims_tiny_wmall_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'homeTop',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `wxapp_link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=234 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_slide` */

/*Table structure for table `ims_tiny_wmall_spread_current_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_spread_current_log`;

CREATE TABLE `ims_tiny_wmall_spread_current_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `spreadid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  `order_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `spreadid` (`spreadid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_spread_current_log` */

/*Table structure for table `ims_tiny_wmall_spread_getcash_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_spread_getcash_log`;

CREATE TABLE `ims_tiny_wmall_spread_getcash_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `spreadid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(20) NOT NULL,
  `get_fee` decimal(10,2) unsigned NOT NULL,
  `take_fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `channel` varchar(20) NOT NULL DEFAULT 'wechat',
  `account` varchar(500) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `channel_from` varchar(10) NOT NULL DEFAULT 'weixin',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `spreadid` (`spreadid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_spread_getcash_log` */

/*Table structure for table `ims_tiny_wmall_spread_groups` */

DROP TABLE IF EXISTS `ims_tiny_wmall_spread_groups`;

CREATE TABLE `ims_tiny_wmall_spread_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL DEFAULT '',
  `commission1` varchar(20) NOT NULL DEFAULT '0',
  `commission2` varchar(20) NOT NULL DEFAULT '0',
  `group_condition` int(10) unsigned NOT NULL DEFAULT '0',
  `commission_type` varchar(10) NOT NULL DEFAULT 'ratio',
  `become_child_limit` tinyint(3) unsigned NOT NULL,
  `valid_period` varchar(10) NOT NULL,
  `admin_update_rules` varchar(10) NOT NULL,
  `takeout_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `paotui_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gohome_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` varchar(3000) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_spread_groups` */

/*Table structure for table `ims_tiny_wmall_store` */

DROP TABLE IF EXISTS `ims_tiny_wmall_store`;

CREATE TABLE `ims_tiny_wmall_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` varchar(50) NOT NULL,
  `title` varchar(30) NOT NULL,
  `title_th` varchar(30) NOT NULL DEFAULT '' COMMENT '泰语标题',
  `logo` varchar(100) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `business_hours` varchar(200) NOT NULL,
  `is_in_business` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `description_th` text COMMENT '泰语内容',
  `send_price` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delivery_price` varchar(255) NOT NULL DEFAULT '0',
  `delivery_free_price` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `delivery_time` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:商家配送,2:到店自提,3:两种都支持',
  `delivery_type_023wx` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_type_mine` int(10) NOT NULL,
  `delivery_within_days` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delivery_reserve_days` tinyint(3) unsigned DEFAULT '0',
  `serve_radius` varchar(30) NOT NULL DEFAULT '0.00',
  `serve_fee` varchar(255) NOT NULL,
  `delivery_area` varchar(50) NOT NULL,
  `delivery_area_th` varchar(50) NOT NULL DEFAULT '' COMMENT '配送区域',
  `thumbs` varchar(1000) NOT NULL,
  `address` varchar(50) NOT NULL,
  `address_th` varchar(50) NOT NULL DEFAULT '' COMMENT '泰语地址',
  `location_x` varchar(15) NOT NULL,
  `location_y` varchar(15) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sns` varchar(255) NOT NULL,
  `notice` varchar(100) NOT NULL COMMENT '公告',
  `notice_th` varchar(100) NOT NULL DEFAULT '' COMMENT '泰语公告',
  `tips` varchar(100) NOT NULL,
  `tips_th` varchar(100) NOT NULL DEFAULT '' COMMENT '泰语提示',
  `content` varchar(255) NOT NULL,
  `content_th` varchar(255) NOT NULL DEFAULT '' COMMENT '泰语内容',
  `payment` varchar(255) NOT NULL,
  `invoice_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `token_status` tinyint(3) unsigned DEFAULT '0',
  `remind_time_limit` tinyint(3) unsigned NOT NULL DEFAULT '10',
  `remind_reply` varchar(1500) NOT NULL,
  `remind_reply_th` text COMMENT '泰语关注回复',
  `comment_reply` varchar(2000) NOT NULL,
  `comment_reply_th` text COMMENT '泰语评论回复',
  `sailed` int(10) unsigned NOT NULL DEFAULT '0',
  `score` varchar(10) NOT NULL,
  `first_order_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `discount_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grant_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bargain_price_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reserve_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `collect_coupon_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grant_coupon_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论审核.1:直接通过',
  `sms_use_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '短信使用条数',
  `wechat_qrcode` varchar(500) NOT NULL,
  `custom_url` varchar(1000) NOT NULL,
  `addtype` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:后台添加,2:申请入驻',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `template` varchar(20) NOT NULL DEFAULT 'index',
  `pc_notice_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `not_in_serve_radius` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `auto_handel_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `auto_get_address` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `auto_notice_deliveryer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `is_recommend` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_assign` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_reserve` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_meal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `forward_mode` varchar(15) NOT NULL,
  `assign_mode` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `assign_qrcode` varchar(255) NOT NULL,
  `delivery_mode` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `order_note` varchar(255) NOT NULL COMMENT '订单备注',
  `order_note_th` varchar(255) NOT NULL DEFAULT '' COMMENT '泰语订单备注',
  `delivery_fee_mode` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `delivery_times` varchar(7000) NOT NULL,
  `forward_url` varchar(100) NOT NULL,
  `qualification` varchar(1000) NOT NULL,
  `label` int(10) NOT NULL DEFAULT '0',
  `new_member_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_rest` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_stick` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delivery_areas` text NOT NULL,
  `push_token` varchar(50) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `is_paybill` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `self_audit_comment` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delivery_extra` varchar(255) NOT NULL,
  `elemeShopId` varchar(30) NOT NULL DEFAULT '0',
  `eleme_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `meituan_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `meituanShopId` varchar(30) DEFAULT '0',
  `openplateform_extra` varchar(1000) NOT NULL,
  `position` tinyint(3) NOT NULL DEFAULT '1',
  `deltime` int(10) unsigned NOT NULL DEFAULT '0',
  `remind_time_start` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `consume_per_person` int(10) unsigned NOT NULL DEFAULT '0',
  `waimai_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `haodian_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `haodian_cid` int(10) unsigned NOT NULL DEFAULT '0',
  `haodian_child_id` int(10) unsigned NOT NULL DEFAULT '0',
  `haodian_starttime` int(10) unsigned NOT NULL,
  `haodian_endtime` int(10) unsigned NOT NULL,
  `is_waimai` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_haodian` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `haodian_score` varchar(10) NOT NULL DEFAULT '0',
  `haodian_data` text NOT NULL,
  `rest_can_order` tinyint(3) NOT NULL DEFAULT '0',
  `cate_parentid1` int(10) unsigned NOT NULL,
  `cate_childid1` int(10) unsigned NOT NULL,
  `cate_parentid2` int(10) unsigned NOT NULL,
  `cate_childid2` int(10) unsigned NOT NULL,
  `delivery_areas1` text NOT NULL,
  `auto_print_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `menu` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `title` (`title`) USING BTREE,
  KEY `is_recommend` (`is_recommend`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `label` (`label`) USING BTREE,
  KEY `displayorder` (`displayorder`) USING BTREE,
  KEY `is_stick` (`is_stick`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `elemeShopId` (`elemeShopId`) USING BTREE,
  KEY `meituanShopId` (`meituanShopId`) USING BTREE,
  KEY `uniacid_id` (`uniacid`,`id`) USING BTREE,
  KEY `uniacid_agentid_status_is_waimai` (`uniacid`,`agentid`,`status`,`is_waimai`) USING BTREE,
  KEY `uniacid_agentid_status_is_haodian` (`uniacid`,`agentid`,`status`,`is_haodian`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1312 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_store` */

insert  into `ims_tiny_wmall_store`(`id`,`uniacid`,`cid`,`title`,`title_th`,`logo`,`telephone`,`business_hours`,`is_in_business`,`description`,`description_th`,`send_price`,`delivery_price`,`delivery_free_price`,`pack_price`,`delivery_time`,`delivery_type`,`delivery_type_023wx`,`delivery_type_mine`,`delivery_within_days`,`delivery_reserve_days`,`serve_radius`,`serve_fee`,`delivery_area`,`delivery_area_th`,`thumbs`,`address`,`address_th`,`location_x`,`location_y`,`status`,`displayorder`,`sns`,`notice`,`notice_th`,`tips`,`tips_th`,`content`,`content_th`,`payment`,`invoice_status`,`token_status`,`remind_time_limit`,`remind_reply`,`remind_reply_th`,`comment_reply`,`comment_reply_th`,`sailed`,`score`,`first_order_status`,`discount_status`,`grant_status`,`bargain_price_status`,`reserve_status`,`collect_coupon_status`,`grant_coupon_status`,`comment_status`,`sms_use_times`,`wechat_qrcode`,`custom_url`,`addtype`,`addtime`,`template`,`pc_notice_status`,`not_in_serve_radius`,`auto_handel_order`,`auto_get_address`,`auto_notice_deliveryer`,`click`,`is_recommend`,`is_assign`,`is_reserve`,`is_meal`,`forward_mode`,`assign_mode`,`assign_qrcode`,`delivery_mode`,`order_note`,`order_note_th`,`delivery_fee_mode`,`delivery_times`,`forward_url`,`qualification`,`label`,`new_member_status`,`is_rest`,`is_stick`,`delivery_areas`,`push_token`,`agentid`,`is_paybill`,`self_audit_comment`,`delivery_extra`,`elemeShopId`,`eleme_status`,`meituan_status`,`data`,`meituanShopId`,`openplateform_extra`,`position`,`deltime`,`remind_time_start`,`consume_per_person`,`waimai_status`,`haodian_status`,`haodian_cid`,`haodian_child_id`,`haodian_starttime`,`haodian_endtime`,`is_waimai`,`is_haodian`,`haodian_score`,`haodian_data`,`rest_can_order`,`cate_parentid1`,`cate_childid1`,`cate_parentid2`,`cate_childid2`,`delivery_areas1`,`auto_print_order`,`menu`) values (1308,1,'||','1','','','1','a:0:{}',1,'',NULL,0,'0',0,0.00,0,1,0,0,0,0,'0.00','','','','','','','','',1,0,'','','','','','1','','',0,0,10,'',NULL,'',NULL,0,'',0,0,0,0,0,0,0,1,0,'','',1,1618919341,'index',1,1,0,1,0,0,0,0,0,0,'',1,'',1,'','',1,'a:0:{}','','',0,0,1,0,'','jzG9mm4PCAroU7PPcwcuCzo4zoU2uZm9',0,0,0,'','0',0,0,'','0','',1,0,0,0,1,0,0,0,0,0,1,0,'0','',0,0,0,0,0,'',0,''),(1309,1,'||','测试门店','','images/1/2023/03/YxHP1XP989W9NX7j18TIN10mQx8771.jpg','123456','a:0:{}',1,'<p>门店特色</p>',NULL,0,'0',0,0.00,0,1,0,0,0,0,'0','a:2:{s:4:\"type\";i:1;s:3:\"fee\";s:0:\"\";}','','','','详细地址','','32.222','123.233',1,0,'a:2:{s:2:\"qq\";s:0:\"\";s:6:\"weixin\";s:0:\"\";}','','','','','门店描述','','N;',0,0,10,'a:0:{}',NULL,'N;',NULL,0,'',0,0,0,0,0,0,0,0,0,'','a:0:{}',1,1677850219,'index',1,1,0,1,0,0,0,0,0,0,'0',1,'',1,'a:0:{}','',1,'a:0:{}','','a:4:{s:8:\"business\";a:1:{s:5:\"thumb\";s:0:\"\";}s:7:\"service\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more1\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more2\";a:1:{s:5:\"thumb\";s:0:\"\";}}',0,0,1,0,'a:0:{}','pVC8DEO2rDRWVcCVBR8OOVdxvkfN7xRJ',0,0,0,'','0',0,0,'a:8:{s:7:\"reserve\";a:2:{s:18:\"reserve_time_limit\";i:0;s:28:\"notice_clerk_before_delivery\";i:0;}s:2:\"cn\";a:2:{s:9:\"box_price\";s:9:\"餐盒费\";s:8:\"pack_fee\";s:9:\"包装费\";}s:10:\"order_form\";a:1:{s:10:\"person_num\";i:0;}s:5:\"eleme\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:7:\"meituan\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:4:\"dada\";a:3:{s:6:\"shopno\";s:0:\"\";s:6:\"status\";i:0;s:8:\"citycode\";s:0:\"\";}s:8:\"uupaotui\";a:4:{s:6:\"status\";i:0;s:5:\"appid\";N;s:6:\"appkey\";N;s:6:\"openid\";N;}s:14:\"service_titles\";a:0:{}}','0','',1,0,0,0,1,0,0,0,0,0,1,0,'0','',0,0,0,0,0,'',0,''),(1310,1,'||','测试门店2','','images/1/2023/03/YxHP1XP989W9NX7j18TIN10mQx8771.jpg','ssss','a:2:{i:0;a:2:{s:1:\"s\";s:5:\"00:00\";s:1:\"e\";s:5:\"23:55\";}i:1;a:2:{s:1:\"s\";s:5:\"23:55\";s:1:\"e\";s:5:\"03:30\";}}',1,'',NULL,0,'0',0,0.00,0,1,0,0,0,0,'0','a:2:{s:4:\"type\";i:1;s:3:\"fee\";s:0:\"\";}','','','','详细地址详细地址','','24.879947','118.682447',1,0,'a:2:{s:2:\"qq\";s:0:\"\";s:6:\"weixin\";s:0:\"\";}','门店公告','','进入商品列表页提示','','门店描述','','a:1:{i:0;s:6:\"credit\";}',0,0,10,'a:0:{}',NULL,'N;',NULL,0,'',0,0,0,0,0,0,0,0,0,'','a:0:{}',1,1677851395,'index',1,1,0,1,0,0,0,0,0,0,'0',1,'',1,'a:0:{}','',1,'a:0:{}','','a:4:{s:8:\"business\";a:1:{s:5:\"thumb\";s:0:\"\";}s:7:\"service\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more1\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more2\";a:1:{s:5:\"thumb\";s:0:\"\";}}',0,0,0,0,'a:0:{}','a0NzZO4Pt8UUM6Pp4TTlTLoTPa3J04jo',0,1,0,'','0',0,0,'a:8:{s:7:\"reserve\";a:2:{s:18:\"reserve_time_limit\";i:0;s:28:\"notice_clerk_before_delivery\";i:0;}s:2:\"cn\";a:2:{s:9:\"box_price\";s:9:\"餐盒费\";s:8:\"pack_fee\";s:9:\"包装费\";}s:10:\"order_form\";a:1:{s:10:\"person_num\";i:0;}s:5:\"eleme\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:7:\"meituan\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:4:\"dada\";a:3:{s:6:\"shopno\";s:0:\"\";s:6:\"status\";i:0;s:8:\"citycode\";s:0:\"\";}s:8:\"uupaotui\";a:4:{s:6:\"status\";i:0;s:5:\"appid\";N;s:6:\"appkey\";N;s:6:\"openid\";N;}s:14:\"service_titles\";a:0:{}}','0','',1,0,0,0,1,0,0,0,0,0,1,0,'0','',0,0,0,0,0,'',0,''),(1311,1,'||','门店名称','门店名称（泰语）','images/1/2023/03/KsjCSzfmfGsssacZ0eSMjcFFjRa0J5.jpg','15888888888','a:2:{i:0;a:2:{s:1:\"s\";s:5:\"00:00\";s:1:\"e\";s:5:\"12:20\";}i:1;a:2:{s:1:\"s\";s:5:\"12:00\";s:1:\"e\";s:5:\"00:00\";}}',1,'<p>门店特色</p>','<p>门店特色泰语</p>',0,'0',0,0.00,0,1,0,0,0,0,'0','a:2:{s:4:\"type\";i:1;s:3:\"fee\";s:0:\"\";}','配送区域','配送区域（泰语）','a:1:{i:0;a:2:{s:5:\"image\";s:82:\"https://takeaway.me/attachment/images/1/2023/03/Hyz3GT9BUHV88Z93toBRGVpvOHz8O8.jpg\";s:3:\"url\";s:0:\"\";}}','详细地址','详细地址（泰语）','24.879947','118.682447',1,3,'a:2:{s:2:\"qq\";s:8:\"QQ123456\";s:6:\"weixin\";s:12:\"wechat123456\";}','公告','公告（泰语）','进入商品列表页提示','进入商品列表页提示（泰语）','门店描述','门店描述（泰语）','N;',0,0,10,'a:1:{i:0;s:21:\"自定义催单回复\";}','a:2:{i:0;s:33:\"自定义催单回复（泰语）\";i:1;s:34:\"自定义催单回复2（泰语）\";}','a:1:{i:0;s:21:\"自定义评价回复\";}','a:2:{i:0;s:33:\"自定义评价回复（泰语）\";i:1;s:34:\"自定义评价回复2（泰语）\";}',0,'',0,0,0,0,0,0,0,0,0,'','a:1:{i:0;a:4:{s:5:\"title\";s:12:\"链接文字\";s:8:\"title_th\";s:24:\"链接文字（泰语）\";s:3:\"url\";s:1:\"C\";s:10:\"wxapp_link\";s:1:\"D\";}}',1,1678111525,'index',1,1,0,1,0,0,0,0,0,0,'0',1,'',1,'a:1:{i:0;s:7:\"备注1\";}','a:1:{i:0;s:15:\"备注1(泰语)\";}',1,'a:0:{}','','a:4:{s:8:\"business\";a:1:{s:5:\"thumb\";s:0:\"\";}s:7:\"service\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more1\";a:1:{s:5:\"thumb\";s:0:\"\";}s:5:\"more2\";a:1:{s:5:\"thumb\";s:0:\"\";}}',0,0,0,0,'a:0:{}','b256064DW61jrMHzYryr005Mv52145RJ',0,1,0,'','0',0,0,'a:10:{s:7:\"reserve\";a:2:{s:18:\"reserve_time_limit\";i:0;s:28:\"notice_clerk_before_delivery\";i:0;}s:2:\"cn\";a:2:{s:9:\"box_price\";s:12:\"餐盒费名\";s:8:\"pack_fee\";s:12:\"包装费名\";}s:10:\"order_form\";a:1:{s:10:\"person_num\";i:0;}s:5:\"eleme\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:7:\"meituan\";a:1:{s:5:\"order\";a:4:{s:17:\"auto_handel_order\";i:0;s:22:\"auto_notice_deliveryer\";i:0;s:10:\"auto_print\";i:0;s:12:\"accept_order\";i:0;}}s:4:\"dada\";a:3:{s:6:\"shopno\";s:0:\"\";s:6:\"status\";i:0;s:8:\"citycode\";s:0:\"\";}s:8:\"uupaotui\";a:4:{s:6:\"status\";i:0;s:5:\"appid\";N;s:6:\"appkey\";N;s:6:\"openid\";N;}s:14:\"service_titles\";a:5:{s:7:\"takeout\";s:6:\"外卖\";s:7:\"tangshi\";s:12:\"店内点餐\";s:6:\"assign\";s:6:\"排号\";s:7:\"reserve\";s:6:\"预定\";s:7:\"paybill\";s:9:\"当面付\";}s:17:\"service_titles_th\";a:5:{s:7:\"takeout\";s:18:\"外卖（泰语）\";s:7:\"tangshi\";s:24:\"店内点餐（泰语）\";s:6:\"assign\";s:18:\"排号（泰语）\";s:7:\"reserve\";s:18:\"预定（泰语）\";s:7:\"paybill\";s:21:\"当面付（泰语）\";}s:5:\"cn_th\";a:2:{s:9:\"box_price\";s:17:\"餐盒费(泰语)\";s:8:\"pack_fee\";s:21:\"包装费（泰语）\";}}','0','',1,0,0,0,1,0,0,0,0,0,1,0,'0','',0,0,0,0,0,'',0,'');

/*Table structure for table `ims_tiny_wmall_store_account` */

DROP TABLE IF EXISTS `ims_tiny_wmall_store_account`;

CREATE TABLE `ims_tiny_wmall_store_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `fee_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `fee_rate` varchar(10) NOT NULL DEFAULT '0',
  `fee_min` int(10) unsigned NOT NULL DEFAULT '0',
  `fee_max` int(10) unsigned NOT NULL DEFAULT '0',
  `wechat` varchar(1000) NOT NULL,
  `fee_takeout` varchar(500) NOT NULL,
  `fee_instore` varchar(500) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `fee_paybill` varchar(500) NOT NULL,
  `fee_eleme` varchar(500) NOT NULL,
  `fee_meituan` varchar(500) NOT NULL,
  `fee_selfDelivery` varchar(500) NOT NULL,
  `fee_goods` varchar(10000) NOT NULL,
  `fee_period` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deposit` int(10) unsigned NOT NULL DEFAULT '0',
  `fee_gohome` varchar(1000) NOT NULL,
  `bank` varchar(1000) NOT NULL,
  `alipay` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1379 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_store_account` */

insert  into `ims_tiny_wmall_store_account`(`id`,`uniacid`,`sid`,`amount`,`fee_limit`,`fee_rate`,`fee_min`,`fee_max`,`wechat`,`fee_takeout`,`fee_instore`,`agentid`,`fee_paybill`,`fee_eleme`,`fee_meituan`,`fee_selfDelivery`,`fee_goods`,`fee_period`,`deposit`,`fee_gohome`,`bank`,`alipay`) values (1375,1,1308,'0.00',0,'',0,0,'','N;','N;',0,'N;','','','N;','',0,0,'','',''),(1376,1,1309,'0.00',0,'',0,0,'','N;','N;',0,'N;','','','N;','',0,0,'','',''),(1377,1,1310,'0.00',0,'',0,0,'','N;','N;',0,'N;','','','N;','',0,0,'','',''),(1378,1,1311,'0.00',0,'',0,0,'','N;','N;',0,'N;','','','N;','',0,0,'','','');

/*Table structure for table `ims_tiny_wmall_store_activity` */

DROP TABLE IF EXISTS `ims_tiny_wmall_store_activity`;

CREATE TABLE `ims_tiny_wmall_store_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `data` varchar(1000) NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `starttime` (`starttime`) USING BTREE,
  KEY `endtime` (`endtime`) USING BTREE,
  KEY `uniacid_agentid` (`uniacid`,`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_store_activity` */

/*Table structure for table `ims_tiny_wmall_store_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_store_category`;

CREATE TABLE `ims_tiny_wmall_store_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slide_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slide` varchar(1500) NOT NULL,
  `nav_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nav` varchar(1500) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `wxapp_link` varchar(255) NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=518 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_store_category` */

/*Table structure for table `ims_tiny_wmall_store_clerk` */

DROP TABLE IF EXISTS `ims_tiny_wmall_store_clerk`;

CREATE TABLE `ims_tiny_wmall_store_clerk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `clerk_id` int(10) unsigned NOT NULL DEFAULT '0',
  `role` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime|146|errander_deliveryerApp|9.4.1|20171121164734` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` varchar(500) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `clerk_id` (`clerk_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=477 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_store_clerk` */

/*Table structure for table `ims_tiny_wmall_store_current_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_store_current_log`;

CREATE TABLE `ims_tiny_wmall_store_current_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:订单入账, 2: 申请提现',
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `hash` (`hash`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=729 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_store_current_log` */

/*Table structure for table `ims_tiny_wmall_store_deliveryer` */

DROP TABLE IF EXISTS `ims_tiny_wmall_store_deliveryer`;

CREATE TABLE `ims_tiny_wmall_store_deliveryer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `work_status` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_tiny_wmall_store_deliveryer` */

/*Table structure for table `ims_tiny_wmall_store_favorite` */

DROP TABLE IF EXISTS `ims_tiny_wmall_store_favorite`;

CREATE TABLE `ims_tiny_wmall_store_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid_sid` (`uid`,`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=482 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_tiny_wmall_store_favorite` */

/*Table structure for table `ims_tiny_wmall_store_getcash_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_store_getcash_log`;

CREATE TABLE `ims_tiny_wmall_store_getcash_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(20) NOT NULL,
  `get_fee` decimal(10,2) unsigned NOT NULL,
  `take_fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `account` varchar(500) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '1:申请成功,2:申请中',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `channel` varchar(10) NOT NULL DEFAULT 'weixin',
  `toaccount_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_store_getcash_log` */

/*Table structure for table `ims_tiny_wmall_store_members` */

DROP TABLE IF EXISTS `ims_tiny_wmall_store_members`;

CREATE TABLE `ims_tiny_wmall_store_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `first_order_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_order_time` int(10) unsigned NOT NULL DEFAULT '0',
  `success_num` int(10) unsigned DEFAULT '0',
  `success_price` decimal(10,2) NOT NULL,
  `cancel_num` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_price` decimal(10,2) NOT NULL,
  `is_sys` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `success_first_time` int(10) unsigned NOT NULL DEFAULT '0',
  `success_last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_first_time` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_last_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `first_order_time` (`success_first_time`) USING BTREE,
  KEY `last_order_time` (`success_last_time`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1643 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_store_members` */

/*Table structure for table `ims_tiny_wmall_store_page` */

DROP TABLE IF EXISTS `ims_tiny_wmall_store_page`;

CREATE TABLE `ims_tiny_wmall_store_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_store_page` */

/*Table structure for table `ims_tiny_wmall_storebd_current_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_storebd_current_log`;

CREATE TABLE `ims_tiny_wmall_storebd_current_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `bd_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uniacid_bdid_tradetype` (`uniacid`,`bd_id`,`trade_type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_storebd_current_log` */

/*Table structure for table `ims_tiny_wmall_storebd_getcash_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_storebd_getcash_log`;

CREATE TABLE `ims_tiny_wmall_storebd_getcash_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `bd_id` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(20) NOT NULL,
  `channel` varchar(10) NOT NULL DEFAULT 'weixin',
  `get_fee` decimal(10,2) unsigned NOT NULL,
  `take_fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `account` varchar(1000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_bd_id` (`uniacid`,`bd_id`) USING BTREE,
  KEY `uniacid_status` (`uniacid`,`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_storebd_getcash_log` */

/*Table structure for table `ims_tiny_wmall_storebd_store` */

DROP TABLE IF EXISTS `ims_tiny_wmall_storebd_store`;

CREATE TABLE `ims_tiny_wmall_storebd_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `bd_id` int(10) NOT NULL DEFAULT '0',
  `fee_takeout` varchar(500) NOT NULL,
  `fee_instore` varchar(500) NOT NULL,
  `addtime` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_sid_bdid` (`uniacid`,`sid`,`bd_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_storebd_store` */

/*Table structure for table `ims_tiny_wmall_storebd_user` */

DROP TABLE IF EXISTS `ims_tiny_wmall_storebd_user`;

CREATE TABLE `ims_tiny_wmall_storebd_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(15) NOT NULL,
  `nickname` varchar(15) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `openid_wxapp` varchar(60) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `token` varchar(50) NOT NULL,
  `salt` varchar(6) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `credit2` decimal(10,2) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE,
  KEY `openid_wxapp` (`openid_wxapp`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_storebd_user` */

/*Table structure for table `ims_tiny_wmall_stripe` */

DROP TABLE IF EXISTS `ims_tiny_wmall_stripe`;

CREATE TABLE `ims_tiny_wmall_stripe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `stripe_id` varchar(255) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `acid` (`acid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_stripe` */

/*Table structure for table `ims_tiny_wmall_supercoupon_coupon` */

DROP TABLE IF EXISTS `ims_tiny_wmall_supercoupon_coupon`;

CREATE TABLE `ims_tiny_wmall_supercoupon_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `endtime` (`endtime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_supercoupon_coupon` */

/*Table structure for table `ims_tiny_wmall_supercoupon_member_group` */

DROP TABLE IF EXISTS `ims_tiny_wmall_supercoupon_member_group`;

CREATE TABLE `ims_tiny_wmall_supercoupon_member_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `group_condition` text NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_supercoupon_member_group` */

/*Table structure for table `ims_tiny_wmall_superredpacket` */

DROP TABLE IF EXISTS `ims_tiny_wmall_superredpacket`;

CREATE TABLE `ims_tiny_wmall_superredpacket` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `grant_object` longtext NOT NULL,
  `condition` decimal(10,2) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_superredpacket` */

/*Table structure for table `ims_tiny_wmall_superredpacket_grant` */

DROP TABLE IF EXISTS `ims_tiny_wmall_superredpacket_grant`;

CREATE TABLE `ims_tiny_wmall_superredpacket_grant` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) NOT NULL DEFAULT '0',
  `activity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `packet_dosage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `packet_total` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_tiny_wmall_superredpacket_grant` */

/*Table structure for table `ims_tiny_wmall_superredpacket_meal_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_superredpacket_meal_order`;

CREATE TABLE `ims_tiny_wmall_superredpacket_meal_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(60) NOT NULL,
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `meal_id` varchar(20) NOT NULL,
  `order_sn` varchar(50) NOT NULL,
  `final_fee` varchar(20) NOT NULL,
  `pay_type` varchar(20) NOT NULL,
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'mealRedpacket',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_superredpacket_meal_order` */

/*Table structure for table `ims_tiny_wmall_superredpacket_share` */

DROP TABLE IF EXISTS `ims_tiny_wmall_superredpacket_share`;

CREATE TABLE `ims_tiny_wmall_superredpacket_share` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `activity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `discount` decimal(10,2) unsigned NOT NULL,
  `condition` decimal(10,2) unsigned NOT NULL,
  `grant_days_effect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `use_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `times_limit` text NOT NULL,
  `category_limit` text NOT NULL,
  `nums` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_superredpacket_share` */

/*Table structure for table `ims_tiny_wmall_svip_code` */

DROP TABLE IF EXISTS `ims_tiny_wmall_svip_code`;

CREATE TABLE `ims_tiny_wmall_svip_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(20) NOT NULL DEFAULT '0',
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `exchangetime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_code` (`uniacid`,`code`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_svip_code` */

/*Table structure for table `ims_tiny_wmall_svip_meal` */

DROP TABLE IF EXISTS `ims_tiny_wmall_svip_meal`;

CREATE TABLE `ims_tiny_wmall_svip_meal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL,
  `oldprice` decimal(10,2) unsigned NOT NULL,
  `description` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_svip_meal` */

/*Table structure for table `ims_tiny_wmall_svip_meal_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_svip_meal_order`;

CREATE TABLE `ims_tiny_wmall_svip_meal_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `acid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(60) NOT NULL,
  `ordersn` varchar(50) NOT NULL,
  `meal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `final_fee` varchar(20) NOT NULL,
  `pay_type` varchar(20) NOT NULL,
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `order_channel` varchar(10) NOT NULL DEFAULT 'wechat',
  `data` varchar(500) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_uid` (`uniacid`,`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_svip_meal_order` */

/*Table structure for table `ims_tiny_wmall_svip_redpacket` */

DROP TABLE IF EXISTS `ims_tiny_wmall_svip_redpacket`;

CREATE TABLE `ims_tiny_wmall_svip_redpacket` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `discount` decimal(10,2) unsigned NOT NULL,
  `condition` decimal(10,2) unsigned NOT NULL,
  `use_days_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL,
  `can_exchange` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exchange_cost` decimal(10,2) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `starttime` (`starttime`) USING BTREE,
  KEY `endtime` (`endtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_svip_redpacket` */

/*Table structure for table `ims_tiny_wmall_svip_task` */

DROP TABLE IF EXISTS `ims_tiny_wmall_svip_task`;

CREATE TABLE `ims_tiny_wmall_svip_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(200) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `status` (`uniacid`,`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_svip_task` */

/*Table structure for table `ims_tiny_wmall_svip_task_records` */

DROP TABLE IF EXISTS `ims_tiny_wmall_svip_task_records`;

CREATE TABLE `ims_tiny_wmall_svip_task_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `task_id` int(10) unsigned NOT NULL DEFAULT '0',
  `task_type` varchar(30) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `overtime` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type_uid` (`uniacid`,`task_type`,`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_svip_task_records` */

/*Table structure for table `ims_tiny_wmall_system_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_system_log`;

CREATE TABLE `ims_tiny_wmall_system_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `params` varchar(5000) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_system_log` */

insert  into `ims_tiny_wmall_system_log`(`id`,`uniacid`,`type`,`title`,`params`,`message`,`addtime`) values (1,1,'alidayuSms','阿里大鱼短信通知验证码','a:1:{s:4:\"code\";s:6:\"863676\";}','s:30:\"平台没有设置短信参数\";',1677916538);

/*Table structure for table `ims_tiny_wmall_tables` */

DROP TABLE IF EXISTS `ims_tiny_wmall_tables`;

CREATE TABLE `ims_tiny_wmall_tables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `guest_num` tinyint(3) unsigned DEFAULT '0',
  `scan_num` int(10) unsigned NOT NULL DEFAULT '0',
  `qrcode` varchar(500) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `wxapp_version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cart_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_sid` (`uniacid`,`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_tables` */

/*Table structure for table `ims_tiny_wmall_tables_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_tables_category`;

CREATE TABLE `ims_tiny_wmall_tables_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `limit_price` varchar(20) NOT NULL,
  `reservation_price` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_tables_category` */

/*Table structure for table `ims_tiny_wmall_tables_scan` */

DROP TABLE IF EXISTS `ims_tiny_wmall_tables_scan`;

CREATE TABLE `ims_tiny_wmall_tables_scan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `table_id` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE,
  KEY `table_id` (`table_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_tables_scan` */

/*Table structure for table `ims_tiny_wmall_text` */

DROP TABLE IF EXISTS `ims_tiny_wmall_text`;

CREATE TABLE `ims_tiny_wmall_text` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_text` */

/*Table structure for table `ims_tiny_wmall_tongcheng_category` */

DROP TABLE IF EXISTS `ims_tiny_wmall_tongcheng_category`;

CREATE TABLE `ims_tiny_wmall_tongcheng_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL,
  `tags` varchar(500) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_agentid` (`uniacid`,`agentid`) USING BTREE,
  KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_tongcheng_category` */

/*Table structure for table `ims_tiny_wmall_tongcheng_comment` */

DROP TABLE IF EXISTS `ims_tiny_wmall_tongcheng_comment`;

CREATE TABLE `ims_tiny_wmall_tongcheng_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(50) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_tid` (`uniacid`,`tid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_tongcheng_comment` */

/*Table structure for table `ims_tiny_wmall_tongcheng_information` */

DROP TABLE IF EXISTS `ims_tiny_wmall_tongcheng_information`;

CREATE TABLE `ims_tiny_wmall_tongcheng_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL,
  `nickname` varchar(45) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `childid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `thumbs` text,
  `sid` int(10) NOT NULL,
  `is_stick` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL,
  `looknum` int(10) NOT NULL DEFAULT '0',
  `likenum` int(11) NOT NULL DEFAULT '0',
  `like_uid` varchar(3000) NOT NULL,
  `sharenum` int(11) NOT NULL DEFAULT '0',
  `share_title` varchar(500) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `overtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `edit_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `channel` varchar(20) NOT NULL DEFAULT 'wechat',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_tongcheng_information` */

/*Table structure for table `ims_tiny_wmall_tongcheng_order` */

DROP TABLE IF EXISTS `ims_tiny_wmall_tongcheng_order`;

CREATE TABLE `ims_tiny_wmall_tongcheng_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL,
  `stick_price` decimal(10,2) unsigned NOT NULL,
  `final_fee` varchar(20) NOT NULL,
  `days` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ordersn` varchar(50) NOT NULL,
  `pay_type` varchar(20) NOT NULL,
  `is_pay` tinyint(3) NOT NULL DEFAULT '0',
  `order_channel` varchar(15) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `out_trade_no` varchar(50) NOT NULL,
  `agent_final_fee` decimal(10,2) NOT NULL,
  `agent_serve_fee` decimal(10,2) NOT NULL,
  `agent_serve` varchar(500) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_type` (`uniacid`,`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_tongcheng_order` */

/*Table structure for table `ims_tiny_wmall_tongcheng_reply` */

DROP TABLE IF EXISTS `ims_tiny_wmall_tongcheng_reply`;

CREATE TABLE `ims_tiny_wmall_tongcheng_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `from_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_nickname` varchar(50) NOT NULL,
  `from_avatar` varchar(255) NOT NULL,
  `to_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `to_nickname` varchar(50) NOT NULL,
  `to_avatar` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid_tid_cid` (`uniacid`,`tid`,`cid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_tongcheng_reply` */

/*Table structure for table `ims_tiny_wmall_wheel` */

DROP TABLE IF EXISTS `ims_tiny_wmall_wheel`;

CREATE TABLE `ims_tiny_wmall_wheel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `starttime` (`starttime`) USING BTREE,
  KEY `endtime` (`endtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_wheel` */

/*Table structure for table `ims_tiny_wmall_wheel_record` */

DROP TABLE IF EXISTS `ims_tiny_wmall_wheel_record`;

CREATE TABLE `ims_tiny_wmall_wheel_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `activity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_day` int(10) unsigned NOT NULL DEFAULT '0',
  `award` varchar(1000) NOT NULL,
  `award_type` varchar(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `handletime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `activity_id` (`activity_id`) USING BTREE,
  KEY `stat_day` (`stat_day`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_wheel_record` */

/*Table structure for table `ims_tiny_wmall_wxapp_formid_log` */

DROP TABLE IF EXISTS `ims_tiny_wmall_wxapp_formid_log`;

CREATE TABLE `ims_tiny_wmall_wxapp_formid_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `appid` varchar(50) NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `formid` varchar(150) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime_cn` varchar(30) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `formid` (`uniacid`,`appid`,`openid`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_wxapp_formid_log` */

/*Table structure for table `ims_tiny_wmall_wxapp_page` */

DROP TABLE IF EXISTS `ims_tiny_wmall_wxapp_page`;

CREATE TABLE `ims_tiny_wmall_wxapp_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `isdefault` (`isdefault`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_tiny_wmall_wxapp_page` */

/*Table structure for table `ims_uni_account` */

DROP TABLE IF EXISTS `ims_uni_account`;

CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  PRIMARY KEY (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_uni_account` */

insert  into `ims_uni_account`(`uniacid`,`groupid`,`name`,`description`,`default_acid`,`rank`,`title_initial`) values (1,-1,'微擎团队','一个朝气蓬勃的团队',1,NULL,'W');

/*Table structure for table `ims_uni_account_group` */

DROP TABLE IF EXISTS `ims_uni_account_group`;

CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `ims_uni_account_group` */

/*Table structure for table `ims_uni_account_menus` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `menuid` (`menuid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_uni_account_menus` */

/*Table structure for table `ims_uni_account_modules` */

DROP TABLE IF EXISTS `ims_uni_account_modules`;

CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_module` (`module`) USING BTREE,
  KEY `idx_uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_uni_account_modules` */

/*Table structure for table `ims_uni_account_users` */

DROP TABLE IF EXISTS `ims_uni_account_users`;

CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_memberid` (`uid`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_uni_account_users` */

/*Table structure for table `ims_uni_group` */

DROP TABLE IF EXISTS `ims_uni_group`;

CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` text NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_uni_group` */

insert  into `ims_uni_group`(`id`,`owner_uid`,`name`,`modules`,`templates`,`uniacid`,`uid`) values (1,0,'体验套餐服务','a:5:{s:7:\"modules\";a:1:{i:0;s:9:\"we7_wmall\";}s:5:\"wxapp\";a:1:{i:0;s:9:\"we7_wmall\";}s:6:\"webapp\";a:1:{i:0;s:9:\"we7_wmall\";}s:5:\"xzapp\";a:1:{i:0;s:9:\"we7_wmall\";}s:8:\"phoneapp\";a:1:{i:0;s:9:\"we7_wmall\";}}','N;',0,0);

/*Table structure for table `ims_uni_settings` */

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
  `comment_status` tinyint(1) NOT NULL,
  `reply_setting` tinyint(4) NOT NULL,
  `default_module` varchar(100) NOT NULL,
  `attachment_limit` int(11) DEFAULT NULL,
  `attachment_size` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_uni_settings` */

insert  into `ims_uni_settings`(`uniacid`,`passport`,`oauth`,`jsauth_acid`,`uc`,`notify`,`creditnames`,`creditbehaviors`,`welcome`,`default`,`default_message`,`payment`,`stat`,`default_site`,`sync`,`recharge`,`tplnotice`,`grouplevel`,`mcplugin`,`exchange_enable`,`coupon_type`,`menuset`,`statistics`,`bind_domain`,`comment_status`,`reply_setting`,`default_module`,`attachment_limit`,`attachment_size`) values (1,'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}','a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}',0,'a:1:{s:6:\"status\";i:0;}','a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}','a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}','a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}','','','','a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}','',1,0,'','',0,'',0,0,'','','',0,0,'',NULL,NULL);

/*Table structure for table `ims_uni_verifycode` */

DROP TABLE IF EXISTS `ims_uni_verifycode`;

CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_uni_verifycode` */

insert  into `ims_uni_verifycode`(`id`,`uniacid`,`receiver`,`verifycode`,`total`,`createtime`) values (1,1,'15880260510','863676',1,1677916538);

/*Table structure for table `ims_userapi_cache` */

DROP TABLE IF EXISTS `ims_userapi_cache`;

CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_userapi_cache` */

/*Table structure for table `ims_userapi_reply` */

DROP TABLE IF EXISTS `ims_userapi_reply`;

CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_userapi_reply` */

insert  into `ims_userapi_reply`(`id`,`rid`,`description`,`apiurl`,`token`,`default_text`,`cachetime`) values (1,1,'\"城市名+天气\", 如: \"北京天气\"','weather.php','','',0),(2,2,'\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"','baike.php','','',0),(3,3,'\"@查询内容(中文或英文)\"','translate.php','','',0),(4,4,'\"日历\", \"万年历\", \"黄历\"或\"几号\"','calendar.php','','',0),(5,5,'\"新闻\"','news.php','','',0),(6,6,'\"快递+单号\", 如: \"申通1200041125\"','express.php','','',0);

/*Table structure for table `ims_users` */

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
  `welcome_link` tinyint(4) NOT NULL,
  `is_bind` tinyint(1) NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_users` */

insert  into `ims_users`(`uid`,`owner_uid`,`groupid`,`founder_groupid`,`username`,`password`,`salt`,`type`,`status`,`joindate`,`joinip`,`lastvisit`,`lastip`,`remark`,`starttime`,`endtime`,`register_type`,`openid`,`welcome_link`,`is_bind`) values (1,0,1,0,'admin','f174c43df6e4ba30f0be05e0f7cd467895626fcc','1afbd422',0,0,1618919186,'',1677848568,'127.0.0.1','',0,0,0,'',0,0);

/*Table structure for table `ims_users_bind` */

DROP TABLE IF EXISTS `ims_users_bind`;

CREATE TABLE `ims_users_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `bind_sign` (`bind_sign`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_users_bind` */

/*Table structure for table `ims_users_failed_login` */

DROP TABLE IF EXISTS `ims_users_failed_login`;

CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `ip_username` (`ip`,`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_users_failed_login` */

/*Table structure for table `ims_users_founder_group` */

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
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_users_founder_group` */

/*Table structure for table `ims_users_group` */

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
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_users_group` */

/*Table structure for table `ims_users_invitation` */

DROP TABLE IF EXISTS `ims_users_invitation`;

CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_code` (`code`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_users_invitation` */

/*Table structure for table `ims_users_permission` */

DROP TABLE IF EXISTS `ims_users_permission`;

CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_users_permission` */

/*Table structure for table `ims_users_profile` */

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_users_profile` */

/*Table structure for table `ims_video_reply` */

DROP TABLE IF EXISTS `ims_video_reply`;

CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_video_reply` */

/*Table structure for table `ims_voice_reply` */

DROP TABLE IF EXISTS `ims_voice_reply`;

CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_voice_reply` */

/*Table structure for table `ims_wechat_attachment` */

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
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `media_id` (`media_id`) USING BTREE,
  KEY `acid` (`acid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_wechat_attachment` */

/*Table structure for table `ims_wechat_news` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `attach_id` (`attach_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_wechat_news` */

/*Table structure for table `ims_wxapp_general_analysis` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE,
  KEY `ref_date` (`ref_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_wxapp_general_analysis` */

/*Table structure for table `ims_wxapp_versions` */

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
  `redirect` varchar(300) NOT NULL,
  `connection` varchar(1000) NOT NULL,
  `last_modules` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `version` (`version`) USING BTREE,
  KEY `uniacid` (`uniacid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_wxapp_versions` */

/*Table structure for table `ims_wxcard_reply` */

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `ims_wxcard_reply` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
