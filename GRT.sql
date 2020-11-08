/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : risingwind

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 08/11/2020 00:57:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_admin
-- ----------------------------
DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `admin` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '管理员',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '管理员密码',
  `login_count` int(0) NULL DEFAULT 0 COMMENT '登录次数',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录ip地址',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  `login_old_time` datetime(0) NULL DEFAULT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '管理员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_admin
-- ----------------------------
INSERT INTO `tbl_admin` VALUES (1, 'admin', 'admin', 3, '010', '2020-04-18 11:21:55', '2020-04-18 11:21:55');

-- ----------------------------
-- Table structure for tbl_forums
-- ----------------------------
DROP TABLE IF EXISTS `tbl_forums`;
CREATE TABLE `tbl_forums`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '版块名称',
  `info` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '版块信息表',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '/bbs/default/default_forums.png' COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '版块表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_forums
-- ----------------------------
INSERT INTO `tbl_forums` VALUES (1, 'LOL', '', '/bbs/forums/lol.png');
INSERT INTO `tbl_forums` VALUES (2, 'Dota', '', '/bbs/forums/dota.png');
INSERT INTO `tbl_forums` VALUES (3, 'War3', NULL, '/bbs/forums/war3 1.png');
INSERT INTO `tbl_forums` VALUES (4, 'CSGO', '', '/bbs/forums/csgo.png');
INSERT INTO `tbl_forums` VALUES (5, 'PUBG', '', '/bbs/forums/pubg.png');
INSERT INTO `tbl_forums` VALUES (6, 'COD', '', '/bbs/forums/cod.png');
INSERT INTO `tbl_forums` VALUES (7, 'PUBG Mobile', '', '/bbs/forums/pubg1.png');
INSERT INTO `tbl_forums` VALUES (8, 'Fortnite', '', '/bbs/forums/bugfk.png');
INSERT INTO `tbl_forums` VALUES (9, 'Clash of Clans', '', '/bbs/forums/tscl.png');

-- ----------------------------
-- Table structure for tbl_post
-- ----------------------------
DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE `tbl_post`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `forum_id` int(0) NULL DEFAULT 0 COMMENT '版块Id',
  `user_id` int(0) NULL DEFAULT 0 COMMENT '用户id',
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '贴子标题',
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '/bbs/default/default_post.png' COMMENT '帖子图片',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '信息内容',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `views` int(0) NULL DEFAULT 0 COMMENT '浏览量',
  `regens` int(0) NULL DEFAULT 0 COMMENT '回复量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '贴子表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_post
-- ----------------------------
INSERT INTO `tbl_post` VALUES (29, 1, 1, '123', '/bbs/default/default_post.png', '<p>123</p>', '2020-11-07 19:54:03', 41, 1);
INSERT INTO `tbl_post` VALUES (30, 1, 1, '123', '/bbs/default/default_post.png', '<p>123</p>', '2020-11-07 20:33:57', 2, 1);
INSERT INTO `tbl_post` VALUES (31, 1, 1, '999', '/bbs/default/default_post.png', '<p>123123</p>', '2020-11-07 20:54:05', 2, 0);

-- ----------------------------
-- Table structure for tbl_reply
-- ----------------------------
DROP TABLE IF EXISTS `tbl_reply`;
CREATE TABLE `tbl_reply`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `post_id` int(0) NULL DEFAULT NULL COMMENT '贴子ID',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `floor` int(0) NULL DEFAULT 0 COMMENT '回复楼层',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '回帖内容',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '回帖时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '回帖表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_reply
-- ----------------------------
INSERT INTO `tbl_reply` VALUES (5, 29, 1, 1, '<p>good</p><p><br/></p>', '2020-11-07 19:57:16');
INSERT INTO `tbl_reply` VALUES (6, 30, 1, 1, '<p>123213</p>', '2020-11-07 20:34:06');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '手机号',
  `qq` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'QQ号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮箱',
  `registr_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `registr_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '注册IP地址',
  `signin_num` int(0) NULL DEFAULT 0 COMMENT '签到次数',
  `signin_points` int(0) NULL DEFAULT 0 COMMENT '签到积分',
  `grade` int(0) NULL DEFAULT 1 COMMENT '等级',
  `positi` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '小白' COMMENT '职位',
  `exp` int(0) NULL DEFAULT 0 COMMENT '经验值',
  `sex` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '男' COMMENT '性别',
  `birthday` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生日',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '/bbs/default/default_user.jpg' COMMENT '头像',
  `qianming` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '个性签名',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录ip地址',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  `login_old_time` datetime(0) NULL DEFAULT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, '123456', '123456', '18866674230', '171603010731', '123456@qq.com', '2020-04-17 15:07:52', '010', 22, 106, 9, 'rookie', 209, 'male', '2020-04-15', 'Australia', '/bbs/user/user.png', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0015.gif\"/></p>', '183.185.44.195--山西省太原市', '2020-11-07 20:14:10', '2020-11-07 20:14:10');

SET FOREIGN_KEY_CHECKS = 1;
