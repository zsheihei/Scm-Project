/*
Navicat MySQL Data Transfer

Source Server         : 本地MYSQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : scm

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-12-27 23:13:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for system_admin
-- ----------------------------
DROP TABLE IF EXISTS `system_admin`;
CREATE TABLE `system_admin` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '后台管理员表ID',
  `account` varchar(32) NOT NULL COMMENT '后台管理员账号',
  `pwd` char(32) NOT NULL COMMENT '后台管理员密码',
  `real_name` varchar(16) NOT NULL COMMENT '后台管理员姓名',
  `roles` varchar(128) NOT NULL COMMENT '后台管理员权限(menus_id)',
  `last_ip` varchar(16) DEFAULT NULL COMMENT '后台管理员最后一次登录ip',
  `last_time` int(10) unsigned DEFAULT NULL COMMENT '后台管理员最后一次登录时间',
  `add_time` int(10) unsigned NOT NULL COMMENT '后台管理员添加时间',
  `login_count` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '登录次数',
  `level` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT '后台管理员级别',
  `status` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '后台管理员状态 1有效0无效',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='后台管理员表';

-- ----------------------------
-- Records of system_admin
-- ----------------------------
INSERT INTO `system_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '超级管理员', '1', '127.0.0.1', '1545915903', '1545618267', '0', '0', '1', '0');
INSERT INTO `system_admin` VALUES ('2', 'user', '76e2df3fefead34ee08889304c8e1712', '销售小王', '10,19', '127.0.0.1', '1545795948', '1545618267', '0', '1', '1', '0');
INSERT INTO `system_admin` VALUES ('3', 'vdasf', 'e10adc3949ba59abbe56e057f20f883e', 'fdsa', '10', null, null, '1545815022', '0', '1', '1', '0');
INSERT INTO `system_admin` VALUES ('4', 'fdsa323', 'e10adc3949ba59abbe56e057f20f883e', 'fdsa', '18', null, null, '1545815278', '0', '1', '1', '0');
INSERT INTO `system_admin` VALUES ('5', 'fdasfdsa', 'eed8cdc400dfd4ec85dff70a170066b7', 'fdsa', '10,20', null, null, '1545815604', '0', '1', '1', '0');
INSERT INTO `system_admin` VALUES ('6', 'fdsa', 'e10adc3949ba59abbe56e057f20f883e', 'fdsa', '', null, null, '1545827391', '0', '1', '0', '1');

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员操作记录ID',
  `admin_id` int(10) unsigned NOT NULL COMMENT '管理员id',
  `admin_name` varchar(64) NOT NULL COMMENT '管理员姓名',
  `path` varchar(128) NOT NULL COMMENT '链接',
  `page` varchar(64) NOT NULL COMMENT '行为',
  `method` varchar(12) NOT NULL COMMENT '访问类型',
  `ip` varchar(16) NOT NULL COMMENT '登录IP',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `add_time` int(10) unsigned NOT NULL COMMENT '操作时间',
  `merchant_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '商户id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_id` (`admin_id`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3625 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员操作记录表';

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('3253', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545825914', '0');
INSERT INTO `system_log` VALUES ('3254', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545825920', '0');
INSERT INTO `system_log` VALUES ('3255', '1', 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', '1545825923', '0');
INSERT INTO `system_log` VALUES ('3256', '1', 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', '1545825961', '0');
INSERT INTO `system_log` VALUES ('3257', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545825967', '0');
INSERT INTO `system_log` VALUES ('3258', '1', 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', '1545825969', '0');
INSERT INTO `system_log` VALUES ('3259', '1', 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', '1545826041', '0');
INSERT INTO `system_log` VALUES ('3260', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545826049', '0');
INSERT INTO `system_log` VALUES ('3261', '1', 'admin', 'scm/setting.systemrole/create/', '未知', 'GET', '127.0.0.1', 'system', '1545826051', '0');
INSERT INTO `system_log` VALUES ('3262', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545826059', '0');
INSERT INTO `system_log` VALUES ('3263', '1', 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', '1545826060', '0');
INSERT INTO `system_log` VALUES ('3264', '1', 'admin', 'scm/setting.systemadmin/update/id/3', '未知', 'POST', '127.0.0.1', 'system', '1545826065', '0');
INSERT INTO `system_log` VALUES ('3265', '1', 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', '1545826088', '0');
INSERT INTO `system_log` VALUES ('3266', '1', 'admin', 'scm/setting.systemadmin/update/id/3', '未知', 'POST', '127.0.0.1', 'system', '1545826092', '0');
INSERT INTO `system_log` VALUES ('3267', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545826092', '0');
INSERT INTO `system_log` VALUES ('3268', '1', 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', '1545826094', '0');
INSERT INTO `system_log` VALUES ('3269', '1', 'admin', 'scm/setting.systemadmin/update/id/3', '未知', 'POST', '127.0.0.1', 'system', '1545826097', '0');
INSERT INTO `system_log` VALUES ('3270', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545826097', '0');
INSERT INTO `system_log` VALUES ('3271', '1', 'admin', 'scm/system.express/index/', '物流公司', 'GET', '127.0.0.1', 'system', '1545826173', '0');
INSERT INTO `system_log` VALUES ('3272', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545826189', '0');
INSERT INTO `system_log` VALUES ('3273', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545826308', '0');
INSERT INTO `system_log` VALUES ('3274', '1', 'admin', 'scm/setting.systemmenus/edit/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545826318', '0');
INSERT INTO `system_log` VALUES ('3275', '1', 'admin', 'scm/setting.systemmenus/edit/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545826342', '0');
INSERT INTO `system_log` VALUES ('3276', '1', 'admin', 'scm/setting.systemmenus/create/cid/23', '未知', 'GET', '127.0.0.1', 'system', '1545826345', '0');
INSERT INTO `system_log` VALUES ('3277', '1', 'admin', 'scm/setting.systemmenus/create/cid/23', '未知', 'GET', '127.0.0.1', 'system', '1545826379', '0');
INSERT INTO `system_log` VALUES ('3278', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545826819', '0');
INSERT INTO `system_log` VALUES ('3279', '1', 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', '1545826820', '0');
INSERT INTO `system_log` VALUES ('3280', '1', 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', '1545826856', '0');
INSERT INTO `system_log` VALUES ('3281', '1', 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', '1545827192', '0');
INSERT INTO `system_log` VALUES ('3282', '1', 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', '1545827314', '0');
INSERT INTO `system_log` VALUES ('3283', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545827341', '0');
INSERT INTO `system_log` VALUES ('3284', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545827343', '0');
INSERT INTO `system_log` VALUES ('3285', '1', 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', '1545827344', '0');
INSERT INTO `system_log` VALUES ('3286', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545827372', '0');
INSERT INTO `system_log` VALUES ('3287', '1', 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', '1545827374', '0');
INSERT INTO `system_log` VALUES ('3288', '1', 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', '1545827384', '0');
INSERT INTO `system_log` VALUES ('3289', '1', 'admin', 'scm/setting.systemadmin/save/', '未知', 'POST', '127.0.0.1', 'system', '1545827391', '0');
INSERT INTO `system_log` VALUES ('3290', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545827391', '0');
INSERT INTO `system_log` VALUES ('3291', '1', 'admin', 'scm/setting.systemadmin/delete/id/6', '未知', 'GET', '127.0.0.1', 'system', '1545827408', '0');
INSERT INTO `system_log` VALUES ('3292', '1', 'admin', 'scm/setting.systemadmin/create/', '未知', 'GET', '127.0.0.1', 'system', '1545827504', '0');
INSERT INTO `system_log` VALUES ('3293', '1', 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', '1545827508', '0');
INSERT INTO `system_log` VALUES ('3294', '1', 'admin', 'scm/setting.systemadmin/edit/id/3', '未知', 'GET', '127.0.0.1', 'system', '1545827538', '0');
INSERT INTO `system_log` VALUES ('3295', '1', 'admin', 'scm/setting.systemadmin/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', '1545827575', '0');
INSERT INTO `system_log` VALUES ('3296', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545827579', '0');
INSERT INTO `system_log` VALUES ('3297', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545827581', '0');
INSERT INTO `system_log` VALUES ('3298', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545827841', '0');
INSERT INTO `system_log` VALUES ('3299', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545827843', '0');
INSERT INTO `system_log` VALUES ('3300', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545827851', '0');
INSERT INTO `system_log` VALUES ('3301', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545828460', '0');
INSERT INTO `system_log` VALUES ('3302', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545828490', '0');
INSERT INTO `system_log` VALUES ('3303', '1', 'admin', 'scm/setting.systemmenus/create/cid/23', '未知', 'GET', '127.0.0.1', 'system', '1545828500', '0');
INSERT INTO `system_log` VALUES ('3304', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545828619', '0');
INSERT INTO `system_log` VALUES ('3305', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545828619', '0');
INSERT INTO `system_log` VALUES ('3306', '1', 'admin', 'scm/setting.systemmenus/create/cid/23', '未知', 'GET', '127.0.0.1', 'system', '1545828621', '0');
INSERT INTO `system_log` VALUES ('3307', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545828685', '0');
INSERT INTO `system_log` VALUES ('3308', '1', 'admin', 'scm/setting.systemmenus/create/cid/23', '未知', 'GET', '127.0.0.1', 'system', '1545828687', '0');
INSERT INTO `system_log` VALUES ('3309', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545828758', '0');
INSERT INTO `system_log` VALUES ('3310', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545828759', '0');
INSERT INTO `system_log` VALUES ('3311', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545828760', '0');
INSERT INTO `system_log` VALUES ('3312', '1', 'admin', 'scm/setting.systemmenus/create/cid/23', '未知', 'GET', '127.0.0.1', 'system', '1545828762', '0');
INSERT INTO `system_log` VALUES ('3313', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545828787', '0');
INSERT INTO `system_log` VALUES ('3314', '1', 'admin', 'scm/setting.systemmenus/create/cid/23', '未知', 'GET', '127.0.0.1', 'system', '1545828795', '0');
INSERT INTO `system_log` VALUES ('3315', '1', 'admin', 'scm/widget.widgets/icon/fodder/icon', '未知', 'GET', '127.0.0.1', 'system', '1545828811', '0');
INSERT INTO `system_log` VALUES ('3316', '1', 'admin', 'scm/widget.widgets/icon/fodder/icon', '未知', 'GET', '127.0.0.1', 'system', '1545828812', '0');
INSERT INTO `system_log` VALUES ('3317', '1', 'admin', 'scm/widget.widgets/icon/fodder/icon', '未知', 'GET', '127.0.0.1', 'system', '1545828840', '0');
INSERT INTO `system_log` VALUES ('3318', '1', 'admin', 'scm/widget.widgets/icon/fodder/icon', '未知', 'GET', '127.0.0.1', 'system', '1545828841', '0');
INSERT INTO `system_log` VALUES ('3319', '1', 'admin', 'scm/widget.widgets/icon/fodder/icon', '未知', 'GET', '127.0.0.1', 'system', '1545828872', '0');
INSERT INTO `system_log` VALUES ('3320', '1', 'admin', 'scm/widget.widgets/icon/fodder/icon', '未知', 'GET', '127.0.0.1', 'system', '1545828872', '0');
INSERT INTO `system_log` VALUES ('3321', '1', 'admin', 'scm/widget.widgets/icon/fodder/{__frame_path}css', '未知', 'GET', '127.0.0.1', 'system', '1545828872', '0');
INSERT INTO `system_log` VALUES ('3322', '1', 'admin', 'scm/widget.widgets/icon/fodder/{__frame_path}css', '未知', 'GET', '127.0.0.1', 'system', '1545828872', '0');
INSERT INTO `system_log` VALUES ('3323', '1', 'admin', 'scm/widget.widgets/icon/fodder/{__frame_path}js', '未知', 'GET', '127.0.0.1', 'system', '1545828872', '0');
INSERT INTO `system_log` VALUES ('3324', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545828956', '0');
INSERT INTO `system_log` VALUES ('3325', '1', 'admin', 'scm/setting.systemmenus/create/cid/23', '未知', 'GET', '127.0.0.1', 'system', '1545828958', '0');
INSERT INTO `system_log` VALUES ('3326', '1', 'admin', 'scm/widget.widgets/icon/fodder/icon', '未知', 'GET', '127.0.0.1', 'system', '1545828961', '0');
INSERT INTO `system_log` VALUES ('3327', '1', 'admin', 'scm/widget.widgets/icon/fodder/icon', '未知', 'GET', '127.0.0.1', 'system', '1545828961', '0');
INSERT INTO `system_log` VALUES ('3328', '1', 'admin', 'scm/setting.systemmenus/index/pid/256', '未知', 'GET', '127.0.0.1', 'system', '1545829365', '0');
INSERT INTO `system_log` VALUES ('3329', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545829367', '0');
INSERT INTO `system_log` VALUES ('3330', '1', 'admin', 'scm/setting.systemmenus/edit/id/289', '未知', 'GET', '127.0.0.1', 'system', '1545829373', '0');
INSERT INTO `system_log` VALUES ('3331', '1', 'admin', 'scm/setting.systemmenus/edit/id/21', '未知', 'GET', '127.0.0.1', 'system', '1545829388', '0');
INSERT INTO `system_log` VALUES ('3332', '1', 'admin', 'scm/setting.systemmenus/edit/id/21', '未知', 'GET', '127.0.0.1', 'system', '1545829400', '0');
INSERT INTO `system_log` VALUES ('3333', '1', 'admin', 'scm/setting.systemmenus/edit/id/289', '未知', 'GET', '127.0.0.1', 'system', '1545829412', '0');
INSERT INTO `system_log` VALUES ('3334', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545829450', '0');
INSERT INTO `system_log` VALUES ('3335', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545830695', '0');
INSERT INTO `system_log` VALUES ('3336', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545830696', '0');
INSERT INTO `system_log` VALUES ('3337', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545911669', '0');
INSERT INTO `system_log` VALUES ('3338', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545911670', '0');
INSERT INTO `system_log` VALUES ('3339', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545911672', '0');
INSERT INTO `system_log` VALUES ('3340', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545911672', '0');
INSERT INTO `system_log` VALUES ('3341', '1', 'admin', 'scm/setting.systemmenus/create/cid/146', '未知', 'GET', '127.0.0.1', 'system', '1545911679', '0');
INSERT INTO `system_log` VALUES ('3342', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545911722', '0');
INSERT INTO `system_log` VALUES ('3343', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545911839', '0');
INSERT INTO `system_log` VALUES ('3344', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545911859', '0');
INSERT INTO `system_log` VALUES ('3345', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545912332', '0');
INSERT INTO `system_log` VALUES ('3346', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545912372', '0');
INSERT INTO `system_log` VALUES ('3347', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545912504', '0');
INSERT INTO `system_log` VALUES ('3348', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545912505', '0');
INSERT INTO `system_log` VALUES ('3349', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545912522', '0');
INSERT INTO `system_log` VALUES ('3350', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545912523', '0');
INSERT INTO `system_log` VALUES ('3351', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545912552', '0');
INSERT INTO `system_log` VALUES ('3352', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545912552', '0');
INSERT INTO `system_log` VALUES ('3353', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545912573', '0');
INSERT INTO `system_log` VALUES ('3354', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545912574', '0');
INSERT INTO `system_log` VALUES ('3355', '1', 'admin', 'scm/setting.systemmenus/delete/id/6', '未知', 'GET', '127.0.0.1', 'system', '1545912591', '0');
INSERT INTO `system_log` VALUES ('3356', '1', 'admin', 'scm/setting.systemmenus/delete/id/6', '未知', 'GET', '127.0.0.1', 'system', '1545912595', '0');
INSERT INTO `system_log` VALUES ('3357', '1', 'admin', 'scm/setting.systemmenus/delete/id/11', '未知', 'GET', '127.0.0.1', 'system', '1545912646', '0');
INSERT INTO `system_log` VALUES ('3358', '1', 'admin', 'scm/setting.systemmenus/delete/id/11', '未知', 'GET', '127.0.0.1', 'system', '1545912704', '0');
INSERT INTO `system_log` VALUES ('3359', '1', 'admin', 'scm/setting.systemmenus/delete/id/6', '未知', 'GET', '127.0.0.1', 'system', '1545912707', '0');
INSERT INTO `system_log` VALUES ('3360', '1', 'admin', 'scm/setting.systemmenus/delete/id/11', '未知', 'GET', '127.0.0.1', 'system', '1545912718', '0');
INSERT INTO `system_log` VALUES ('3361', '1', 'admin', 'scm/setting.systemmenus/delete/id/11', '未知', 'GET', '127.0.0.1', 'system', '1545912831', '0');
INSERT INTO `system_log` VALUES ('3362', '1', 'admin', 'scm/setting.systemmenus/delete/id/1', '未知', 'GET', '127.0.0.1', 'system', '1545913150', '0');
INSERT INTO `system_log` VALUES ('3363', '1', 'admin', 'scm/setting.systemmenus/delete/id/1', '未知', 'GET', '127.0.0.1', 'system', '1545913171', '0');
INSERT INTO `system_log` VALUES ('3364', '1', 'admin', 'scm/setting.systemmenus/delete/id/1', '未知', 'GET', '127.0.0.1', 'system', '1545913172', '0');
INSERT INTO `system_log` VALUES ('3365', '1', 'admin', 'scm/setting.systemmenus/delete/id/1', '未知', 'GET', '127.0.0.1', 'system', '1545913181', '0');
INSERT INTO `system_log` VALUES ('3366', '1', 'admin', 'scm/setting.systemmenus/delete/id/32', '未知', 'GET', '127.0.0.1', 'system', '1545913198', '0');
INSERT INTO `system_log` VALUES ('3367', '1', 'admin', 'scm/setting.systemmenus/delete/id/32', '未知', 'GET', '127.0.0.1', 'system', '1545913239', '0');
INSERT INTO `system_log` VALUES ('3368', '1', 'admin', 'scm/setting.systemmenus/delete/id/32', '未知', 'GET', '127.0.0.1', 'system', '1545913240', '0');
INSERT INTO `system_log` VALUES ('3369', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545913247', '0');
INSERT INTO `system_log` VALUES ('3370', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545913247', '0');
INSERT INTO `system_log` VALUES ('3371', '1', 'admin', 'scm/setting.systemmenus/delete/id/32', '未知', 'GET', '127.0.0.1', 'system', '1545913260', '0');
INSERT INTO `system_log` VALUES ('3372', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545913294', '0');
INSERT INTO `system_log` VALUES ('3373', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545913294', '0');
INSERT INTO `system_log` VALUES ('3374', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545913332', '0');
INSERT INTO `system_log` VALUES ('3375', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545913332', '0');
INSERT INTO `system_log` VALUES ('3376', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545913344', '0');
INSERT INTO `system_log` VALUES ('3377', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545913345', '0');
INSERT INTO `system_log` VALUES ('3378', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545913346', '0');
INSERT INTO `system_log` VALUES ('3379', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545913469', '0');
INSERT INTO `system_log` VALUES ('3380', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545913473', '0');
INSERT INTO `system_log` VALUES ('3381', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545913489', '0');
INSERT INTO `system_log` VALUES ('3382', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545913490', '0');
INSERT INTO `system_log` VALUES ('3383', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913546', '0');
INSERT INTO `system_log` VALUES ('3384', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913559', '0');
INSERT INTO `system_log` VALUES ('3385', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913560', '0');
INSERT INTO `system_log` VALUES ('3386', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913783', '0');
INSERT INTO `system_log` VALUES ('3387', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913784', '0');
INSERT INTO `system_log` VALUES ('3388', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913810', '0');
INSERT INTO `system_log` VALUES ('3389', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913819', '0');
INSERT INTO `system_log` VALUES ('3390', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913820', '0');
INSERT INTO `system_log` VALUES ('3391', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913831', '0');
INSERT INTO `system_log` VALUES ('3392', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913832', '0');
INSERT INTO `system_log` VALUES ('3393', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913832', '0');
INSERT INTO `system_log` VALUES ('3394', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545913833', '0');
INSERT INTO `system_log` VALUES ('3395', '1', 'admin', 'scm/setting.systemmenus/delete/id/288', '未知', 'GET', '127.0.0.1', 'system', '1545913876', '0');
INSERT INTO `system_log` VALUES ('3396', '1', 'admin', 'scm/setting.systemmenus/delete/id/288', '未知', 'GET', '127.0.0.1', 'system', '1545913878', '0');
INSERT INTO `system_log` VALUES ('3397', '1', 'admin', 'scm/setting.systemmenus/delete/id/288', '未知', 'GET', '127.0.0.1', 'system', '1545913900', '0');
INSERT INTO `system_log` VALUES ('3398', '1', 'admin', 'scm/setting.systemmenus/delete/id/288', '未知', 'GET', '127.0.0.1', 'system', '1545913900', '0');
INSERT INTO `system_log` VALUES ('3399', '1', 'admin', 'scm/setting.systemmenus/delete/id/21', '未知', 'GET', '127.0.0.1', 'system', '1545913934', '0');
INSERT INTO `system_log` VALUES ('3400', '1', 'admin', 'scm/setting.systemmenus/delete/id/21', '未知', 'GET', '127.0.0.1', 'system', '1545914015', '0');
INSERT INTO `system_log` VALUES ('3401', '1', 'admin', 'scm/setting.systemmenus/delete/id/21', '未知', 'GET', '127.0.0.1', 'system', '1545914016', '0');
INSERT INTO `system_log` VALUES ('3402', '1', 'admin', 'scm/setting.systemmenus/delete/id/21', '未知', 'GET', '127.0.0.1', 'system', '1545914023', '0');
INSERT INTO `system_log` VALUES ('3403', '1', 'admin', 'scm/setting.systemmenus/delete/id/21', '未知', 'GET', '127.0.0.1', 'system', '1545914024', '0');
INSERT INTO `system_log` VALUES ('3404', '1', 'admin', 'scm/setting.systemmenus/delete/id/21', '未知', 'GET', '127.0.0.1', 'system', '1545914091', '0');
INSERT INTO `system_log` VALUES ('3405', '1', 'admin', 'scm/setting.systemmenus/delete/id/21', '未知', 'GET', '127.0.0.1', 'system', '1545914103', '0');
INSERT INTO `system_log` VALUES ('3406', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545914123', '0');
INSERT INTO `system_log` VALUES ('3407', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545914124', '0');
INSERT INTO `system_log` VALUES ('3408', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545914125', '0');
INSERT INTO `system_log` VALUES ('3409', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545914126', '0');
INSERT INTO `system_log` VALUES ('3410', '1', 'admin', 'scm/setting.systemmenus/delete/id/80', '未知', 'GET', '127.0.0.1', 'system', '1545914143', '0');
INSERT INTO `system_log` VALUES ('3411', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545914149', '0');
INSERT INTO `system_log` VALUES ('3412', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545914149', '0');
INSERT INTO `system_log` VALUES ('3413', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545914424', '0');
INSERT INTO `system_log` VALUES ('3414', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545914424', '0');
INSERT INTO `system_log` VALUES ('3415', '1', 'admin', 'scm/setting.systemmenus/delete/id/285', '未知', 'GET', '127.0.0.1', 'system', '1545914429', '0');
INSERT INTO `system_log` VALUES ('3416', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545914449', '0');
INSERT INTO `system_log` VALUES ('3417', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545914457', '0');
INSERT INTO `system_log` VALUES ('3418', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545914457', '0');
INSERT INTO `system_log` VALUES ('3419', '1', 'admin', 'scm/setting.systemmenus/delete/id/337', '未知', 'GET', '127.0.0.1', 'system', '1545914465', '0');
INSERT INTO `system_log` VALUES ('3420', '1', 'admin', 'scm/setting.systemmenus/delete/id/371', '未知', 'GET', '127.0.0.1', 'system', '1545914511', '0');
INSERT INTO `system_log` VALUES ('3421', '1', 'admin', 'scm/setting.systemmenus/delete/id/353', '未知', 'GET', '127.0.0.1', 'system', '1545914514', '0');
INSERT INTO `system_log` VALUES ('3422', '1', 'admin', 'scm/setting.systemmenus/delete/id/286', '未知', 'GET', '127.0.0.1', 'system', '1545914517', '0');
INSERT INTO `system_log` VALUES ('3423', '1', 'admin', 'scm/setting.systemmenus/delete/id/287', '未知', 'GET', '127.0.0.1', 'system', '1545914520', '0');
INSERT INTO `system_log` VALUES ('3424', '1', 'admin', 'scm/setting.systemmenus/delete/id/288', '未知', 'GET', '127.0.0.1', 'system', '1545914527', '0');
INSERT INTO `system_log` VALUES ('3425', '1', 'admin', 'scm/setting.systemmenus/delete/id/269', '未知', 'GET', '127.0.0.1', 'system', '1545914530', '0');
INSERT INTO `system_log` VALUES ('3426', '1', 'admin', 'scm/setting.systemmenus/delete/id/11', '未知', 'GET', '127.0.0.1', 'system', '1545914533', '0');
INSERT INTO `system_log` VALUES ('3427', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545914653', '0');
INSERT INTO `system_log` VALUES ('3428', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545914654', '0');
INSERT INTO `system_log` VALUES ('3429', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545914662', '0');
INSERT INTO `system_log` VALUES ('3430', '1', 'admin', 'scm/setting.systemmenus/delete/id/285', '未知', 'GET', '127.0.0.1', 'system', '1545914665', '0');
INSERT INTO `system_log` VALUES ('3431', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545914669', '0');
INSERT INTO `system_log` VALUES ('3432', '1', 'admin', 'scm/setting.systemmenus/delete/id/337', '未知', 'GET', '127.0.0.1', 'system', '1545914672', '0');
INSERT INTO `system_log` VALUES ('3433', '1', 'admin', 'scm/setting.systemmenus/delete/id/286', '未知', 'GET', '127.0.0.1', 'system', '1545914675', '0');
INSERT INTO `system_log` VALUES ('3434', '1', 'admin', 'scm/setting.systemmenus/delete/id/287', '未知', 'GET', '127.0.0.1', 'system', '1545914679', '0');
INSERT INTO `system_log` VALUES ('3435', '1', 'admin', 'scm/setting.systemmenus/delete/id/288', '未知', 'GET', '127.0.0.1', 'system', '1545914685', '0');
INSERT INTO `system_log` VALUES ('3436', '1', 'admin', 'scm/setting.systemmenus/delete/id/269', '未知', 'GET', '127.0.0.1', 'system', '1545914688', '0');
INSERT INTO `system_log` VALUES ('3437', '1', 'admin', 'scm/setting.systemmenus/delete/id/11', '未知', 'GET', '127.0.0.1', 'system', '1545914691', '0');
INSERT INTO `system_log` VALUES ('3438', '1', 'admin', 'scm/setting.systemmenus/delete/id/80', '未知', 'GET', '127.0.0.1', 'system', '1545914698', '0');
INSERT INTO `system_log` VALUES ('3439', '1', 'admin', 'scm/system.systemlog/index/', '管理员操作记录展示页', 'GET', '127.0.0.1', 'system', '1545914735', '0');
INSERT INTO `system_log` VALUES ('3440', '1', 'admin', 'scm/system.systemfile/index/', '未知', 'GET', '127.0.0.1', 'system', '1545914736', '0');
INSERT INTO `system_log` VALUES ('3441', '1', 'admin', 'scm/system.systemdatabackup/index/', '未知', 'GET', '127.0.0.1', 'system', '1545914736', '0');
INSERT INTO `system_log` VALUES ('3442', '1', 'admin', 'scm/system.systemcleardata/index/', '未知', 'GET', '127.0.0.1', 'system', '1545914737', '0');
INSERT INTO `system_log` VALUES ('3443', '1', 'admin', 'scm/system.clear/index/', '刷新缓存', 'GET', '127.0.0.1', 'system', '1545914737', '0');
INSERT INTO `system_log` VALUES ('3444', '1', 'admin', 'scm/system.systemupgradeclient/index/', '未知', 'GET', '127.0.0.1', 'system', '1545914738', '0');
INSERT INTO `system_log` VALUES ('3445', '1', 'admin', 'scm/system.systemfile/opendir/', '未知', 'GET', '127.0.0.1', 'system', '1545914738', '0');
INSERT INTO `system_log` VALUES ('3446', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545914742', '0');
INSERT INTO `system_log` VALUES ('3447', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545914743', '0');
INSERT INTO `system_log` VALUES ('3448', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545914744', '0');
INSERT INTO `system_log` VALUES ('3449', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545914744', '0');
INSERT INTO `system_log` VALUES ('3450', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545915253', '0');
INSERT INTO `system_log` VALUES ('3451', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545915265', '0');
INSERT INTO `system_log` VALUES ('3452', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545915272', '0');
INSERT INTO `system_log` VALUES ('3453', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545915272', '0');
INSERT INTO `system_log` VALUES ('3454', '1', 'admin', 'scm/system.express/index/', '物流公司', 'GET', '127.0.0.1', 'system', '1545915659', '0');
INSERT INTO `system_log` VALUES ('3455', '1', 'admin', 'scm/users/info/', '未知', 'GET', '127.0.0.1', 'system', '1545915720', '0');
INSERT INTO `system_log` VALUES ('3456', '1', 'admin', 'scm/users/info/', '未知', 'GET', '127.0.0.1', 'system', '1545915737', '0');
INSERT INTO `system_log` VALUES ('3457', '1', 'admin', 'scm/systemadmin/admininfo/', '未知', 'GET', '127.0.0.1', 'system', '1545915828', '0');
INSERT INTO `system_log` VALUES ('3458', '1', 'admin', 'scm/systemadmin/admininfo/', '未知', 'GET', '127.0.0.1', 'system', '1545915830', '0');
INSERT INTO `system_log` VALUES ('3459', '1', 'admin', 'scm/systemadmin/admininfo/', '未知', 'GET', '127.0.0.1', 'system', '1545915834', '0');
INSERT INTO `system_log` VALUES ('3460', '1', 'admin', 'scm/systemadmin/favicon.ico/', '未知', 'GET', '127.0.0.1', 'system', '1545915835', '0');
INSERT INTO `system_log` VALUES ('3461', '1', 'admin', 'scm/setting.systemadmin/admininfo/', '个人资料', 'GET', '127.0.0.1', 'system', '1545915855', '0');
INSERT INTO `system_log` VALUES ('3462', '1', 'admin', 'scm/setting.systemadmin/{__admin_path}frame/js/ajaxfileupload.js', '未知', 'GET', '127.0.0.1', 'system', '1545915855', '0');
INSERT INTO `system_log` VALUES ('3463', '1', 'admin', 'scm/setting.systemadmin/{__admin_path}frame/js/plugins/icheck/icheck.min.js', '未知', 'GET', '127.0.0.1', 'system', '1545915855', '0');
INSERT INTO `system_log` VALUES ('3464', '1', 'admin', 'scm/setting.systemadmin/{__frame_path}css/plugins/icheck', '未知', 'GET', '127.0.0.1', 'system', '1545915856', '0');
INSERT INTO `system_log` VALUES ('3465', '1', 'admin', 'scm/setting.systemadmin/{__admin_path}plug/validate/jquery.validate.js', '未知', 'GET', '127.0.0.1', 'system', '1545915856', '0');
INSERT INTO `system_log` VALUES ('3466', '1', 'admin', 'scm/setting.systemadmin/setadmininfo/', '未知', 'POST', '127.0.0.1', 'system', '1545915875', '0');
INSERT INTO `system_log` VALUES ('3467', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545915885', '0');
INSERT INTO `system_log` VALUES ('3468', '1', 'admin', 'scm/setting.systemrole/index/', '身份管理', 'GET', '127.0.0.1', 'system', '1545915909', '0');
INSERT INTO `system_log` VALUES ('3469', '1', 'admin', 'scm/setting.systemadmin/index/', '管理员列表', 'GET', '127.0.0.1', 'system', '1545915910', '0');
INSERT INTO `system_log` VALUES ('3470', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545915910', '0');
INSERT INTO `system_log` VALUES ('3471', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545915911', '0');
INSERT INTO `system_log` VALUES ('3472', '1', 'admin', 'scm/setting.systemmenus/delete/id/378', '未知', 'GET', '127.0.0.1', 'system', '1545916079', '0');
INSERT INTO `system_log` VALUES ('3473', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545916105', '0');
INSERT INTO `system_log` VALUES ('3474', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545916106', '0');
INSERT INTO `system_log` VALUES ('3475', '1', 'admin', 'scm/setting.systemmenus/delete/id/256', '未知', 'GET', '127.0.0.1', 'system', '1545916153', '0');
INSERT INTO `system_log` VALUES ('3476', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545916161', '0');
INSERT INTO `system_log` VALUES ('3477', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545916161', '0');
INSERT INTO `system_log` VALUES ('3478', '1', 'admin', 'scm/setting.systemmenus/delete/id/21', '未知', 'GET', '127.0.0.1', 'system', '1545916166', '0');
INSERT INTO `system_log` VALUES ('3479', '1', 'admin', 'scm/setting.systemmenus/delete/id/289', '未知', 'GET', '127.0.0.1', 'system', '1545916169', '0');
INSERT INTO `system_log` VALUES ('3480', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545916520', '0');
INSERT INTO `system_log` VALUES ('3481', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545916521', '0');
INSERT INTO `system_log` VALUES ('3482', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545916769', '0');
INSERT INTO `system_log` VALUES ('3483', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545916770', '0');
INSERT INTO `system_log` VALUES ('3484', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545916772', '0');
INSERT INTO `system_log` VALUES ('3485', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545916772', '0');
INSERT INTO `system_log` VALUES ('3486', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545916774', '0');
INSERT INTO `system_log` VALUES ('3487', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545916775', '0');
INSERT INTO `system_log` VALUES ('3488', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545916783', '0');
INSERT INTO `system_log` VALUES ('3489', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545916783', '0');
INSERT INTO `system_log` VALUES ('3490', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545916786', '0');
INSERT INTO `system_log` VALUES ('3491', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545916787', '0');
INSERT INTO `system_log` VALUES ('3492', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545916790', '0');
INSERT INTO `system_log` VALUES ('3493', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545916791', '0');
INSERT INTO `system_log` VALUES ('3494', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545917173', '0');
INSERT INTO `system_log` VALUES ('3495', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545917176', '0');
INSERT INTO `system_log` VALUES ('3496', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545917177', '0');
INSERT INTO `system_log` VALUES ('3497', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545917180', '0');
INSERT INTO `system_log` VALUES ('3498', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545917332', '0');
INSERT INTO `system_log` VALUES ('3499', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545917333', '0');
INSERT INTO `system_log` VALUES ('3500', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545917982', '0');
INSERT INTO `system_log` VALUES ('3501', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545918030', '0');
INSERT INTO `system_log` VALUES ('3502', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545918031', '0');
INSERT INTO `system_log` VALUES ('3503', '1', 'admin', 'scm/setting.systemmenus/index/show/+$(this).val()+', '未知', 'GET', '127.0.0.1', 'system', '1545918047', '0');
INSERT INTO `system_log` VALUES ('3504', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545918047', '0');
INSERT INTO `system_log` VALUES ('3505', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918063', '0');
INSERT INTO `system_log` VALUES ('3506', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545918063', '0');
INSERT INTO `system_log` VALUES ('3507', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918115', '0');
INSERT INTO `system_log` VALUES ('3508', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545918115', '0');
INSERT INTO `system_log` VALUES ('3509', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918209', '0');
INSERT INTO `system_log` VALUES ('3510', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545918209', '0');
INSERT INTO `system_log` VALUES ('3511', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918400', '0');
INSERT INTO `system_log` VALUES ('3512', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545918406', '0');
INSERT INTO `system_log` VALUES ('3513', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545918410', '0');
INSERT INTO `system_log` VALUES ('3514', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545918414', '0');
INSERT INTO `system_log` VALUES ('3515', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918484', '0');
INSERT INTO `system_log` VALUES ('3516', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918540', '0');
INSERT INTO `system_log` VALUES ('3517', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918591', '0');
INSERT INTO `system_log` VALUES ('3518', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918858', '0');
INSERT INTO `system_log` VALUES ('3519', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918859', '0');
INSERT INTO `system_log` VALUES ('3520', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918860', '0');
INSERT INTO `system_log` VALUES ('3521', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918907', '0');
INSERT INTO `system_log` VALUES ('3522', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918949', '0');
INSERT INTO `system_log` VALUES ('3523', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545918955', '0');
INSERT INTO `system_log` VALUES ('3524', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545918961', '0');
INSERT INTO `system_log` VALUES ('3525', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918980', '0');
INSERT INTO `system_log` VALUES ('3526', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545918989', '0');
INSERT INTO `system_log` VALUES ('3527', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545919010', '0');
INSERT INTO `system_log` VALUES ('3528', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919011', '0');
INSERT INTO `system_log` VALUES ('3529', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919026', '0');
INSERT INTO `system_log` VALUES ('3530', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919035', '0');
INSERT INTO `system_log` VALUES ('3531', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919040', '0');
INSERT INTO `system_log` VALUES ('3532', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919044', '0');
INSERT INTO `system_log` VALUES ('3533', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919140', '0');
INSERT INTO `system_log` VALUES ('3534', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919192', '0');
INSERT INTO `system_log` VALUES ('3535', '1', 'admin', 'scm/setting.systemmenus/menujson/id/1', '未知', 'GET', '127.0.0.1', 'system', '1545919198', '0');
INSERT INTO `system_log` VALUES ('3536', '1', 'admin', 'scm/setting.systemmenus/menujson/id/1', '未知', 'GET', '127.0.0.1', 'system', '1545919385', '0');
INSERT INTO `system_log` VALUES ('3537', '1', 'admin', 'scm/setting.systemmenus/menujson/id/1', '未知', 'GET', '127.0.0.1', 'system', '1545919386', '0');
INSERT INTO `system_log` VALUES ('3538', '1', 'admin', 'scm/setting.systemmenus/menujson/id/0', '未知', 'GET', '127.0.0.1', 'system', '1545919389', '0');
INSERT INTO `system_log` VALUES ('3539', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919397', '0');
INSERT INTO `system_log` VALUES ('3540', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545919404', '0');
INSERT INTO `system_log` VALUES ('3541', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919405', '0');
INSERT INTO `system_log` VALUES ('3542', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919417', '0');
INSERT INTO `system_log` VALUES ('3543', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919432', '0');
INSERT INTO `system_log` VALUES ('3544', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919439', '0');
INSERT INTO `system_log` VALUES ('3545', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919453', '0');
INSERT INTO `system_log` VALUES ('3546', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919466', '0');
INSERT INTO `system_log` VALUES ('3547', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545919505', '0');
INSERT INTO `system_log` VALUES ('3548', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919506', '0');
INSERT INTO `system_log` VALUES ('3549', '1', 'admin', 'scm/setting.systemmenus/menujson/id/0', '未知', 'GET', '127.0.0.1', 'system', '1545919511', '0');
INSERT INTO `system_log` VALUES ('3550', '1', 'admin', 'scm/setting.systemmenus/menujson/id/1', '未知', 'GET', '127.0.0.1', 'system', '1545919517', '0');
INSERT INTO `system_log` VALUES ('3551', '1', 'admin', 'scm/setting.systemmenus/menujson/id/0', '未知', 'GET', '127.0.0.1', 'system', '1545919522', '0');
INSERT INTO `system_log` VALUES ('3552', '1', 'admin', 'scm/setting.systemmenus/menujson/id/1', '未知', 'GET', '127.0.0.1', 'system', '1545919526', '0');
INSERT INTO `system_log` VALUES ('3553', '1', 'admin', 'scm/setting.systemmenus/menujson/id/0', '未知', 'GET', '127.0.0.1', 'system', '1545919529', '0');
INSERT INTO `system_log` VALUES ('3554', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919531', '0');
INSERT INTO `system_log` VALUES ('3555', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545919685', '0');
INSERT INTO `system_log` VALUES ('3556', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919685', '0');
INSERT INTO `system_log` VALUES ('3557', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545919795', '0');
INSERT INTO `system_log` VALUES ('3558', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919795', '0');
INSERT INTO `system_log` VALUES ('3559', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545919918', '0');
INSERT INTO `system_log` VALUES ('3560', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545919918', '0');
INSERT INTO `system_log` VALUES ('3561', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545920266', '0');
INSERT INTO `system_log` VALUES ('3562', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545920267', '0');
INSERT INTO `system_log` VALUES ('3563', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545920519', '0');
INSERT INTO `system_log` VALUES ('3564', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545920552', '0');
INSERT INTO `system_log` VALUES ('3565', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545920630', '0');
INSERT INTO `system_log` VALUES ('3566', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545920635', '0');
INSERT INTO `system_log` VALUES ('3567', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545920635', '0');
INSERT INTO `system_log` VALUES ('3568', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545920714', '0');
INSERT INTO `system_log` VALUES ('3569', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545920714', '0');
INSERT INTO `system_log` VALUES ('3570', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545920823', '0');
INSERT INTO `system_log` VALUES ('3571', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545920824', '0');
INSERT INTO `system_log` VALUES ('3572', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545920965', '0');
INSERT INTO `system_log` VALUES ('3573', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545920966', '0');
INSERT INTO `system_log` VALUES ('3574', '1', 'admin', 'scm/article.article/index/', '文章管理', 'GET', '127.0.0.1', 'system', '1545920973', '0');
INSERT INTO `system_log` VALUES ('3575', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545920983', '0');
INSERT INTO `system_log` VALUES ('3576', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545920983', '0');
INSERT INTO `system_log` VALUES ('3577', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545921154', '0');
INSERT INTO `system_log` VALUES ('3578', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545921155', '0');
INSERT INTO `system_log` VALUES ('3579', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545921244', '0');
INSERT INTO `system_log` VALUES ('3580', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545921244', '0');
INSERT INTO `system_log` VALUES ('3581', '1', 'admin', 'scm/setting.systemmenus/create/cid/23', '未知', 'GET', '127.0.0.1', 'system', '1545921273', '0');
INSERT INTO `system_log` VALUES ('3582', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545921609', '0');
INSERT INTO `system_log` VALUES ('3583', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545922065', '0');
INSERT INTO `system_log` VALUES ('3584', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545922065', '0');
INSERT INTO `system_log` VALUES ('3585', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545922068', '0');
INSERT INTO `system_log` VALUES ('3586', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545922077', '0');
INSERT INTO `system_log` VALUES ('3587', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545922094', '0');
INSERT INTO `system_log` VALUES ('3588', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545922106', '0');
INSERT INTO `system_log` VALUES ('3589', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545922143', '0');
INSERT INTO `system_log` VALUES ('3590', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545922143', '0');
INSERT INTO `system_log` VALUES ('3591', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545922145', '0');
INSERT INTO `system_log` VALUES ('3592', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545922147', '0');
INSERT INTO `system_log` VALUES ('3593', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545922151', '0');
INSERT INTO `system_log` VALUES ('3594', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545922198', '0');
INSERT INTO `system_log` VALUES ('3595', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545922202', '0');
INSERT INTO `system_log` VALUES ('3596', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545922226', '0');
INSERT INTO `system_log` VALUES ('3597', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545922226', '0');
INSERT INTO `system_log` VALUES ('3598', '1', 'admin', 'scm/setting.systemmenus/create/cid/0', '未知', 'GET', '127.0.0.1', 'system', '1545922233', '0');
INSERT INTO `system_log` VALUES ('3599', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545922334', '0');
INSERT INTO `system_log` VALUES ('3600', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545922335', '0');
INSERT INTO `system_log` VALUES ('3601', '1', 'admin', 'scm/setting.systemmenus/delete/id/23', '未知', 'GET', '127.0.0.1', 'system', '1545922340', '0');
INSERT INTO `system_log` VALUES ('3602', '1', 'admin', 'scm/setting.systemmenus/delete/id/285', '未知', 'GET', '127.0.0.1', 'system', '1545922344', '0');
INSERT INTO `system_log` VALUES ('3603', '1', 'admin', 'scm/setting.systemmenus/delete/id/151', '未知', 'GET', '127.0.0.1', 'system', '1545922348', '0');
INSERT INTO `system_log` VALUES ('3604', '1', 'admin', 'scm/setting.systemmenus/delete/id/337', '未知', 'GET', '127.0.0.1', 'system', '1545922350', '0');
INSERT INTO `system_log` VALUES ('3605', '1', 'admin', 'scm/setting.systemmenus/delete/id/286', '未知', 'GET', '127.0.0.1', 'system', '1545922352', '0');
INSERT INTO `system_log` VALUES ('3606', '1', 'admin', 'scm/setting.systemmenus/delete/id/287', '未知', 'GET', '127.0.0.1', 'system', '1545922353', '0');
INSERT INTO `system_log` VALUES ('3607', '1', 'admin', 'scm/setting.systemmenus/delete/id/288', '未知', 'GET', '127.0.0.1', 'system', '1545922355', '0');
INSERT INTO `system_log` VALUES ('3608', '1', 'admin', 'scm/setting.systemmenus/delete/id/269', '未知', 'GET', '127.0.0.1', 'system', '1545922357', '0');
INSERT INTO `system_log` VALUES ('3609', '1', 'admin', 'scm/setting.systemmenus/delete/id/11', '未知', 'GET', '127.0.0.1', 'system', '1545922359', '0');
INSERT INTO `system_log` VALUES ('3610', '1', 'admin', 'scm/setting.systemmenus/delete/id/80', '未知', 'GET', '127.0.0.1', 'system', '1545922361', '0');
INSERT INTO `system_log` VALUES ('3611', '1', 'admin', 'scm/setting.systemmenus/delete/id/378', '未知', 'GET', '127.0.0.1', 'system', '1545922392', '0');
INSERT INTO `system_log` VALUES ('3612', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '权限规则', 'GET', '127.0.0.1', 'system', '1545922522', '0');
INSERT INTO `system_log` VALUES ('3613', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545922522', '0');
INSERT INTO `system_log` VALUES ('3614', '1', 'admin', 'scm/setting.systemadmin/admininfo/', '个人资料', 'GET', '127.0.0.1', 'system', '1545922593', '0');
INSERT INTO `system_log` VALUES ('3615', '1', 'admin', 'scm/setting.systemadmin/{__frame_path}css/plugins/icheck', '未知', 'GET', '127.0.0.1', 'system', '1545922594', '0');
INSERT INTO `system_log` VALUES ('3616', '1', 'admin', 'scm/setting.systemadmin/{__admin_path}frame/js/ajaxfileupload.js', '未知', 'GET', '127.0.0.1', 'system', '1545922594', '0');
INSERT INTO `system_log` VALUES ('3617', '1', 'admin', 'scm/setting.systemadmin/{__admin_path}plug/validate/jquery.validate.js', '未知', 'GET', '127.0.0.1', 'system', '1545922594', '0');
INSERT INTO `system_log` VALUES ('3618', '1', 'admin', 'scm/setting.systemadmin/{__admin_path}frame/js/plugins/icheck/icheck.min.js', '未知', 'GET', '127.0.0.1', 'system', '1545922594', '0');
INSERT INTO `system_log` VALUES ('3619', '1', 'admin', 'scm/setting.systemmenus/edit/id/2', '未知', 'GET', '127.0.0.1', 'system', '1545922628', '0');
INSERT INTO `system_log` VALUES ('3620', '1', 'admin', 'scm/setting.systemmenus/update/id/2', '未知', 'POST', '127.0.0.1', 'system', '1545922647', '0');
INSERT INTO `system_log` VALUES ('3621', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '菜单管理', 'GET', '127.0.0.1', 'system', '1545922648', '0');
INSERT INTO `system_log` VALUES ('3622', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545922648', '0');
INSERT INTO `system_log` VALUES ('3623', '1', 'admin', 'scm/setting.systemmenus/index/cate/12', '菜单管理', 'GET', '127.0.0.1', 'system', '1545922658', '0');
INSERT INTO `system_log` VALUES ('3624', '1', 'admin', 'scm/setting.systemmenus/menujson/', '未知', 'GET', '127.0.0.1', 'system', '1545922658', '0');

-- ----------------------------
-- Table structure for system_menus
-- ----------------------------
DROP TABLE IF EXISTS `system_menus`;
CREATE TABLE `system_menus` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `pid` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT '父级id',
  `icon` varchar(16) NOT NULL COMMENT '图标',
  `menu_name` varchar(32) NOT NULL DEFAULT '' COMMENT '按钮名',
  `module` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '模块名',
  `controller` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制器',
  `action` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '方法名',
  `params` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '[]' COMMENT '参数',
  `sort` tinyint(3) NOT NULL DEFAULT 1 COMMENT '排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '是否显示',
  `access` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '子管理员是否可用',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE,
  KEY `access` (`access`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=380 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of system_menus
-- ----------------------------
INSERT INTO `system_menus` VALUES ('1', '289', '', '系统设置', 'scm', 'setting.systemConfig', 'index', '[]', '90', '1', '1');
INSERT INTO `system_menus` VALUES ('2', '153', '', '菜单管理', 'scm', 'setting.systemMenus', 'index', '{\"cate\":\"12\"}', '7', '1', '1');
INSERT INTO `system_menus` VALUES ('4', '153', '', '管理员列表', 'scm', 'setting.systemAdmin', 'index', '[]', '9', '1', '1');
INSERT INTO `system_menus` VALUES ('6', '1', '', '系统配置', 'scm', 'setting.systemConfig', 'index', '{\"tab_id\":\"1\"}', '1', '1', '1');
INSERT INTO `system_menus` VALUES ('7', '1', '', '配置分类', 'scm', 'setting.systemConfigTab', 'index', '[]', '1', '1', '1');
INSERT INTO `system_menus` VALUES ('8', '153', '', '身份管理', 'scm', 'setting.systemRole', 'index', '[]', '10', '1', '1');
INSERT INTO `system_menus` VALUES ('9', '1', '', '组合数据', 'scm', 'setting.systemGroup', 'index', '[]', '1', '1', '1');
INSERT INTO `system_menus` VALUES ('21', '0', 'magic', '维护', 'scm', 'system.system', '', '[]', '1', '1', '1');
INSERT INTO `system_menus` VALUES ('46', '7', '', '配置分类附加权限', 'scm', 'setting.systemConfigTab', '', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('47', '46', '', '添加配置分类', 'scm', 'setting.systemConfigTab', 'create', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('48', '46', '', '添加配置', 'scm', 'setting.systemConfig', 'create', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('49', '46', '', '编辑配置分类', 'scm', 'setting.systemConfigTab', 'edit', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('50', '46', '', '删除配置分类', 'scm', 'setting.systemConfigTab', 'delete', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('51', '46', '', '查看子字段', 'scm', 'system.systemConfigTab', 'sonConfigTab', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('52', '9', '', '组合数据附加权限', 'scm', 'system.systemGroup', '', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('53', '52', '', '添加数据', 'scm', 'system.systemGroupData', 'create', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('54', '52', '', '编辑数据', 'scm', 'system.systemGroupData', 'edit', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('55', '52', '', '删除数据', 'scm', 'system.systemGroupData', 'delete', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('56', '52', '', '数据列表', 'scm', 'system.systemGroupData', 'index', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('57', '52', '', '添加数据组', 'scm', 'system.systemGroup', 'create', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('58', '52', '', '删除数据组', 'scm', 'system.systemGroup', 'delete', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('59', '4', '', '管理员列表附加权限', 'scm', 'system.systemAdmin', '', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('60', '59', '', '添加管理员', 'scm', 'system.systemAdmin', 'create', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('61', '59', '', '编辑管理员', 'scm', 'system.systemAdmin', 'edit', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('62', '59', '', '删除管理员', 'scm', 'system.systemAdmin', 'delete', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('63', '8', '', '身份管理附加权限', 'scm', 'system.systemRole', '', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('64', '63', '', '添加身份', 'scm', 'system.systemRole', 'create', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('65', '63', '', '修改身份', 'scm', 'system.systemRole', 'edit', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('66', '63', '', '删除身份', 'scm', 'system.systemRole', 'delete', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('67', '8', '', '身份管理展示页', 'scm', 'system.systemRole', 'index', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('68', '4', '', '管理员列表展示页', 'scm', 'system.systemAdmin', 'index', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('69', '7', '', '配置分类展示页', 'scm', 'setting.systemConfigTab', 'index', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('70', '9', '', '组合数据展示页', 'scm', 'system.systemGroup', 'index', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('74', '2', '', '菜单管理附加权限', 'scm', 'system.systemMenus', '', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('75', '74', '', '添加菜单', 'scm', 'system.systemMenus', 'create', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('76', '74', '', '编辑菜单', 'scm', 'system.systemMenus', 'edit', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('77', '74', '', '删除菜单', 'scm', 'system.systemMenus', 'delete', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('78', '2', '', '菜单管理展示页', 'scm', 'system.systemMenus', 'index', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('100', '74', '', '添加提交菜单', 'scm', 'system.systemMenus', 'save', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('101', '74', '', '编辑提交菜单', 'scm', 'system.systemMenus', 'update', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('102', '59', '', '提交添加管理员', 'scm', 'system.systemAdmin', 'save', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('103', '59', '', '提交修改管理员', 'scm', 'system.systemAdmin', 'update', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('104', '63', '', '提交添加身份', 'scm', 'system.systemRole', 'save', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('105', '63', '', '提交修改身份', 'scm', 'system.systemRole', 'update', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('106', '46', '', '提交添加配置分类', 'scm', 'setting.systemConfigTab', 'save', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('107', '46', '', '提交修改配置分类', 'scm', 'setting.systemConfigTab', 'update', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('108', '46', '', '提交添加配置列表', 'scm', 'setting.systemConfig', 'save', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('109', '52', '', '提交添加数据组', 'scm', 'system.systemGroup', 'save', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('110', '52', '', '提交修改数据组', 'scm', 'system.systemGroup', 'update', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('111', '52', '', '提交添加数据', 'scm', 'system.systemGroupData', 'save', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('112', '52', '', '提交修改数据', 'scm', 'system.systemGroupData', 'update', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('117', '6', '', '配置列表附加权限', 'scm', 'setting.systemConfig', '', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('118', '6', '', '配置列表展示页', 'scm', 'setting.systemConfig', 'index', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('119', '117', '', '提交保存配置列表', 'scm', 'setting.systemConfig', 'save_basics', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('130', '21', '', '系统日志', 'scm', 'system.systemLog', 'index', '[]', '5', '1', '1');
INSERT INTO `system_menus` VALUES ('131', '130', '', '管理员操作记录展示页', 'scm', 'system.systemLog', 'index', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('144', '117', '', '获取配置列表上传文件的名称', 'scm', 'setting.systemConfig', 'getimagename', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('145', '117', '', '配置列表上传文件', 'scm', 'setting.systemConfig', 'view_upload', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('153', '289', '', '管理权限', 'scm', 'setting.systemAdmin', '', '[]', '100', '1', '1');
INSERT INTO `system_menus` VALUES ('173', '21', '', '文件校验', 'scm', 'system.system_file', 'index', '[]', '1', '1', '1');
INSERT INTO `system_menus` VALUES ('237', '21', '', '刷新缓存', 'scm', 'system.clear', 'index', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('247', '153', '', '个人资料', 'scm', 'setting.systemAdmin', 'admininfo', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('248', '247', '', '个人资料附加权限', 'scm', 'system.systemAdmin', '', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('249', '248', '', '个人资料提交保存', 'scm', 'system.systemAdmin', 'setAdminInfo', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('250', '247', '', '个人资料展示页', 'scm', 'system.systemAdmin', 'admininfo', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('252', '21', '', '在线更新', 'scm', 'system.system_upgradeclient', 'index', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('253', '259', '', '添加更新包', 'scm', 'server.server_upgrade', 'add_upgrade', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('255', '1', '', '后台通知', 'scm', 'setting.systemNotice', 'index', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('256', '0', 'cloud', '服务器端', 'scm', 'upgrade', 'index', '[]', '-100', '0', '1');
INSERT INTO `system_menus` VALUES ('257', '258', '', 'IP白名单', 'scm', 'server.server_upgrade', 'ip_hteb_list', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('258', '256', '', '站点管理', 'scm', 'server.server_upgrade', 'index', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('259', '256', '', '版本管理', 'scm', 'server.server_upgrade', 'versionlist', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('260', '256', '', '升级日志', 'scm', 'server.server_upgrade', 'upgrade_log', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('276', '21', '', '附件管理', 'scm', 'widget.images', 'index', '[]', '0', '0', '1');
INSERT INTO `system_menus` VALUES ('278', '21', '', '清除数据', 'scm', 'system.system_cleardata', 'index', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('363', '362', '', '上传图片', 'scm', 'widget.images', 'upload', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('364', '362', '', '删除图片', 'scm', 'widget.images', 'delete', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('362', '276', '', '附加权限', '', '', '', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('289', '0', 'gear', '设置', 'scm', '', '', '[]', '90', '1', '1');
INSERT INTO `system_menus` VALUES ('365', '362', '', '附件管理', 'scm', 'widget.images', 'index', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('377', '21', '', '数据库维护', 'scm', 'system.system_databackup', 'index', '[]', '0', '1', '1');
INSERT INTO `system_menus` VALUES ('379', '21', '', '文件管理', 'scm', 'system.system_file', 'opendir', '[]', '0', '1', '1');

-- ----------------------------
-- Table structure for system_role
-- ----------------------------
DROP TABLE IF EXISTS `system_role`;
CREATE TABLE `system_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '身份管理id',
  `role_name` varchar(32) NOT NULL COMMENT '身份管理名称',
  `rules` text NOT NULL COMMENT '身份管理权限(menus_id)',
  `level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='身份管理表';

-- ----------------------------
-- Records of system_role
-- ----------------------------
INSERT INTO `system_role` VALUES ('1', '超级管理员', '85,86,11,174,17,127,128,126,80,32,71,33,36,35,34,113,114,19,73,42,43,44,45,115,116,18,72,38,41,40,39,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,240,238,148,150,149,229,230,234,233,232,231,235,175,210,223,222,215,214,213,212,211,209,170,225,228,227,226,224,160,162,161,26,190,191,192,193,194,206,195,205,204,203,202,201,200,199,198,197,207,208,196,25,142,143,24,147,146,21,237,130,131,22,136,135,139,138,137,140,141,1,173,5,9,70,52,58,57,56,55,54,53,112,111,110,109,7,69,46,51,50,49,48,47,108,107,106,6,118,117,145,144,119,2,74,75,76,101,100,77,78,153,4,59,62,61,60,103,102,68,8,63,64,65,66,105,104,67,151,177,176,239,179,217,219,218,216,82,129,132,133,134,236,84', '0', '1');
INSERT INTO `system_role` VALUES ('15', '子管理员', '11,174,17,127,128,126,80,32,33,36,35,34,113,114,71,19,42,45,44,43,116,115,73,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,241,240,238,148,149,230,234,233,232,231,229,150,235,175,210,212,211,213,214,223,222,215,209,170,225,228,227,226,224,26,191,198,192,202,193,203,201,200,194,199,196,197,195,208,207,206,205,204,190,25,142,143,24,146,147,151,177,176,239,179,217,219,218,216,82,236,84,133,134,129,132,18,72,38,39,40,41,153,8,67,63,66,65,64,105,104,4,59,60,61,62,103,102,68,247,250,243,246,245,244,1,2,78,74,101,9,52,58,57,56,55,54,53,111,110,109,112,70,5,7,69,46,51,50,49,48,47,108,107,106,6,118,117,144,145,119,21,173,237,130,131,0', '2', '1');
INSERT INTO `system_role` VALUES ('10', '客服', '23,241,240,238,148,150,149,229,230,231,234,233,232,235,26,191,197,196,195,194,193,192,198,207,206,205,204,203,202,201,200,208,199,190,175,209,210,223,222,215,214,213,212,211,170,225,228,227,226,224,25,142,143,24,146,147,151,177,176,239,179,217,219,218,216,82,133,134,129,132,236,84', '1', '1');
INSERT INTO `system_role` VALUES ('14', '演示账号', '146,142,26,191,195,194,193,192,196,197,198,208,207,206,205,204,203,202,201,200,199,190,290,170,224,225,228,227,226,177,176,82,133,134,236,84,129,132,337,371,353,149,229,230,232,233,234,231,235,150,273,241,238,306,239,179,216,217,218,219,245,244,246,269,376,375,373,270,372,17,126,127,128,174,354,12,98,99,97,30,89,92,91,90,123,124,93,31,95,96,94,37,175,210,215,214,222,223,213,212,211,209,19,73,42,45,44,43,116,115,8,67,63,104,66,65,64,105,4,68,59,103,102,62,61,60,78,101,250,70,56,112,111,110,109,7,69,46,47,48,49,51,50,108,107,106,6,118,117,145,144,119,80,284,71,33,36,35,34,114,113,283,72,38,41,40,39,173,237,130,131,365,24,25,285,151,0,148,286,272,287,307,293,294,295,360,11,153,2,74,247,9,52,1,21,362', '1', '1');
INSERT INTO `system_role` VALUES ('16', '三级身份', '11,174,17,127,128,126,80,32,33,36,35,34,113,114,71,19,42,45,44,43,116,115,73,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,148,149,230,234,233,232,231,229,150,235,175,210,212,211,213,214,223,222,215,209,170,225,228,227,226,224,26,191,198,192,202,193,203,201,200,194,199,196,197,195,208,207,206,205,204,190,25,142,143,24,146,147,241,240,238,151,179,217,219,218,216,177,176,239,82,133,134,129,132,236,84,18,38,39,40,41,72,153,8,67,63,66,65,64,105,104,4,59,60,61,62,103,102,68,247,250,243,246,245,244,9,52,58,57,56,55,54,53,111,110,109,112,70,5,7,69,46,51,50,49,48,47,108,107,106,6,118,117,144,145,119,21,130,131,173,237,0,1', '3', '1');
INSERT INTO `system_role` VALUES ('17', 'boss', '11,174,17,126,127,128,19,42,43,44,45,115,116,73,79,31,37,94,95,96,30,93,89,123,124,90,91,92,12,97,98,99,23,241,240,238,148,149,230,234,233,232,231,229,150,235,170,225,228,227,226,224,175,210,212,211,213,214,223,222,215,209,25,143,142,24,147,146,26,191,197,196,195,194,202,198,192,200,203,201,199,193,208,207,206,205,204,190,151,176,177,239,179,217,219,218,216,80,32,71,33,34,35,36,113,114,18,72,38,39,40,41,0', '2', '1');
INSERT INTO `system_role` VALUES ('18', '管理员', '23,24,323,328,324,325,326,327,147,261,262,266,265,264,263,146,25,143,370,369,142,285,26,191,194,193,192,195,196,208,207,206,205,204,203,202,201,200,199,198,197,190,329,335,334,333,290,170,225,226,227,228,224,151,177,176,82,133,134,236,84,129,132,336,337,371,339,353,286,148,149,229,230,234,231,232,233,235,150,352,349,351,350,273,241,272,238,271,254,366,368,367,287,306,239,307,179,216,217,218,219,312,308,313,288,293,251,245,340,341,296,318,317,316,315,314,294,244,302,301,300,295,246,305,304,303,297,321,320,319,355,359,358,357,356,354,12,98,99,97,30,89,92,91,90,123,124,93,31,95,96,94,37,175,210,212,213,214,215,222,223,211,209,19,73,42,45,44,43,116,115,283,72,38,41,40,39,284,71,33,36,35,34,114,113,8,67,63,104,66,65,64,105,68,103,102,61,2,78,74,77,76,75,101,100,247,248,249,250,1,9,70,52,58,57,56,55,54,53,112,111,110,109,7,69,46,47,48,49,51,50,108,107,106,6,118,117,145,144,119,255,269,270,21,130,131,173,252,237,278,276,362,365,364,363,258,257,260,0,11,80,153,4,59,289,256', '1', '1');
INSERT INTO `system_role` VALUES ('20', '操作人员', '23,24,146,147,261,262,266,265,264,263,25,143,370,369,142,285,26,191,208,207,205,204,203,202,201,200,199,206,198,197,196,195,194,193,192,190,329,335,334,290,170,224,225,228,227,226,0', '1', '1');
