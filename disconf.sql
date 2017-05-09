/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : disconf

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-05-09 16:51:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `app_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一的ID（没有啥意义，主键，自增长而已）',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'APP名(一般是产品线+服务名)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '介绍',
  `create_time` varchar(14) NOT NULL DEFAULT '99991231235959' COMMENT '生成时间',
  `update_time` varchar(14) NOT NULL DEFAULT '99991231235959' COMMENT '修改时',
  `emails` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱列表逗号分隔',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='app';

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('2', 'disconf_demo', 'disconf demo', '99991231235959', '99991231235959', '');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一的ID（没有啥意义，主键，自增长而已）',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '配置文件/配置项',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：1是正常 0是删除',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '配置文件名/配置项KeY名',
  `value` text NOT NULL COMMENT '0 配置文件：文件的内容，1 配置项：配置值',
  `app_id` bigint(20) NOT NULL COMMENT 'appid',
  `version` varchar(255) NOT NULL DEFAULT 'DEFAULT_VERSION' COMMENT '版本',
  `env_id` bigint(20) NOT NULL COMMENT 'envid',
  `create_time` varchar(14) NOT NULL DEFAULT '99991231235959' COMMENT '生成时间',
  `update_time` varchar(14) NOT NULL DEFAULT '99991231235959' COMMENT '修改时间',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COMMENT='配置';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('4', '0', '1', 'coefficients.properties', 'coe.baiFaCoe=1.3\ncoe.yuErBaoCoe=1.3\n', '2', '1_0_0_0', '1', '99991231235959', '20141205154137');
INSERT INTO `config` VALUES ('5', '1', '1', 'moneyInvest', '10000', '2', '1_0_0_0', '1', '99991231235959', '20140902183514');
INSERT INTO `config` VALUES ('6', '0', '1', 'remote.properties', 'remoteHost=127.0.0.1\r\nremotePort=8081', '2', '1_0_0_0', '1', '20140729174707', '20140804233309');
INSERT INTO `config` VALUES ('7', '1', '1', 'discountRate', '0.5', '2', '1_0_0_0', '1', '20140801142833', '20140905130141');
INSERT INTO `config` VALUES ('12', '0', '1', 'redis.properties', 'redis.host=127.0.0.1\nredis.port=6379', '2', '1_0_0_0', '1', '20140811172327', '20141011154244');
INSERT INTO `config` VALUES ('16', '0', '1', 'static.properties', 'staticVar=147', '2', '1_0_0_0', '1', '20140814202654', '20140905145616');
INSERT INTO `config` VALUES ('17', '1', '1', 'staticItem', '30', '2', '1_0_0_0', '1', '20140814210709', '20140814211054');
INSERT INTO `config` VALUES ('29', '0', '1', 'empty.properties', 'redis.host=127.0.0.1\r\nredis.port=8310', '2', '1_0_0_0', '1', '20140909164001', '20140909164125');
INSERT INTO `config` VALUES ('48', '0', '1', 'myserver.properties', 'server=127.0.0.1:16600,127.0.0.1:16602,127.0.0.1:16603\nretry=5\n', '2', '1_0_0_0', '1', '20140911223117', '20141117153116');
INSERT INTO `config` VALUES ('119', '0', '1', 'myserver_slave.properties', '#online\r\nserver=127.0.0.1:16700,127.0.0.1:16700,127.0.0.1:16700,127.0.0.1:16700\r\nretry=3', '2', '1_0_0_0', '1', '20141103163302', '20141103163302');
INSERT INTO `config` VALUES ('122', '0', '1', 'testXml.xml', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<routes>\n    <route sourceHost=\"*\" sourcePort=\"*\"\n        proxyHost=\"127.0.0.1\" proxyPort=\"8081\">\n        <rule>\n            <from method=\"get\">/tradeMap</from>\n            <to method=\"get\">/tradeMap</to>\n        </rule>\n    </route>\n</routes>', '2', '1_0_0_0', '1', '20141103202829', '20141110193440');
INSERT INTO `config` VALUES ('143', '0', '1', 'testXml2.xml', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<routes>\n    <route sourceHost=\"*\" sourcePort=\"*\"\n        proxyHost=\"127.0.0.1\" proxyPort=\"8081\">\n        <rule>\n            <from method=\"get\">/tradeMap</from>\n            <to method=\"get\">/tradeMap</to>\n        </rule>\n    </route>\n</routes>', '2', '1_0_0_0', '1', '20141110193605', '20141110193605');
INSERT INTO `config` VALUES ('146', '0', '1', 'code.properties', 'syserror.paramtype=\\u8bf7\\u6c42\\u53c2\\u6570\\u89e3\\u6790\\u9519\" + \"\\u8bef', '2', '1_0_0_0', '1', '20150107115835', '20150107115835');
INSERT INTO `config` VALUES ('147', '0', '1', 'testJson.json', '{\"message\": {}, \"success\": \"true\"}', '2', '1_0_0_0', '1', '20150121150626', '20150121153650');
INSERT INTO `config` VALUES ('148', '0', '1', 'autoconfig.properties', 'auto=bbdxxjdccd', '2', '1_0_0_0', '1', '20150320130619', '20150320224956');
INSERT INTO `config` VALUES ('149', '0', '1', 'autoconfig2.properties', 'auto2=cd', '2', '1_0_0_0', '1', '20150320130625', '20150320203808');

-- ----------------------------
-- Table structure for config_history
-- ----------------------------
DROP TABLE IF EXISTS `config_history`;
CREATE TABLE `config_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `config_id` bigint(20) NOT NULL,
  `old_value` longtext NOT NULL,
  `new_value` longtext NOT NULL,
  `create_time` varchar(14) NOT NULL DEFAULT '99991231235959',
  `update_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_history
-- ----------------------------

-- ----------------------------
-- Table structure for env
-- ----------------------------
DROP TABLE IF EXISTS `env`;
CREATE TABLE `env` (
  `env_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '环境ID（主键，自增长）',
  `name` varchar(255) NOT NULL DEFAULT 'DEFAULT_ENV' COMMENT '环境名字',
  PRIMARY KEY (`env_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='rd/qa/local可以自定义，默认为 DEFAULT_ENV';

-- ----------------------------
-- Records of env
-- ----------------------------
INSERT INTO `env` VALUES ('1', 'rd');
INSERT INTO `env` VALUES ('2', 'qa');
INSERT INTO `env` VALUES ('3', 'local');
INSERT INTO `env` VALUES ('4', 'online');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_name` varchar(50) NOT NULL DEFAULT '' COMMENT '角色名',
  `create_time` varchar(14) NOT NULL DEFAULT '99991231235959' COMMENT '创建时间',
  `create_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_time` varchar(14) NOT NULL DEFAULT '99991231235959' COMMENT '更新时间',
  `update_by` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新人',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '普通人', '99991231235959', '2', '99991231235959', '2');
INSERT INTO `role` VALUES ('2', '管理员', '99991231235959', '2', '99991231235959', '2');
INSERT INTO `role` VALUES ('3', '测试管理员', '99991231235959', '2', '99991231235959', '2');

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `role_res_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'role-resource id',
  `role_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户角色id',
  `url_pattern` varchar(200) NOT NULL DEFAULT '' COMMENT 'controller_requestMapping_value + method_requestMapping_value',
  `url_description` varchar(200) NOT NULL DEFAULT '' COMMENT 'url功能描述',
  `method_mask` varchar(4) NOT NULL DEFAULT '' COMMENT 'GET, PUT, POST, DELETE, 1: accessible',
  `update_time` varchar(14) NOT NULL DEFAULT '99991231235959' COMMENT '更新时间',
  PRIMARY KEY (`role_res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='用户角色_url访问权限表';

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('1', '1', '/api/app/list', 'app列表', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('2', '2', '/api/app/list', 'app列表', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('3', '3', '/api/app/list', 'app列表', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('4', '1', '/api/app', '生成一个app', '0000', '99991231235959');
INSERT INTO `role_resource` VALUES ('5', '2', '/api/app', '生成一个app', '0010', '99991231235959');
INSERT INTO `role_resource` VALUES ('6', '3', '/api/app', '生成一个app', '0000', '99991231235959');
INSERT INTO `role_resource` VALUES ('7', '1', '/api/env/list', 'env-list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('8', '2', '/api/env/list', 'env-list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('9', '3', '/api/env/list', 'env-list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('10', '1', '/api/account/session', '会话', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('11', '2', '/api/account/session', '会话', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('12', '3', '/api/account/session', '会话', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('13', '1', '/api/account/signin', '登录', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('14', '2', '/api/account/signin', '登录', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('15', '3', '/api/account/signin', '登录', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('16', '1', '/api/account/signout', '登出', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('17', '2', '/api/account/signout', '登出', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('18', '3', '/api/account/signout', '登出', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('19', '1', '/api/config/item', '获取配置项', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('20', '2', '/api/config/item', '获取配置项', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('21', '3', '/api/config/item', '获取配置项', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('22', '1', '/api/config/file', '获取配置文件', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('23', '2', '/api/config/file', '获取配置文件', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('24', '3', '/api/config/file', '获取配置文件', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('25', '1', '/api/zoo/hosts', 'zoo', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('26', '2', '/api/zoo/hosts', 'zoo', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('27', '3', '/api/zoo/hosts', 'zoo', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('28', '1', '/api/zoo/prefix', 'zoo', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('29', '2', '/api/zoo/prefix', 'zoo', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('30', '3', '/api/zoo/prefix', 'zoo', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('31', '1', '/api/zoo/zkdeploy', 'zoo', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('32', '2', '/api/zoo/zkdeploy', 'zoo', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('33', '3', '/api/zoo/zkdeploy', 'zoo', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('34', '1', '/api/web/config/item', '创建item-config', '0010', '99991231235959');
INSERT INTO `role_resource` VALUES ('35', '2', '/api/web/config/item', '创建item-config', '0010', '99991231235959');
INSERT INTO `role_resource` VALUES ('36', '3', '/api/web/config/item', '创建item-config', '0000', '99991231235959');
INSERT INTO `role_resource` VALUES ('37', '1', '/api/web/config/file', '创建file-config', '0010', '99991231235959');
INSERT INTO `role_resource` VALUES ('38', '2', '/api/web/config/file', '创建file-config', '0010', '99991231235959');
INSERT INTO `role_resource` VALUES ('39', '3', '/api/web/config/file', '创建file-config', '0000', '99991231235959');
INSERT INTO `role_resource` VALUES ('40', '1', '/api/web/config/filetext', '创建file-config', '0010', '99991231235959');
INSERT INTO `role_resource` VALUES ('41', '2', '/api/web/config/filetext', '创建file-config', '0010', '99991231235959');
INSERT INTO `role_resource` VALUES ('42', '3', '/api/web/config/filetext', '创建file-config', '0000', '99991231235959');
INSERT INTO `role_resource` VALUES ('43', '1', '/api/web/config/versionlist', '版本list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('44', '2', '/api/web/config/versionlist', '版本list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('45', '3', '/api/web/config/versionlist', '版本list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('46', '1', '/api/web/config/list', 'config-list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('47', '2', '/api/web/config/list', 'config-list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('48', '3', '/api/web/config/list', 'config-list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('49', '1', '/api/web/config/simple/list', 'config-list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('50', '2', '/api/web/config/simple/list', 'config-list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('51', '3', '/api/web/config/simple/list', 'config-list', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('52', '1', '/api/web/config/{configId}', 'get/post', '1001', '99991231235959');
INSERT INTO `role_resource` VALUES ('53', '2', '/api/web/config/{configId}', 'get/post', '1001', '99991231235959');
INSERT INTO `role_resource` VALUES ('54', '3', '/api/web/config/{configId}', 'get/post', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('55', '1', '/api/web/config/zk/{configId}', 'get-zk', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('56', '2', '/api/web/config/zk/{configId}', 'get-zk', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('57', '3', '/api/web/config/zk/{configId}', 'get-zk', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('58', '1', '/api/web/config/download/{configId}', 'download', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('59', '2', '/api/web/config/download/{configId}', 'download', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('60', '3', '/api/web/config/download/{configId}', 'download', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('61', '1', '/api/web/config/downloadfilebatch', 'download', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('62', '2', '/api/web/config/downloadfilebatch', 'download', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('63', '3', '/api/web/config/downloadfilebatch', 'download', '1000', '99991231235959');
INSERT INTO `role_resource` VALUES ('64', '1', '/api/web/config/item/{configId}', 'update', '0100', '99991231235959');
INSERT INTO `role_resource` VALUES ('65', '2', '/api/web/config/item/{configId}', 'update', '0100', '99991231235959');
INSERT INTO `role_resource` VALUES ('66', '3', '/api/web/config/item/{configId}', 'update', '0000', '99991231235959');
INSERT INTO `role_resource` VALUES ('67', '1', '/api/web/config/file/{configId}', 'update/post', '0010', '99991231235959');
INSERT INTO `role_resource` VALUES ('68', '2', '/api/web/config/file/{configId}', 'update/post', '0010', '99991231235959');
INSERT INTO `role_resource` VALUES ('69', '3', '/api/web/config/file/{configId}', 'update/post', '0000', '99991231235959');
INSERT INTO `role_resource` VALUES ('70', '1', '/api/web/config/filetext/{configId}', 'update', '0100', '99991231235959');
INSERT INTO `role_resource` VALUES ('71', '2', '/api/web/config/filetext/{configId}', 'update', '0100', '99991231235959');
INSERT INTO `role_resource` VALUES ('72', '3', '/api/web/config/filetext/{configId}', 'update', '0000', '99991231235959');
INSERT INTO `role_resource` VALUES ('73', '1', '/api/account/password', '修改密码', '0100', '99991231235959');
INSERT INTO `role_resource` VALUES ('74', '2', '/api/account/password', '修改密码', '0100', '99991231235959');
INSERT INTO `role_resource` VALUES ('75', '3', '/api/account/password', '修改密码', '0000', '99991231235959');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `token` varchar(255) NOT NULL COMMENT 'token',
  `ownapps` varchar(255) NOT NULL DEFAULT '' COMMENT '能操作的APPID,逗号分隔',
  `role_id` bigint(20) NOT NULL DEFAULT '1' COMMENT '角色ID',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'testUser1', '5eec8499597a115c88e0a9580ae1562ab85d0b1a', 'b9070d385a13357efa09e50e080607c2b299241b', '2', '1');
INSERT INTO `user` VALUES ('2', 'testUser2', '71e9dc667eefa5a3a4840cb4f1ce22bc246f22f0', 'b169dec42f61ec6cbad88d70e7c4c6b89630ccfb', '2', '1');
INSERT INTO `user` VALUES ('3', 'testUser3', 'e2cdc4a9195030543e38e19a923f075d54471cc4', 'a1a20b0e03a5191c530cbfc064eda3c16254df64', '2', '1');
INSERT INTO `user` VALUES ('4', 'testUser4', '5cef2d7e4ada5a615f03e12b569d80aedfb056fc', '007b07fccbc1c82c987f7b8e4651e85cca01cf2b', '2', '1');
INSERT INTO `user` VALUES ('5', 'testUser5', 'f996eeaa224abe0037d99adbce73c315e13238f9', 'c9dfdcb50a3d84f2b6a4771dcb7c2ceb19e7d281', '2', '1');
INSERT INTO `user` VALUES ('6', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'f28d164d23291c732f64134e6b7d92be3ff8b1b3', '', '2');
INSERT INTO `user` VALUES ('7', 'admin_read', 'b76f3e20d1c8d0bc17d40158e44097d5eeee8640', '2022ab9c2754d62f9ddba5fded91e4238247ebaf', '2', '3');
INSERT INTO `user` VALUES ('8', 'mobiledsp', '0855b44a368e44dc6e6825532073b29a368584af', '132069654193f802203d1c6c86e753ecede698f6', '4', '1');
