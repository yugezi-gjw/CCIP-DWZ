/*
Navicat MySQL Data Transfer

Source Server         : campus112.126.90.223
Source Server Version : 50633
Source Host           : 112.126.90.223:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2017-08-14 14:20:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `schema_version`
-- ----------------------------
DROP TABLE IF EXISTS `schema_version`;
CREATE TABLE `schema_version` (
`version_rank`  int(11) NOT NULL ,
`installed_rank`  int(11) NOT NULL ,
`version`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`description`  varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`type`  varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`script`  varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`checksum`  int(11) NULL DEFAULT NULL ,
`installed_by`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`installed_on`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`execution_time`  int(11) NOT NULL ,
`success`  tinyint(1) NOT NULL ,
PRIMARY KEY (`version`),
INDEX `schema_version_vr_idx` (`version_rank`) USING BTREE ,
INDEX `schema_version_ir_idx` (`installed_rank`) USING BTREE ,
INDEX `schema_version_s_idx` (`success`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of schema_version
-- ----------------------------
BEGIN;
INSERT INTO `schema_version` VALUES ('1', '1', '1', 'initialize', 'SQL', 'V1__initialize.sql', '1183249276', 'campus', '2017-07-10 11:35:17', '68', '1');
COMMIT;

-- ----------------------------
-- Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
`id`  int(11) NOT NULL AUTO_INCREMENT COMMENT 'ๆ้่กจ' ,
`name`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`code`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '่ตๆบไปฃ็?' ,
`parent_id`  int(11) NULL DEFAULT 0 COMMENT '่ชๅทฑ่กจ็็ถid' ,
`description`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`disabled`  tinyint(1) NULL DEFAULT 0 COMMENT '0ๆๆ๏ผ1ไฝๅบ' ,
`addtime`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
AUTO_INCREMENT=29

;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_permission` VALUES ('6', 'ๅ่ฝๆ้', 'sysPermission:*', '0', 'ๅ่ฝๆ้ๅ?้ค', '0', '2017-08-09 15:03:45'), ('7', 'ๅ่ฝๆ้ๅ่กจ', 'sysPermission:list', '6', 'ๅ่ฝๆ้ๅ?้ค', '0', '2017-08-09 15:03:22'), ('8', 'ๅ่ฝๆ้ๆทปๅ?', 'sysPermission:add', '6', 'ๅ่ฝๆ้ๅ?้ค', '0', '2017-08-09 15:03:28'), ('9', 'ๅ่ฝๆ้ๆดๆฐ', 'sysPermission:update', '6', 'ๅ่ฝๆ้ๅ?้ค', '0', '2017-08-09 15:03:33'), ('10', 'ๅ่ฝๆ้ๅ?้ค', 'sysPermission:del', '6', 'ๅ่ฝๆ้ๅ?้ค', '0', '2017-08-02 14:59:17'), ('11', 'ๅบๆฌๆๆ', 'base:*', '0', 'ๅบๆฌๆๆ', '0', '2017-08-09 15:05:48'), ('12', 'ๅบๆฌๆๆๅ่กจ', 'base:list', '11', 'ๅบๆฌๆๆๅ่กจ', '0', '2017-08-09 15:06:06'), ('13', 'ๅบๆฌๆๆๆทปๅ?', 'base:add', '11', 'ๅบๆฌๆๆๆทปๅ?', '0', '2017-08-09 15:06:08'), ('14', 'ๅบๆฌๆๆไฟฎๆน', 'base:update', '11', 'ๅบๆฌๆๆไฟฎๆน', '0', '2017-08-09 15:06:09'), ('15', 'ๅบๆฌๆๆๅ?้ค', 'base:del', '11', 'ๅบๆฌๆๆๅ?้ค', '0', '2017-08-09 15:06:11'), ('18', 'ๅๅฐ็จๆท', 'sysuser:*', '0', 'ๅๅฐ็จๆท', '0', '2017-08-09 14:38:29'), ('19', 'ๅๅฐ็จๆทๅ่กจ', 'sysuser:list', '18', 'ๅๅฐ็จๆทๅ่กจ', '0', '2017-08-03 10:25:18'), ('20', 'ๅๅฐ็จๆทๆทปๅ?', 'sysuser:add', '18', 'ๅๅฐ็จๆทๆทปๅ?', '0', '2017-08-03 10:25:19'), ('21', 'ๅๅฐ็จๆทไฟฎๆน', 'sysuser:upd', '18', 'ๅๅฐ็จๆทไฟฎๆน', '0', '2017-08-03 10:25:20'), ('22', 'ๅๅฐ็จๆทๅ?้ค', 'sysuser:del', '18', 'ๅๅฐ็จๆทๅ?้ค', '0', '2017-08-03 10:25:22'), ('23', '่ง่ฒ็ฎก็', 'sysRole:*', '0', '่ง่ฒ็ฎก็', '0', '2017-08-09 14:39:08'), ('24', '่ง่ฒๅ่กจ', 'sysRole:list', '23', '่ง่ฒๅ่กจ', '0', '2017-08-09 14:39:13'), ('25', '่ง่ฒๆทปๅ?', 'sysRole:add', '23', '่ง่ฒๆทปๅ?', '0', '2017-08-09 14:39:16'), ('26', '่ง่ฒไฟฎๆน', 'sysRole:upd', '23', '่ง่ฒไฟฎๆน', '0', '2017-08-09 14:39:18'), ('27', '่ง่ฒๅ?้ค', 'sysRole:del', '23', '่ง่ฒๅ?้ค', '0', '2017-08-09 14:39:21');
COMMIT;

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
`id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '่ง่ฒ่กจ' ,
`name`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`code`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`type`  int(11) NULL DEFAULT 1 COMMENT '1็ณป็ป่ง่ฒ๏ผ2ๅถไป็ไธๅ็่ง่ฒ' ,
`disabled`  tinyint(1) NULL DEFAULT 0 COMMENT '0ๆๆ๏ผ1ไฝๅบ' ,
`addtime`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=5

;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES ('1', 'admin', 'admin', '่ถ็บง็ฎก็ๅ', '1', '0', '2017-08-02 15:01:52'), ('2', 'user1', 'user', 'ๆๅ็จๆท', '0', '0', '2017-08-09 15:13:58'), ('3', 'test2', 't2est:*', 'testssss2', '1', '1', '2017-08-09 15:39:36'), ('4', 'test', 'test:*', 'asdfsasdf', '1', '0', '2017-08-11 13:13:58');
COMMIT;

-- ----------------------------
-- Table structure for `sys_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
`role_id`  int(11) NOT NULL COMMENT '่ง่ฒID' ,
`permission_id`  int(11) NOT NULL COMMENT 'ๆ้' ,
PRIMARY KEY (`role_id`, `permission_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
COMMENT='่ง่ฒๆๆ'

;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_permission` VALUES ('1', '7'), ('1', '8'), ('1', '9'), ('1', '10'), ('1', '12'), ('1', '13'), ('1', '14'), ('1', '15'), ('1', '19'), ('1', '20'), ('1', '21'), ('1', '22'), ('1', '24'), ('1', '25'), ('1', '26'), ('1', '27'), ('2', '12'), ('2', '13'), ('2', '14'), ('2', '15'), ('4', '10'), ('4', '12'), ('4', '13'), ('4', '14'), ('4', '15'), ('4', '19');
COMMIT;

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT COMMENT '็จๆท่กจ' ,
`login_name`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
`name`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '็ๅฎๅงๅ' ,
`password`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`salt`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT ' ๅ?ๅฏๅๆฐ' ,
`addtime`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
`disabled`  tinyint(1) NULL DEFAULT 0 COMMENT '1็ฆ็จ๏ผ0ๅฆ' ,
PRIMARY KEY (`id`),
UNIQUE INDEX `login_name` (`login_name`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=6

;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', 'admin', 'zivy', '9b460ffe375e5da23c2adba423f0113a', 'tx3x', '2017-07-27 13:40:52', '0'), ('2', 'zivy', 'zivyiv', '90539cfde7843b59006e0db3bda19698', 'zivy', '2017-07-27 16:51:09', '0'), ('4', 'test', 'test', 'cdd979ec7f0d796797e8880973429574', '0ie5', '2017-08-03 11:09:46', '1');
COMMIT;

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
`role_id`  int(11) NOT NULL COMMENT '่ง่ฒID' ,
`user_id`  int(11) NOT NULL COMMENT '็จๆท' ,
PRIMARY KEY (`role_id`, `user_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
COMMENT='็จๆท่ง่ฒ'

;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES ('1', '1'), ('1', '4'), ('2', '1'), ('2', '2'), ('2', '4');
COMMIT;

-- ----------------------------
-- Table structure for `zz_demo`
-- ----------------------------
DROP TABLE IF EXISTS `zz_demo`;
CREATE TABLE `zz_demo` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`addtime`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'ๅฝๅฅๆถ้ด' ,
`disabled`  tinyint(1) NULL DEFAULT 0 COMMENT '0ๆๆ๏ผ1ไฝๅบ' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
AUTO_INCREMENT=29

;

-- ----------------------------
-- Records of zz_demo
-- ----------------------------
BEGIN;
INSERT INTO `zz_demo` VALUES ('1', 'a', '2017-07-10 11:48:28', '0'), ('2', 'b', '2017-07-10 11:48:30', '0'), ('3', 'cๆถๅฐ', '2017-07-13 09:52:31', '0'), ('4', 'aa', '2017-07-12 16:52:42', '0'), ('5', 'test', '2017-07-17 12:29:02', '0'), ('6', 'atest', '2017-07-17 12:30:31', '0'), ('7', 'tet', '2017-07-17 12:33:10', '0'), ('8', 'adfa', '2017-07-17 12:33:35', '0'), ('9', 'gfsdf', '2017-07-17 12:37:13', '0'), ('10', 'ๆๆฏ่ฐใ', '2017-07-18 10:52:01', '0'), ('11', '้ฟ้ๅคซ', '2017-07-18 10:52:43', '0'), ('12', 'test', '2017-07-18 11:14:46', '0'), ('13', 't1', '2017-07-18 11:23:38', '0'), ('14', 't2', '2017-07-18 11:26:33', '0'), ('15', 't3', '2017-07-18 11:28:32', '0'), ('16', 't6', '2017-07-18 11:30:07', '0'), ('17', 't7', '2017-07-18 11:31:53', '0'), ('18', 'test8', '2017-07-18 11:39:52', '0'), ('19', 't9', '2017-07-18 11:39:59', '0'), ('22', 't91', '2017-07-19 11:09:01', '0'), ('26', 'test', '2017-08-08 10:43:54', '1');
COMMIT;

-- ----------------------------
-- Auto increment value for `sys_permission`
-- ----------------------------
ALTER TABLE `sys_permission` AUTO_INCREMENT=29;

-- ----------------------------
-- Auto increment value for `sys_role`
-- ----------------------------
ALTER TABLE `sys_role` AUTO_INCREMENT=5;

-- ----------------------------
-- Auto increment value for `sys_user`
-- ----------------------------
ALTER TABLE `sys_user` AUTO_INCREMENT=6;

-- ----------------------------
-- Auto increment value for `zz_demo`
-- ----------------------------
ALTER TABLE `zz_demo` AUTO_INCREMENT=29;
