

SET FOREIGN_KEY_CHECKS=0;

/*
-- ----------------------------
-- Table structure for `practitioner`
-- ----------------------------
CREATE TABLE `practitioner` (
`id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '参与者表' ,
`practitioner_id`  varchar(64) NOT NULL COMMENT '参与者ID' ,
`practitioner_name`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '患者姓名',
`role`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色类型' , --Doctor/Physicist
`telephone`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci

;

-- ----------------------------
-- Table structure for `technical`
-- ----------------------------
CREATE TABLE `technical` (
`id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '治疗技术表' ,
`name`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '治疗技术',
`code`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '治疗技术code',
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci

;
*/
-- ----------------------------
-- Table structure for `patient`
-- ----------------------------
CREATE TABLE `patient` (
`id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '患者表' ,
`patient_id`  varchar(64) NOT NULL COMMENT '患者ID' ,
`patient_name`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '患者姓名',
`pinyin`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拼音' ,
`address`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址' ,
`gender`  varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别' ,
`birth_date`  timestamp NULL DEFAULT NULL COMMENT '出生日期' ,
`national_id`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证' ,
`contact_name`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人' ,
`contact_phone`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人电话' ,
`telephone`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话' ,
`physician`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '医师' ,
`outpatient_room`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '诊室' ,
`physicist`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物理师' ,
`diagnosis_desc`  varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '诊断' ,
`prescription`  varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处方' ,
`technical`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '治疗技术' ,
`disabled`  tinyint(1) NULL DEFAULT 0 COMMENT '0有效；1作废' ,
`registered_dt`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '登记时间' ,
`created_username`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人' ,
`modified_dt`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间' ,
`modified_username`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci

;

/**
-- ----------------------------
-- Table structure for `encounter`
-- ----------------------------
CREATE TABLE `encounter` (
`id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '患者表' ,
`patient_id`  varchar(64) NOT NULL COMMENT '患者ID' ,
`primary_physician`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '医师' ,
`outpatient_room`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '诊室' ,
`physicist`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物理师' ,
`diagnosis_desc`  varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '诊断' ,
`prescription`  varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '处方' ,
`technical`  varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '治疗技术' ,
`created_dt`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间' ,
`created_username`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人' ,
`modified_dt`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间' ,
`modified_username`  varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci

;
**/

-- ----------------------------
-- Records of sys_permission for patient
-- ----------------------------
INSERT INTO `sys_permission` VALUES
('50', '患者权限管理', 'patient:*', '0', '患者权限管理', '0', '2017-08-09 15:03:45'),
('51', '患者权限列表', 'patient:list', '50', '患者权限列表', '0', '2017-08-09 15:03:22'),
('52', '患者权限添加', 'patient:add', '50', '患者权限添加', '0', '2017-08-09 15:03:28'),
('53', '患者权限更新', 'patient:update', '50', '患者权限更新', '0', '2017-08-09 15:03:33'),
('54', '患者权限删除', 'patient:del', '50', '患者权限删除', '0', '2017-08-02 14:59:17');

-- ----------------------------
-- Records of sys_role_permission for patient
-- ----------------------------

INSERT INTO `sys_role_permission` VALUES ('1', '50');