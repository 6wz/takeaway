-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2023-02-17 17:54:58
-- 服务器版本： 5.6.49-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lalademo_hjout_z`
--

-- --------------------------------------------------------

--
-- 表的结构 `ims_account`
--

CREATE TABLE IF NOT EXISTS `ims_account` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_account`
--

INSERT INTO `ims_account` (`acid`, `uniacid`, `hash`, `type`, `isconnect`, `isdeleted`, `endtime`) VALUES
(1, 1, 'uRr8qvQV', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_aliapp`
--

CREATE TABLE IF NOT EXISTS `ims_account_aliapp` (
  `acid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `key` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_phoneapp`
--

CREATE TABLE IF NOT EXISTS `ims_account_phoneapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_webapp`
--

CREATE TABLE IF NOT EXISTS `ims_account_webapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_wechats`
--

CREATE TABLE IF NOT EXISTS `ims_account_wechats` (
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
  `auth_refresh_token` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_account_wechats`
--

INSERT INTO `ims_account_wechats` (`acid`, `uniacid`, `token`, `encodingaeskey`, `level`, `name`, `account`, `original`, `signature`, `country`, `province`, `city`, `username`, `password`, `lastupdate`, `key`, `secret`, `styleid`, `subscribeurl`, `auth_refresh_token`) VALUES
(1, 1, 'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP', '', 1, 'we7team', '', '', '', '', '', '', '', '', 0, '', '', 1, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_wxapp`
--

CREATE TABLE IF NOT EXISTS `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appdomain` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_xzapp`
--

CREATE TABLE IF NOT EXISTS `ims_account_xzapp` (
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
  `secret` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_category`
--

CREATE TABLE IF NOT EXISTS `ims_article_category` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_comment`
--

CREATE TABLE IF NOT EXISTS `ims_article_comment` (
  `id` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `is_like` tinyint(1) NOT NULL,
  `is_reply` tinyint(1) NOT NULL,
  `like_num` int(10) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_news`
--

CREATE TABLE IF NOT EXISTS `ims_article_news` (
  `id` int(10) unsigned NOT NULL,
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
  `click` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_notice`
--

CREATE TABLE IF NOT EXISTS `ims_article_notice` (
  `id` int(10) unsigned NOT NULL,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `style` varchar(200) NOT NULL,
  `group` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_unread_notice`
--

CREATE TABLE IF NOT EXISTS `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_attachment_group`
--

CREATE TABLE IF NOT EXISTS `ims_attachment_group` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_basic_reply`
--

CREATE TABLE IF NOT EXISTS `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_business`
--

CREATE TABLE IF NOT EXISTS `ims_business` (
  `id` int(10) unsigned NOT NULL,
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
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_attachment`
--

CREATE TABLE IF NOT EXISTS `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cache`
--

CREATE TABLE IF NOT EXISTS `ims_core_cache` (
  `key` varchar(100) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_cache`
--

INSERT INTO `ims_core_cache` (`key`, `value`) VALUES
('setting', 'a:5:{s:9:"copyright";a:1:{s:6:"slides";a:3:{i:0;s:58:"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg";i:1;s:58:"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg";i:2;s:58:"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg";}}s:8:"authmode";i:1;s:5:"close";a:2:{s:6:"status";s:1:"0";s:6:"reason";s:0:"";}s:8:"register";a:4:{s:4:"open";i:1;s:6:"verify";i:0;s:4:"code";i:1;s:7:"groupid";i:1;}s:8:"platform";a:5:{s:5:"token";s:32:"y3P9rRUr3M11415nJxUjR1xZ4j5gsj13";s:14:"encodingaeskey";s:43:"nxhc4CgczJEJSZD0zzp89UuHEjxR3E08pG4646xPN6S";s:9:"appsecret";s:0:"";s:5:"appid";s:0:"";s:9:"authstate";i:1;}}'),
('we7:system_frame:0', 'a:12:{s:8:"platform";a:7:{s:5:"title";s:6:"平台";s:4:"icon";s:14:"wi wi-platform";s:3:"url";s:44:"./index.php?c=account&a=display&do=platform&";s:7:"section";a:0:{}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:2;}s:7:"account";a:7:{s:5:"title";s:9:"公众号";s:4:"icon";s:18:"wi wi-white-collar";s:3:"url";s:41:"./index.php?c=home&a=welcome&do=platform&";s:7:"section";a:5:{s:13:"platform_plus";a:3:{s:5:"title";s:12:"增强功能";s:4:"menu";a:5:{s:14:"platform_reply";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"自动回复";s:3:"url";s:31:"./index.php?c=platform&a=reply&";s:15:"permission_name";s:14:"platform_reply";s:4:"icon";s:11:"wi wi-reply";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:13:"platform_menu";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:15:"自定义菜单";s:3:"url";s:38:"./index.php?c=platform&a=menu&do=post&";s:15:"permission_name";s:13:"platform_menu";s:4:"icon";s:16:"wi wi-custommenu";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:11:"platform_qr";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:22:"二维码/转化链接";s:3:"url";s:28:"./index.php?c=platform&a=qr&";s:15:"permission_name";s:11:"platform_qr";s:4:"icon";s:12:"wi wi-qrcode";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:17:"platform_material";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:16:"素材/编辑器";s:3:"url";s:34:"./index.php?c=platform&a=material&";s:15:"permission_name";s:17:"platform_material";s:4:"icon";s:12:"wi wi-redact";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:2:{i:0;a:3:{s:5:"title";s:13:"添加/编辑";s:3:"url";s:39:"./index.php?c=platform&a=material-post&";s:15:"permission_name";s:13:"material_post";}i:1;a:2:{s:5:"title";s:6:"删除";s:15:"permission_name";s:24:"platform_material_delete";}}}s:13:"platform_site";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:16:"微官网-文章";s:3:"url";s:38:"./index.php?c=site&a=multi&do=display&";s:15:"permission_name";s:13:"platform_site";s:4:"icon";s:10:"wi wi-home";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:0:{}}}s:10:"is_display";i:0;}s:15:"platform_module";a:3:{s:5:"title";s:12:"应用模块";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:2:"mc";a:3:{s:5:"title";s:6:"粉丝";s:4:"menu";a:2:{s:7:"mc_fans";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"粉丝管理";s:3:"url";s:24:"./index.php?c=mc&a=fans&";s:15:"permission_name";s:7:"mc_fans";s:4:"icon";s:16:"wi wi-fansmanage";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:9:"mc_member";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"会员管理";s:3:"url";s:26:"./index.php?c=mc&a=member&";s:15:"permission_name";s:9:"mc_member";s:4:"icon";s:10:"wi wi-fans";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";i:0;}s:7:"profile";a:3:{s:5:"title";s:6:"配置";s:4:"menu";a:4:{s:7:"profile";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"参数配置";s:3:"url";s:31:"./index.php?c=profile&a=remote&";s:15:"permission_name";s:15:"profile_setting";s:4:"icon";s:23:"wi wi-parameter-setting";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:7:"payment";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"支付参数";s:3:"url";s:32:"./index.php?c=profile&a=payment&";s:15:"permission_name";s:19:"profile_pay_setting";s:4:"icon";s:17:"wi wi-pay-setting";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:15:"app_module_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"数据同步";s:3:"url";s:44:"./index.php?c=profile&a=module-link-uniacid&";s:15:"permission_name";s:31:"profile_app_module_link_uniacid";s:4:"icon";s:18:"wi wi-data-synchro";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:11:"bind_domain";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"域名绑定";s:3:"url";s:36:"./index.php?c=profile&a=bind-domain&";s:15:"permission_name";s:19:"profile_bind_domain";s:4:"icon";s:17:"wi wi-bind-domain";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";i:0;}s:10:"statistics";a:3:{s:5:"title";s:6:"统计";s:4:"menu";a:2:{s:14:"statistics_app";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"访问统计";s:3:"url";s:31:"./index.php?c=statistics&a=app&";s:15:"permission_name";s:14:"statistics_app";s:4:"icon";s:17:"wi wi-statistical";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:15:"statistics_fans";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"用户统计";s:3:"url";s:32:"./index.php?c=statistics&a=fans&";s:15:"permission_name";s:15:"statistics_fans";s:4:"icon";s:17:"wi wi-statistical";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";i:0;}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:3;}s:5:"wxapp";a:7:{s:5:"title";s:15:"微信小程序";s:4:"icon";s:19:"wi wi-small-routine";s:3:"url";s:38:"./index.php?c=wxapp&a=display&do=home&";s:7:"section";a:5:{s:14:"wxapp_entrance";a:3:{s:5:"title";s:15:"小程序入口";s:4:"menu";a:1:{s:20:"module_entrance_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"入口页面";s:3:"url";s:36:"./index.php?c=wxapp&a=entrance-link&";s:15:"permission_name";s:19:"wxapp_entrance_link";s:4:"icon";s:18:"wi wi-data-synchro";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";i:0;}s:15:"platform_module";a:3:{s:5:"title";s:6:"应用";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:2:"mc";a:3:{s:5:"title";s:6:"粉丝";s:4:"menu";a:1:{s:12:"wxapp_member";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:6:"会员";s:3:"url";s:26:"./index.php?c=mc&a=member&";s:15:"permission_name";s:12:"wxapp_member";s:4:"icon";s:10:"wi wi-fans";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";i:0;}s:13:"wxapp_profile";a:2:{s:5:"title";s:6:"配置";s:4:"menu";a:5:{s:17:"wxapp_module_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"数据同步";s:3:"url";s:42:"./index.php?c=wxapp&a=module-link-uniacid&";s:15:"permission_name";s:25:"wxapp_module_link_uniacid";s:4:"icon";s:18:"wi wi-data-synchro";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:13:"wxapp_payment";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"支付参数";s:3:"url";s:30:"./index.php?c=wxapp&a=payment&";s:15:"permission_name";s:13:"wxapp_payment";s:4:"icon";s:16:"wi wi-appsetting";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:14:"front_download";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:18:"上传微信审核";s:3:"url";s:37:"./index.php?c=wxapp&a=front-download&";s:15:"permission_name";s:20:"wxapp_front_download";s:4:"icon";s:13:"wi wi-examine";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:17:"parameter_setting";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"参数配置";s:3:"url";s:31:"./index.php?c=profile&a=remote&";s:15:"permission_name";s:13:"wxapp_setting";s:4:"icon";s:23:"wi wi-parameter-setting";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:23:"wxapp_platform_material";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"素材管理";s:3:"url";N;s:15:"permission_name";s:23:"wxapp_platform_material";s:4:"icon";N;s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:1:{i:0;a:2:{s:5:"title";s:6:"删除";s:15:"permission_name";s:30:"wxapp_platform_material_delete";}}}}}s:10:"statistics";a:3:{s:5:"title";s:6:"统计";s:4:"menu";a:1:{s:15:"statistics_fans";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"访问统计";s:3:"url";s:33:"./index.php?c=wxapp&a=statistics&";s:15:"permission_name";s:15:"statistics_fans";s:4:"icon";s:17:"wi wi-statistical";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";i:0;}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:4;}s:6:"webapp";a:7:{s:5:"title";s:2:"PC";s:4:"icon";s:8:"wi wi-pc";s:3:"url";s:39:"./index.php?c=webapp&a=home&do=display&";s:7:"section";a:4:{s:15:"platform_module";a:3:{s:5:"title";s:12:"应用模块";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:2:"mc";a:2:{s:5:"title";s:6:"粉丝";s:4:"menu";a:1:{s:9:"mc_member";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"会员管理";s:3:"url";s:26:"./index.php?c=mc&a=member&";s:15:"permission_name";s:9:"mc_member";s:4:"icon";s:10:"wi wi-fans";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:6:"webapp";a:2:{s:5:"title";s:6:"配置";s:4:"menu";a:3:{s:18:"webapp_module_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"数据同步";s:3:"url";s:43:"./index.php?c=webapp&a=module-link-uniacid&";s:15:"permission_name";s:26:"webapp_module_link_uniacid";s:4:"icon";s:18:"wi wi-data-synchro";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:14:"webapp_rewrite";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:9:"伪静态";s:3:"url";s:31:"./index.php?c=webapp&a=rewrite&";s:15:"permission_name";s:14:"webapp_rewrite";s:4:"icon";s:13:"wi wi-rewrite";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:18:"webapp_bind_domain";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:18:"域名访问设置";s:3:"url";s:35:"./index.php?c=webapp&a=bind-domain&";s:15:"permission_name";s:18:"webapp_bind_domain";s:4:"icon";s:17:"wi wi-bind-domain";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:10:"statistics";a:3:{s:5:"title";s:6:"统计";s:4:"menu";a:1:{s:14:"statistics_app";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"访问统计";s:3:"url";s:31:"./index.php?c=statistics&a=app&";s:15:"permission_name";s:14:"statistics_app";s:4:"icon";s:17:"wi wi-statistical";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";i:0;}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:5;}s:8:"phoneapp";a:7:{s:5:"title";s:3:"APP";s:4:"icon";s:18:"wi wi-white-collar";s:3:"url";s:41:"./index.php?c=phoneapp&a=display&do=home&";s:7:"section";a:2:{s:15:"platform_module";a:3:{s:5:"title";s:6:"应用";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:16:"phoneapp_profile";a:2:{s:5:"title";s:6:"配置";s:4:"menu";a:1:{s:14:"front_download";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:9:"下载APP";s:3:"url";s:40:"./index.php?c=phoneapp&a=front-download&";s:15:"permission_name";s:23:"phoneapp_front_download";s:4:"icon";s:13:"wi wi-examine";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:6;}s:5:"xzapp";a:7:{s:5:"title";s:9:"熊掌号";s:4:"icon";s:18:"wi wi-white-collar";s:3:"url";s:38:"./index.php?c=xzapp&a=home&do=display&";s:7:"section";a:1:{s:15:"platform_module";a:3:{s:5:"title";s:12:"应用模块";s:4:"menu";a:0:{}s:10:"is_display";b:1;}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:7;}s:6:"aliapp";a:7:{s:5:"title";s:18:"支付宝小程序";s:4:"icon";s:18:"wi wi-white-collar";s:3:"url";s:40:"./index.php?c=miniapp&a=display&do=home&";s:7:"section";a:1:{s:15:"platform_module";a:3:{s:5:"title";s:6:"应用";s:4:"menu";a:0:{}s:10:"is_display";b:1;}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:8;}s:6:"module";a:7:{s:5:"title";s:6:"应用";s:4:"icon";s:11:"wi wi-apply";s:3:"url";s:31:"./index.php?c=module&a=display&";s:7:"section";a:0:{}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:9;}s:6:"system";a:7:{s:5:"title";s:6:"系统";s:4:"icon";s:13:"wi wi-setting";s:3:"url";s:39:"./index.php?c=home&a=welcome&do=system&";s:7:"section";a:13:{s:10:"wxplatform";a:2:{s:5:"title";s:9:"公众号";s:4:"menu";a:4:{s:14:"system_account";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:16:" 微信公众号";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=1";s:15:"permission_name";s:14:"system_account";s:4:"icon";s:12:"wi wi-wechat";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";a:6:{i:0;a:2:{s:5:"title";s:21:"公众号管理设置";s:15:"permission_name";s:21:"system_account_manage";}i:1;a:2:{s:5:"title";s:15:"添加公众号";s:15:"permission_name";s:19:"system_account_post";}i:2;a:2:{s:5:"title";s:15:"公众号停用";s:15:"permission_name";s:19:"system_account_stop";}i:3;a:2:{s:5:"title";s:18:"公众号回收站";s:15:"permission_name";s:22:"system_account_recycle";}i:4;a:2:{s:5:"title";s:15:"公众号删除";s:15:"permission_name";s:21:"system_account_delete";}i:5;a:2:{s:5:"title";s:15:"公众号恢复";s:15:"permission_name";s:22:"system_account_recover";}}}s:13:"system_module";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"公众号应用";s:3:"url";s:60:"./index.php?c=module&a=manage-system&support=account_support";s:15:"permission_name";s:13:"system_module";s:4:"icon";s:14:"wi wi-wx-apply";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:15:"system_template";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"微官网模板";s:3:"url";s:32:"./index.php?c=system&a=template&";s:15:"permission_name";s:15:"system_template";s:4:"icon";s:17:"wi wi-wx-template";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:15:"system_platform";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:19:" 微信开放平台";s:3:"url";s:32:"./index.php?c=system&a=platform&";s:15:"permission_name";s:15:"system_platform";s:4:"icon";s:20:"wi wi-exploitsetting";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:6:"module";a:2:{s:5:"title";s:9:"小程序";s:4:"menu";a:2:{s:12:"system_wxapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"微信小程序";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=4";s:15:"permission_name";s:12:"system_wxapp";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:6:{i:0;a:2:{s:5:"title";s:21:"小程序管理设置";s:15:"permission_name";s:19:"system_wxapp_manage";}i:1;a:2:{s:5:"title";s:15:"添加小程序";s:15:"permission_name";s:17:"system_wxapp_post";}i:2;a:2:{s:5:"title";s:15:"小程序停用";s:15:"permission_name";s:17:"system_wxapp_stop";}i:3;a:2:{s:5:"title";s:18:"小程序回收站";s:15:"permission_name";s:20:"system_wxapp_recycle";}i:4;a:2:{s:5:"title";s:15:"小程序删除";s:15:"permission_name";s:19:"system_wxapp_delete";}i:5;a:2:{s:5:"title";s:15:"小程序恢复";s:15:"permission_name";s:20:"system_wxapp_recover";}}}s:19:"system_module_wxapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"小程序应用";s:3:"url";s:58:"./index.php?c=module&a=manage-system&support=wxapp_support";s:15:"permission_name";s:19:"system_module_wxapp";s:4:"icon";s:17:"wi wi-wxapp-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"welcome";a:3:{s:5:"title";s:12:"系统首页";s:4:"menu";a:1:{s:14:"system_welcome";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:18:"系统首页应用";s:3:"url";s:60:"./index.php?c=module&a=manage-system&support=welcome_support";s:15:"permission_name";s:14:"system_welcome";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:7:"founder";b:1;}s:6:"webapp";a:2:{s:5:"title";s:2:"PC";s:4:"menu";a:2:{s:13:"system_webapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:2:"PC";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=5";s:15:"permission_name";s:13:"system_webapp";s:4:"icon";s:8:"wi wi-pc";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:20:"system_module_webapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:8:"PC应用";s:3:"url";s:59:"./index.php?c=module&a=manage-system&support=webapp_support";s:15:"permission_name";s:20:"system_module_webapp";s:4:"icon";s:14:"wi wi-pc-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:8:"phoneapp";a:2:{s:5:"title";s:3:"APP";s:4:"menu";a:2:{s:15:"system_phoneapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:3:"APP";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=6";s:15:"permission_name";s:15:"system_phoneapp";s:4:"icon";s:9:"wi wi-app";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:22:"system_module_phoneapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:9:"APP应用";s:3:"url";s:61:"./index.php?c=module&a=manage-system&support=phoneapp_support";s:15:"permission_name";s:22:"system_module_phoneapp";s:4:"icon";s:15:"wi wi-app-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:5:"xzapp";a:2:{s:5:"title";s:9:"熊掌号";s:4:"menu";a:2:{s:12:"system_xzapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:9:"熊掌号";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=9";s:15:"permission_name";s:12:"system_xzapp";s:4:"icon";s:11:"wi wi-xzapp";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:19:"system_module_xzapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"熊掌号应用";s:3:"url";s:58:"./index.php?c=module&a=manage-system&support=xzapp_support";s:15:"permission_name";s:19:"system_module_xzapp";s:4:"icon";s:17:"wi wi-xzapp-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:6:"aliapp";a:2:{s:5:"title";s:18:"支付宝小程序";s:4:"menu";a:2:{s:13:"system_aliapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:18:"支付宝小程序";s:3:"url";s:46:"./index.php?c=account&a=manage&account_type=11";s:15:"permission_name";s:13:"system_aliapp";s:4:"icon";s:12:"wi wi-aliapp";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:20:"system_module_aliapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:24:"支付宝小程序应用";s:3:"url";s:59:"./index.php?c=module&a=manage-system&support=aliapp_support";s:15:"permission_name";s:20:"system_module_aliapp";s:4:"icon";s:18:"wi wi-aliapp-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:4:"user";a:2:{s:5:"title";s:13:"帐户/用户";s:4:"menu";a:3:{s:9:"system_my";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"我的帐户";s:3:"url";s:29:"./index.php?c=user&a=profile&";s:15:"permission_name";s:9:"system_my";s:4:"icon";s:10:"wi wi-user";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:11:"system_user";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"用户管理";s:3:"url";s:29:"./index.php?c=user&a=display&";s:15:"permission_name";s:11:"system_user";s:4:"icon";s:16:"wi wi-user-group";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:7:{i:0;a:2:{s:5:"title";s:12:"编辑用户";s:15:"permission_name";s:16:"system_user_post";}i:1;a:2:{s:5:"title";s:12:"审核用户";s:15:"permission_name";s:17:"system_user_check";}i:2;a:2:{s:5:"title";s:12:"店员管理";s:15:"permission_name";s:17:"system_user_clerk";}i:3;a:2:{s:5:"title";s:15:"用户回收站";s:15:"permission_name";s:19:"system_user_recycle";}i:4;a:2:{s:5:"title";s:18:"用户属性设置";s:15:"permission_name";s:18:"system_user_fields";}i:5;a:2:{s:5:"title";s:31:"用户属性设置-编辑字段";s:15:"permission_name";s:23:"system_user_fields_post";}i:6;a:2:{s:5:"title";s:18:"用户注册设置";s:15:"permission_name";s:23:"system_user_registerset";}}}s:25:"system_user_founder_group";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"副创始人组";s:3:"url";s:32:"./index.php?c=founder&a=display&";s:15:"permission_name";s:21:"system_founder_manage";s:4:"icon";s:16:"wi wi-co-founder";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:6:{i:0;a:2:{s:5:"title";s:18:"添加创始人组";s:15:"permission_name";s:24:"system_founder_group_add";}i:1;a:2:{s:5:"title";s:18:"编辑创始人组";s:15:"permission_name";s:25:"system_founder_group_post";}i:2;a:2:{s:5:"title";s:18:"删除创始人组";s:15:"permission_name";s:24:"system_founder_group_del";}i:3;a:2:{s:5:"title";s:15:"添加创始人";s:15:"permission_name";s:23:"system_founder_user_add";}i:4;a:2:{s:5:"title";s:15:"编辑创始人";s:15:"permission_name";s:24:"system_founder_user_post";}i:5;a:2:{s:5:"title";s:15:"删除创始人";s:15:"permission_name";s:23:"system_founder_user_del";}}}}}s:10:"permission";a:2:{s:5:"title";s:12:"权限管理";s:4:"menu";a:2:{s:19:"system_module_group";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"应用权限组";s:3:"url";s:29:"./index.php?c=module&a=group&";s:15:"permission_name";s:19:"system_module_group";s:4:"icon";s:21:"wi wi-appjurisdiction";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:3:{i:0;a:2:{s:5:"title";s:21:"添加应用权限组";s:15:"permission_name";s:23:"system_module_group_add";}i:1;a:2:{s:5:"title";s:21:"编辑应用权限组";s:15:"permission_name";s:24:"system_module_group_post";}i:2;a:2:{s:5:"title";s:21:"删除应用权限组";s:15:"permission_name";s:23:"system_module_group_del";}}}s:17:"system_user_group";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"用户权限组";s:3:"url";s:27:"./index.php?c=user&a=group&";s:15:"permission_name";s:17:"system_user_group";s:4:"icon";s:22:"wi wi-userjurisdiction";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:3:{i:0;a:2:{s:5:"title";s:15:"添加用户组";s:15:"permission_name";s:21:"system_user_group_add";}i:1;a:2:{s:5:"title";s:15:"编辑用户组";s:15:"permission_name";s:22:"system_user_group_post";}i:2;a:2:{s:5:"title";s:15:"删除用户组";s:15:"permission_name";s:21:"system_user_group_del";}}}}}s:7:"article";a:2:{s:5:"title";s:13:"文章/公告";s:4:"menu";a:2:{s:14:"system_article";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"文章管理";s:3:"url";s:29:"./index.php?c=article&a=news&";s:15:"permission_name";s:19:"system_article_news";s:4:"icon";s:13:"wi wi-article";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:21:"system_article_notice";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"公告管理";s:3:"url";s:31:"./index.php?c=article&a=notice&";s:15:"permission_name";s:21:"system_article_notice";s:4:"icon";s:12:"wi wi-notice";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"message";a:2:{s:5:"title";s:12:"消息提醒";s:4:"menu";a:1:{s:21:"system_message_notice";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"消息提醒";s:3:"url";s:31:"./index.php?c=message&a=notice&";s:15:"permission_name";s:21:"system_message_notice";s:4:"icon";s:10:"wi wi-bell";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:17:"system_statistics";a:2:{s:5:"title";s:6:"统计";s:4:"menu";a:1:{s:23:"system_account_analysis";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"访问统计";s:3:"url";s:35:"./index.php?c=statistics&a=account&";s:15:"permission_name";s:23:"system_account_analysis";s:4:"icon";s:17:"wi wi-statistical";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:5:"cache";a:2:{s:5:"title";s:6:"缓存";s:4:"menu";a:1:{s:26:"system_setting_updatecache";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"更新缓存";s:3:"url";s:35:"./index.php?c=system&a=updatecache&";s:15:"permission_name";s:26:"system_setting_updatecache";s:4:"icon";s:12:"wi wi-update";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:10;}s:4:"site";a:8:{s:5:"title";s:6:"站点";s:4:"icon";s:17:"wi wi-system-site";s:3:"url";s:28:"./index.php?c=system&a=site&";s:7:"section";a:3:{s:7:"setting";a:2:{s:5:"title";s:6:"设置";s:4:"menu";a:9:{s:19:"system_setting_site";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"站点设置";s:3:"url";s:28:"./index.php?c=system&a=site&";s:15:"permission_name";s:19:"system_setting_site";s:4:"icon";s:18:"wi wi-site-setting";s:12:"displayorder";i:9;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_setting_menu";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"菜单设置";s:3:"url";s:28:"./index.php?c=system&a=menu&";s:15:"permission_name";s:19:"system_setting_menu";s:4:"icon";s:18:"wi wi-menu-setting";s:12:"displayorder";i:8;s:2:"id";N;s:14:"sub_permission";N;}s:25:"system_setting_attachment";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"附件设置";s:3:"url";s:34:"./index.php?c=system&a=attachment&";s:15:"permission_name";s:25:"system_setting_attachment";s:4:"icon";s:16:"wi wi-attachment";s:12:"displayorder";i:7;s:2:"id";N;s:14:"sub_permission";N;}s:25:"system_setting_systeminfo";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"系统信息";s:3:"url";s:34:"./index.php?c=system&a=systeminfo&";s:15:"permission_name";s:25:"system_setting_systeminfo";s:4:"icon";s:17:"wi wi-system-info";s:12:"displayorder";i:6;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_setting_logs";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"查看日志";s:3:"url";s:28:"./index.php?c=system&a=logs&";s:15:"permission_name";s:19:"system_setting_logs";s:4:"icon";s:9:"wi wi-log";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:26:"system_setting_ipwhitelist";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:11:"IP白名单";s:3:"url";s:35:"./index.php?c=system&a=ipwhitelist&";s:15:"permission_name";s:26:"system_setting_ipwhitelist";s:4:"icon";s:8:"wi wi-ip";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:28:"system_setting_sensitiveword";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"过滤敏感词";s:3:"url";s:37:"./index.php?c=system&a=sensitiveword&";s:15:"permission_name";s:28:"system_setting_sensitiveword";s:4:"icon";s:15:"wi wi-sensitive";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:25:"system_setting_thirdlogin";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:25:"用户登录/注册设置";s:3:"url";s:33:"./index.php?c=user&a=registerset&";s:15:"permission_name";s:25:"system_setting_thirdlogin";s:4:"icon";s:10:"wi wi-user";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:20:"system_setting_oauth";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:17:"oauth全局设置";s:3:"url";s:29:"./index.php?c=system&a=oauth&";s:15:"permission_name";s:20:"system_setting_oauth";s:4:"icon";s:11:"wi wi-oauth";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"utility";a:2:{s:5:"title";s:12:"常用工具";s:4:"menu";a:5:{s:24:"system_utility_filecheck";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:18:"系统文件校验";s:3:"url";s:33:"./index.php?c=system&a=filecheck&";s:15:"permission_name";s:24:"system_utility_filecheck";s:4:"icon";s:10:"wi wi-file";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:23:"system_utility_optimize";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"性能优化";s:3:"url";s:32:"./index.php?c=system&a=optimize&";s:15:"permission_name";s:23:"system_utility_optimize";s:4:"icon";s:14:"wi wi-optimize";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:23:"system_utility_database";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:9:"数据库";s:3:"url";s:32:"./index.php?c=system&a=database&";s:15:"permission_name";s:23:"system_utility_database";s:4:"icon";s:9:"wi wi-sql";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_utility_scan";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"木马查杀";s:3:"url";s:28:"./index.php?c=system&a=scan&";s:15:"permission_name";s:19:"system_utility_scan";s:4:"icon";s:12:"wi wi-safety";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:18:"system_utility_bom";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"检测文件BOM";s:3:"url";s:27:"./index.php?c=system&a=bom&";s:15:"permission_name";s:18:"system_utility_bom";s:4:"icon";s:9:"wi wi-bom";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"backjob";a:2:{s:5:"title";s:12:"后台任务";s:4:"menu";a:1:{s:10:"system_job";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"后台任务";s:3:"url";s:38:"./index.php?c=system&a=job&do=display&";s:15:"permission_name";s:10:"system_job";s:4:"icon";s:9:"wi wi-job";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:7:"founder";b:1;s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:11;}s:4:"help";a:8:{s:5:"title";s:12:"系统帮助";s:4:"icon";s:12:"wi wi-market";s:3:"url";s:29:"./index.php?c=help&a=display&";s:7:"section";a:0:{}s:5:"blank";b:0;s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:12;}s:5:"store";a:7:{s:5:"title";s:6:"商城";s:4:"icon";s:11:"wi wi-store";s:3:"url";s:43:"./index.php?c=home&a=welcome&do=ext&m=store";s:7:"section";a:0:{}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:13;}}'),
('we7:setting', 'a:4:{s:9:"copyright";a:1:{s:6:"slides";a:3:{i:0;s:58:"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg";i:1;s:58:"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg";i:2;s:58:"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg";}}s:8:"authmode";i:1;s:5:"close";a:2:{s:6:"status";s:1:"0";s:6:"reason";s:0:"";}s:8:"register";a:4:{s:4:"open";i:1;s:6:"verify";i:0;s:4:"code";i:1;s:7:"groupid";i:1;}}'),
('we7:userbasefields', 'a:46:{s:7:"uniacid";s:17:"同一公众号id";s:7:"groupid";s:8:"分组id";s:7:"credit1";s:6:"积分";s:7:"credit2";s:6:"余额";s:7:"credit3";s:19:"预留积分类型3";s:7:"credit4";s:19:"预留积分类型4";s:7:"credit5";s:19:"预留积分类型5";s:7:"credit6";s:19:"预留积分类型6";s:10:"createtime";s:12:"加入时间";s:6:"mobile";s:12:"手机号码";s:5:"email";s:12:"电子邮箱";s:8:"realname";s:12:"真实姓名";s:8:"nickname";s:6:"昵称";s:6:"avatar";s:6:"头像";s:2:"qq";s:5:"QQ号";s:6:"gender";s:6:"性别";s:5:"birth";s:6:"生日";s:13:"constellation";s:6:"星座";s:6:"zodiac";s:6:"生肖";s:9:"telephone";s:12:"固定电话";s:6:"idcard";s:12:"证件号码";s:9:"studentid";s:6:"学号";s:5:"grade";s:6:"班级";s:7:"address";s:6:"地址";s:7:"zipcode";s:6:"邮编";s:11:"nationality";s:6:"国籍";s:6:"reside";s:9:"居住地";s:14:"graduateschool";s:12:"毕业学校";s:7:"company";s:6:"公司";s:9:"education";s:6:"学历";s:10:"occupation";s:6:"职业";s:8:"position";s:6:"职位";s:7:"revenue";s:9:"年收入";s:15:"affectivestatus";s:12:"情感状态";s:10:"lookingfor";s:13:" 交友目的";s:9:"bloodtype";s:6:"血型";s:6:"height";s:6:"身高";s:6:"weight";s:6:"体重";s:6:"alipay";s:15:"支付宝帐号";s:3:"msn";s:3:"MSN";s:6:"taobao";s:12:"阿里旺旺";s:4:"site";s:6:"主页";s:3:"bio";s:12:"自我介绍";s:8:"interest";s:12:"兴趣爱好";s:8:"password";s:6:"密码";s:12:"pay_password";s:12:"支付密码";}'),
('we7:usersfields', 'a:47:{s:8:"realname";s:12:"真实姓名";s:8:"nickname";s:6:"昵称";s:6:"avatar";s:6:"头像";s:2:"qq";s:5:"QQ号";s:6:"mobile";s:12:"手机号码";s:3:"vip";s:9:"VIP级别";s:6:"gender";s:6:"性别";s:9:"birthyear";s:12:"出生生日";s:13:"constellation";s:6:"星座";s:6:"zodiac";s:6:"生肖";s:9:"telephone";s:12:"固定电话";s:6:"idcard";s:12:"证件号码";s:9:"studentid";s:6:"学号";s:5:"grade";s:6:"班级";s:7:"address";s:12:"邮寄地址";s:7:"zipcode";s:6:"邮编";s:11:"nationality";s:6:"国籍";s:14:"resideprovince";s:12:"居住地址";s:14:"graduateschool";s:12:"毕业学校";s:7:"company";s:6:"公司";s:9:"education";s:6:"学历";s:10:"occupation";s:6:"职业";s:8:"position";s:6:"职位";s:7:"revenue";s:9:"年收入";s:15:"affectivestatus";s:12:"情感状态";s:10:"lookingfor";s:13:" 交友目的";s:9:"bloodtype";s:6:"血型";s:6:"height";s:6:"身高";s:6:"weight";s:6:"体重";s:6:"alipay";s:15:"支付宝帐号";s:3:"msn";s:3:"MSN";s:5:"email";s:12:"电子邮箱";s:6:"taobao";s:12:"阿里旺旺";s:4:"site";s:6:"主页";s:3:"bio";s:12:"自我介绍";s:8:"interest";s:12:"兴趣爱好";s:7:"uniacid";s:17:"同一公众号id";s:7:"groupid";s:8:"分组id";s:7:"credit1";s:6:"积分";s:7:"credit2";s:6:"余额";s:7:"credit3";s:19:"预留积分类型3";s:7:"credit4";s:19:"预留积分类型4";s:7:"credit5";s:19:"预留积分类型5";s:7:"credit6";s:19:"预留积分类型6";s:10:"createtime";s:12:"加入时间";s:8:"password";s:12:"用户密码";s:12:"pay_password";s:12:"支付密码";}'),
('we7:module_receive_enable', 'a:0:{}'),
('we7:module_info:we7_wmall', 'a:32:{s:3:"mid";s:2:"13";s:4:"name";s:9:"we7_wmall";s:4:"type";s:8:"business";s:5:"title";s:14:"LL外卖跑腿";s:7:"version";s:6:"18.3.0";s:7:"ability";s:109:"微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统|跑腿|随意购|配送员";s:11:"description";s:82:"微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统";s:6:"author";s:12:"宇艺网络";s:3:"url";s:20:"http://wwww.y198.cn/";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:2:{i:0;s:8:"location";i:1;s:4:"text";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:6:"a:0:{}";s:13:"title_initial";s:1:"L";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"1";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"1";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"1";s:9:"isdisplay";i:1;s:4:"logo";s:75:"http://lalademo.hjout.zeroproject.cn/addons/we7_wmall/icon.jpg?v=1618919316";s:7:"preview";s:65:"http://lalademo.hjout.zeroproject.cn/addons/we7_wmall/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:store', 'a:32:{s:3:"mid";s:2:"12";s:4:"name";s:5:"store";s:4:"type";s:8:"business";s:5:"title";s:12:"站内商城";s:7:"version";s:3:"1.0";s:7:"ability";s:12:"站内商城";s:11:"description";s:12:"站内商城";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:71:"http://lalademo.hjout.zeroproject.cn/addons/store/icon.jpg?v=1618919293";s:7:"preview";s:61:"http://lalademo.hjout.zeroproject.cn/addons/store/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:wxcard', 'a:32:{s:3:"mid";s:2:"11";s:4:"name";s:6:"wxcard";s:4:"type";s:6:"system";s:5:"title";s:18:"微信卡券回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"微信卡券回复";s:11:"description";s:18:"微信卡券回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:72:"http://lalademo.hjout.zeroproject.cn/addons/wxcard/icon.jpg?v=1618919293";s:7:"preview";s:62:"http://lalademo.hjout.zeroproject.cn/addons/wxcard/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:chats', 'a:32:{s:3:"mid";s:2:"10";s:4:"name";s:5:"chats";s:4:"type";s:6:"system";s:5:"title";s:18:"发送客服消息";s:7:"version";s:3:"1.0";s:7:"ability";s:77:"公众号可以在粉丝最后发送消息的48小时内无限制发送消息";s:11:"description";s:0:"";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:71:"http://lalademo.hjout.zeroproject.cn/addons/chats/icon.jpg?v=1618919293";s:7:"preview";s:61:"http://lalademo.hjout.zeroproject.cn/addons/chats/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:voice', 'a:32:{s:3:"mid";s:1:"9";s:4:"name";s:5:"voice";s:4:"type";s:6:"system";s:5:"title";s:18:"基本语音回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供语音回复";s:11:"description";s:132:"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:71:"http://lalademo.hjout.zeroproject.cn/addons/voice/icon.jpg?v=1618919293";s:7:"preview";s:61:"http://lalademo.hjout.zeroproject.cn/addons/voice/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:video', 'a:32:{s:3:"mid";s:1:"8";s:4:"name";s:5:"video";s:4:"type";s:6:"system";s:5:"title";s:18:"基本视频回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:11:"description";s:132:"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:71:"http://lalademo.hjout.zeroproject.cn/addons/video/icon.jpg?v=1618919293";s:7:"preview";s:61:"http://lalademo.hjout.zeroproject.cn/addons/video/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:images', 'a:32:{s:3:"mid";s:1:"7";s:4:"name";s:6:"images";s:4:"type";s:6:"system";s:5:"title";s:18:"基本图片回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:11:"description";s:132:"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:72:"http://lalademo.hjout.zeroproject.cn/addons/images/icon.jpg?v=1618919293";s:7:"preview";s:62:"http://lalademo.hjout.zeroproject.cn/addons/images/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:custom', 'a:32:{s:3:"mid";s:1:"6";s:4:"name";s:6:"custom";s:4:"type";s:6:"system";s:5:"title";s:15:"多客服转接";s:7:"version";s:5:"1.0.0";s:7:"ability";s:36:"用来接入腾讯的多客服系统";s:11:"description";s:0:"";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:17:"http://bbs.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:72:"http://lalademo.hjout.zeroproject.cn/addons/custom/icon.jpg?v=1618919293";s:7:"preview";s:62:"http://lalademo.hjout.zeroproject.cn/addons/custom/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:recharge', 'a:32:{s:3:"mid";s:1:"5";s:4:"name";s:8:"recharge";s:4:"type";s:6:"system";s:5:"title";s:24:"会员中心充值模块";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"提供会员充值功能";s:11:"description";s:0:"";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:74:"http://lalademo.hjout.zeroproject.cn/addons/recharge/icon.jpg?v=1618919293";s:7:"preview";s:64:"http://lalademo.hjout.zeroproject.cn/addons/recharge/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:userapi', 'a:32:{s:3:"mid";s:1:"4";s:4:"name";s:7:"userapi";s:4:"type";s:6:"system";s:5:"title";s:21:"自定义接口回复";s:7:"version";s:3:"1.1";s:7:"ability";s:33:"更方便的第三方接口设置";s:11:"description";s:141:"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:73:"http://lalademo.hjout.zeroproject.cn/addons/userapi/icon.jpg?v=1618919293";s:7:"preview";s:63:"http://lalademo.hjout.zeroproject.cn/addons/userapi/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:music', 'a:32:{s:3:"mid";s:1:"3";s:4:"name";s:5:"music";s:4:"type";s:6:"system";s:5:"title";s:18:"基本音乐回复";s:7:"version";s:3:"1.0";s:7:"ability";s:39:"提供语音、音乐等音频类回复";s:11:"description";s:183:"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:71:"http://lalademo.hjout.zeroproject.cn/addons/music/icon.jpg?v=1618919293";s:7:"preview";s:61:"http://lalademo.hjout.zeroproject.cn/addons/music/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:news', 'a:32:{s:3:"mid";s:1:"2";s:4:"name";s:4:"news";s:4:"type";s:6:"system";s:5:"title";s:24:"基本混合图文回复";s:7:"version";s:3:"1.0";s:7:"ability";s:33:"为你提供生动的图文资讯";s:11:"description";s:272:"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:70:"http://lalademo.hjout.zeroproject.cn/addons/news/icon.jpg?v=1618919293";s:7:"preview";s:60:"http://lalademo.hjout.zeroproject.cn/addons/news/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:basic', 'a:32:{s:3:"mid";s:1:"1";s:4:"name";s:5:"basic";s:4:"type";s:6:"system";s:5:"title";s:18:"基本文字回复";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"和您进行简单对话";s:11:"description";s:201:"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:15:"welcome_support";s:1:"1";s:10:"oauth_type";s:1:"1";s:14:"webapp_support";s:1:"1";s:16:"phoneapp_support";s:1:"0";s:15:"account_support";s:1:"2";s:13:"xzapp_support";s:1:"0";s:11:"app_support";s:1:"0";s:14:"aliapp_support";s:1:"0";s:9:"isdisplay";i:1;s:4:"logo";s:71:"http://lalademo.hjout.zeroproject.cn/addons/basic/icon.jpg?v=1618919293";s:7:"preview";s:61:"http://lalademo.hjout.zeroproject.cn/addons/basic/preview.jpg";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:unisetting:1', 'a:29:{s:7:"uniacid";s:1:"1";s:8:"passport";a:3:{s:8:"focusreg";i:0;s:4:"item";s:5:"email";s:4:"type";s:8:"password";}s:5:"oauth";a:2:{s:6:"status";s:1:"0";s:7:"account";s:1:"0";}s:11:"jsauth_acid";s:1:"0";s:2:"uc";a:1:{s:6:"status";i:0;}s:6:"notify";a:1:{s:3:"sms";a:2:{s:7:"balance";i:0;s:9:"signature";s:0:"";}}s:11:"creditnames";a:5:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}s:7:"credit3";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit4";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit5";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:15:"default_message";s:0:"";s:7:"payment";a:4:{s:6:"credit";a:1:{s:6:"switch";b:0;}s:6:"alipay";a:4:{s:6:"switch";b:0;s:7:"account";s:0:"";s:7:"partner";s:0:"";s:6:"secret";s:0:"";}s:6:"wechat";a:5:{s:6:"switch";b:0;s:7:"account";b:0;s:7:"signkey";s:0:"";s:7:"partner";s:0:"";s:3:"key";s:0:"";}s:8:"delivery";a:1:{s:6:"switch";b:0;}}s:4:"stat";s:0:"";s:12:"default_site";s:1:"1";s:4:"sync";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";s:7:"menuset";s:0:"";s:10:"statistics";s:0:"";s:11:"bind_domain";s:0:"";s:14:"comment_status";s:1:"0";s:13:"reply_setting";s:1:"0";s:14:"default_module";s:0:"";s:16:"attachment_limit";N;s:15:"attachment_size";N;}'),
('we7:uniaccount:1', 'a:37:{s:4:"acid";s:1:"1";s:7:"uniacid";s:1:"1";s:5:"token";s:32:"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP";s:14:"encodingaeskey";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:7:"we7team";s:7:"account";s:0:"";s:8:"original";s:0:"";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:0:"";s:6:"secret";s:0:"";s:7:"styleid";s:1:"1";s:12:"subscribeurl";s:0:"";s:18:"auth_refresh_token";s:0:"";s:11:"encrypt_key";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"0";s:9:"isdeleted";s:1:"0";s:7:"endtime";s:1:"0";s:9:"type_sign";s:7:"account";s:3:"uid";s:1:"1";s:9:"starttime";s:1:"0";s:6:"groups";a:1:{i:1;a:5:{s:7:"groupid";s:1:"1";s:7:"uniacid";s:1:"1";s:5:"title";s:15:"默认会员组";s:6:"credit";s:1:"0";s:9:"isdefault";s:1:"1";}}s:7:"setting";a:29:{s:7:"uniacid";s:1:"1";s:8:"passport";a:3:{s:8:"focusreg";i:0;s:4:"item";s:5:"email";s:4:"type";s:8:"password";}s:5:"oauth";a:2:{s:6:"status";s:1:"0";s:7:"account";s:1:"0";}s:11:"jsauth_acid";s:1:"0";s:2:"uc";a:1:{s:6:"status";i:0;}s:6:"notify";a:1:{s:3:"sms";a:2:{s:7:"balance";i:0;s:9:"signature";s:0:"";}}s:11:"creditnames";a:5:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}s:7:"credit3";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit4";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit5";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:15:"default_message";s:0:"";s:7:"payment";a:4:{s:6:"credit";a:1:{s:6:"switch";b:0;}s:6:"alipay";a:4:{s:6:"switch";b:0;s:7:"account";s:0:"";s:7:"partner";s:0:"";s:6:"secret";s:0:"";}s:6:"wechat";a:5:{s:6:"switch";b:0;s:7:"account";b:0;s:7:"signkey";s:0:"";s:7:"partner";s:0:"";s:3:"key";s:0:"";}s:8:"delivery";a:1:{s:6:"switch";b:0;}}s:4:"stat";s:0:"";s:12:"default_site";s:1:"1";s:4:"sync";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";s:7:"menuset";s:0:"";s:10:"statistics";s:0:"";s:11:"bind_domain";s:0:"";s:14:"comment_status";s:1:"0";s:13:"reply_setting";s:1:"0";s:14:"default_module";s:0:"";s:16:"attachment_limit";N;s:15:"attachment_size";N;}s:10:"grouplevel";s:1:"0";s:4:"logo";s:77:"http://lalademo.hjout.zeroproject.cn/attachment/headimg_1.jpg?time=1618919298";s:6:"qrcode";s:76:"http://lalademo.hjout.zeroproject.cn/attachment/qrcode_1.jpg?time=1618919298";s:9:"type_name";s:9:"公众号";s:9:"switchurl";s:51:"./index.php?c=account&a=display&do=switch&uniacid=1";s:3:"sms";i:0;s:7:"setmeal";a:5:{s:3:"uid";i:-1;s:8:"username";s:9:"创始人";s:9:"timelimit";s:9:"未设置";s:7:"groupid";s:2:"-1";s:9:"groupname";s:12:"所有服务";}}'),
('we7:last_account:c7lr4', 'i:1;'),
('we7:user_modules:1', 'a:13:{s:9:"we7_wmall";s:3:"all";s:5:"store";s:3:"all";s:6:"wxcard";s:3:"all";s:5:"chats";s:3:"all";s:5:"voice";s:3:"all";s:5:"video";s:3:"all";s:6:"images";s:3:"all";s:6:"custom";s:3:"all";s:8:"recharge";s:3:"all";s:7:"userapi";s:3:"all";s:5:"music";s:3:"all";s:4:"news";s:3:"all";s:5:"basic";s:3:"all";}'),
('we7:last_account_type', 's:7:"account";');
INSERT INTO `ims_core_cache` (`key`, `value`) VALUES
('we7:system_frame:1', 'a:12:{s:8:"platform";a:7:{s:5:"title";s:6:"平台";s:4:"icon";s:14:"wi wi-platform";s:3:"url";s:44:"./index.php?c=account&a=display&do=platform&";s:7:"section";a:0:{}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:2;}s:7:"account";a:7:{s:5:"title";s:9:"公众号";s:4:"icon";s:18:"wi wi-white-collar";s:3:"url";s:41:"./index.php?c=home&a=welcome&do=platform&";s:7:"section";a:5:{s:13:"platform_plus";a:2:{s:5:"title";s:12:"增强功能";s:4:"menu";a:5:{s:14:"platform_reply";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"自动回复";s:3:"url";s:31:"./index.php?c=platform&a=reply&";s:15:"permission_name";s:14:"platform_reply";s:4:"icon";s:11:"wi wi-reply";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:13:"platform_menu";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"自定义菜单";s:3:"url";s:38:"./index.php?c=platform&a=menu&do=post&";s:15:"permission_name";s:13:"platform_menu";s:4:"icon";s:16:"wi wi-custommenu";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:11:"platform_qr";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:22:"二维码/转化链接";s:3:"url";s:28:"./index.php?c=platform&a=qr&";s:15:"permission_name";s:11:"platform_qr";s:4:"icon";s:12:"wi wi-qrcode";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:17:"platform_material";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:16:"素材/编辑器";s:3:"url";s:34:"./index.php?c=platform&a=material&";s:15:"permission_name";s:17:"platform_material";s:4:"icon";s:12:"wi wi-redact";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:2:{i:0;a:3:{s:5:"title";s:13:"添加/编辑";s:3:"url";s:39:"./index.php?c=platform&a=material-post&";s:15:"permission_name";s:13:"material_post";}i:1;a:2:{s:5:"title";s:6:"删除";s:15:"permission_name";s:24:"platform_material_delete";}}}s:13:"platform_site";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:16:"微官网-文章";s:3:"url";s:38:"./index.php?c=site&a=multi&do=display&";s:15:"permission_name";s:13:"platform_site";s:4:"icon";s:10:"wi wi-home";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:0:{}}}}s:15:"platform_module";a:3:{s:5:"title";s:12:"应用模块";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:2:"mc";a:2:{s:5:"title";s:6:"粉丝";s:4:"menu";a:2:{s:7:"mc_fans";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"粉丝管理";s:3:"url";s:24:"./index.php?c=mc&a=fans&";s:15:"permission_name";s:7:"mc_fans";s:4:"icon";s:16:"wi wi-fansmanage";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:9:"mc_member";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"会员管理";s:3:"url";s:26:"./index.php?c=mc&a=member&";s:15:"permission_name";s:9:"mc_member";s:4:"icon";s:10:"wi wi-fans";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"profile";a:2:{s:5:"title";s:6:"配置";s:4:"menu";a:4:{s:7:"profile";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"参数配置";s:3:"url";s:31:"./index.php?c=profile&a=remote&";s:15:"permission_name";s:15:"profile_setting";s:4:"icon";s:23:"wi wi-parameter-setting";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:7:"payment";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"支付参数";s:3:"url";s:32:"./index.php?c=profile&a=payment&";s:15:"permission_name";s:19:"profile_pay_setting";s:4:"icon";s:17:"wi wi-pay-setting";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:15:"app_module_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"数据同步";s:3:"url";s:44:"./index.php?c=profile&a=module-link-uniacid&";s:15:"permission_name";s:31:"profile_app_module_link_uniacid";s:4:"icon";s:18:"wi wi-data-synchro";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:11:"bind_domain";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"域名绑定";s:3:"url";s:36:"./index.php?c=profile&a=bind-domain&";s:15:"permission_name";s:19:"profile_bind_domain";s:4:"icon";s:17:"wi wi-bind-domain";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:10:"statistics";a:2:{s:5:"title";s:6:"统计";s:4:"menu";a:2:{s:14:"statistics_app";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"访问统计";s:3:"url";s:31:"./index.php?c=statistics&a=app&";s:15:"permission_name";s:14:"statistics_app";s:4:"icon";s:17:"wi wi-statistical";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:15:"statistics_fans";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"用户统计";s:3:"url";s:32:"./index.php?c=statistics&a=fans&";s:15:"permission_name";s:15:"statistics_fans";s:4:"icon";s:17:"wi wi-statistical";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:3;}s:5:"wxapp";a:7:{s:5:"title";s:15:"微信小程序";s:4:"icon";s:19:"wi wi-small-routine";s:3:"url";s:38:"./index.php?c=wxapp&a=display&do=home&";s:7:"section";a:5:{s:14:"wxapp_entrance";a:3:{s:5:"title";s:15:"小程序入口";s:4:"menu";a:1:{s:20:"module_entrance_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"入口页面";s:3:"url";s:36:"./index.php?c=wxapp&a=entrance-link&";s:15:"permission_name";s:19:"wxapp_entrance_link";s:4:"icon";s:18:"wi wi-data-synchro";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";i:0;}s:15:"platform_module";a:3:{s:5:"title";s:6:"应用";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:2:"mc";a:3:{s:5:"title";s:6:"粉丝";s:4:"menu";a:1:{s:12:"wxapp_member";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:6:"会员";s:3:"url";s:26:"./index.php?c=mc&a=member&";s:15:"permission_name";s:12:"wxapp_member";s:4:"icon";s:10:"wi wi-fans";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";i:0;}s:13:"wxapp_profile";a:2:{s:5:"title";s:6:"配置";s:4:"menu";a:5:{s:17:"wxapp_module_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"数据同步";s:3:"url";s:42:"./index.php?c=wxapp&a=module-link-uniacid&";s:15:"permission_name";s:25:"wxapp_module_link_uniacid";s:4:"icon";s:18:"wi wi-data-synchro";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:13:"wxapp_payment";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"支付参数";s:3:"url";s:30:"./index.php?c=wxapp&a=payment&";s:15:"permission_name";s:13:"wxapp_payment";s:4:"icon";s:16:"wi wi-appsetting";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:14:"front_download";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:18:"上传微信审核";s:3:"url";s:37:"./index.php?c=wxapp&a=front-download&";s:15:"permission_name";s:20:"wxapp_front_download";s:4:"icon";s:13:"wi wi-examine";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:17:"parameter_setting";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"参数配置";s:3:"url";s:31:"./index.php?c=profile&a=remote&";s:15:"permission_name";s:13:"wxapp_setting";s:4:"icon";s:23:"wi wi-parameter-setting";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:23:"wxapp_platform_material";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"素材管理";s:3:"url";N;s:15:"permission_name";s:23:"wxapp_platform_material";s:4:"icon";N;s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:1:{i:0;a:2:{s:5:"title";s:6:"删除";s:15:"permission_name";s:30:"wxapp_platform_material_delete";}}}}}s:10:"statistics";a:3:{s:5:"title";s:6:"统计";s:4:"menu";a:1:{s:15:"statistics_fans";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"访问统计";s:3:"url";s:33:"./index.php?c=wxapp&a=statistics&";s:15:"permission_name";s:15:"statistics_fans";s:4:"icon";s:17:"wi wi-statistical";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";i:0;}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:4;}s:6:"webapp";a:7:{s:5:"title";s:2:"PC";s:4:"icon";s:8:"wi wi-pc";s:3:"url";s:39:"./index.php?c=webapp&a=home&do=display&";s:7:"section";a:4:{s:15:"platform_module";a:3:{s:5:"title";s:12:"应用模块";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:2:"mc";a:2:{s:5:"title";s:6:"粉丝";s:4:"menu";a:1:{s:9:"mc_member";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"会员管理";s:3:"url";s:26:"./index.php?c=mc&a=member&";s:15:"permission_name";s:9:"mc_member";s:4:"icon";s:10:"wi wi-fans";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:6:"webapp";a:2:{s:5:"title";s:6:"配置";s:4:"menu";a:3:{s:18:"webapp_module_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"数据同步";s:3:"url";s:43:"./index.php?c=webapp&a=module-link-uniacid&";s:15:"permission_name";s:26:"webapp_module_link_uniacid";s:4:"icon";s:18:"wi wi-data-synchro";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:14:"webapp_rewrite";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:9:"伪静态";s:3:"url";s:31:"./index.php?c=webapp&a=rewrite&";s:15:"permission_name";s:14:"webapp_rewrite";s:4:"icon";s:13:"wi wi-rewrite";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:18:"webapp_bind_domain";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:18:"域名访问设置";s:3:"url";s:35:"./index.php?c=webapp&a=bind-domain&";s:15:"permission_name";s:18:"webapp_bind_domain";s:4:"icon";s:17:"wi wi-bind-domain";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:10:"statistics";a:3:{s:5:"title";s:6:"统计";s:4:"menu";a:1:{s:14:"statistics_app";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:0;s:5:"title";s:12:"访问统计";s:3:"url";s:31:"./index.php?c=statistics&a=app&";s:15:"permission_name";s:14:"statistics_app";s:4:"icon";s:17:"wi wi-statistical";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:10:"is_display";i:0;}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:5;}s:8:"phoneapp";a:7:{s:5:"title";s:3:"APP";s:4:"icon";s:18:"wi wi-white-collar";s:3:"url";s:41:"./index.php?c=phoneapp&a=display&do=home&";s:7:"section";a:2:{s:15:"platform_module";a:3:{s:5:"title";s:6:"应用";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:16:"phoneapp_profile";a:2:{s:5:"title";s:6:"配置";s:4:"menu";a:1:{s:14:"front_download";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:9:"下载APP";s:3:"url";s:40:"./index.php?c=phoneapp&a=front-download&";s:15:"permission_name";s:23:"phoneapp_front_download";s:4:"icon";s:13:"wi wi-examine";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:6;}s:5:"xzapp";a:7:{s:5:"title";s:9:"熊掌号";s:4:"icon";s:18:"wi wi-white-collar";s:3:"url";s:38:"./index.php?c=xzapp&a=home&do=display&";s:7:"section";a:1:{s:15:"platform_module";a:3:{s:5:"title";s:12:"应用模块";s:4:"menu";a:0:{}s:10:"is_display";b:1;}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:7;}s:6:"aliapp";a:7:{s:5:"title";s:18:"支付宝小程序";s:4:"icon";s:18:"wi wi-white-collar";s:3:"url";s:40:"./index.php?c=miniapp&a=display&do=home&";s:7:"section";a:1:{s:15:"platform_module";a:3:{s:5:"title";s:6:"应用";s:4:"menu";a:0:{}s:10:"is_display";b:1;}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:8;}s:6:"module";a:7:{s:5:"title";s:6:"应用";s:4:"icon";s:11:"wi wi-apply";s:3:"url";s:31:"./index.php?c=module&a=display&";s:7:"section";a:0:{}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:9;}s:6:"system";a:7:{s:5:"title";s:6:"系统";s:4:"icon";s:13:"wi wi-setting";s:3:"url";s:39:"./index.php?c=home&a=welcome&do=system&";s:7:"section";a:13:{s:10:"wxplatform";a:2:{s:5:"title";s:9:"公众号";s:4:"menu";a:4:{s:14:"system_account";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:16:" 微信公众号";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=1";s:15:"permission_name";s:14:"system_account";s:4:"icon";s:12:"wi wi-wechat";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";a:6:{i:0;a:2:{s:5:"title";s:21:"公众号管理设置";s:15:"permission_name";s:21:"system_account_manage";}i:1;a:2:{s:5:"title";s:15:"添加公众号";s:15:"permission_name";s:19:"system_account_post";}i:2;a:2:{s:5:"title";s:15:"公众号停用";s:15:"permission_name";s:19:"system_account_stop";}i:3;a:2:{s:5:"title";s:18:"公众号回收站";s:15:"permission_name";s:22:"system_account_recycle";}i:4;a:2:{s:5:"title";s:15:"公众号删除";s:15:"permission_name";s:21:"system_account_delete";}i:5;a:2:{s:5:"title";s:15:"公众号恢复";s:15:"permission_name";s:22:"system_account_recover";}}}s:13:"system_module";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"公众号应用";s:3:"url";s:60:"./index.php?c=module&a=manage-system&support=account_support";s:15:"permission_name";s:13:"system_module";s:4:"icon";s:14:"wi wi-wx-apply";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:15:"system_template";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"微官网模板";s:3:"url";s:32:"./index.php?c=system&a=template&";s:15:"permission_name";s:15:"system_template";s:4:"icon";s:17:"wi wi-wx-template";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:15:"system_platform";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:19:" 微信开放平台";s:3:"url";s:32:"./index.php?c=system&a=platform&";s:15:"permission_name";s:15:"system_platform";s:4:"icon";s:20:"wi wi-exploitsetting";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:6:"module";a:2:{s:5:"title";s:9:"小程序";s:4:"menu";a:2:{s:12:"system_wxapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"微信小程序";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=4";s:15:"permission_name";s:12:"system_wxapp";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:6:{i:0;a:2:{s:5:"title";s:21:"小程序管理设置";s:15:"permission_name";s:19:"system_wxapp_manage";}i:1;a:2:{s:5:"title";s:15:"添加小程序";s:15:"permission_name";s:17:"system_wxapp_post";}i:2;a:2:{s:5:"title";s:15:"小程序停用";s:15:"permission_name";s:17:"system_wxapp_stop";}i:3;a:2:{s:5:"title";s:18:"小程序回收站";s:15:"permission_name";s:20:"system_wxapp_recycle";}i:4;a:2:{s:5:"title";s:15:"小程序删除";s:15:"permission_name";s:19:"system_wxapp_delete";}i:5;a:2:{s:5:"title";s:15:"小程序恢复";s:15:"permission_name";s:20:"system_wxapp_recover";}}}s:19:"system_module_wxapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"小程序应用";s:3:"url";s:58:"./index.php?c=module&a=manage-system&support=wxapp_support";s:15:"permission_name";s:19:"system_module_wxapp";s:4:"icon";s:17:"wi wi-wxapp-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"welcome";a:3:{s:5:"title";s:12:"系统首页";s:4:"menu";a:1:{s:14:"system_welcome";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:18:"系统首页应用";s:3:"url";s:60:"./index.php?c=module&a=manage-system&support=welcome_support";s:15:"permission_name";s:14:"system_welcome";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}s:7:"founder";b:1;}s:6:"webapp";a:2:{s:5:"title";s:2:"PC";s:4:"menu";a:2:{s:13:"system_webapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:2:"PC";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=5";s:15:"permission_name";s:13:"system_webapp";s:4:"icon";s:8:"wi wi-pc";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:20:"system_module_webapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:8:"PC应用";s:3:"url";s:59:"./index.php?c=module&a=manage-system&support=webapp_support";s:15:"permission_name";s:20:"system_module_webapp";s:4:"icon";s:14:"wi wi-pc-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:8:"phoneapp";a:2:{s:5:"title";s:3:"APP";s:4:"menu";a:2:{s:15:"system_phoneapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:3:"APP";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=6";s:15:"permission_name";s:15:"system_phoneapp";s:4:"icon";s:9:"wi wi-app";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:22:"system_module_phoneapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:9:"APP应用";s:3:"url";s:61:"./index.php?c=module&a=manage-system&support=phoneapp_support";s:15:"permission_name";s:22:"system_module_phoneapp";s:4:"icon";s:15:"wi wi-app-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:5:"xzapp";a:2:{s:5:"title";s:9:"熊掌号";s:4:"menu";a:2:{s:12:"system_xzapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:9:"熊掌号";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=9";s:15:"permission_name";s:12:"system_xzapp";s:4:"icon";s:11:"wi wi-xzapp";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:19:"system_module_xzapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"熊掌号应用";s:3:"url";s:58:"./index.php?c=module&a=manage-system&support=xzapp_support";s:15:"permission_name";s:19:"system_module_xzapp";s:4:"icon";s:17:"wi wi-xzapp-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:6:"aliapp";a:2:{s:5:"title";s:18:"支付宝小程序";s:4:"menu";a:2:{s:13:"system_aliapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:18:"支付宝小程序";s:3:"url";s:46:"./index.php?c=account&a=manage&account_type=11";s:15:"permission_name";s:13:"system_aliapp";s:4:"icon";s:12:"wi wi-aliapp";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:0:{}}s:20:"system_module_aliapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:24:"支付宝小程序应用";s:3:"url";s:59:"./index.php?c=module&a=manage-system&support=aliapp_support";s:15:"permission_name";s:20:"system_module_aliapp";s:4:"icon";s:18:"wi wi-aliapp-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:4:"user";a:2:{s:5:"title";s:13:"帐户/用户";s:4:"menu";a:3:{s:9:"system_my";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"我的帐户";s:3:"url";s:29:"./index.php?c=user&a=profile&";s:15:"permission_name";s:9:"system_my";s:4:"icon";s:10:"wi wi-user";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:11:"system_user";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"用户管理";s:3:"url";s:29:"./index.php?c=user&a=display&";s:15:"permission_name";s:11:"system_user";s:4:"icon";s:16:"wi wi-user-group";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:7:{i:0;a:2:{s:5:"title";s:12:"编辑用户";s:15:"permission_name";s:16:"system_user_post";}i:1;a:2:{s:5:"title";s:12:"审核用户";s:15:"permission_name";s:17:"system_user_check";}i:2;a:2:{s:5:"title";s:12:"店员管理";s:15:"permission_name";s:17:"system_user_clerk";}i:3;a:2:{s:5:"title";s:15:"用户回收站";s:15:"permission_name";s:19:"system_user_recycle";}i:4;a:2:{s:5:"title";s:18:"用户属性设置";s:15:"permission_name";s:18:"system_user_fields";}i:5;a:2:{s:5:"title";s:31:"用户属性设置-编辑字段";s:15:"permission_name";s:23:"system_user_fields_post";}i:6;a:2:{s:5:"title";s:18:"用户注册设置";s:15:"permission_name";s:23:"system_user_registerset";}}}s:25:"system_user_founder_group";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"副创始人组";s:3:"url";s:32:"./index.php?c=founder&a=display&";s:15:"permission_name";s:21:"system_founder_manage";s:4:"icon";s:16:"wi wi-co-founder";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:6:{i:0;a:2:{s:5:"title";s:18:"添加创始人组";s:15:"permission_name";s:24:"system_founder_group_add";}i:1;a:2:{s:5:"title";s:18:"编辑创始人组";s:15:"permission_name";s:25:"system_founder_group_post";}i:2;a:2:{s:5:"title";s:18:"删除创始人组";s:15:"permission_name";s:24:"system_founder_group_del";}i:3;a:2:{s:5:"title";s:15:"添加创始人";s:15:"permission_name";s:23:"system_founder_user_add";}i:4;a:2:{s:5:"title";s:15:"编辑创始人";s:15:"permission_name";s:24:"system_founder_user_post";}i:5;a:2:{s:5:"title";s:15:"删除创始人";s:15:"permission_name";s:23:"system_founder_user_del";}}}}}s:10:"permission";a:2:{s:5:"title";s:12:"权限管理";s:4:"menu";a:2:{s:19:"system_module_group";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"应用权限组";s:3:"url";s:29:"./index.php?c=module&a=group&";s:15:"permission_name";s:19:"system_module_group";s:4:"icon";s:21:"wi wi-appjurisdiction";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";a:3:{i:0;a:2:{s:5:"title";s:21:"添加应用权限组";s:15:"permission_name";s:23:"system_module_group_add";}i:1;a:2:{s:5:"title";s:21:"编辑应用权限组";s:15:"permission_name";s:24:"system_module_group_post";}i:2;a:2:{s:5:"title";s:21:"删除应用权限组";s:15:"permission_name";s:23:"system_module_group_del";}}}s:17:"system_user_group";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"用户权限组";s:3:"url";s:27:"./index.php?c=user&a=group&";s:15:"permission_name";s:17:"system_user_group";s:4:"icon";s:22:"wi wi-userjurisdiction";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:3:{i:0;a:2:{s:5:"title";s:15:"添加用户组";s:15:"permission_name";s:21:"system_user_group_add";}i:1;a:2:{s:5:"title";s:15:"编辑用户组";s:15:"permission_name";s:22:"system_user_group_post";}i:2;a:2:{s:5:"title";s:15:"删除用户组";s:15:"permission_name";s:21:"system_user_group_del";}}}}}s:7:"article";a:2:{s:5:"title";s:13:"文章/公告";s:4:"menu";a:2:{s:14:"system_article";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"文章管理";s:3:"url";s:29:"./index.php?c=article&a=news&";s:15:"permission_name";s:19:"system_article_news";s:4:"icon";s:13:"wi wi-article";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:21:"system_article_notice";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"公告管理";s:3:"url";s:31:"./index.php?c=article&a=notice&";s:15:"permission_name";s:21:"system_article_notice";s:4:"icon";s:12:"wi wi-notice";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"message";a:2:{s:5:"title";s:12:"消息提醒";s:4:"menu";a:1:{s:21:"system_message_notice";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"消息提醒";s:3:"url";s:31:"./index.php?c=message&a=notice&";s:15:"permission_name";s:21:"system_message_notice";s:4:"icon";s:10:"wi wi-bell";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:17:"system_statistics";a:2:{s:5:"title";s:6:"统计";s:4:"menu";a:1:{s:23:"system_account_analysis";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"访问统计";s:3:"url";s:35:"./index.php?c=statistics&a=account&";s:15:"permission_name";s:23:"system_account_analysis";s:4:"icon";s:17:"wi wi-statistical";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:5:"cache";a:2:{s:5:"title";s:6:"缓存";s:4:"menu";a:1:{s:26:"system_setting_updatecache";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"更新缓存";s:3:"url";s:35:"./index.php?c=system&a=updatecache&";s:15:"permission_name";s:26:"system_setting_updatecache";s:4:"icon";s:12:"wi wi-update";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:10;}s:4:"site";a:8:{s:5:"title";s:6:"站点";s:4:"icon";s:17:"wi wi-system-site";s:3:"url";s:28:"./index.php?c=system&a=site&";s:7:"section";a:3:{s:7:"setting";a:2:{s:5:"title";s:6:"设置";s:4:"menu";a:9:{s:19:"system_setting_site";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"站点设置";s:3:"url";s:28:"./index.php?c=system&a=site&";s:15:"permission_name";s:19:"system_setting_site";s:4:"icon";s:18:"wi wi-site-setting";s:12:"displayorder";i:9;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_setting_menu";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"菜单设置";s:3:"url";s:28:"./index.php?c=system&a=menu&";s:15:"permission_name";s:19:"system_setting_menu";s:4:"icon";s:18:"wi wi-menu-setting";s:12:"displayorder";i:8;s:2:"id";N;s:14:"sub_permission";N;}s:25:"system_setting_attachment";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"附件设置";s:3:"url";s:34:"./index.php?c=system&a=attachment&";s:15:"permission_name";s:25:"system_setting_attachment";s:4:"icon";s:16:"wi wi-attachment";s:12:"displayorder";i:7;s:2:"id";N;s:14:"sub_permission";N;}s:25:"system_setting_systeminfo";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"系统信息";s:3:"url";s:34:"./index.php?c=system&a=systeminfo&";s:15:"permission_name";s:25:"system_setting_systeminfo";s:4:"icon";s:17:"wi wi-system-info";s:12:"displayorder";i:6;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_setting_logs";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"查看日志";s:3:"url";s:28:"./index.php?c=system&a=logs&";s:15:"permission_name";s:19:"system_setting_logs";s:4:"icon";s:9:"wi wi-log";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:26:"system_setting_ipwhitelist";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:11:"IP白名单";s:3:"url";s:35:"./index.php?c=system&a=ipwhitelist&";s:15:"permission_name";s:26:"system_setting_ipwhitelist";s:4:"icon";s:8:"wi wi-ip";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:28:"system_setting_sensitiveword";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"过滤敏感词";s:3:"url";s:37:"./index.php?c=system&a=sensitiveword&";s:15:"permission_name";s:28:"system_setting_sensitiveword";s:4:"icon";s:15:"wi wi-sensitive";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:25:"system_setting_thirdlogin";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:25:"用户登录/注册设置";s:3:"url";s:33:"./index.php?c=user&a=registerset&";s:15:"permission_name";s:25:"system_setting_thirdlogin";s:4:"icon";s:10:"wi wi-user";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:20:"system_setting_oauth";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:17:"oauth全局设置";s:3:"url";s:29:"./index.php?c=system&a=oauth&";s:15:"permission_name";s:20:"system_setting_oauth";s:4:"icon";s:11:"wi wi-oauth";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"utility";a:2:{s:5:"title";s:12:"常用工具";s:4:"menu";a:5:{s:24:"system_utility_filecheck";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:18:"系统文件校验";s:3:"url";s:33:"./index.php?c=system&a=filecheck&";s:15:"permission_name";s:24:"system_utility_filecheck";s:4:"icon";s:10:"wi wi-file";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:23:"system_utility_optimize";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"性能优化";s:3:"url";s:32:"./index.php?c=system&a=optimize&";s:15:"permission_name";s:23:"system_utility_optimize";s:4:"icon";s:14:"wi wi-optimize";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:23:"system_utility_database";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:9:"数据库";s:3:"url";s:32:"./index.php?c=system&a=database&";s:15:"permission_name";s:23:"system_utility_database";s:4:"icon";s:9:"wi wi-sql";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_utility_scan";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"木马查杀";s:3:"url";s:28:"./index.php?c=system&a=scan&";s:15:"permission_name";s:19:"system_utility_scan";s:4:"icon";s:12:"wi wi-safety";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:18:"system_utility_bom";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"检测文件BOM";s:3:"url";s:27:"./index.php?c=system&a=bom&";s:15:"permission_name";s:18:"system_utility_bom";s:4:"icon";s:9:"wi wi-bom";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"backjob";a:2:{s:5:"title";s:12:"后台任务";s:4:"menu";a:1:{s:10:"system_job";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"后台任务";s:3:"url";s:38:"./index.php?c=system&a=job&do=display&";s:15:"permission_name";s:10:"system_job";s:4:"icon";s:9:"wi wi-job";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:7:"founder";b:1;s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:11;}s:4:"help";a:8:{s:5:"title";s:12:"系统帮助";s:4:"icon";s:12:"wi wi-market";s:3:"url";s:29:"./index.php?c=help&a=display&";s:7:"section";a:0:{}s:5:"blank";b:0;s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:12;}s:5:"store";a:7:{s:5:"title";s:6:"商城";s:4:"icon";s:11:"wi wi-store";s:3:"url";s:43:"./index.php?c=home&a=welcome&do=ext&m=store";s:7:"section";a:0:{}s:9:"is_system";b:1;s:10:"is_display";b:1;s:12:"displayorder";i:13;}}'),
('we7:unimodules:1:', 'a:13:{s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:5:"music";a:1:{s:4:"name";s:5:"music";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:5:"video";a:1:{s:4:"name";s:5:"video";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:5:"store";a:1:{s:4:"name";s:5:"store";}s:9:"we7_wmall";a:1:{s:4:"name";s:9:"we7_wmall";}}'),
('we7:module_setting:basic:1', 'a:1:{s:6:"module";s:5:"basic";}'),
('we7:module_setting:news:1', 'a:1:{s:6:"module";s:4:"news";}'),
('we7:module_setting:music:1', 'a:1:{s:6:"module";s:5:"music";}'),
('we7:module_setting:userapi:1', 'a:1:{s:6:"module";s:7:"userapi";}'),
('we7:module_setting:recharge:1', 'a:1:{s:6:"module";s:8:"recharge";}'),
('we7:module_setting:custom:1', 'a:1:{s:6:"module";s:6:"custom";}'),
('we7:module_setting:images:1', 'a:1:{s:6:"module";s:6:"images";}'),
('we7:module_setting:video:1', 'a:1:{s:6:"module";s:5:"video";}'),
('we7:module_setting:voice:1', 'a:1:{s:6:"module";s:5:"voice";}'),
('we7:module_setting:chats:1', 'a:1:{s:6:"module";s:5:"chats";}'),
('we7:module_setting:wxcard:1', 'a:1:{s:6:"module";s:6:"wxcard";}'),
('we7:module_setting:store:1', 'a:1:{s:6:"module";s:5:"store";}'),
('we7:module_setting:we7_wmall:1', 'a:1:{s:6:"module";s:9:"we7_wmall";}'),
('we7:stat_todaylock:1', 'a:1:{s:6:"expire";i:1676634869;}'),
('we7:unicount:1', 's:1:"1";'),
('checkupgrade:we7_wmall', 'a:1:{s:10:"lastupdate";i:1676627671;}'),
('we7:unimodules:1:1', 'a:13:{s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:5:"music";a:1:{s:4:"name";s:5:"music";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:5:"video";a:1:{s:4:"name";s:5:"video";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:5:"store";a:1:{s:4:"name";s:5:"store";}s:9:"we7_wmall";a:1:{s:4:"name";s:9:"we7_wmall";}}'),
('we7_wmall:1:task:lock:60', 'a:1:{s:9:"starttime";i:1676627671;}'),
('we7_wmall:1:task:lock:120', 'a:1:{s:9:"starttime";i:1676627671;}'),
('itime', 'i:0;'),
('we7_wmall:1:task:lock:300', 'a:1:{s:9:"starttime";i:1676627671;}'),
('we7_wmall:1:task:lock:3600', 'a:1:{s:9:"starttime";i:1676627671;}'),
('we7_wmall:1:task:lock:86400', 'a:1:{s:9:"starttime";i:1676627671;}'),
('we7_wmall:0:task:lock:7200', 'a:1:{s:9:"starttime";i:1676627671;}'),
('we7:uni_groups', 'a:1:{i:1;a:12:{s:2:"id";s:1:"1";s:9:"owner_uid";s:1:"0";s:4:"name";s:18:"体验套餐服务";s:7:"modules";a:1:{i:0;s:9:"we7_wmall";}s:9:"templates";a:0:{}s:7:"uniacid";s:1:"0";s:3:"uid";s:1:"0";s:6:"aliapp";a:0:{}s:5:"xzapp";a:0:{}s:8:"phoneapp";a:0:{}s:6:"webapp";a:0:{}s:5:"wxapp";a:0:{}}}'),
('we7:unimodules:0:', 'a:13:{s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:5:"music";a:1:{s:4:"name";s:5:"music";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:5:"video";a:1:{s:4:"name";s:5:"video";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:5:"store";a:1:{s:4:"name";s:5:"store";}s:9:"we7_wmall";a:1:{s:4:"name";s:9:"we7_wmall";}}'),
('we7:last_account:E2clF', 'i:1;'),
('we7:last_account:T0d0b', 'i:1;'),
('we7:last_account:jH9HW', 'i:1;'),
('we7_wmall:deliveryers:1:0', 'a:0:{}'),
('we7:last_account:aexkb', 'i:1;'),
('we7:last_account:cqB3l', 'i:1;'),
('we7:last_account:UwfzG', 'i:1;');

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cron`
--

CREATE TABLE IF NOT EXISTS `ims_core_cron` (
  `id` int(10) unsigned NOT NULL,
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
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cron_record`
--

CREATE TABLE IF NOT EXISTS `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_job`
--

CREATE TABLE IF NOT EXISTS `ims_core_job` (
  `id` int(11) NOT NULL,
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
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_menu`
--

CREATE TABLE IF NOT EXISTS `ims_core_menu` (
  `id` int(10) unsigned NOT NULL,
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
  `icon` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_paylog`
--

CREATE TABLE IF NOT EXISTS `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL,
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
  `encrypt_code` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_performance`
--

CREATE TABLE IF NOT EXISTS `ims_core_performance` (
  `id` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_queue`
--

CREATE TABLE IF NOT EXISTS `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_refundlog`
--

CREATE TABLE IF NOT EXISTS `ims_core_refundlog` (
  `id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_resource`
--

CREATE TABLE IF NOT EXISTS `ims_core_resource` (
  `mid` int(11) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_sendsms_log`
--

CREATE TABLE IF NOT EXISTS `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_sessions`
--

CREATE TABLE IF NOT EXISTS `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_sessions`
--

INSERT INTO `ims_core_sessions` (`sid`, `uniacid`, `openid`, `data`, `expiretime`) VALUES
('692c4af0b57db1d8d44ac6c039d9db8c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"HY1F";i:1622163097;}', 1622166697),
('9c167540f1b82387b51f27594e73a926', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"XAfA";i:1622163097;}', 1622166697),
('d7878c0add02031b3e94e9635ac03583', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"jz88";i:1622162977;}', 1622166577),
('209bdb0d47b37db55623ef515f5088f8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Iuvk";i:1622162857;}', 1622166457),
('024617e685c370fc611f80897b2963d7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"oTR7";i:1622162737;}', 1622166337),
('7970f349be80e292da0e8c5fefd48da8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ka8A";i:1622162737;}', 1622166337),
('b8798604709fe6b3e662577d8fad305b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"G7A8";i:1622162617;}', 1622166217),
('426337a3b0987d7875f6af5f6b60c31b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"UZp3";i:1622162497;}', 1622166097),
('f3c59fae083154d895fcb3159c0fa916', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Im1M";i:1622162377;}', 1622165977),
('731fa4f7a814212880b55f9bab939d76', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"i9Z2";i:1622162377;}', 1622165977),
('04c4ae6880d51c1e298721d944a8b651', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"kLEi";i:1622162257;}', 1622165857),
('b64677ce97c2f6e06cf3db10f67ca50d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"k2rH";i:1622162137;}', 1622165737),
('9c2451b1b74f671167e7f28a9336fb86', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"eLg1";i:1622162017;}', 1622165617),
('0ccb340ad9da757b9ead3e2e926f708a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"XxxQ";i:1622162017;}', 1622165617),
('5940f67acf6b106906e15c071a794d25', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"e3F4";i:1622161897;}', 1622165497),
('b6dec0691a2a07ac6a4d560a4b8ae8ef', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"lfE9";i:1622161777;}', 1622165377),
('5708c871b92139c452e9775f17b84c9f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"fRI3";i:1622161657;}', 1622165257),
('45ee28de7d054d4b809c0954ac599f45', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"QKZj";i:1622161657;}', 1622165257),
('c70ee3b40222d6adef3a3bed3e5f8c27', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"IPRf";i:1622161537;}', 1622165137),
('d0d3584aa8b1fde8d24ef5684be2c410', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"xpqj";i:1622161420;}', 1622165020),
('4d7e10aca9eff0f032423288d594b7e9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"h9zE";i:1622161297;}', 1622164897),
('c9b063f5a202a4029c7353afa9004dab', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"vERu";i:1622161297;}', 1622164897),
('8d375075080b2ec3280bd9f718dcdf25', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"DP8X";i:1622161177;}', 1622164777),
('7d39a3ac99e9ea9ba2c3248ba5b42970', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"wvGz";i:1622161057;}', 1622164657),
('2521664469588c9b4739e0e3cde541d1', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"DpQr";i:1622160937;}', 1622164537),
('bbd15e8a7f2d2d0be38f726a8126c7a6', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"EOWE";i:1622160937;}', 1622164537),
('045e4b9393fb0bd250e9f7832f195847', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"eC1v";i:1622160817;}', 1622164417),
('36f0611224fb06c6fda61da4f1aca974', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hmnP";i:1622160697;}', 1622164297),
('968eac4b4ef2b357d3200acd7b0f1bca', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"oYcn";i:1622160577;}', 1622164177),
('8600967c7d76da2d6571c16d826da5f7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"njpl";i:1622160577;}', 1622164177),
('5ea203b34a4495384e61b23ffa71d433', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"jrww";i:1622160457;}', 1622164057),
('aca73f4986cc06b0d7f7c4c096cc6ec7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"PEa4";i:1622160337;}', 1622163937),
('77ca481e66e225efeec41c02af499117', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"eGev";i:1622160217;}', 1622163817),
('2d64d9273c837843fabcdb1cf7633506', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"xfEn";i:1622160217;}', 1622163817),
('26c01dedf4728bf0644ff5a004508458', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"aMXA";i:1622160097;}', 1622163697),
('4788d74ecc45bedf1e3f39dd051fa336', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"rNTt";i:1622159977;}', 1622163577),
('26921e7cc4cad0823c1c33186e3c2c88', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"uFBf";i:1622159857;}', 1622163457),
('7947df9cd412f6aa04912d2e96619745', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KFME";i:1622159857;}', 1622163457),
('d7d62d3de84f6bc321c7b1a9ad7920c4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Ncx9";i:1622159737;}', 1622163337),
('9f375029e153d8bfeab68e37133eb664', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Inrv";i:1622159617;}', 1622163217),
('c5d02e3217626233206a3e8f114f2162', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"xJlV";i:1622159497;}', 1622163097),
('364b64258e4481dd39a0a64cadd71001', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"TcXw";i:1622159497;}', 1622163097),
('bb9af70997eb34ca000f64f87db15902', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RDsC";i:1622159377;}', 1622162977),
('62569f8df095242cc1407e00ee24056f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Sn6w";i:1622159257;}', 1622162857),
('efee3a154bc65996be853eca4b78f0f4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"mO8n";i:1622159137;}', 1622162737),
('03f5d1b3784f06b88a5751888cbfbf3e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"A6rM";i:1622159137;}', 1622162737),
('0beb8f22a35b22c3fdf2f9072931ba4a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"FZnz";i:1622159017;}', 1622162617),
('c74d115c8ab9df58bc51926123b771f4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"lu8B";i:1622158897;}', 1622162497),
('14947b999307efc4bac77d73e17d2773', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"YI8H";i:1622158777;}', 1622162377),
('00d1d8fe13b03834b946482e36e6c1f6', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"G17i";i:1622158777;}', 1622162377),
('b61aa5d1659b6468dbf75e148cd1ced4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RdWi";i:1622158657;}', 1622162257),
('becd3937e2b6c7307e3b8a40f0fe1f6d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"yhe2";i:1622158537;}', 1622162137),
('7b34ed49a68e2ec4fe9aed7e2b918a02', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"CNFT";i:1622158417;}', 1622162017),
('42e7908a52cdc1d58dca8c2ffb45b88c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"i2Su";i:1622158417;}', 1622162017),
('cdf32df45a4143a9af8156778aa0c871', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"HcF4";i:1622158297;}', 1622161897),
('9703b48aa214a1ddea008142c7db2b99', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qPPm";i:1622158177;}', 1622161777),
('782761d37669563d692fe1a700601ff1', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hMsA";i:1622158057;}', 1622161657),
('48af7686519a64b8d7e476b6dce3bb98', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"CCul";i:1622158057;}', 1622161657),
('d99180f0ab93dc153308a5a2be68bde4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ZOxa";i:1622157937;}', 1622161537),
('4490f50a1f84cf7d13eb2214ef52e73f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"wom6";i:1622157817;}', 1622161417),
('76f1509f0968fcda96baa3ffdcacecad', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"aaA4";i:1622157697;}', 1622161297),
('c9c72b5b581fb5b693c5a6b5ccd662cc', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"c717";i:1622157697;}', 1622161297),
('a46bf73629dda67b70dadb652af79bc3', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"mR7C";i:1622157577;}', 1622161177),
('6db94e4eb7746dfb718f29aeb32004ed', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Z2Lg";i:1622157457;}', 1622161057),
('b64b4ae3d195beb112bf819c89458f28', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"dNnV";i:1622157337;}', 1622160937),
('91a31a169c4218e8908a9098a4c17c13', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hokI";i:1622157337;}', 1622160937),
('c43016b76ff7abbbbc989cb66889d071', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"gv7U";i:1622157217;}', 1622160817),
('2eda8b3a5c3d58cb656b90a453709c32', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"cPwZ";i:1622157097;}', 1622160697),
('e7476f9828ffe15134009f5e5b49e957', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"MKnV";i:1622156977;}', 1622160577),
('ab1d943c1bec8dc5b0290f29d2680d15', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"m7Ta";i:1622156977;}', 1622160577),
('e9105074d566604c38dde3d4a8df8d63', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"tm4x";i:1622156857;}', 1622160457),
('bbd88bb788e53c98602c478a1767e9e7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"sH3F";i:1622156737;}', 1622160337),
('32808f07220c0ee7830032502085a37b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"dwK0";i:1622156617;}', 1622160217),
('e6af4c37b0b11cc19efde914be237305', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"uRu5";i:1622156617;}', 1622160217),
('aa83d696ce7d6163eeb2b7fcdee413da', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"JkOP";i:1622156497;}', 1622160097),
('b84af955dccfd1a7a766e75a35b823df', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"BX1K";i:1622156377;}', 1622159977),
('ee734cc6559b8e7ab403631d35c36136', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"eB0F";i:1622156257;}', 1622159857),
('c48c2589de495afea7cfdf35ccd6a0d4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qjAX";i:1622156257;}', 1622159857),
('d173cf0036e4557ff72aab265ee44df0', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"XywW";i:1622156137;}', 1622159737),
('a9ceb68d140f87d8590ddd678f7f6bf9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Uf4K";i:1622156017;}', 1622159617),
('c6148edf64aab66a35dae48e32b7f8d3', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"oHUI";i:1622155897;}', 1622159497),
('3562989d2b7d5de10a91ac3a044557bc', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"J4NH";i:1622155897;}', 1622159497),
('6c637f89ade643077c538b836a9e0b3f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"OfiF";i:1622155777;}', 1622159377),
('d105f9c6b4a1b68dc7c4400e1bc8361e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"XgG3";i:1622155657;}', 1622159257),
('b6cd0592efc3080e365f2ae2f0e82238', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"UsTn";i:1622155537;}', 1622159137),
('8d0ba8e31e7e60fec420930a5935ea1c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"BNbd";i:1622155537;}', 1622159137),
('a0b1b4872aa2146e3e77e120aabf2d8a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"x7Y0";i:1622155417;}', 1622159017),
('641d9fbab0f7f3258c6aa992aa930ea3', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Lzx2";i:1622155297;}', 1622158897),
('467a6a9a7fd2a102179c59d854cc02eb', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"So4o";i:1622155177;}', 1622158777),
('accb7033385f4b08a2974678a0c05c8b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"u4T1";i:1622155177;}', 1622158777),
('5b539de09810cbce6b3fe80cea4ec992', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"aO6o";i:1622155057;}', 1622158657),
('89cf8564f0183421d3838e1d032d012e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"z078";i:1622154937;}', 1622158537),
('ffcfe6827ad10d2ebc8a6e7aab7aeb44', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"EcZO";i:1622154817;}', 1622158417),
('48aeba740b278be75afa1b84591358bb', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"VK91";i:1622154817;}', 1622158417),
('e19f4bf0158af7048f723c7bd3983528', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"lzz4";i:1622154697;}', 1622158297),
('7f836ae619e010707f01f3ca7a84234a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"xCc7";i:1622154577;}', 1622158177),
('edfe3e16edc4776b0dc368282b75683f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KZln";i:1622154457;}', 1622158057),
('964bd86a1fbeaaf0ad87d3361718b11a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"QuJJ";i:1622154457;}', 1622158057),
('fe16921b5be028f138eb905e36e96d68', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"D88d";i:1622154337;}', 1622157937),
('4993f1060f0380547e2d98d97a150cce', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"QdX1";i:1622154217;}', 1622157817),
('0fd8637e47a83e6a14dcae18d7d149da', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"o8z8";i:1622154097;}', 1622157697),
('ca2499f2d679753969cecb1cf965160c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ufI3";i:1622154097;}', 1622157697),
('61216e8b8c0458690c77ad581f4da5ad', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"HMmn";i:1622153977;}', 1622157577),
('c9e4b5ac1e8035a605e2d6871aff4972', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"VVDT";i:1622153857;}', 1622157457),
('01bec70fc7196aabd6a77932c5edc334', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Fkj3";i:1622153737;}', 1622157337),
('6a438eb2bb887027a9bccc409aab2407', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"AY26";i:1622153737;}', 1622157337),
('2733a840d467a4d3563be5a69c1cc0aa', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"u94G";i:1622153617;}', 1622157217),
('fcf7c5fcc8e2cc1470891503c0752b89', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"slyk";i:1622153497;}', 1622157097),
('94294c835c61837e344be7764745ddf5', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"t02a";i:1622153377;}', 1622156977),
('5c3602acf38d280da500b205c44ca492', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hboq";i:1622153377;}', 1622156977),
('c5f3d55d82fcc5ad10c953ae45586fe2', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"BHZ8";i:1622153257;}', 1622156857),
('68481fa7ceb787be2a27448de84b8a46', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"huGt";i:1622153137;}', 1622156737),
('a12e64bed42631187cdcd35dcd6f8d55', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"CY2y";i:1622153017;}', 1622156617),
('6035226eee88a9b35ec2feb3bec938c1', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Iuuk";i:1622153017;}', 1622156617),
('b718373d5f9a88ac611dfe526af85077', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"f7jO";i:1622152897;}', 1622156497),
('ab02131ec274fc423c5345edbed05902', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"H17g";i:1622152777;}', 1622156377),
('b373b69c95dd1b434b50164b72e360b8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"d9yX";i:1622152657;}', 1622156257),
('28b858b1d74af04ee6b11d0ebd42503f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ZdOZ";i:1622152657;}', 1622156257),
('a8533a31dffdd75f696adbe2f0d508ab', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ep84";i:1622152537;}', 1622156137),
('95b676d515bafed44e7785043946eb61', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"oSD2";i:1622152417;}', 1622156017),
('e7984a1086392c4792b3b51e8dc31344', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"laro";i:1622152297;}', 1622155897),
('1dc5b31b5f5db7a9d62c8bcf9d519e67', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"D2Py";i:1622152297;}', 1622155897),
('09c7ee5515e000faace45bf831333682', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"YV15";i:1622152177;}', 1622155777),
('de0eb1fcf812fe63ee193d3cef6bf165', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Mt9Z";i:1622152057;}', 1622155657),
('d26cba7e52a2b7863397aef85d85349b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"A5Kd";i:1622151937;}', 1622155537),
('90bdcba1a07eea097538db6dfa69a0c0', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"YZoE";i:1622151937;}', 1622155537),
('4048cc808fc9d723edf504fe44130c77', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Dn4b";i:1622151817;}', 1622155417),
('39a65f298a2cb7af5f263272ae6ee728', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"lQ2x";i:1622151697;}', 1622155297),
('fa5c3173ec22fce795fc57f1520a021d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"bWwl";i:1622151577;}', 1622155177),
('888ba5f57916b09a2427424f13548a3b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"UlBz";i:1622151577;}', 1622155177),
('21e73add9057cb51d02c66234e76c4ab', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"T5HR";i:1622151457;}', 1622155057),
('ca6ee4ddde652a3acd2bc46547ab1715', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"m1eW";i:1622151337;}', 1622154937),
('5ec6ef04617e58c784e1a92330e73cb0', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RcvC";i:1622151217;}', 1622154817),
('a7b0fae5e0cf9cde90d6ac75ffc1f12d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"G0Zl";i:1622151217;}', 1622154817),
('74d9c3a25660e1800058a09b9408f052', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"vh05";i:1622151097;}', 1622154697),
('db2f7832241827a541a9d9bac9d38e7f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"FGk4";i:1622150977;}', 1622154577),
('033127e134c6786eab084a733107f3f5', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Zuei";i:1622150857;}', 1622154457),
('4c1b6d5e4e555578be4f40e62548a0b8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"t2hp";i:1622150857;}', 1622154457),
('a0aff6139c1081abbad9e71e105df1ca', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"gTVZ";i:1622150737;}', 1622154337),
('53d110aac7dc0cb3711c66fed68c136b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"VCHz";i:1622150617;}', 1622154217),
('c45db42abd4475056283c07760d053e6', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"W8pi";i:1622150497;}', 1622154097),
('8b3a2a9667f221b47a044c7a9a848474', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"QNk7";i:1622150497;}', 1622154097),
('b7df37addd57b3b2270f1a925618947c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RSNE";i:1622150377;}', 1622153977),
('3d997df1765d3bf4fa2104fae305c997', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"XUqK";i:1622150257;}', 1622153857),
('7ab9162309292c7fc18fe6bf22f6bb63', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ZZqq";i:1622150137;}', 1622153737),
('43127642027107f24aa2ed50d06e6b18', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"NmZW";i:1622150137;}', 1622153737),
('4db297c0d38c9496a0105cb62fd721c8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"g4qr";i:1622150017;}', 1622153617),
('69a235c9a14127f3e75b5eebad653562', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"oHnR";i:1622149897;}', 1622153497),
('7c601de7dc60cfe224d700d7ac545b1f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RQ0e";i:1622149777;}', 1622153377),
('f9fa4dfddecbc3a12afebadfbbdff6fe', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"dapQ";i:1622149777;}', 1622153377),
('8c6a7254e944d88c5e1686e15cfc0f66', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Nz3i";i:1622149657;}', 1622153257),
('061466b328ef139f26df84a0d38af4e7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"pa2s";i:1622149537;}', 1622153137),
('47d4d01eceda7bb0fe65f5c9b602a693', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"JFys";i:1622149417;}', 1622153017),
('33d93b147d8aab5f52f70e0489d5c7c0', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Rw7M";i:1622149417;}', 1622153017),
('6889a12864245eefcbc9eb9f2ab42720', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"In07";i:1622149297;}', 1622152897),
('b0cf543fb77cd337e250466947aaf51d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Qf4K";i:1622149177;}', 1622152777),
('fa323649c8f27170fc1934205fea4040', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"UQF7";i:1622149057;}', 1622152657),
('2a2f9d6f4c3a3e47853c42e8f8c05a6c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"SWoa";i:1622149057;}', 1622152657),
('ffb718c1867e69693b054ac46a00fdc6', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"W53c";i:1622148937;}', 1622152537),
('7144bdb724a434778f94c9c685ebdfe2', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KEkY";i:1622148817;}', 1622152417),
('e9ab109cf3cca6c765efba267cc1c6e2', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"T7Eq";i:1622148697;}', 1622152297),
('0602fecfd965a6022cfbdfe30c522f2e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hddG";i:1622148697;}', 1622152297),
('362c98b74cc639b0f48b7d717bad78b7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ujTE";i:1622148577;}', 1622152177),
('afc1f0412365422a12d3a6c1244f9609', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"f69I";i:1622148457;}', 1622152057),
('d5709aeaffa34d45d1ba2155ef4a55ef', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"EeWD";i:1622148337;}', 1622151937),
('6fb68272368b6feed9de278c420afc80', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Kj97";i:1622148337;}', 1622151937),
('aeb5869f74ffa10163998c3611ec619a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"MomW";i:1622148217;}', 1622151817),
('fc4d92d4ed7c51b017ee7f4669fdf73d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"v4D2";i:1622148097;}', 1622151697),
('a892d4442cb0280f386b554404964b8d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"tfeP";i:1622147977;}', 1622151577),
('b2a57b7d37d865044abec6b533e014c5', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"aOFK";i:1622147977;}', 1622151577),
('21e9556a86f64463ca4db2746d62bce9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"DR5P";i:1622147917;}', 1622151517),
('0e99474fc4d72f26f23c6f6a931698d5', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"jCoE";i:1622147797;}', 1622151397),
('6af389225d9859c65899b2320cc180de', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RiNL";i:1622147677;}', 1622151277),
('5348c1f997163f0f0fc95a5800be2aad', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KZst";i:1622147677;}', 1622151277),
('c230ee9fb0c29cf3a7616bba4dfde2ea', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"XTY8";i:1622147557;}', 1622151157),
('7f13db2765c02964774a3e7e77fb6eda', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"c7sr";i:1622147437;}', 1622151037),
('8654c89daa6db2a955906f5f297780d6', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"AD2S";i:1622147377;}', 1622150977),
('91eea86bec666cdf1552a54ca1556676', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"r1mi";i:1622147317;}', 1622150917),
('ee313217df14aa36d74bd91d967a8ed7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"bTc0";i:1622147257;}', 1622150857),
('844823eba687073f936be7137013853a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"O1z8";i:1622147137;}', 1622150737),
('2e660b1a72bf278812ec07cc61541e61', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"l99h";i:1622147017;}', 1622150617),
('747771a52d0f1882b3f9a8b8fe71b831', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Hsg6";i:1622146957;}', 1622150557),
('51e1e9d8cc2919e97853dee218db1dd4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"w5Zm";i:1622146897;}', 1622150497),
('31e8cfc101a4f57c5f6c0a113d1c9944', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Pf4j";i:1622146777;}', 1622150377),
('7ec00671c25b8b18a9593ab7848f3d1c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"mm1w";i:1622146657;}', 1622150257),
('7b3d2b2c4678f9dcf8fb9923b369e1f4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"oi51";i:1622146597;}', 1622150197),
('f227ed6309360df44997c33b8006be6f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"eZ6x";i:1622146537;}', 1622150137),
('c5371d9129c54ef68b535a17139c130c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Fps6";i:1622146417;}', 1622150017),
('6667253cef7f4fa8339dce7a56cc8567', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RnNO";i:1622146297;}', 1622149897),
('4356a2fb6b3e05ff83e09746f56a4226', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"uiZd";i:1622146237;}', 1622149837),
('3de37018582c0ecba35e8b530d5dbe3f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"cc16";i:1622146177;}', 1622149777),
('26fc54f04798b93e6f0ede46ceee1d23', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"AF6q";i:1622146056;}', 1622149656),
('daee66487471a219dc57149cf28dfbba', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"x400";i:1622145937;}', 1622149537),
('0eedee0c9f8f8c26149a42e8392c9541', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"T7uH";i:1622145877;}', 1622149477),
('426986b723497ef7745cc84413218cc8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"U88m";i:1622145817;}', 1622149417),
('c6f77c7f433699ae44416e02db7b0957', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"cVzk";i:1622145697;}', 1622149297),
('e75bebdd6e440cf32b7181bb48f9cea5', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"NRB9";i:1622145577;}', 1622149177),
('22fb520c86bb2769934fdee866013711', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"w38b";i:1622145517;}', 1622149117),
('038e7d7e8fdf50e6118128d5b3bd8798', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"V2e9";i:1622145457;}', 1622149057),
('3409806d54c2d9c92b12bd2973070095', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"je2h";i:1622145337;}', 1622148937),
('a0310e96c10ca06464e6a901be439b32', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Gen1";i:1622145216;}', 1622148816),
('84a7b494b81601429a7348dd8ed94fd7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"lh8v";i:1622145157;}', 1622148757),
('591fab585d34953758c067de01671587', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"IWoZ";i:1622145096;}', 1622148696),
('de94f88f55dd917bac8b4b927c004f97', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"cEHZ";i:1622144977;}', 1622148577),
('212835333acfa5bd6e9eb07b1c4b4681', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"MAAA";i:1622144857;}', 1622148457),
('b4eab7b1542e72e7ee97387f4a6b48fd', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"OZ0P";i:1622144797;}', 1622148397),
('73ff5f5431d2b1454bb600bf242d93ca', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"BSFF";i:1622144736;}', 1622148336),
('f11616bddd629fbb72693e0c18017ee8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Gx22";i:1622144617;}', 1622148217),
('a8bad671078d9213446f93af30a99fcf', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ryqm";i:1622144497;}', 1622148097),
('ffce5dba9d3d1b2049bc2c1d54676322', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"QXXE";i:1622144436;}', 1622148036),
('da2dcd6f04bf470c452092aa08b8254c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"HasU";i:1622144376;}', 1622147976),
('985e05dc2cd5b81f9c2bbc9a52cf918e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"fZ9R";i:1622144256;}', 1622147856),
('9c40f5c5fc8de1ffd494afe4c93fc081', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"k2HT";i:1622144136;}', 1622147736),
('a94ec2889478ae036e412e3a5dd7c468', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"nRm4";i:1622144076;}', 1622147676),
('4328f39a529e19c5c673ad8a83bbbf65', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"oF8v";i:1622144016;}', 1622147616),
('147277fc0f8db1331779d8739220edad', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"h9Wm";i:1622143896;}', 1622147496),
('5af30b039c3594e3577ec146d7a825a7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hu57";i:1622143776;}', 1622147376),
('3c530d25274b169a242724d7a294075b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"j3s1";i:1622143717;}', 1622147317),
('23c9c201f21d209528e43bf076eadd53', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"l955";i:1622143656;}', 1622147256),
('b71fc956f5f86d9c7212e2a52b772fbd', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"uFcc";i:1622143536;}', 1622147136),
('802d8ffde39902c3c4f72563944101c4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Vh6C";i:1622143416;}', 1622147016),
('9818edd791e0204203b008b94a338277', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"JMeC";i:1622143356;}', 1622146956),
('2f0144478b7166998430145ea259a2c9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Nmc4";i:1622143296;}', 1622146896),
('cf90e44858058dec30f08f8b7d980b6a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"JuRS";i:1622143176;}', 1622146776),
('8111fa2589373dd8b2352ea3ca08d054', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KG3L";i:1622143056;}', 1622146656),
('c71623660f92cf53dd5e30465435442c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"fy8y";i:1622142996;}', 1622146596),
('a2380f0f39a95199287b4f3b3484e972', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"lKRZ";i:1622142936;}', 1622146536),
('cb8dfdd60b2f4ad55479cda4ad808286', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qcjm";i:1622142816;}', 1622146416),
('17c579fd9c66b9180b7f3ae61a5e8ea9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"T9kP";i:1622142696;}', 1622146296),
('a5271fc78454f3ef1bbac0741bf9a8fb', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"VbaL";i:1622142636;}', 1622146236),
('09af1412a760220aa5ddd706175e8a20', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"FE9M";i:1622142576;}', 1622146176),
('3380715184deff1812c3c0d0aa44886b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"zubz";i:1622142456;}', 1622146056),
('1c83e4f2d6f81b9de54341403c672c63', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Tb7b";i:1622142336;}', 1622145936),
('29c5fb430b04b1c6ac1f7235cf2c7a6a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"rKx4";i:1622142276;}', 1622145876),
('5690d001937bfa67da305f9f8684f7e6', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"bgnl";i:1622142216;}', 1622145816),
('cbfced3b164d0bf604348604162c877a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"iZ2C";i:1622142096;}', 1622145696),
('e925d91bee6e1cdf679f39bead72505d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"JnZY";i:1622141976;}', 1622145576),
('97f243bbf739a9657f3b565ca5d773b3', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"D9B2";i:1622141916;}', 1622145516),
('3aa9d5bb775cfacde5fc4dedb6233493', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ydzS";i:1622141856;}', 1622145456),
('ac67bb1c204a0be0e67fda9d0468a43a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"dYl1";i:1622141736;}', 1622145336),
('d09ba58f45cf5a7cc2af79ee6441d43c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"EkXX";i:1622141616;}', 1622145216),
('4b1a6f696f01d7db93944da25fbbe4cc', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"L4OO";i:1622141556;}', 1622145156),
('f40b1a01f7e6960d7b756ad41b5214aa', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"M1W5";i:1622141496;}', 1622145096),
('3b45594a986286e1dc4549c124650381', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ynll";i:1622141376;}', 1622144976),
('2985fa9d3affdb13536ee097d2d4cd1f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"sP29";i:1622141256;}', 1622144856),
('0fc0bbdcdcf21f2a33912ad07bb9a4e2', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"wDwH";i:1622141196;}', 1622144796),
('170afff1ab2a9b78424426b3dbe24084', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"H0la";i:1622141136;}', 1622144736),
('2da8600af44f420bcf39901a75186bea', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"jA53";i:1622141016;}', 1622144616),
('e3970bb615b536b48d1a3830559e946d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"r88B";i:1622140896;}', 1622144496),
('610c975641bb2b5c4a8ac345bfda7c6c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"BBsl";i:1622140836;}', 1622144436),
('27e1840c8afab597bf728ba31e4c54f9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"BMWX";i:1622140776;}', 1622144376),
('1d8b32fad702c1fec2a599cfb4e313c6', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"YgQu";i:1622140656;}', 1622144256),
('10414e7f90e9f39b03a468056a3eac9d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Att6";i:1622140536;}', 1622144136),
('ad5717ef155cfd7ce2fa66059aac9856', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"DmwV";i:1622140476;}', 1622144076),
('94f060dd3d901c624bacd04088f4c6bc', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"b2Ok";i:1622140416;}', 1622144016),
('edb2c7d4a7466c7a906e88f66b774880', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Qu55";i:1622140296;}', 1622143896),
('31d2a5574b9c405d9eaba8010da6cca8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qXIu";i:1622140176;}', 1622143776),
('70d79c4082be44209672d2bcf480180f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"V7ru";i:1622140116;}', 1622143716),
('f271e56be59f13c7159459af62f718c1', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"tEeF";i:1622140056;}', 1622143656),
('1fb618e52528870479117760967d67b3', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"br8R";i:1622139936;}', 1622143536),
('fbab2e716e6a7b142c75ce559f638d94', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"S701";i:1622139816;}', 1622143416),
('f1a5642882bc75eb1c33665294aefe10', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"texG";i:1622139756;}', 1622143356),
('9a111967d8e5c344cda6f391c3b79529', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"yTaO";i:1622139696;}', 1622143296),
('d328aad62d2c68b0b0ce005a6e43d95a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"bbQw";i:1622139576;}', 1622143176),
('0e94b5b1bfcd09bd6575f0596d2e1b1b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"w6z8";i:1622139456;}', 1622143056),
('7b234d54bb60a9f9c0539c6e72a634f7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"LUkj";i:1622139396;}', 1622142996),
('e3a53448ff8eae646e9ff4a8963d7737', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"VLl3";i:1622139336;}', 1622142936),
('afcfac3c84fbf02ce90dbac5283a7122', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"vKc2";i:1622139216;}', 1622142816),
('e6d9d826bbf2026d4ae7b2b662ff2ea3', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"D4at";i:1622139096;}', 1622142696),
('f56309de1d6ccc119ffc115e35a6df48', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"g2P2";i:1622139036;}', 1622142636),
('ee20ced24522da68581f75a344f7d512', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"g1qC";i:1622138976;}', 1622142576),
('d87c7542be8e7c30c8f790507bc95751', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"nSbu";i:1622138856;}', 1622142456),
('b992387e02a5dcc77206cbe3e48d4feb', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"dRBb";i:1622138736;}', 1622142336),
('f5a34e055b551e903d02f94a4bc5391b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"nwGI";i:1622138676;}', 1622142276),
('a99bc7c7d844e8d7a28f90576229fc44', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"O3K4";i:1622138616;}', 1622142216),
('6d19eb7565b3a7ce841c041770e0438c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"C9U0";i:1622138496;}', 1622142096),
('69e9069d0ee022b47df8a2673c349cf7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"z3Am";i:1622138376;}', 1622141976),
('b632ea7ee5c02e4b4333f758ff6c6b9b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"zVzd";i:1622138316;}', 1622141916),
('bb7e9472a500cb277d27b34741d89b30', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"EGOG";i:1622138256;}', 1622141856),
('3670407cf1807000ee54204ccfc176ed', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"FynV";i:1622138136;}', 1622141736),
('1e8618b7e3f97d2bb371755050a54b13', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"jVVr";i:1622138016;}', 1622141616),
('148267065616d8798fc701014f2cec48', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Qxgx";i:1622137956;}', 1622141556),
('96791bae0bdcace21409fe4486877d01', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"u1g8";i:1622137896;}', 1622141496),
('08c0c3cb60cb57f3240c0d032eea6637', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RJDW";i:1622137776;}', 1622141376),
('128a68bedc421caf9a15e35fcccd94e4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"gOG5";i:1622137656;}', 1622141256),
('51b1432c3e2fc45572a7a3088c97722e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"H22f";i:1622137596;}', 1622141196),
('e6cf4a06de467d906db8bb952fcd9a3d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"bctz";i:1622137536;}', 1622141136),
('db3909fe9d060920f364d8a3f13a7e07', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Ku8b";i:1622137416;}', 1622141016),
('63686d27b024340993786489cbad87c9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Ak2a";i:1622137296;}', 1622140896),
('898f1002b94a4759fa3e4d084577e938', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"gf8J";i:1622137236;}', 1622140836),
('04cac4b1934f4a0689da81e76c969755', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Vu1u";i:1622137176;}', 1622140776),
('6911cb92295ed0dfdcbe5ebbbc72eb23', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"h9rh";i:1622137056;}', 1622140656),
('f51aaae2d5f5318e734b42327af3069d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"NTus";i:1622136936;}', 1622140536),
('e9a4850d4d0b7a095b89da03a27f9a18', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qlxr";i:1622136876;}', 1622140476),
('b80a0813fa976f8c4583c7f19cd4319b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"vz1M";i:1622136816;}', 1622140416),
('e7787e3e8c3501fe0bf2c82db6232335', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Oz4Q";i:1622136696;}', 1622140296),
('d5fa5fd6b97ebb99d6f308cc45348564', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"bjzD";i:1622136576;}', 1622140176),
('79b1dbe3df3fba9978117df83089fb7d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"yYaS";i:1622136516;}', 1622140116),
('649220b163cc4467f6520ff8d4a83872', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"r73u";i:1622136456;}', 1622140056),
('34be7d53bb3b1bee79ffe1f150afd7c7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"IwWw";i:1622136336;}', 1622139936),
('af7daabcfa15a2326405f9bcaea6fb20', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"WqUI";i:1622136216;}', 1622139816),
('c28ef35e7aa19f3f870c665e4036536d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"U3i0";i:1622136156;}', 1622139756),
('974636119ebe7cf1cceb7328f76835bb', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"z1he";i:1622136096;}', 1622139696),
('c67ac25594e0d5e569460a9273094191', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"sqng";i:1622135976;}', 1622139576),
('f9499808e3685db48ecb14075067019f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"o47c";i:1622135856;}', 1622139456),
('18875c6486fbcff0e7999dd266f60a65', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"OFc3";i:1622135796;}', 1622139396),
('e217b9e8bf2947dd445c1452250bc277', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"x92j";i:1622135736;}', 1622139336),
('853036dfb7127f2f0955a2c61e7638b4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"i0cA";i:1622135616;}', 1622139216),
('5b50ea1b2cba96b988a527a86b4ac74b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"eYYk";i:1622135497;}', 1622139097),
('9b896462bbd797e3588eb1db7c52f084', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"kB5Z";i:1622135436;}', 1622139036),
('1138302ea6ac4481f86fee94a76ae3b9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"rz1E";i:1622135436;}', 1622139036),
('06ea2563d2aa0678b53911dfcff12891', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"v0WD";i:1622135316;}', 1622138916),
('b731ff76540b60b9db221ef4db1a08bd', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"t65z";i:1622135196;}', 1622138796),
('4a001b10d8338a3a85360ebd9cb1e8ae', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"DWDB";i:1622135076;}', 1622138676),
('5124d7985141be4d6257415c6f397fea', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"IBGC";i:1622131476;}', 1622135076),
('203e97902ffb9e2eccdf0abc3075d88a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ED2o";i:1622131476;}', 1622135076),
('cefcd825fb76bf1ed8c506b14e4de852', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Ac8e";i:1622131596;}', 1622135196),
('3731d3309ba481e4bc93897e22289c13', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"XoG9";i:1622131716;}', 1622135316),
('c2f0443ab339e56de105ad23057640ab', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"LU7H";i:1622131837;}', 1622135437),
('85de8ca8c8142f8a3cb276ee27900e08', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"CpSP";i:1622131837;}', 1622135437),
('3d6800f2b01f2073762b3117db3e52ce', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"zFkc";i:1622131956;}', 1622135556),
('9a1a4b969666173dc6922306130f991f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"sv2Z";i:1622132076;}', 1622135676),
('136d46613eb9d01b08be382e65dd9db6', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Iql6";i:1622132196;}', 1622135796),
('c40b4f2c023c7b53ece05f491b8d1dea', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"RcHc";i:1622132196;}', 1622135796),
('bfbff7e0260a1e55b6825843d2b7577e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"EaSe";i:1622132316;}', 1622135916),
('242a62d8205eda52ad7da4a9ba4172b4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"FqVr";i:1622132436;}', 1622136036),
('e02864b5543f3583e6a16a904f67117e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"vbOm";i:1622132556;}', 1622136156),
('cf03365c891b5cf067930765f4266794', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"nuM9";i:1622132556;}', 1622136156),
('b5e800c4137fc4c3790052dbc41f4edd', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Muzn";i:1622132676;}', 1622136276),
('815eb1f47a7eba1711353fdac4686a58', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"u0FR";i:1622132797;}', 1622136397),
('8c67c715c89e36dcd15e1359f715a96e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"tH8e";i:1622132916;}', 1622136516),
('2370279b94793f83d8a8e8c571c6be54', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"lBkz";i:1622132916;}', 1622136516),
('42746dbd3339c24886f4d2a8cc307e1c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"X9I7";i:1622133036;}', 1622136636),
('891c3b3798d85f96eb8a0dd1f858b1b0', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"p5Be";i:1622133156;}', 1622136756),
('036d8d288b7cc2c7763c46bf1d412bc9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ALYS";i:1622133276;}', 1622136876),
('e6cb38a9b33bcf3e7b020cbf88d39625', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"V29A";i:1622133276;}', 1622136876),
('78e1a3699ed73fa2b22a8ed8f83eb41b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"xa92";i:1622133396;}', 1622136996),
('073b57e99e6e349ee53c1dee58519121', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"rwMu";i:1622133516;}', 1622137116),
('378efe4dea07b77eab42dde358154ce2', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"B0MR";i:1622133636;}', 1622137236),
('6db140d0102a29798f95667c5deb6566', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"VglX";i:1622133636;}', 1622137236),
('c504a49b43e2b524d22e2d3e2e249cf9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"y8Go";i:1622133757;}', 1622137357),
('2c38a93e2709bf4c2a68bccc307249e7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"T8YD";i:1622133876;}', 1622137476),
('757936932085ebd75c4747f653228f12', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"BrRr";i:1622133996;}', 1622137596),
('683f5619ad533a776f3d52f5fbab784c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Qd2F";i:1622133996;}', 1622137596),
('cbcd6252e54efe1ba3b8ef7ff05151ae', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"gg45";i:1622134116;}', 1622137716),
('04cfc69af210e80a8b7795612eee0322', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qLC5";i:1622134236;}', 1622137836),
('aa5988af034521ca1d7573b29110c82c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Wib3";i:1622134356;}', 1622137956),
('de71a9bad1d19dab7483ac2f437bc81d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"oobG";i:1622134356;}', 1622137956),
('be6ebc5b5a2244c93876a8efdb47247f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qpba";i:1622134476;}', 1622138076),
('37874d4e353ef25cf575f31b902cf3f1', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"MRbu";i:1622134596;}', 1622138196),
('7be0700fdf09b2c7dfd479cbdacf239c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"NJgz";i:1622134716;}', 1622138316),
('0fb483ec80eacceffe68572d200f9696', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"l7Lm";i:1622134716;}', 1622138316),
('0df5f1dc93c8a6d59676e346e02427f5', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"z05N";i:1622134836;}', 1622138436),
('0b9990132dcb1eb8491be24687cda826', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"dR4w";i:1622134956;}', 1622138556),
('01e1845e3a6ff21bc0864b09de81b90d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"J93H";i:1622135076;}', 1622138676),
('e5209f7dae5728d4d671164d80cc5d42', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"to5A";i:1622163217;}', 1622166817),
('d45c1dbdd009fb95d59f967ea7c74af1', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Cb9i";i:1622163337;}', 1622166937),
('e852cda4f4661e5359d341f4ea9a2458', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"tB28";i:1622163457;}', 1622167057),
('dc693f40b7f64175c8082e705ac6910c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"UCUu";i:1622163457;}', 1622167057),
('6ee99713ec9cbba51d6ea80a5ed01401', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"z398";i:1622163577;}', 1622167177),
('a26153d39856b18ba27d086d5e53848a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"SzPB";i:1622163697;}', 1622167297),
('37df08b5386a4a9d45233bd5f09da41d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"wqcc";i:1622163817;}', 1622167417),
('5ee5778a6b2b3a65095ec1aeee745e34', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ckM8";i:1622163817;}', 1622167417),
('d1c602ca832feb0af948f2a40864be83', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"aqZQ";i:1622163937;}', 1622167537),
('17b83783defe21c5611e1b023c1b9b8f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"vBaQ";i:1622164057;}', 1622167657),
('a671edf28ff63bf2203ceee0a06b30c7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"OLKO";i:1622164179;}', 1622167779),
('1572af22ad81c65e09bd0ee7d92c5e5f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"z7u2";i:1622164179;}', 1622167779),
('988fe852125a4bb21cf161a9e150b0fb', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"nfof";i:1622164297;}', 1622167897),
('b609ad7353048794624022872260209c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ZXYz";i:1622164417;}', 1622168017),
('944bab92b99f041d9bc8ce86221ab13c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"lZl4";i:1622164537;}', 1622168137),
('24abfaf3cf74861f63a9d40c3dfc6fc1', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"t5ga";i:1622164537;}', 1622168137),
('f73faf3b6d6e157e96b44948db59734c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hZN2";i:1622164657;}', 1622168257),
('8008fd989792931921fb9a5a3fcfecf7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"yeFy";i:1622164777;}', 1622168377),
('bf96d0f00794cabf18b1c4e908507420', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"xxWI";i:1622164897;}', 1622168497),
('976e1b5167090b31e3422b2c2ddb9d2f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"wE2k";i:1622164897;}', 1622168497);
INSERT INTO `ims_core_sessions` (`sid`, `uniacid`, `openid`, `data`, `expiretime`) VALUES
('d564781e775e3a7f114f3197d29c96e6', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"LL0Y";i:1622165017;}', 1622168617),
('d165397bfef4318a4d17c553248e87e3', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Ueop";i:1622165137;}', 1622168737),
('18e221aa107417ffd090976f88bd14ac', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"C4OD";i:1622165257;}', 1622168857),
('04bbbc023976d57d73140ff0cb6f51dd', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"XQz3";i:1622165257;}', 1622168857),
('7ca78562a0d3c26c2456c21ff1aaace3', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"V31f";i:1622165377;}', 1622168977),
('3c9fb8f89c4fd3ac8460198c222a5b69', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Ud8D";i:1622165497;}', 1622169097),
('25a90e277b4502f6334236e7335f8df6', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"tqb7";i:1622165617;}', 1622169217),
('fb3e98f4bcc8b5ba3908a7ec1c1e064c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Fggs";i:1622165617;}', 1622169217),
('f65ea77f11c9f3ad3cf93df71e56b646', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Yobg";i:1622165737;}', 1622169337),
('f7f72cde7e098da897cf225a439aa68c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"I44R";i:1622165857;}', 1622169457),
('3ca24463bd891107bafffcddf1e86320', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"j3g3";i:1622165977;}', 1622169577),
('37ddc28afa7f8e0621353a66dc5fd441', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Rpp6";i:1622165977;}', 1622169577),
('588d514ccf88ea6d124a309b21209fa9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ZuIf";i:1622166097;}', 1622169697),
('249a7eba1e796befdc085884da76a714', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"I0YU";i:1622166217;}', 1622169817),
('bb21dc8fc92584a8270d6b4c00dd4f92', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"S9me";i:1622166337;}', 1622169937),
('89410dc9a3ad8d7183725b5b0711efbe', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Nhh9";i:1622166337;}', 1622169937),
('40c14b2b6e2f0da5ccfc6d66af3420ea', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"obb0";i:1622166457;}', 1622170057),
('e674f5c71af85a0f6677bacda2a873f8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qOZD";i:1622166577;}', 1622170177),
('c42f0df9dbbd49f77d2ee6e9996b2f5a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"wNiL";i:1622166697;}', 1622170297),
('eb7275782e989a6cb3a086f76593618e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"sRo1";i:1622166697;}', 1622170297),
('f5ee5f60e09be681b4ab5ce0de33a619', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"eMrp";i:1622166817;}', 1622170417),
('c166eb3f1e1950f18b96bb7da7be7b56', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"utzQ";i:1622166937;}', 1622170537),
('b2c6039703ef229bdcd0b56a19dbdb0b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Mo60";i:1622167057;}', 1622170657),
('dd055581d4ea7a952d340d138c1fa60a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"YTMX";i:1622167057;}', 1622170657),
('509c6645facc897623c00285365d6e95', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"U1KM";i:1622167177;}', 1622170777),
('d0f3a1525388adf2dcd9423f6c788fc5', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"edqZ";i:1622167297;}', 1622170897),
('69599df0d0dc8338bd9a0ee0154bbec2', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"tH3D";i:1622167417;}', 1622171017),
('e33876db60b536eff80d56254c0c28ad', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"uect";i:1622167417;}', 1622171017),
('af97fecffa0b59f84ef87c2ce246972f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Hs62";i:1622167537;}', 1622171137),
('a1714294369dcced3688a2bb325ad3d4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ac87";i:1622167657;}', 1622171257),
('e2140a50b10f18dc9225c15447e87dfe', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"p9b6";i:1622167777;}', 1622171377),
('1618497e7d45abc1e2be1ebde062be42', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"X7vm";i:1622167777;}', 1622171377),
('890d9e0a15b0b7dec0371787786fee6f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"m92x";i:1622167897;}', 1622171497),
('b2c8976fa257b4710c870a909bd517e8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"M0nO";i:1622168017;}', 1622171617),
('20251ec0ea3fade4071cdd046f2a7c61', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"phGg";i:1622168137;}', 1622171737),
('b9add2287325597b4d402c42857aa334', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"DzZk";i:1622168137;}', 1622171737),
('0baa8236f4cb3582db96a7a2ea831ed2', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"fuUu";i:1622168257;}', 1622171857),
('aecd3fdcc3ba94e39fa09e608e819566', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"dTyt";i:1622168377;}', 1622171977),
('a18d36a0175f43a81c963f42d2e8c44b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"uZQA";i:1622168497;}', 1622172097),
('c7a83a2a58cad909cb6f9c1b0b108e17', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"mZea";i:1622168497;}', 1622172097),
('1f1f3f24b0b8a1482bebfd662801504f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"E80D";i:1622168617;}', 1622172217),
('4ccb90ca70666bb4bb5c2f9bf9ae8635', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"QQ71";i:1622168737;}', 1622172337),
('b82d0ca015a60f038175015dd297a4cb', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"cY21";i:1622168857;}', 1622172457),
('fc5eaec847e96cc48aecd73ed1b0ce8c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Jz8J";i:1622168857;}', 1622172457),
('3540595ba553484e5ffa1c4140c8b22f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"z2uy";i:1622168977;}', 1622172577),
('d6ede96664c7020ff8082db21458b7be', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"jfea";i:1622169097;}', 1622172697),
('1a97bd0d92752d99bd381e4361559aa8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"vcCM";i:1622169217;}', 1622172817),
('a859618b12ac9c91f10f0923ab62754e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"TUji";i:1622169217;}', 1622172817),
('030700468dd7ec64111e48ace2164617', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KTKy";i:1622169337;}', 1622172937),
('b817af5e9d5ae069d03e1aa08e951ebe', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"BCmx";i:1622169457;}', 1622173057),
('d80520b173fe371d0292609ee74f967b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"BqTd";i:1622169577;}', 1622173177),
('6246e8d997f7de7815dff55d9834c596', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"pC43";i:1622169577;}', 1622173177),
('46b4030a7395e48b0d614c2e658bf7ea', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"B55k";i:1622169697;}', 1622173297),
('05430cb56cda79eb1ee5f67415f43c7b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"vEMV";i:1622169817;}', 1622173417),
('e54180a5a91026203966d73f4ce70f62', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"gVuq";i:1622169937;}', 1622173537),
('9b785193610a58317db7dca93e419c84', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Xt7Z";i:1622169937;}', 1622173537),
('94d01dea1f11c70cd205e5e5c62eee5e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"n5In";i:1622170057;}', 1622173657),
('ea906266772a67d26995b9d72f0359c1', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"SMJM";i:1622170177;}', 1622173777),
('da7495c6fdf6c3f8227390643421982b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"aNxP";i:1622170297;}', 1622173897),
('f11057a420a3d332f932196ca972ed61', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Q0ea";i:1622170297;}', 1622173897),
('096aa387c659d09f865a0032773236fc', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"zzI2";i:1622170417;}', 1622174017),
('43ab5091fa8817978a31fc8f6de3dee2', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"rJ9V";i:1622170537;}', 1622174137),
('bfb2c4956d5a7b0af369604cb568332a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Q2hy";i:1622170657;}', 1622174257),
('491053274e4ce6b8a029f525dd201db9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"P0I1";i:1622170657;}', 1622174257),
('f7978bc91a26dab7f141534e77e009cd', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"eBt6";i:1622170777;}', 1622174377),
('942539b3e16fcb2dc95f1a56b44df4f8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"M2Po";i:1622170897;}', 1622174497),
('ea5cd05bba103ca5c0f368776e41fd76', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"gVVE";i:1622171017;}', 1622174617),
('ada3a55c5b103130564c789957f2d8d5', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"g9vV";i:1622171017;}', 1622174617),
('1d330f78be7eb1f0156bfef9346e3a3e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Cdz3";i:1622171137;}', 1622174737),
('f7ec223f744514a3a7e5ebc820ec0c03', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Xq6y";i:1622171257;}', 1622174857),
('29cfb63fc0d55a2227da37cdb775d5eb', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ZtR0";i:1622171377;}', 1622174977),
('752aaeabfd84596314c1cf2c0af7123b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"GqMI";i:1622171377;}', 1622174977),
('0b69675deb1c0179d381b7715fe81946', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ZGNz";i:1622171497;}', 1622175097),
('9abde8e71497133d4a5464fd30f4b748', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"e5vm";i:1622171617;}', 1622175217),
('40b56b8b352d8db99087c06e7ebae50c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"U9kT";i:1622171737;}', 1622175337),
('1ed636aea3fd7c52d5f5350b84ef174a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"LVdm";i:1622171737;}', 1622175337),
('94b6ffefd5415f62780080b9f24d8d51', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Lk1K";i:1622171857;}', 1622175457),
('c9ed30bf62792611c5454d8094124de4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Vbgp";i:1622171977;}', 1622175577),
('05bfb7e32a59542daf9b06595e24b643', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"b1KQ";i:1622172097;}', 1622175697),
('bbe256fdd399d26a35d47fc0ce7e979c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"p19T";i:1622172097;}', 1622175697),
('1ab61ae5f57a07601502081fb8633363', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"GZTM";i:1622172217;}', 1622175817),
('ad9253dd13d6740145b862d8501b1610', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"VX9U";i:1622172337;}', 1622175937),
('e7e277b317787a0769e287fae4c537f4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"yLGv";i:1622172457;}', 1622176057),
('c6fab7a5d243601abed42f0fed3896f0', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"w2J5";i:1622172457;}', 1622176057),
('d0bb0e18b68673d4406e33078446956e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ApSj";i:1622172577;}', 1622176177),
('e819ee1cb6b97b78f7f426eabedc57fa', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"UJ2E";i:1622172697;}', 1622176297),
('94792e982d94b0e1c070f6be0ce5baab', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"kwjE";i:1622172817;}', 1622176417),
('8e2180314d0e46d8e610b393a8427437', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"fw2c";i:1622172817;}', 1622176417),
('1592be9ceef9ec10c05231a3aa241041', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"f1Zy";i:1622172937;}', 1622176537),
('bc400e84b0b3fe4031ff2783df08363d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"WzGd";i:1622173057;}', 1622176657),
('5d936af364f1202f437b417eee2ec6b1', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"A9sS";i:1622173177;}', 1622176777),
('0cff9140dcd1562591cfb0f025b74188', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"iq4z";i:1622173177;}', 1622176777),
('22c9db523077e385f36181d6d7e19d51', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ui0S";i:1622173297;}', 1622176897),
('69008bcac25f2f05184f12dc83c03db4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"M8W7";i:1622173417;}', 1622177017),
('db22b1f81d940e856072985c2a6b68c4', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"tk59";i:1622173537;}', 1622177137),
('38dd5900240688a94a12df85bf9d2b05', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"BD5w";i:1622173537;}', 1622177137),
('ebc971c1206fd013b7e78dae2364053e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"GMLl";i:1622173657;}', 1622177257),
('6d6ee4ce14512375c25d6067d4c541a8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"pqJt";i:1622173777;}', 1622177377),
('0588b2d0bfb19f896a875fb71f8d960e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"AGpL";i:1622173897;}', 1622177497),
('f767d28ea9517dfffbea89d5220a888a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hV6r";i:1622173897;}', 1622177497),
('8710f2e44c5ecc064be303929e485f63', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"q36v";i:1622174017;}', 1622177617),
('23e40ca82406dcbb3d49bae5d16bf64a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qoKv";i:1622174137;}', 1622177737),
('7079ad17af8d4597793da27ecf781090', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"CW4i";i:1622174257;}', 1622177857),
('d7a10570d823775441f93e87ac54f72d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ibBV";i:1622174257;}', 1622177857),
('cb612e64fb554cf60f3be3f344897d23', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"r1dY";i:1622174377;}', 1622177977),
('f12534ef27dad65659d660d449fee31d', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Gu1K";i:1622174497;}', 1622178097),
('78ca27a797a9fc407b75dbbc1aed7e2a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ps18";i:1622174617;}', 1622178217),
('8e1213855b1003b8522969f6e0669720', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"JsuK";i:1622174617;}', 1622178217),
('135e794a5e2dba6756601f6a36c9ca8a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"YEZ6";i:1622174737;}', 1622178337),
('ef6cbe2950f4b555e766c77ba2b4ac3a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Nicb";i:1622174857;}', 1622178457),
('7ab0b829a9839228d98c161effcbb4f5', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Yp4P";i:1622174977;}', 1622178577),
('2ed619e4a446ad6b724bd1945153ee80', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"qYZ9";i:1622174977;}', 1622178577),
('a3531e5d925b35a71814d146b547f473', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Jsg2";i:1622175097;}', 1622178697),
('5c2de898a91226849fe7c9d86944b432', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"n92a";i:1622175217;}', 1622178817),
('22be8498f52e8c7deace5bbce4cc494c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"chg6";i:1622175337;}', 1622178937),
('0061b2dd58c3d0addf9008e103deecb0', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"l5iK";i:1622175337;}', 1622178937),
('600b66996444b649e0622a8dac27f234', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"hw2w";i:1622175457;}', 1622179057),
('c53637f54494391af7ffc1c1eb657446', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"CSz1";i:1622175577;}', 1622179177),
('6840178e196b976b5578fad137db74d3', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"OsZ1";i:1622175697;}', 1622179297),
('8d96f5e0abf6415b399b0756b83aaf29', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"AFF2";i:1622175697;}', 1622179297),
('9c8dc983271f45f4911def8dc652acbc', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"E12R";i:1622175817;}', 1622179417),
('773ebe7a984346819be861749e872e3a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"iDZ4";i:1622175937;}', 1622179537),
('2c9bfd7323b3bf1d8a0ebd23e126b85e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"vGOj";i:1622176057;}', 1622179657),
('6d7b3004df20259eeae128ce9781bcb8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"gKgb";i:1622176057;}', 1622179657),
('1daf92262f2d1d2ca6cc80a04c59cbbe', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"u2o7";i:1622176177;}', 1622179777),
('db20465800b8e7350db76df20036dd6a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"aiUE";i:1622176297;}', 1622179897),
('c9d152ba578da11738d51e1e45208faf', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"C27e";i:1622176418;}', 1622180018),
('10ee3e281759ef415fa09c2fc8b44e47', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"e4NF";i:1622176418;}', 1622180018),
('dc7d216bcf87344fd01e9df86280a1bc', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"PRiv";i:1622176537;}', 1622180137),
('6412684c8870dab45c4bf24bc8f7ffe9', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"wFXA";i:1622176657;}', 1622180257),
('acb2294f9ac6eb8ba10666d2d8f10136', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"aDU0";i:1622176777;}', 1622180377),
('f11f0ead3058911d001bbe53511235b3', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"dGXU";i:1622176777;}', 1622180377),
('475259e312bb3cbaa17b19d0a9278c0a', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"l646";i:1622176897;}', 1622180497),
('247124ff7d1ecedae730d785fb4517b7', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"K4b6";i:1622177017;}', 1622180617),
('ecd2a15beb4dacc9197c1e1669505a85', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"b0uU";i:1622177137;}', 1622180737),
('22dbe0e7ae30859d177e380742634b11', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Tx3U";i:1622177137;}', 1622180737),
('b55b056ebb484268487f149f7a796993', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"ZCKm";i:1622177257;}', 1622180857),
('d44443418c4a70e553eee72a1f986a35', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"UA57";i:1622177377;}', 1622180977),
('f7243203971abe52abc5a1c2fd7f9896', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Vkck";i:1622177497;}', 1622181097),
('e2ec2f5d5edcb0dfa36b67309bdcea99', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"V0tL";i:1622177498;}', 1622181098),
('9d9e965281bb87f74c7d495e249b01e1', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"J5Kk";i:1622177617;}', 1622181217),
('78fdbd7da7e3adea0db08a5cedfc9ecf', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"KGym";i:1622177737;}', 1622181337),
('982879b469c797e32147870198fd9b1b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"CC97";i:1622177857;}', 1622181457),
('c18d5a9635f7d67e1444ffbea895c9d5', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"MsG0";i:1622177858;}', 1622181458),
('b00e6944956b81e5220385db0dfe76e8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"yvRC";i:1622177977;}', 1622181577),
('80730dd47ed9907b9ea97aba03611d40', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"WpTZ";i:1622178097;}', 1622181697),
('328a7b336f53a0bb9100e6ac767cdfa1', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"m4Zs";i:1622178218;}', 1622181818),
('84e77290adeb286f24927cee0d2e9379', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"l7Ii";i:1622178218;}', 1622181818),
('af0ee8c6b6f393d95668170e5ec35839', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Yq7c";i:1622178337;}', 1622181937),
('2ad3e418da6fb97a3048021b0aa84f2c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"GkPo";i:1622178457;}', 1622182057),
('c4baebd4cc705d0055cc7464fe606180', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"r1gw";i:1622178578;}', 1622182178),
('053092c06a38ab56997c6c0db38ea90b', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"QrxF";i:1622178578;}', 1622182178),
('31861d7280d9537fd66e649edda87130', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"EXX8";i:1622178698;}', 1622182298),
('3f17972d101569ca12cbf8a8d2299b17', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"M9ln";i:1622178818;}', 1622182418),
('032faf64994449389828ea07237ccb9f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"i759";i:1622178938;}', 1622182538),
('0e9622505f2eac2b9fb15b24a5273d70', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"u7L7";i:1622178938;}', 1622182538),
('737892e78d4f3fae57427f332388987c', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"QCd8";i:1622179058;}', 1622182658),
('9d2ecec69a3d16ff5cd4d65926b6b325', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"gIIr";i:1622179178;}', 1622182778),
('3fac255d61f86d5ee87ca27278da9cc5', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"H6JY";i:1622179298;}', 1622182898),
('e04bc0658f89b1ff03be514dd95a4e4e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"D5Xj";i:1622179298;}', 1622182898),
('17a63f8c8a4703b90ce4458ba0be4384', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"tzL6";i:1622179418;}', 1622183018),
('a5e3922fb530fed840514f76b5ad6994', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"wMJZ";i:1622179538;}', 1622183138),
('aa5c6bb945c744a6c8021922ecf0ecfc', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"TciM";i:1622179658;}', 1622183258),
('18c556618d6122b11bbaaaa80e16dd61', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"y00A";i:1622179658;}', 1622183258),
('a8dcb2b5ba15a73f279a388fcbb9f092', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"i4z4";i:1622179778;}', 1622183378),
('37a419e8aa05e9047d4e501ab2dfee08', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"gGiE";i:1622186941;}', 1622190541),
('574aadf950ed7bafbe357f3771954975', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"b3B3";i:1622186941;}', 1622190541),
('13aca6a2b42038a3f3845ccab07345f8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"X4GS";i:1623222500;}', 1623226100),
('8ce4fa5c0cb26599d12c1e4796f7f29e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"d45K";i:1623222500;}', 1623226100),
('92d58de6a14541aba248f0e8a4f883fd', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"E0Bx";i:1623222594;}', 1623226194),
('fc2efed3e4ca3c63d9ee0e4feacdb7be', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Lx2D";i:1623222674;}', 1623226274),
('93ed2f97d143b5a46ea5e594c238951e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"YzTa";i:1623222743;}', 1623226343),
('30d09f50d8306c80f258160b9de82845', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"alg2";i:1623222884;}', 1623226484),
('d6db0df595c90d3b7882ede27d9f1b16', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"oxu6";i:1623222884;}', 1623226484),
('6b0ab21971203fe8b246b97d8a5d9aa8', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"CCzf";i:1623222958;}', 1623226558),
('2667d1829729db71ee50292d7df4e7d6', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"kZmF";i:1623223024;}', 1623226624),
('5edc0408c5e157edf00ee8ee11285b57', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"vX5o";i:1623830271;}', 1623833871),
('7f4d66fca0573f5cc515878b8e09ef3f', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"bNM9";i:1623830271;}', 1623833871),
('48d93db10230835c1257a9e15bb92838', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"Wa79";i:1623830344;}', 1623833944),
('ab77c8ffa05bfd81e940470d8417357e', 1, '47.242.30.191', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"BTO1";i:1623830434;}', 1623834034),
('77a29574077b1bb211a52f449e88228e', 1, '8.212.19.100', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"JFIN";i:1632404098;}', 1632407698),
('5f8f266def2c6f01ea6108239eedd72a', 1, '8.212.19.100', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"WCxG";i:1632404098;}', 1632407698),
('866689952fec3a9dccc0ed71a6fe3d43', 1, '47.243.231.144', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"kyF4";i:1676627671;}', 1676631271),
('ce742e7f30e1cc553e0d2c5e6b806fd5', 1, '47.243.231.144', 'acid|s:1:"1";uniacid|i:1;token|a:1:{s:4:"M8iJ";i:1676627672;}', 1676631272);

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_settings`
--

CREATE TABLE IF NOT EXISTS `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_settings`
--

INSERT INTO `ims_core_settings` (`key`, `value`) VALUES
('copyright', 'a:1:{s:6:"slides";a:3:{i:0;s:58:"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg";i:1;s:58:"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg";i:2;s:58:"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg";}}'),
('authmode', 'i:1;'),
('close', 'a:2:{s:6:"status";s:1:"0";s:6:"reason";s:0:"";}'),
('register', 'a:4:{s:4:"open";i:1;s:6:"verify";i:0;s:4:"code";i:1;s:7:"groupid";i:1;}'),
('platform', 'a:5:{s:5:"token";s:32:"y3P9rRUr3M11415nJxUjR1xZ4j5gsj13";s:14:"encodingaeskey";s:43:"nxhc4CgczJEJSZD0zzp89UuHEjxR3E08pG4646xPN6S";s:9:"appsecret";s:0:"";s:5:"appid";s:0:"";s:9:"authstate";i:1;}');

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_location`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL,
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
  `message` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_cover_reply`
--

CREATE TABLE IF NOT EXISTS `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_cover_reply`
--

INSERT INTO `ims_cover_reply` (`id`, `uniacid`, `multiid`, `rid`, `module`, `do`, `title`, `description`, `thumb`, `url`) VALUES
(1, 1, 0, 7, 'mc', '', '进入个人中心', '', '', './index.php?c=mc&a=home&i=1'),
(2, 1, 1, 8, 'site', '', '进入首页', '', '', './index.php?c=home&i=1&t=1');

-- --------------------------------------------------------

--
-- 表的结构 `ims_custom_reply`
--

CREATE TABLE IF NOT EXISTS `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_images_reply`
--

CREATE TABLE IF NOT EXISTS `ims_images_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_job`
--

CREATE TABLE IF NOT EXISTS `ims_job` (
  `id` int(11) NOT NULL,
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
  `isdeleted` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_cash_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL,
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
  `trade_type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_chats_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_credits_recharge`
--

CREATE TABLE IF NOT EXISTS `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL,
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
  `backtype` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_credits_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_credits_record` (
  `id` int(11) NOT NULL,
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
  `real_uniacid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_fans_groups`
--

CREATE TABLE IF NOT EXISTS `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_fans_tag_mapping`
--

CREATE TABLE IF NOT EXISTS `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_groups`
--

CREATE TABLE IF NOT EXISTS `ims_mc_groups` (
  `groupid` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_mc_groups`
--

INSERT INTO `ims_mc_groups` (`groupid`, `uniacid`, `title`, `credit`, `isdefault`) VALUES
(1, 1, '默认会员组', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_handsel`
--

CREATE TABLE IF NOT EXISTS `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mapping_fans`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL,
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
  `unionid` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mapping_ucenter`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mass_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL,
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
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_members`
--

CREATE TABLE IF NOT EXISTS `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL,
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
  `pay_password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_member_address`
--

CREATE TABLE IF NOT EXISTS `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_member_fields`
--

CREATE TABLE IF NOT EXISTS `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_member_property`
--

CREATE TABLE IF NOT EXISTS `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_oauth_fans`
--

CREATE TABLE IF NOT EXISTS `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_menu_event`
--

CREATE TABLE IF NOT EXISTS `ims_menu_event` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_message_notice_log`
--

CREATE TABLE IF NOT EXISTS `ims_message_notice_log` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `sign` varchar(22) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mobilenumber`
--

CREATE TABLE IF NOT EXISTS `ims_mobilenumber` (
  `id` int(11) NOT NULL,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules`
--

CREATE TABLE IF NOT EXISTS `ims_modules` (
  `mid` int(10) unsigned NOT NULL,
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
  `aliapp_support` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_modules`
--

INSERT INTO `ims_modules` (`mid`, `name`, `type`, `title`, `version`, `ability`, `description`, `author`, `url`, `settings`, `subscribes`, `handles`, `isrulefields`, `issystem`, `target`, `iscard`, `permissions`, `title_initial`, `wxapp_support`, `welcome_support`, `oauth_type`, `webapp_support`, `phoneapp_support`, `account_support`, `xzapp_support`, `app_support`, `aliapp_support`) VALUES
(1, 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(2, 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(3, 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(4, 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(5, 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(6, 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'WeEngine Team', 'http://bbs.we7.cc', 0, 'a:0:{}', 'a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(7, 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(8, 'video', 'system', '基本视频回复', '1.0', '提供图片回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(9, 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(10, 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(11, 'wxcard', 'system', '微信卡券回复', '1.0', '微信卡券回复', '微信卡券回复', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(12, 'store', 'business', '站内商城', '1.0', '站内商城', '站内商城', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, '', '', 1, 1, 1, 1, 0, 2, 0, 0, 0),
(13, 'we7_wmall', 'business', 'LL外卖跑腿', '18.3.0', '微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统|跑腿|随意购|配送员', '微外卖|扫码点餐|微餐饮|微点餐|微外送|生鲜|便利店|超市系统', '宇艺网络', 'http://wwww.y198.cn/', 0, 'a:0:{}', 'a:2:{i:0;s:8:"location";i:1;s:4:"text";}', 0, 0, 0, 0, 'a:0:{}', 'L', 1, 1, 1, 1, 1, 2, 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_bindings`
--

CREATE TABLE IF NOT EXISTS `ims_modules_bindings` (
  `eid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `entry` varchar(30) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_modules_bindings`
--

INSERT INTO `ims_modules_bindings` (`eid`, `module`, `entry`, `call`, `title`, `do`, `state`, `direct`, `url`, `icon`, `displayorder`) VALUES
(1, 'we7_wmall', 'menu', '', '后台管理', 'web', '', 0, '', 'fa fa-puzzle-piece', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_cloud`
--

CREATE TABLE IF NOT EXISTS `ims_modules_cloud` (
  `id` int(11) NOT NULL,
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
  `aliapp_support` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_ignore`
--

CREATE TABLE IF NOT EXISTS `ims_modules_ignore` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_modules_ignore`
--

INSERT INTO `ims_modules_ignore` (`id`, `name`, `version`) VALUES
(35, 'we7_wmall', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_plugin`
--

CREATE TABLE IF NOT EXISTS `ims_modules_plugin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_rank`
--

CREATE TABLE IF NOT EXISTS `ims_modules_rank` (
  `id` int(10) unsigned NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_recycle`
--

CREATE TABLE IF NOT EXISTS `ims_modules_recycle` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `modulename` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_music_reply`
--

CREATE TABLE IF NOT EXISTS `ims_music_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_news_reply`
--

CREATE TABLE IF NOT EXISTS `ims_news_reply` (
  `id` int(10) unsigned NOT NULL,
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
  `media_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_phoneapp_versions`
--

CREATE TABLE IF NOT EXISTS `ims_phoneapp_versions` (
  `id` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `version` varchar(20) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `modules` text,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_profile_fields`
--

CREATE TABLE IF NOT EXISTS `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_profile_fields`
--

INSERT INTO `ims_profile_fields` (`id`, `field`, `available`, `title`, `description`, `displayorder`, `required`, `unchangeable`, `showinregister`, `field_length`) VALUES
(1, 'realname', 1, '真实姓名', '', 0, 1, 1, 1, 0),
(2, 'nickname', 1, '昵称', '', 1, 1, 0, 1, 0),
(3, 'avatar', 1, '头像', '', 1, 0, 0, 0, 0),
(4, 'qq', 1, 'QQ号', '', 0, 0, 0, 1, 0),
(5, 'mobile', 1, '手机号码', '', 0, 0, 0, 0, 0),
(6, 'vip', 1, 'VIP级别', '', 0, 0, 0, 0, 0),
(7, 'gender', 1, '性别', '', 0, 0, 0, 0, 0),
(8, 'birthyear', 1, '出生生日', '', 0, 0, 0, 0, 0),
(9, 'constellation', 1, '星座', '', 0, 0, 0, 0, 0),
(10, 'zodiac', 1, '生肖', '', 0, 0, 0, 0, 0),
(11, 'telephone', 1, '固定电话', '', 0, 0, 0, 0, 0),
(12, 'idcard', 1, '证件号码', '', 0, 0, 0, 0, 0),
(13, 'studentid', 1, '学号', '', 0, 0, 0, 0, 0),
(14, 'grade', 1, '班级', '', 0, 0, 0, 0, 0),
(15, 'address', 1, '邮寄地址', '', 0, 0, 0, 0, 0),
(16, 'zipcode', 1, '邮编', '', 0, 0, 0, 0, 0),
(17, 'nationality', 1, '国籍', '', 0, 0, 0, 0, 0),
(18, 'resideprovince', 1, '居住地址', '', 0, 0, 0, 0, 0),
(19, 'graduateschool', 1, '毕业学校', '', 0, 0, 0, 0, 0),
(20, 'company', 1, '公司', '', 0, 0, 0, 0, 0),
(21, 'education', 1, '学历', '', 0, 0, 0, 0, 0),
(22, 'occupation', 1, '职业', '', 0, 0, 0, 0, 0),
(23, 'position', 1, '职位', '', 0, 0, 0, 0, 0),
(24, 'revenue', 1, '年收入', '', 0, 0, 0, 0, 0),
(25, 'affectivestatus', 1, '情感状态', '', 0, 0, 0, 0, 0),
(26, 'lookingfor', 1, ' 交友目的', '', 0, 0, 0, 0, 0),
(27, 'bloodtype', 1, '血型', '', 0, 0, 0, 0, 0),
(28, 'height', 1, '身高', '', 0, 0, 0, 0, 0),
(29, 'weight', 1, '体重', '', 0, 0, 0, 0, 0),
(30, 'alipay', 1, '支付宝帐号', '', 0, 0, 0, 0, 0),
(31, 'msn', 1, 'MSN', '', 0, 0, 0, 0, 0),
(32, 'email', 1, '电子邮箱', '', 0, 0, 0, 0, 0),
(33, 'taobao', 1, '阿里旺旺', '', 0, 0, 0, 0, 0),
(34, 'site', 1, '主页', '', 0, 0, 0, 0, 0),
(35, 'bio', 1, '自我介绍', '', 0, 0, 0, 0, 0),
(36, 'interest', 1, '兴趣爱好', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_qrcode`
--

CREATE TABLE IF NOT EXISTS `ims_qrcode` (
  `id` int(10) unsigned NOT NULL,
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
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_qrcode_stat`
--

CREATE TABLE IF NOT EXISTS `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_rule`
--

CREATE TABLE IF NOT EXISTS `ims_rule` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  `reply_type` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_rule`
--

INSERT INTO `ims_rule` (`id`, `uniacid`, `name`, `module`, `displayorder`, `status`, `containtype`, `reply_type`) VALUES
(1, 0, '城市天气', 'userapi', 255, 1, '', 0),
(2, 0, '百度百科', 'userapi', 255, 1, '', 0),
(3, 0, '即时翻译', 'userapi', 255, 1, '', 0),
(4, 0, '今日老黄历', 'userapi', 255, 1, '', 0),
(5, 0, '看新闻', 'userapi', 255, 1, '', 0),
(6, 0, '快递查询', 'userapi', 255, 1, '', 0),
(7, 1, '个人中心入口设置', 'cover', 0, 1, '', 0),
(8, 1, '微擎团队入口设置', 'cover', 0, 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_rule_keyword`
--

CREATE TABLE IF NOT EXISTS `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_rule_keyword`
--

INSERT INTO `ims_rule_keyword` (`id`, `rid`, `uniacid`, `module`, `content`, `type`, `displayorder`, `status`) VALUES
(1, 1, 0, 'userapi', '^.+天气$', 3, 255, 1),
(2, 2, 0, 'userapi', '^百科.+$', 3, 255, 1),
(3, 2, 0, 'userapi', '^定义.+$', 3, 255, 1),
(4, 3, 0, 'userapi', '^@.+$', 3, 255, 1),
(5, 4, 0, 'userapi', '日历', 1, 255, 1),
(6, 4, 0, 'userapi', '万年历', 1, 255, 1),
(7, 4, 0, 'userapi', '黄历', 1, 255, 1),
(8, 4, 0, 'userapi', '几号', 1, 255, 1),
(9, 5, 0, 'userapi', '新闻', 1, 255, 1),
(10, 6, 0, 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', 3, 255, 1),
(11, 7, 1, 'cover', '个人中心', 1, 0, 1),
(12, 8, 1, 'cover', '首页', 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_article`
--

CREATE TABLE IF NOT EXISTS `ims_site_article` (
  `id` int(10) unsigned NOT NULL,
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
  `credit` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_article_comment`
--

CREATE TABLE IF NOT EXISTS `ims_site_article_comment` (
  `id` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `content` text,
  `is_read` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_category`
--

CREATE TABLE IF NOT EXISTS `ims_site_category` (
  `id` int(10) unsigned NOT NULL,
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
  `multiid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_multi`
--

CREATE TABLE IF NOT EXISTS `ims_site_multi` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_site_multi`
--

INSERT INTO `ims_site_multi` (`id`, `uniacid`, `title`, `styleid`, `site_info`, `status`, `bindhost`) VALUES
(1, 1, '微擎团队', 1, '', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_nav`
--

CREATE TABLE IF NOT EXISTS `ims_site_nav` (
  `id` int(10) unsigned NOT NULL,
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
  `categoryid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_page`
--

CREATE TABLE IF NOT EXISTS `ims_site_page` (
  `id` int(10) unsigned NOT NULL,
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
  `goodnum` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_slide`
--

CREATE TABLE IF NOT EXISTS `ims_site_slide` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_store_create_account`
--

CREATE TABLE IF NOT EXISTS `ims_site_store_create_account` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `endtime` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_store_goods`
--

CREATE TABLE IF NOT EXISTS `ims_site_store_goods` (
  `id` int(10) unsigned NOT NULL,
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
  `user_group_price` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_store_order`
--

CREATE TABLE IF NOT EXISTS `ims_site_store_order` (
  `id` int(10) unsigned NOT NULL,
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
  `wxapp` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_styles`
--

CREATE TABLE IF NOT EXISTS `ims_site_styles` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_site_styles`
--

INSERT INTO `ims_site_styles` (`id`, `uniacid`, `templateid`, `name`) VALUES
(1, 1, 1, '微站默认模板_gC5C');

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_styles_vars`
--

CREATE TABLE IF NOT EXISTS `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_templates`
--

CREATE TABLE IF NOT EXISTS `ims_site_templates` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_site_templates`
--

INSERT INTO `ims_site_templates` (`id`, `name`, `title`, `version`, `description`, `author`, `url`, `type`, `sections`) VALUES
(1, 'default', '微站默认模板', '', '由微擎提供默认微站模板套系', '微擎团队', 'http://we7.cc', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_fans`
--

CREATE TABLE IF NOT EXISTS `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_stat_fans`
--

INSERT INTO `ims_stat_fans` (`id`, `uniacid`, `new`, `cancel`, `cumulate`, `date`) VALUES
(1, 1, 0, 0, 0, '20210419'),
(2, 1, 0, 0, 0, '20210418'),
(3, 1, 0, 0, 0, '20210417'),
(4, 1, 0, 0, 0, '20210416'),
(5, 1, 0, 0, 0, '20210415'),
(6, 1, 0, 0, 0, '20210414'),
(7, 1, 0, 0, 0, '20210413'),
(8, 1, 0, 0, 0, '20210526'),
(9, 1, 0, 0, 0, '20210525'),
(10, 1, 0, 0, 0, '20210524'),
(11, 1, 0, 0, 0, '20210523'),
(12, 1, 0, 0, 0, '20210522'),
(13, 1, 0, 0, 0, '20210521'),
(14, 1, 0, 0, 0, '20210520'),
(15, 1, 0, 0, 0, '20210608'),
(16, 1, 0, 0, 0, '20210607'),
(17, 1, 0, 0, 0, '20210606'),
(18, 1, 0, 0, 0, '20210605'),
(19, 1, 0, 0, 0, '20210604'),
(20, 1, 0, 0, 0, '20210603'),
(21, 1, 0, 0, 0, '20210602'),
(22, 1, 0, 0, 0, '20210615'),
(23, 1, 0, 0, 0, '20210614'),
(24, 1, 0, 0, 0, '20210613'),
(25, 1, 0, 0, 0, '20210612'),
(26, 1, 0, 0, 0, '20210611'),
(27, 1, 0, 0, 0, '20210610'),
(28, 1, 0, 0, 0, '20210609'),
(29, 1, 0, 0, 0, '20230216'),
(30, 1, 0, 0, 0, '20230215'),
(31, 1, 0, 0, 0, '20230214'),
(32, 1, 0, 0, 0, '20230213'),
(33, 1, 0, 0, 0, '20230212'),
(34, 1, 0, 0, 0, '20230211'),
(35, 1, 0, 0, 0, '20230210');

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_keyword`
--

CREATE TABLE IF NOT EXISTS `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_msg_history`
--

CREATE TABLE IF NOT EXISTS `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_rule`
--

CREATE TABLE IF NOT EXISTS `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_visit`
--

CREATE TABLE IF NOT EXISTS `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_stat_visit`
--

INSERT INTO `ims_stat_visit` (`id`, `uniacid`, `module`, `count`, `date`, `type`) VALUES
(2, 0, '', 14, 20210420, 'web'),
(3, 1, 'we7_account', 2, 20210420, 'web'),
(4, 0, '', 7, 20210512, 'web'),
(5, 0, '', 2, 20210521, 'web'),
(6, 0, '', 23, 20210527, 'web'),
(7, 0, 'we7_account', 1, 20210527, 'web'),
(8, 1, 'we7_account', 2, 20210527, 'web'),
(9, 0, '', 4, 20210609, 'web'),
(10, 1, 'we7_account', 16, 20210609, 'web'),
(11, 0, '', 7, 20210616, 'web'),
(12, 1, 'we7_account', 1, 20210616, 'web'),
(13, 0, '', 10, 20210817, 'web'),
(14, 0, 'we7_account', 2, 20210817, 'web'),
(15, 0, '', 2, 20210923, 'web'),
(16, 0, '', 6, 20211208, 'web'),
(17, 0, '', 3, 20220624, 'web'),
(18, 0, 'we7_account', 1, 20220624, 'web'),
(19, 0, '', 7, 20220712, 'web'),
(20, 0, '', 2, 20230217, 'web'),
(21, 1, 'we7_account', 1, 20230217, 'web');

-- --------------------------------------------------------

--
-- 表的结构 `ims_system_stat_visit`
--

CREATE TABLE IF NOT EXISTS `ims_system_stat_visit` (
  `id` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_activity_bargain`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_activity_bargain` (
  `id` int(10) unsigned NOT NULL,
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
  `type` varchar(15) NOT NULL DEFAULT 'bargain'
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_activity_bargain_goods`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_activity_bargain_goods` (
  `id` int(10) unsigned NOT NULL,
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
  `agentid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_activity_coupon`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_activity_coupon` (
  `id` int(10) unsigned NOT NULL,
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
  `coupons` varchar(1000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_activity_coupon_grant_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_activity_coupon_grant_log` (
  `id` int(10) unsigned NOT NULL COMMENT '序号',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `couponid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL COMMENT '用户编号',
  `grant_type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态: 1:一次性领取,2:每天领取 ',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_activity_coupon_record`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_activity_coupon_record` (
  `id` int(10) unsigned NOT NULL COMMENT '序号',
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
  `givetime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_activity_redpacket_record`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_activity_redpacket_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `activity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `channel` varchar(20) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `code` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `condition` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
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
  `order_type_limit` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=426 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_activity_share`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_activity_share` (
  `id` int(10) unsigned NOT NULL,
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
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_address`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_address` (
  `id` int(10) unsigned NOT NULL,
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
  `area_parentid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=1658 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_advertise_trade`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_advertise_trade` (
  `id` int(10) unsigned NOT NULL,
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
  `agentid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_agent`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_agent` (
  `id` int(10) unsigned NOT NULL,
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
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fee` varchar(5000) NOT NULL,
  `geofence` text NOT NULL,
  `data` text NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `token` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_agent_current_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_agent_current_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `order_type` varchar(20) NOT NULL,
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  `hash` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_agent_getcash_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_agent_getcash_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(20) NOT NULL,
  `get_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `take_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `final_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `account` varchar(500) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `channel` varchar(10) NOT NULL DEFAULT 'weixin',
  `toaccount_status` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_area_list`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_area_list` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `location_x` varchar(20) NOT NULL,
  `location_y` varchar(20) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_assign_board`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_assign_board` (
  `id` int(10) unsigned NOT NULL,
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
  `createtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=390 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_assign_queue`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_assign_queue` (
  `id` int(10) unsigned NOT NULL,
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
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '根据这个时间,判断是否将position重新至0'
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_cache`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_cache` (
  `name` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `starttime|562|errander_deliveryerApp|17.9.0|20190325190505` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'member',
  `alias` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `color` varchar(15) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_system` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `score` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_clerk`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_clerk` (
  `id` int(10) unsigned NOT NULL,
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
  `openid_wxapp_manager` varchar(60) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=523 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_cloudgoods_goods`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_cloudgoods_goods` (
  `id` int(10) unsigned NOT NULL,
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
  `ts_price` varchar(10) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_cloudgoods_goods_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_cloudgoods_goods_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `menu_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_cloudgoods_goods_options`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_cloudgoods_goods_options` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `total` int(10) NOT NULL DEFAULT '-1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_cloudgoods_menu_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_cloudgoods_menu_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_complain`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_complain` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `addtime` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_config`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_config` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sysset` text NOT NULL,
  `pluginset` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=522 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_tiny_wmall_config`
--

INSERT INTO `ims_tiny_wmall_config` (`id`, `uniacid`, `sysset`, `pluginset`) VALUES
(520, 0, '', ''),
(521, 1, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_creditshop_adv`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_creditshop_adv` (
  `id` int(10) NOT NULL,
  `uniacid` int(10) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `wxapp_link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(10) DEFAULT '0',
  `status` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_creditshop_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_creditshop_category` (
  `id` int(10) NOT NULL,
  `uniacid` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `displayorder` tinyint(3) unsigned DEFAULT '0',
  `status` tinyint(3) DEFAULT '1',
  `advimg` varchar(255) DEFAULT '',
  `advurl` varchar(500) DEFAULT '',
  `isrecommand` tinyint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_creditshop_goods`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_creditshop_goods` (
  `id` int(10) unsigned NOT NULL,
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
  `redpacket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_creditshop_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_creditshop_order` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credits` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `itemcode` int(10) unsigned NOT NULL DEFAULT '0',
  `actualprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `faceprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `description` varchar(255) NOT NULL,
  `ordernum` varchar(255) NOT NULL,
  `ordersn` varchar(50) NOT NULL,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_creditshop_order_new`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_creditshop_order_new` (
  `id` int(10) unsigned NOT NULL,
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
  `use_credit1_status` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_cube`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_cube` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `tips` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned DEFAULT '0',
  `wxapp_link` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=439 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_deliveryer`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_deliveryer` (
  `id` int(10) unsigned NOT NULL,
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
  `credit1` decimal(10,2) NOT NULL DEFAULT '0.00',
  `credit2` decimal(10,2) NOT NULL DEFAULT '0.00',
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
  `deltime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=388 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_deliveryer_current_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_deliveryer_current_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_type` varchar(20) NOT NULL DEFAULT 'order',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:订单入账, 2: 申请提现',
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_month` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=531 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_deliveryer_getcash_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_deliveryer_getcash_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(20) NOT NULL,
  `get_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `take_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `final_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '1:申请成功,2:申请中',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `account` varchar(1000) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `channel` varchar(10) NOT NULL DEFAULT 'weixin',
  `toaccount_status` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_deliveryer_groups`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_deliveryer_groups` (
  `id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL DEFAULT '',
  `group_condition` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_fee` varchar(2000) NOT NULL DEFAULT '',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_deliveryer_location_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_deliveryer_location_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `location_x` varchar(20) NOT NULL,
  `location_y` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime_cn` varchar(50) NOT NULL,
  `from` varchar(10) NOT NULL DEFAULT 'app'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_deliveryer_transfer_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_deliveryer_transfer_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_type` varchar(20) NOT NULL DEFAULT 'takeout',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_year` smallint(10) unsigned NOT NULL DEFAULT '0',
  `stat_month` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_day` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_delivery_cards`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_delivery_cards` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `day_free_limit` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `delivery_fee_free_limit` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_delivery_cards_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_delivery_cards_order` (
  `id` int(10) unsigned NOT NULL,
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
  `endtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=306 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_diypage`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_diypage` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `diymenu` int(10) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=315 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_diypage_menu`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_diypage_menu` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_diypage_template`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_diypage_template` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `preview` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_errander_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_errander_category` (
  `id` int(10) unsigned NOT NULL,
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
  `goods_value_status` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_errander_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_errander_order` (
  `id` int(10) unsigned NOT NULL,
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
  `spreadbalance` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_errander_order_discount`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_errander_order_discount` (
  `id` int(10) unsigned NOT NULL,
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
  `plateform_discount_fee` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_errander_order_status_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_errander_order_status_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `note` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `role` varchar(30) NOT NULL,
  `role_cn` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_errander_page`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_errander_page` (
  `id` int(10) unsigned NOT NULL,
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
  `end_hour` varchar(20) NOT NULL DEFAULT '23:59'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_errander_store`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_errander_store` (
  `id` int(10) unsigned NOT NULL,
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
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fee_order` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=576 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_errander_store_current_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_errander_store_current_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:订单入账, 2: 申请提现,3:账户变动，4:买单订单入驻',
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_freelunch`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_freelunch` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `max_partake_times` int(10) unsigned NOT NULL DEFAULT '0',
  `partake_grant_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reward_grant_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `redpacket_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pre_partaker_num` int(10) unsigned NOT NULL DEFAULT '0',
  `pre_partaker_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `pre_reward_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `pre_max_partake_times` int(10) unsigned NOT NULL DEFAULT '0',
  `plus_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `plus_thumb` varchar(255) NOT NULL,
  `plus_partaker_num` int(10) unsigned NOT NULL DEFAULT '0',
  `plus_reward_num` int(10) unsigned NOT NULL DEFAULT '1',
  `plus_pre_partaker_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `pre_plus_reward_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `plus_pre_max_partake_times` int(10) unsigned NOT NULL DEFAULT '0',
  `serial_sn` int(10) unsigned NOT NULL DEFAULT '1',
  `plus_serial_sn` int(10) unsigned NOT NULL DEFAULT '1',
  `share` varchar(3000) NOT NULL,
  `agreement` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_freelunch_partaker`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_freelunch_partaker` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `freelunch_id` int(10) unsigned NOT NULL DEFAULT '0',
  `record_id` int(10) unsigned NOT NULL DEFAULT '0',
  `serial_sn` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `final_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `order_sn` varchar(50) NOT NULL,
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_freelunch_record`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_freelunch_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `freelunch_id` int(10) unsigned NOT NULL DEFAULT '0',
  `serial_sn` int(10) unsigned NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL DEFAULT 'common',
  `partaker_total` int(10) unsigned NOT NULL DEFAULT '0',
  `partaker_dosage` int(10) unsigned NOT NULL DEFAULT '0',
  `partaker_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `reward_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `reward_uid` varchar(1000) NOT NULL,
  `reward_number` int(10) unsigned NOT NULL DEFAULT '0',
  `startime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_gohome_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_gohome_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `wxapp_link` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_gohome_comment`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_gohome_comment` (
  `id` int(10) unsigned NOT NULL,
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
  `data` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_gohome_favorite`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_gohome_favorite` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_gohome_notice`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_gohome_notice` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `wxapp_link` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_gohome_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_gohome_order` (
  `id` int(10) unsigned NOT NULL,
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
  `price` decimal(10,2) DEFAULT '0.00',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `discount_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `final_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
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
  `store_discount_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `store_final_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `plateform_discount_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `plateform_serve_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `plateform_serve` varchar(500) NOT NULL,
  `agent_final_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `agent_serve_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `agent_serve` varchar(500) NOT NULL,
  `agent_discount_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `stat_year` int(10) unsigned NOT NULL,
  `stat_month` int(10) unsigned NOT NULL,
  `stat_day` int(10) unsigned NOT NULL,
  `print_nums` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `print_sn` varchar(100) NOT NULL DEFAULT '0',
  `print_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `spread1` int(10) unsigned NOT NULL DEFAULT '0',
  `spread2` int(10) unsigned NOT NULL DEFAULT '0',
  `spreadbalance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_gohome_slide`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_gohome_slide` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `wxapp_link` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'gohome',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_goods`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_goods` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `price` varchar(500) NOT NULL,
  `box_price` varchar(10) NOT NULL DEFAULT '0',
  `is_options` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unitname` varchar(10) NOT NULL DEFAULT '份',
  `total` int(10) NOT NULL DEFAULT '0',
  `total_update_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sailed` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_hot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL,
  `slides` varchar(1000) NOT NULL,
  `label` varchar(5) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `content` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `comment_total` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_good` int(10) unsigned NOT NULL DEFAULT '0',
  `print_label` int(10) unsigned NOT NULL DEFAULT '0',
  `number` varchar(50) NOT NULL,
  `attrs` varchar(1000) NOT NULL,
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
  `huangou_type` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=15988 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_goods_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_goods_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_fee` int(10) unsigned NOT NULL DEFAULT '0',
  `elemeId` varchar(50) NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT '0',
  `description` varchar(100) NOT NULL,
  `is_showtime` tinyint(3) NOT NULL DEFAULT '0',
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `week` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2468 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_goods_options`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_goods_options` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `total` int(10) NOT NULL DEFAULT '-1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `total_warning` int(10) unsigned NOT NULL DEFAULT '0',
  `svip_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM AUTO_INCREMENT=815 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_haodian_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_haodian_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_haodian_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_haodian_order` (
  `id` int(10) unsigned NOT NULL,
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
  `agent_final_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `agent_serve_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `agent_serve` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_help`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_help` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime|319|errander_deliveryerApp|10.6.0|20180111192949` int(10) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_kanjia`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_kanjia` (
  `id` int(10) unsigned NOT NULL,
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
  `total_update_type` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_kanjia_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_kanjia_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_kanjia_helprecord`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_kanjia_helprecord` (
  `id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `agentid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `bargainprice` decimal(10,2) NOT NULL,
  `afterprice` decimal(10,2) NOT NULL,
  `createtime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_kanjia_userlist`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_kanjia_userlist` (
  `id` int(11) NOT NULL,
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
  `expressid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_lewaimai_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_lewaimai_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `storeidOrgoodsid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT 'goods',
  `img` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2820 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_mealredpacket_exchange`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_mealredpacket_exchange` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `redpacketid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `condition` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `grant_days_effect` int(10) unsigned NOT NULL DEFAULT '0',
  `use_days_limit` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_members`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_members` (
  `id` int(10) unsigned NOT NULL,
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
  `success_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cancel_num` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_price` decimal(10,2) NOT NULL DEFAULT '0.00',
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
  `credit1` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `credit2` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `uid_qianfan` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_majia` int(10) unsigned NOT NULL DEFAULT '0',
  `is_spread` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spreadcredit2` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
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
  `svip_credit1` decimal(10,2) unsigned NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM AUTO_INCREMENT=5579 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_member_black`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_member_black` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `plugin` varchar(30) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_member_footmark`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_member_footmark` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_day` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=1238 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_member_groups`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_member_groups` (
  `id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL DEFAULT '',
  `group_condition` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_member_invoice`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_member_invoice` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `recognition` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_member_recharge`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_member_recharge` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `order_sn` varchar(40) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `final_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `type` varchar(15) NOT NULL DEFAULT 'credit',
  `tag` varchar(1000) NOT NULL,
  `is_pay` tinyint(1) NOT NULL DEFAULT '0',
  `pay_type` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime|146|errander_deliveryerApp|5.3.0|20170304144427` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_news`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_news` (
  `id` int(10) unsigned NOT NULL,
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
  `agentid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_news_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_news_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` varchar(15) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_notice`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_notice` (
  `id` int(10) unsigned NOT NULL,
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
  `description` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_notice_read_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_notice_read_log` (
  `id` int(10) unsigned NOT NULL,
  `notice_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=402 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_oauth_fans`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_oauth_fans` (
  `id` int(10) unsigned NOT NULL,
  `appid` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `oauth_openid` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'wechat'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_operate_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_operate_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `role` varchar(20) NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `content` varchar(500) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `source` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_tiny_wmall_operate_log`
--

INSERT INTO `ims_tiny_wmall_operate_log` (`id`, `uniacid`, `username`, `uid`, `role`, `type`, `content`, `ip`, `address`, `source`, `addtime`) VALUES
(32, 1, '平台创始人', 1, 'founder', 2000, '平台后台添加商户(商户id:1308)', '106.122.239.2', '', '', 1618919341);

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order` (
  `id` int(10) unsigned NOT NULL,
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
  `delivery_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '外卖配送费',
  `pack_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
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
  `deductcredit2` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
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
  `zhunshibao_status` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_cart`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_cart` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `original_price` varchar(10) NOT NULL DEFAULT '0.00',
  `data` text NOT NULL,
  `original_data` text NOT NULL,
  `bargain_use_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `box_price` varchar(10) NOT NULL DEFAULT '0',
  `is_buysvip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pindan_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pindan_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9334 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_comment`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_comment` (
  `id` int(10) unsigned NOT NULL,
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
  `deliveryer_tag` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_discount`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_discount` (
  `id` int(10) unsigned NOT NULL,
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
  `agent_discount_fee` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4151 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_grant`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_grant` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `max` int(10) unsigned NOT NULL DEFAULT '0',
  `continuous` int(10) unsigned NOT NULL DEFAULT '0',
  `sum` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_grant_record`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_grant_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `grant` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `credittype` varchar(20) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_month` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `mark` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_peerpay`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_peerpay` (
  `id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `plid` int(10) unsigned NOT NULL DEFAULT '0',
  `orderid` int(11) NOT NULL DEFAULT '0',
  `peerpay_type` tinyint(1) NOT NULL DEFAULT '0',
  `peerpay_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `peerpay_maxprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `peerpay_realprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `peerpay_selfpay` decimal(10,2) NOT NULL DEFAULT '0.00',
  `peerpay_message` varchar(500) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `data` varchar(1000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_peerpay_payinfo`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_peerpay_payinfo` (
  `id` int(11) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `order_sn` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `uname` varchar(255) NOT NULL DEFAULT '',
  `usay` varchar(500) NOT NULL DEFAULT '',
  `final_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `createtime` int(11) NOT NULL DEFAULT '0',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `headimg` varchar(255) DEFAULT NULL,
  `refundstatus` tinyint(1) NOT NULL DEFAULT '0',
  `refundprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `is_pay` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_refund`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_refund` (
  `id` int(10) unsigned NOT NULL,
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
  `type` varchar(10) NOT NULL DEFAULT 'order'
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_refund_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_refund_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_type` varchar(20) NOT NULL DEFAULT 'order',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `note` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `refund_id` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_remind_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_remind_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `remindid` varchar(50) NOT NULL DEFAULT '0',
  `channel` varchar(15) NOT NULL DEFAULT 'system',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reply` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_stat`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_stat` (
  `id` int(10) unsigned NOT NULL,
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
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_original_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
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
  `data` varchar(1000) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7412 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_order_status_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_order_status_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `note` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `role` varchar(30) NOT NULL,
  `role_cn` varchar(50) NOT NULL,
  `hash` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=891 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_paybill_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_paybill_order` (
  `id` int(10) unsigned NOT NULL,
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
  `table_sn` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_paylog`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_paylog` (
  `id` int(10) unsigned NOT NULL,
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
  `data` varchar(1000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_perm_account`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_perm_account` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `plugins` text,
  `max_store` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_perm_role`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_perm_role` (
  `id` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `rolename` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `perms` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_perm_user`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_perm_user` (
  `id` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `roleid` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `perms` text NOT NULL,
  `realname` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_pintuan_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_pintuan_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_pintuan_goods`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_pintuan_goods` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `detail` text,
  `price` decimal(10,2) NOT NULL,
  `aloneprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `oldprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `peoplenum` int(10) unsigned NOT NULL DEFAULT '0',
  `grouptime` decimal(10,2) NOT NULL DEFAULT '0.00',
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
  `total_update_type` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_plugin`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_plugin` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL,
  `thumb` varchar(255) DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `ability` varchar(255) NOT NULL,
  `status` int(10) DEFAULT '0',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=542 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_tiny_wmall_plugin`
--

INSERT INTO `ims_tiny_wmall_plugin` (`id`, `name`, `type`, `title`, `thumb`, `version`, `ability`, `status`, `displayorder`, `is_show`) VALUES
(1, 'errander', 'biz', 'LL跑腿', '../addons/we7_wmall/static/img/plugin/errander.png', '', '随意购,帮人取,帮人送，实现足不出户购买一切你想购买，跑腿功能一网打尽', 1, 0, 1),
(2, 'deliveryCard', 'biz', '配送会员卡', '../addons/we7_wmall/static/img/plugin/deliveryCard.png', '', '配送会员卡', 1, 0, 1),
(3, 'customerApp', 'tool', '顾客端APP', '../addons/we7_wmall/static/img/plugin/customerApp.png', '', '顾客端APP', 1, 0, 1),
(4, 'bargain', 'activity', '天天特价', '../addons/we7_wmall/static/img/plugin/bargain.png', '', '天天特价', 1, 0, 1),
(5, 'shareRedpacket', 'activity', '分享有礼', '../addons/we7_wmall/static/img/plugin/shareRedpacket.png', '', '分享订单，赠送余额或积分！！！！！！', 1, 0, 1),
(6, 'freeLunch', 'activity', '霸王餐', '../addons/we7_wmall/static/img/plugin/freeLunch.png', '', '霸王餐', 1, 0, 1),
(7, 'diypage', 'biz', '平台装修', '../addons/we7_wmall/static/img/plugin/diypage.png', '', '可自定义底部菜单，设置订单弹幕，自定义活动页面等', 1, 0, 1),
(8, 'deliveryerApp', 'tool', '配送员APP', '../addons/we7_wmall/static/img/plugin/deliveryerApp.png', '', '可在手机上接单 顾客可实时查看配送员位置', 1, 0, 1),
(9, 'ordergrant', 'activity', '下单有礼', '../addons/we7_wmall/static/img/plugin/ordergrant.png', '', '下单给顾客送积分或余额', 1, 0, 1),
(10, 'creditshop', 'activity', '积分商城', '../addons/we7_wmall/static/img/plugin/creditshop.png', '', '积分兑换好礼活动利器', 1, 0, 1),
(11, 'test', 'biz', 'LL外卖', '../addons/we7_wmall/static/img/plugin/test.png', '', '费用支付，测试功能， 不要购买', 1, 0, 0),
(12, 'qianfanApp', 'tool', '千帆APP整合', '../addons/we7_wmall/static/img/plugin/qianfanApp.png', '', '千帆APP整合', 1, 0, 1),
(13, 'majiaApp', 'tool', '马甲APP整合', '../addons/we7_wmall/static/img/plugin/majiaApp.png', '', '马甲APP整合', 1, 0, 1),
(14, 'managerApp', 'tool', '商户APP', '../addons/we7_wmall/static/img/plugin/managerApp.png', '', '商户APP', 1, 0, 1),
(15, 'superRedpacket', 'activity', '超级红包', '../addons/we7_wmall/static/img/plugin/superRedpacket.png', '', '超级红包可实现主动发送和分享红包功能！！！！！！', 1, 0, 1),
(16, 'eleme', 'biz', '饿了么平台对接', '../addons/we7_wmall/static/img/plugin/eleme.png', '', '拉取饿了么商户商品信息，对接饿了么订单进行配送', 1, 0, 1),
(17, 'spread', 'biz', 'LL推广', '../addons/we7_wmall/static/img/plugin/spread.png', '', 'LL推广', 1, 0, 1),
(18, 'meituan', 'biz', '美团平台对接', '../addons/we7_wmall/static/img/plugin/meituan.png', '', '美团平台对接', 1, 0, 1),
(19, 'wxapp', 'biz', 'LL外卖小程序', '../addons/we7_wmall/static/img/plugin/wxapp.png', '', 'LL外卖小程序，小程序将对页面UI就行优化改进，客户体验更好。', 1, 0, 1),
(20, 'poster', 'activity', '活动海报', '../addons/we7_wmall/static/img/plugin/poster.png', '', '活动海报', 1, 0, 1),
(21, 'agent', 'biz', '区域代理', '../addons/we7_wmall/static/img/plugin/agent.png', '', '区域代理,平台可发展其他区域进行代理,建议有发展代理能力的平台购买 ! ', 1, 0, 1),
(22, 'dada', 'biz', '达达开放平台对接', '../addons/we7_wmall/static/img/plugin/dada.png', '', '达达开放平台对接', 1, 0, 1),
(23, 'lewaimai', 'biz', '乐外卖采集', '../addons/we7_wmall/static/img/plugin/lewaimai.png', '', '可采集乐外卖的商家和商品图片', 1, 0, 1),
(24, 'advertise', 'biz', '商户广告通', '../addons/we7_wmall/static/img/plugin/advertise.png', '', '商户自行购买为你优选，置顶，幻灯片广告位', 1, 0, 1),
(25, 'mealRedpacket', 'activity', '套餐红包', '../addons/we7_wmall/static/img/plugin/mealRedpacket.png', '', '套餐红包', 1, 0, 1),
(26, 'superCoupon', 'activity', '超级代金券', '../addons/we7_wmall/static/img/plugin/superCoupon.png', '', '超级代金券可实现商户针对不同的人群发送代金券', 1, 0, 1),
(27, 'cloudGoods', 'biz', '云商品库', '../addons/we7_wmall/static/img/plugin/cloudGoods.png', '', '总平台可以维护一个商品库， 商户在添加商品的时候，可以直接从商品库中选择商品', 1, 0, 1),
(28, 'wheel', 'activity', '大转盘', '../addons/we7_wmall/static/img/plugin/wheel.png', '', '顾客在订单支付后，可以直接跳转到抽奖页面进行抽奖', 1, 0, 1),
(29, 'storebd', 'biz', '店铺业务员', '../addons/we7_wmall/static/img/plugin/storebd.png', '', '店铺业务员', 1, 0, 1),
(30, 'wxapp_manager', 'biz', '商户管理小程序', '../addons/we7_wmall/static/img/plugin/wxapp_manager.png', '', '商户管理小程序', 1, 0, 0),
(31, 'uupaotui', 'biz', 'UU跑腿对接', '../addons/we7_wmall/static/img/plugin/uupaotui.png', '', '可将本平台的订单推送到达达，由达达的配送员进行配送', 1, 0, 1),
(32, 'plateformApp', 'tool', '平台管理APP', '../addons/we7_wmall/static/img/plugin/plateformApp.png', '', '平台管理APP', 1, 0, 1),
(33, 'gohome', 'biz', 'LL生活圈', '../addons/we7_wmall/static/img/plugin/gohome.png', '', 'LL生活圈', 1, 0, 1),
(34, 'svip', 'activity', '超级会员svip', '../addons/we7_wmall/static/img/plugin/svip.png', '', '超级SVIP', 1, 0, 1),
(35, 'plugincenter', 'biz', '应用授权管理', '../addons/we7_wmall/static/img/plugin/plugincenter.jpg', '', '应用授权管理，是为LL外卖用户提供的，便于向您的客户销售外卖插件授权的功能。它可为您简化插件授权销售流程，操作便捷为您省心。', 1, 0, 0),
(36, 'area', 'biz', '指定区域', '../addons/we7_wmall/static/img/plugin/area.png', '', '指定区域', 1, 0, 1),
(37, 'zhunshibao', 'biz', '准时宝', '../addons/we7_wmall/static/img/plugin/zhunshibao.png', '', '准时宝', 1, 0, 1),
(40, 'huangou', 'biz', '超值换购', '../addons/we7_wmall/static/img/plugin/huangou.png', '', '超值换购', 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_plugincenter_grant_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_plugincenter_grant_log` (
  `id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `pluginname` varchar(50) NOT NULL,
  `pluginid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned DEFAULT '0',
  `month` int(10) NOT NULL DEFAULT '0',
  `starttime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `type` varchar(15) NOT NULL DEFAULT 'system',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_plugincenter_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_plugincenter_order` (
  `id` int(10) unsigned NOT NULL,
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
  `is_pay` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_plugincenter_package`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_plugincenter_package` (
  `id` int(10) unsigned NOT NULL,
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
  `addtime` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_plugincenter_plugin`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_plugincenter_plugin` (
  `id` int(10) unsigned NOT NULL,
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
  `addtime` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_plugincenter_slide`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_plugincenter_slide` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_printer`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_printer` (
  `id` int(10) unsigned NOT NULL,
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
  `data` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_printer_label`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_printer_label` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_reply`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_reply` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `table_id` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_report`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_report` (
  `id` int(10) unsigned NOT NULL,
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
  `agentid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_reserve`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_reserve` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `time` varchar(15) NOT NULL,
  `table_cid` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_seckill_goods`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_seckill_goods` (
  `id` int(10) unsigned NOT NULL,
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
  `total_update_type` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_seckill_goods_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_seckill_goods_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(10) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_seckill_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_seckill_order` (
  `id` int(10) unsigned NOT NULL,
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
  `refund_account` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_seckill_slide`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_seckill_slide` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `taskid` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_seckill_task`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_seckill_task` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `times` varchar(255) NOT NULL,
  `share` varchar(1000) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_seckill_task_goods`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_seckill_task_goods` (
  `id` int(11) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `task_id` int(10) unsigned NOT NULL DEFAULT '0',
  `room_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `discount_price` varchar(10) NOT NULL DEFAULT '0',
  `max_buy_limit` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `discount_total` int(10) NOT NULL DEFAULT '-1',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_seckill_task_time`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_seckill_task_time` (
  `id` int(11) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `taskid` int(10) unsigned NOT NULL DEFAULT '0',
  `time` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=538 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_shareredpacket`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_shareredpacket` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `share_redpacket_condition` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `share_redpacket_min` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `share_redpacket_max` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `share_redpacket_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `follow_redpacket_min` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `follow_redpacket_max` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `follow_redpacket_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `share` varchar(3000) NOT NULL,
  `agreement` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_shareredpacket_invite_record`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_shareredpacket_invite_record` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `activity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `share_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `follow_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `share_redpacket_condition` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `share_redpacket_discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `share_redpacket_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `follow_redpacket_condition` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `follow_redpacket_discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `follow_redpacket_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_slide`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_slide` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'homeTop',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `wxapp_link` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=234 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_spread_current_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_spread_current_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `spreadid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  `order_type` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_spread_getcash_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_spread_getcash_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `spreadid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(20) NOT NULL,
  `get_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `take_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `final_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `channel` varchar(20) NOT NULL DEFAULT 'wechat',
  `account` varchar(500) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `channel_from` varchar(10) NOT NULL DEFAULT 'weixin'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_spread_groups`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_spread_groups` (
  `id` int(10) NOT NULL,
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
  `data` varchar(3000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_store`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_store` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` varchar(50) NOT NULL,
  `title` varchar(30) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `business_hours` varchar(200) NOT NULL,
  `is_in_business` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `description` text NOT NULL,
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
  `thumbs` varchar(1000) NOT NULL,
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
  `is_assign` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_reserve` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_meal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `forward_mode` varchar(15) NOT NULL,
  `assign_mode` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `assign_qrcode` varchar(255) NOT NULL,
  `delivery_mode` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `order_note` varchar(255) NOT NULL COMMENT '订单备注',
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
  `menu` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1309 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_tiny_wmall_store`
--

INSERT INTO `ims_tiny_wmall_store` (`id`, `uniacid`, `cid`, `title`, `logo`, `telephone`, `business_hours`, `is_in_business`, `description`, `send_price`, `delivery_price`, `delivery_free_price`, `pack_price`, `delivery_time`, `delivery_type`, `delivery_type_023wx`, `delivery_type_mine`, `delivery_within_days`, `delivery_reserve_days`, `serve_radius`, `serve_fee`, `delivery_area`, `thumbs`, `address`, `location_x`, `location_y`, `status`, `displayorder`, `sns`, `notice`, `tips`, `content`, `payment`, `invoice_status`, `token_status`, `remind_time_limit`, `remind_reply`, `comment_reply`, `sailed`, `score`, `first_order_status`, `discount_status`, `grant_status`, `bargain_price_status`, `reserve_status`, `collect_coupon_status`, `grant_coupon_status`, `comment_status`, `sms_use_times`, `wechat_qrcode`, `custom_url`, `addtype`, `addtime`, `template`, `pc_notice_status`, `not_in_serve_radius`, `auto_handel_order`, `auto_get_address`, `auto_notice_deliveryer`, `click`, `is_recommend`, `is_assign`, `is_reserve`, `is_meal`, `forward_mode`, `assign_mode`, `assign_qrcode`, `delivery_mode`, `order_note`, `delivery_fee_mode`, `delivery_times`, `forward_url`, `qualification`, `label`, `new_member_status`, `is_rest`, `is_stick`, `delivery_areas`, `push_token`, `agentid`, `is_paybill`, `self_audit_comment`, `delivery_extra`, `elemeShopId`, `eleme_status`, `meituan_status`, `data`, `meituanShopId`, `openplateform_extra`, `position`, `deltime`, `remind_time_start`, `consume_per_person`, `waimai_status`, `haodian_status`, `haodian_cid`, `haodian_child_id`, `haodian_starttime`, `haodian_endtime`, `is_waimai`, `is_haodian`, `haodian_score`, `haodian_data`, `rest_can_order`, `cate_parentid1`, `cate_childid1`, `cate_parentid2`, `cate_childid2`, `delivery_areas1`, `auto_print_order`, `menu`) VALUES
(1308, 1, '||', '1', '', '1', 'a:0:{}', 1, '', 0, '0', 0, 0.00, 0, 1, 0, 0, 0, 0, '0.00', '', '', '', '', '', '', 1, 0, '', '', '', '1', '', 0, 0, 10, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 1, 0, '', '', 1, 1618919341, 'index', 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, '', 1, '', 1, '', 1, 'a:0:{}', '', '', 0, 0, 1, 0, '', 'jzG9mm4PCAroU7PPcwcuCzo4zoU2uZm9', 0, 0, 0, '', '0', 0, 0, '', '0', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, '0', '', 0, 0, 0, 0, 0, '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_storebd_current_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_storebd_current_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `bd_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_storebd_getcash_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_storebd_getcash_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `bd_id` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(20) NOT NULL,
  `channel` varchar(10) NOT NULL DEFAULT 'weixin',
  `get_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `take_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `final_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `account` varchar(1000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_storebd_store`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_storebd_store` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `bd_id` int(10) NOT NULL DEFAULT '0',
  `fee_takeout` varchar(500) NOT NULL,
  `fee_instore` varchar(500) NOT NULL,
  `addtime` int(10) unsigned DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_storebd_user`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_storebd_user` (
  `id` int(10) unsigned NOT NULL,
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
  `credit2` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_store_account`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_store_account` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
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
  `alipay` varchar(1000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1376 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_tiny_wmall_store_account`
--

INSERT INTO `ims_tiny_wmall_store_account` (`id`, `uniacid`, `sid`, `amount`, `fee_limit`, `fee_rate`, `fee_min`, `fee_max`, `wechat`, `fee_takeout`, `fee_instore`, `agentid`, `fee_paybill`, `fee_eleme`, `fee_meituan`, `fee_selfDelivery`, `fee_goods`, `fee_period`, `deposit`, `fee_gohome`, `bank`, `alipay`) VALUES
(1375, 1, 1308, '0.00', 0, '', 0, 0, '', 'N;', 'N;', 0, 'N;', '', '', 'N;', '', 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_store_activity`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_store_activity` (
  `id` int(10) unsigned NOT NULL,
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
  `agentid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_store_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_store_category` (
  `id` int(10) unsigned NOT NULL,
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
  `parentid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=518 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_store_clerk`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_store_clerk` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `clerk_id` int(10) unsigned NOT NULL DEFAULT '0',
  `role` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime|146|errander_deliveryerApp|9.4.1|20171121164734` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` varchar(500) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_store_current_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_store_current_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1:订单入账, 2: 申请提现',
  `extra` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=729 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_store_deliveryer`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_store_deliveryer` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `deliveryer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `work_status` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_store_favorite`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_store_favorite` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=482 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_store_getcash_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_store_getcash_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_no` varchar(20) NOT NULL,
  `get_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `take_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `final_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `account` varchar(500) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '1:申请成功,2:申请中',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `channel` varchar(10) NOT NULL DEFAULT 'weixin',
  `toaccount_status` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_store_members`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_store_members` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `first_order_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_order_time` int(10) unsigned NOT NULL DEFAULT '0',
  `success_num` int(10) unsigned DEFAULT '0',
  `success_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cancel_num` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_sys` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `success_first_time` int(10) unsigned NOT NULL DEFAULT '0',
  `success_last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_first_time` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_last_time` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=1643 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_store_page`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_store_page` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_supercoupon_coupon`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_supercoupon_coupon` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_supercoupon_member_group`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_supercoupon_member_group` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `group_condition` text NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_superredpacket`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_superredpacket` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `grant_object` longtext NOT NULL,
  `condition` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_superredpacket_grant`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_superredpacket_grant` (
  `id` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) NOT NULL DEFAULT '0',
  `activity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `packet_dosage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `packet_total` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_superredpacket_meal_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_superredpacket_meal_order` (
  `id` int(10) unsigned NOT NULL,
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
  `type` varchar(20) NOT NULL DEFAULT 'mealRedpacket'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_superredpacket_share`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_superredpacket_share` (
  `id` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `activity_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `condition` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `grant_days_effect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `use_days_limit` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `times_limit` text NOT NULL,
  `category_limit` text NOT NULL,
  `nums` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_svip_code`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_svip_code` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(20) NOT NULL DEFAULT '0',
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `exchangetime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_svip_meal`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_svip_meal` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `oldprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `description` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_svip_meal_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_svip_meal_order` (
  `id` int(10) unsigned NOT NULL,
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
  `data` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_svip_redpacket`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_svip_redpacket` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `condition` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `use_days_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL,
  `can_exchange` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exchange_cost` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_svip_task`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_svip_task` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(200) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_svip_task_records`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_svip_task_records` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `task_id` int(10) unsigned NOT NULL DEFAULT '0',
  `task_type` varchar(30) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `overtime` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_system_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_system_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `params` varchar(5000) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_tables`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_tables` (
  `id` int(10) unsigned NOT NULL,
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
  `cart_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_tables_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_tables_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `limit_price` varchar(20) NOT NULL,
  `reservation_price` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_tables_scan`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_tables_scan` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `table_id` int(10) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_text`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_text` (
  `id` smallint(5) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_tongcheng_category`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_tongcheng_category` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `tags` varchar(500) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_tongcheng_comment`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_tongcheng_comment` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(50) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_tongcheng_information`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_tongcheng_information` (
  `id` int(11) NOT NULL,
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
  `channel` varchar(20) NOT NULL DEFAULT 'wechat'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_tongcheng_order`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_tongcheng_order` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `agentid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `stick_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
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
  `agent_final_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `agent_serve_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `agent_serve` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_tongcheng_reply`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_tongcheng_reply` (
  `id` int(10) unsigned NOT NULL,
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
  `addtime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_wheel`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_wheel` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_wheel_record`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_wheel_record` (
  `id` int(10) unsigned NOT NULL,
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
  `order_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_wxapp_formid_log`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_wxapp_formid_log` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `appid` varchar(50) NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `formid` varchar(150) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime_cn` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_tiny_wmall_wxapp_page`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_wxapp_page` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_uni_account`
--

INSERT INTO `ims_uni_account` (`uniacid`, `groupid`, `name`, `description`, `default_acid`, `rank`, `title_initial`) VALUES
(1, -1, '微擎团队', '一个朝气蓬勃的团队', 1, NULL, 'W');

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_group`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_menus`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL,
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
  `isdeleted` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_modules`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_users`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_group`
--

CREATE TABLE IF NOT EXISTS `ims_uni_group` (
  `id` int(10) unsigned NOT NULL,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` text NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_uni_group`
--

INSERT INTO `ims_uni_group` (`id`, `owner_uid`, `name`, `modules`, `templates`, `uniacid`, `uid`) VALUES
(1, 0, '体验套餐服务', 'a:5:{s:7:"modules";a:1:{i:0;s:9:"we7_wmall";}s:5:"wxapp";a:1:{i:0;s:9:"we7_wmall";}s:6:"webapp";a:1:{i:0;s:9:"we7_wmall";}s:5:"xzapp";a:1:{i:0;s:9:"we7_wmall";}s:8:"phoneapp";a:1:{i:0;s:9:"we7_wmall";}}', 'N;', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_settings`
--

CREATE TABLE IF NOT EXISTS `ims_uni_settings` (
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
  `attachment_size` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_uni_settings`
--

INSERT INTO `ims_uni_settings` (`uniacid`, `passport`, `oauth`, `jsauth_acid`, `uc`, `notify`, `creditnames`, `creditbehaviors`, `welcome`, `default`, `default_message`, `payment`, `stat`, `default_site`, `sync`, `recharge`, `tplnotice`, `grouplevel`, `mcplugin`, `exchange_enable`, `coupon_type`, `menuset`, `statistics`, `bind_domain`, `comment_status`, `reply_setting`, `default_module`, `attachment_limit`, `attachment_size`) VALUES
(1, 'a:3:{s:8:"focusreg";i:0;s:4:"item";s:5:"email";s:4:"type";s:8:"password";}', 'a:2:{s:6:"status";s:1:"0";s:7:"account";s:1:"0";}', 0, 'a:1:{s:6:"status";i:0;}', 'a:1:{s:3:"sms";a:2:{s:7:"balance";i:0;s:9:"signature";s:0:"";}}', 'a:5:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}s:7:"credit3";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit4";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit5";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', 'a:4:{s:6:"credit";a:1:{s:6:"switch";b:0;}s:6:"alipay";a:4:{s:6:"switch";b:0;s:7:"account";s:0:"";s:7:"partner";s:0:"";s:6:"secret";s:0:"";}s:6:"wechat";a:5:{s:6:"switch";b:0;s:7:"account";b:0;s:7:"signkey";s:0:"";s:7:"partner";s:0:"";s:3:"key";s:0:"";}s:8:"delivery";a:1:{s:6:"switch";b:0;}}', '', 1, 0, '', '', 0, '', 0, 0, '', '', '', 0, 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_verifycode`
--

CREATE TABLE IF NOT EXISTS `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_userapi_cache`
--

CREATE TABLE IF NOT EXISTS `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_userapi_reply`
--

CREATE TABLE IF NOT EXISTS `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_userapi_reply`
--

INSERT INTO `ims_userapi_reply` (`id`, `rid`, `description`, `apiurl`, `token`, `default_text`, `cachetime`) VALUES
(1, 1, '"城市名+天气", 如: "北京天气"', 'weather.php', '', '', 0),
(2, 2, '"百科+查询内容" 或 "定义+查询内容", 如: "百科姚明", "定义自行车"', 'baike.php', '', '', 0),
(3, 3, '"@查询内容(中文或英文)"', 'translate.php', '', '', 0),
(4, 4, '"日历", "万年历", "黄历"或"几号"', 'calendar.php', '', '', 0),
(5, 5, '"新闻"', 'news.php', '', '', 0),
(6, 6, '"快递+单号", 如: "申通1200041125"', 'express.php', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users`
--

CREATE TABLE IF NOT EXISTS `ims_users` (
  `uid` int(10) unsigned NOT NULL,
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
  `is_bind` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_users`
--

INSERT INTO `ims_users` (`uid`, `owner_uid`, `groupid`, `founder_groupid`, `username`, `password`, `salt`, `type`, `status`, `joindate`, `joinip`, `lastvisit`, `lastip`, `remark`, `starttime`, `endtime`, `register_type`, `openid`, `welcome_link`, `is_bind`) VALUES
(1, 0, 1, 0, 'admin', '23c844eea7e8b368bc89daf14605941ec8dfe5a9', '1afbd422', 0, 0, 1618919186, '', 1676627664, '110.87.88.129', '', 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_bind`
--

CREATE TABLE IF NOT EXISTS `ims_users_bind` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_failed_login`
--

CREATE TABLE IF NOT EXISTS `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_founder_group`
--

CREATE TABLE IF NOT EXISTS `ims_users_founder_group` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_group`
--

CREATE TABLE IF NOT EXISTS `ims_users_group` (
  `id` int(10) unsigned NOT NULL,
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
  `maxaliapp` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_invitation`
--

CREATE TABLE IF NOT EXISTS `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_permission`
--

CREATE TABLE IF NOT EXISTS `ims_users_permission` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_profile`
--

CREATE TABLE IF NOT EXISTS `ims_users_profile` (
  `id` int(10) unsigned NOT NULL,
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
  `send_expire_status` tinyint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_video_reply`
--

CREATE TABLE IF NOT EXISTS `ims_video_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_voice_reply`
--

CREATE TABLE IF NOT EXISTS `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wechat_attachment`
--

CREATE TABLE IF NOT EXISTS `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL,
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
  `group_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wechat_news`
--

CREATE TABLE IF NOT EXISTS `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL,
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
  `displayorder` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxapp_general_analysis`
--

CREATE TABLE IF NOT EXISTS `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxapp_versions`
--

CREATE TABLE IF NOT EXISTS `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL,
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
  `last_modules` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxcard_reply`
--

CREATE TABLE IF NOT EXISTS `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ims_account`
--
ALTER TABLE `ims_account`
  ADD PRIMARY KEY (`acid`),
  ADD KEY `idx_uniacid` (`uniacid`);

--
-- Indexes for table `ims_account_aliapp`
--
ALTER TABLE `ims_account_aliapp`
  ADD PRIMARY KEY (`acid`);

--
-- Indexes for table `ims_account_phoneapp`
--
ALTER TABLE `ims_account_phoneapp`
  ADD PRIMARY KEY (`acid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_account_webapp`
--
ALTER TABLE `ims_account_webapp`
  ADD PRIMARY KEY (`acid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_account_wechats`
--
ALTER TABLE `ims_account_wechats`
  ADD PRIMARY KEY (`acid`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `ims_account_wxapp`
--
ALTER TABLE `ims_account_wxapp`
  ADD PRIMARY KEY (`acid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_account_xzapp`
--
ALTER TABLE `ims_account_xzapp`
  ADD PRIMARY KEY (`acid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_article_category`
--
ALTER TABLE `ims_article_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_article_comment`
--
ALTER TABLE `ims_article_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articleid` (`articleid`) USING BTREE;

--
-- Indexes for table `ims_article_news`
--
ALTER TABLE `ims_article_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `cateid` (`cateid`);

--
-- Indexes for table `ims_article_notice`
--
ALTER TABLE `ims_article_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `cateid` (`cateid`);

--
-- Indexes for table `ims_article_unread_notice`
--
ALTER TABLE `ims_article_unread_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `notice_id` (`notice_id`);

--
-- Indexes for table `ims_attachment_group`
--
ALTER TABLE `ims_attachment_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_basic_reply`
--
ALTER TABLE `ims_basic_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_business`
--
ALTER TABLE `ims_business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lat_lng` (`lng`,`lat`);

--
-- Indexes for table `ims_core_attachment`
--
ALTER TABLE `ims_core_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_core_cache`
--
ALTER TABLE `ims_core_cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ims_core_cron`
--
ALTER TABLE `ims_core_cron`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createtime` (`createtime`),
  ADD KEY `nextruntime` (`nextruntime`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `cloudid` (`cloudid`);

--
-- Indexes for table `ims_core_cron_record`
--
ALTER TABLE `ims_core_cron_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `tid` (`tid`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `ims_core_job`
--
ALTER TABLE `ims_core_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_core_menu`
--
ALTER TABLE `ims_core_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_core_paylog`
--
ALTER TABLE `ims_core_paylog`
  ADD PRIMARY KEY (`plid`),
  ADD KEY `idx_openid` (`openid`),
  ADD KEY `idx_tid` (`tid`),
  ADD KEY `idx_uniacid` (`uniacid`),
  ADD KEY `uniontid` (`uniontid`);

--
-- Indexes for table `ims_core_performance`
--
ALTER TABLE `ims_core_performance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_core_queue`
--
ALTER TABLE `ims_core_queue`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `uniacid` (`uniacid`,`acid`),
  ADD KEY `module` (`module`),
  ADD KEY `dateline` (`dateline`);

--
-- Indexes for table `ims_core_refundlog`
--
ALTER TABLE `ims_core_refundlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refund_uniontid` (`refund_uniontid`),
  ADD KEY `uniontid` (`uniontid`);

--
-- Indexes for table `ims_core_resource`
--
ALTER TABLE `ims_core_resource`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `acid` (`uniacid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_core_sendsms_log`
--
ALTER TABLE `ims_core_sendsms_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_core_sessions`
--
ALTER TABLE `ims_core_sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `ims_core_settings`
--
ALTER TABLE `ims_core_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ims_coupon_location`
--
ALTER TABLE `ims_coupon_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`acid`);

--
-- Indexes for table `ims_cover_reply`
--
ALTER TABLE `ims_cover_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_custom_reply`
--
ALTER TABLE `ims_custom_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_images_reply`
--
ALTER TABLE `ims_images_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_job`
--
ALTER TABLE `ims_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_mc_cash_record`
--
ALTER TABLE `ims_mc_cash_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_mc_chats_record`
--
ALTER TABLE `ims_mc_chats_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`acid`),
  ADD KEY `openid` (`openid`),
  ADD KEY `createtime` (`createtime`);

--
-- Indexes for table `ims_mc_credits_recharge`
--
ALTER TABLE `ims_mc_credits_recharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  ADD KEY `idx_tid` (`tid`);

--
-- Indexes for table `ims_mc_credits_record`
--
ALTER TABLE `ims_mc_credits_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_mc_fans_groups`
--
ALTER TABLE `ims_mc_fans_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_mc_fans_tag_mapping`
--
ALTER TABLE `ims_mc_fans_tag_mapping`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mapping` (`fanid`,`tagid`),
  ADD KEY `fanid_index` (`fanid`),
  ADD KEY `tagid_index` (`tagid`);

--
-- Indexes for table `ims_mc_groups`
--
ALTER TABLE `ims_mc_groups`
  ADD PRIMARY KEY (`groupid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_mc_handsel`
--
ALTER TABLE `ims_mc_handsel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`touid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_mc_mapping_fans`
--
ALTER TABLE `ims_mc_mapping_fans`
  ADD PRIMARY KEY (`fanid`),
  ADD UNIQUE KEY `openid_2` (`openid`),
  ADD KEY `acid` (`acid`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `nickname` (`nickname`),
  ADD KEY `updatetime` (`updatetime`),
  ADD KEY `uid` (`uid`),
  ADD KEY `openid` (`openid`);

--
-- Indexes for table `ims_mc_mapping_ucenter`
--
ALTER TABLE `ims_mc_mapping_ucenter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_mc_mass_record`
--
ALTER TABLE `ims_mc_mass_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`acid`);

--
-- Indexes for table `ims_mc_members`
--
ALTER TABLE `ims_mc_members`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `email` (`email`),
  ADD KEY `mobile` (`mobile`);

--
-- Indexes for table `ims_mc_member_address`
--
ALTER TABLE `ims_mc_member_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uinacid` (`uniacid`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `ims_mc_member_fields`
--
ALTER TABLE `ims_mc_member_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uniacid` (`uniacid`),
  ADD KEY `idx_fieldid` (`fieldid`);

--
-- Indexes for table `ims_mc_member_property`
--
ALTER TABLE `ims_mc_member_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_mc_oauth_fans`
--
ALTER TABLE `ims_mc_oauth_fans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`);

--
-- Indexes for table `ims_menu_event`
--
ALTER TABLE `ims_menu_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `picmd5` (`picmd5`);

--
-- Indexes for table `ims_message_notice_log`
--
ALTER TABLE `ims_message_notice_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_mobilenumber`
--
ALTER TABLE `ims_mobilenumber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_modules`
--
ALTER TABLE `ims_modules`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `ims_modules_bindings`
--
ALTER TABLE `ims_modules_bindings`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `idx_module` (`module`);

--
-- Indexes for table `ims_modules_cloud`
--
ALTER TABLE `ims_modules_cloud`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `lastupdatetime` (`lastupdatetime`);

--
-- Indexes for table `ims_modules_ignore`
--
ALTER TABLE `ims_modules_ignore`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ims_modules_plugin`
--
ALTER TABLE `ims_modules_plugin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `main_module` (`main_module`);

--
-- Indexes for table `ims_modules_rank`
--
ALTER TABLE `ims_modules_rank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_name` (`module_name`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_modules_recycle`
--
ALTER TABLE `ims_modules_recycle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `modulename` (`modulename`) USING BTREE;

--
-- Indexes for table `ims_music_reply`
--
ALTER TABLE `ims_music_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_news_reply`
--
ALTER TABLE `ims_news_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_phoneapp_versions`
--
ALTER TABLE `ims_phoneapp_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `version` (`version`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_profile_fields`
--
ALTER TABLE `ims_profile_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_qrcode`
--
ALTER TABLE `ims_qrcode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_qrcid` (`qrcid`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `ticket` (`ticket`);

--
-- Indexes for table `ims_qrcode_stat`
--
ALTER TABLE `ims_qrcode_stat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_rule`
--
ALTER TABLE `ims_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_rule_keyword`
--
ALTER TABLE `ims_rule_keyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_content` (`content`),
  ADD KEY `rid` (`rid`),
  ADD KEY `idx_rid` (`rid`),
  ADD KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`);

--
-- Indexes for table `ims_site_article`
--
ALTER TABLE `ims_site_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_iscommend` (`iscommend`),
  ADD KEY `idx_ishot` (`ishot`);

--
-- Indexes for table `ims_site_article_comment`
--
ALTER TABLE `ims_site_article_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `articleid` (`articleid`);

--
-- Indexes for table `ims_site_category`
--
ALTER TABLE `ims_site_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_site_multi`
--
ALTER TABLE `ims_site_multi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `bindhost` (`bindhost`);

--
-- Indexes for table `ims_site_nav`
--
ALTER TABLE `ims_site_nav`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `multiid` (`multiid`);

--
-- Indexes for table `ims_site_page`
--
ALTER TABLE `ims_site_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `multiid` (`multiid`);

--
-- Indexes for table `ims_site_slide`
--
ALTER TABLE `ims_site_slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `multiid` (`multiid`);

--
-- Indexes for table `ims_site_store_create_account`
--
ALTER TABLE `ims_site_store_create_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_site_store_goods`
--
ALTER TABLE `ims_site_store_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `ims_site_store_order`
--
ALTER TABLE `ims_site_store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goodid` (`goodsid`),
  ADD KEY `buyerid` (`buyerid`);

--
-- Indexes for table `ims_site_styles`
--
ALTER TABLE `ims_site_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_site_styles_vars`
--
ALTER TABLE `ims_site_styles_vars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_site_templates`
--
ALTER TABLE `ims_site_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_stat_fans`
--
ALTER TABLE `ims_stat_fans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`,`date`);

--
-- Indexes for table `ims_stat_keyword`
--
ALTER TABLE `ims_stat_keyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_createtime` (`createtime`);

--
-- Indexes for table `ims_stat_msg_history`
--
ALTER TABLE `ims_stat_msg_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_createtime` (`createtime`);

--
-- Indexes for table `ims_stat_rule`
--
ALTER TABLE `ims_stat_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_createtime` (`createtime`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_stat_visit`
--
ALTER TABLE `ims_stat_visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `module` (`module`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_system_stat_visit`
--
ALTER TABLE `ims_system_stat_visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_tiny_wmall_activity_bargain`
--
ALTER TABLE `ims_tiny_wmall_activity_bargain`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_activity_bargain_goods`
--
ALTER TABLE `ims_tiny_wmall_activity_bargain_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `bargain_id` (`bargain_id`),
  ADD KEY `goods_id` (`goods_id`),
  ADD KEY `status` (`status`),
  ADD KEY `mall_displayorder` (`mall_displayorder`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_activity_coupon`
--
ALTER TABLE `ims_tiny_wmall_activity_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `type` (`type`),
  ADD KEY `starttime` (`starttime`),
  ADD KEY `endtime` (`endtime`),
  ADD KEY `status` (`status`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `ims_tiny_wmall_activity_coupon_grant_log`
--
ALTER TABLE `ims_tiny_wmall_activity_coupon_grant_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `couponid` (`couponid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `addtime` (`addtime`);

--
-- Indexes for table `ims_tiny_wmall_activity_coupon_record`
--
ALTER TABLE `ims_tiny_wmall_activity_coupon_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `couponid` (`couponid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `status` (`status`),
  ADD KEY `is_notice` (`is_notice`),
  ADD KEY `channel` (`channel`),
  ADD KEY `noticetime` (`noticetime`),
  ADD KEY `endtime` (`endtime`),
  ADD KEY `uniacid_sid_uid_orderid` (`uniacid`,`sid`,`uid`,`order_id`);

--
-- Indexes for table `ims_tiny_wmall_activity_redpacket_record`
--
ALTER TABLE `ims_tiny_wmall_activity_redpacket_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `redpacketid` (`activity_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `status` (`status`),
  ADD KEY `is_show` (`is_show`),
  ADD KEY `scene` (`scene`),
  ADD KEY `endtime` (`endtime`),
  ADD KEY `is_notice` (`is_notice`),
  ADD KEY `noticetime` (`noticetime`),
  ADD KEY `uniacid_uid_orderid` (`uniacid`,`uid`,`order_id`),
  ADD KEY `uniacid_type_uid_aid` (`uniacid`,`type`,`uid`,`activity_id`),
  ADD KEY `uniacid_type_openid_aid` (`uniacid`,`type`,`openid`,`activity_id`),
  ADD KEY `uniacid_status_endtime` (`uniacid`,`status`,`endtime`);

--
-- Indexes for table `ims_tiny_wmall_activity_share`
--
ALTER TABLE `ims_tiny_wmall_activity_share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_address`
--
ALTER TABLE `ims_tiny_wmall_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_advertise_trade`
--
ALTER TABLE `ims_tiny_wmall_advertise_trade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `type` (`displayorder`),
  ADD KEY `status` (`status`),
  ADD KEY `starttime` (`starttime`),
  ADD KEY `endtime` (`endtime`);

--
-- Indexes for table `ims_tiny_wmall_agent`
--
ALTER TABLE `ims_tiny_wmall_agent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `status` (`status`),
  ADD KEY `uniacid_token` (`uniacid`,`token`);

--
-- Indexes for table `ims_tiny_wmall_agent_current_log`
--
ALTER TABLE `ims_tiny_wmall_agent_current_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_agent_getcash_log`
--
ALTER TABLE `ims_tiny_wmall_agent_getcash_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_area_list`
--
ALTER TABLE `ims_tiny_wmall_area_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `status` (`status`),
  ADD KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`);

--
-- Indexes for table `ims_tiny_wmall_assign_board`
--
ALTER TABLE `ims_tiny_wmall_assign_board`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `ims_tiny_wmall_assign_queue`
--
ALTER TABLE `ims_tiny_wmall_assign_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `ims_tiny_wmall_cache`
--
ALTER TABLE `ims_tiny_wmall_cache`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ims_tiny_wmall_category`
--
ALTER TABLE `ims_tiny_wmall_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_tiny_wmall_clerk`
--
ALTER TABLE `ims_tiny_wmall_clerk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `status` (`status`),
  ADD KEY `openid_wxapp` (`openid_wxapp`),
  ADD KEY `openid` (`openid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_cloudgoods_goods`
--
ALTER TABLE `ims_tiny_wmall_cloudgoods_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `is_hot` (`is_hot`),
  ADD KEY `title` (`title`),
  ADD KEY `status` (`status`),
  ADD KEY `displayorder` (`displayorder`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `ims_tiny_wmall_cloudgoods_goods_category`
--
ALTER TABLE `ims_tiny_wmall_cloudgoods_goods_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `store_categoryid` (`menu_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_cloudgoods_goods_options`
--
ALTER TABLE `ims_tiny_wmall_cloudgoods_goods_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ims_tiny_wmall_cloudgoods_menu_category`
--
ALTER TABLE `ims_tiny_wmall_cloudgoods_menu_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_complain`
--
ALTER TABLE `ims_tiny_wmall_complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_tiny_wmall_config`
--
ALTER TABLE `ims_tiny_wmall_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_creditshop_adv`
--
ALTER TABLE `ims_tiny_wmall_creditshop_adv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `status` (`status`),
  ADD KEY `displayorder` (`displayorder`);

--
-- Indexes for table `ims_tiny_wmall_creditshop_category`
--
ALTER TABLE `ims_tiny_wmall_creditshop_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `displayorder` (`displayorder`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_creditshop_goods`
--
ALTER TABLE `ims_tiny_wmall_creditshop_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_tiny_wmall_creditshop_order`
--
ALTER TABLE `ims_tiny_wmall_creditshop_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ims_tiny_wmall_creditshop_order_new`
--
ALTER TABLE `ims_tiny_wmall_creditshop_order_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `paytime` (`paytime`),
  ADD KEY `is_pay` (`is_pay`),
  ADD KEY `pay_type` (`pay_type`),
  ADD KEY `status` (`status`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_cube`
--
ALTER TABLE `ims_tiny_wmall_cube`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_deliveryer`
--
ALTER TABLE `ims_tiny_wmall_deliveryer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `work_status` (`work_status`),
  ADD KEY `token` (`token`),
  ADD KEY `is_takeout` (`is_takeout`),
  ADD KEY `is_errander` (`is_errander`),
  ADD KEY `openid_wxapp` (`openid_wxapp`),
  ADD KEY `openid` (`openid`),
  ADD KEY `registration_id` (`registration_id`),
  ADD KEY `uniacid_token` (`uniacid`,`token`);

--
-- Indexes for table `ims_tiny_wmall_deliveryer_current_log`
--
ALTER TABLE `ims_tiny_wmall_deliveryer_current_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`),
  ADD KEY `deliveryer_id` (`deliveryer_id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `trade_type` (`trade_type`),
  ADD KEY `uniacid_stat_month` (`uniacid`,`deliveryer_id`,`stat_month`);

--
-- Indexes for table `ims_tiny_wmall_deliveryer_getcash_log`
--
ALTER TABLE `ims_tiny_wmall_deliveryer_getcash_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `deliveryer_id` (`deliveryer_id`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_deliveryer_groups`
--
ALTER TABLE `ims_tiny_wmall_deliveryer_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_deliveryer_location_log`
--
ALTER TABLE `ims_tiny_wmall_deliveryer_location_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `deliveryer_id` (`deliveryer_id`),
  ADD KEY `addtime` (`addtime`);

--
-- Indexes for table `ims_tiny_wmall_deliveryer_transfer_log`
--
ALTER TABLE `ims_tiny_wmall_deliveryer_transfer_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `deliveryer_id` (`deliveryer_id`),
  ADD KEY `stat_year` (`stat_year`),
  ADD KEY `stat_month` (`stat_month`),
  ADD KEY `stat_day` (`stat_day`);

--
-- Indexes for table `ims_tiny_wmall_delivery_cards`
--
ALTER TABLE `ims_tiny_wmall_delivery_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_delivery_cards_order`
--
ALTER TABLE `ims_tiny_wmall_delivery_cards_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_tiny_wmall_diypage`
--
ALTER TABLE `ims_tiny_wmall_diypage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `type` (`type`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `version` (`version`);

--
-- Indexes for table `ims_tiny_wmall_diypage_menu`
--
ALTER TABLE `ims_tiny_wmall_diypage_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `updatetime` (`updatetime`),
  ADD KEY `version` (`version`);

--
-- Indexes for table `ims_tiny_wmall_diypage_template`
--
ALTER TABLE `ims_tiny_wmall_diypage_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_tiny_wmall_errander_category`
--
ALTER TABLE `ims_tiny_wmall_errander_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_errander_order`
--
ALTER TABLE `ims_tiny_wmall_errander_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `paytime` (`paytime`),
  ADD KEY `is_pay` (`is_pay`),
  ADD KEY `pay_type` (`pay_type`),
  ADD KEY `refund_status` (`refund_status`),
  ADD KEY `delivery_status` (`delivery_status`),
  ADD KEY `status` (`status`),
  ADD KEY `deliveryer_id` (`deliveryer_id`),
  ADD KEY `stat_year` (`stat_year`),
  ADD KEY `stat_month` (`stat_month`),
  ADD KEY `stat_day` (`stat_day`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `delivery_collect_type` (`delivery_collect_type`),
  ADD KEY `transfer_deliveryer_id` (`delivery_collect_type`),
  ADD KEY `transfer_delivery_status` (`delivery_collect_type`);

--
-- Indexes for table `ims_tiny_wmall_errander_order_discount`
--
ALTER TABLE `ims_tiny_wmall_errander_order_discount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `oid` (`oid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_tiny_wmall_errander_order_status_log`
--
ALTER TABLE `ims_tiny_wmall_errander_order_status_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `oid` (`oid`),
  ADD KEY `status` (`status`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_tiny_wmall_errander_page`
--
ALTER TABLE `ims_tiny_wmall_errander_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `type` (`type`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `isdefault` (`isdefault`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_errander_store`
--
ALTER TABLE `ims_tiny_wmall_errander_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `title` (`title`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `is_recommend` (`is_recommend`),
  ADD KEY `status` (`status`),
  ADD KEY `label` (`label`),
  ADD KEY `displayorder` (`displayorder`),
  ADD KEY `is_stick` (`is_stick`),
  ADD KEY `elemeShopId` (`elemeShopId`),
  ADD KEY `meituanShopId` (`meituanShopId`);

--
-- Indexes for table `ims_tiny_wmall_errander_store_current_log`
--
ALTER TABLE `ims_tiny_wmall_errander_store_current_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_freelunch`
--
ALTER TABLE `ims_tiny_wmall_freelunch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `starttime` (`starttime`),
  ADD KEY `endtime` (`endtime`);

--
-- Indexes for table `ims_tiny_wmall_freelunch_partaker`
--
ALTER TABLE `ims_tiny_wmall_freelunch_partaker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `freelunch_id` (`freelunch_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `serial_sn` (`serial_sn`);

--
-- Indexes for table `ims_tiny_wmall_freelunch_record`
--
ALTER TABLE `ims_tiny_wmall_freelunch_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `freelunch_id` (`freelunch_id`),
  ADD KEY `serial_sn` (`serial_sn`);

--
-- Indexes for table `ims_tiny_wmall_gohome_category`
--
ALTER TABLE `ims_tiny_wmall_gohome_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_gohome_comment`
--
ALTER TABLE `ims_tiny_wmall_gohome_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `oid` (`oid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `goods_id` (`goods_id`),
  ADD KEY `status` (`status`),
  ADD KEY `uniacid_goods_id` (`uniacid`,`agentid`,`goods_id`,`status`);

--
-- Indexes for table `ims_tiny_wmall_gohome_favorite`
--
ALTER TABLE `ims_tiny_wmall_gohome_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_uid_type_goodsid` (`uniacid`,`uid`,`type`,`goods_id`);

--
-- Indexes for table `ims_tiny_wmall_gohome_notice`
--
ALTER TABLE `ims_tiny_wmall_gohome_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_gohome_order`
--
ALTER TABLE `ims_tiny_wmall_gohome_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_uid_status` (`uniacid`,`uid`,`status`),
  ADD KEY `uniacid_sid_status` (`uniacid`,`sid`,`status`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ims_tiny_wmall_gohome_slide`
--
ALTER TABLE `ims_tiny_wmall_gohome_slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_goods`
--
ALTER TABLE `ims_tiny_wmall_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `displayorder` (`displayorder`),
  ADD KEY `elemeId` (`elemeId`),
  ADD KEY `meituanId` (`meituanId`),
  ADD KEY `openplateformCode` (`openplateformCode`),
  ADD KEY `is_showtime` (`is_showtime`),
  ADD KEY `sid` (`uniacid`,`sid`),
  ADD KEY `cid` (`uniacid`,`sid`,`type`,`status`,`cid`),
  ADD KEY `title` (`uniacid`,`sid`,`title`),
  ADD KEY `is_hot` (`uniacid`,`sid`,`type`,`status`,`is_hot`),
  ADD KEY `status` (`uniacid`,`sid`,`type`,`status`),
  ADD KEY `child_id` (`uniacid`,`sid`,`type`,`status`,`cid`,`child_id`),
  ADD KEY `uniacid_svip_status_status` (`uniacid`,`status`,`svip_status`);

--
-- Indexes for table `ims_tiny_wmall_goods_category`
--
ALTER TABLE `ims_tiny_wmall_goods_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `status` (`status`),
  ADD KEY `displayorder` (`displayorder`),
  ADD KEY `elemeId` (`elemeId`),
  ADD KEY `is_showtime` (`is_showtime`);

--
-- Indexes for table `ims_tiny_wmall_goods_options`
--
ALTER TABLE `ims_tiny_wmall_goods_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `goods_id` (`goods_id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `ims_tiny_wmall_haodian_category`
--
ALTER TABLE `ims_tiny_wmall_haodian_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_agentid` (`uniacid`,`agentid`),
  ADD KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`);

--
-- Indexes for table `ims_tiny_wmall_haodian_order`
--
ALTER TABLE `ims_tiny_wmall_haodian_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_uid` (`uniacid`,`uid`);

--
-- Indexes for table `ims_tiny_wmall_help`
--
ALTER TABLE `ims_tiny_wmall_help`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_kanjia`
--
ALTER TABLE `ims_tiny_wmall_kanjia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`),
  ADD KEY `uniacid_agentid_cateid_status` (`uniacid`,`agentid`,`cateid`,`status`);

--
-- Indexes for table `ims_tiny_wmall_kanjia_category`
--
ALTER TABLE `ims_tiny_wmall_kanjia_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_agentid` (`uniacid`,`agentid`),
  ADD KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`);

--
-- Indexes for table `ims_tiny_wmall_kanjia_helprecord`
--
ALTER TABLE `ims_tiny_wmall_kanjia_helprecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_tiny_wmall_kanjia_userlist`
--
ALTER TABLE `ims_tiny_wmall_kanjia_userlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_tiny_wmall_lewaimai_log`
--
ALTER TABLE `ims_tiny_wmall_lewaimai_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `storeidOrgoodsid` (`storeidOrgoodsid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_mealredpacket_exchange`
--
ALTER TABLE `ims_tiny_wmall_mealredpacket_exchange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `redpacketid` (`redpacketid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `ims_tiny_wmall_members`
--
ALTER TABLE `ims_tiny_wmall_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `cancel_first_time` (`cancel_first_time`),
  ADD KEY `cancel_last_time` (`cancel_last_time`),
  ADD KEY `success_first_time` (`success_first_time`),
  ADD KEY `success_last_time` (`success_last_time`),
  ADD KEY `first_order_time` (`success_first_time`),
  ADD KEY `last_order_time` (`success_last_time`),
  ADD KEY `uid_qianfan` (`uid_qianfan`),
  ADD KEY `is_spread` (`is_spread`),
  ADD KEY `spreadtime` (`spreadtime`),
  ADD KEY `openid` (`openid`),
  ADD KEY `uid_majia` (`uid_majia`),
  ADD KEY `spread1` (`spread1`),
  ADD KEY `spread2` (`spread2`),
  ADD KEY `spead_groupid` (`spread_groupid`),
  ADD KEY `spead_status` (`spread_status`),
  ADD KEY `speadid1` (`spread1`),
  ADD KEY `speadid2` (`spread2`),
  ADD KEY `openid_wxapp` (`openid_wxapp`),
  ADD KEY `unionId` (`unionId`);

--
-- Indexes for table `ims_tiny_wmall_member_black`
--
ALTER TABLE `ims_tiny_wmall_member_black`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_uid_plugin` (`uniacid`,`uid`,`plugin`);

--
-- Indexes for table `ims_tiny_wmall_member_footmark`
--
ALTER TABLE `ims_tiny_wmall_member_footmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `stat_day` (`stat_day`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `addtime` (`addtime`);

--
-- Indexes for table `ims_tiny_wmall_member_groups`
--
ALTER TABLE `ims_tiny_wmall_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_member_invoice`
--
ALTER TABLE `ims_tiny_wmall_member_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `addtime` (`addtime`);

--
-- Indexes for table `ims_tiny_wmall_member_recharge`
--
ALTER TABLE `ims_tiny_wmall_member_recharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_tiny_wmall_news`
--
ALTER TABLE `ims_tiny_wmall_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `cateid` (`cateid`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_news_category`
--
ALTER TABLE `ims_tiny_wmall_news_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_notice`
--
ALTER TABLE `ims_tiny_wmall_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_notice_read_log`
--
ALTER TABLE `ims_tiny_wmall_notice_read_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `notice_id` (`notice_id`),
  ADD KEY `is_new` (`is_new`);

--
-- Indexes for table `ims_tiny_wmall_oauth_fans`
--
ALTER TABLE `ims_tiny_wmall_oauth_fans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appid` (`appid`),
  ADD KEY `openid` (`openid`),
  ADD KEY `oauth_openid` (`oauth_openid`),
  ADD KEY `appid_openid` (`appid`,`openid`);

--
-- Indexes for table `ims_tiny_wmall_operate_log`
--
ALTER TABLE `ims_tiny_wmall_operate_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_tiny_wmall_order`
--
ALTER TABLE `ims_tiny_wmall_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_sid` (`uniacid`,`sid`),
  ADD KEY `delivery_status` (`delivery_status`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `delivery_type` (`delivery_type`),
  ADD KEY `uid` (`uid`),
  ADD KEY `order_type` (`order_type`),
  ADD KEY `status` (`status`),
  ADD KEY `refund_status` (`refund_status`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `paytime` (`paytime`),
  ADD KEY `endtime` (`endtime`),
  ADD KEY `pay_type` (`pay_type`),
  ADD KEY `stat_year` (`stat_year`),
  ADD KEY `stat_month` (`stat_month`),
  ADD KEY `stat_day` (`stat_day`),
  ADD KEY `is_pay` (`is_pay`),
  ADD KEY `deliveryer_id` (`deliveryer_id`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `clerk_notify_collect_time` (`clerk_notify_collect_time`),
  ADD KEY `handletime` (`handletime`),
  ADD KEY `elemeOrderId` (`elemeOrderId`),
  ADD KEY `order_plateform` (`order_plateform`),
  ADD KEY `elemeDowngraded` (`elemeDowngraded`),
  ADD KEY `spread1` (`spread1`),
  ADD KEY `spread2` (`spread2`),
  ADD KEY `spreadbalance` (`spreadbalance`),
  ADD KEY `meituanOrderId` (`meituanOrderId`),
  ADD KEY `order_channel` (`order_channel`),
  ADD KEY `print_sn` (`print_sn`),
  ADD KEY `print_nums` (`print_nums`),
  ADD KEY `delivery_collect_type` (`delivery_collect_type`),
  ADD KEY `transfer_deliveryer_id` (`delivery_collect_type`),
  ADD KEY `transfer_delivery_status` (`delivery_collect_type`),
  ADD KEY `stat_week` (`stat_week`),
  ADD KEY `meals_cn` (`meals_cn`),
  ADD KEY `is_remind` (`is_remind`),
  ADD KEY `uniacid_printstatus_addtime` (`uniacid`,`print_status`,`addtime`);

--
-- Indexes for table `ims_tiny_wmall_order_cart`
--
ALTER TABLE `ims_tiny_wmall_order_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `uniacid_sid_uid` (`uniacid`,`sid`,`uid`);

--
-- Indexes for table `ims_tiny_wmall_order_comment`
--
ALTER TABLE `ims_tiny_wmall_order_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `oid` (`oid`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `delivery_service` (`delivery_service`),
  ADD KEY `deliveryer_id` (`deliveryer_id`);

--
-- Indexes for table `ims_tiny_wmall_order_discount`
--
ALTER TABLE `ims_tiny_wmall_order_discount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `oid` (`oid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_tiny_wmall_order_grant`
--
ALTER TABLE `ims_tiny_wmall_order_grant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `continuous` (`continuous`),
  ADD KEY `sum` (`sum`),
  ADD KEY `updatetime` (`updatetime`);

--
-- Indexes for table `ims_tiny_wmall_order_grant_record`
--
ALTER TABLE `ims_tiny_wmall_order_grant_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `times` (`days`),
  ADD KEY `type` (`type`),
  ADD KEY `addtime` (`addtime`);

--
-- Indexes for table `ims_tiny_wmall_order_peerpay`
--
ALTER TABLE `ims_tiny_wmall_order_peerpay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `plid` (`plid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_tiny_wmall_order_peerpay_payinfo`
--
ALTER TABLE `ims_tiny_wmall_order_peerpay_payinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `openid` (`openid`),
  ADD KEY `order_sn` (`order_sn`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_order_refund`
--
ALTER TABLE `ims_tiny_wmall_order_refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ims_tiny_wmall_order_refund_log`
--
ALTER TABLE `ims_tiny_wmall_order_refund_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `oid` (`oid`),
  ADD KEY `refund_id` (`uniacid`,`refund_id`);

--
-- Indexes for table `ims_tiny_wmall_order_remind_log`
--
ALTER TABLE `ims_tiny_wmall_order_remind_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `oid` (`oid`),
  ADD KEY `remindid` (`remindid`),
  ADD KEY `channel` (`channel`);

--
-- Indexes for table `ims_tiny_wmall_order_stat`
--
ALTER TABLE `ims_tiny_wmall_order_stat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `uid` (`uid`),
  ADD KEY `bargain_id` (`bargain_id`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `oid` (`oid`),
  ADD KEY `order_plateform` (`order_plateform`);

--
-- Indexes for table `ims_tiny_wmall_order_status_log`
--
ALTER TABLE `ims_tiny_wmall_order_status_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `oid` (`oid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_tiny_wmall_paybill_order`
--
ALTER TABLE `ims_tiny_wmall_paybill_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `stat_year` (`stat_year`),
  ADD KEY `stat_month` (`stat_month`),
  ADD KEY `stat_day` (`stat_day`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `paytime` (`paytime`),
  ADD KEY `is_pay` (`is_pay`),
  ADD KEY `pay_type` (`pay_type`),
  ADD KEY `status` (`status`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_paylog`
--
ALTER TABLE `ims_tiny_wmall_paylog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `order_sn` (`order_sn`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ims_tiny_wmall_perm_account`
--
ALTER TABLE `ims_tiny_wmall_perm_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_perm_role`
--
ALTER TABLE `ims_tiny_wmall_perm_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_perm_user`
--
ALTER TABLE `ims_tiny_wmall_perm_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `roleid` (`roleid`);

--
-- Indexes for table `ims_tiny_wmall_pintuan_category`
--
ALTER TABLE `ims_tiny_wmall_pintuan_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_agentid` (`uniacid`,`agentid`),
  ADD KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`);

--
-- Indexes for table `ims_tiny_wmall_pintuan_goods`
--
ALTER TABLE `ims_tiny_wmall_pintuan_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`),
  ADD KEY `uniacid_agentid_cateid_status` (`uniacid`,`agentid`,`cateid`,`status`);

--
-- Indexes for table `ims_tiny_wmall_plugin`
--
ALTER TABLE `ims_tiny_wmall_plugin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ims_tiny_wmall_plugincenter_grant_log`
--
ALTER TABLE `ims_tiny_wmall_plugincenter_grant_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_plugincenter_order`
--
ALTER TABLE `ims_tiny_wmall_plugincenter_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`username`),
  ADD KEY `status` (`paytime`);

--
-- Indexes for table `ims_tiny_wmall_plugincenter_package`
--
ALTER TABLE `ims_tiny_wmall_plugincenter_package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_plugincenter_plugin`
--
ALTER TABLE `ims_tiny_wmall_plugincenter_plugin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `pluginid` (`pluginid`),
  ADD KEY `status` (`status`),
  ADD KEY `displayorder` (`displayorder`);

--
-- Indexes for table `ims_tiny_wmall_plugincenter_slide`
--
ALTER TABLE `ims_tiny_wmall_plugincenter_slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_printer`
--
ALTER TABLE `ims_tiny_wmall_printer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `ims_tiny_wmall_printer_label`
--
ALTER TABLE `ims_tiny_wmall_printer_label`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `ims_tiny_wmall_reply`
--
ALTER TABLE `ims_tiny_wmall_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_report`
--
ALTER TABLE `ims_tiny_wmall_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_reserve`
--
ALTER TABLE `ims_tiny_wmall_reserve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `ims_tiny_wmall_seckill_goods`
--
ALTER TABLE `ims_tiny_wmall_seckill_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `displayorder` (`displayorder`);

--
-- Indexes for table `ims_tiny_wmall_seckill_goods_category`
--
ALTER TABLE `ims_tiny_wmall_seckill_goods_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_seckill_order`
--
ALTER TABLE `ims_tiny_wmall_seckill_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_tiny_wmall_seckill_slide`
--
ALTER TABLE `ims_tiny_wmall_seckill_slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `taskid` (`taskid`);

--
-- Indexes for table `ims_tiny_wmall_seckill_task`
--
ALTER TABLE `ims_tiny_wmall_seckill_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_seckill_task_goods`
--
ALTER TABLE `ims_tiny_wmall_seckill_task_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ims_tiny_wmall_seckill_task_time`
--
ALTER TABLE `ims_tiny_wmall_seckill_task_time`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_shareredpacket`
--
ALTER TABLE `ims_tiny_wmall_shareredpacket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_shareredpacket_invite_record`
--
ALTER TABLE `ims_tiny_wmall_shareredpacket_invite_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `share_uid` (`share_uid`);

--
-- Indexes for table `ims_tiny_wmall_slide`
--
ALTER TABLE `ims_tiny_wmall_slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_spread_current_log`
--
ALTER TABLE `ims_tiny_wmall_spread_current_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spreadid` (`spreadid`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_spread_getcash_log`
--
ALTER TABLE `ims_tiny_wmall_spread_getcash_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `status` (`status`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `spreadid` (`spreadid`);

--
-- Indexes for table `ims_tiny_wmall_spread_groups`
--
ALTER TABLE `ims_tiny_wmall_spread_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_store`
--
ALTER TABLE `ims_tiny_wmall_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `title` (`title`),
  ADD KEY `is_recommend` (`is_recommend`),
  ADD KEY `cid` (`cid`),
  ADD KEY `status` (`status`),
  ADD KEY `label` (`label`),
  ADD KEY `displayorder` (`displayorder`),
  ADD KEY `is_stick` (`is_stick`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `elemeShopId` (`elemeShopId`),
  ADD KEY `meituanShopId` (`meituanShopId`),
  ADD KEY `uniacid_id` (`uniacid`,`id`),
  ADD KEY `uniacid_agentid_status_is_waimai` (`uniacid`,`agentid`,`status`,`is_waimai`),
  ADD KEY `uniacid_agentid_status_is_haodian` (`uniacid`,`agentid`,`status`,`is_haodian`);

--
-- Indexes for table `ims_tiny_wmall_storebd_current_log`
--
ALTER TABLE `ims_tiny_wmall_storebd_current_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uniacid_bdid_tradetype` (`uniacid`,`bd_id`,`trade_type`);

--
-- Indexes for table `ims_tiny_wmall_storebd_getcash_log`
--
ALTER TABLE `ims_tiny_wmall_storebd_getcash_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_bd_id` (`uniacid`,`bd_id`),
  ADD KEY `uniacid_status` (`uniacid`,`status`);

--
-- Indexes for table `ims_tiny_wmall_storebd_store`
--
ALTER TABLE `ims_tiny_wmall_storebd_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_sid_bdid` (`uniacid`,`sid`,`bd_id`);

--
-- Indexes for table `ims_tiny_wmall_storebd_user`
--
ALTER TABLE `ims_tiny_wmall_storebd_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `openid` (`openid`),
  ADD KEY `openid_wxapp` (`openid_wxapp`),
  ADD KEY `status` (`status`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_store_account`
--
ALTER TABLE `ims_tiny_wmall_store_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_store_activity`
--
ALTER TABLE `ims_tiny_wmall_store_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`),
  ADD KEY `starttime` (`starttime`),
  ADD KEY `endtime` (`endtime`),
  ADD KEY `uniacid_agentid` (`uniacid`,`agentid`);

--
-- Indexes for table `ims_tiny_wmall_store_category`
--
ALTER TABLE `ims_tiny_wmall_store_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_store_clerk`
--
ALTER TABLE `ims_tiny_wmall_store_clerk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `clerk_id` (`clerk_id`);

--
-- Indexes for table `ims_tiny_wmall_store_current_log`
--
ALTER TABLE `ims_tiny_wmall_store_current_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`),
  ADD KEY `sid` (`sid`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_store_deliveryer`
--
ALTER TABLE `ims_tiny_wmall_store_deliveryer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_store_favorite`
--
ALTER TABLE `ims_tiny_wmall_store_favorite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid_sid` (`uid`,`sid`);

--
-- Indexes for table `ims_tiny_wmall_store_getcash_log`
--
ALTER TABLE `ims_tiny_wmall_store_getcash_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_store_members`
--
ALTER TABLE `ims_tiny_wmall_store_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `first_order_time` (`success_first_time`),
  ADD KEY `last_order_time` (`success_last_time`);

--
-- Indexes for table `ims_tiny_wmall_store_page`
--
ALTER TABLE `ims_tiny_wmall_store_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_tiny_wmall_supercoupon_coupon`
--
ALTER TABLE `ims_tiny_wmall_supercoupon_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `endtime` (`endtime`);

--
-- Indexes for table `ims_tiny_wmall_supercoupon_member_group`
--
ALTER TABLE `ims_tiny_wmall_supercoupon_member_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `ims_tiny_wmall_superredpacket`
--
ALTER TABLE `ims_tiny_wmall_superredpacket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ims_tiny_wmall_superredpacket_grant`
--
ALTER TABLE `ims_tiny_wmall_superredpacket_grant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ims_tiny_wmall_superredpacket_meal_order`
--
ALTER TABLE `ims_tiny_wmall_superredpacket_meal_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `ims_tiny_wmall_superredpacket_share`
--
ALTER TABLE `ims_tiny_wmall_superredpacket_share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_svip_code`
--
ALTER TABLE `ims_tiny_wmall_svip_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_code` (`uniacid`,`code`);

--
-- Indexes for table `ims_tiny_wmall_svip_meal`
--
ALTER TABLE `ims_tiny_wmall_svip_meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_tiny_wmall_svip_meal_order`
--
ALTER TABLE `ims_tiny_wmall_svip_meal_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_uid` (`uniacid`,`uid`);

--
-- Indexes for table `ims_tiny_wmall_svip_redpacket`
--
ALTER TABLE `ims_tiny_wmall_svip_redpacket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `starttime` (`starttime`),
  ADD KEY `endtime` (`endtime`);

--
-- Indexes for table `ims_tiny_wmall_svip_task`
--
ALTER TABLE `ims_tiny_wmall_svip_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`uniacid`,`status`);

--
-- Indexes for table `ims_tiny_wmall_svip_task_records`
--
ALTER TABLE `ims_tiny_wmall_svip_task_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_uid` (`uniacid`,`task_type`,`uid`);

--
-- Indexes for table `ims_tiny_wmall_system_log`
--
ALTER TABLE `ims_tiny_wmall_system_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `type` (`type`),
  ADD KEY `addtime` (`addtime`);

--
-- Indexes for table `ims_tiny_wmall_tables`
--
ALTER TABLE `ims_tiny_wmall_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_sid` (`uniacid`,`sid`);

--
-- Indexes for table `ims_tiny_wmall_tables_category`
--
ALTER TABLE `ims_tiny_wmall_tables_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `ims_tiny_wmall_tables_scan`
--
ALTER TABLE `ims_tiny_wmall_tables_scan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `table_id` (`table_id`);

--
-- Indexes for table `ims_tiny_wmall_text`
--
ALTER TABLE `ims_tiny_wmall_text`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `ims_tiny_wmall_tongcheng_category`
--
ALTER TABLE `ims_tiny_wmall_tongcheng_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_agentid` (`uniacid`,`agentid`),
  ADD KEY `uniacid_agentid_status` (`uniacid`,`agentid`,`status`);

--
-- Indexes for table `ims_tiny_wmall_tongcheng_comment`
--
ALTER TABLE `ims_tiny_wmall_tongcheng_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_tid` (`uniacid`,`tid`);

--
-- Indexes for table `ims_tiny_wmall_tongcheng_information`
--
ALTER TABLE `ims_tiny_wmall_tongcheng_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_tiny_wmall_tongcheng_order`
--
ALTER TABLE `ims_tiny_wmall_tongcheng_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_type` (`uniacid`,`type`);

--
-- Indexes for table `ims_tiny_wmall_tongcheng_reply`
--
ALTER TABLE `ims_tiny_wmall_tongcheng_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid_tid_cid` (`uniacid`,`tid`,`cid`);

--
-- Indexes for table `ims_tiny_wmall_wheel`
--
ALTER TABLE `ims_tiny_wmall_wheel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `status` (`status`),
  ADD KEY `starttime` (`starttime`),
  ADD KEY `endtime` (`endtime`);

--
-- Indexes for table `ims_tiny_wmall_wheel_record`
--
ALTER TABLE `ims_tiny_wmall_wheel_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `stat_day` (`stat_day`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `ims_tiny_wmall_wxapp_formid_log`
--
ALTER TABLE `ims_tiny_wmall_wxapp_formid_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `formid` (`uniacid`,`appid`,`openid`),
  ADD KEY `openid` (`openid`);

--
-- Indexes for table `ims_tiny_wmall_wxapp_page`
--
ALTER TABLE `ims_tiny_wmall_wxapp_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `type` (`type`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `isdefault` (`isdefault`);

--
-- Indexes for table `ims_uni_account`
--
ALTER TABLE `ims_uni_account`
  ADD PRIMARY KEY (`uniacid`);

--
-- Indexes for table `ims_uni_account_group`
--
ALTER TABLE `ims_uni_account_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_uni_account_menus`
--
ALTER TABLE `ims_uni_account_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `menuid` (`menuid`);

--
-- Indexes for table `ims_uni_account_modules`
--
ALTER TABLE `ims_uni_account_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_module` (`module`),
  ADD KEY `idx_uniacid` (`uniacid`);

--
-- Indexes for table `ims_uni_account_users`
--
ALTER TABLE `ims_uni_account_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_memberid` (`uid`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_uni_group`
--
ALTER TABLE `ims_uni_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_uni_settings`
--
ALTER TABLE `ims_uni_settings`
  ADD PRIMARY KEY (`uniacid`);

--
-- Indexes for table `ims_uni_verifycode`
--
ALTER TABLE `ims_uni_verifycode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_userapi_cache`
--
ALTER TABLE `ims_userapi_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_userapi_reply`
--
ALTER TABLE `ims_userapi_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_users`
--
ALTER TABLE `ims_users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `ims_users_bind`
--
ALTER TABLE `ims_users_bind`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `bind_sign` (`bind_sign`);

--
-- Indexes for table `ims_users_failed_login`
--
ALTER TABLE `ims_users_failed_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_username` (`ip`,`username`);

--
-- Indexes for table `ims_users_founder_group`
--
ALTER TABLE `ims_users_founder_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_users_group`
--
ALTER TABLE `ims_users_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_users_invitation`
--
ALTER TABLE `ims_users_invitation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_code` (`code`);

--
-- Indexes for table `ims_users_permission`
--
ALTER TABLE `ims_users_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_users_profile`
--
ALTER TABLE `ims_users_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_video_reply`
--
ALTER TABLE `ims_video_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_voice_reply`
--
ALTER TABLE `ims_voice_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `ims_wechat_attachment`
--
ALTER TABLE `ims_wechat_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `media_id` (`media_id`),
  ADD KEY `acid` (`acid`);

--
-- Indexes for table `ims_wechat_news`
--
ALTER TABLE `ims_wechat_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `attach_id` (`attach_id`);

--
-- Indexes for table `ims_wxapp_general_analysis`
--
ALTER TABLE `ims_wxapp_general_analysis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniacid` (`uniacid`),
  ADD KEY `ref_date` (`ref_date`);

--
-- Indexes for table `ims_wxapp_versions`
--
ALTER TABLE `ims_wxapp_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `version` (`version`),
  ADD KEY `uniacid` (`uniacid`);

--
-- Indexes for table `ims_wxcard_reply`
--
ALTER TABLE `ims_wxcard_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ims_account`
--
ALTER TABLE `ims_account`
  MODIFY `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_account_wxapp`
--
ALTER TABLE `ims_account_wxapp`
  MODIFY `acid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_article_category`
--
ALTER TABLE `ims_article_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_article_comment`
--
ALTER TABLE `ims_article_comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_article_news`
--
ALTER TABLE `ims_article_news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_article_notice`
--
ALTER TABLE `ims_article_notice`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_article_unread_notice`
--
ALTER TABLE `ims_article_unread_notice`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_attachment_group`
--
ALTER TABLE `ims_attachment_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_basic_reply`
--
ALTER TABLE `ims_basic_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_business`
--
ALTER TABLE `ims_business`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_attachment`
--
ALTER TABLE `ims_core_attachment`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_cron`
--
ALTER TABLE `ims_core_cron`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_cron_record`
--
ALTER TABLE `ims_core_cron_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_job`
--
ALTER TABLE `ims_core_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_menu`
--
ALTER TABLE `ims_core_menu`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_paylog`
--
ALTER TABLE `ims_core_paylog`
  MODIFY `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_performance`
--
ALTER TABLE `ims_core_performance`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_queue`
--
ALTER TABLE `ims_core_queue`
  MODIFY `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_refundlog`
--
ALTER TABLE `ims_core_refundlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_resource`
--
ALTER TABLE `ims_core_resource`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_core_sendsms_log`
--
ALTER TABLE `ims_core_sendsms_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_coupon_location`
--
ALTER TABLE `ims_coupon_location`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_cover_reply`
--
ALTER TABLE `ims_cover_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ims_custom_reply`
--
ALTER TABLE `ims_custom_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_images_reply`
--
ALTER TABLE `ims_images_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_job`
--
ALTER TABLE `ims_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_cash_record`
--
ALTER TABLE `ims_mc_cash_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_chats_record`
--
ALTER TABLE `ims_mc_chats_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_credits_recharge`
--
ALTER TABLE `ims_mc_credits_recharge`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_credits_record`
--
ALTER TABLE `ims_mc_credits_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_fans_groups`
--
ALTER TABLE `ims_mc_fans_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_fans_tag_mapping`
--
ALTER TABLE `ims_mc_fans_tag_mapping`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_groups`
--
ALTER TABLE `ims_mc_groups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_mc_handsel`
--
ALTER TABLE `ims_mc_handsel`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_mapping_fans`
--
ALTER TABLE `ims_mc_mapping_fans`
  MODIFY `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_mapping_ucenter`
--
ALTER TABLE `ims_mc_mapping_ucenter`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_mass_record`
--
ALTER TABLE `ims_mc_mass_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_members`
--
ALTER TABLE `ims_mc_members`
  MODIFY `uid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_member_address`
--
ALTER TABLE `ims_mc_member_address`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_member_fields`
--
ALTER TABLE `ims_mc_member_fields`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_member_property`
--
ALTER TABLE `ims_mc_member_property`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mc_oauth_fans`
--
ALTER TABLE `ims_mc_oauth_fans`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_menu_event`
--
ALTER TABLE `ims_menu_event`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_message_notice_log`
--
ALTER TABLE `ims_message_notice_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_mobilenumber`
--
ALTER TABLE `ims_mobilenumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_modules`
--
ALTER TABLE `ims_modules`
  MODIFY `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ims_modules_bindings`
--
ALTER TABLE `ims_modules_bindings`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_modules_cloud`
--
ALTER TABLE `ims_modules_cloud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_modules_ignore`
--
ALTER TABLE `ims_modules_ignore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `ims_modules_plugin`
--
ALTER TABLE `ims_modules_plugin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_modules_rank`
--
ALTER TABLE `ims_modules_rank`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_modules_recycle`
--
ALTER TABLE `ims_modules_recycle`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_music_reply`
--
ALTER TABLE `ims_music_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_news_reply`
--
ALTER TABLE `ims_news_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_phoneapp_versions`
--
ALTER TABLE `ims_phoneapp_versions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_profile_fields`
--
ALTER TABLE `ims_profile_fields`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `ims_qrcode`
--
ALTER TABLE `ims_qrcode`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_qrcode_stat`
--
ALTER TABLE `ims_qrcode_stat`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_rule`
--
ALTER TABLE `ims_rule`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ims_rule_keyword`
--
ALTER TABLE `ims_rule_keyword`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ims_site_article`
--
ALTER TABLE `ims_site_article`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_article_comment`
--
ALTER TABLE `ims_site_article_comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_category`
--
ALTER TABLE `ims_site_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_multi`
--
ALTER TABLE `ims_site_multi`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_site_nav`
--
ALTER TABLE `ims_site_nav`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_page`
--
ALTER TABLE `ims_site_page`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_slide`
--
ALTER TABLE `ims_site_slide`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_store_create_account`
--
ALTER TABLE `ims_site_store_create_account`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_store_goods`
--
ALTER TABLE `ims_site_store_goods`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_store_order`
--
ALTER TABLE `ims_site_store_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_styles`
--
ALTER TABLE `ims_site_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_site_styles_vars`
--
ALTER TABLE `ims_site_styles_vars`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_site_templates`
--
ALTER TABLE `ims_site_templates`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_stat_fans`
--
ALTER TABLE `ims_stat_fans`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `ims_stat_keyword`
--
ALTER TABLE `ims_stat_keyword`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_stat_msg_history`
--
ALTER TABLE `ims_stat_msg_history`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_stat_rule`
--
ALTER TABLE `ims_stat_rule`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_stat_visit`
--
ALTER TABLE `ims_stat_visit`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `ims_system_stat_visit`
--
ALTER TABLE `ims_system_stat_visit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_activity_bargain`
--
ALTER TABLE `ims_tiny_wmall_activity_bargain`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_activity_bargain_goods`
--
ALTER TABLE `ims_tiny_wmall_activity_bargain_goods`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_activity_coupon`
--
ALTER TABLE `ims_tiny_wmall_activity_coupon`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_activity_coupon_grant_log`
--
ALTER TABLE `ims_tiny_wmall_activity_coupon_grant_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号';
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_activity_coupon_record`
--
ALTER TABLE `ims_tiny_wmall_activity_coupon_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_activity_redpacket_record`
--
ALTER TABLE `ims_tiny_wmall_activity_redpacket_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=426;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_activity_share`
--
ALTER TABLE `ims_tiny_wmall_activity_share`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_address`
--
ALTER TABLE `ims_tiny_wmall_address`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1658;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_advertise_trade`
--
ALTER TABLE `ims_tiny_wmall_advertise_trade`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_agent`
--
ALTER TABLE `ims_tiny_wmall_agent`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_agent_current_log`
--
ALTER TABLE `ims_tiny_wmall_agent_current_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_agent_getcash_log`
--
ALTER TABLE `ims_tiny_wmall_agent_getcash_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_area_list`
--
ALTER TABLE `ims_tiny_wmall_area_list`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_assign_board`
--
ALTER TABLE `ims_tiny_wmall_assign_board`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=390;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_assign_queue`
--
ALTER TABLE `ims_tiny_wmall_assign_queue`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_category`
--
ALTER TABLE `ims_tiny_wmall_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_clerk`
--
ALTER TABLE `ims_tiny_wmall_clerk`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=523;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_cloudgoods_goods`
--
ALTER TABLE `ims_tiny_wmall_cloudgoods_goods`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_cloudgoods_goods_category`
--
ALTER TABLE `ims_tiny_wmall_cloudgoods_goods_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_cloudgoods_goods_options`
--
ALTER TABLE `ims_tiny_wmall_cloudgoods_goods_options`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_cloudgoods_menu_category`
--
ALTER TABLE `ims_tiny_wmall_cloudgoods_menu_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_complain`
--
ALTER TABLE `ims_tiny_wmall_complain`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_config`
--
ALTER TABLE `ims_tiny_wmall_config`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=522;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_creditshop_adv`
--
ALTER TABLE `ims_tiny_wmall_creditshop_adv`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_creditshop_category`
--
ALTER TABLE `ims_tiny_wmall_creditshop_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_creditshop_goods`
--
ALTER TABLE `ims_tiny_wmall_creditshop_goods`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_creditshop_order`
--
ALTER TABLE `ims_tiny_wmall_creditshop_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_creditshop_order_new`
--
ALTER TABLE `ims_tiny_wmall_creditshop_order_new`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_cube`
--
ALTER TABLE `ims_tiny_wmall_cube`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=439;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_deliveryer`
--
ALTER TABLE `ims_tiny_wmall_deliveryer`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=388;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_deliveryer_current_log`
--
ALTER TABLE `ims_tiny_wmall_deliveryer_current_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=531;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_deliveryer_getcash_log`
--
ALTER TABLE `ims_tiny_wmall_deliveryer_getcash_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_deliveryer_groups`
--
ALTER TABLE `ims_tiny_wmall_deliveryer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_deliveryer_location_log`
--
ALTER TABLE `ims_tiny_wmall_deliveryer_location_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_deliveryer_transfer_log`
--
ALTER TABLE `ims_tiny_wmall_deliveryer_transfer_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_delivery_cards`
--
ALTER TABLE `ims_tiny_wmall_delivery_cards`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_delivery_cards_order`
--
ALTER TABLE `ims_tiny_wmall_delivery_cards_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=306;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_diypage`
--
ALTER TABLE `ims_tiny_wmall_diypage`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=315;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_diypage_menu`
--
ALTER TABLE `ims_tiny_wmall_diypage_menu`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_diypage_template`
--
ALTER TABLE `ims_tiny_wmall_diypage_template`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_errander_category`
--
ALTER TABLE `ims_tiny_wmall_errander_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_errander_order`
--
ALTER TABLE `ims_tiny_wmall_errander_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_errander_order_discount`
--
ALTER TABLE `ims_tiny_wmall_errander_order_discount`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_errander_order_status_log`
--
ALTER TABLE `ims_tiny_wmall_errander_order_status_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_errander_page`
--
ALTER TABLE `ims_tiny_wmall_errander_page`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_errander_store`
--
ALTER TABLE `ims_tiny_wmall_errander_store`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=576;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_errander_store_current_log`
--
ALTER TABLE `ims_tiny_wmall_errander_store_current_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_freelunch`
--
ALTER TABLE `ims_tiny_wmall_freelunch`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_freelunch_partaker`
--
ALTER TABLE `ims_tiny_wmall_freelunch_partaker`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_freelunch_record`
--
ALTER TABLE `ims_tiny_wmall_freelunch_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_gohome_category`
--
ALTER TABLE `ims_tiny_wmall_gohome_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_gohome_comment`
--
ALTER TABLE `ims_tiny_wmall_gohome_comment`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_gohome_favorite`
--
ALTER TABLE `ims_tiny_wmall_gohome_favorite`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_gohome_notice`
--
ALTER TABLE `ims_tiny_wmall_gohome_notice`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_gohome_order`
--
ALTER TABLE `ims_tiny_wmall_gohome_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_gohome_slide`
--
ALTER TABLE `ims_tiny_wmall_gohome_slide`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_goods`
--
ALTER TABLE `ims_tiny_wmall_goods`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15988;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_goods_category`
--
ALTER TABLE `ims_tiny_wmall_goods_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2468;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_goods_options`
--
ALTER TABLE `ims_tiny_wmall_goods_options`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=815;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_haodian_category`
--
ALTER TABLE `ims_tiny_wmall_haodian_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_haodian_order`
--
ALTER TABLE `ims_tiny_wmall_haodian_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_help`
--
ALTER TABLE `ims_tiny_wmall_help`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_kanjia`
--
ALTER TABLE `ims_tiny_wmall_kanjia`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_kanjia_category`
--
ALTER TABLE `ims_tiny_wmall_kanjia_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_kanjia_helprecord`
--
ALTER TABLE `ims_tiny_wmall_kanjia_helprecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_kanjia_userlist`
--
ALTER TABLE `ims_tiny_wmall_kanjia_userlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_lewaimai_log`
--
ALTER TABLE `ims_tiny_wmall_lewaimai_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2820;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_mealredpacket_exchange`
--
ALTER TABLE `ims_tiny_wmall_mealredpacket_exchange`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_members`
--
ALTER TABLE `ims_tiny_wmall_members`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5579;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_member_black`
--
ALTER TABLE `ims_tiny_wmall_member_black`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_member_footmark`
--
ALTER TABLE `ims_tiny_wmall_member_footmark`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1238;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_member_groups`
--
ALTER TABLE `ims_tiny_wmall_member_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_member_invoice`
--
ALTER TABLE `ims_tiny_wmall_member_invoice`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_member_recharge`
--
ALTER TABLE `ims_tiny_wmall_member_recharge`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_news`
--
ALTER TABLE `ims_tiny_wmall_news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_news_category`
--
ALTER TABLE `ims_tiny_wmall_news_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_notice`
--
ALTER TABLE `ims_tiny_wmall_notice`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_notice_read_log`
--
ALTER TABLE `ims_tiny_wmall_notice_read_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=402;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_oauth_fans`
--
ALTER TABLE `ims_tiny_wmall_oauth_fans`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_operate_log`
--
ALTER TABLE `ims_tiny_wmall_operate_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order`
--
ALTER TABLE `ims_tiny_wmall_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_cart`
--
ALTER TABLE `ims_tiny_wmall_order_cart`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9334;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_comment`
--
ALTER TABLE `ims_tiny_wmall_order_comment`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_discount`
--
ALTER TABLE `ims_tiny_wmall_order_discount`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4151;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_grant`
--
ALTER TABLE `ims_tiny_wmall_order_grant`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_grant_record`
--
ALTER TABLE `ims_tiny_wmall_order_grant_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_peerpay`
--
ALTER TABLE `ims_tiny_wmall_order_peerpay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_peerpay_payinfo`
--
ALTER TABLE `ims_tiny_wmall_order_peerpay_payinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_refund`
--
ALTER TABLE `ims_tiny_wmall_order_refund`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_refund_log`
--
ALTER TABLE `ims_tiny_wmall_order_refund_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=302;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_remind_log`
--
ALTER TABLE `ims_tiny_wmall_order_remind_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_stat`
--
ALTER TABLE `ims_tiny_wmall_order_stat`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7412;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_order_status_log`
--
ALTER TABLE `ims_tiny_wmall_order_status_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=891;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_paybill_order`
--
ALTER TABLE `ims_tiny_wmall_paybill_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_paylog`
--
ALTER TABLE `ims_tiny_wmall_paylog`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_perm_account`
--
ALTER TABLE `ims_tiny_wmall_perm_account`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_perm_role`
--
ALTER TABLE `ims_tiny_wmall_perm_role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_perm_user`
--
ALTER TABLE `ims_tiny_wmall_perm_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_pintuan_category`
--
ALTER TABLE `ims_tiny_wmall_pintuan_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_pintuan_goods`
--
ALTER TABLE `ims_tiny_wmall_pintuan_goods`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_plugin`
--
ALTER TABLE `ims_tiny_wmall_plugin`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=542;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_plugincenter_grant_log`
--
ALTER TABLE `ims_tiny_wmall_plugincenter_grant_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_plugincenter_order`
--
ALTER TABLE `ims_tiny_wmall_plugincenter_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_plugincenter_package`
--
ALTER TABLE `ims_tiny_wmall_plugincenter_package`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_plugincenter_plugin`
--
ALTER TABLE `ims_tiny_wmall_plugincenter_plugin`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_plugincenter_slide`
--
ALTER TABLE `ims_tiny_wmall_plugincenter_slide`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_printer`
--
ALTER TABLE `ims_tiny_wmall_printer`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_printer_label`
--
ALTER TABLE `ims_tiny_wmall_printer_label`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_reply`
--
ALTER TABLE `ims_tiny_wmall_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=200;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_report`
--
ALTER TABLE `ims_tiny_wmall_report`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_reserve`
--
ALTER TABLE `ims_tiny_wmall_reserve`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=339;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_seckill_goods`
--
ALTER TABLE `ims_tiny_wmall_seckill_goods`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_seckill_goods_category`
--
ALTER TABLE `ims_tiny_wmall_seckill_goods_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_seckill_order`
--
ALTER TABLE `ims_tiny_wmall_seckill_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_seckill_task`
--
ALTER TABLE `ims_tiny_wmall_seckill_task`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_seckill_task_goods`
--
ALTER TABLE `ims_tiny_wmall_seckill_task_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_seckill_task_time`
--
ALTER TABLE `ims_tiny_wmall_seckill_task_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=538;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_shareredpacket`
--
ALTER TABLE `ims_tiny_wmall_shareredpacket`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_shareredpacket_invite_record`
--
ALTER TABLE `ims_tiny_wmall_shareredpacket_invite_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_slide`
--
ALTER TABLE `ims_tiny_wmall_slide`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_spread_current_log`
--
ALTER TABLE `ims_tiny_wmall_spread_current_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_spread_getcash_log`
--
ALTER TABLE `ims_tiny_wmall_spread_getcash_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_spread_groups`
--
ALTER TABLE `ims_tiny_wmall_spread_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_store`
--
ALTER TABLE `ims_tiny_wmall_store`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1309;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_storebd_current_log`
--
ALTER TABLE `ims_tiny_wmall_storebd_current_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_storebd_getcash_log`
--
ALTER TABLE `ims_tiny_wmall_storebd_getcash_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_storebd_store`
--
ALTER TABLE `ims_tiny_wmall_storebd_store`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_storebd_user`
--
ALTER TABLE `ims_tiny_wmall_storebd_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_store_account`
--
ALTER TABLE `ims_tiny_wmall_store_account`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1376;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_store_activity`
--
ALTER TABLE `ims_tiny_wmall_store_activity`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=282;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_store_category`
--
ALTER TABLE `ims_tiny_wmall_store_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=518;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_store_clerk`
--
ALTER TABLE `ims_tiny_wmall_store_clerk`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=477;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_store_current_log`
--
ALTER TABLE `ims_tiny_wmall_store_current_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=729;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_store_deliveryer`
--
ALTER TABLE `ims_tiny_wmall_store_deliveryer`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_store_favorite`
--
ALTER TABLE `ims_tiny_wmall_store_favorite`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=482;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_store_getcash_log`
--
ALTER TABLE `ims_tiny_wmall_store_getcash_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_store_members`
--
ALTER TABLE `ims_tiny_wmall_store_members`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1643;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_store_page`
--
ALTER TABLE `ims_tiny_wmall_store_page`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_supercoupon_coupon`
--
ALTER TABLE `ims_tiny_wmall_supercoupon_coupon`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_supercoupon_member_group`
--
ALTER TABLE `ims_tiny_wmall_supercoupon_member_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_superredpacket`
--
ALTER TABLE `ims_tiny_wmall_superredpacket`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_superredpacket_grant`
--
ALTER TABLE `ims_tiny_wmall_superredpacket_grant`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_superredpacket_meal_order`
--
ALTER TABLE `ims_tiny_wmall_superredpacket_meal_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_superredpacket_share`
--
ALTER TABLE `ims_tiny_wmall_superredpacket_share`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_svip_code`
--
ALTER TABLE `ims_tiny_wmall_svip_code`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_svip_meal`
--
ALTER TABLE `ims_tiny_wmall_svip_meal`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_svip_meal_order`
--
ALTER TABLE `ims_tiny_wmall_svip_meal_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_svip_redpacket`
--
ALTER TABLE `ims_tiny_wmall_svip_redpacket`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_svip_task`
--
ALTER TABLE `ims_tiny_wmall_svip_task`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_svip_task_records`
--
ALTER TABLE `ims_tiny_wmall_svip_task_records`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_system_log`
--
ALTER TABLE `ims_tiny_wmall_system_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_tables`
--
ALTER TABLE `ims_tiny_wmall_tables`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=186;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_tables_category`
--
ALTER TABLE `ims_tiny_wmall_tables_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_tables_scan`
--
ALTER TABLE `ims_tiny_wmall_tables_scan`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_text`
--
ALTER TABLE `ims_tiny_wmall_text`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=256;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_tongcheng_category`
--
ALTER TABLE `ims_tiny_wmall_tongcheng_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_tongcheng_comment`
--
ALTER TABLE `ims_tiny_wmall_tongcheng_comment`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_tongcheng_information`
--
ALTER TABLE `ims_tiny_wmall_tongcheng_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_tongcheng_order`
--
ALTER TABLE `ims_tiny_wmall_tongcheng_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_tongcheng_reply`
--
ALTER TABLE `ims_tiny_wmall_tongcheng_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_wheel`
--
ALTER TABLE `ims_tiny_wmall_wheel`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_wheel_record`
--
ALTER TABLE `ims_tiny_wmall_wheel_record`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_wxapp_formid_log`
--
ALTER TABLE `ims_tiny_wmall_wxapp_formid_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_tiny_wmall_wxapp_page`
--
ALTER TABLE `ims_tiny_wmall_wxapp_page`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ims_uni_account`
--
ALTER TABLE `ims_uni_account`
  MODIFY `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_uni_account_group`
--
ALTER TABLE `ims_uni_account_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_uni_account_menus`
--
ALTER TABLE `ims_uni_account_menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_uni_account_modules`
--
ALTER TABLE `ims_uni_account_modules`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_uni_account_users`
--
ALTER TABLE `ims_uni_account_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_uni_group`
--
ALTER TABLE `ims_uni_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_uni_verifycode`
--
ALTER TABLE `ims_uni_verifycode`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_userapi_cache`
--
ALTER TABLE `ims_userapi_cache`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_userapi_reply`
--
ALTER TABLE `ims_userapi_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ims_users`
--
ALTER TABLE `ims_users`
  MODIFY `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ims_users_bind`
--
ALTER TABLE `ims_users_bind`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_users_failed_login`
--
ALTER TABLE `ims_users_failed_login`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ims_users_founder_group`
--
ALTER TABLE `ims_users_founder_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_users_group`
--
ALTER TABLE `ims_users_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_users_invitation`
--
ALTER TABLE `ims_users_invitation`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_users_permission`
--
ALTER TABLE `ims_users_permission`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_users_profile`
--
ALTER TABLE `ims_users_profile`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_video_reply`
--
ALTER TABLE `ims_video_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_voice_reply`
--
ALTER TABLE `ims_voice_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_wechat_attachment`
--
ALTER TABLE `ims_wechat_attachment`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_wechat_news`
--
ALTER TABLE `ims_wechat_news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_wxapp_general_analysis`
--
ALTER TABLE `ims_wxapp_general_analysis`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_wxapp_versions`
--
ALTER TABLE `ims_wxapp_versions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ims_wxcard_reply`
--
ALTER TABLE `ims_wxcard_reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


--
-- 表的结构 `ims_tiny_wmall_stripe`
--

CREATE TABLE IF NOT EXISTS `ims_tiny_wmall_stripe` (
  `id` int(11) NOT NULL,
  `acid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `stripe_id` varchar(255) NOT NULL,
  `card_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ims_tiny_wmall_stripe`
--
ALTER TABLE `ims_tiny_wmall_stripe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acid` (`acid`),
  ADD KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ims_tiny_wmall_stripe`
--
ALTER TABLE `ims_tiny_wmall_stripe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
