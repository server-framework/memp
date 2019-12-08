/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50621
 Source Host           : localhost:3306
 Source Schema         : memp

 Target Server Type    : MySQL
 Target Server Version : 50621
 File Encoding         : 65001

 Date: 08/12/2019 22:49:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_scheme
-- ----------------------------
DROP TABLE IF EXISTS `gen_scheme`;
CREATE TABLE `gen_scheme`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gen_scheme_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '生成方案' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_scheme
-- ----------------------------
INSERT INTO `gen_scheme` VALUES ('35a13dc260284a728a270db3f382664b', '树结构', 'treeTable', 'com.thinkgem.jeesite.modules', 'test', NULL, '树结构生成', '树结构', 'ThinkGem', 'f6e4dafaa72f4c509636484715f33a96', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_scheme` VALUES ('9c9de9db6da743bb899036c6546061ac', '单表', 'curd', 'com.thinkgem.jeesite.modules', 'test', NULL, '单表生成', '单表', 'ThinkGem', 'aef6f1fc948f4c9ab1c1b780bc471cc2', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_scheme` VALUES ('e6d905fd236b46d1af581dd32bdfb3b0', '主子表', 'curd_many', 'com.thinkgem.jeesite.modules', 'test', NULL, '主子表生成', '主子表', 'ThinkGem', '43d6d5acffa14c258340ce6765e46c6f', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_scheme` VALUES ('eb1d72a95b9f4bd4a79c7c7d1d1b3773', 'memp_setting', 'curd', 'com.thinkgem.jeesite.modules', 'memp', '', '配置管理', '配置', 'yangqh', '27f523cdc2fc46c799ebdde95df7c750', '1', '2019-12-08 17:36:15', '1', '2019-12-08 17:36:15', '', '0');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gen_table_name`(`name`) USING BTREE,
  INDEX `gen_table_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '业务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('27f523cdc2fc46c799ebdde95df7c750', 'memp_setting', '配置表', 'MempSetting', '', '', '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', '', '0');
INSERT INTO `gen_table` VALUES ('43d6d5acffa14c258340ce6765e46c6f', 'test_data_main', '业务数据表', 'TestDataMain', NULL, NULL, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table` VALUES ('6e05c389f3c6415ea34e55e9dfb28934', 'test_data_child', '业务数据子表', 'TestDataChild', 'test_data_main', 'test_data_main_id', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table` VALUES ('aef6f1fc948f4c9ab1c1b780bc471cc2', 'test_data', '业务数据表', 'TestData', NULL, NULL, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table` VALUES ('f6e4dafaa72f4c509636484715f33a96', 'test_tree', '树结构表', 'TestTree', NULL, NULL, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gen_table_column_table_id`(`gen_table_id`) USING BTREE,
  INDEX `gen_table_column_name`(`name`) USING BTREE,
  INDEX `gen_table_column_sort`(`sort`) USING BTREE,
  INDEX `gen_table_column_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '业务表字段' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('011d001501a74f119dbc455ddc79b946', '27f523cdc2fc46c799ebdde95df7c750', 'min_cash', '最小提现乐币', 'bigint(10)', 'Integer', 'minCash', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 50, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('0902a0cb3e8f434280c20e9d771d0658', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '1', '1', '1', '1', '1', '=', 'radiobox', 'sex', NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('092be056d63343fbb02284f2b0529d3b', '27f523cdc2fc46c799ebdde95df7c750', 'create_by', '创建者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 70, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('103fc05c88ff40639875c2111881996a', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('12fa38dd986e41908f7fefa5839d1220', '6e05c389f3c6415ea34e55e9dfb28934', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('195ee9241f954d008fe01625f4adbfef', 'f6e4dafaa72f4c509636484715f33a96', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('19c6478b8ff54c60910c2e4fc3d27503', '43d6d5acffa14c258340ce6765e46c6f', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1ac6562f753d4e599693840651ab2bf7', '43d6d5acffa14c258340ce6765e46c6f', 'in_date', '加入日期', 'date(7)', 'java.util.Date', 'inDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1b8eb55f65284fa6b0a5879b6d8ad3ec', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'in_date', '加入日期', 'date(7)', 'java.util.Date', 'inDate', '0', '1', '1', '1', '0', '1', 'between', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1d5ca4d114be41e99f8dc42a682ba609', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'user_id', '归属用户', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'user.id|name', '0', '1', '1', '1', '1', '1', '=', 'userselect', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('21756504ffdc487eb167a823f89c0c06', '43d6d5acffa14c258340ce6765e46c6f', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 10, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('23c6c664dbb64afbafb7ceea0bcdb16b', '27f523cdc2fc46c799ebdde95df7c750', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', NULL, 100, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('24bbdc0a555e4412a106ab1c5f03008e', 'f6e4dafaa72f4c509636484715f33a96', 'parent_ids', '所有父级编号', 'varchar2(2000)', 'String', 'parentIds', '0', '0', '1', '1', '0', '0', 'like', 'input', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('2909a93c7d8143458ca4d6ebbcc426d8', '27f523cdc2fc46c799ebdde95df7c750', 'coin_rate', '乐币汇率', 'double(10,2)', 'Double', 'coinRate', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 40, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('2de82f1c7dab4a409623460ba0dc5959', '27f523cdc2fc46c799ebdde95df7c750', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', NULL, 110, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('33152ce420904594b3eac796a27f0560', '6e05c389f3c6415ea34e55e9dfb28934', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('35af241859624a01917ab64c3f4f0813', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 13, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('398b4a03f06940bfb979ca574e1911e3', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3a7cf23ae48a4c849ceb03feffc7a524', '43d6d5acffa14c258340ce6765e46c6f', 'area_id', '归属区域', 'nvarchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Area', 'area.id|name', '0', '1', '1', '1', '0', '0', '=', 'areaselect', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3b88387a4caa480e8cda69e91abfc8c0', '27f523cdc2fc46c799ebdde95df7c750', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3d9c32865bb44e85af73381df0ffbf3d', '43d6d5acffa14c258340ce6765e46c6f', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 11, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('416c76d2019b4f76a96d8dc3a8faf84c', 'f6e4dafaa72f4c509636484715f33a96', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('46e6d8283270493687085d29efdecb05', 'f6e4dafaa72f4c509636484715f33a96', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 11, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('4a0a1fff86ca46519477d66b82e01991', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('4c8ef12cb6924b9ba44048ba9913150b', '43d6d5acffa14c258340ce6765e46c6f', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('53d65a3d306d4fac9e561db9d3c66912', '6e05c389f3c6415ea34e55e9dfb28934', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('56fa71c0bd7e4132931874e548dc9ba5', '6e05c389f3c6415ea34e55e9dfb28934', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('571e761f1251484c9a4169f275271d94', '27f523cdc2fc46c799ebdde95df7c750', 'commission_2', '二级佣金比例', 'double(10,0)', 'Double', 'commission2', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 30, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('5a4a1933c9c844fdba99de043dc8205e', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 10, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('5e5c69bd3eaa4dcc9743f361f3771c08', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('633f5a49ec974c099158e7b3e6bfa930', 'f6e4dafaa72f4c509636484715f33a96', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('652491500f2641ffa7caf95a93e64d34', '6e05c389f3c6415ea34e55e9dfb28934', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('65e687501ebd43369decb1bfde94c04e', '27f523cdc2fc46c799ebdde95df7c750', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 80, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('6763ff6dc7cd4c668e76cf9b697d3ff6', 'f6e4dafaa72f4c509636484715f33a96', 'sort', '排序', 'number(10)', 'Integer', 'sort', '0', '0', '1', '1', '1', '0', '=', 'input', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('67d0331f809a48ee825602659f0778e8', '43d6d5acffa14c258340ce6765e46c6f', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('68345713bef3445c906f70e68f55de38', '6e05c389f3c6415ea34e55e9dfb28934', 'test_data_main_id', '业务主表', 'varchar2(64)', 'String', 'testDataMain.id', '0', '1', '1', '1', '0', '0', '=', 'input', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('71ea4bc10d274911b405f3165fc1bb1a', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'area_id', '归属区域', 'nvarchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Area', 'area.id|name', '0', '1', '1', '1', '1', '1', '=', 'areaselect', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('73e2700430804ed5bbf512f4daaa30c5', '27f523cdc2fc46c799ebdde95df7c750', 'stages', '分期数对应的利率', 'varchar(256)', 'String', 'stages', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 60, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('7aa987ee421f469aa22738c68d207f0a', '27f523cdc2fc46c799ebdde95df7c750', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 120, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('7f871058d94c4d9a89084be7c9ce806d', '6e05c389f3c6415ea34e55e9dfb28934', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8b48774cfe184913b8b5eb17639cf12d', '43d6d5acffa14c258340ce6765e46c6f', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8b7cf0525519474ebe1de9e587eb7067', '6e05c389f3c6415ea34e55e9dfb28934', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8b9de88df53e485d8ef461c4b1824bc1', '43d6d5acffa14c258340ce6765e46c6f', 'user_id', '归属用户', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'user.id|name', '0', '1', '1', '1', '1', '1', '=', 'userselect', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8da38dbe5fe54e9bb1f9682c27fbf403', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', NULL, NULL, 12, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('92481c16a0b94b0e8bba16c3c54eb1e4', 'f6e4dafaa72f4c509636484715f33a96', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('9a012c1d2f934dbf996679adb7cc827a', 'f6e4dafaa72f4c509636484715f33a96', 'parent_id', '父级编号', 'varchar2(64)', 'This', 'parent.id|name', '0', '0', '1', '1', '0', '0', '=', 'treeselect', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ad3bf0d4b44b4528a5211a66af88f322', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'office_id', '归属部门', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Office', 'office.id|name', '0', '1', '1', '1', '1', '1', '=', 'officeselect', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('b64e785205a04f80a0f0b30c649e2de7', '27f523cdc2fc46c799ebdde95df7c750', 'update_by', '更新者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 90, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('bb1256a8d1b741f6936d8fed06f45eed', 'f6e4dafaa72f4c509636484715f33a96', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ca68a2d403f0449cbaa1d54198c6f350', '43d6d5acffa14c258340ce6765e46c6f', 'office_id', '归属部门', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Office', 'office.id|name', '0', '1', '1', '1', '0', '0', '=', 'officeselect', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('cb9c0ec3da26432d9cbac05ede0fd1d0', '43d6d5acffa14c258340ce6765e46c6f', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', NULL, NULL, 12, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('cfcfa06ea61749c9b4c4dbc507e0e580', 'f6e4dafaa72f4c509636484715f33a96', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('d5c2d932ae904aa8a9f9ef34cd36fb0b', '43d6d5acffa14c258340ce6765e46c6f', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '1', '1', '1', '0', '1', '=', 'select', 'sex', NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e487b6491924417ebadfe1076a72b1a5', '27f523cdc2fc46c799ebdde95df7c750', 'commission_1', '一级佣金比例', 'double(10,0)', 'Double', 'commission1', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 20, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e64050a2ebf041faa16f12dda5dcf784', '6e05c389f3c6415ea34e55e9dfb28934', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e8d11127952d4aa288bb3901fc83127f', '43d6d5acffa14c258340ce6765e46c6f', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 13, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('eb2e5afd13f147a990d30e68e7f64e12', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 11, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('f5ed8c82bad0413fbfcccefa95931358', 'f6e4dafaa72f4c509636484715f33a96', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', NULL, NULL, 10, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成文件名',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gen_template_del_falg`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码模板表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for memp_coin_detail
-- ----------------------------
DROP TABLE IF EXISTS `memp_coin_detail`;
CREATE TABLE `memp_coin_detail`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `trade_coin` bigint(10) NOT NULL COMMENT '交易乐币',
  `less_coin` bigint(10) NOT NULL COMMENT '剩余乐币',
  `direction` bit(2) NOT NULL COMMENT '0-收入|1-支出',
  `op_type` int(4) NOT NULL COMMENT '业务 1-注册|2-分销|3-打卡|4-分享',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户乐币明细' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for memp_setting
-- ----------------------------
DROP TABLE IF EXISTS `memp_setting`;
CREATE TABLE `memp_setting`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `commission_1` double(10, 2) NOT NULL COMMENT '一级佣金比例',
  `commission_2` double(10, 2) NOT NULL COMMENT '二级佣金比例',
  `coin_rate` double(10, 2) NOT NULL COMMENT '乐币汇率',
  `min_cash` bigint(10) NOT NULL COMMENT '最小提现乐币',
  `stages` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分期数对应的利率',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of memp_setting
-- ----------------------------
INSERT INTO `memp_setting` VALUES ('03f73ad9b79341108a86938abb4c216b', 0.60, 0.20, 1.80, 10000, '{\"r1\":0.1,\"r2\":0.2,\"r3\":0.3,\"r4\":0.4,\"r5\":0.5,\"r6\":0.6,\"r7\":0.7,\"r8\":0.8,\"r9\":0.9,\"r10\":0.01,\"r11\":0.02,\"r12\":0.03}', '1', '2019-12-08 20:05:10', '1', '2019-12-08 21:57:37', '备注信息1', '0');

-- ----------------------------
-- Table structure for memp_stages_info
-- ----------------------------
DROP TABLE IF EXISTS `memp_stages_info`;
CREATE TABLE `memp_stages_info`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `idcard_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `idcard_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `idcard_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证正面照',
  `idcard_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证反面照',
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '银行名称',
  `bank_card_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '银行卡号',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预留手机号码',
  `money` bigint(10) NOT NULL COMMENT '分期金额',
  `stages_num` int(2) NOT NULL COMMENT '分期期数',
  `credit_score` double(10, 2) NULL DEFAULT NULL COMMENT '信用分（百融）',
  `stages_status` int(2) NOT NULL COMMENT '状态 1-额度申请中|2百融返回|3拒绝|4通过',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拒绝原因',
  `credidt_date` datetime(0) NULL DEFAULT NULL COMMENT '百融返回时间',
  `audit_date` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分期信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for memp_user
-- ----------------------------
DROP TABLE IF EXISTS `memp_user`;
CREATE TABLE `memp_user`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'OPENID',
  `headimg` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `nickname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `mobile` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `coin` bigint(20) NULL DEFAULT NULL COMMENT '乐币数',
  `version_no` int(10) NULL DEFAULT 1 COMMENT '乐币数乐观锁',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域编码',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_area_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_area_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区域表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('1', '0', '0,', '中国', 10, '100000', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_area` VALUES ('2', '1', '0,1,', '广东省', 20, '110000', '2', '1', '2013-05-27 08:00:00', '1', '2019-12-08 14:19:59', '', '0');
INSERT INTO `sys_area` VALUES ('3', '2', '0,1,2,', '深圳市', 30, '110101', '3', '1', '2013-05-27 08:00:00', '1', '2019-12-08 14:20:11', '', '0');
INSERT INTO `sys_area` VALUES ('4', '3', '0,1,2,3,', '龙华新区', 40, '110102', '4', '1', '2013-05-27 08:00:00', '1', '2019-12-08 14:20:28', '', '0');
INSERT INTO `sys_area` VALUES ('5', '3', '0,1,2,3,', '历下区', 50, '110104', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_area` VALUES ('6', '3', '0,1,2,3,', '高新区', 60, '110105', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据值',
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_dict_value`(`value`) USING BTREE,
  INDEX `sys_dict_label`(`label`) USING BTREE,
  INDEX `sys_dict_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型\0\0', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('101', 'com.thinkgem.jeesite.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型\0\0', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('102', 'com.thinkgem.jeesite.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型\0\0', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('103', 'com.thinkgem.jeesite.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型\0\0', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型\0\0', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('12', 'default', '默认主题', 'theme', '主题方案', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('14', 'readable', '橙色主题', 'theme', '主题方案', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('15', 'united', '红色主题', 'theme', '主题方案', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('16', 'flat', 'Flat主题', 'theme', '主题方案', 60, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('17', '1', '国家', 'sys_area_type', '区域类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('19', '3', '地市', 'sys_area_type', '区域类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('2', '1', '删除', 'del_flag', '删除标记', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('20', '4', '区县', 'sys_area_type', '区域类型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('21', '1', '公司', 'sys_office_type', '机构类型', 60, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('22', '2', '部门', 'sys_office_type', '机构类型', 70, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('23', '3', '小组', 'sys_office_type', '机构类型', 80, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('24', '4', '其它', 'sys_office_type', '机构类型', 90, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('28', '1', '一级', 'sys_office_grade', '机构等级', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('29', '2', '二级', 'sys_office_grade', '机构等级', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('30', '3', '三级', 'sys_office_grade', '机构等级', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('31', '4', '四级', 'sys_office_grade', '机构等级', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('32', '1', '所有数据', 'sys_data_scope', '数据范围', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('41', '3', '普通用户', 'sys_user_type', '用户类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('6', '0', '否', 'yes_no', '是/否', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', 30, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', 40, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('75', 'tree', '树结构', 'gen_category', '代码生成分类', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('76', '=', '=', 'gen_query_type', '查询方式', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('77', '!=', '!=', 'gen_query_type', '查询方式', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('80', 'between', 'Between', 'gen_query_type', '查询方式', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('81', 'like', 'Like', 'gen_query_type', '查询方式', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('90', 'userselect', '人员选择\0', 'gen_show_type', '字段生成方案', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('93', 'String', 'String', 'gen_java_type', 'Java类型', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类\0\0\0\0\0\0', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('96', '1', '男', 'sex', '性别', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('97', '2', '女', 'sex', '性别', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型\0\0', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('99', 'Double', 'Double', 'gen_java_type', 'Java类型\0\0', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作方式',
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作提交的数据',
  `exception` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '异常信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_log_create_by`(`create_by`) USING BTREE,
  INDEX `sys_log_request_uri`(`request_uri`) USING BTREE,
  INDEX `sys_log_type`(`type`) USING BTREE,
  INDEX `sys_log_create_date`(`create_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('00730c9ff78b4f31a714fdd5092c14de', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:57:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('00c1297fae1a481ba00e7ae17ac3c621', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 21:05:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('00e8618767e24507921bb2876dea81dc', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:22:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0189f2c1566642daa32b26d47c5e21b5', '1', '代码生成-代码生成-生成方案配置', '1', '2019-12-08 17:35:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0346c18b3b8d472bab72030a505670ed', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-08 17:42:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'parent.id=007570a6dc224e57b474dfb33ff337fd', '');
INSERT INTO `sys_log` VALUES ('0539d3137bda4ffeb4761489746a73d0', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:42:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0a9e05363aaa4f46a78ed01c182df49f', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:46:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0b426f62d5e54268a17a7828a3d499de', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 21:41:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0b42fcf09f4e4ce6b9359fb2f1ebc906', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:51:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0b5263cfb4f043f98cf11195b61ffb59', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:13:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0dc129ec36f045c6b9a5553af7c5ab5f', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 17:40:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0e42494a1b224d59b88204b538228282', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:06:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0ed78eb0aa01430c8b0da1645d80a974', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 17:45:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0f93e725bc1b436fafd758487ccddca3', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:41:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('101e71eb01ea454da68323fdc4f32559', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:33:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('10295d46943347418876146ab6d3d03a', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:35:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1071ca86b3e14c6d830f4ecfe935806f', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-08 17:41:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('12b2fdd481fb4d049722383faa0e9a0c', '1', '系统登录', '1', '2019-12-08 22:45:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('12d6b088d672416fb744d47316868fbc', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:37:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('12f777837b924acfbab40be66db8ef27', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-08 17:40:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1344ba66495d40998ca7ac57ddfdb861', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:35:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('141a50d4adc243949171c0242e8edd82', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:58:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1561572a68b94f44b170d1da5b7428b7', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:42:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('17887ed9fcee4d7a8cff2f5ec87a8cd6', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 17:52:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('17bfe038793a4d9b9f1a8145e74f923a', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:19:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('19540779b12942b98998cea8e8276b29', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:37:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('1c1c8d7fe84e4497b1be1b36550fa41c', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:52:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1cd37f2df0ec42e3a6738cb3b804b5db', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:33:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('1d29880a31904695856ee224f9743a4d', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:42:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1ed1e6e8554849f49375db23dd4d97f9', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 17:26:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1f13abe84b1a425b9a122e5abfffbf7b', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-08 17:42:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=20', '');
INSERT INTO `sys_log` VALUES ('20044a96072a4613b0a31a45bf9cc537', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:06:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('20d8ecdb9c6c4292b251c999d5c2c94c', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:35:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('214c8dfae039415e917607800a816b67', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:32:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('239a74d40d6e4f7d94c694d8679abfed', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:17:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('261236682dcf4c6d983858a32b920a52', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:35:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('26f2d464df0f4d3a8d4a2700da8b9ae2', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:57:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('27a164e973f944af859ff0db2af5f713', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:12:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2859f9d818be4801b126dfa199ec816d', '1', '系统设置-系统设置-菜单管理-修改', '1', '2019-12-08 17:40:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/save', 'POST', 'id=&parent.id=1&parent.name=功能菜单&name=后台管理&href=&target=&icon=&sort=5030&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('2a05d166492242f0946091b6a1a6170c', '1', '系统登录', '1', '2019-12-08 20:03:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('2b86be03c3b745cb9df4e2b441ff29bf', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:58:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2ba4874b16674377a20903b01bb67f51', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:48:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2e4fd11cb77c49b4a2ea827b70d218c9', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:52:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('302ce951ee264c12a2c664b633038ee2', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:40:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('321b516ed1854dd582630fee3c84c14a', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 22:45:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('328130d3263142ee90cd42ea5f0aace0', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:38:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('33e9e6155d2b412085d97eb3a1eb5d72', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 21:06:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3466d294374640e2b609bfc104cf072e', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 17:45:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('350e5518672e40fc9a9fd76773075872', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:43:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('36e3f787f059466690a44f9bf7551299', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:55:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('38a2577893fd4d2abc7aefbd91688303', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:12:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('395ec6b6ec264152aaa0a3fd5123dc87', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-08 17:43:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=20', '');
INSERT INTO `sys_log` VALUES ('3a9cfb002f9243aaabd4dac88fc65ee2', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 21:42:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3bee86a8ad2b49cbad6aab68855d6f91', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:11:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3c7dc059eb274e899f2e9dd10f243f45', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 18:13:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3e44bc1a86364081ae73fb025be39ff8', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:33:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('3e584d73d0494664953e83e356a18ac6', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 17:47:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3e950b4e936947b3be801e0fddfd9e62', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:32:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('3f9f276e5a094a9b82e6a1a0562150c6', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:53:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('405ca35f91d8485184899161902e9ad9', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-08 17:44:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=ba8092291b40482db8fe7fc006ea3d76', '');
INSERT INTO `sys_log` VALUES ('40ca58f946a04ba0b99373556f0a33e5', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:56:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('43c398cc5d484b3fa5be7bc5aa948a81', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:07:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('44a846a5d17d419ab8cbc6b74adefa96', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:36:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('44fbdf56000f4da889a90b64ae648f82', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:50:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('473959b3fee24742a90a392ac7e87cf5', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:57:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4986f27cc5e644f1af4179e8dc75d735', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:33:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('4b9c546a42f140cf9f34af61d1f04d28', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:50:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4d0849e7247b49708267b7b2a8342334', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:44:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4d4bcd6665834fd5a44095b04b271ebf', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:49:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4df2bd637f3c40be97af8442a4037f13', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:11:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4fceb5d7f20a4befa129bc144e95d2da', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 17:45:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('507a30a82bed4837bd52f89347158786', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:47:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('51c6f7df36f243bdaffdd2fb39566557', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:44:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('52466fbb612b4e399f9c4a617001a6c6', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 21:17:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('53f1f7c3b73d43d391f6cbd5c7134d23', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:40:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('54613db121ab400db1cc7ac870fb479f', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:47:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5510f36a7289498bad8bb840311efb27', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:49:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('56a8427f7d57432896c35a3cd668b090', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:47:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5726c16acc244c24826214af67655595', '2', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:09:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', 'org.apache.jasper.JasperException: An exception occurred processing [/WEB-INF/views/modules/memp/mempSettingForm.jsp] at line [72]\r\n\r\n69: 				<table>\r\n70: 					<tr style=\"text-align: center\"><td>1鏈�</td><td>2鏈�</td><td>3鏈�</td><td>4鏈�</td><td>5鏈�</td><td>6鏈�</td></tr>\r\n71: 					<tr>\r\n72: 						<td><form:input path=\"r.r1\" htmlEscape=\"false\" maxlength=\"4\" class=\"input-mini required number\"/><span class=\"help-inline\"><font color=\"red\">*</font> </span></td>\r\n73: 						<td><form:input path=\"r.r2\" htmlEscape=\"false\" maxlength=\"4\" class=\"input-mini required number\"/><span class=\"help-inline\"><font color=\"red\">*</font> </span></td>\r\n74: 						<td><form:input path=\"r.r3\" htmlEscape=\"false\" maxlength=\"4\" class=\"input-mini required number\"/><span class=\"help-inline\"><font color=\"red\">*</font> </span></td>\r\n75: 						<td><form:input path=\"r.r4\" htmlEscape=\"false\" maxlength=\"4\" class=\"input-mini required number\"/><span class=\"help-inline\"><font color=\"red\">*</font> </span></td>\r\n\r\n\r\nStacktrace:\r\n	at org.apache.jasper.servlet.JspServletWrapper.handleJspException(JspServletWrapper.java:613)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:510)\r\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:395)\r\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:339)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:728)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:742)\r\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:484)\r\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:409)\r\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:337)\r\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:168)\r\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:303)\r\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1243)\r\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1027)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:971)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:893)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:965)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:856)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:621)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:841)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:728)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:85)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:219)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:110)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:444)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:169)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:104)\r\n	at org.apache.catalina.valves.AccessLogValve.invoke(AccessLogValve.java:1025)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:116)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:445)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1137)\r\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:637)\r\n	at org.apache.tomcat.util.net.JIoEndpoint$SocketProcessor.run(JIoEndpoint.java:319)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\nCaused by: org.springframework.beans.NullValueInNestedPathException: Invalid property \'r\' of bean class [com.thinkgem.jeesite.modules.memp.entity.MempSetting]: Could not instantiate property type [com.thinkgem.jeesite.modules.memp.entity.MempSetting$R] to auto-grow nested property path: java.lang.InstantiationException: com.thinkgem.jeesite.modules.memp.entity.MempSetting$R\r\n	at org.springframework.beans.BeanWrapperImpl.newValue(BeanWrapperImpl.java:657)\r\n	at org.springframework.beans.BeanWrapperImpl.createDefaultPropertyValue(BeanWrapperImpl.java:623)\r\n	at org.springframework.beans.BeanWrapperImpl.setDefaultValue(BeanWrapperImpl.java:611)\r\n	at org.springframework.beans.BeanWrapperImpl.getNestedBeanWrapper(BeanWrapperImpl.java:575)\r\n	at org.springframework.beans.BeanWrapperImpl.getBeanWrapperForPropertyPath(BeanWrapperImpl.java:549)\r\n	at org.springframework.beans.BeanWrapperImpl.getPropertyValue(BeanWrapperImpl.java:720)\r\n	at org.springframework.validation.AbstractPropertyBindingResult.getActualFieldValue(AbstractPropertyBindingResult.java:99)\r\n	at org.springframework.validation.AbstractBindingResult.getFieldValue(AbstractBindingResult.java:229)\r\n	at org.springframework.web.servlet.support.BindStatus.<init>(BindStatus.java:120)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getBindStatus(AbstractDataBoundFormElementTag.java:168)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getPropertyPath(AbstractDataBoundFormElementTag.java:188)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getName(AbstractDataBoundFormElementTag.java:154)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.autogenerateId(AbstractDataBoundFormElementTag.java:141)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.resolveId(AbstractDataBoundFormElementTag.java:132)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.writeDefaultAttributes(AbstractDataBoundFormElementTag.java:116)\r\n	at org.springframework.web.servlet.tags.form.AbstractHtmlElementTag.writeDefaultAttributes(AbstractHtmlElementTag.java:422)\r\n	at org.springframework.web.servlet.tags.form.InputTag.writeTagContent(InputTag.java:142)\r\n	at org.springframework.web.servlet.tags.form.AbstractFormTag.doStartTagInternal(AbstractFormTag.java:84)\r\n	at org.springframework.web.servlet.tags.RequestContextAwareTag.doStartTag(RequestContextAwareTag.java:80)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.memp.mempSettingForm_jsp._jspx_meth_form_005finput_005f4(mempSettingForm_jsp.java:642)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.memp.mempSettingForm_jsp._jspx_meth_form_005fform_005f0(mempSettingForm_jsp.java:330)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.memp.mempSettingForm_jsp._jspService(mempSettingForm_jsp.java:171)\r\n	at org.apache.jasper.runtime.HttpJspBase.service(HttpJspBase.java:70)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:728)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:472)\r\n	... 67 more\r\n');
INSERT INTO `sys_log` VALUES ('57f0dca10771472d9930230ead8fea9f', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:51:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('57f1a8a8df9243529a73290728176da4', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:47:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5848da8e98da43a59843b628620c777c', '1', '系统登录', '1', '2019-12-08 17:26:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('59fbd8b68497446b81b745d0e766a621', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:32:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5d7ae17efce04e07bbf9cf22fdb93ddc', '1', '系统设置-机构用户-用户管理', '1', '2019-12-08 17:40:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5db140ddb08c495ba6c3ec140e83ec2e', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:37:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5dcd289a1eb643bfac69b8d86b501712', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:53:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5dd9754b57b94cddbdf8c6c3625dc170', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:46:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5f1faf750a4e48acb0b31635f1b4dd23', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:35:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('62b96f9d69774e85a14777bdef78fa34', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:42:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6377c8ce744c49108d6378778269bf09', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:56:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6399ef9e78dc487280d2ccef0937e09f', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:37:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6439d34eee124c35a363c701a5409437', '1', '系统设置-机构用户-用户管理', '1', '2019-12-08 17:41:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('64d427f9f23a4b6fb395754d297f8e0f', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:43:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('665edf6e1a724cc6ae5986f3a76c00a4', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:23:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('67acea9a39da4b6d88e93eeb36a2c004', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:35:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('685e766ea45b41c4a7268649e92afd19', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:54:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('689c3690f6814eeb96e3af9362df175e', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:55:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6b7c4f1d1c5743ebb536eb5073728244', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-08 17:40:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=27', '');
INSERT INTO `sys_log` VALUES ('6d029203151849dfaf8a7f86ca3aefde', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:41:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('720aa3b4e7fc4924a67e3046c5a6f1ec', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 21:53:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('731d24fcede348608b10502c648ae55f', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:36:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('737690dec3674a97a73e611379d341ea', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:41:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('73a0f22174254c2c9be6cfdec1bc11a8', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:48:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('79823ba7118a4ab39f8cf07f52171301', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 21:12:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7a48b24dc0c34d869656b052cb384d42', '1', '系统设置-机构用户-用户管理', '1', '2019-12-08 17:41:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7c6028da7fec46f38dbd465124753f30', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:35:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7c7b6cfad29644f3a5cf10c6bcc2352d', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:35:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('7d48f2c5d5fd4fb38622b291c8245d0f', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:44:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7e7020459b6245a8840fef0ea0ade050', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:52:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('820abbf93a1042c0b5ca2988231aebb4', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:22:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('834ef58246ae465f907a50a92c4248f3', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 22:04:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('85674ab662584dde8f69a7bdbb82236d', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-08 17:44:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=956bd88fdd7c4c25960dc784382cf548', '');
INSERT INTO `sys_log` VALUES ('85b767f1ba6a46aca8228c45c910109d', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 17:45:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('86d294c392c24be4b68e729c7b7f1696', '1', '系统设置-系统设置-菜单管理-修改', '1', '2019-12-08 17:45:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/save', 'POST', 'id=373824f668c24c93abcb57f54500e4ee&parent.id=007570a6dc224e57b474dfb33ff337fd&parent.name=后台管理&name=系统设置&href=&target=&icon=&sort=30&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('88b36914a92a42409eea6ae367abc35d', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:18:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8943d791ed0f4e6fb60d17881dfce15d', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:43:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('89d2eea851c54a8abfca5078172242c3', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:11:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8ef8cd5faeb44af08fcd40a8d446ac7f', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:54:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8f862a593d4246b8a2f0bc78cd0cc6c4', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:37:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9069e77910f84903ab1348d4d1aac865', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:58:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('90a3a0d766514443a00ee2e59aa1a84c', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:05:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('94f3eaff8bcf4476b2730db32483507d', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:20:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('95dfb5e56bff4f7b9c009ea99e858e62', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:45:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('978d122e2901491a9ad7778a8011effc', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:46:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('97a4598d869d4edb94525d7777fc031d', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:37:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('9914e6555bc84a0188eda4a1b70f2abf', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 17:27:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9b7117d903f74981a9d3460b56001f08', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:52:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9b7e5e68523e493bbcd8c56afe5f3a96', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:58:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9ba51183d2fc47fca62c46f17885ac98', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:42:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9c2b9b23490b461faf0d23f30bb59faa', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:19:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9c7030508ddf49bcbf22b3bf5aaed5fe', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:53:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9c9f26ab4a2a433ea1f111a62707f99d', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:40:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9cd1b762b1454b119950cfe43ef745b7', '1', '系统设置-机构用户-用户管理', '1', '2019-12-08 17:39:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9d447b929fcb43f0b5d5eb4c80b4f535', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:34:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9e7430d9645b4445a101dfc0dd6ffc07', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:52:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a015191e042b428da426d460b4596b42', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:19:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a2ef08e4ea5b47bdb07206697296c2c0', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:22:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a38ac29f0f7b48c4b4e27e6b8d914e73', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:51:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a6a8edd8576f44de9a0d1b51e6ac4b39', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:46:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a83018c79e8c455b94d13948f95defed', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:03:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aaae455f63194c2182f5e11dae90fa75', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:56:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ab2ea7dc7c6e40338e73958bf48b0a93', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 17:52:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ae653ab7b5324445847d553471a0aba2', '1', '系统设置-系统设置-菜单管理-修改', '1', '2019-12-08 17:45:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/save', 'POST', 'id=956bd88fdd7c4c25960dc784382cf548&parent.id=373824f668c24c93abcb57f54500e4ee&parent.name=设置管理&name=配置管理&href=/memp/mempSetting/form&target=&icon=cogs&sort=30&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('af237f8a9c964e66a1e9445e6999c14b', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:48:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aff00c34636244c2b2173a4df868c137', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 17:51:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b08fa8e4e17a40bab738bd720d0afc21', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:34:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b218969e236f40128d010d171c1c0d99', '1', '系统设置-系统设置-菜单管理-修改', '1', '2019-12-08 17:42:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/save', 'POST', 'id=&parent.id=007570a6dc224e57b474dfb33ff337fd&parent.name=后台管理&name=设置管理&href=&target=&icon=&sort=30&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('b2d80afd105a47c9b56c4e960d814b05', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:36:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b330abf5652645ca9ca75cafdf6ce297', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:19:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b3b6d4730fc647669eca4d2bba99c61d', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:44:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b3fe2d75fe1d46ccac2165de173da38f', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 17:26:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b43d029e7f834cba906ed547c81d0e69', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:50:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b6493c81c77f4e7fbdcbf26989d9467b', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 22:45:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b67cf3edaeac4ddf8bcc12bd1ebaa2a7', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:37:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('b901bef09e6e4e679eabef21c7b6dbd7', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 17:51:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('baa700859f474787aaa31733037c9efc', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:51:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bad771994e864b009bd955a0af1a68c1', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:54:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bcac412d76f643b499866e23298076a6', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:18:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bcf155d3bafa4eff9314c84ab8e56fb7', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:41:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bdb3411464ed40ebb14eff58eedfc6c5', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:39:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bdf072859e8a4246a3a354e1e72b20de', '1', '代码生成-代码生成-生成方案配置', '1', '2019-12-08 17:26:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('be16d63045284866afcb34840932c5a1', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:46:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('be6d602b43fc46fdb3d9aa73c94a79a7', '1', '后台管理-设置管理-配置管理', '1', '2019-12-08 17:45:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bedaa4fbf1c34c708c6992a1a417252f', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 20:11:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf0d08de3cfd4b87a3c3a4df633a6fb3', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:46:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c0aedd6d2bc94f6881669bbef65c5e8f', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:18:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c0cbd38c9c0e4a3fb2f68d3c212f1054', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-08 17:43:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'parent.id=373824f668c24c93abcb57f54500e4ee', '');
INSERT INTO `sys_log` VALUES ('c3c92d4eca1945e099b3a690d66864d2', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:41:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c3e6fc05671a4a60a264456a224a8cea', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 17:49:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c3ebdbd255c9490696d3c6527fced8ad', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:31:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c4b10c760deb44c3973df3341a544694', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:50:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c5074d1c2c7f4bc69a589821e3a63858', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:33:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', 'id=03f73ad9b79341108a86938abb4c216b', '');
INSERT INTO `sys_log` VALUES ('c5ba83de287d49a095fae4a83caf6514', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:48:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c6541e42fd674b529c8883dd433611ab', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:03:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c683f36e63364624b53534fc5c892699', '1', '后台管理-设置管理-配置管理', '1', '2019-12-08 17:45:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cb43e1b57422468e86bba7dc14643795', '1', '系统设置-机构用户-用户管理', '1', '2019-12-08 17:45:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cebf61851e5f428f8519fa27af454896', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-08 17:45:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cfd41d6be79a4b32a84e89057031e1d4', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:58:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d16a38bd984b4e40a387cf04f003b122', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:15:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d4881001ce5f4b529128cef1139a0ea1', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:27:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d6151d2ed5864a25904f1da1eac7f677', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:53:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d7c378b312114256a27cbfc650f4fd7f', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:58:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d80bcdfaf8f746a4832d775ddd69d0ca', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:19:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d845e3a992864946b7a2f503f9308ee3', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:50:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d85a0ec5f5964ca69645af1f37a5f6f5', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:50:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('da5b59772ce64445b3e35779a17eaf6e', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:48:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('da6f208d5bf9497cb4d90c3a9d19f712', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:46:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('da7ed3e5e1034423bf5c54592e4ead7d', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:07:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dce6542c11ad463dbe40c771360fba92', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:50:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dd7f4d6c66e54b268adb5652d8a18e95', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-08 17:39:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e0e16a4001b54bb4ac8ca6dd3d37107a', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:52:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e2786b06a1be4ad7968ac61e159d9a50', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 17:46:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e33507f6e2734f34a290b959a732fbbb', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:48:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e3a24590b384495283defe64de3d7b46', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 18:12:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e4ae3445948c4058b0636c522edcc037', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:50:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e610a0a395fa476481f4b3f901976e9c', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:45:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e650f792739b411995b958d958644896', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:54:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e6890be661c2422dba06ea6febffef0e', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-08 17:45:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=373824f668c24c93abcb57f54500e4ee', '');
INSERT INTO `sys_log` VALUES ('e8883dde0c6647228261bb11d049627f', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:45:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e985d03bb3c84bb7b711e9da99aa121e', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 21:56:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e9ec079924a24ca29ed8949dd5ae754c', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:40:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eb121a4a254e4544a058cd0f56849ebb', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 21:36:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eb8eea946fb44bfba82a8f540018e2ae', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:18:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ebe3d94b67e841a880587f87102247ea', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:26:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ec02a823caf54b36beb9ebac08874538', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:55:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ec28be93ac2642cbbff72e612396b901', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 21:37:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eda389e2e5a543f790f1a213e5dfd579', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-08 17:41:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ee4045f9698b44bd89aa871a233d3051', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:54:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eee43f7bddb54cb085d6b26f9375200b', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 21:09:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f18a7874a68e4b408eff9e20f245f540', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:54:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f3e093fc302a4ba09c6d9e9430a87c77', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-08 22:04:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f4ae8d546d944259828582fc9d6e3188', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:43:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f567fbe39cff421dada00c40f1743701', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:49:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f673f36a49b44da0bab1afa56872cc0f', '1', '我的面板-个人信息-个人信息', '1', '2019-12-08 20:15:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f6cc9ec508474cf393028e25d07c7fdf', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:46:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f802e96f47994485be448d9cd6408aec', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-08 17:40:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f84da84e23334d1ebf4355a67dabfb7b', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 20:53:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f891f3751c7848dfa9753e6ac41c532e', '1', '后台管理-系统设置-配置管理', '1', '2019-12-08 21:35:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f96c676c8cf94bffa277d5a73617a531', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-08 17:42:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fd341b4c4bd242fc8c5b5ebab1de203d', '1', '系统设置-系统设置-菜单管理-修改', '1', '2019-12-08 17:44:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/save', 'POST', 'id=&parent.id=373824f668c24c93abcb57f54500e4ee&parent.name=设置管理&name=配置管理&href=/memp/mempSetting/form&target=&icon=&sort=30&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('fdde0ee40fa84678a4a0712040ed26ab', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-08 17:42:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=13', '');

-- ----------------------------
-- Table structure for sys_mdict
-- ----------------------------
DROP TABLE IF EXISTS `sys_mdict`;
CREATE TABLE `sys_mdict`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_mdict_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_mdict_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '多级字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `href` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `is_show` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_menu_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_menu_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('007570a6dc224e57b474dfb33ff337fd', '1', '0,1,', '后台管理', 5030, '', '', '', '1', '', '1', '2019-12-08 17:40:38', '1', '2019-12-08 17:40:38', '', '0');
INSERT INTO `sys_menu` VALUES ('0b2ebd4d639e4c2b83c2dd0764522f24', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '编辑', 60, '', '', '', '0', 'test:testData:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('0ca004d6b1bf4bcab9670a5060d82a55', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '树结构', 90, '/test/testTree', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '功能菜单', 0, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('10', '3', '0,1,2,3,', '字典管理', 60, '/sys/dict/', NULL, 'th-list', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '0,1,2,3,10,', '查看', 30, NULL, NULL, NULL, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('12', '10', '0,1,2,3,10,', '修改', 40, NULL, NULL, NULL, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('13', '2', '0,1,2,', '机构用户', 970, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('14', '13', '0,1,2,13,', '区域管理', 50, '/sys/area/', NULL, 'th', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('15', '14', '0,1,2,13,14,', '查看', 30, NULL, NULL, NULL, '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('16', '14', '0,1,2,13,14,', '修改', 40, NULL, NULL, NULL, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('17', '13', '0,1,2,13,', '机构管理', 40, '/sys/office/', NULL, 'th-large', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('18', '17', '0,1,2,13,17,', '查看', 30, NULL, NULL, NULL, '0', 'sys:office:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('19', '17', '0,1,2,13,17,', '修改', 40, NULL, NULL, NULL, '0', 'sys:office:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '0,1,', '系统设置', 900, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', 30, '/sys/user/index', NULL, 'user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', 30, NULL, NULL, NULL, '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', 40, NULL, NULL, NULL, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('23', '2', '0,1,2,', '关于帮助', 990, NULL, NULL, NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('24', '23', '0,1,2,23', '官方首页', 30, 'http://jeesite.com', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('25', '23', '0,1,2,23', '项目支持', 50, 'http://jeesite.com/donation.html', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('26', '23', '0,1,2,23', '论坛交流', 80, 'http://bbs.jeesite.com', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('27', '1', '0,1,', '我的面板', 100, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('28', '27', '0,1,27,', '个人信息', 30, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,1,27,28,', '个人信息', 30, '/sys/user/info', NULL, 'user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,1,2,', '系统设置', 980, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,1,27,28,', '修改密码', 40, '/sys/user/modifyPwd', NULL, 'lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('31', '1', '0,1,', '内容管理', 500, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('32', '31', '0,1,31,', '栏目设置', 990, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('33', '32', '0,1,31,32', '栏目管理', 30, '/cms/category/', NULL, 'align-justify', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('34', '33', '0,1,31,32,33,', '查看', 30, NULL, NULL, NULL, '0', 'cms:category:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('35', '33', '0,1,31,32,33,', '修改', 40, NULL, NULL, NULL, '0', 'cms:category:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('36', '32', '0,1,31,32', '站点设置', 40, '/cms/site/', NULL, 'certificate', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('37', '36', '0,1,31,32,36,', '查看', 30, NULL, NULL, NULL, '0', 'cms:site:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('373824f668c24c93abcb57f54500e4ee', '007570a6dc224e57b474dfb33ff337fd', '0,1,007570a6dc224e57b474dfb33ff337fd,', '系统设置', 30, '', '', '', '1', '', '1', '2019-12-08 17:42:38', '1', '2019-12-08 17:45:52', '', '0');
INSERT INTO `sys_menu` VALUES ('38', '36', '0,1,31,32,36,', '修改', 40, NULL, NULL, NULL, '0', 'cms:site:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('39', '32', '0,1,31,32', '切换站点', 50, '/cms/site/select', NULL, 'retweet', '1', 'cms:site:select', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('3c92c17886944d0687e73e286cada573', '79', '0,1,79,', '生成示例', 120, '', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', 30, '/sys/menu/', NULL, 'list-alt', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('40', '31', '0,1,31,', '内容管理', 500, NULL, NULL, NULL, '1', 'cms:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('41', '40', '0,1,31,40,', '内容发布', 30, '/cms/', NULL, 'briefcase', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('42', '41', '0,1,31,40,41,', '文章模型', 40, '/cms/article/', NULL, 'file', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('43', '42', '0,1,31,40,41,42,', '查看', 30, NULL, NULL, NULL, '0', 'cms:article:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('44', '42', '0,1,31,40,41,42,', '修改', 40, NULL, NULL, NULL, '0', 'cms:article:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('45', '42', '0,1,31,40,41,42,', '审核', 50, NULL, NULL, NULL, '0', 'cms:article:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('46', '41', '0,1,31,40,41,', '链接模型', 60, '/cms/link/', NULL, 'random', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('47', '46', '0,1,31,40,41,46,', '查看', 30, NULL, NULL, NULL, '0', 'cms:link:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('48', '46', '0,1,31,40,41,46,', '修改', 40, NULL, NULL, NULL, '0', 'cms:link:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('4855cf3b25c244fb8500a380db189d97', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '查看', 30, '', '', '', '0', 'test:testDataMain:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('49', '46', '0,1,31,40,41,46,', '审核', 50, NULL, NULL, NULL, '0', 'cms:link:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', 30, NULL, NULL, NULL, '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('50', '40', '0,1,31,40,', '评论管理', 40, '/cms/comment/?status=2', NULL, 'comment', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('51', '50', '0,1,31,40,50,', '查看', 30, NULL, NULL, NULL, '0', 'cms:comment:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('52', '50', '0,1,31,40,50,', '审核', 40, NULL, NULL, NULL, '0', 'cms:comment:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('53', '40', '0,1,31,40,', '公共留言', 80, '/cms/guestbook/?status=2', NULL, 'glass', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('54', '53', '0,1,31,40,53,', '查看', 30, NULL, NULL, NULL, '0', 'cms:guestbook:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('55', '53', '0,1,31,40,53,', '审核', 40, NULL, NULL, NULL, '0', 'cms:guestbook:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('56', '71', '0,1,27,71,', '文件管理', 90, '/../static/ckfinder/ckfinder.html', NULL, 'folder-open', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('57', '56', '0,1,27,40,56,', '查看', 30, NULL, NULL, NULL, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('58', '56', '0,1,27,40,56,', '上传', 40, NULL, NULL, NULL, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('59', '56', '0,1,27,40,56,', '修改', 50, NULL, NULL, NULL, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', 40, NULL, NULL, NULL, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('60', '31', '0,1,31,', '统计分析', 600, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('61', '60', '0,1,31,60,', '信息量统计', 30, '/cms/stats/article', NULL, 'tasks', '1', 'cms:stats:article', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('62', '1', '0,1,', '在线办公', 200, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('63', '62', '0,1,62,', '个人办公', 30, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('64', '63', '0,1,62,63,', '请假办理', 300, '/oa/leave', NULL, 'leaf', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('65', '64', '0,1,62,63,64,', '查看', 30, NULL, NULL, NULL, '0', 'oa:leave:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('66', '64', '0,1,62,63,64,', '修改', 40, NULL, NULL, NULL, '0', 'oa:leave:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('67', '2', '0,1,2,', '日志查询', 985, NULL, NULL, NULL, '1', NULL, '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,1,2,67,', '日志查询', 30, '/sys/log', NULL, 'pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('69', '62', '0,1,62,', '流程管理', 300, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', 50, '/sys/role/', NULL, 'lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('70', '69', '0,1,62,69,', '流程管理', 50, '/act/process', NULL, 'road', '1', 'act:process:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('71', '27', '0,1,27,', '文件管理', 90, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('72', '69', '0,1,62,69,', '模型管理', 100, '/act/model', NULL, 'road', '1', 'act:model:edit', '1', '2013-09-20 08:00:00', '1', '2013-09-20 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('73', '63', '0,1,62,63,', '我的任务', 50, '/act/task/todo/', NULL, 'tasks', '1', NULL, '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('74', '63', '0,1,62,63,', '审批测试', 100, '/oa/testAudit', NULL, NULL, '1', 'oa:testAudit:view,oa:testAudit:edit', '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('75', '1', '0,1,', '在线演示', 3000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-08 08:00:00', '1', '2013-10-08 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('79', '1', '0,1,', '代码生成', 5000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', 30, NULL, NULL, NULL, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('80', '79', '0,1,79,', '代码生成', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('81', '80', '0,1,79,80,', '生成方案配置', 30, '/gen/genScheme', NULL, NULL, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('82', '80', '0,1,79,80,', '业务表配置', 20, '/gen/genTable', NULL, NULL, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('83', '80', '0,1,79,80,', '代码模板管理', 90, '/gen/genTemplate', NULL, NULL, '1', 'gen:genTemplate:view,gen:genTemplate:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('84', '67', '0,1,2,67,', '连接池监视', 40, '/../druid', NULL, NULL, '1', NULL, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('85', '76', '0,1,75,76,', '行政区域', 80, '/../static/map/map-city.html', NULL, NULL, '1', NULL, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('86', '75', '0,1,75,', '组件演示', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('87', '86', '0,1,75,86,', '组件演示', 30, '/test/test/form', NULL, NULL, '1', 'test:test:view,test:test:edit', '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('88', '62', '0,1,62,', '通知通告', 20, '', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('89', '88', '0,1,62,88,', '我的通告', 30, '/oa/oaNotify/self', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', 40, NULL, NULL, NULL, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('90', '88', '0,1,62,88,', '通告管理', 50, '/oa/oaNotify', '', '', '1', 'oa:oaNotify:view,oa:oaNotify:edit', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('956bd88fdd7c4c25960dc784382cf548', '373824f668c24c93abcb57f54500e4ee', '0,1,007570a6dc224e57b474dfb33ff337fd,373824f668c24c93abcb57f54500e4ee,', '配置管理', 30, '/memp/mempSetting/form', '', 'cogs', '1', '', '1', '2019-12-08 17:44:05', '1', '2019-12-08 17:45:13', '', '0');
INSERT INTO `sys_menu` VALUES ('afab2db430e2457f9cf3a11feaa8b869', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '编辑', 60, '', '', '', '0', 'test:testTree:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('b1f6d1b86ba24365bae7fd86c5082317', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '主子表', 60, '/test/testDataMain', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('ba8092291b40482db8fe7fc006ea3d76', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '单表', 30, '/test/testData', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('c2e4d9082a0b4386884a0b203afe2c5c', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '查看', 30, '', '', '', '0', 'test:testTree:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('d15ec45a4c5449c3bbd7a61d5f9dd1d2', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '编辑', 60, '', '', '', '0', 'test:testDataMain:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('df7ce823c5b24ff9bada43d992f373e2', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '查看', 30, '', '', '', '0', 'test:testData:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');

-- ----------------------------
-- Table structure for sys_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '归属区域',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域编码',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构类型',
  `grade` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构等级',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_office_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_office_del_flag`(`del_flag`) USING BTREE,
  INDEX `sys_office_type`(`type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机构表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('1', '0', '0,', '总公司', 10, '2', '100000', '1', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2019-12-08 14:18:14', '', '0');
INSERT INTO `sys_office` VALUES ('10', '7', '0,1,7,', '市场部', 30, '3', '200003', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('11', '7', '0,1,7,', '技术部', 40, '3', '200004', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('12', '7', '0,1,7,', '历城区分公司', 0, '4', '201000', '1', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('13', '12', '0,1,7,12,', '公司领导', 10, '4', '201001', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('14', '12', '0,1,7,12,', '综合部', 20, '4', '201002', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('15', '12', '0,1,7,12,', '市场部', 30, '4', '201003', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('16', '12', '0,1,7,12,', '技术部', 40, '4', '201004', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('17', '7', '0,1,7,', '历下区分公司', 40, '5', '201010', '1', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('18', '17', '0,1,7,17,', '公司领导', 10, '5', '201011', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('19', '17', '0,1,7,17,', '综合部', 20, '5', '201012', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('2', '1', '0,1,', '公司领导', 10, '2', '100001', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_office` VALUES ('20', '17', '0,1,7,17,', '市场部', 30, '5', '201013', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('21', '17', '0,1,7,17,', '技术部', 40, '5', '201014', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('22', '7', '0,1,7,', '高新区分公司', 50, '6', '201010', '1', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('23', '22', '0,1,7,22,', '公司领导', 10, '6', '201011', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('24', '22', '0,1,7,22,', '综合部', 20, '6', '201012', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('25', '22', '0,1,7,22,', '市场部', 30, '6', '201013', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('26', '22', '0,1,7,22,', '技术部', 40, '6', '201014', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('3', '1', '0,1,', '综合部', 20, '2', '100002', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('4', '1', '0,1,', '市场部', 30, '2', '100003', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('5', '1', '0,1,', '技术部', 40, '2', '100004', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('6', '1', '0,1,', '研发部', 50, '2', '100005', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('7', '1', '0,1,', '济南市分公司', 20, '3', '200000', '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('8', '7', '0,1,7,', '公司领导', 10, '3', '200001', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('9', '7', '0,1,7,', '综合部', 20, '3', '200002', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `office_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `enname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_role_del_flag`(`del_flag`) USING BTREE,
  INDEX `sys_role_enname`(`enname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '1', '系统管理员', 'dept', 'assignment', '1', NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_role` VALUES ('2', '1', '公司管理员', 'hr', 'assignment', '2', NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_role` VALUES ('3', '1', '本公司管理员', 'a', 'assignment', '3', NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_role` VALUES ('4', '1', '部门管理员', 'b', 'assignment', '4', NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_role` VALUES ('5', '1', '本部门管理员', 'c', 'assignment', '5', NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_role` VALUES ('6', '1', '普通用户', 'd', 'assignment', '8', NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_role` VALUES ('7', '7', '济南市管理员', 'e', 'assignment', '9', NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色-菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '23');
INSERT INTO `sys_role_menu` VALUES ('1', '24');
INSERT INTO `sys_role_menu` VALUES ('1', '25');
INSERT INTO `sys_role_menu` VALUES ('1', '26');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '29');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '32');
INSERT INTO `sys_role_menu` VALUES ('1', '33');
INSERT INTO `sys_role_menu` VALUES ('1', '34');
INSERT INTO `sys_role_menu` VALUES ('1', '35');
INSERT INTO `sys_role_menu` VALUES ('1', '36');
INSERT INTO `sys_role_menu` VALUES ('1', '37');
INSERT INTO `sys_role_menu` VALUES ('1', '38');
INSERT INTO `sys_role_menu` VALUES ('1', '39');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '40');
INSERT INTO `sys_role_menu` VALUES ('1', '41');
INSERT INTO `sys_role_menu` VALUES ('1', '42');
INSERT INTO `sys_role_menu` VALUES ('1', '43');
INSERT INTO `sys_role_menu` VALUES ('1', '44');
INSERT INTO `sys_role_menu` VALUES ('1', '45');
INSERT INTO `sys_role_menu` VALUES ('1', '46');
INSERT INTO `sys_role_menu` VALUES ('1', '47');
INSERT INTO `sys_role_menu` VALUES ('1', '48');
INSERT INTO `sys_role_menu` VALUES ('1', '49');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '50');
INSERT INTO `sys_role_menu` VALUES ('1', '51');
INSERT INTO `sys_role_menu` VALUES ('1', '52');
INSERT INTO `sys_role_menu` VALUES ('1', '53');
INSERT INTO `sys_role_menu` VALUES ('1', '54');
INSERT INTO `sys_role_menu` VALUES ('1', '55');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '57');
INSERT INTO `sys_role_menu` VALUES ('1', '58');
INSERT INTO `sys_role_menu` VALUES ('1', '59');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '60');
INSERT INTO `sys_role_menu` VALUES ('1', '61');
INSERT INTO `sys_role_menu` VALUES ('1', '62');
INSERT INTO `sys_role_menu` VALUES ('1', '63');
INSERT INTO `sys_role_menu` VALUES ('1', '64');
INSERT INTO `sys_role_menu` VALUES ('1', '65');
INSERT INTO `sys_role_menu` VALUES ('1', '66');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '68');
INSERT INTO `sys_role_menu` VALUES ('1', '69');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '70');
INSERT INTO `sys_role_menu` VALUES ('1', '71');
INSERT INTO `sys_role_menu` VALUES ('1', '72');
INSERT INTO `sys_role_menu` VALUES ('1', '73');
INSERT INTO `sys_role_menu` VALUES ('1', '74');
INSERT INTO `sys_role_menu` VALUES ('1', '75');
INSERT INTO `sys_role_menu` VALUES ('1', '76');
INSERT INTO `sys_role_menu` VALUES ('1', '77');
INSERT INTO `sys_role_menu` VALUES ('1', '78');
INSERT INTO `sys_role_menu` VALUES ('1', '79');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '80');
INSERT INTO `sys_role_menu` VALUES ('1', '81');
INSERT INTO `sys_role_menu` VALUES ('1', '82');
INSERT INTO `sys_role_menu` VALUES ('1', '83');
INSERT INTO `sys_role_menu` VALUES ('1', '84');
INSERT INTO `sys_role_menu` VALUES ('1', '85');
INSERT INTO `sys_role_menu` VALUES ('1', '86');
INSERT INTO `sys_role_menu` VALUES ('1', '87');
INSERT INTO `sys_role_menu` VALUES ('1', '88');
INSERT INTO `sys_role_menu` VALUES ('1', '89');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '90');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '10');
INSERT INTO `sys_role_menu` VALUES ('2', '11');
INSERT INTO `sys_role_menu` VALUES ('2', '12');
INSERT INTO `sys_role_menu` VALUES ('2', '13');
INSERT INTO `sys_role_menu` VALUES ('2', '14');
INSERT INTO `sys_role_menu` VALUES ('2', '15');
INSERT INTO `sys_role_menu` VALUES ('2', '16');
INSERT INTO `sys_role_menu` VALUES ('2', '17');
INSERT INTO `sys_role_menu` VALUES ('2', '18');
INSERT INTO `sys_role_menu` VALUES ('2', '19');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '20');
INSERT INTO `sys_role_menu` VALUES ('2', '21');
INSERT INTO `sys_role_menu` VALUES ('2', '22');
INSERT INTO `sys_role_menu` VALUES ('2', '23');
INSERT INTO `sys_role_menu` VALUES ('2', '24');
INSERT INTO `sys_role_menu` VALUES ('2', '25');
INSERT INTO `sys_role_menu` VALUES ('2', '26');
INSERT INTO `sys_role_menu` VALUES ('2', '27');
INSERT INTO `sys_role_menu` VALUES ('2', '28');
INSERT INTO `sys_role_menu` VALUES ('2', '29');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '30');
INSERT INTO `sys_role_menu` VALUES ('2', '31');
INSERT INTO `sys_role_menu` VALUES ('2', '32');
INSERT INTO `sys_role_menu` VALUES ('2', '33');
INSERT INTO `sys_role_menu` VALUES ('2', '34');
INSERT INTO `sys_role_menu` VALUES ('2', '35');
INSERT INTO `sys_role_menu` VALUES ('2', '36');
INSERT INTO `sys_role_menu` VALUES ('2', '37');
INSERT INTO `sys_role_menu` VALUES ('2', '38');
INSERT INTO `sys_role_menu` VALUES ('2', '39');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '40');
INSERT INTO `sys_role_menu` VALUES ('2', '41');
INSERT INTO `sys_role_menu` VALUES ('2', '42');
INSERT INTO `sys_role_menu` VALUES ('2', '43');
INSERT INTO `sys_role_menu` VALUES ('2', '44');
INSERT INTO `sys_role_menu` VALUES ('2', '45');
INSERT INTO `sys_role_menu` VALUES ('2', '46');
INSERT INTO `sys_role_menu` VALUES ('2', '47');
INSERT INTO `sys_role_menu` VALUES ('2', '48');
INSERT INTO `sys_role_menu` VALUES ('2', '49');
INSERT INTO `sys_role_menu` VALUES ('2', '5');
INSERT INTO `sys_role_menu` VALUES ('2', '50');
INSERT INTO `sys_role_menu` VALUES ('2', '51');
INSERT INTO `sys_role_menu` VALUES ('2', '52');
INSERT INTO `sys_role_menu` VALUES ('2', '53');
INSERT INTO `sys_role_menu` VALUES ('2', '54');
INSERT INTO `sys_role_menu` VALUES ('2', '55');
INSERT INTO `sys_role_menu` VALUES ('2', '56');
INSERT INTO `sys_role_menu` VALUES ('2', '57');
INSERT INTO `sys_role_menu` VALUES ('2', '58');
INSERT INTO `sys_role_menu` VALUES ('2', '59');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '60');
INSERT INTO `sys_role_menu` VALUES ('2', '61');
INSERT INTO `sys_role_menu` VALUES ('2', '62');
INSERT INTO `sys_role_menu` VALUES ('2', '63');
INSERT INTO `sys_role_menu` VALUES ('2', '64');
INSERT INTO `sys_role_menu` VALUES ('2', '65');
INSERT INTO `sys_role_menu` VALUES ('2', '66');
INSERT INTO `sys_role_menu` VALUES ('2', '67');
INSERT INTO `sys_role_menu` VALUES ('2', '68');
INSERT INTO `sys_role_menu` VALUES ('2', '69');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '70');
INSERT INTO `sys_role_menu` VALUES ('2', '71');
INSERT INTO `sys_role_menu` VALUES ('2', '72');
INSERT INTO `sys_role_menu` VALUES ('2', '73');
INSERT INTO `sys_role_menu` VALUES ('2', '74');
INSERT INTO `sys_role_menu` VALUES ('2', '75');
INSERT INTO `sys_role_menu` VALUES ('2', '76');
INSERT INTO `sys_role_menu` VALUES ('2', '77');
INSERT INTO `sys_role_menu` VALUES ('2', '78');
INSERT INTO `sys_role_menu` VALUES ('2', '79');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '80');
INSERT INTO `sys_role_menu` VALUES ('2', '81');
INSERT INTO `sys_role_menu` VALUES ('2', '82');
INSERT INTO `sys_role_menu` VALUES ('2', '83');
INSERT INTO `sys_role_menu` VALUES ('2', '84');
INSERT INTO `sys_role_menu` VALUES ('2', '85');
INSERT INTO `sys_role_menu` VALUES ('2', '86');
INSERT INTO `sys_role_menu` VALUES ('2', '87');
INSERT INTO `sys_role_menu` VALUES ('2', '88');
INSERT INTO `sys_role_menu` VALUES ('2', '89');
INSERT INTO `sys_role_menu` VALUES ('2', '9');
INSERT INTO `sys_role_menu` VALUES ('2', '90');
INSERT INTO `sys_role_menu` VALUES ('3', '1');
INSERT INTO `sys_role_menu` VALUES ('3', '10');
INSERT INTO `sys_role_menu` VALUES ('3', '11');
INSERT INTO `sys_role_menu` VALUES ('3', '12');
INSERT INTO `sys_role_menu` VALUES ('3', '13');
INSERT INTO `sys_role_menu` VALUES ('3', '14');
INSERT INTO `sys_role_menu` VALUES ('3', '15');
INSERT INTO `sys_role_menu` VALUES ('3', '16');
INSERT INTO `sys_role_menu` VALUES ('3', '17');
INSERT INTO `sys_role_menu` VALUES ('3', '18');
INSERT INTO `sys_role_menu` VALUES ('3', '19');
INSERT INTO `sys_role_menu` VALUES ('3', '2');
INSERT INTO `sys_role_menu` VALUES ('3', '20');
INSERT INTO `sys_role_menu` VALUES ('3', '21');
INSERT INTO `sys_role_menu` VALUES ('3', '22');
INSERT INTO `sys_role_menu` VALUES ('3', '23');
INSERT INTO `sys_role_menu` VALUES ('3', '24');
INSERT INTO `sys_role_menu` VALUES ('3', '25');
INSERT INTO `sys_role_menu` VALUES ('3', '26');
INSERT INTO `sys_role_menu` VALUES ('3', '27');
INSERT INTO `sys_role_menu` VALUES ('3', '28');
INSERT INTO `sys_role_menu` VALUES ('3', '29');
INSERT INTO `sys_role_menu` VALUES ('3', '3');
INSERT INTO `sys_role_menu` VALUES ('3', '30');
INSERT INTO `sys_role_menu` VALUES ('3', '31');
INSERT INTO `sys_role_menu` VALUES ('3', '32');
INSERT INTO `sys_role_menu` VALUES ('3', '33');
INSERT INTO `sys_role_menu` VALUES ('3', '34');
INSERT INTO `sys_role_menu` VALUES ('3', '35');
INSERT INTO `sys_role_menu` VALUES ('3', '36');
INSERT INTO `sys_role_menu` VALUES ('3', '37');
INSERT INTO `sys_role_menu` VALUES ('3', '38');
INSERT INTO `sys_role_menu` VALUES ('3', '39');
INSERT INTO `sys_role_menu` VALUES ('3', '4');
INSERT INTO `sys_role_menu` VALUES ('3', '40');
INSERT INTO `sys_role_menu` VALUES ('3', '41');
INSERT INTO `sys_role_menu` VALUES ('3', '42');
INSERT INTO `sys_role_menu` VALUES ('3', '43');
INSERT INTO `sys_role_menu` VALUES ('3', '44');
INSERT INTO `sys_role_menu` VALUES ('3', '45');
INSERT INTO `sys_role_menu` VALUES ('3', '46');
INSERT INTO `sys_role_menu` VALUES ('3', '47');
INSERT INTO `sys_role_menu` VALUES ('3', '48');
INSERT INTO `sys_role_menu` VALUES ('3', '49');
INSERT INTO `sys_role_menu` VALUES ('3', '5');
INSERT INTO `sys_role_menu` VALUES ('3', '50');
INSERT INTO `sys_role_menu` VALUES ('3', '51');
INSERT INTO `sys_role_menu` VALUES ('3', '52');
INSERT INTO `sys_role_menu` VALUES ('3', '53');
INSERT INTO `sys_role_menu` VALUES ('3', '54');
INSERT INTO `sys_role_menu` VALUES ('3', '55');
INSERT INTO `sys_role_menu` VALUES ('3', '56');
INSERT INTO `sys_role_menu` VALUES ('3', '57');
INSERT INTO `sys_role_menu` VALUES ('3', '58');
INSERT INTO `sys_role_menu` VALUES ('3', '59');
INSERT INTO `sys_role_menu` VALUES ('3', '6');
INSERT INTO `sys_role_menu` VALUES ('3', '60');
INSERT INTO `sys_role_menu` VALUES ('3', '61');
INSERT INTO `sys_role_menu` VALUES ('3', '62');
INSERT INTO `sys_role_menu` VALUES ('3', '63');
INSERT INTO `sys_role_menu` VALUES ('3', '64');
INSERT INTO `sys_role_menu` VALUES ('3', '65');
INSERT INTO `sys_role_menu` VALUES ('3', '66');
INSERT INTO `sys_role_menu` VALUES ('3', '67');
INSERT INTO `sys_role_menu` VALUES ('3', '68');
INSERT INTO `sys_role_menu` VALUES ('3', '69');
INSERT INTO `sys_role_menu` VALUES ('3', '7');
INSERT INTO `sys_role_menu` VALUES ('3', '70');
INSERT INTO `sys_role_menu` VALUES ('3', '71');
INSERT INTO `sys_role_menu` VALUES ('3', '72');
INSERT INTO `sys_role_menu` VALUES ('3', '73');
INSERT INTO `sys_role_menu` VALUES ('3', '74');
INSERT INTO `sys_role_menu` VALUES ('3', '75');
INSERT INTO `sys_role_menu` VALUES ('3', '76');
INSERT INTO `sys_role_menu` VALUES ('3', '77');
INSERT INTO `sys_role_menu` VALUES ('3', '78');
INSERT INTO `sys_role_menu` VALUES ('3', '79');
INSERT INTO `sys_role_menu` VALUES ('3', '8');
INSERT INTO `sys_role_menu` VALUES ('3', '80');
INSERT INTO `sys_role_menu` VALUES ('3', '81');
INSERT INTO `sys_role_menu` VALUES ('3', '82');
INSERT INTO `sys_role_menu` VALUES ('3', '83');
INSERT INTO `sys_role_menu` VALUES ('3', '84');
INSERT INTO `sys_role_menu` VALUES ('3', '85');
INSERT INTO `sys_role_menu` VALUES ('3', '86');
INSERT INTO `sys_role_menu` VALUES ('3', '87');
INSERT INTO `sys_role_menu` VALUES ('3', '88');
INSERT INTO `sys_role_menu` VALUES ('3', '89');
INSERT INTO `sys_role_menu` VALUES ('3', '9');
INSERT INTO `sys_role_menu` VALUES ('3', '90');

-- ----------------------------
-- Table structure for sys_role_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office`  (
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`, `office_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色-机构' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_office
-- ----------------------------
INSERT INTO `sys_role_office` VALUES ('7', '10');
INSERT INTO `sys_role_office` VALUES ('7', '11');
INSERT INTO `sys_role_office` VALUES ('7', '12');
INSERT INTO `sys_role_office` VALUES ('7', '13');
INSERT INTO `sys_role_office` VALUES ('7', '14');
INSERT INTO `sys_role_office` VALUES ('7', '15');
INSERT INTO `sys_role_office` VALUES ('7', '16');
INSERT INTO `sys_role_office` VALUES ('7', '17');
INSERT INTO `sys_role_office` VALUES ('7', '18');
INSERT INTO `sys_role_office` VALUES ('7', '19');
INSERT INTO `sys_role_office` VALUES ('7', '20');
INSERT INTO `sys_role_office` VALUES ('7', '21');
INSERT INTO `sys_role_office` VALUES ('7', '22');
INSERT INTO `sys_role_office` VALUES ('7', '23');
INSERT INTO `sys_role_office` VALUES ('7', '24');
INSERT INTO `sys_role_office` VALUES ('7', '25');
INSERT INTO `sys_role_office` VALUES ('7', '26');
INSERT INTO `sys_role_office` VALUES ('7', '7');
INSERT INTO `sys_role_office` VALUES ('7', '8');
INSERT INTO `sys_role_office` VALUES ('7', '9');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `company_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `user_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_user_office_id`(`office_id`) USING BTREE,
  INDEX `sys_user_login_name`(`login_name`) USING BTREE,
  INDEX `sys_user_company_id`(`company_id`) USING BTREE,
  INDEX `sys_user_update_date`(`update_date`) USING BTREE,
  INDEX `sys_user_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '2', 'thinkgem', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0001', '系统管理员', 'thinkgem@163.com', '8675', '8675', NULL, NULL, '0:0:0:0:0:0:0:1', '2019-12-08 22:45:45', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', '最高管理员', '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户-角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '2');
INSERT INTO `sys_user_role` VALUES ('10', '2');
INSERT INTO `sys_user_role` VALUES ('11', '3');
INSERT INTO `sys_user_role` VALUES ('12', '4');
INSERT INTO `sys_user_role` VALUES ('13', '5');
INSERT INTO `sys_user_role` VALUES ('14', '6');
INSERT INTO `sys_user_role` VALUES ('2', '1');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('4', '3');
INSERT INTO `sys_user_role` VALUES ('5', '4');
INSERT INTO `sys_user_role` VALUES ('6', '5');
INSERT INTO `sys_user_role` VALUES ('7', '2');
INSERT INTO `sys_user_role` VALUES ('7', '7');
INSERT INTO `sys_user_role` VALUES ('8', '2');
INSERT INTO `sys_user_role` VALUES ('9', '1');

SET FOREIGN_KEY_CHECKS = 1;
