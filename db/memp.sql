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

 Date: 16/12/2019 00:16:25
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
INSERT INTO `gen_scheme` VALUES ('0386c67640a8417aadc515ecd9cca316', '商品分类', 'curd', 'com.thinkgem.jeesite.modules', 'memp', '', '商品分类', '商品分类', 'yangqh', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', '1', '2019-12-15 17:56:45', '1', '2019-12-15 17:56:45', '', '1');
INSERT INTO `gen_scheme` VALUES ('1018d5a7dc284226b9426a18b7eb1d54', '商品分类', 'curd', 'com.thinkgem.jeesite.modules', 'memp', '', '商品分类', '商品分类', 'yangqh', 'c61de57033644e81a3cf96516a519d3d', '1', '2019-12-15 18:40:25', '1', '2019-12-15 18:40:25', '', '0');
INSERT INTO `gen_scheme` VALUES ('2002ef6201e54c23954d63f250fd8b15', '用户', 'curd', 'com.thinkgem.jeesite.modules', 'memp', '', '用户', '用户', 'yangqh', 'b5057ee926b242e0aa340380e6aedf48', '1', '2019-12-12 14:35:41', '1', '2019-12-12 14:35:41', '', '0');
INSERT INTO `gen_scheme` VALUES ('35a13dc260284a728a270db3f382664b', '树结构', 'treeTable', 'com.thinkgem.jeesite.modules', 'test', NULL, '树结构生成', '树结构', 'ThinkGem', 'f6e4dafaa72f4c509636484715f33a96', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '1');
INSERT INTO `gen_scheme` VALUES ('6c6f0be8472b4e329eee9e1425ea7e46', '商品分类', 'curd', 'com.thinkgem.jeesite.modules', 'memp', '', '商品分类', '商品分类', 'yangqh', '2a7cd9c44cc949cea2ba8db9872cd855', '1', '2019-12-15 17:30:25', '1', '2019-12-15 17:30:25', '', '1');
INSERT INTO `gen_scheme` VALUES ('948a96f37b674e048275115e59a903cf', '商品类型', 'curd', 'com.thinkgem.jeesite.modules', 'memp', '', '商品类型', '商品类型', 'yangqh', '0ddf379a951943c39613ed80f061fc91', '1', '2019-12-15 18:48:47', '1', '2019-12-15 18:48:47', '', '0');
INSERT INTO `gen_scheme` VALUES ('9c9de9db6da743bb899036c6546061ac', '单表', 'curd', 'com.thinkgem.jeesite.modules', 'test', NULL, '单表生成', '单表', 'ThinkGem', 'aef6f1fc948f4c9ab1c1b780bc471cc2', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '1');
INSERT INTO `gen_scheme` VALUES ('a4433e45c7864b288c4b25898d5078ff', '商品分类', 'curd', 'com.thinkgem.jeesite.modules', 'memp', '', '商品分类', '商品分类', 'yangqh', '823ad98cc24a4dbda7a8c25f6fd638a0', '1', '2019-12-15 18:14:33', '1', '2019-12-15 18:14:33', '', '1');
INSERT INTO `gen_scheme` VALUES ('a615eddd8ba34a0dbfb56c529174eb53', 'memp_user_weixin_info', 'curd', 'com.thinkgem.jeesite.modules', 'memp', '', '微信用户', '微信用户', 'yangqh', '46e80d0343d4403aa8f78fe4b0898263', '1', '2019-12-12 14:36:22', '1', '2019-12-12 14:36:22', '', '0');
INSERT INTO `gen_scheme` VALUES ('e6d905fd236b46d1af581dd32bdfb3b0', '主子表', 'curd_many', 'com.thinkgem.jeesite.modules', 'test', NULL, '主子表生成', '主子表', 'ThinkGem', '43d6d5acffa14c258340ce6765e46c6f', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '1');
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
INSERT INTO `gen_table` VALUES ('0ddf379a951943c39613ed80f061fc91', 'memp_product_type', '商品类型表', 'MempProductType', '', '', '1', '2019-12-15 18:48:20', '1', '2019-12-15 18:48:20', '', '0');
INSERT INTO `gen_table` VALUES ('27f523cdc2fc46c799ebdde95df7c750', 'memp_setting', '配置表', 'MempSetting', '', '', '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', '', '0');
INSERT INTO `gen_table` VALUES ('2a7cd9c44cc949cea2ba8db9872cd855', 'memp_product_category', '商品类型表', 'MempProductCategory', '', '', '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', '', '1');
INSERT INTO `gen_table` VALUES ('43d6d5acffa14c258340ce6765e46c6f', 'test_data_main', '业务数据表', 'TestDataMain', NULL, NULL, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table` VALUES ('46e80d0343d4403aa8f78fe4b0898263', 'memp_user_weixin_info', '用户微信信息', 'MempUserWeixinInfo', '', '', '1', '2019-12-12 14:35:07', '1', '2019-12-12 14:35:07', '', '0');
INSERT INTO `gen_table` VALUES ('6e05c389f3c6415ea34e55e9dfb28934', 'test_data_child', '业务数据子表', 'TestDataChild', 'test_data_main', 'test_data_main_id', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table` VALUES ('823ad98cc24a4dbda7a8c25f6fd638a0', 'memp_product_category', '商品分类表', 'MempProductCategory', '', '', '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', '', '1');
INSERT INTO `gen_table` VALUES ('aef6f1fc948f4c9ab1c1b780bc471cc2', 'test_data', '业务数据表', 'TestData', NULL, NULL, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table` VALUES ('b5057ee926b242e0aa340380e6aedf48', 'memp_user', '用户表', 'MempUser', '', '', '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', '', '0');
INSERT INTO `gen_table` VALUES ('c61de57033644e81a3cf96516a519d3d', 'memp_product_category', '商品分类表', 'MempProductCategory', '', '', '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', '', '0');
INSERT INTO `gen_table` VALUES ('e2a27bbbba6040e9b85a0e8d7f0a81c1', 'memp_product_category', '商品分类表', 'MempProductCategory', '', '', '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', '', '1');
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
INSERT INTO `gen_table_column` VALUES ('0299fdaa61d8424d8022d54d0b35917c', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', NULL, 110, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('02f872048edd4386a67bbf663eaade1e', '2a7cd9c44cc949cea2ba8db9872cd855', 'spec_info', '默认规则', 'varchar(255)', 'String', 'specInfo', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 50, '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('032cc90fcd0546019b392648452ebfeb', '46e80d0343d4403aa8f78fe4b0898263', 'device_id', '设备id', 'varchar(512)', 'String', 'deviceId', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 60, '1', '2019-12-12 14:35:07', '1', '2019-12-12 14:35:07', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('0902a0cb3e8f434280c20e9d771d0658', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '1', '1', '1', '1', '1', '=', 'radiobox', 'sex', NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('092be056d63343fbb02284f2b0529d3b', '27f523cdc2fc46c799ebdde95df7c750', 'create_by', '创建者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 70, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('09a95bf313524a77a9ac663836c40512', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 100, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('0c9de39c1013476989c147713f0cc971', '46e80d0343d4403aa8f78fe4b0898263', 'union_id', '统一开发平台的id', 'varchar(128)', 'String', 'unionId', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 50, '1', '2019-12-12 14:35:07', '1', '2019-12-12 14:35:07', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('103fc05c88ff40639875c2111881996a', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1099969535cc467b84bc9323e92a89d9', 'b5057ee926b242e0aa340380e6aedf48', 'account', '账号', 'varchar(64)', 'String', 'account', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 20, '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('12fa38dd986e41908f7fefa5839d1220', '6e05c389f3c6415ea34e55e9dfb28934', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('18a06a67c8194a95a39f4ded58e1c987', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 120, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('193dd448ea114492b2c3229aea96d716', 'c61de57033644e81a3cf96516a519d3d', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 130, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('195ee9241f954d008fe01625f4adbfef', 'f6e4dafaa72f4c509636484715f33a96', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('19c6478b8ff54c60910c2e4fc3d27503', '43d6d5acffa14c258340ce6765e46c6f', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1ac6562f753d4e599693840651ab2bf7', '43d6d5acffa14c258340ce6765e46c6f', 'in_date', '加入日期', 'date(7)', 'java.util.Date', 'inDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1b73d56248b34deba43b02f7bde21b85', 'b5057ee926b242e0aa340380e6aedf48', 'salt', '密码盐', 'varchar(64)', 'String', 'salt', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 40, '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1b8eb55f65284fa6b0a5879b6d8ad3ec', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'in_date', '加入日期', 'date(7)', 'java.util.Date', 'inDate', '0', '1', '1', '1', '0', '1', 'between', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1d5ca4d114be41e99f8dc42a682ba609', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'user_id', '归属用户', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'user.id|name', '0', '1', '1', '1', '1', '1', '=', 'userselect', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('20e57084219a4b559eb208480588c0da', 'c61de57033644e81a3cf96516a519d3d', 'unit', '单位', 'varchar(4)', 'String', 'unit', '0', '1', '1', '1', '1', '0', '=', 'input', '', NULL, 60, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('21756504ffdc487eb167a823f89c0c06', '43d6d5acffa14c258340ce6765e46c6f', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 10, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('23c6c664dbb64afbafb7ceea0bcdb16b', '27f523cdc2fc46c799ebdde95df7c750', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', NULL, 100, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('24bbdc0a555e4412a106ab1c5f03008e', 'f6e4dafaa72f4c509636484715f33a96', 'parent_ids', '所有父级编号', 'varchar2(2000)', 'String', 'parentIds', '0', '0', '1', '1', '0', '0', 'like', 'input', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('28b6bfa0646f4247acd674371a2d7b5a', 'b5057ee926b242e0aa340380e6aedf48', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 110, '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('2909a93c7d8143458ca4d6ebbcc426d8', '27f523cdc2fc46c799ebdde95df7c750', 'coin_rate', '乐币汇率', 'double(10,2)', 'Double', 'coinRate', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 40, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('2d8157a5b2694c8293a38281497a55b0', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('2ddf17f0bba445008d67dc9cfcab8ad6', '823ad98cc24a4dbda7a8c25f6fd638a0', 'sort_no', '排序', 'int(2)', 'String', 'sortNo', '0', '0', '1', '1', '1', '0', '=', 'input', '', NULL, 60, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('2de82f1c7dab4a409623460ba0dc5959', '27f523cdc2fc46c799ebdde95df7c750', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', NULL, 110, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('32fbc4ced0a547f6ad18dd98edfec860', '46e80d0343d4403aa8f78fe4b0898263', 'open_id', '微信对应第三方应用的唯一标识', 'varchar(128)', 'String', 'openId', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 40, '1', '2019-12-12 14:35:07', '1', '2019-12-12 14:35:07', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('33152ce420904594b3eac796a27f0560', '6e05c389f3c6415ea34e55e9dfb28934', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('33a9dbad17c84affbe6a13fe142e59f5', 'b5057ee926b242e0aa340380e6aedf48', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('35af241859624a01917ab64c3f4f0813', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 13, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('36643d9e729c4bc18114eacac63fe3fb', 'b5057ee926b242e0aa340380e6aedf48', 'password', '密码', 'varchar(128)', 'String', 'password', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 30, '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3815ec010333410f9603b2da50c9a085', '2a7cd9c44cc949cea2ba8db9872cd855', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 110, '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('398b4a03f06940bfb979ca574e1911e3', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('39d6f34aa9084f33a72963a315a01cab', '2a7cd9c44cc949cea2ba8db9872cd855', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', NULL, 100, '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('3a7cf23ae48a4c849ceb03feffc7a524', '43d6d5acffa14c258340ce6765e46c6f', 'area_id', '归属区域', 'nvarchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Area', 'area.id|name', '0', '1', '1', '1', '0', '0', '=', 'areaselect', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3b88387a4caa480e8cda69e91abfc8c0', '27f523cdc2fc46c799ebdde95df7c750', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3d9c32865bb44e85af73381df0ffbf3d', '43d6d5acffa14c258340ce6765e46c6f', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 11, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('416c76d2019b4f76a96d8dc3a8faf84c', 'f6e4dafaa72f4c509636484715f33a96', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('438f31a25e63461fb60793a60af41f63', 'c61de57033644e81a3cf96516a519d3d', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', NULL, 120, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('45e3dc57f6b5435dbef19e47d572b5a7', '46e80d0343d4403aa8f78fe4b0898263', 'user_id', '用户id', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'user.id|name', '0', '1', '1', '1', '0', '0', '=', 'userselect', '', NULL, 20, '1', '2019-12-12 14:35:07', '1', '2019-12-12 14:35:07', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('464ef05b6e3947bfa497273d7ad81fd2', '2a7cd9c44cc949cea2ba8db9872cd855', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('46e6d8283270493687085d29efdecb05', 'f6e4dafaa72f4c509636484715f33a96', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 11, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('4a0a1fff86ca46519477d66b82e01991', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('4be9b3fa3ff340d88c5247d79a334399', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'create_by', '创建者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 70, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('4c30d3e353b0467892ca4bd23435cdca', '823ad98cc24a4dbda7a8c25f6fd638a0', 'unit', '单位', 'varchar(4)', 'String', 'unit', '0', '1', '1', '1', '1', '0', '=', 'input', '', NULL, 50, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('4c8ef12cb6924b9ba44048ba9913150b', '43d6d5acffa14c258340ce6765e46c6f', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('53d65a3d306d4fac9e561db9d3c66912', '6e05c389f3c6415ea34e55e9dfb28934', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('56fa71c0bd7e4132931874e548dc9ba5', '6e05c389f3c6415ea34e55e9dfb28934', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('571e761f1251484c9a4169f275271d94', '27f523cdc2fc46c799ebdde95df7c750', 'commission_2', '二级佣金比例', 'double(10,0)', 'Double', 'commission2', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 30, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('577f480636364112b2193313482089ce', 'b5057ee926b242e0aa340380e6aedf48', 'headimg', '头像', 'varchar(256)', 'String', 'headimg', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 50, '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('59301f6ab7f24bfab6337205a0d50907', '46e80d0343d4403aa8f78fe4b0898263', 'user_info', '微信用户信息', 'varchar(2048)', 'String', 'userInfo', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 70, '1', '2019-12-12 14:35:07', '1', '2019-12-12 14:35:07', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('596ddee4e2404fabbbb3b4a770afb584', '823ad98cc24a4dbda7a8c25f6fd638a0', 'update_by', '更新者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 90, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('5a4a1933c9c844fdba99de043dc8205e', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 10, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('5a6c305ad2c54ddb9111a178e3fc407a', 'c61de57033644e81a3cf96516a519d3d', 'create_by', '创建者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 80, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('5d9656dc854b4ffaa25fc7e6639e6794', '823ad98cc24a4dbda7a8c25f6fd638a0', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('5e5c69bd3eaa4dcc9743f361f3771c08', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('633f5a49ec974c099158e7b3e6bfa930', 'f6e4dafaa72f4c509636484715f33a96', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('652491500f2641ffa7caf95a93e64d34', '6e05c389f3c6415ea34e55e9dfb28934', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('65e687501ebd43369decb1bfde94c04e', '27f523cdc2fc46c799ebdde95df7c750', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 80, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('6763ff6dc7cd4c668e76cf9b697d3ff6', 'f6e4dafaa72f4c509636484715f33a96', 'sort', '排序', 'number(10)', 'Integer', 'sort', '0', '0', '1', '1', '1', '0', '=', 'input', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('67c963383fc9426ba1b38ade332c5e76', '823ad98cc24a4dbda7a8c25f6fd638a0', 'parent_id', '父ID', 'varchar(64)', 'String', 'parentId', '0', '1', '1', '1', '1', '0', '=', 'treeselect', '', NULL, 20, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('67d0331f809a48ee825602659f0778e8', '43d6d5acffa14c258340ce6765e46c6f', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('68345713bef3445c906f70e68f55de38', '6e05c389f3c6415ea34e55e9dfb28934', 'test_data_main_id', '业务主表', 'varchar2(64)', 'String', 'testDataMain.id', '0', '1', '1', '1', '0', '0', '=', 'input', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('6ae8ab08b32446348c79aeda45d0ed23', '2a7cd9c44cc949cea2ba8db9872cd855', 'update_by', '更新者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 80, '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('6cd61970d74c45119e2f92c5463dfce7', '823ad98cc24a4dbda7a8c25f6fd638a0', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 80, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('6ef1c7058fa14b5aa9cb4fc49ca890f5', 'b5057ee926b242e0aa340380e6aedf48', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 90, '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('71ea4bc10d274911b405f3165fc1bb1a', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'area_id', '归属区域', 'nvarchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Area', 'area.id|name', '0', '1', '1', '1', '1', '1', '=', 'areaselect', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('73e2700430804ed5bbf512f4daaa30c5', '27f523cdc2fc46c799ebdde95df7c750', 'stages', '分期数对应的利率', 'varchar(256)', 'String', 'stages', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 60, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('772dbf6ef81b4374aa36070d0abdbf60', 'c61de57033644e81a3cf96516a519d3d', 'name', '类型名称', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', '', NULL, 30, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('77d31b7fc53046ee9483db0ceb57e967', '46e80d0343d4403aa8f78fe4b0898263', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 80, '1', '2019-12-12 14:35:07', '1', '2019-12-12 14:35:07', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('780be78f2c944342af382f96b7eb4bdd', 'c61de57033644e81a3cf96516a519d3d', 'sort_no', '排序', 'int(2)', 'String', 'sortNo', '0', '0', '1', '1', '1', '0', '=', 'input', '', NULL, 70, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('7aa987ee421f469aa22738c68d207f0a', '27f523cdc2fc46c799ebdde95df7c750', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 120, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('7f40eac1d8324ec69f55dfed7e1c1145', '2a7cd9c44cc949cea2ba8db9872cd855', 'create_by', '创建者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 60, '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('7f871058d94c4d9a89084be7c9ce806d', '6e05c389f3c6415ea34e55e9dfb28934', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('813eb3ab2a8d4ab28f6663e1e4050fc7', '2a7cd9c44cc949cea2ba8db9872cd855', 'c_type', '分类', 'int(2)', 'Integer', 'cType', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 20, '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('8185fd06bbbd4177b00fdf8c9d7b0cfe', '46e80d0343d4403aa8f78fe4b0898263', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2019-12-12 14:35:07', '1', '2019-12-12 14:35:07', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('837fcfc6070e4eecb4d5ddd9fdd3019d', 'b5057ee926b242e0aa340380e6aedf48', 'nickname', '昵称', 'varchar(64)', 'String', 'nickname', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 60, '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('872711aa2f554891b7adb153a2b4539a', 'c61de57033644e81a3cf96516a519d3d', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8b48774cfe184913b8b5eb17639cf12d', '43d6d5acffa14c258340ce6765e46c6f', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8b7cf0525519474ebe1de9e587eb7067', '6e05c389f3c6415ea34e55e9dfb28934', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8b9de88df53e485d8ef461c4b1824bc1', '43d6d5acffa14c258340ce6765e46c6f', 'user_id', '归属用户', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'user.id|name', '0', '1', '1', '1', '1', '1', '=', 'userselect', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8da38dbe5fe54e9bb1f9682c27fbf403', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', NULL, NULL, 12, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8fad4425bab8457a86fef5a52ee95201', 'c61de57033644e81a3cf96516a519d3d', 'keywords', '关键字', 'varchar(64)', 'String', 'keywords', '0', '1', '1', '1', '1', '0', '=', 'input', '', NULL, 50, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('91f4710b292e47eca94161a81781859a', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'name', '类型名称', 'varchar(255)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 30, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('92481c16a0b94b0e8bba16c3c54eb1e4', 'f6e4dafaa72f4c509636484715f33a96', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('9451cc77633e4d40b66a82186e90b020', '2a7cd9c44cc949cea2ba8db9872cd855', 'parent_id', '父ID', 'varchar(64)', 'String', 'parentId', '0', '1', '1', '1', '0', '0', '=', 'treeselect', '', NULL, 30, '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('9582c90e99a9447ab048bdb35fed10b7', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'parent_id', '父ID', 'varchar(64)', 'String', 'parentId', '0', '1', '1', '1', '0', '0', '=', 'treeselect', '', NULL, 20, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('966b840d3b9548abb2cbf1d46e6c353e', '0ddf379a951943c39613ed80f061fc91', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 70, '1', '2019-12-15 18:48:20', '1', '2019-12-15 18:48:20', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('983d49ec8d594464803ab3906326b536', '0ddf379a951943c39613ed80f061fc91', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2019-12-15 18:48:20', '1', '2019-12-15 18:48:20', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('9a012c1d2f934dbf996679adb7cc827a', 'f6e4dafaa72f4c509636484715f33a96', 'parent_id', '父级编号', 'varchar2(64)', 'This', 'parent.id|name', '0', '0', '1', '1', '0', '0', '=', 'treeselect', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('9c8cffa69db84572bdfa18fb571dd3ae', '823ad98cc24a4dbda7a8c25f6fd638a0', 'keywords', '关键字', 'varchar(64)', 'String', 'keywords', '0', '1', '1', '1', '1', '0', '=', 'input', '', NULL, 40, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('9dd85fed1cdd436689103e70fcd17738', '2a7cd9c44cc949cea2ba8db9872cd855', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', NULL, 90, '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('a5e56ee1e60b4f26bec5ffbd6010cbfa', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'update_by', '更新者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 90, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('a8b84460a65b428e8dcff55057c0f988', 'c61de57033644e81a3cf96516a519d3d', 'update_by', '更新者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 100, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ad1dad5f59954b10802ca00b670ae263', 'c61de57033644e81a3cf96516a519d3d', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 110, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ad23450c80ef43fdafa8c359fa32795c', 'b5057ee926b242e0aa340380e6aedf48', 'mobile', '手机号', 'varchar(64)', 'String', 'mobile', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 70, '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ad3bf0d4b44b4528a5211a66af88f322', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'office_id', '归属部门', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Office', 'office.id|name', '0', '1', '1', '1', '1', '1', '=', 'officeselect', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('b19c3903e93c4dc580ee4cd0c93597d3', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'unit', '单位', 'varchar(4)', 'String', 'unit', '0', '1', '1', '1', '1', '0', '=', 'input', '', NULL, 50, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('b64e785205a04f80a0f0b30c649e2de7', '27f523cdc2fc46c799ebdde95df7c750', 'update_by', '更新者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 90, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('bb1256a8d1b741f6936d8fed06f45eed', 'f6e4dafaa72f4c509636484715f33a96', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('be9ee2c12bce4b468c6ebe11e72c2fd4', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'sort_no', '排序', 'int(2)', 'Integer', 'sortNo', '0', '1', '1', '1', '1', '0', '=', 'input', '', NULL, 60, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('bee758b6e82a4bcaa00f22f75d372e8e', '2a7cd9c44cc949cea2ba8db9872cd855', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 70, '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('bf02d8f11004481aa519260cea519e83', 'c61de57033644e81a3cf96516a519d3d', 'parent_id', '父ID', 'varchar(64)', 'String', 'parentId', '0', '1', '1', '1', '0', '0', '=', 'treeselect', '', NULL, 20, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('bf099d8175604344a839f47b068e24dd', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'keywords', '关键字', 'varchar(64)', 'String', 'keywords', '0', '1', '1', '1', '1', '0', '=', 'input', '', NULL, 40, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('c11febc0d6ac4fa4be56f10e5ed30f39', '0ddf379a951943c39613ed80f061fc91', 'name', '类型', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', '', NULL, 20, '1', '2019-12-15 18:48:20', '1', '2019-12-15 18:48:20', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('c83bcc462a674ea9bb98eb4f713ce862', '0ddf379a951943c39613ed80f061fc91', 'create_by', '创建者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 40, '1', '2019-12-15 18:48:20', '1', '2019-12-15 18:48:20', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('c91934a96b0f459eab992f0e79588196', '2a7cd9c44cc949cea2ba8db9872cd855', 'name', '类型名称', 'varchar(255)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 40, '1', '2019-12-15 17:28:54', '1', '2019-12-15 17:28:54', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('ca68a2d403f0449cbaa1d54198c6f350', '43d6d5acffa14c258340ce6765e46c6f', 'office_id', '归属部门', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Office', 'office.id|name', '0', '1', '1', '1', '0', '0', '=', 'officeselect', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('caf27e4933ad43df9e743354f981a8de', '823ad98cc24a4dbda7a8c25f6fd638a0', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 100, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('cb9c0ec3da26432d9cbac05ede0fd1d0', '43d6d5acffa14c258340ce6765e46c6f', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', NULL, NULL, 12, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('cceb74dc4f124a0e9e0c4113845de11f', 'b5057ee926b242e0aa340380e6aedf48', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', NULL, 100, '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('cd97a25699b440ea9ad71fffaab197ad', '0ddf379a951943c39613ed80f061fc91', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', NULL, 80, '1', '2019-12-15 18:48:20', '1', '2019-12-15 18:48:20', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ce54f1a8306c4c9891cde49f31daa9a8', '0ddf379a951943c39613ed80f061fc91', 'spec_info', '默认规则', 'varchar(1024)', 'String', 'specInfo', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 30, '1', '2019-12-15 18:48:20', '1', '2019-12-15 18:48:20', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('cf6043171e394633ab8e91027cac061e', '0ddf379a951943c39613ed80f061fc91', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 50, '1', '2019-12-15 18:48:20', '1', '2019-12-15 18:48:20', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('cfcfa06ea61749c9b4c4dbc507e0e580', 'f6e4dafaa72f4c509636484715f33a96', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('d0ad0dc5bb624fe988e9fa08bc5f5528', '823ad98cc24a4dbda7a8c25f6fd638a0', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', NULL, 110, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('d5c2d932ae904aa8a9f9ef34cd36fb0b', '43d6d5acffa14c258340ce6765e46c6f', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '1', '1', '1', '0', '1', '=', 'select', 'sex', NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('d79e1c5834ad4f83a5fbde25faa48fe9', '823ad98cc24a4dbda7a8c25f6fd638a0', 'name', '类型名称', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', '', NULL, 30, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('d7aea623c487452ab6dbd8cd9228ed00', '823ad98cc24a4dbda7a8c25f6fd638a0', 'create_by', '创建者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 70, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('d845cff697044e8d8bfcbdb738e844fa', 'c61de57033644e81a3cf96516a519d3d', 'type_id', '类型', 'varchar(64)', 'String', 'typeId', '0', '0', '1', '1', '1', '0', '=', 'input', '', NULL, 40, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('dbee408229304044a765ad70754c27c7', '46e80d0343d4403aa8f78fe4b0898263', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 100, '1', '2019-12-12 14:35:07', '1', '2019-12-12 14:35:07', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('de636e663dcf4156ba4e1314d70a00d9', 'e2a27bbbba6040e9b85a0e8d7f0a81c1', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 80, '1', '2019-12-15 17:56:23', '1', '2019-12-15 17:56:23', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('e1d6682ad8d6498dbb1728b255f008d1', '0ddf379a951943c39613ed80f061fc91', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 90, '1', '2019-12-15 18:48:20', '1', '2019-12-15 18:48:20', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e2bad6959fa6428fb4365f87ccfbf59d', '0ddf379a951943c39613ed80f061fc91', 'update_by', '更新者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 60, '1', '2019-12-15 18:48:20', '1', '2019-12-15 18:48:20', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e487b6491924417ebadfe1076a72b1a5', '27f523cdc2fc46c799ebdde95df7c750', 'commission_1', '一级佣金比例', 'double(10,0)', 'Double', 'commission1', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 20, '1', '2019-12-08 17:35:19', '1', '2019-12-08 17:35:19', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e64050a2ebf041faa16f12dda5dcf784', '6e05c389f3c6415ea34e55e9dfb28934', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e6c6f275927e47b49b57dd02cc016939', 'b5057ee926b242e0aa340380e6aedf48', 'sex', '性别 1-男|2-女', 'int(2)', 'Integer', 'sex', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 80, '1', '2019-12-12 14:34:35', '1', '2019-12-12 14:34:35', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e8d11127952d4aa288bb3901fc83127f', '43d6d5acffa14c258340ce6765e46c6f', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 13, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('eb2e5afd13f147a990d30e68e7f64e12', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 11, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ef1ccf82131b4a66b654bfc57d12f9c8', 'c61de57033644e81a3cf96516a519d3d', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 90, '1', '2019-12-15 18:40:02', '1', '2019-12-15 18:40:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('f2517257998044a49947fb45cd3817f3', '823ad98cc24a4dbda7a8c25f6fd638a0', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 120, '1', '2019-12-15 18:14:13', '1', '2019-12-15 18:14:13', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('f453bbe6da0f4219bcdda62028b1453a', '46e80d0343d4403aa8f78fe4b0898263', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', NULL, 90, '1', '2019-12-12 14:35:07', '1', '2019-12-12 14:35:07', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('f5ed8c82bad0413fbfcccefa95931358', 'f6e4dafaa72f4c509636484715f33a96', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', NULL, NULL, 10, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ff2ff6df388b44ba85378fe803c0d653', '46e80d0343d4403aa8f78fe4b0898263', 'app_id', '应用id', 'varchar(128)', 'String', 'appId', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 30, '1', '2019-12-12 14:35:07', '1', '2019-12-12 14:35:07', NULL, '0');

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
-- Table structure for memp_product_category
-- ----------------------------
DROP TABLE IF EXISTS `memp_product_category`;
CREATE TABLE `memp_product_category`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `type_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `category_type` int(3) NULL DEFAULT NULL COMMENT '大类-字典，一级时必填',
  `keywords` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关键字',
  `unit` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单位',
  `sort_no` int(2) NOT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of memp_product_category
-- ----------------------------
INSERT INTO `memp_product_category` VALUES ('0aee4a4827e34ea191bf52efa3b6a59f', '7c0623876b2a4fd487e44d10409d9de1', '沙发', '5', 0, '家具，沙发', '套', 1, '1', '2019-12-15 20:46:54', '1', '2019-12-15 20:46:54', '', '0');
INSERT INTO `memp_product_category` VALUES ('18b940d40b90431ebb7e1ac83ac219b6', '6b23921b63064c58a57a2f8b7372c2ef', '男装', '1', 0, 'T恤，衬衣，休行', '件', 1, '1', '2019-12-15 20:39:03', '1', '2019-12-15 20:39:03', '', '0');
INSERT INTO `memp_product_category` VALUES ('6b23921b63064c58a57a2f8b7372c2ef', '0', '服装', '', 1, '', '', 1, '1', '2019-12-15 20:34:21', '1', '2019-12-15 20:34:21', '', '0');
INSERT INTO `memp_product_category` VALUES ('7b413fc7befd431a90740360efbb0b3b', '0', '手机数码', '', 4, '', '', 2, '1', '2019-12-15 20:35:38', '1', '2019-12-15 20:35:38', '', '0');
INSERT INTO `memp_product_category` VALUES ('7c0623876b2a4fd487e44d10409d9de1', '0', '家具家装', '', 4, '', '', 4, '1', '2019-12-15 20:36:08', '1', '2019-12-15 20:36:08', '', '0');
INSERT INTO `memp_product_category` VALUES ('d5e4285004734d2da115288597740973', '0', '家用电器', '', 4, '', '', 3, '1', '2019-12-15 20:35:54', '1', '2019-12-15 20:35:54', '', '0');

-- ----------------------------
-- Table structure for memp_product_type
-- ----------------------------
DROP TABLE IF EXISTS `memp_product_type`;
CREATE TABLE `memp_product_type`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型',
  `spec_info` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '默认规则',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of memp_product_type
-- ----------------------------
INSERT INTO `memp_product_type` VALUES ('1', 'T恤', '{}', '1', '2019-12-15 18:51:42', '1', '2019-12-15 18:51:45', NULL, '0');
INSERT INTO `memp_product_type` VALUES ('2', '裤装', '{}', '1', '2019-12-15 18:52:01', '1', '2019-12-15 18:52:04', NULL, '0');
INSERT INTO `memp_product_type` VALUES ('3', '手机', '{}', '1', '2019-12-15 19:25:51', '1', '2019-12-15 19:25:54', NULL, '0');
INSERT INTO `memp_product_type` VALUES ('4', '箱包', '{}', '1', '2019-12-15 20:09:32', '1', '2019-12-15 20:09:35', NULL, '0');
INSERT INTO `memp_product_type` VALUES ('5', '家具', '{}', '1', '2019-12-15 20:46:17', '1', '2019-12-15 20:46:21', NULL, '0');

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
INSERT INTO `memp_setting` VALUES ('03f73ad9b79341108a86938abb4c216b', 0.60, 0.20, 1.80, 10000, '{\"r1\":0.1,\"r2\":0.2,\"r3\":0.3,\"r4\":0.4,\"r5\":0.5,\"r6\":0.6,\"r7\":0.7,\"r8\":0.8,\"r9\":0.9,\"r10\":0.01,\"r11\":0.02,\"r12\":0.03}', '1', '2019-12-08 20:05:10', '1', '2019-12-15 16:44:57', '备注信息1', '0');

-- ----------------------------
-- Table structure for memp_user
-- ----------------------------
DROP TABLE IF EXISTS `memp_user`;
CREATE TABLE `memp_user`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码盐',
  `headimg` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `nickname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `mobile` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `sex` int(2) NULL DEFAULT NULL COMMENT '性别 1-男|2-女',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for memp_user_weixin_info
-- ----------------------------
DROP TABLE IF EXISTS `memp_user_weixin_info`;
CREATE TABLE `memp_user_weixin_info`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `app_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用id',
  `open_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '微信对应第三方应用的唯一标识',
  `union_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统一开发平台的id',
  `device_id` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备id',
  `user_info` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信用户信息',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `open_id_index`(`open_id`) USING BTREE,
  INDEX `user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户微信信息' ROW_FORMAT = Compact;

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
INSERT INTO `sys_dict` VALUES ('37b3ec731e2c4de6a0f6ec9109de2a83', '3', '童装玩具 / 孕产 / 用品', 'product_category_type', '3', 10, '0', '1', '2019-12-15 19:41:30', '1', '2019-12-15 19:41:30', '', '0');
INSERT INTO `sys_dict` VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('41', '3', '普通用户', 'sys_user_type', '用户类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('5686f325ce7d4b0988aa06baf2c3be7a', '2', '鞋靴 / 箱包 / 配件', 'product_category_type', '2', 10, '0', '1', '2019-12-15 19:41:16', '1', '2019-12-15 19:41:16', '', '0');
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
INSERT INTO `sys_dict` VALUES ('9a642ec65a444f1889892aea9d8a97ff', '1', '女装 / 男装 / 内衣', 'product_category_type', '1', 10, '0', '1', '2019-12-15 19:40:58', '1', '2019-12-15 19:40:58', '', '0');
INSERT INTO `sys_dict` VALUES ('e676e56d881140c0ae84c88f5390e6c4', '4', '家电 / 数码 / 手机', 'product_category_type', '4', 10, '0', '1', '2019-12-15 20:35:21', '1', '2019-12-15 20:35:21', '', '0');

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
INSERT INTO `sys_log` VALUES ('009c5934e7ea47d1bb3c79fa8ac61713', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 18:00:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('00baee7a24ed4275be9c06a6d4112a75', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 22:54:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('010782102d9f4b3dbaaabb3db077c2de', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 17:32:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('010c100d6edf4b6fa6e9b5e44a802c5d', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 20:33:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('01644aa6405f40b7828fa4fa797ea85e', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-15 17:54:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('01dfbf20c23a49dc9efe1cfc59823453', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:49:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('01eb48e0952b490dac6e14b7e6f4c121', '1', '代码生成-代码生成-生成方案配置', '1', '2019-12-15 18:40:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('02ac6a7cbf914c6d815ef88de8129174', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 22:53:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('045985631f084c62a3cb973f83d9956d', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 20:37:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('081eda38008d4b3bbcf731feea72c460', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:19:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('08b5ea1820a74c0980269d22b91fb908', '1', '系统设置-系统设置-角色管理', '1', '2019-12-15 15:14:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('09959bc0050949ce9ce8288862b2ded8', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 17:31:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0af5e0bb5eb141799b5e93ed97f482bd', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 18:17:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0c1d653257e5422c958a6d19c708b327', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-15 18:47:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0c3102888f2e4ad882a9ff59358b7f66', '1', '系统设置-系统设置-字典管理-修改', '1', '2019-12-15 20:35:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/save', 'POST', 'id=&value=4&label=家电 / 数码 / 手机&type=product_category_type&description=4&sort=10&remarks=', '');
INSERT INTO `sys_log` VALUES ('0c95f23417104d7db27e09f181880158', '1', '系统设置-系统设置-字典管理-修改', '1', '2019-12-15 19:40:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/save', 'POST', 'id=&value=1&label=女装 / 男装 / 内衣&type=product_category_type&description=1&sort=10&remarks=', '');
INSERT INTO `sys_log` VALUES ('0d58f68fe4714a06bc77054d97703f85', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 20:05:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0e5c550a99904978848bcd9c358d0489', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:52:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0e753fe615ec4ef3a597ddaae6a58fbd', '1', '系统设置-机构用户-机构管理', '1', '2019-12-15 16:51:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('10472b8e7ddf4d6b8b55c450018683b1', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 20:35:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1083bfd6e71a413eb870ad198d58cd9e', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 19:17:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('11cec38a490d4eada67db2606b4b93ca', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 19:40:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', 'repage=&type=product_category_type', '');
INSERT INTO `sys_log` VALUES ('136d59685f634343850c48f0680eb26e', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 20:33:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1372d7f683f04e82b8d810ced277f1dc', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 17:32:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('13d2844d97c64315883f278ee6ca843b', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 19:40:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('13db43f41a664f22b22b214f58db73f0', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 16:51:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1684d425b4ff4c76bb17fb90780406b3', '1', '系统设置-系统设置-字典管理-查看', '1', '2019-12-15 19:40:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('18265ab8223342be8ed0fdf2ae127abe', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 17:32:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('18d858e0e6ea4d5586e019212dd679d3', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 17:33:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1c38d11152bb4713913e5305870787f0', '1', '系统设置-系统设置-字典管理-查看', '1', '2019-12-15 20:35:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('1ce0ed65dab14a4cabc5a6665ccd4468', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 16:46:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1e2c4e2670e64977aeb922358294ad77', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:17:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1f57886ec36a4f7ca719c6e3304dae2d', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 19:41:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1fb7162922d44d6394a8333e2a25c6ab', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:49:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('202401f5743e42d0a2b77266ae0b4d42', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 18:55:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('21e53f153fe74d12abaef3c0bdfa5029', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:19:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('23286800d84a4e1c9fa8c71e2e68f7b3', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-15 19:13:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('256bce7c66534d1fa13c7b17deabf067', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:53:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('25e86ad49fe0459b99bc7c3699ecd328', '1', '后台管理-商品管理-商品类型', '1', '2019-12-16 00:13:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('25f55522a37943f9b633a9e270c255d3', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 19:24:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('265a5ce2f661469895fdb6c251fc4f24', '1', '代码生成-代码生成-生成方案配置', '1', '2019-12-15 17:28:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('26c547c4bba941e0b2c282f1ad7a9e2c', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 20:05:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('27fe57aafe754a838daef840bafd6236', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-15 17:36:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=337ebf05c76f40399c4f071e06310880', '');
INSERT INTO `sys_log` VALUES ('2856abdba1b94d0fa4fac30f7e08eab0', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 17:38:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2915b33bd1694c67bb272a322390c4c2', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 17:58:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2982fbd1f9ce4b548e495f5f2bcac663', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:17:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2b87ce736afb4300b71d77353de2e088', '1', '系统设置-机构用户-区域管理', '1', '2019-12-15 15:14:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2c0aaea5efb8441caf2fa58ee5c2b193', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:16:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2f26eb15d9ea42b1af8befa36b172bea', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-15 18:39:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3112e3bf07634017b120f7573420dff1', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:29:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('31961e88bf5647dea98470a1337bcce0', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 19:03:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3275066e8663450995389bd7dc52c557', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:49:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3372b25ed3a54f0f861bb9ce90754f53', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 18:24:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('337e449681ef4bc5aa29e3aa7b43121d', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:50:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('338b55a1247949aa9d1fac3c39589b98', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 17:33:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('340a3cedb7014d4494f65a638ba388e8', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 15:14:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('35ae9354c1b442898be5a64b3aeaadb5', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-15 18:12:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('35ec7287cb3c4217a78b1a351157e9df', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 22:56:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('36ab3ae0ad164792acf4fbb63ea07fdf', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:19:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('37f4138464f8481eb709459a040db5b5', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:51:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('38a8f78b5bde42caa0bff63b63a058cf', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 20:41:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('397ec56d0d054e71b35fcc09ef3d3b7f', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 20:37:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('399a7fd9bc2440e78337661256ef0c0c', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 17:36:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3aa9a0c5dd154626a68d50d5c66b1351', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:25:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3b52b28e5689420e9d1e348a0b336375', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 17:38:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3cd082681a49436fb42d012be8cae1f5', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 19:03:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3d36ce2e108748d2ab1155582e3b0df3', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 19:41:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', 'repage=&type=product_category_type', '');
INSERT INTO `sys_log` VALUES ('3d42730bffe94c74bd94b9363c9a6dad', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:28:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3d6b4fa1df1c42c8a4a0d018ea7d6d0a', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 17:37:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3e0ed4cadee34691aca063160e8e0287', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:13:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3e295dd183b34df5b95cd7be8067d76d', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:51:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3ec355995aa84ac8a8d3e5ca998ee9cd', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 17:34:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3fbdadcd441d4bf9b49c964ff0055feb', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 19:41:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4003326868f34ef99fd2106378f9c773', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 17:31:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('40e035d210f6488db0f216af4fd88120', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 18:55:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('413ef5a16e984c78af45b349d4db0042', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 22:56:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('414a9dac57484053ac452c1ec4ffca50', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 19:44:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'POST', 'pageNo=1&pageSize=30&type=product_category_type&description=', '');
INSERT INTO `sys_log` VALUES ('414c7812f0d04c7d8784d609c94e0e44', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 19:44:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('41c2948b7d43405482b45afb54db0dd3', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 17:58:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('43ff19038bf84438ab1a7a6a2aa090c8', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 20:41:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4606d27262764c9591d4fff741503a70', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 17:30:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('46693d8b214b4d60a5ffc96881270950', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 20:34:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('474b95e2930541d9af7bc187db7a851e', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 20:37:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'POST', 'pageNo=1&pageSize=30&type=product_category_type&description=', '');
INSERT INTO `sys_log` VALUES ('48a754262a2748a5986abce32b0f686a', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:28:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('48e576570dd74f81b727e85b945ce95f', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:45:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4ae96ad2168749688c5ed7c460cbb867', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 20:33:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4b150ed051bf4ce28c16a8cd28d83edb', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 17:36:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4b21c54a0f8b48d3b610f5d95d5155f8', '1', '系统设置-系统设置-字典管理-查看', '1', '2019-12-15 20:35:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('4c0e270a08ed47169b23e250b50bbef1', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 20:38:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4cdc8bd1c1ad4b7ca06c9c89cfb83c0d', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 18:15:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4f13a72fb6c44b04890796921b39c985', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 18:28:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4f4f38f3bc394827b993051b7db61b48', '1', '系统设置-机构用户-机构管理', '1', '2019-12-15 15:14:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('512cce9947654bc28371adf7f0e07d8a', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-15 17:54:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('512ed60f3702494db1c019a8d5668c20', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 22:53:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5184f2b2944841548050c9657f49105e', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 18:28:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('51b88fbe538d4e979fbd38d66ebf667c', '1', '系统设置-系统设置-菜单管理-修改', '1', '2019-12-15 22:55:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/save', 'POST', 'id=&parent.id=fc10ef3f7b7e462f83914fa48069f50e&parent.name=商品管理&name=商品类型&href=/memp/mempProductType/list&target=&icon=exchange&sort=5060&isShow=1&permission=memp:mempProductType:view,memp:mempProductType:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('523584e771b54316848d58cd50589679', '2', '', '1', '2019-12-15 23:35:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/form', 'GET', '', 'org.apache.jasper.JasperException: An exception occurred processing [/WEB-INF/views/modules/memp/mempProductTypeForm.jsp] at line [28]\r\n\r\n25: 		});\r\n26: 		function addRow() {\r\n27: 			$(\"#specinfo\").appendTo(\"<tr>\" +\r\n28: 					\"<td><form:input path=\'spec\' htmlEscape=\'false\' maxlength=\'1024\' class=\'input-mini\'/></td>\'\" +\r\n29: 					\"<td><form:input path=\'item\' htmlEscape=\'false\' maxlength=\'1024\' class=\'input-xxlarge\'/></td>\" +\r\n30: 					\"<td><a onclick=\'delRow(this)\'>鍒犻櫎</a></td>\" +\r\n31: 					\"</tr>\");\r\n\r\n\r\nStacktrace:\r\n	at org.apache.jasper.servlet.JspServletWrapper.handleJspException(JspServletWrapper.java:613)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:505)\r\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:395)\r\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:339)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:728)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:742)\r\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:484)\r\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:409)\r\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:337)\r\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:168)\r\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:303)\r\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1243)\r\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1027)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:971)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:893)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:965)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:856)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:621)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:841)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:728)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:85)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:219)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:110)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:444)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:169)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:104)\r\n	at org.apache.catalina.valves.AccessLogValve.invoke(AccessLogValve.java:1025)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:116)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:445)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1137)\r\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:637)\r\n	at org.apache.tomcat.util.net.JIoEndpoint$SocketProcessor.run(JIoEndpoint.java:319)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\nCaused by: java.lang.IllegalStateException: Neither BindingResult nor plain target object for bean name \'spec\' available as request attribute\r\n	at org.springframework.web.servlet.support.BindStatus.<init>(BindStatus.java:144)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getBindStatus(AbstractDataBoundFormElementTag.java:168)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getPropertyPath(AbstractDataBoundFormElementTag.java:188)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getName(AbstractDataBoundFormElementTag.java:154)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.autogenerateId(AbstractDataBoundFormElementTag.java:141)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.resolveId(AbstractDataBoundFormElementTag.java:132)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.writeDefaultAttributes(AbstractDataBoundFormElementTag.java:116)\r\n	at org.springframework.web.servlet.tags.form.AbstractHtmlElementTag.writeDefaultAttributes(AbstractHtmlElementTag.java:422)\r\n	at org.springframework.web.servlet.tags.form.InputTag.writeTagContent(InputTag.java:142)\r\n	at org.springframework.web.servlet.tags.form.AbstractFormTag.doStartTagInternal(AbstractFormTag.java:84)\r\n	at org.springframework.web.servlet.tags.RequestContextAwareTag.doStartTag(RequestContextAwareTag.java:80)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.memp.mempProductTypeForm_jsp._jspx_meth_form_005finput_005f0(mempProductTypeForm_jsp.java:296)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.memp.mempProductTypeForm_jsp._jspService(mempProductTypeForm_jsp.java:163)\r\n	at org.apache.jasper.runtime.HttpJspBase.service(HttpJspBase.java:70)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:728)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:472)\r\n	... 67 more\r\n');
INSERT INTO `sys_log` VALUES ('52bcdc4413134571b61866c59dbaceac', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 19:44:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('53c0942efa3742fa803cd90d915b84cc', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:53:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('53edc575398c4c3bb0f217826e281ad0', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 18:29:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5454433830fe42b79c47281e4d5ef6e9', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 17:38:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('54eb5f5263194fd386005aff8a9f588a', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 20:03:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('55c002026b3b4f72b53519434e7c2a73', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:39:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('55d5e74c1a1e4566b355b0481845da2e', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:35:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('56f64449f6ef455191d6392da505579f', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 17:41:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('56f6a06226bc41cda3a506a613b5b55b', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 18:00:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5722de550e6347d4a12cb03c43e6b134', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 18:14:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('57c3213451354b99bcfb9a41b27d5476', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:23:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('581600f60aba49f289035e171a98be1d', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:28:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('582f6d9bc20f4cd5bcb642569ac15c8f', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 20:37:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('59b0b7785d114446aba290b40e43ab07', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 17:35:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5add675c0fa94a299531b4e72d5d61fd', '1', '系统设置-系统设置-菜单管理-修改', '1', '2019-12-15 17:32:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/save', 'POST', 'id=&parent.id=fc10ef3f7b7e462f83914fa48069f50e&parent.name=商品管理&name=商品分类&href=/memp/mempProductCategory/list&target=&icon=&sort=5060&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('5bf438a27de048afb528bb8d5340ecbf', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:17:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5c50398d5a654119990b3f15fb1d170d', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:45:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5d4b082fbc9a418a97889fa334961da7', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-15 18:12:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5da94b3e85b94369b0a949d540327e1a', '1', '系统设置-机构用户-机构管理-查看', '1', '2019-12-15 16:51:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('5e27981bf1524db2822d8b59a4460500', '1', '系统设置-系统设置-字典管理-查看', '1', '2019-12-15 20:37:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('5e7ba18283e440319a67740622786856', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:29:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5e9c19e3aa294d2e9bb7b8011534123a', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 18:55:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5ec30b3c7631422b9d66512e187a0137', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:28:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5eef6789adf644ebb1977ec891a0a34d', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:20:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('608c5fc0582e4610b70a89be936e4174', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 19:49:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6109868400fe4e7e87963b26b70ec866', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 20:37:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('62973674365946f89c831ae94755a88b', '1', '系统登录', '1', '2019-12-15 22:53:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('62acbe1a83654a38846c821ece750f79', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 20:05:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('647bf76115f14a2fb46097ebae70dbc8', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:29:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('64f48154e4994d7dba1b70239207bb04', '1', '系统设置-系统设置-字典管理-修改', '1', '2019-12-15 19:41:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/save', 'POST', 'id=&value=2&label=鞋靴 / 箱包 / 配件&type=product_category_type&description=2&sort=10&remarks=', '');
INSERT INTO `sys_log` VALUES ('657eea45ee59406f908ff3568b7d2cb4', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 20:33:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('660d28922b5f4430b05f2d81b08589c5', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 18:25:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('66ef08da199e44df9df14c45f9549551', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-15 17:27:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('673ab574e06d43b09305e7a8546803b5', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 20:35:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6a562a4f876942168928d265d7df6b55', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 15:13:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6bb828a201e744278775b23c985a031e', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 19:39:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6c6ced2024d840ff8e282dbeb0a5b886', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:35:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6d2564f0bc574106a828c9435b8ddf7c', '1', '系统设置-机构用户-机构管理-查看', '1', '2019-12-15 16:52:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/office/form', 'GET', 'parent.id=', '');
INSERT INTO `sys_log` VALUES ('7021430f1e024e3c8b82393c75f3b9fd', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 17:58:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('727bb7d7d8e848c4bfd7c9f45b82935f', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:43:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7352ccc4e9594c58836e1abd0d8036c8', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 19:39:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7452f51c812845229251b66ff27af322', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:19:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('74614f3938144e2f9662aed65c169882', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 23:16:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('784877a743f5408d826532b50eb0c51e', '1', '后台管理-商品管理-商品分类', '1', '2019-12-16 00:14:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('794a780b5cc9498f907b8db6379f00b9', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:24:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('79bb3ca222f24be48466aeeadc277715', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-15 17:38:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=337ebf05c76f40399c4f071e06310880', '');
INSERT INTO `sys_log` VALUES ('7a15f39a25bd4a2e981c2e0f6bd2aca5', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:49:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7aed70608d69479888d735aced98443b', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 17:33:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7b1fdcf2db1b41c298aacd0be28735ef', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 18:29:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7c39b0aa067846d4ae77011412dc7d03', '1', '系统设置-日志查询-日志查询', '1', '2019-12-15 16:46:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/log', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7c5e7c9fcc284932982568ccf6d1f4a9', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 15:14:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7d62284717cf4b83bdcfc4155101e341', '1', '后台管理-商品管理-商品类型', '1', '2019-12-16 00:10:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7d8a10ed624c4753aac0e163942d9565', '1', '后台管理-商品管理-商品类型', '1', '2019-12-16 00:14:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7e369883cea148959d6e7ca03264de84', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:51:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7f62943f914c459c92e4e22818c08849', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 22:54:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('80873c2983d7405d934e7a4cefb95d1a', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:52:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8123175184094c11bad46f287755eee1', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 20:41:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('81b27548e9c94602b2298a98b3f330a9', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 22:53:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('81cdeaaf05c84b4c82f0f90bcf1822dc', '1', '我的面板-个人信息-修改密码', '1', '2019-12-15 20:41:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8306ebdf97d04af599c96fbbceb942e5', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 17:36:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('838e401143174f678430125fb046582c', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 18:54:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('84704ac939b44d9dbafe4ae950dc20d2', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 17:32:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('84f85f7d430d4057bf5334f01e8037a8', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 19:39:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('858abee75daa4124b5cd1e98844e34a0', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 19:49:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8697f17804a54ccf985efe91791a3cb3', '1', '系统登录', '1', '2019-12-15 18:14:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('872a916f5f30460cb8d7c5b74845b2fc', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 20:38:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8811a51890d34e91823b2d56d32a6e27', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 18:14:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('88c3748b615a474db303d15aafa1ac0b', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 22:56:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('89800156a7c7441da08cfeacd44f6a1a', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 17:38:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('89d0922bfa7947ea99fb986fbac353b6', '2', '', '1', '2019-12-15 18:24:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/form', 'GET', '', 'org.apache.jasper.JasperException: /WEB-INF/views/modules/memp/mempProductCategoryForm.jsp (line: [41], column: [5]) According to TLD or attribute directive in tag file, attribute [var] does not accept any expressions\r\n	at org.apache.jasper.compiler.DefaultErrorHandler.jspError(DefaultErrorHandler.java:42)\r\n	at org.apache.jasper.compiler.ErrorDispatcher.dispatch(ErrorDispatcher.java:443)\r\n	at org.apache.jasper.compiler.ErrorDispatcher.jspError(ErrorDispatcher.java:149)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.checkXmlAttributes(Validator.java:1247)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.visit(Validator.java:882)\r\n	at org.apache.jasper.compiler.Node$CustomTag.accept(Node.java:1553)\r\n	at org.apache.jasper.compiler.Node$Nodes.visit(Node.java:2392)\r\n	at org.apache.jasper.compiler.Node$Visitor.visitBody(Node.java:2444)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.visit(Validator.java:901)\r\n	at org.apache.jasper.compiler.Node$CustomTag.accept(Node.java:1553)\r\n	at org.apache.jasper.compiler.Node$Nodes.visit(Node.java:2392)\r\n	at org.apache.jasper.compiler.Node$Visitor.visitBody(Node.java:2444)\r\n	at org.apache.jasper.compiler.Validator$ValidateVisitor.visit(Validator.java:901)\r\n	at org.apache.jasper.compiler.Node$CustomTag.accept(Node.java:1553)\r\n	at org.apache.jasper.compiler.Node$Nodes.visit(Node.java:2392)\r\n	at org.apache.jasper.compiler.Node$Visitor.visitBody(Node.java:2444)\r\n	at org.apache.jasper.compiler.Node$Visitor.visit(Node.java:2450)\r\n	at org.apache.jasper.compiler.Node$Root.accept(Node.java:474)\r\n	at org.apache.jasper.compiler.Node$Nodes.visit(Node.java:2392)\r\n	at org.apache.jasper.compiler.Validator.validateExDirectives(Validator.java:1846)\r\n	at org.apache.jasper.compiler.Compiler.generateJava(Compiler.java:218)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:374)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:354)\r\n	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:341)\r\n	at org.apache.jasper.JspCompilationContext.compile(JspCompilationContext.java:660)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:395)\r\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:395)\r\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:339)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:728)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:742)\r\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:484)\r\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:409)\r\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:337)\r\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:168)\r\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:303)\r\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1243)\r\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1027)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:971)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:893)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:965)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:856)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:621)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:841)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:728)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:85)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:219)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:110)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:444)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:169)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:104)\r\n	at org.apache.catalina.valves.AccessLogValve.invoke(AccessLogValve.java:1025)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:116)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:445)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1137)\r\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:637)\r\n	at org.apache.tomcat.util.net.JIoEndpoint$SocketProcessor.run(JIoEndpoint.java:319)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\n');
INSERT INTO `sys_log` VALUES ('8ac3ffb609ab40f19b6f953af46e617c', '1', '我的面板-个人信息-个人信息', '1', '2019-12-16 00:14:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8b69854d207546269813de555de470db', '1', '系统设置-系统设置-角色管理-查看', '1', '2019-12-15 15:14:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/role/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8c826f1ca1ee48c8af14be1d22432423', '1', '系统登录', '1', '2019-12-15 17:38:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('8ca0166629dd4fe8b865a7c88d101072', '1', '系统设置-机构用户-机构管理-查看', '1', '2019-12-15 15:14:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('8d170f1979a0428d8a95de7ce67920b7', '1', '我的面板-个人信息-个人信息', '1', '2019-12-16 00:13:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8d885741ff304322a71c3b2d215852ad', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 18:24:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8efeae2b8e814e40abd1600b9a507a00', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:45:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8fbb34526be146b0ae47bcac61a146f3', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-15 19:39:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9095fadb3e35477e840471092b1a7f0f', '1', '后台管理-商品管理-商品类型', '1', '2019-12-16 00:13:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('90f966ac7bc1451da0a4d03645eb1fcc', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 19:17:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('915781e8144a434f85500a6d1bbf94b4', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 18:26:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('935356e9438248eb8cf06489fa2934cc', '1', '代码生成-代码生成-生成方案配置', '1', '2019-12-15 18:14:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('95a0405900db47b0acb72159837dcd70', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 18:26:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9640eea8b7824446b7679a7eb997c5a9', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 17:31:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9643a3e42e8a4f20b1da8b0dcab72242', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-15 17:36:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=956bd88fdd7c4c25960dc784382cf548', '');
INSERT INTO `sys_log` VALUES ('96fab014d0ab45a79455f93b7c827c93', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:16:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('970ade9c2bd24e9da754f84e84c8ac32', '1', '系统设置-系统设置-菜单管理-修改', '1', '2019-12-15 17:36:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/save', 'POST', 'id=337ebf05c76f40399c4f071e06310880&parent.id=fc10ef3f7b7e462f83914fa48069f50e&parent.name=商品管理&name=商品分类&href=/memp/mempProductCategory/list&target=&icon=credit-card&sort=5060&isShow=1&permission=memp:mempProductCategory:view&remarks=', '');
INSERT INTO `sys_log` VALUES ('97495cd472c74e9395d56ee72d21212d', '1', '系统登录', '1', '2019-12-15 15:13:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('975fb93f2ca64d9cb948ec1590025189', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 20:18:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('985c24ad35b047798b589ed29a1d70c2', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 17:31:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('995b855180e04a0193be7f0afffa0b02', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 18:17:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9a4f842262a545fc937ffc47a0e1c455', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 20:35:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'POST', 'pageNo=1&pageSize=30&type=product_category_type&description=', '');
INSERT INTO `sys_log` VALUES ('9a5389c813424d98b714f52f6000e9bc', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 18:28:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9b52cd2b4262461e876cbd6ef7e835cd', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 20:05:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9bac614b60684494a91201508b0354a3', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:19:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9cc654625131492485233b1fe62d6f1e', '1', '系统设置-系统设置-字典管理-查看', '1', '2019-12-15 19:39:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('9ced125bf4ef462c9b39b825d24fa88f', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:13:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9d11aa9a3da54380af78936019f49ad2', '1', '系统登录', '1', '2019-12-15 16:46:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9dff3f347eb048bb9406f51f379c1d6d', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:25:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9e949ba9768c4902a6e65e2fa5a00184', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:39:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9f74436d0ff84f2ea71a496a51edce63', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 18:25:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a13c9a607e6a42cdbd78e437f8c89e1e', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 19:44:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a29c5ce85a3840ce87010687db324419', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:51:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a2e73922c7f042f591a6c75b113b958a', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-15 17:37:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=82', '');
INSERT INTO `sys_log` VALUES ('a42853facb9b434ea16dc7986b34aee4', '1', '后台管理-系统设置-配置管理', '1', '2019-12-16 00:13:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a55e1618aae84ab6a1b9fbb3591d069d', '1', '系统设置-系统设置-菜单管理-修改', '1', '2019-12-15 17:31:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/save', 'POST', 'id=&parent.id=007570a6dc224e57b474dfb33ff337fd&parent.name=后台管理&name=商品管理&href=&target=&icon=&sort=5060&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('a5c62717869546b3a4102b1b4130a347', '1', '后台管理-系统设置-配置管理', '1', '2019-12-16 00:13:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a62afc1a9b9841129dcd60f3791ae5d6', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 18:14:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a915ea37f809442cbf74ad5b88fa7bea', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 20:33:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a94cd5b5ca6e48f095ab53994b32461f', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 19:39:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a9f6ec67c046453a9a0687a4464800a9', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-15 18:39:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aa49e80c9b11424c9710693e4b3f6d9c', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:49:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ad3026af7a574358961db2c42304ad70', '1', '后台管理-系统设置-配置管理', '1', '2019-12-16 00:10:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ad4f4846f6904c7f827591b037d03b7d', '2', '', '1', '2019-12-15 23:10:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/form', 'GET', '', 'org.apache.jasper.JasperException: An exception occurred processing [/WEB-INF/views/modules/memp/mempProductTypeForm.jsp] at line [49]\r\n\r\n46: 				<table style=\"border:1px dashed lightgrey;\">\r\n47: 					<tr style=\"text-align: center;font-weight: bold;\"><td>瑙勬牸</td><td>瑙勬牸椤癸紙<font color=\"red\">澶氶」宸测�渱鈥濆垎鍓�</font>锛�</td></tr>\r\n48: 					<tr style=\"text-align: center;\">\r\n49: 						<td><form:input path=\"spec\" htmlEscape=\"false\" maxlength=\"1024\" class=\"input-mini \"/></td>\r\n50: 						<td><form:input path=\"item\" htmlEscape=\"false\" maxlength=\"1024\" class=\"input-xxlarge \"/></td>\r\n51: 					</tr>\r\n52: 				</table>\r\n\r\n\r\nStacktrace:\r\n	at org.apache.jasper.servlet.JspServletWrapper.handleJspException(JspServletWrapper.java:613)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:510)\r\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:395)\r\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:339)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:728)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:742)\r\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:484)\r\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:409)\r\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:337)\r\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:168)\r\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:303)\r\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1243)\r\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1027)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:971)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:893)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:965)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:856)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:621)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:841)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:728)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\r\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:344)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:261)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:85)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:219)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:110)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:444)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:169)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:104)\r\n	at org.apache.catalina.valves.AccessLogValve.invoke(AccessLogValve.java:1025)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:116)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:445)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1137)\r\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:637)\r\n	at org.apache.tomcat.util.net.JIoEndpoint$SocketProcessor.run(JIoEndpoint.java:319)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\nCaused by: org.springframework.beans.NotReadablePropertyException: Invalid property \'spec\' of bean class [com.thinkgem.jeesite.modules.memp.entity.MempProductType]: Bean property \'spec\' is not readable or has an invalid getter method: Does the return type of the getter match the parameter type of the setter?\r\n	at org.springframework.beans.BeanWrapperImpl.getPropertyValue(BeanWrapperImpl.java:731)\r\n	at org.springframework.beans.BeanWrapperImpl.getPropertyValue(BeanWrapperImpl.java:722)\r\n	at org.springframework.validation.AbstractPropertyBindingResult.getActualFieldValue(AbstractPropertyBindingResult.java:99)\r\n	at org.springframework.validation.AbstractBindingResult.getFieldValue(AbstractBindingResult.java:229)\r\n	at org.springframework.web.servlet.support.BindStatus.<init>(BindStatus.java:120)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getBindStatus(AbstractDataBoundFormElementTag.java:168)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getPropertyPath(AbstractDataBoundFormElementTag.java:188)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.getName(AbstractDataBoundFormElementTag.java:154)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.autogenerateId(AbstractDataBoundFormElementTag.java:141)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.resolveId(AbstractDataBoundFormElementTag.java:132)\r\n	at org.springframework.web.servlet.tags.form.AbstractDataBoundFormElementTag.writeDefaultAttributes(AbstractDataBoundFormElementTag.java:116)\r\n	at org.springframework.web.servlet.tags.form.AbstractHtmlElementTag.writeDefaultAttributes(AbstractHtmlElementTag.java:422)\r\n	at org.springframework.web.servlet.tags.form.InputTag.writeTagContent(InputTag.java:142)\r\n	at org.springframework.web.servlet.tags.form.AbstractFormTag.doStartTagInternal(AbstractFormTag.java:84)\r\n	at org.springframework.web.servlet.tags.RequestContextAwareTag.doStartTag(RequestContextAwareTag.java:80)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.memp.mempProductTypeForm_jsp._jspx_meth_form_005finput_005f1(mempProductTypeForm_jsp.java:536)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.memp.mempProductTypeForm_jsp._jspx_meth_form_005fform_005f0(mempProductTypeForm_jsp.java:373)\r\n	at org.apache.jsp.WEB_002dINF.views.modules.memp.mempProductTypeForm_jsp._jspService(mempProductTypeForm_jsp.java:179)\r\n	at org.apache.jasper.runtime.HttpJspBase.service(HttpJspBase.java:70)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:728)\r\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:472)\r\n	... 67 more\r\n');
INSERT INTO `sys_log` VALUES ('adfce8c6777f4b9f8f2974bf478b3b12', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 20:04:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ae28b40a7c9f48fd851c90fd19a432cd', '1', '代码生成-代码生成-生成方案配置', '1', '2019-12-15 18:48:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aed7f25e242f402f81fef087493452dc', '1', '系统设置-系统设置-菜单管理-修改', '1', '2019-12-15 17:32:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/save', 'POST', 'id=337ebf05c76f40399c4f071e06310880&parent.id=fc10ef3f7b7e462f83914fa48069f50e&parent.name=商品管理&name=商品分类&href=/memp/mempProductCategory/list&target=&icon=credit-card&sort=5060&isShow=1&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('aeecc51007dd4de1813770c99e9b99f0', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 17:38:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('af12452b00464a76b12516e479d3e034', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 22:54:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b13a570db9c145e59e898ee2f304ad64', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 17:30:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b310efc731e544529bfd0202ef9feba5', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:43:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b367d38aa265406c8d7500b34859265d', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 17:32:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b3d4ae816fc5408dbdc321eaea80973b', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:36:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b3ee31da06674c07b3f49fa5064a2d91', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 18:25:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b3f20e1084b6472993f91e6f3b1a4d03', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:50:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b442f39713bc477c9f2e31ef932334f6', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-15 17:30:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b596e7699bf84fdb918670039f43ee51', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:39:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b8303acd552d433f96492a40a178aaee', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:16:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b882440d858e46bdbcf5668143c9db59', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 16:46:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bcab94e226a344989d89c6ef15f224a0', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 20:18:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bce36bb5d62a470f90a0a8599575e6e8', '1', '我的面板-个人信息-个人信息', '1', '2019-12-16 00:13:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('be129fcd932e4448b6d4c7a1e507e0ec', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 17:32:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf514d9f5e364028a008552725ce36b9', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:23:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf96f4e12fd8469db8380635e1796b8e', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 20:37:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c16dd2a7f8c7452986ada90e4ec5b4b8', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:23:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c25e93d6c694427d8bb31f3cbd0d6de1', '1', '后台管理-商品管理-商品类型', '1', '2019-12-16 00:14:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c3b49175ca0043b89fcda16647746b96', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:25:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c445ea221ca041cbbaacad46ba372f48', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:29:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c5dbd742b25e4ac58f8497b6979ce708', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:23:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c6d1676f5f824ecda7c099bade1bde2c', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:23:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c6d2019fb7ee487592c5c167d23ab7c3', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 18:29:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c7cdeb0eef324ffabbbdefbbb6dd86ba', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 17:37:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c91019932c8145ef86d060fd8b894181', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-15 17:32:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', 'id=337ebf05c76f40399c4f071e06310880', '');
INSERT INTO `sys_log` VALUES ('c9d9b08bf173459ba491f8cafa9689d9', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 15:14:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c9f67c2514c442559eb3b1136a9b026d', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 17:36:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('caaff6c04b244e39af924e4db6f86961', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:52:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cc521136c51f46b6a724355c9fae5382', '1', '系统设置-系统设置-字典管理-查看', '1', '2019-12-15 19:39:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/form', 'GET', 'id=73', '');
INSERT INTO `sys_log` VALUES ('cdb44514d989471fae72d3d59401e938', '1', '系统设置-日志查询-日志查询', '1', '2019-12-15 15:14:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/log', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ce8d6cd02ff94edbbf2a4042a16a17f5', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 20:37:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cf857e360c194067ad3002df1b6f9100', '1', '系统设置-系统设置-字典管理-修改', '1', '2019-12-15 19:41:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/save', 'POST', 'id=&value=3&label=童装玩具 / 孕产 / 用品&type=product_category_type&description=3&sort=10&remarks=', '');
INSERT INTO `sys_log` VALUES ('d0f838918c624906a53ea7b6e291c529', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:28:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d1b45c01cda04f37953209c431ba8924', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:20:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d22882c148df40e79375101fdc049004', '1', '系统设置-系统设置-字典管理-查看', '1', '2019-12-15 19:41:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('d26a954bc46e4eabbe3c2fb8de6dc6c8', '1', '系统登录', '1', '2019-12-15 17:27:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/tree', 'GET', 'parentId=79', '');
INSERT INTO `sys_log` VALUES ('d396e0a24eb7493c9a57233c4906e2d9', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 18:14:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d437775ad28642b5a77efcaf675fe4f5', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 20:34:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d49001ef89784da0a1b99684e7d97631', '1', '后台管理-系统设置-配置管理', '1', '2019-12-16 00:14:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d4c8fde1718745f3ab8096aeb15f2183', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:29:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d5424963bedb42dbbd8bf27806e4093f', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:43:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d63185d7db054c1688c0a2716ed61a47', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 20:37:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d6db2f6ac4914404bc9109ee134f58b9', '1', '我的面板-个人信息-修改密码', '1', '2019-12-15 22:53:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d98ecf66d3864433858e202481cc35b7', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 17:58:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d9f4b4ad955a4832aac83055de6d64bd', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 17:35:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('da130e103597415abef93a04e1c6f8e7', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 22:55:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('da2ef3aace3d41a6831815969f4c32e2', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:49:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('da3eb3d625484b51951af52e7fb4e7f9', '1', '系统设置-系统设置-字典管理-查看', '1', '2019-12-15 19:41:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('da7a8fc4d9b347d3b54f8160bdde5b17', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 17:58:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('da84dbf7164046ed8799cee6520ab3ac', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 17:31:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dacd9ef3d7b04bd4a5704d3021b7bf8f', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 19:03:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('db8bc1fbd7054ff2a85653193f4bd999', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 19:24:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dbab999d3903429c80b6f8c1f9bfc6d3', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 20:35:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dbcc60ebbae0459da9613e866610abb5', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 17:58:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dcd1e3c7572b414b8bee67a1c15d82cf', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 18:15:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dcfc009659e642c4b30838c67317eef5', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 23:19:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dda723995f224252ba231b40603c02c4', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 18:14:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ddffb3ed7f4d4bd5a6bf50caed3c68ee', '1', '我的面板-个人信息-个人信息', '1', '2019-12-16 00:10:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('df22b82e54be42ad8eadf15f7f89a73e', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:28:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('df8084b8724c4c5a8334ebbcfa6078d5', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 22:56:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dfa8175112df4f3db27f193915a32b0a', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 17:30:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e052627c310546139a890e2f3a0a54ed', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 22:55:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e10dccf370054f89bf8a6adc5518e787', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:36:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e27b6f57a8054c688e1c862c54796109', '1', '系统设置-系统设置-字典管理-查看', '1', '2019-12-15 18:17:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('e2d03db26377469b9cfcbb455e2306b2', '1', '代码生成-代码生成-业务表配置', '1', '2019-12-15 17:54:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e2e20f30ef1749aaa6dd4d461c068ae0', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:50:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e38eddfff5534ab1a688d640069a3ef0', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 18:15:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e433c65b524b40ef8c8dce06c4437fca', '1', '代码生成-代码生成-生成方案配置', '1', '2019-12-15 17:54:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e4a7c4990f9a47439447737bcf8b0689', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 23:51:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e4b1d773a672454881e07c1813798464', '1', '系统设置-机构用户-用户管理', '1', '2019-12-15 16:51:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e4f40a1203054f84883c258f8eaeb69b', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 20:03:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e511ecd75b654d6b8cb47d7c27c71555', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:36:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e6ab1d09bcbe440aa75cc69abc855d27', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-15 17:31:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e891071b72ef4a2fa7bb11eb7d34aa4b', '1', '系统设置-系统设置-菜单管理-修改', '1', '2019-12-15 17:38:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/save', 'POST', 'id=337ebf05c76f40399c4f071e06310880&parent.id=fc10ef3f7b7e462f83914fa48069f50e&parent.name=商品管理&name=商品分类&href=/memp/mempProductCategory/list&target=&icon=credit-card&sort=5060&isShow=1&permission=memp:mempProductCategory:view,memp:mempProductCategory:view,memp:mempProductCategory:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('e92e916365244da6b8d131e2c0e32469', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 19:49:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e9a6ac6a7a28471883283d97ba774d35', '1', '系统设置-系统设置-菜单管理-查看', '1', '2019-12-15 22:54:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e9d4e259d23341888dc66653e99672c8', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 20:33:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e9dae678cf02407db7429650df46ddac', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 20:35:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', 'repage=&type=product_category_type', '');
INSERT INTO `sys_log` VALUES ('ea5569eaaf034ce0a7086b18369fc2fd', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:24:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ebd1a76205d347e6bef098adf038b5a9', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:24:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ed1fa70be3864d62a64c8f29c705b288', '1', '系统登录', '1', '2019-12-15 22:56:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ed8afd38860942a9ba324c37b9a41328', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:29:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('edae4013ba5e417f8f65401995243af7', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 19:39:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'POST', 'pageNo=1&pageSize=30&type=gen_category&description=', '');
INSERT INTO `sys_log` VALUES ('eea09983a3134b10abd8109bf5e3cd1e', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 17:36:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ef8915bd38f34831aa63a687c2962589', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 20:35:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ef98a19aa7d643a4b7dac6dd1bff5367', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:20:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('efd3ce7467334e48ac6c7f7bb8392e76', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:35:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f0b512698cb14be39dfae97599018bfe', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 19:17:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f18c0b4f65574111b15c3230c46e9091', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 22:56:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f1a4396ba6fe4df28c880563cdf69421', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:53:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f32cfe626c2247c9ad192cd59188e028', '1', '代码生成-代码生成-生成方案配置', '1', '2019-12-15 17:56:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f37770a7eeb84696bf7c3c146f983417', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 23:13:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f3d69025da8f4f2d9b29b36157fa0bab', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 17:32:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f60e1332c5bc443ea0e617fba0b3a22d', '1', '系统设置-系统设置-菜单管理', '1', '2019-12-15 15:14:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f64d4b47fc6e48f7be3c287465cec0ee', '1', '后台管理-系统设置-配置管理', '1', '2019-12-15 22:56:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempSetting/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f706c32de1ff49668d0adb5cf2a46294', '1', '后台管理-商品管理-商品类型', '1', '2019-12-15 23:25:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductType/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f736d553484f406e9200a67b921b7a17', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 18:24:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f927a6fee9d4444e844af6c259fae7de', '1', '后台管理-商品管理-商品分类', '1', '2019-12-15 20:18:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/memp/mempProductCategory/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('faad0977a69e44d1bcb5013b214e41ab', '1', '我的面板-个人信息-个人信息', '1', '2019-12-15 18:14:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fce241d77b2d47b4a5945ec59b678b2c', '1', '系统设置-机构用户-用户管理-查看', '1', '2019-12-15 17:31:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fe0a227b715c474d90c22879c09a5281', '1', '系统设置-系统设置-字典管理', '1', '2019-12-15 19:41:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '/memp/a/sys/dict/', 'GET', 'repage=&type=product_category_type', '');

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
INSERT INTO `sys_menu` VALUES ('166f5be5098d49a1ba66f61858eb010b', 'fc10ef3f7b7e462f83914fa48069f50e', '0,1,007570a6dc224e57b474dfb33ff337fd,fc10ef3f7b7e462f83914fa48069f50e,', '商品类型', 5060, '/memp/mempProductType/list', '', 'exchange', '1', 'memp:mempProductType:view,memp:mempProductType:edit', '1', '2019-12-15 22:55:55', '1', '2019-12-15 22:55:55', '', '0');
INSERT INTO `sys_menu` VALUES ('17', '13', '0,1,2,13,', '机构管理', 40, '/sys/office/', NULL, 'th-large', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('18', '17', '0,1,2,13,17,', '查看', 30, NULL, NULL, NULL, '0', 'sys:office:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('19', '17', '0,1,2,13,17,', '修改', 40, NULL, NULL, NULL, '0', 'sys:office:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '0,1,', '系统设置', 900, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', 30, '/sys/user/index', NULL, 'user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', 30, NULL, NULL, NULL, '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', 40, NULL, NULL, NULL, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('24', '23', '0,1,2,23', '官方首页', 30, 'http://jeesite.com', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '0,1,', '我的面板', 100, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('28', '27', '0,1,27,', '个人信息', 30, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,1,27,28,', '个人信息', 30, '/sys/user/info', NULL, 'user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,1,2,', '系统设置', 980, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,1,27,28,', '修改密码', 40, '/sys/user/modifyPwd', NULL, 'lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('337ebf05c76f40399c4f071e06310880', 'fc10ef3f7b7e462f83914fa48069f50e', '0,1,007570a6dc224e57b474dfb33ff337fd,fc10ef3f7b7e462f83914fa48069f50e,', '商品分类', 5060, '/memp/mempProductCategory/list', '', 'credit-card', '1', 'memp:mempProductCategory:view,memp:mempProductCategory:view,memp:mempProductCategory:edit', '1', '2019-12-15 17:32:13', '1', '2019-12-15 17:38:38', '', '0');
INSERT INTO `sys_menu` VALUES ('373824f668c24c93abcb57f54500e4ee', '007570a6dc224e57b474dfb33ff337fd', '0,1,007570a6dc224e57b474dfb33ff337fd,', '系统设置', 30, '', '', '', '1', '', '1', '2019-12-08 17:42:38', '1', '2019-12-08 17:45:52', '', '0');
INSERT INTO `sys_menu` VALUES ('3c92c17886944d0687e73e286cada573', '79', '0,1,79,', '生成示例', 120, '', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', 30, '/sys/menu/', NULL, 'list-alt', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('4855cf3b25c244fb8500a380db189d97', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '查看', 30, '', '', '', '0', 'test:testDataMain:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', 30, NULL, NULL, NULL, '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('56', '71', '0,1,27,71,', '文件管理', 90, '/../static/ckfinder/ckfinder.html', NULL, 'folder-open', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('57', '56', '0,1,27,40,56,', '查看', 30, NULL, NULL, NULL, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('58', '56', '0,1,27,40,56,', '上传', 40, NULL, NULL, NULL, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('59', '56', '0,1,27,40,56,', '修改', 50, NULL, NULL, NULL, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', 40, NULL, NULL, NULL, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('67', '2', '0,1,2,', '日志查询', 985, NULL, NULL, NULL, '1', NULL, '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,1,2,67,', '日志查询', 30, '/sys/log', NULL, 'pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', 50, '/sys/role/', NULL, 'lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('71', '27', '0,1,27,', '文件管理', 90, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('79', '1', '0,1,', '代码生成', 5000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', 30, NULL, NULL, NULL, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('80', '79', '0,1,79,', '代码生成', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('81', '80', '0,1,79,80,', '生成方案配置', 30, '/gen/genScheme', NULL, NULL, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('82', '80', '0,1,79,80,', '业务表配置', 20, '/gen/genTable', NULL, NULL, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('84', '67', '0,1,2,67,', '连接池监视', 40, '/../druid', NULL, NULL, '1', NULL, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('85', '76', '0,1,75,76,', '行政区域', 80, '/../static/map/map-city.html', NULL, NULL, '1', NULL, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', 40, NULL, NULL, NULL, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('956bd88fdd7c4c25960dc784382cf548', '373824f668c24c93abcb57f54500e4ee', '0,1,007570a6dc224e57b474dfb33ff337fd,373824f668c24c93abcb57f54500e4ee,', '配置管理', 30, '/memp/mempSetting/form', '', 'cogs', '1', '', '1', '2019-12-08 17:44:05', '1', '2019-12-08 17:45:13', '', '0');
INSERT INTO `sys_menu` VALUES ('afab2db430e2457f9cf3a11feaa8b869', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '编辑', 60, '', '', '', '0', 'test:testTree:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('b1f6d1b86ba24365bae7fd86c5082317', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '主子表', 60, '/test/testDataMain', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('ba8092291b40482db8fe7fc006ea3d76', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '单表', 30, '/test/testData', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('c2e4d9082a0b4386884a0b203afe2c5c', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '查看', 30, '', '', '', '0', 'test:testTree:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('d15ec45a4c5449c3bbd7a61d5f9dd1d2', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '编辑', 60, '', '', '', '0', 'test:testDataMain:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('df7ce823c5b24ff9bada43d992f373e2', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '查看', 30, '', '', '', '0', 'test:testData:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('fc10ef3f7b7e462f83914fa48069f50e', '007570a6dc224e57b474dfb33ff337fd', '0,1,007570a6dc224e57b474dfb33ff337fd,', '商品管理', 5060, '', '', '', '1', '', '1', '2019-12-15 17:31:09', '1', '2019-12-15 17:31:09', '', '0');

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
INSERT INTO `sys_office` VALUES ('2', '1', '0,1,', '公司领导', 10, '2', '100001', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');

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
INSERT INTO `sys_user` VALUES ('1', '1', '2', 'thinkgem', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0001', '系统管理员', 'thinkgem@163.com', '8675', '8675', NULL, NULL, '0:0:0:0:0:0:0:1', '2019-12-15 22:56:17', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', '最高管理员', '0');

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

SET FOREIGN_KEY_CHECKS = 1;
