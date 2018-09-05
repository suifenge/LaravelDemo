/*
Navicat MySQL Data Transfer

Source Server         : phpMyAdmin
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : laravel

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-09-05 16:54:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'Title0', 'Body0', '1', '2018-09-04 03:33:27', '2018-09-05 02:33:27');
INSERT INTO `articles` VALUES ('2', 'Title1', 'Body1', '1', '2018-09-04 03:33:27', '2018-09-04 03:33:27');
INSERT INTO `articles` VALUES ('3', 'Title2', 'Body2', '1', '2018-09-04 03:33:27', '2018-09-04 03:33:27');
INSERT INTO `articles` VALUES ('4', 'Title3', 'Body3', '1', '2018-09-04 03:33:27', '2018-09-04 03:33:27');
INSERT INTO `articles` VALUES ('5', 'Title4', 'Body4', '1', '2018-09-04 03:33:27', '2018-09-04 03:33:27');
INSERT INTO `articles` VALUES ('6', 'Title5', 'Body5', '1', '2018-09-04 03:33:27', '2018-09-04 03:33:27');
INSERT INTO `articles` VALUES ('7', 'Title6', 'Body6', '1', '2018-09-04 03:33:27', '2018-09-04 03:33:27');
INSERT INTO `articles` VALUES ('8', 'Title7', 'Body7', '1', '2018-09-04 03:33:27', '2018-09-04 03:33:27');
INSERT INTO `articles` VALUES ('9', 'Title8', 'Body8', '1', '2018-09-04 03:33:27', '2018-09-04 03:33:27');
INSERT INTO `articles` VALUES ('10', 'Title9', 'Body9', '1', '2018-09-04 03:33:27', '2018-09-04 03:33:27');
INSERT INTO `articles` VALUES ('11', '房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图', '房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图房间模式，投注界面，点击查看跟投投注详情，未按产品原型图做，如图', '1', '2018-09-04 10:49:58', '2018-09-04 10:49:58');
INSERT INTO `articles` VALUES ('12', 'Title 测试', '测试', '1', '2018-09-05 02:01:13', '2018-09-05 02:01:13');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('2', 'nickname1', 'nikename@abc.com', 'http://www.github.com', 'ABCABCABCABCABC', '2', '2018-09-05 06:01:37', '2018-09-05 06:01:37');
INSERT INTO `comments` VALUES ('3', '随风', 'suifeng@root.com', null, '@nickname1', '2', '2018-09-05 06:01:58', '2018-09-05 06:01:58');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_09_04_030735_create_article_table', '1');
INSERT INTO `migrations` VALUES ('4', '2018_09_04_033029_create_articles_table', '2');
INSERT INTO `migrations` VALUES ('5', '2018_09_05_024731_create_comments_table', '3');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'suifeng', 'suifeng@root.com', '$2y$10$2OWnL3nqEQ3YI1LKovlBl.JjV0TbBqe5WCL1i8CB3JqlE7RxnBaAm', '82Y7WPNY1TiT89Yx3yT37uUrgcGuauXlVrMjYaF7L1IYiBA3WbG2N0wdEPYK', '2018-09-04 03:18:34', '2018-09-04 03:18:34');
