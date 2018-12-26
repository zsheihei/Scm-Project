/*
 Navicat Premium Data Transfer

 Source Server         : Laragon
 Source Server Type    : MySQL
 Source Server Version : 100310
 Source Host           : localhost:3306
 Source Schema         : scm

 Target Server Type    : MySQL
 Target Server Version : 100310
 File Encoding         : 65001

 Date: 26/12/2018 17:34:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for system_admin
-- ----------------------------
DROP TABLE IF EXISTS `system_admin`;
CREATE TABLE `system_admin`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '后台管理员表ID',
  `account` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '后台管理员账号',
  `pwd` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '后台管理员密码',
  `real_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '后台管理员姓名',
  `roles` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '后台管理员权限(menus_id)',
  `last_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后台管理员最后一次登录ip',
  `last_time` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '后台管理员最后一次登录时间',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '后台管理员添加时间',
  `login_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录次数',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '后台管理员级别',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '后台管理员状态 1有效0无效',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `account`(`account`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_admin
-- ----------------------------
INSERT INTO `system_admin` VALUES (1, 'admin', '76e2df3fefead34ee08889304c8e1712', '超级管理员', '1', '127.0.0.1', 1545807146, 1545618267, 0, 0, 1, 0);
INSERT INTO `system_admin` VALUES (2, 'user', '76e2df3fefead34ee08889304c8e1712', '销售小王', '10,19', '127.0.0.1', 1545795948, 1545618267, 0, 1, 1, 0);
INSERT INTO `system_admin` VALUES (3, 'vdasf', 'e10adc3949ba59abbe56e057f20f883e', 'fdsa', '10', NULL, NULL, 1545815022, 0, 1, 1, 0);
INSERT INTO `system_admin` VALUES (4, 'fdsa323', 'e10adc3949ba59abbe56e057f20f883e', 'fdsa', '18', NULL, NULL, 1545815278, 0, 1, 1, 0);
INSERT INTO `system_admin` VALUES (5, 'fdasfdsa', 'eed8cdc400dfd4ec85dff70a170066b7', 'fdsa', '10,20', NULL, NULL, 1545815604, 0, 1, 1, 0);

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员操作记录ID',
  `admin_id` int(10) UNSIGNED NOT NULL COMMENT '管理员id',
  `admin_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员姓名',
  `path` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '链接',
  `page` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '行为',
  `method` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '访问类型',
  `ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录IP',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `add_time` int(10) UNSIGNED NOT NULL COMMENT '操作时间',
  `merchant_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商户id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_id`(`admin_id`) USING BTREE,
  INDEX `add_time`(`add_time`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3253 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员操作记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES (3082, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545810226, 0);
INSERT INTO `system_log` VALUES (3081, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810226, 0);
INSERT INTO `system_log` VALUES (3080, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545810224, 0);
INSERT INTO `system_log` VALUES (3079, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545810223, 0);
INSERT INTO `system_log` VALUES (3078, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545810198, 0);
INSERT INTO `system_log` VALUES (3077, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810192, 0);
INSERT INTO `system_log` VALUES (3076, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810192, 0);
INSERT INTO `system_log` VALUES (3075, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810192, 0);
INSERT INTO `system_log` VALUES (3074, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545810192, 0);
INSERT INTO `system_log` VALUES (3073, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810192, 0);
INSERT INTO `system_log` VALUES (3072, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810190, 0);
INSERT INTO `system_log` VALUES (3071, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810190, 0);
INSERT INTO `system_log` VALUES (3070, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810190, 0);
INSERT INTO `system_log` VALUES (3069, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545810190, 0);
INSERT INTO `system_log` VALUES (3068, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810190, 0);
INSERT INTO `system_log` VALUES (3067, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810189, 0);
INSERT INTO `system_log` VALUES (3066, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810189, 0);
INSERT INTO `system_log` VALUES (3065, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810189, 0);
INSERT INTO `system_log` VALUES (3064, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545810189, 0);
INSERT INTO `system_log` VALUES (3063, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810189, 0);
INSERT INTO `system_log` VALUES (3062, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810188, 0);
INSERT INTO `system_log` VALUES (3061, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810188, 0);
INSERT INTO `system_log` VALUES (3060, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810188, 0);
INSERT INTO `system_log` VALUES (3059, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545810188, 0);
INSERT INTO `system_log` VALUES (3058, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810187, 0);
INSERT INTO `system_log` VALUES (3057, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545810182, 0);
INSERT INTO `system_log` VALUES (3056, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810182, 0);
INSERT INTO `system_log` VALUES (3055, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810182, 0);
INSERT INTO `system_log` VALUES (3054, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810182, 0);
INSERT INTO `system_log` VALUES (3053, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545810182, 0);
INSERT INTO `system_log` VALUES (3052, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810181, 0);
INSERT INTO `system_log` VALUES (3051, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810181, 0);
INSERT INTO `system_log` VALUES (3050, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545810181, 0);
INSERT INTO `system_log` VALUES (3049, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810181, 0);
INSERT INTO `system_log` VALUES (3048, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810181, 0);
INSERT INTO `system_log` VALUES (3047, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810180, 0);
INSERT INTO `system_log` VALUES (3046, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810167, 0);
INSERT INTO `system_log` VALUES (3045, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810167, 0);
INSERT INTO `system_log` VALUES (3044, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810167, 0);
INSERT INTO `system_log` VALUES (3043, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545810167, 0);
INSERT INTO `system_log` VALUES (3042, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810167, 0);
INSERT INTO `system_log` VALUES (3041, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545810165, 0);
INSERT INTO `system_log` VALUES (3040, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810161, 0);
INSERT INTO `system_log` VALUES (3039, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545810161, 0);
INSERT INTO `system_log` VALUES (3038, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810161, 0);
INSERT INTO `system_log` VALUES (3037, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810161, 0);
INSERT INTO `system_log` VALUES (3036, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810161, 0);
INSERT INTO `system_log` VALUES (3035, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545810156, 0);
INSERT INTO `system_log` VALUES (3034, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545810142, 0);
INSERT INTO `system_log` VALUES (3033, 1, 'admin', 'scm/setting/favicon.ico/', '未知', 'GET', '127.0.0.1', 'system', 1545810027, 0);
INSERT INTO `system_log` VALUES (3032, 1, 'admin', 'scm/setting/{__frame_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545810027, 0);
INSERT INTO `system_log` VALUES (3031, 1, 'admin', 'scm/setting/{__frame_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545810027, 0);
INSERT INTO `system_log` VALUES (3030, 1, 'admin', 'scm/setting/{__frame_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545810027, 0);
INSERT INTO `system_log` VALUES (3029, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545810027, 0);
INSERT INTO `system_log` VALUES (3028, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545810021, 0);
INSERT INTO `system_log` VALUES (3027, 1, 'admin', 'scm/setting/system_role/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810021, 0);
INSERT INTO `system_log` VALUES (3026, 1, 'admin', 'scm/setting/system_role/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545810021, 0);
INSERT INTO `system_log` VALUES (3025, 1, 'admin', 'scm/setting/system_role/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810021, 0);
INSERT INTO `system_log` VALUES (3024, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545810020, 0);
INSERT INTO `system_log` VALUES (3023, 1, 'admin', 'scm/setting.systemrole/index/', '未知', 'GET', '127.0.0.1', 'system', 1545809820, 0);
INSERT INTO `system_log` VALUES (3022, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545809752, 0);
INSERT INTO `system_log` VALUES (3021, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809752, 0);
INSERT INTO `system_log` VALUES (3020, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809752, 0);
INSERT INTO `system_log` VALUES (3019, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545809752, 0);
INSERT INTO `system_log` VALUES (3018, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545809752, 0);
INSERT INTO `system_log` VALUES (3017, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545809751, 0);
INSERT INTO `system_log` VALUES (3016, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545809751, 0);
INSERT INTO `system_log` VALUES (3015, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809751, 0);
INSERT INTO `system_log` VALUES (3014, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809751, 0);
INSERT INTO `system_log` VALUES (3013, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545809750, 0);
INSERT INTO `system_log` VALUES (3012, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545809750, 0);
INSERT INTO `system_log` VALUES (3011, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809749, 0);
INSERT INTO `system_log` VALUES (3010, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545809749, 0);
INSERT INTO `system_log` VALUES (3009, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809749, 0);
INSERT INTO `system_log` VALUES (3008, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545809749, 0);
INSERT INTO `system_log` VALUES (3007, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545809745, 0);
INSERT INTO `system_log` VALUES (3006, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545809742, 0);
INSERT INTO `system_log` VALUES (3005, 1, 'admin', 'scm/setting/system_role/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809742, 0);
INSERT INTO `system_log` VALUES (3004, 1, 'admin', 'scm/setting/system_role/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545809741, 0);
INSERT INTO `system_log` VALUES (3003, 1, 'admin', 'scm/setting/system_role/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809741, 0);
INSERT INTO `system_log` VALUES (3002, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545809741, 0);
INSERT INTO `system_log` VALUES (3001, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545809740, 0);
INSERT INTO `system_log` VALUES (3000, 1, 'admin', 'scm/setting/system_role/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809740, 0);
INSERT INTO `system_log` VALUES (2999, 1, 'admin', 'scm/setting/system_role/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545809740, 0);
INSERT INTO `system_log` VALUES (2998, 1, 'admin', 'scm/setting/system_role/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809740, 0);
INSERT INTO `system_log` VALUES (2997, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545809740, 0);
INSERT INTO `system_log` VALUES (2996, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545809734, 0);
INSERT INTO `system_log` VALUES (2995, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545809728, 0);
INSERT INTO `system_log` VALUES (2994, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545809725, 0);
INSERT INTO `system_log` VALUES (2993, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545809720, 0);
INSERT INTO `system_log` VALUES (2992, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545809720, 0);
INSERT INTO `system_log` VALUES (2991, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545809719, 0);
INSERT INTO `system_log` VALUES (2990, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545809719, 0);
INSERT INTO `system_log` VALUES (2989, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545809718, 0);
INSERT INTO `system_log` VALUES (2988, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545809707, 0);
INSERT INTO `system_log` VALUES (2987, 1, 'admin', 'scm/setting/system_role/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809707, 0);
INSERT INTO `system_log` VALUES (2986, 1, 'admin', 'scm/setting/system_role/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545809707, 0);
INSERT INTO `system_log` VALUES (2985, 1, 'admin', 'scm/setting/system_role/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809706, 0);
INSERT INTO `system_log` VALUES (2984, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545809706, 0);
INSERT INTO `system_log` VALUES (2983, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545809706, 0);
INSERT INTO `system_log` VALUES (2982, 1, 'admin', 'scm/setting/system_role/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809705, 0);
INSERT INTO `system_log` VALUES (2981, 1, 'admin', 'scm/setting/system_role/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545809705, 0);
INSERT INTO `system_log` VALUES (2980, 1, 'admin', 'scm/setting/system_role/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545809705, 0);
INSERT INTO `system_log` VALUES (2979, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545809705, 0);
INSERT INTO `system_log` VALUES (2978, 1, 'admin', 'scm/setting/system_role/', '未知', 'GET', '127.0.0.1', 'system', 1545809667, 0);
INSERT INTO `system_log` VALUES (2977, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545809653, 0);
INSERT INTO `system_log` VALUES (2976, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545809628, 0);
INSERT INTO `system_log` VALUES (2975, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545809627, 0);
INSERT INTO `system_log` VALUES (2974, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545809588, 0);
INSERT INTO `system_log` VALUES (2973, 1, 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', 1545809401, 0);
INSERT INTO `system_log` VALUES (2972, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545809397, 0);
INSERT INTO `system_log` VALUES (2971, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545807430, 0);
INSERT INTO `system_log` VALUES (2970, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545807361, 0);
INSERT INTO `system_log` VALUES (3083, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810226, 0);
INSERT INTO `system_log` VALUES (3084, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810226, 0);
INSERT INTO `system_log` VALUES (3085, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810226, 0);
INSERT INTO `system_log` VALUES (3086, 1, 'admin', 'scm/setting/system_admin/css/font-awesome.css', '未知', 'GET', '127.0.0.1', 'system', 1545810226, 0);
INSERT INTO `system_log` VALUES (3087, 1, 'admin', 'scm/setting/system_admin/css/bootstrap.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810227, 0);
INSERT INTO `system_log` VALUES (3088, 1, 'admin', 'scm/setting/system_admin/css/style.min.css', '未知', 'GET', '127.0.0.1', 'system', 1545810227, 0);
INSERT INTO `system_log` VALUES (3089, 1, 'admin', 'scm/setting/system_admin/', '未知', 'GET', '127.0.0.1', 'system', 1545810227, 0);
INSERT INTO `system_log` VALUES (3090, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545810233, 0);
INSERT INTO `system_log` VALUES (3091, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545810236, 0);
INSERT INTO `system_log` VALUES (3092, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545810451, 0);
INSERT INTO `system_log` VALUES (3093, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545810523, 0);
INSERT INTO `system_log` VALUES (3094, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811384, 0);
INSERT INTO `system_log` VALUES (3095, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811426, 0);
INSERT INTO `system_log` VALUES (3096, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811428, 0);
INSERT INTO `system_log` VALUES (3097, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811429, 0);
INSERT INTO `system_log` VALUES (3098, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811430, 0);
INSERT INTO `system_log` VALUES (3099, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811430, 0);
INSERT INTO `system_log` VALUES (3100, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811430, 0);
INSERT INTO `system_log` VALUES (3101, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811461, 0);
INSERT INTO `system_log` VALUES (3102, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811534, 0);
INSERT INTO `system_log` VALUES (3103, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811771, 0);
INSERT INTO `system_log` VALUES (3104, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811772, 0);
INSERT INTO `system_log` VALUES (3105, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811861, 0);
INSERT INTO `system_log` VALUES (3106, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545811861, 0);
INSERT INTO `system_log` VALUES (3107, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545811861, 0);
INSERT INTO `system_log` VALUES (3108, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545811861, 0);
INSERT INTO `system_log` VALUES (3109, 1, 'admin', 'scm/setting.systemadmin/{__plug_path}layui/css/layui.css', '未知', 'GET', '127.0.0.1', 'system', 1545811861, 0);
INSERT INTO `system_log` VALUES (3110, 1, 'admin', 'scm/setting.systemadmin/{__admin_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545811861, 0);
INSERT INTO `system_log` VALUES (3111, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545811861, 0);
INSERT INTO `system_log` VALUES (3112, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}css/plugins/datatables', '未知', 'GET', '127.0.0.1', 'system', 1545811861, 0);
INSERT INTO `system_log` VALUES (3113, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}js/', '未知', 'GET', '127.0.0.1', 'system', 1545811862, 0);
INSERT INTO `system_log` VALUES (3114, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}js/', '未知', 'GET', '127.0.0.1', 'system', 1545811862, 0);
INSERT INTO `system_log` VALUES (3115, 1, 'admin', 'scm/setting.systemadmin/{__plug_path}layui/', '未知', 'GET', '127.0.0.1', 'system', 1545811862, 0);
INSERT INTO `system_log` VALUES (3116, 1, 'admin', 'scm/setting.systemadmin/{__plug_path}requirejs/', '未知', 'GET', '127.0.0.1', 'system', 1545811862, 0);
INSERT INTO `system_log` VALUES (3117, 1, 'admin', 'scm/setting.systemadmin/{__admin_path}util/', '未知', 'GET', '127.0.0.1', 'system', 1545811862, 0);
INSERT INTO `system_log` VALUES (3118, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811906, 0);
INSERT INTO `system_log` VALUES (3119, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545811907, 0);
INSERT INTO `system_log` VALUES (3120, 1, 'admin', 'scm/setting.systemadmin/{__plug_path}layui/css/layui.css', '未知', 'GET', '127.0.0.1', 'system', 1545811907, 0);
INSERT INTO `system_log` VALUES (3121, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545811907, 0);
INSERT INTO `system_log` VALUES (3122, 1, 'admin', 'scm/setting.systemadmin/{__admin_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545811907, 0);
INSERT INTO `system_log` VALUES (3123, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545811907, 0);
INSERT INTO `system_log` VALUES (3124, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}css/', '未知', 'GET', '127.0.0.1', 'system', 1545811907, 0);
INSERT INTO `system_log` VALUES (3125, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}css/plugins/datatables', '未知', 'GET', '127.0.0.1', 'system', 1545811907, 0);
INSERT INTO `system_log` VALUES (3126, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}js/', '未知', 'GET', '127.0.0.1', 'system', 1545811907, 0);
INSERT INTO `system_log` VALUES (3127, 1, 'admin', 'scm/setting.systemadmin/{__frame_path}js/', '未知', 'GET', '127.0.0.1', 'system', 1545811907, 0);
INSERT INTO `system_log` VALUES (3128, 1, 'admin', 'scm/setting.systemadmin/{__plug_path}layui/', '未知', 'GET', '127.0.0.1', 'system', 1545811907, 0);
INSERT INTO `system_log` VALUES (3129, 1, 'admin', 'scm/setting.systemadmin/{__plug_path}requirejs/', '未知', 'GET', '127.0.0.1', 'system', 1545811907, 0);
INSERT INTO `system_log` VALUES (3130, 1, 'admin', 'scm/setting.systemadmin/{__admin_path}util/', '未知', 'GET', '127.0.0.1', 'system', 1545811908, 0);
INSERT INTO `system_log` VALUES (3131, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545811915, 0);
INSERT INTO `system_log` VALUES (3132, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545812223, 0);
INSERT INTO `system_log` VALUES (3133, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545812235, 0);
INSERT INTO `system_log` VALUES (3134, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545812291, 0);
INSERT INTO `system_log` VALUES (3135, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545812314, 0);
INSERT INTO `system_log` VALUES (3136, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545812321, 0);
INSERT INTO `system_log` VALUES (3137, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545812323, 0);
INSERT INTO `system_log` VALUES (3138, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545812325, 0);
INSERT INTO `system_log` VALUES (3139, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545812358, 0);
INSERT INTO `system_log` VALUES (3140, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545812659, 0);
INSERT INTO `system_log` VALUES (3141, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545812781, 0);
INSERT INTO `system_log` VALUES (3142, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545812783, 0);
INSERT INTO `system_log` VALUES (3143, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545813042, 0);
INSERT INTO `system_log` VALUES (3144, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545813044, 0);
INSERT INTO `system_log` VALUES (3145, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545813045, 0);
INSERT INTO `system_log` VALUES (3146, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545813070, 0);
INSERT INTO `system_log` VALUES (3147, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545813074, 0);
INSERT INTO `system_log` VALUES (3148, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545813082, 0);
INSERT INTO `system_log` VALUES (3149, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545813088, 0);
INSERT INTO `system_log` VALUES (3150, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545813090, 0);
INSERT INTO `system_log` VALUES (3151, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545813102, 0);
INSERT INTO `system_log` VALUES (3152, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545813104, 0);
INSERT INTO `system_log` VALUES (3153, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545813150, 0);
INSERT INTO `system_log` VALUES (3154, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545813173, 0);
INSERT INTO `system_log` VALUES (3155, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545813566, 0);
INSERT INTO `system_log` VALUES (3156, 1, 'admin', 'scm/setting.systemadmin/update/id/2', '未知', 'POST', '127.0.0.1', 'system', 1545813586, 0);
INSERT INTO `system_log` VALUES (3157, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545813594, 0);
INSERT INTO `system_log` VALUES (3158, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545813595, 0);
INSERT INTO `system_log` VALUES (3159, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545813609, 0);
INSERT INTO `system_log` VALUES (3160, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545813671, 0);
INSERT INTO `system_log` VALUES (3161, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545813680, 0);
INSERT INTO `system_log` VALUES (3162, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545813684, 0);
INSERT INTO `system_log` VALUES (3163, 1, 'admin', 'scm/setting.systemrole/create/', '未知', 'GET', '127.0.0.1', 'system', 1545813685, 0);
INSERT INTO `system_log` VALUES (3164, 1, 'admin', 'scm/setting.systemrole/save/', '未知', 'POST', '127.0.0.1', 'system', 1545813714, 0);
INSERT INTO `system_log` VALUES (3165, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545813720, 0);
INSERT INTO `system_log` VALUES (3166, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545813740, 0);
INSERT INTO `system_log` VALUES (3167, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545813741, 0);
INSERT INTO `system_log` VALUES (3168, 1, 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', 1545813790, 0);
INSERT INTO `system_log` VALUES (3169, 1, 'admin', 'scm/setting.systemrole/delete/id/19', '未知', 'GET', '127.0.0.1', 'system', 1545813864, 0);
INSERT INTO `system_log` VALUES (3170, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545813867, 0);
INSERT INTO `system_log` VALUES (3171, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545814119, 0);
INSERT INTO `system_log` VALUES (3172, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545814121, 0);
INSERT INTO `system_log` VALUES (3173, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545814129, 0);
INSERT INTO `system_log` VALUES (3174, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545814171, 0);
INSERT INTO `system_log` VALUES (3175, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545814216, 0);
INSERT INTO `system_log` VALUES (3176, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545814222, 0);
INSERT INTO `system_log` VALUES (3177, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545814224, 0);
INSERT INTO `system_log` VALUES (3178, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545814229, 0);
INSERT INTO `system_log` VALUES (3179, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545815022, 0);
INSERT INTO `system_log` VALUES (3180, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815248, 0);
INSERT INTO `system_log` VALUES (3181, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815250, 0);
INSERT INTO `system_log` VALUES (3182, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545815251, 0);
INSERT INTO `system_log` VALUES (3183, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545815278, 0);
INSERT INTO `system_log` VALUES (3184, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545815582, 0);
INSERT INTO `system_log` VALUES (3185, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545815604, 0);
INSERT INTO `system_log` VALUES (3186, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545815683, 0);
INSERT INTO `system_log` VALUES (3187, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815683, 0);
INSERT INTO `system_log` VALUES (3188, 1, 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', 1545815687, 0);
INSERT INTO `system_log` VALUES (3189, 1, 'admin', 'scm/setting.systemadmin/update/id/3', '未知', 'POST', '127.0.0.1', 'system', 1545815691, 0);
INSERT INTO `system_log` VALUES (3190, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815691, 0);
INSERT INTO `system_log` VALUES (3191, 1, 'admin', 'scm/setting.systemadmin/update/id/3', '未知', 'POST', '127.0.0.1', 'system', 1545815699, 0);
INSERT INTO `system_log` VALUES (3192, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815699, 0);
INSERT INTO `system_log` VALUES (3193, 1, 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', 1545815709, 0);
INSERT INTO `system_log` VALUES (3194, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545815827, 0);
INSERT INTO `system_log` VALUES (3195, 1, 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', 1545815829, 0);
INSERT INTO `system_log` VALUES (3196, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815831, 0);
INSERT INTO `system_log` VALUES (3197, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545815833, 0);
INSERT INTO `system_log` VALUES (3198, 1, 'admin', 'scm/setting.systemadmin/update/id/2', '未知', 'POST', '127.0.0.1', 'system', 1545815835, 0);
INSERT INTO `system_log` VALUES (3199, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815835, 0);
INSERT INTO `system_log` VALUES (3200, 1, 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', 1545815837, 0);
INSERT INTO `system_log` VALUES (3201, 1, 'admin', 'scm/setting.systemadmin/update/id/3', '未知', 'POST', '127.0.0.1', 'system', 1545815839, 0);
INSERT INTO `system_log` VALUES (3202, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815839, 0);
INSERT INTO `system_log` VALUES (3203, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545815843, 0);
INSERT INTO `system_log` VALUES (3204, 1, 'admin', 'scm/setting.systemadmin/update/id/2', '未知', 'POST', '127.0.0.1', 'system', 1545815847, 0);
INSERT INTO `system_log` VALUES (3205, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815847, 0);
INSERT INTO `system_log` VALUES (3206, 1, 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', 1545815849, 0);
INSERT INTO `system_log` VALUES (3207, 1, 'admin', 'scm/setting.systemadmin/update/id/3', '未知', 'POST', '127.0.0.1', 'system', 1545815851, 0);
INSERT INTO `system_log` VALUES (3208, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815851, 0);
INSERT INTO `system_log` VALUES (3209, 1, 'admin', 'scm/setting.systemadmin/edit/id/4', '未知', 'GET', '127.0.0.1', 'system', 1545815852, 0);
INSERT INTO `system_log` VALUES (3210, 1, 'admin', 'scm/setting.systemadmin/update/id/4', '未知', 'POST', '127.0.0.1', 'system', 1545815854, 0);
INSERT INTO `system_log` VALUES (3211, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815855, 0);
INSERT INTO `system_log` VALUES (3212, 1, 'admin', 'scm/setting.systemadmin/edit/id/4', '未知', 'GET', '127.0.0.1', 'system', 1545815856, 0);
INSERT INTO `system_log` VALUES (3213, 1, 'admin', 'scm/setting.systemadmin/update/id/4', '未知', 'POST', '127.0.0.1', 'system', 1545815859, 0);
INSERT INTO `system_log` VALUES (3214, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815859, 0);
INSERT INTO `system_log` VALUES (3215, 1, 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', 1545815989, 0);
INSERT INTO `system_log` VALUES (3216, 1, 'admin', 'scm/setting.systemadmin/update/id/3', '未知', 'POST', '127.0.0.1', 'system', 1545815991, 0);
INSERT INTO `system_log` VALUES (3217, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815991, 0);
INSERT INTO `system_log` VALUES (3218, 1, 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', 1545815996, 0);
INSERT INTO `system_log` VALUES (3219, 1, 'admin', 'scm/setting.systemadmin/update/id/3', '未知', 'POST', '127.0.0.1', 'system', 1545815998, 0);
INSERT INTO `system_log` VALUES (3220, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545815998, 0);
INSERT INTO `system_log` VALUES (3221, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545816213, 0);
INSERT INTO `system_log` VALUES (3222, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545816215, 0);
INSERT INTO `system_log` VALUES (3223, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545816217, 0);
INSERT INTO `system_log` VALUES (3224, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545816266, 0);
INSERT INTO `system_log` VALUES (3225, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545816267, 0);
INSERT INTO `system_log` VALUES (3226, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545816268, 0);
INSERT INTO `system_log` VALUES (3227, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545816271, 0);
INSERT INTO `system_log` VALUES (3228, 1, 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', 1545816276, 0);
INSERT INTO `system_log` VALUES (3229, 1, 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', 1545816482, 0);
INSERT INTO `system_log` VALUES (3230, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545816482, 0);
INSERT INTO `system_log` VALUES (3231, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545816484, 0);
INSERT INTO `system_log` VALUES (3232, 1, 'admin', 'scm/setting.systemadmin/update/id/2', '未知', 'POST', '127.0.0.1', 'system', 1545816485, 0);
INSERT INTO `system_log` VALUES (3233, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545816486, 0);
INSERT INTO `system_log` VALUES (3234, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545816487, 0);
INSERT INTO `system_log` VALUES (3235, 1, 'admin', 'scm/setting.systemadmin/update/id/2', '未知', 'POST', '127.0.0.1', 'system', 1545816489, 0);
INSERT INTO `system_log` VALUES (3236, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545816489, 0);
INSERT INTO `system_log` VALUES (3237, 1, 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', 1545816490, 0);
INSERT INTO `system_log` VALUES (3238, 1, 'admin', 'scm/setting.systemadmin/update/id/2', '未知', 'POST', '127.0.0.1', 'system', 1545816492, 0);
INSERT INTO `system_log` VALUES (3239, 1, 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', 1545816492, 0);
INSERT INTO `system_log` VALUES (3240, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545816502, 0);
INSERT INTO `system_log` VALUES (3241, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545816508, 0);
INSERT INTO `system_log` VALUES (3242, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545816526, 0);
INSERT INTO `system_log` VALUES (3243, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545816527, 0);
INSERT INTO `system_log` VALUES (3244, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545816528, 0);
INSERT INTO `system_log` VALUES (3245, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545816529, 0);
INSERT INTO `system_log` VALUES (3246, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545816529, 0);
INSERT INTO `system_log` VALUES (3247, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545816530, 0);
INSERT INTO `system_log` VALUES (3248, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545816531, 0);
INSERT INTO `system_log` VALUES (3249, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545816533, 0);
INSERT INTO `system_log` VALUES (3250, 1, 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', 1545816534, 0);
INSERT INTO `system_log` VALUES (3251, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545816731, 0);
INSERT INTO `system_log` VALUES (3252, 1, 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', 1545816734, 0);

-- ----------------------------
-- Table structure for system_menus
-- ----------------------------
DROP TABLE IF EXISTS `system_menus`;
CREATE TABLE `system_menus`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级id',
  `icon` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图标',
  `menu_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '按钮名',
  `module` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '模块名',
  `controller` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制器',
  `action` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '方法名',
  `params` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '[]' COMMENT '参数',
  `sort` tinyint(3) NOT NULL DEFAULT 1 COMMENT '排序',
  `is_show` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否显示',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '子管理员是否可用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `is_show`(`is_show`) USING BTREE,
  INDEX `access`(`access`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 380 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_menus
-- ----------------------------
INSERT INTO `system_menus` VALUES (1, 289, '', '系统设置', 'scm', 'setting.systemConfig', 'index', '[]', 90, 1, 1);
INSERT INTO `system_menus` VALUES (2, 153, '', '权限规则', 'scm', 'setting.systemMenus', 'index', '{\"cate\":\"12\"}', 7, 1, 1);
INSERT INTO `system_menus` VALUES (4, 153, '', '管理员列表', 'scm', 'setting.systemAdmin', 'index', '[]', 9, 1, 1);
INSERT INTO `system_menus` VALUES (6, 1, '', '系统配置', 'scm', 'setting.systemConfig', 'index', '{\"tab_id\":\"1\"}', 1, 1, 1);
INSERT INTO `system_menus` VALUES (7, 1, '', '配置分类', 'scm', 'setting.systemConfigTab', 'index', '[]', 1, 1, 1);
INSERT INTO `system_menus` VALUES (8, 153, '', '身份管理', 'scm', 'setting.systemRole', 'index', '[]', 10, 1, 1);
INSERT INTO `system_menus` VALUES (9, 1, '', '组合数据', 'scm', 'setting.systemGroup', 'index', '[]', 1, 1, 1);
INSERT INTO `system_menus` VALUES (11, 0, 'wechat', '公众号', 'scm', 'wechat.wechat', 'index', '[]', 91, 1, 1);
INSERT INTO `system_menus` VALUES (12, 354, '', '微信关注回复', 'scm', 'wechat.reply', 'index', '{\"key\":\"subscribe\",\"title\":\"\\u7f16\\u8f91\\u65e0\\u914d\\u7f6e\\u9ed8\\u8ba4\\u56de\\u590d\"}', 86, 1, 1);
INSERT INTO `system_menus` VALUES (17, 360, '', '微信菜单', 'scm', 'wechat.menus', 'index', '[]', 95, 1, 1);
INSERT INTO `system_menus` VALUES (286, 0, 'paper-plane', '营销', 'scm', '', '', '[]', 105, 1, 1);
INSERT INTO `system_menus` VALUES (19, 11, '', '图文管理', 'scm', 'wechat.wechatNewsCategory', 'index', '[]', 60, 1, 1);
INSERT INTO `system_menus` VALUES (21, 0, 'magic', '维护', 'scm', 'system.system', '', '[]', 1, 1, 1);
INSERT INTO `system_menus` VALUES (23, 0, 'laptop', '商品', 'scm', 'store.store', 'index', '[]', 110, 1, 1);
INSERT INTO `system_menus` VALUES (24, 23, '', '商品管理', 'scm', 'store.storeProduct', 'index', '{\"type\":\"1\"}', 100, 1, 1);
INSERT INTO `system_menus` VALUES (25, 23, '', '商品分类', 'scm', 'store.storeCategory', 'index', '[]', 1, 1, 1);
INSERT INTO `system_menus` VALUES (26, 285, '', '订单管理', 'scm', 'order.storeOrder', 'index', '[]', 1, 1, 1);
INSERT INTO `system_menus` VALUES (30, 354, '', '关键字回复', 'scm', 'wechat.reply', 'keyword', '[]', 85, 1, 1);
INSERT INTO `system_menus` VALUES (31, 354, '', '无效关键词回复', 'scm', 'wechat.reply', 'index', '{\"key\":\"default\",\"title\":\"\\u7f16\\u8f91\\u65e0\\u6548\\u5173\\u952e\\u5b57\\u9ed8\\u8ba4\\u56de\\u590d\"}', 84, 1, 1);
INSERT INTO `system_menus` VALUES (33, 284, '', '附加权限', 'scm', 'article.articleCategory', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (34, 33, '', '添加文章分类', 'scm', 'article.articleCategory', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (35, 33, '', '编辑文章分类', 'scm', 'article.articleCategory', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (36, 33, '', '删除文章分类', 'scm', 'article.articleCategory', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (37, 31, '', '附加权限', 'scm', 'wechat.reply', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (38, 283, '', '附加权限', 'scm', 'article.article', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (39, 38, '', '添加文章', 'scm', 'article. article', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (40, 38, '', '编辑文章', 'scm', 'article. article', 'add_new', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (41, 38, '', '删除文章', 'scm', 'article. article', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (42, 19, '', '附加权限', 'scm', 'wechat.wechatNewsCategory', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (43, 42, '', '添加图文消息', 'scm', 'wechat.wechatNewsCategory', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (44, 42, '', '编辑图文消息', 'scm', 'wechat.wechatNewsCategory', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (45, 42, '', '删除图文消息', 'scm', 'wechat.wechatNewsCategory', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (46, 7, '', '配置分类附加权限', 'scm', 'setting.systemConfigTab', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (47, 46, '', '添加配置分类', 'scm', 'setting.systemConfigTab', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (48, 46, '', '添加配置', 'scm', 'setting.systemConfig', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (49, 46, '', '编辑配置分类', 'scm', 'setting.systemConfigTab', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (50, 46, '', '删除配置分类', 'scm', 'setting.systemConfigTab', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (51, 46, '', '查看子字段', 'scm', 'system.systemConfigTab', 'sonConfigTab', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (52, 9, '', '组合数据附加权限', 'scm', 'system.systemGroup', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (53, 52, '', '添加数据', 'scm', 'system.systemGroupData', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (54, 52, '', '编辑数据', 'scm', 'system.systemGroupData', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (55, 52, '', '删除数据', 'scm', 'system.systemGroupData', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (56, 52, '', '数据列表', 'scm', 'system.systemGroupData', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (57, 52, '', '添加数据组', 'scm', 'system.systemGroup', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (58, 52, '', '删除数据组', 'scm', 'system.systemGroup', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (59, 4, '', '管理员列表附加权限', 'scm', 'system.systemAdmin', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (60, 59, '', '添加管理员', 'scm', 'system.systemAdmin', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (61, 59, '', '编辑管理员', 'scm', 'system.systemAdmin', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (62, 59, '', '删除管理员', 'scm', 'system.systemAdmin', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (63, 8, '', '身份管理附加权限', 'scm', 'system.systemRole', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (64, 63, '', '添加身份', 'scm', 'system.systemRole', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (65, 63, '', '修改身份', 'scm', 'system.systemRole', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (66, 63, '', '删除身份', 'scm', 'system.systemRole', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (67, 8, '', '身份管理展示页', 'scm', 'system.systemRole', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (68, 4, '', '管理员列表展示页', 'scm', 'system.systemAdmin', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (69, 7, '', '配置分类展示页', 'scm', 'setting.systemConfigTab', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (70, 9, '', '组合数据展示页', 'scm', 'system.systemGroup', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (71, 284, '', '文章分类管理展示页', 'scm', 'article.articleCategory', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (72, 283, '', '文章管理展示页', 'scm', 'article.article', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (73, 19, '', '图文消息展示页', 'scm', 'wechat.wechatNewsCategory', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (74, 2, '', '菜单管理附加权限', 'scm', 'system.systemMenus', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (75, 74, '', '添加菜单', 'scm', 'system.systemMenus', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (76, 74, '', '编辑菜单', 'scm', 'system.systemMenus', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (77, 74, '', '删除菜单', 'scm', 'system.systemMenus', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (78, 2, '', '菜单管理展示页', 'scm', 'system.systemMenus', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (352, 148, '', '优惠券配置', 'scm', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"12\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (80, 0, 'leanpub', '内容', 'scm', 'wechat.wechatNews', 'index', '[]', 90, 1, 1);
INSERT INTO `system_menus` VALUES (82, 11, '', '微信用户管理', 'scm', 'user', 'list', '[]', 5, 1, 1);
INSERT INTO `system_menus` VALUES (84, 82, '', '用户标签', 'scm', 'wechat.wechatUser', 'tag', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (89, 30, '', '关键字回复附加权限', 'scm', 'wechat.reply', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (90, 89, '', '添加关键字', 'scm', 'wechat.reply', 'add_keyword', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (91, 89, '', '修改关键字', 'scm', 'wechat.reply', 'info_keyword', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (92, 89, '', '删除关键字', 'scm', 'wechat.reply', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (93, 30, '', '关键字回复展示页', 'scm', 'wechat.reply', 'keyword', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (94, 31, '', '无效关键词回复展示页', 'scm', 'wechat.reply', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (95, 31, '', '无效关键词回复附加权限', 'scm', 'wechat.reply', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (96, 95, '', '无效关键词回复提交按钮', 'scm', 'wechat.reply', 'save', '{\"key\":\"default\",\"title\":\"编辑无效关键字默认回复\"}', 0, 0, 1);
INSERT INTO `system_menus` VALUES (97, 12, '', '微信关注回复展示页', 'scm', 'wechat.reply', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (98, 12, '', '微信关注回复附加权限', 'scm', 'wechat.reply', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (99, 98, '', '微信关注回复提交按钮', 'scm', 'wechat.reply', 'save', '{\"key\":\"subscribe\",\"title\":\"编辑无配置默认回复\"}', 0, 0, 1);
INSERT INTO `system_menus` VALUES (100, 74, '', '添加提交菜单', 'scm', 'system.systemMenus', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (101, 74, '', '编辑提交菜单', 'scm', 'system.systemMenus', 'update', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (102, 59, '', '提交添加管理员', 'scm', 'system.systemAdmin', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (103, 59, '', '提交修改管理员', 'scm', 'system.systemAdmin', 'update', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (104, 63, '', '提交添加身份', 'scm', 'system.systemRole', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (105, 63, '', '提交修改身份', 'scm', 'system.systemRole', 'update', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (106, 46, '', '提交添加配置分类', 'scm', 'setting.systemConfigTab', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (107, 46, '', '提交修改配置分类', 'scm', 'setting.systemConfigTab', 'update', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (108, 46, '', '提交添加配置列表', 'scm', 'setting.systemConfig', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (109, 52, '', '提交添加数据组', 'scm', 'system.systemGroup', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (110, 52, '', '提交修改数据组', 'scm', 'system.systemGroup', 'update', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (111, 52, '', '提交添加数据', 'scm', 'system.systemGroupData', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (112, 52, '', '提交修改数据', 'scm', 'system.systemGroupData', 'update', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (113, 33, '', '提交添加文章分类', 'scm', 'article.articleCategory', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (114, 33, '', '提交添加文章分类', 'scm', 'article.articleCategory', 'update', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (115, 42, '', '提交添加图文消息', 'scm', 'wechat.wechatNewsCategory', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (116, 42, '', '提交编辑图文消息', 'scm', 'wechat.wechatNewsCategory', 'update', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (117, 6, '', '配置列表附加权限', 'scm', 'setting.systemConfig', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (118, 6, '', '配置列表展示页', 'scm', 'setting.systemConfig', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (119, 117, '', '提交保存配置列表', 'scm', 'setting.systemConfig', 'save_basics', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (123, 89, '', '提交添加关键字', 'scm', 'wechat.reply', 'save_keyword', '{\"dis\":\"1\"}', 0, 0, 1);
INSERT INTO `system_menus` VALUES (124, 89, '', '提交修改关键字', 'scm', 'wechat.reply', 'save_keyword', '{\"dis\":\"2\"}', 0, 0, 1);
INSERT INTO `system_menus` VALUES (126, 17, '', '微信菜单展示页', 'scm', 'wechat.menus', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (127, 17, '', '微信菜单附加权限', 'scm', 'wechat.menus', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (128, 127, '', '提交微信菜单按钮', 'scm', 'wechat.menus', 'save', '{\"dis\":\"1\"}', 0, 0, 1);
INSERT INTO `system_menus` VALUES (129, 82, '', '用户行为纪录', 'scm', 'wechat.wechatMessage', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (130, 21, '', '系统日志', 'scm', 'system.systemLog', 'index', '[]', 5, 1, 1);
INSERT INTO `system_menus` VALUES (131, 130, '', '管理员操作记录展示页', 'scm', 'system.systemLog', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (132, 129, '', '微信用户行为纪录展示页', 'scm', 'wechat.wechatMessage', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (133, 82, '', '微信用户', 'scm', 'wechat.wechatUser', 'index', '[]', 1, 1, 1);
INSERT INTO `system_menus` VALUES (134, 133, '', '微信用户展示页', 'scm', 'wechat.wechatUser', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (241, 273, '', '限时秒杀', 'scm', 'ump.storeSeckill', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (137, 135, '', '添加通知模板', 'scm', 'system.systemNotice', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (138, 135, '', '编辑通知模板', 'scm', 'system.systemNotice', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (139, 135, '', '删除辑通知模板', 'scm', 'system.systemNotice', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (140, 135, '', '提交编辑辑通知模板', 'scm', 'system.systemNotice', 'update', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (141, 135, '', '提交添加辑通知模板', 'scm', 'system.systemNotice', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (142, 25, '', '产品分类展示页', 'scm', 'store.storeCategory', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (143, 25, '', '产品分类附加权限', 'scm', 'store.storeCategory', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (144, 117, '', '获取配置列表上传文件的名称', 'scm', 'setting.systemConfig', 'getimagename', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (145, 117, '', '配置列表上传文件', 'scm', 'setting.systemConfig', 'view_upload', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (146, 24, '', '产品管理展示页', 'scm', 'store.storeProduct', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (147, 24, '', '产品管理附加权限', 'scm', 'store.storeProduct', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (148, 286, '', '优惠券', '', '', '', '[]', 10, 1, 1);
INSERT INTO `system_menus` VALUES (149, 148, '', '优惠券制作', 'scm', 'ump.storeCoupon', 'index', '[]', 5, 1, 1);
INSERT INTO `system_menus` VALUES (150, 148, '', '会员领取记录', 'scm', 'ump.storeCouponUser', 'index', '[]', 1, 1, 1);
INSERT INTO `system_menus` VALUES (151, 0, 'user', '会员', 'scm', 'user.userList', 'list', '[]', 107, 1, 1);
INSERT INTO `system_menus` VALUES (153, 289, '', '管理权限', 'scm', 'setting.systemAdmin', '', '[]', 100, 1, 1);
INSERT INTO `system_menus` VALUES (155, 154, '', '商户产品展示页', 'scm', 'store.storeMerchant', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (156, 154, '', '商户产品附加权限', 'scm', 'store.storeMerchant', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (158, 157, '', '商户文章管理展示页', 'scm', 'wechat.wechatNews', 'merchantIndex', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (159, 157, '', '商户文章管理附加权限', 'scm', 'wechat.wechatNews', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (170, 290, '', '评论管理', 'scm', 'store.storeProductReply', '', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (173, 21, '', '文件校验', 'scm', 'system.system_file', 'index', '[]', 1, 1, 1);
INSERT INTO `system_menus` VALUES (174, 360, '', '微信模板消息', 'scm', 'wechat.wechatTemplate', 'index', '[]', 1, 1, 1);
INSERT INTO `system_menus` VALUES (175, 11, '', '客服管理', 'scm', 'wechat.storeService', 'index', '[]', 70, 1, 1);
INSERT INTO `system_menus` VALUES (176, 151, '', '站内通知', 'scm', 'user.user_notice', 'index', '[]', 8, 1, 1);
INSERT INTO `system_menus` VALUES (177, 151, '', '会员管理', 'scm', 'user.user', 'index', '[]', 10, 1, 1);
INSERT INTO `system_menus` VALUES (179, 307, '', '充值记录', 'scm', 'finance.userRecharge', 'index', '[]', 1, 1, 1);
INSERT INTO `system_menus` VALUES (190, 26, '', '订单管理展示页', 'scm', 'store.storeOrder', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (191, 26, '', '订单管理附加权限', 'scm', 'store.storeOrder', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (192, 191, '', '订单管理去发货', 'scm', 'store.storeOrder', 'deliver_goods', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (193, 191, '', '订单管理备注', 'scm', 'store.storeOrder', 'remark', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (194, 191, '', '订单管理去送货', 'scm', 'store.storeOrder', 'delivery', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (195, 191, '', '订单管理已收货', 'scm', 'store.storeOrder', 'take_delivery', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (196, 191, '', '订单管理退款', 'scm', 'store.storeOrder', 'refund_y', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (197, 191, '', '订单管理修改订单', 'scm', 'store.storeOrder', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (198, 191, '', '订单管理修改订单提交', 'scm', 'store.storeOrder', 'update', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (199, 191, '', '订单管理退积分', 'scm', 'store.storeOrder', 'integral_back', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (200, 191, '', '订单管理退积分提交', 'scm', 'store.storeOrder', 'updateIntegralBack', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (201, 191, '', '订单管理立即支付', 'scm', 'store.storeOrder', 'offline', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (202, 191, '', '订单管理退款原因', 'scm', 'store.storeOrder', 'refund_n', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (203, 191, '', '订单管理退款原因提交', 'scm', 'store.storeOrder', 'updateRefundN', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (204, 191, '', '订单管理修改配送信息', 'scm', 'store.storeOrder', 'distribution', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (205, 191, '', '订单管理修改配送信息提交', 'scm', 'store.storeOrder', 'updateDistribution', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (206, 191, '', '订单管理退款提交', 'scm', 'store.storeOrder', 'updateRefundY', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (207, 191, '', '订单管理去发货提交', 'scm', 'store.storeOrder', 'updateDeliveryGoods', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (208, 191, '', '订单管理去送货提交', 'scm', 'store.storeOrder', 'updateDelivery', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (209, 175, '', '客服管理展示页', 'scm', 'store.storeService', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (210, 175, '', '客服管理附加权限', 'scm', 'store.storeService', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (211, 210, '', '客服管理添加', 'scm', 'store.storeService', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (212, 210, '', '客服管理添加提交', 'scm', 'store.storeService', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (213, 210, '', '客服管理编辑', 'scm', 'store.storeService', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (214, 210, '', '客服管理编辑提交', 'scm', 'store.storeService', 'update', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (215, 210, '', '客服管理删除', 'scm', 'store.storeService', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (216, 179, '', '用户充值记录展示页', 'scm', 'user.userRecharge', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (217, 179, '', '用户充值记录附加权限', 'scm', 'user.userRecharge', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (218, 217, '', '用户充值记录退款', 'scm', 'user.userRecharge', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (219, 217, '', '用户充值记录退款提交', 'scm', 'user.userRecharge', 'updaterefundy', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (220, 180, '', '预售卡管理批量修改预售卡金额', 'scm', 'presell.presellCard', 'batch_price', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (221, 180, '', '预售卡管理批量修改预售卡金额提交', 'scm', 'presell.presellCard', 'savebatch', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (222, 210, '', '客服管理聊天记录查询', 'scm', 'store.storeService', 'chat_user', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (223, 210, '', '客服管理聊天记录查询详情', 'scm', 'store.storeService', 'chat_list', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (224, 170, '', '评论管理展示页', 'scm', 'store.storeProductReply', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (225, 170, '', '评论管理附加权限', 'scm', 'store.storeProductReply', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (226, 225, '', '评论管理回复评论', 'scm', 'store.storeProductReply', 'set_reply', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (227, 225, '', '评论管理修改回复评论', 'scm', 'store.storeProductReply', 'edit_reply', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (228, 225, '', '评论管理删除评论', 'scm', 'store.storeProductReply', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (229, 149, '', '优惠券管理展示页', 'scm', 'store.storeCoupon', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (230, 149, '', '优惠券管理附加权限', 'scm', 'store.storeCoupon', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (231, 230, '', '优惠券管理添加', 'scm', 'store.storeCoupon', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (232, 230, '', '优惠券管理添加提交', 'scm', 'store.storeCoupon', 'save', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (233, 230, '', '优惠券管理删除', 'scm', 'store.storeCoupon', 'delete', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (234, 230, '', '优惠券管理立即失效', 'scm', 'store.storeCoupon', 'status', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (235, 148, '', '已发布管理', 'scm', 'ump.storeCouponIssue', 'index', '[]', 3, 1, 1);
INSERT INTO `system_menus` VALUES (236, 82, '', '用户分组', 'scm', 'wechat.wechatUser', 'group', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (237, 21, '', '刷新缓存', 'scm', 'system.clear', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (239, 306, '', '提现申请', 'scm', 'finance.user_extract', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (351, 349, '', '积分日志', 'scm', 'ump.userPoint', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (244, 294, '', '财务报表', 'scm', 'record.storeStatistics', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (245, 293, '', '商品统计', 'scm', 'store.storeProduct', 'statistics', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (246, 295, '', '用户统计', 'scm', 'user.user', 'user_analysis', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (247, 153, '', '个人资料', 'scm', 'setting.systemAdmin', 'admininfo', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (248, 247, '', '个人资料附加权限', 'scm', 'system.systemAdmin', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (249, 248, '', '个人资料提交保存', 'scm', 'system.systemAdmin', 'setAdminInfo', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (250, 247, '', '个人资料展示页', 'scm', 'system.systemAdmin', 'admininfo', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (251, 293, '', '订单统计', 'scm', 'order.storeOrder', 'orderchart', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (252, 21, '', '在线更新', 'scm', 'system.system_upgradeclient', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (253, 259, '', '添加更新包', 'scm', 'server.server_upgrade', 'add_upgrade', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (255, 1, '', '后台通知', 'scm', 'setting.systemNotice', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (256, 0, 'cloud', '服务器端', 'scm', 'upgrade', 'index', '[]', -100, 0, 1);
INSERT INTO `system_menus` VALUES (257, 258, '', 'IP白名单', 'scm', 'server.server_upgrade', 'ip_hteb_list', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (258, 256, '', '站点管理', 'scm', 'server.server_upgrade', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (259, 256, '', '版本管理', 'scm', 'server.server_upgrade', 'versionlist', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (260, 256, '', '升级日志', 'scm', 'server.server_upgrade', 'upgrade_log', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (261, 147, '', '编辑产品', 'scm', 'store.storeproduct', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (262, 147, '', '添加产品', 'scm', 'store.storeproduct', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (263, 147, '', '编辑产品详情', 'scm', 'store.storeproduct', 'edit_content', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (264, 147, '', '开启秒杀', 'scm', 'store.storeproduct', 'seckill', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (265, 147, '', '开启秒杀', 'scm', 'store.store_product', 'bargain', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (266, 147, '', '产品编辑属性', 'scm', 'store.storeproduct', 'attr', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (267, 360, '', '公众号接口配置', 'scm', 'setting.systemConfig', 'index', '{\"type\":\"1\",\"tab_id\":\"2\"}', 100, 1, 1);
INSERT INTO `system_menus` VALUES (269, 0, 'cubes', '小程序', 'scm', 'setting.system', '', '[]', 92, 1, 1);
INSERT INTO `system_menus` VALUES (270, 269, '', '小程序配置', 'scm', 'setting.systemConfig', 'index_alone', '{\"type\":\"2\",\"tab_id\":\"7\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (273, 286, '', '秒杀管理', 'scm', '', '', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (293, 288, '', '交易数据', 'scm', '', '', '[]', 100, 1, 1);
INSERT INTO `system_menus` VALUES (276, 21, '', '附件管理', 'scm', 'widget.images', 'index', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (278, 21, '', '清除数据', 'scm', 'system.system_cleardata', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (363, 362, '', '上传图片', 'scm', 'widget.images', 'upload', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (364, 362, '', '删除图片', 'scm', 'widget.images', 'delete', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (362, 276, '', '附加权限', '', '', '', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (285, 0, 'building-o', '订单', 'scm', '', '', '[]', 109, 1, 1);
INSERT INTO `system_menus` VALUES (283, 80, '', '文章管理', 'scm', 'article.article', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (284, 80, '', '文章分类', 'scm', 'article.article_category', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (287, 0, 'money', '财务', 'scm', '', '', '[]', 103, 1, 1);
INSERT INTO `system_menus` VALUES (288, 0, 'line-chart', '数据', 'scm', '', '', '[]', 100, 1, 1);
INSERT INTO `system_menus` VALUES (289, 0, 'gear', '设置', 'scm', '', '', '[]', 90, 1, 1);
INSERT INTO `system_menus` VALUES (290, 285, '', '售后服务', 'scm', '', '', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (353, 337, '', '分销配置', 'scm', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"9\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (306, 287, '', '财务操作', 'scm', '', '', '[]', 100, 1, 1);
INSERT INTO `system_menus` VALUES (307, 287, '', '财务记录', 'scm', '', '', '[]', 50, 1, 1);
INSERT INTO `system_menus` VALUES (308, 287, '', '佣金记录', 'scm', '', '', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (372, 269, '', '首页幻灯片', 'scm', 'setting.system_group_data', 'index', '{\"gid\":\"48\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (312, 307, '', '资金监控', 'scm', 'finance.finance', 'bill', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (313, 308, '', '佣金记录', 'scm', 'finance.finance', 'commission_list', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (329, 285, '', '营销订单', 'scm', 'user', 'user', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (371, 337, '', '分销员管理', 'scm', 'agent.agentManage', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (354, 11, '', '自动回复', '', '', '', '[]', 80, 1, 1);
INSERT INTO `system_menus` VALUES (334, 329, '', '秒杀订单', 'scm', 'user', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (335, 329, '', '积分兑换', 'scm', 'user', '', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (336, 151, '', '会员等级', 'scm', 'user.user', 'group', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (337, 0, 'users', '分销', 'scm', 'user', 'user', '[]', 106, 1, 1);
INSERT INTO `system_menus` VALUES (349, 286, '', '积分', 'scm', 'userPoint', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (350, 349, '', '积分配置', 'scm', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"11\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (355, 11, '', '页面设置', '', '', '', '[]', 90, 1, 1);
INSERT INTO `system_menus` VALUES (356, 355, '', '个人中心菜单', 'scm', 'setting.system_group_data', 'index', '{\"gid\":\"32\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (357, 355, '', '商城首页banner', 'scm', 'setting.system_group_data', 'index', '{\"gid\":\"34\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (358, 355, '', '商城首页分类按钮', 'scm', 'setting.system_group_data', 'index', '{\"gid\":\"35\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (359, 355, '', '商城首页滚动新闻', 'scm', 'setting.system_group_data', 'index', '{\"gid\":\"36\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (360, 11, '', '公众号配置', '', '', '', '[]', 100, 1, 1);
INSERT INTO `system_menus` VALUES (361, 360, '', '公众号支付配置', 'scm', 'setting.systemConfig', 'index', '{\"type\":\"1\",\"tab_id\":\"4\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (365, 362, '', '附件管理', 'scm', 'widget.images', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (369, 143, '', '添加产品分类', 'scm', 'store.storeCategory', 'create', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (370, 143, '', '编辑产品分类', 'scm', 'store.storeCategory', 'edit', '[]', 0, 0, 1);
INSERT INTO `system_menus` VALUES (373, 269, '', '首页导航按钮', 'scm', 'setting.system_group_data', 'index', '{\"gid\":\"47\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (374, 295, '', '分销会员业务', 'scm', 'record.record', 'user_distribution_chart', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (375, 269, '', '小程序支付配置', 'scm', 'setting.systemConfig', 'index_alone', '{\"type\":\"2\",\"tab_id\":\"14\"}', 0, 1, 1);
INSERT INTO `system_menus` VALUES (376, 269, '', '小程序模板消息', 'scm', 'routine.routineTemplate', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (377, 21, '', '数据库维护', 'scm', 'system.system_databackup', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (378, 289, '', '物流公司', 'scm', 'system.express', 'index', '[]', 0, 1, 1);
INSERT INTO `system_menus` VALUES (379, 21, '', '文件管理', 'scm', 'system.system_file', 'opendir', '[]', 0, 1, 1);

-- ----------------------------
-- Table structure for system_role
-- ----------------------------
DROP TABLE IF EXISTS `system_role`;
CREATE TABLE `system_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '身份管理id',
  `role_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份管理名称',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份管理权限(menus_id)',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '身份管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_role
-- ----------------------------
INSERT INTO `system_role` VALUES (1, '超级管理员', '85,86,11,174,17,127,128,126,80,32,71,33,36,35,34,113,114,19,73,42,43,44,45,115,116,18,72,38,41,40,39,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,240,238,148,150,149,229,230,234,233,232,231,235,175,210,223,222,215,214,213,212,211,209,170,225,228,227,226,224,160,162,161,26,190,191,192,193,194,206,195,205,204,203,202,201,200,199,198,197,207,208,196,25,142,143,24,147,146,21,237,130,131,22,136,135,139,138,137,140,141,1,173,5,9,70,52,58,57,56,55,54,53,112,111,110,109,7,69,46,51,50,49,48,47,108,107,106,6,118,117,145,144,119,2,74,75,76,101,100,77,78,153,4,59,62,61,60,103,102,68,8,63,64,65,66,105,104,67,151,177,176,239,179,217,219,218,216,82,129,132,133,134,236,84', 0, 1);
INSERT INTO `system_role` VALUES (15, '子管理员', '11,174,17,127,128,126,80,32,33,36,35,34,113,114,71,19,42,45,44,43,116,115,73,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,241,240,238,148,149,230,234,233,232,231,229,150,235,175,210,212,211,213,214,223,222,215,209,170,225,228,227,226,224,26,191,198,192,202,193,203,201,200,194,199,196,197,195,208,207,206,205,204,190,25,142,143,24,146,147,151,177,176,239,179,217,219,218,216,82,236,84,133,134,129,132,18,72,38,39,40,41,153,8,67,63,66,65,64,105,104,4,59,60,61,62,103,102,68,247,250,243,246,245,244,1,2,78,74,101,9,52,58,57,56,55,54,53,111,110,109,112,70,5,7,69,46,51,50,49,48,47,108,107,106,6,118,117,144,145,119,21,173,237,130,131,0', 2, 1);
INSERT INTO `system_role` VALUES (10, '客服', '23,241,240,238,148,150,149,229,230,231,234,233,232,235,26,191,197,196,195,194,193,192,198,207,206,205,204,203,202,201,200,208,199,190,175,209,210,223,222,215,214,213,212,211,170,225,228,227,226,224,25,142,143,24,146,147,151,177,176,239,179,217,219,218,216,82,133,134,129,132,236,84', 1, 1);
INSERT INTO `system_role` VALUES (14, '演示账号', '146,142,26,191,195,194,193,192,196,197,198,208,207,206,205,204,203,202,201,200,199,190,290,170,224,225,228,227,226,177,176,82,133,134,236,84,129,132,337,371,353,149,229,230,232,233,234,231,235,150,273,241,238,306,239,179,216,217,218,219,245,244,246,269,376,375,373,270,372,17,126,127,128,174,354,12,98,99,97,30,89,92,91,90,123,124,93,31,95,96,94,37,175,210,215,214,222,223,213,212,211,209,19,73,42,45,44,43,116,115,8,67,63,104,66,65,64,105,4,68,59,103,102,62,61,60,78,101,250,70,56,112,111,110,109,7,69,46,47,48,49,51,50,108,107,106,6,118,117,145,144,119,80,284,71,33,36,35,34,114,113,283,72,38,41,40,39,173,237,130,131,365,24,25,285,151,0,148,286,272,287,307,293,294,295,360,11,153,2,74,247,9,52,1,21,362', 1, 1);
INSERT INTO `system_role` VALUES (16, '三级身份', '11,174,17,127,128,126,80,32,33,36,35,34,113,114,71,19,42,45,44,43,116,115,73,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,148,149,230,234,233,232,231,229,150,235,175,210,212,211,213,214,223,222,215,209,170,225,228,227,226,224,26,191,198,192,202,193,203,201,200,194,199,196,197,195,208,207,206,205,204,190,25,142,143,24,146,147,241,240,238,151,179,217,219,218,216,177,176,239,82,133,134,129,132,236,84,18,38,39,40,41,72,153,8,67,63,66,65,64,105,104,4,59,60,61,62,103,102,68,247,250,243,246,245,244,9,52,58,57,56,55,54,53,111,110,109,112,70,5,7,69,46,51,50,49,48,47,108,107,106,6,118,117,144,145,119,21,130,131,173,237,0,1', 3, 1);
INSERT INTO `system_role` VALUES (17, 'boss', '11,174,17,126,127,128,19,42,43,44,45,115,116,73,79,31,37,94,95,96,30,93,89,123,124,90,91,92,12,97,98,99,23,241,240,238,148,149,230,234,233,232,231,229,150,235,170,225,228,227,226,224,175,210,212,211,213,214,223,222,215,209,25,143,142,24,147,146,26,191,197,196,195,194,202,198,192,200,203,201,199,193,208,207,206,205,204,190,151,176,177,239,179,217,219,218,216,80,32,71,33,34,35,36,113,114,18,72,38,39,40,41,0', 2, 1);
INSERT INTO `system_role` VALUES (18, '管理员', '23,24,323,328,324,325,326,327,147,261,262,266,265,264,263,146,25,143,370,369,142,285,26,191,194,193,192,195,196,208,207,206,205,204,203,202,201,200,199,198,197,190,329,335,334,333,290,170,225,226,227,228,224,151,177,176,82,133,134,236,84,129,132,336,337,371,339,353,286,148,149,229,230,234,231,232,233,235,150,352,349,351,350,273,241,272,238,271,254,366,368,367,287,306,239,307,179,216,217,218,219,312,308,313,288,293,251,245,340,341,296,318,317,316,315,314,294,244,302,301,300,295,246,305,304,303,297,321,320,319,355,359,358,357,356,354,12,98,99,97,30,89,92,91,90,123,124,93,31,95,96,94,37,175,210,212,213,214,215,222,223,211,209,19,73,42,45,44,43,116,115,283,72,38,41,40,39,284,71,33,36,35,34,114,113,8,67,63,104,66,65,64,105,68,103,102,61,2,78,74,77,76,75,101,100,247,248,249,250,1,9,70,52,58,57,56,55,54,53,112,111,110,109,7,69,46,47,48,49,51,50,108,107,106,6,118,117,145,144,119,255,269,270,21,130,131,173,252,237,278,276,362,365,364,363,258,257,260,0,11,80,153,4,59,289,256', 1, 1);
INSERT INTO `system_role` VALUES (20, '操作人员', '23,24,146,147,261,262,266,265,264,263,25,143,370,369,142,285,26,191,208,207,205,204,203,202,201,200,199,206,198,197,196,195,194,193,192,190,329,335,334,290,170,224,225,228,227,226,0', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
